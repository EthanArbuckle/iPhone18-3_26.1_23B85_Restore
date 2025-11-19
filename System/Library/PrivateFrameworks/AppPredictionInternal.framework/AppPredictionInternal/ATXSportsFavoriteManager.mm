@interface ATXSportsFavoriteManager
+ (void)favoritesWithCompletion:(id)a3;
+ (void)isOnboarded:(id)a3;
@end

@implementation ATXSportsFavoriteManager

+ (void)favoritesWithCompletion:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D7A970] defaultManager];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__ATXSportsFavoriteManager_favoritesWithCompletion___block_invoke;
  v6[3] = &unk_27859EF60;
  v7 = v3;
  v5 = v3;
  [v4 favoritesWithCompletion:v6];
}

uint64_t __52__ATXSportsFavoriteManager_favoritesWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 | a4)
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    return v6();
  }

  else
  {
    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __52__ATXSportsFavoriteManager_favoritesWithCompletion___block_invoke_cold_1(v8);
    }

    return (*(*(a1 + 32) + 16))();
  }
}

+ (void)isOnboarded:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D7A970] defaultManager];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__ATXSportsFavoriteManager_isOnboarded___block_invoke;
  v6[3] = &unk_27859EF88;
  v7 = v3;
  v5 = v3;
  [v4 isOnboarded:v6];
}

@end