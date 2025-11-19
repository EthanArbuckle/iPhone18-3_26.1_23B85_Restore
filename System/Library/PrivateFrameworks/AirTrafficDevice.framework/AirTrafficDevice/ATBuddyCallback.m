@interface ATBuddyCallback
@end

@implementation ATBuddyCallback

void ___ATBuddyCallback_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D7FBE8] sharedSecurityInfo];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = ___ATBuddyCallback_block_invoke_2;
  v3[3] = &__block_descriptor_40_e5_v8__0l;
  v3[4] = *(a1 + 32);
  [v2 performBlockAfterFirstUnlock:v3];
}

void ___ATBuddyCallback_block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = [v1 _currentHostType];
  v3 = [v2 isEqualToString:@"iTunes"];

  v4 = [v1 syncSession];

  v5 = _ATLogCategoryiTunesSync();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109376;
    v7[1] = v3;
    v8 = 1024;
    v9 = v4 != 0;
    _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "Handling Buddy Finished Notification, hostIsITunes=%{BOOL}u, haveSyncSession=%{BOOL}u", v7, 0xEu);
  }

  if (((v4 != 0) & v3) == 1)
  {
    v6 = +[ATRestoreManager sharedManager];
    [v6 restoreSessionActiveWithCompletion:&__block_literal_global_492];
  }
}

void ___ATBuddyCallback_block_invoke_489(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    ATDisplaySyncAlert();
  }
}

@end