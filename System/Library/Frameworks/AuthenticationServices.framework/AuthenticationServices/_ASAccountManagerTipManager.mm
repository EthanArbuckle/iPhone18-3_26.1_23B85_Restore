@interface _ASAccountManagerTipManager
+ (BOOL)_hasAcknowledgedTip:(int64_t)tip;
+ (id)_defaultKeyForTipType:(int64_t)type;
+ (id)_refreshDateForTip:(int64_t)tip;
+ (void)_acknowledgeTip:(int64_t)tip;
+ (void)_checkEligibilityForFamilySharingTipWithCompletionHandler:(id)handler;
+ (void)_checkEligibilityForGeneralSharingTipWithCompletionHandler:(id)handler;
+ (void)_checkEligibilityForiCloudKeychainTipWithCompletionHandler:(id)handler;
+ (void)fetchSharingGroupsThatIncludeFamilyMembers:(id)members;
+ (void)fetchTipToShow:(id)show;
+ (void)userDidAcknowledgeTip:(int64_t)tip;
@end

@implementation _ASAccountManagerTipManager

+ (void)fetchTipToShow:(id)show
{
  showCopy = show;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46___ASAccountManagerTipManager_fetchTipToShow___block_invoke;
  v6[3] = &unk_1E7AF7B50;
  v7 = showCopy;
  selfCopy = self;
  v5 = showCopy;
  [self _checkEligibilityForImportPasswordsTipWithCompletionHandler:v6];
}

+ (void)userDidAcknowledgeTip:(int64_t)tip
{
  if (tip != 1 && tip != 3)
  {
    if (tip != 2)
    {
      return;
    }

    [self _acknowledgeTip:?];
    tip = 3;
  }

  [self _acknowledgeTip:tip];
}

+ (void)fetchSharingGroupsThatIncludeFamilyMembers:(id)members
{
  membersCopy = members;
  v4 = objc_alloc_init(MEMORY[0x1E699C070]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74___ASAccountManagerTipManager_fetchSharingGroupsThatIncludeFamilyMembers___block_invoke;
  v6[3] = &unk_1E7AF7BE0;
  v7 = membersCopy;
  v5 = membersCopy;
  [v4 startRequestWithCompletionHandler:v6];
}

+ (BOOL)_hasAcknowledgedTip:(int64_t)tip
{
  v5 = [self _refreshDateForTip:?];
  v6 = [self _defaultKeyForTipType:tip];
  if (!v5)
  {
    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    v11 = [safari_browserDefaults safari_dateForKey:v6];
    v9 = v11 != 0;

LABEL_6:
    goto LABEL_7;
  }

  date = [MEMORY[0x1E695DF00] date];
  v8 = [v5 compare:date];

  if (v8 == -1)
  {
    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    [safari_browserDefaults removeObjectForKey:v6];
    v9 = 0;
    goto LABEL_6;
  }

  v9 = 1;
LABEL_7:

  return v9;
}

+ (id)_refreshDateForTip:(int64_t)tip
{
  if (tip == 1)
  {
    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    v4 = [safari_browserDefaults safari_dateForKey:@"iCloudKeychainTipAcknowledgementDate"];

    if (v4)
    {
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      v6 = [currentCalendar dateByAddingUnit:16 value:90 toDate:v4 options:0];
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

+ (id)_defaultKeyForTipType:(int64_t)type
{
  if ((type - 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_1E7AF7C98[type - 1];
  }
}

+ (void)_acknowledgeTip:(int64_t)tip
{
  if ((tip - 1) <= 2)
  {
    v4 = off_1E7AF7C98[tip - 1];
    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    date = [MEMORY[0x1E695DF00] date];
    [safari_browserDefaults safari_setDate:date forKey:v4];
  }
}

+ (void)_checkEligibilityForiCloudKeychainTipWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  mEMORY[0x1E69C89D0] = [MEMORY[0x1E69C89D0] sharedObserver];
  isUsingICloud = [mEMORY[0x1E69C89D0] isUsingICloud];

  if ((isUsingICloud & 1) == 0)
  {
    v11 = WBS_LOG_CHANNEL_PREFIXPasswordManager();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_1B1C8D000, v11, OS_LOG_TYPE_INFO, "Skipping iCloud Keychain tip because no primary iCloud account is present", v13, 2u);
    }

    goto LABEL_9;
  }

  mEMORY[0x1E69C88B8] = [MEMORY[0x1E69C88B8] sharedMonitor];
  canKeychainSyncBeEnabled = [mEMORY[0x1E69C88B8] canKeychainSyncBeEnabled];

  if ((canKeychainSyncBeEnabled & 1) == 0)
  {
    goto LABEL_9;
  }

  mEMORY[0x1E69C88B8]2 = [MEMORY[0x1E69C88B8] sharedMonitor];
  keychainSyncSettingValue = [mEMORY[0x1E69C88B8]2 keychainSyncSettingValue];

  if (keychainSyncSettingValue == 2)
  {
    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    [safari_browserDefaults removeObjectForKey:@"iCloudKeychainTipAcknowledgementDate"];

    goto LABEL_9;
  }

  if (!keychainSyncSettingValue)
  {
LABEL_9:
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_10;
  }

  handlerCopy[2](handlerCopy, [self _hasAcknowledgedTip:1] ^ 1);
LABEL_10:
}

+ (void)_checkEligibilityForFamilySharingTipWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([self _hasAcknowledgedTip:2])
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E699C070]);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __89___ASAccountManagerTipManager__checkEligibilityForFamilySharingTipWithCompletionHandler___block_invoke;
    v6[3] = &unk_1E7AF7C78;
    v7 = handlerCopy;
    selfCopy = self;
    [v5 startRequestWithCompletionHandler:v6];
  }
}

+ (void)_checkEligibilityForGeneralSharingTipWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([self _hasAcknowledgedTip:3])
  {
    goto LABEL_4;
  }

  mEMORY[0x1E69C88E8] = [MEMORY[0x1E69C88E8] sharedProvider];
  cachedGroups = [mEMORY[0x1E69C88E8] cachedGroups];
  v6 = [cachedGroups count];

  if (v6)
  {
    [self _acknowledgeTip:3];
LABEL_4:
    v7 = 0;
    goto LABEL_5;
  }

  v7 = 1;
LABEL_5:
  handlerCopy[2](handlerCopy, v7);
}

@end