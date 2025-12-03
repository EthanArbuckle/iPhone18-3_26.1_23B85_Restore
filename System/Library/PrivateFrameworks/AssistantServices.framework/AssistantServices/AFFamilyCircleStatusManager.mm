@interface AFFamilyCircleStatusManager
+ (BOOL)isChildAccount;
+ (BOOL)shouldApplyRestrictions;
+ (id)sharedManager;
+ (unint64_t)currentAccountType;
+ (void)prewarm;
- (AFFamilyCircleStatusManager)init;
- (void)_fetchChildAccountStatusWithCompletion:(id)completion;
- (void)_observeAccountChanges;
- (void)_observeFamilyChanges;
- (void)dealloc;
- (void)fetchChildAccountStatusWithCompletion:(id)completion;
@end

@implementation AFFamilyCircleStatusManager

+ (BOOL)isChildAccount
{
  v2 = +[AFFamilyCircleStatusManager sharedManager];
  v3 = [v2 currentAccountType] == 0;

  return v3;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken_16492 != -1)
  {
    dispatch_once(&sharedManager_onceToken_16492, &__block_literal_global_21);
  }

  v3 = sharedManager_result;

  return v3;
}

- (void)_fetchChildAccountStatusWithCompletion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[AFFamilyCircleStatusManager _fetchChildAccountStatusWithCompletion:]";
    _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s #Montara #FamilyCircle", &buf, 0xCu);
  }

  FAFetchFamilyCircleRequestClass = getFAFetchFamilyCircleRequestClass();
  if (FAFetchFamilyCircleRequestClass)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__16438;
    v18 = __Block_byref_object_dispose__16439;
    v19 = objc_alloc_init(FAFetchFamilyCircleRequestClass);
    [*(*(&buf + 1) + 40) setCachePolicy:1];
    [*(*(&buf + 1) + 40) setPromptUserToResolveAuthenticatonFailure:0];
    [*(*(&buf + 1) + 40) setQualityOfService:25];
    objc_initWeak(&location, self);
    v7 = *(*(&buf + 1) + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __70__AFFamilyCircleStatusManager__fetchChildAccountStatusWithCompletion___block_invoke;
    v10[3] = &unk_1E7344870;
    objc_copyWeak(&v13, &location);
    p_buf = &buf;
    v11 = completionCopy;
    [v7 startRequestWithCompletionHandler:v10];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v8 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[AFFamilyCircleStatusManager _fetchChildAccountStatusWithCompletion:]";
      _os_log_error_impl(&dword_1912FE000, v8, OS_LOG_TYPE_ERROR, "%s #Montara #FamilyCircle Unable to get FAFetchFamilyCircleRequest class", &buf, 0xCu);
    }

    [(AFFamilyCircleStatusManager *)self setCurrentAccountType:4];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __70__AFFamilyCircleStatusManager__fetchChildAccountStatusWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v42 = "[AFFamilyCircleStatusManager _fetchChildAccountStatusWithCompletion:]_block_invoke";
    _os_log_debug_impl(&dword_1912FE000, v7, OS_LOG_TYPE_DEBUG, "%s #Montara #FamilyCircle fetch completion handler", buf, 0xCu);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else if (v6)
  {
LABEL_3:
    v8 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v42 = "[AFFamilyCircleStatusManager _fetchChildAccountStatusWithCompletion:]_block_invoke";
      _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s #Montara #FamilyCircle Error, can be user did not sign in apple ID", buf, 0xCu);
      v8 = AFSiriLogContextUtility;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v10 = [v6 description];
      *buf = 136315394;
      v42 = "[AFFamilyCircleStatusManager _fetchChildAccountStatusWithCompletion:]_block_invoke";
      v43 = 2112;
      v44 = v10;
      _os_log_impl(&dword_1912FE000, v9, OS_LOG_TYPE_INFO, "%s #Montara #FamilyCircle Error determining status: %@", buf, 0x16u);
    }

    v11 = 4;
    goto LABEL_38;
  }

  if (v5)
  {
    v12 = [v5 members];
    v13 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v42 = "[AFFamilyCircleStatusManager _fetchChildAccountStatusWithCompletion:]_block_invoke";
      v43 = 2112;
      v44 = v12;
      v45 = 2112;
      v46 = v5;
      _os_log_debug_impl(&dword_1912FE000, v13, OS_LOG_TYPE_DEBUG, "%s #Montara #FamilyCircle Family members received: %@ in circle: %@", buf, 0x20u);
      if (!v12)
      {
        goto LABEL_35;
      }
    }

    else if (!v12)
    {
      goto LABEL_35;
    }

    if ([v12 count])
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v37;
LABEL_15:
        v18 = 0;
        while (1)
        {
          if (*v37 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v36 + 1) + 8 * v18);
          if ([v19 isMe])
          {
            break;
          }

          if (v16 == ++v18)
          {
            v16 = [v14 countByEnumeratingWithState:&v36 objects:v40 count:16];
            if (v16)
            {
              goto LABEL_15;
            }

            goto LABEL_21;
          }
        }

        v21 = v19;

        if (!v21)
        {
          goto LABEL_32;
        }

        v22 = [v21 memberType];
        v23 = AFSiriLogContextUtility;
        v24 = os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG);
        if (v22)
        {
          if (v22 == 1)
          {
            if (v24)
            {
              *buf = 136315138;
              v42 = "[AFFamilyCircleStatusManager _fetchChildAccountStatusWithCompletion:]_block_invoke";
              _os_log_debug_impl(&dword_1912FE000, v23, OS_LOG_TYPE_DEBUG, "%s #Montara #FamilyCircle User is a teen", buf, 0xCu);
            }

            v11 = 1;
          }

          else if (v22 == 2)
          {
            if (v24)
            {
              *buf = 136315138;
              v42 = "[AFFamilyCircleStatusManager _fetchChildAccountStatusWithCompletion:]_block_invoke";
              _os_log_debug_impl(&dword_1912FE000, v23, OS_LOG_TYPE_DEBUG, "%s #Montara #FamilyCircle User is a child", buf, 0xCu);
            }

            v11 = 0;
          }

          else
          {
            if (v24)
            {
              *buf = 136315138;
              v42 = "[AFFamilyCircleStatusManager _fetchChildAccountStatusWithCompletion:]_block_invoke";
              _os_log_debug_impl(&dword_1912FE000, v23, OS_LOG_TYPE_DEBUG, "%s #Montara #FamilyCircle server did not return a value of account type", buf, 0xCu);
            }

            v11 = 4;
          }
        }

        else
        {
          if (v24)
          {
            *buf = 136315138;
            v42 = "[AFFamilyCircleStatusManager _fetchChildAccountStatusWithCompletion:]_block_invoke";
            _os_log_debug_impl(&dword_1912FE000, v23, OS_LOG_TYPE_DEBUG, "%s #Montara #FamilyCircle User is an adult", buf, 0xCu);
          }

          v11 = 2;
        }

        goto LABEL_37;
      }

