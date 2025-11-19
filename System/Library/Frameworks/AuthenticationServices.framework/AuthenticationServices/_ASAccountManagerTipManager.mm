@interface _ASAccountManagerTipManager
+ (BOOL)_hasAcknowledgedTip:(int64_t)a3;
+ (id)_defaultKeyForTipType:(int64_t)a3;
+ (id)_refreshDateForTip:(int64_t)a3;
+ (void)_acknowledgeTip:(int64_t)a3;
+ (void)_checkEligibilityForFamilySharingTipWithCompletionHandler:(id)a3;
+ (void)_checkEligibilityForGeneralSharingTipWithCompletionHandler:(id)a3;
+ (void)_checkEligibilityForiCloudKeychainTipWithCompletionHandler:(id)a3;
+ (void)fetchSharingGroupsThatIncludeFamilyMembers:(id)a3;
+ (void)fetchTipToShow:(id)a3;
+ (void)userDidAcknowledgeTip:(int64_t)a3;
@end

@implementation _ASAccountManagerTipManager

+ (void)fetchTipToShow:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46___ASAccountManagerTipManager_fetchTipToShow___block_invoke;
  v6[3] = &unk_1E7AF7B50;
  v7 = v4;
  v8 = a1;
  v5 = v4;
  [a1 _checkEligibilityForImportPasswordsTipWithCompletionHandler:v6];
}

+ (void)userDidAcknowledgeTip:(int64_t)a3
{
  if (a3 != 1 && a3 != 3)
  {
    if (a3 != 2)
    {
      return;
    }

    [a1 _acknowledgeTip:?];
    a3 = 3;
  }

  [a1 _acknowledgeTip:a3];
}

+ (void)fetchSharingGroupsThatIncludeFamilyMembers:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E699C070]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74___ASAccountManagerTipManager_fetchSharingGroupsThatIncludeFamilyMembers___block_invoke;
  v6[3] = &unk_1E7AF7BE0;
  v7 = v3;
  v5 = v3;
  [v4 startRequestWithCompletionHandler:v6];
}

+ (BOOL)_hasAcknowledgedTip:(int64_t)a3
{
  v5 = [a1 _refreshDateForTip:?];
  v6 = [a1 _defaultKeyForTipType:a3];
  if (!v5)
  {
    v10 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v11 = [v10 safari_dateForKey:v6];
    v9 = v11 != 0;

LABEL_6:
    goto LABEL_7;
  }

  v7 = [MEMORY[0x1E695DF00] date];
  v8 = [v5 compare:v7];

  if (v8 == -1)
  {
    v10 = [MEMORY[0x1E695E000] safari_browserDefaults];
    [v10 removeObjectForKey:v6];
    v9 = 0;
    goto LABEL_6;
  }

  v9 = 1;
LABEL_7:

  return v9;
}

+ (id)_refreshDateForTip:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v4 = [v3 safari_dateForKey:@"iCloudKeychainTipAcknowledgementDate"];

    if (v4)
    {
      v5 = [MEMORY[0x1E695DEE8] currentCalendar];
      v6 = [v5 dateByAddingUnit:16 value:90 toDate:v4 options:0];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_defaultKeyForTipType:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_1E7AF7C98[a3 - 1];
  }
}

+ (void)_acknowledgeTip:(int64_t)a3
{
  if ((a3 - 1) <= 2)
  {
    v4 = off_1E7AF7C98[a3 - 1];
    v6 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v5 = [MEMORY[0x1E695DF00] date];
    [v6 safari_setDate:v5 forKey:v4];
  }
}

+ (void)_checkEligibilityForiCloudKeychainTipWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69C89D0] sharedObserver];
  v6 = [v5 isUsingICloud];

  if ((v6 & 1) == 0)
  {
    v11 = WBS_LOG_CHANNEL_PREFIXPasswordManager();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_1B1C8D000, v11, OS_LOG_TYPE_INFO, "Skipping iCloud Keychain tip because no primary iCloud account is present", v13, 2u);
    }

    goto LABEL_9;
  }

  v7 = [MEMORY[0x1E69C88B8] sharedMonitor];
  v8 = [v7 canKeychainSyncBeEnabled];

  if ((v8 & 1) == 0)
  {
    goto LABEL_9;
  }

  v9 = [MEMORY[0x1E69C88B8] sharedMonitor];
  v10 = [v9 keychainSyncSettingValue];

  if (v10 == 2)
  {
    v12 = [MEMORY[0x1E695E000] safari_browserDefaults];
    [v12 removeObjectForKey:@"iCloudKeychainTipAcknowledgementDate"];

    goto LABEL_9;
  }

  if (!v10)
  {
LABEL_9:
    v4[2](v4, 0);
    goto LABEL_10;
  }

  v4[2](v4, [a1 _hasAcknowledgedTip:1] ^ 1);
LABEL_10:
}

+ (void)_checkEligibilityForFamilySharingTipWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([a1 _hasAcknowledgedTip:2])
  {
    v4[2](v4, 0);
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E699C070]);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __89___ASAccountManagerTipManager__checkEligibilityForFamilySharingTipWithCompletionHandler___block_invoke;
    v6[3] = &unk_1E7AF7C78;
    v7 = v4;
    v8 = a1;
    [v5 startRequestWithCompletionHandler:v6];
  }
}

+ (void)_checkEligibilityForGeneralSharingTipWithCompletionHandler:(id)a3
{
  v8 = a3;
  if ([a1 _hasAcknowledgedTip:3])
  {
    goto LABEL_4;
  }

  v4 = [MEMORY[0x1E69C88E8] sharedProvider];
  v5 = [v4 cachedGroups];
  v6 = [v5 count];

  if (v6)
  {
    [a1 _acknowledgeTip:3];
LABEL_4:
    v7 = 0;
    goto LABEL_5;
  }

  v7 = 1;
LABEL_5:
  v8[2](v8, v7);
}

@end