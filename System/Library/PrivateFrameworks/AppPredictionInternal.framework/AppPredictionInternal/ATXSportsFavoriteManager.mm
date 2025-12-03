@interface ATXSportsFavoriteManager
+ (void)favoritesWithCompletion:(id)completion;
+ (void)isOnboarded:(id)onboarded;
@end

@implementation ATXSportsFavoriteManager

+ (void)favoritesWithCompletion:(id)completion
{
  completionCopy = completion;
  defaultManager = [MEMORY[0x277D7A970] defaultManager];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__ATXSportsFavoriteManager_favoritesWithCompletion___block_invoke;
  v6[3] = &unk_27859EF60;
  v7 = completionCopy;
  v5 = completionCopy;
  [defaultManager favoritesWithCompletion:v6];
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

+ (void)isOnboarded:(id)onboarded
{
  onboardedCopy = onboarded;
  defaultManager = [MEMORY[0x277D7A970] defaultManager];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__ATXSportsFavoriteManager_isOnboarded___block_invoke;
  v6[3] = &unk_27859EF88;
  v7 = onboardedCopy;
  v5 = onboardedCopy;
  [defaultManager isOnboarded:v6];
}

@end