LABEL_21:

LABEL_32:
      v25 = AFSiriLogContextUtility;
      if (!os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
      {
        v11 = 6;
LABEL_37:

        goto LABEL_38;
      }

      *buf = 136315138;
      v42 = "[AFFamilyCircleStatusManager _fetchChildAccountStatusWithCompletion:]_block_invoke";
      v35 = "%s #Montara #FamilyCircle Failed to locate Me record";
      goto LABEL_57;
    }

LABEL_35:
    v25 = AFSiriLogContextUtility;
    if (!os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
    {
LABEL_36:
      v11 = 6;
      goto LABEL_37;
    }

    *buf = 136315138;
    v42 = "[AFFamilyCircleStatusManager _fetchChildAccountStatusWithCompletion:]_block_invoke";
    v35 = "%s #Montara #FamilyCircle no family members exist";
LABEL_57:
    _os_log_error_impl(&dword_1912FE000, v25, OS_LOG_TYPE_ERROR, v35, buf, 0xCu);
    goto LABEL_36;
  }

  v20 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v42 = "[AFFamilyCircleStatusManager _fetchChildAccountStatusWithCompletion:]_block_invoke";
    _os_log_debug_impl(&dword_1912FE000, v20, OS_LOG_TYPE_DEBUG, "%s #Montara #FamilyCircle Circle is nil, skipping restriction check", buf, 0xCu);
  }

  v11 = 5;
