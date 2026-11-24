#!/bin/bash
# Butuh: PHP 8.2+, Composer, ekstensi sqlite
composer create-project laravel/laravel rutekita
cp -r app database routes resources rutekita/
cd rutekita
php artisan migrate:fresh --seed
php artisan storage:link
php artisan serve
# Partner : partner@rutekita.test / password  (PIN payout: 12345678)
# Customer: user@rutekita.test    / password
