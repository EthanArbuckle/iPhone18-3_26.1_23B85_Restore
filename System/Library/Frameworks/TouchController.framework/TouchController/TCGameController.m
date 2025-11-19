@interface TCGameController
@end

@implementation TCGameController

void __47___TCGameController_setValue_forButtonElement___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = getTCLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) debugName];
    v4 = *(a1 + 40);
    v9 = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_23AADD000, v2, OS_LOG_TYPE_DEFAULT, "%@ changed: %@", &v9, 0x16u);
  }

  v5 = [*(a1 + 32) physicalInputProfile];
  v6 = [v5 valueChangedHandler];

  if (v6)
  {
    v7 = [*(a1 + 32) physicalInputProfile];
    (v6)[2](v6, v7, *(a1 + 40));
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __56___TCGameController_setPosition_forDirectionPadElement___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = getTCLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) debugName];
    v4 = *(a1 + 40);
    v9 = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_23AADD000, v2, OS_LOG_TYPE_DEFAULT, "%@ changed: %@", &v9, 0x16u);
  }

  v5 = [*(a1 + 32) physicalInputProfile];
  v6 = [v5 valueChangedHandler];

  if (v6)
  {
    v7 = [*(a1 + 32) physicalInputProfile];
    (v6)[2](v6, v7, *(a1 + 40));
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end