LABEL_38:
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v27 = [WeakRetained currentAccountType];

  v28 = objc_loadWeakRetained((a1 + 48));
  [v28 setCurrentAccountType:v11];

  if (v27 != v11)
  {
    v29 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v42 = "[AFFamilyCircleStatusManager _fetchChildAccountStatusWithCompletion:]_block_invoke";
      v43 = 2048;
      v44 = v27;
      v45 = 2048;
      v46 = v11;
      _os_log_impl(&dword_1912FE000, v29, OS_LOG_TYPE_INFO, "%s #Montara #FamilyCircle Account type changed: %lu → %lu", buf, 0x20u);
    }
  }

  v30 = *(*(a1 + 40) + 8);
  v31 = *(v30 + 40);
  *(v30 + 40) = 0;

  v32 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v42 = "[AFFamilyCircleStatusManager _fetchChildAccountStatusWithCompletion:]_block_invoke";
    _os_log_debug_impl(&dword_1912FE000, v32, OS_LOG_TYPE_DEBUG, "%s #Montara #FamilyCircle completed", buf, 0xCu);
  }

  v33 = *(a1 + 32);
  if (v33)
  {
    (*(v33 + 16))();
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)fetchChildAccountStatusWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v12 = "[AFFamilyCircleStatusManager fetchChildAccountStatusWithCompletion:]";
    _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s #Montara #FamilyCircle", buf, 0xCu);
  }

  v6 = dispatch_get_global_queue(25, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__AFFamilyCircleStatusManager_fetchChildAccountStatusWithCompletion___block_invoke;
  v9[3] = &unk_1E7349838;
  v9[4] = self;
  v10 = completionCopy;
  v7 = completionCopy;
  dispatch_async(v6, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v8 = "[AFFamilyCircleStatusManager dealloc]";
    _os_log_debug_impl(&dword_1912FE000, v3, OS_LOG_TYPE_DEBUG, "%s #Montara #FamilyCircle", buf, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v6.receiver = self;
  v6.super_class = AFFamilyCircleStatusManager;
  [(AFFamilyCircleStatusManager *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_observeAccountChanges
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = getACDAccountStoreDidChangeNotification();
  if (v3)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _HandleACDAccountStoreDidChange, v3, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v5 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315138;
      v9 = "[AFFamilyCircleStatusManager _observeAccountChanges]";
      _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s #Montara #FamilyCircle setup ACDAccountStoreDidChangeNotification observer completed", &v8, 0xCu);
    }
  }

  else
  {
    v6 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[AFFamilyCircleStatusManager _observeAccountChanges]";
      _os_log_error_impl(&dword_1912FE000, v6, OS_LOG_TYPE_ERROR, "%s #Montara #FamilyCircle setup ACDAccountStoreDidChangeNotification observer failed", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_observeFamilyChanges
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = getFAFamilyUpdateNotification();
  if (v3)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _HandleFAFamilyUpdate, v3, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v5 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315138;
      v9 = "[AFFamilyCircleStatusManager _observeFamilyChanges]";
      _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s #Montara #FamilyCircle setup FAFamilyUpdateNotification observer completed", &v8, 0xCu);
    }
  }

  else
  {
    v6 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[AFFamilyCircleStatusManager _observeFamilyChanges]";
      _os_log_error_impl(&dword_1912FE000, v6, OS_LOG_TYPE_ERROR, "%s #Montara #FamilyCircle setup FAFamilyUpdateNotification observer failed", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (AFFamilyCircleStatusManager)init
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    v12 = MEMORY[0x1E696AF00];
    v13 = v3;
    currentThread = [v12 currentThread];
    *buf = 136315394;
    v21 = "[AFFamilyCircleStatusManager init]";
    v22 = 2112;
    v23 = currentThread;
    _os_log_debug_impl(&dword_1912FE000, v13, OS_LOG_TYPE_DEBUG, "%s #Montara #FamilyCircle init starting on thread: %@", buf, 0x16u);
  }

  v19.receiver = self;
  v19.super_class = AFFamilyCircleStatusManager;
  v4 = [(AFFamilyCircleStatusManager *)&v19 init];
  v5 = v4;
  if (v4)
  {
    v4->_currentAccountType = 7;
    v6 = dispatch_group_create();
    dispatch_group_enter(v6);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __35__AFFamilyCircleStatusManager_init__block_invoke;
    v17[3] = &unk_1E73497C8;
    v7 = v6;
    v18 = v7;
    [(AFFamilyCircleStatusManager *)v5 fetchChildAccountStatusWithCompletion:v17];
    if (dispatch_group_wait(v7, 0x11E1A300uLL))
    {
      if ([(AFFamilyCircleStatusManager *)v5 currentAccountType]== 7)
      {
        [(AFFamilyCircleStatusManager *)v5 setCurrentAccountType:3];
        v8 = AFSiriLogContextUtility;
        if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v21 = "[AFFamilyCircleStatusManager init]";
          _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s #Montara #FamilyCircle Init timed out after 300ms - treating as restricted (fail-safe)", buf, 0xCu);
        }
      }
    }

    if (getFAFetchFamilyCircleRequestClass())
    {
      [(AFFamilyCircleStatusManager *)v5 _observeFamilyChanges];
      [(AFFamilyCircleStatusManager *)v5 _observeAccountChanges];
    }
  }

  v9 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    v15 = v9;
    currentAccountType = [(AFFamilyCircleStatusManager *)v5 currentAccountType];
    *buf = 136315394;
    v21 = "[AFFamilyCircleStatusManager init]";
    v22 = 2048;
    v23 = currentAccountType;
    _os_log_debug_impl(&dword_1912FE000, v15, OS_LOG_TYPE_DEBUG, "%s #Montara #FamilyCircle init complete with accountType: %lu", buf, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (BOOL)shouldApplyRestrictions
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = +[AFFamilyCircleStatusManager sharedManager];
  currentAccountType = [v2 currentAccountType];

  if (currentAccountType <= 3)
  {
    v4 = currentAccountType - 1;
    if ((currentAccountType - 1) >= 2)
    {
      if (!currentAccountType)
      {
        v5 = AFSiriLogContextUtility;
        if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
        {
          v12 = 136315138;
          v13 = "+[AFFamilyCircleStatusManager shouldApplyRestrictions]";
          v6 = "%s #Montara #FamilyCircle Restricting due to child account";
          goto LABEL_23;
        }

LABEL_14:
        v4 = 1;
        goto LABEL_19;
      }

      if (currentAccountType != 3)
      {
        goto LABEL_19;
      }

LABEL_9:
      v5 = AFSiriLogContextUtility;
      if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
      {
        v12 = 136315138;
        v13 = "+[AFFamilyCircleStatusManager shouldApplyRestrictions]";
        v6 = "%s #Montara #FamilyCircle Restricting due to timeout/not-fetched (fail-safe)";
LABEL_23:
        _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, v6, &v12, 0xCu);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    v7 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315138;
      v13 = "+[AFFamilyCircleStatusManager shouldApplyRestrictions]";
      v8 = "%s #Montara #FamilyCircle Not Restricting due to Adult or Teen account";
LABEL_21:
      _os_log_debug_impl(&dword_1912FE000, v7, OS_LOG_TYPE_DEBUG, v8, &v12, 0xCu);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v4 = currentAccountType - 5;
  if ((currentAccountType - 5) < 2)
  {
LABEL_17:
    v7 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315138;
      v13 = "+[AFFamilyCircleStatusManager shouldApplyRestrictions]";
      v8 = "%s #Montara #FamilyCircle Not restricting due to error/no-circle/no members in circle (fail-pass)";
      goto LABEL_21;
    }

LABEL_18:
    v4 = 0;
    goto LABEL_19;
  }

  if (currentAccountType == 4)
  {
    v9 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315138;
      v13 = "+[AFFamilyCircleStatusManager shouldApplyRestrictions]";
      _os_log_debug_impl(&dword_1912FE000, v9, OS_LOG_TYPE_DEBUG, "%s #Montara #FamilyCircle Not Restricting due to unknow error can be network,Family circle service, or no AppleID (fail-pass)", &v12, 0xCu);
    }

    goto LABEL_17;
  }

  if (currentAccountType == 7)
  {
    goto LABEL_9;
  }

LABEL_19:
  v10 = *MEMORY[0x1E69E9840];
  return v4 & 1;
}

+ (unint64_t)currentAccountType
{
  v2 = +[AFFamilyCircleStatusManager sharedManager];
  currentAccountType = [v2 currentAccountType];

  return currentAccountType;
}

void __44__AFFamilyCircleStatusManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(AFFamilyCircleStatusManager);
  v1 = sharedManager_result;
  sharedManager_result = v0;
}

+ (void)prewarm
{
  v2 = dispatch_get_global_queue(17, 0);
  dispatch_async(v2, &__block_literal_global_16493);
}

void __38__AFFamilyCircleStatusManager_prewarm__block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "+[AFFamilyCircleStatusManager prewarm]_block_invoke";
    _os_log_debug_impl(&dword_1912FE000, v0, OS_LOG_TYPE_DEBUG, "%s #Montara #FamilyCircle +load: Pre-warming singleton on background thread", &v4, 0xCu);
  }

  v1 = +[AFFamilyCircleStatusManager sharedManager];
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "+[AFFamilyCircleStatusManager prewarm]_block_invoke";
    _os_log_debug_impl(&dword_1912FE000, v2, OS_LOG_TYPE_DEBUG, "%s #Montara #FamilyCircle +load: Pre-warm complete", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

@end