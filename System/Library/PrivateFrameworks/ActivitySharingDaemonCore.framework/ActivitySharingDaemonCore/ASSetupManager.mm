@interface ASSetupManager
- (void)_migrateToTwoWaySyncSetupDefault;
@end

@implementation ASSetupManager

- (void)_migrateToTwoWaySyncSetupDefault
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = *MEMORY[0x277CE91F8];
  v4 = [v2 initWithSuiteName:*MEMORY[0x277CE91F8]];
  v5 = *MEMORY[0x277CE9168];
  v6 = [v4 objectForKey:*MEMORY[0x277CE9168]];
  if (v6)
  {
    ASLoggingInitialize();
    v7 = MEMORY[0x277CE8FE8];
    v8 = *MEMORY[0x277CE8FE8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17[0]) = 0;
      _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "Removing legacy user defaults setup key", v17, 2u);
    }

    [v4 removeObjectForKey:v5];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "BOOLValue")}];
    v10 = *MEMORY[0x277CE9160];
    [v4 setObject:v9 forKey:*MEMORY[0x277CE9160]];

    ASLoggingInitialize();
    v11 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      bOOLValue = [v6 BOOLValue];
      v17[0] = 67109120;
      v17[1] = bOOLValue;
      _os_log_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_DEFAULT, "Syncing new user defaults setup key:  %{BOOL}d", v17, 8u);
    }

    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CBEB98] setWithObject:v10];
    [v14 synchronizeUserDefaultsDomain:v3 keys:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end