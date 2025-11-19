@interface NCABTinkerContactsManagementStateManager
+ (BOOL)_familyMemberIsEligibleForScreenTime:(id)a3;
+ (id)managerForBuddyControllerDelegate:(id)a3;
- (BOOL)_checkContactsCountStatusNotYetSyncedTimedOut;
- (BOOL)_shouldRunAgainAfterSyncEnabled_LOCKED;
- (NCABTinkerContactsManagementStateManager)initWithFamilyMember:(id)a3 autoEnableIfPossible:(BOOL)a4;
- (int)contactsCountStatus;
- (int)lastKnownContactsManagementState;
- (void)__contactStoreDidChange:(id)a3;
- (void)__contactsSyncRetryNow;
- (void)__contactsSyncRetryTimer:(id)a3;
- (void)__contactsSyncTimeoutTimer:(id)a3;
- (void)_addFetchCompletionHandler:(id)a3;
- (void)_enableContactsManagementForFamilyMember:(id)a3 request:(BOOL)a4 completionHandler:(id)a5;
- (void)_fetchContactsCountStatusWithDeterminedStatusHandler:(id)a3 notTryingToSyncHandler:(id)a4 syncTimedOutHandler:(id)a5;
- (void)_fetchContactsManagementState;
- (void)_installContactsCountRetryAndTimeoutHandlers;
- (void)_processSTContactManagementState:(int64_t)a3 familyMember:(id)a4 error:(id)a5;
- (void)_removeContactsCountRetryAndTimeoutHandlers;
- (void)_removeContactsCountRetryAndTimeoutHandlers_SYNC;
- (void)_runCompletionHandlersWithContactsManagementState:(int)a3 error:(id)a4;
- (void)_setContactsManagementStateFromContactsCountStatus:(int)a3;
- (void)_startFetchingContactsManagementState;
- (void)_waitOnContactsSyncWithRetries;
- (void)dealloc;
- (void)fetchContactsManagementStateWithCompletionHandler:(id)a3;
- (void)requestContactsManagementForFamilyMember:(id)a3 completionHandler:(id)a4;
- (void)setExtendedFamilyMemberContactsSyncTimeout:(BOOL)a3;
@end

@implementation NCABTinkerContactsManagementStateManager

+ (id)managerForBuddyControllerDelegate:(id)a3
{
  v3 = a3;
  v4 = [(NCABTinkerContactsManagementStateManager *)v3 setupFlowUserInfo];
  v5 = [v4 objectForKeyedSubscript:BPSPairingFlowFamilyMember];

  v6 = objc_getAssociatedObject(v3, "managerForBuddyControllerDelegate:");
  if (v6)
  {
    v7 = v6;
    v8 = [(NCABTinkerContactsManagementStateManager *)v6 familyMember];

    v9 = NCABCMS_Accounts_log();
    v10 = v9;
    if (v8 != v5)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_EC58(v7, v5, v10);
      }

      goto LABEL_14;
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    v15 = 136446978;
    v16 = "+[NCABTinkerContactsManagementStateManager managerForBuddyControllerDelegate:]";
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v5;
    v21 = 2112;
    v22 = v3;
    v11 = "%{public}s - Fetched existing tinkerContactsManagementStateManager: %@ for familyMember: %@, from delegate: %@";
    v12 = v10;
    v13 = OS_LOG_TYPE_INFO;
LABEL_10:
    _os_log_impl(&dword_0, v12, v13, v11, &v15, 0x2Au);
    goto LABEL_14;
  }

  if (v5)
  {
    v7 = [[NCABTinkerContactsManagementStateManager alloc] initWithFamilyMember:v5 autoEnableIfPossible:1];
    objc_setAssociatedObject(v3, "managerForBuddyControllerDelegate:", v7, &dword_0 + 1);
    v10 = NCABCMS_Accounts_log();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v15 = 136446978;
    v16 = "+[NCABTinkerContactsManagementStateManager managerForBuddyControllerDelegate:]";
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v5;
    v21 = 2112;
    v22 = v3;
    v11 = "%{public}s - Created tinkerContactsManagementStateManager: %@ for familyMember: %@, attached to delegate: %@";
    v12 = v10;
    v13 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_10;
  }

  v10 = NCABCMS_Accounts_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136446466;
    v16 = "+[NCABTinkerContactsManagementStateManager managerForBuddyControllerDelegate:]";
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}s - Deferring creation of tinkerContactsManagementStateManager (no familyMember); delegate: %@", &v15, 0x16u);
  }

  v7 = 0;
LABEL_14:

  return v7;
}

- (NCABTinkerContactsManagementStateManager)initWithFamilyMember:(id)a3 autoEnableIfPossible:(BOOL)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = NCABTinkerContactsManagementStateManager;
  v8 = [(NCABTinkerContactsManagementStateManager *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_familyMember, a3);
    v10 = objc_opt_new();
    stManagementState = v9->_stManagementState;
    v9->_stManagementState = v10;

    v9->_autoEnableContactsManagement = a4;
    v9->_completionHandlersLock._os_unfair_lock_opaque = 0;
    v9->_stateLock._os_unfair_lock_opaque = 0;
    [(NCABTinkerContactsManagementStateManager *)v9 setExtendedFamilyMemberContactsSyncTimeout:0];
    [NCABContactsSyncHelper triggerContactsSyncForFamilyMember:v9->_familyMember];
  }

  return v9;
}

- (void)dealloc
{
  [(NCABTinkerContactsManagementStateManager *)self _removeContactsCountRetryAndTimeoutHandlers_SYNC];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = NCABTinkerContactsManagementStateManager;
  [(NCABTinkerContactsManagementStateManager *)&v4 dealloc];
}

- (void)setExtendedFamilyMemberContactsSyncTimeout:(BOOL)a3
{
  v3 = a3;
  self->_extendedFamilyMemberContactsSyncTimeout = a3;
  v5 = 120.0;
  if (a3)
  {
    v5 = 300.0;
  }

  [(NCABTinkerContactsManagementStateManager *)self setContactsCountSyncStatusRetryTimeoutInterval:v5];
  v6 = NCABCMS_Tinker_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    [(NCABTinkerContactsManagementStateManager *)self contactsCountSyncStatusRetryTimeoutInterval];
    v8 = 136446722;
    v9 = "[NCABTinkerContactsManagementStateManager setExtendedFamilyMemberContactsSyncTimeout:]";
    v10 = 1024;
    v11 = v3;
    v12 = 2048;
    v13 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: %d - updated contactsCountSyncStatusRetryTimeoutInterval => %0.1f", &v8, 0x1Cu);
  }
}

- (void)fetchContactsManagementStateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = NCABCMS_Tinker_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_retainBlock(v4);
    *buf = 136446466;
    v28 = "[NCABTinkerContactsManagementStateManager fetchContactsManagementStateWithCompletionHandler:]";
    v29 = 2114;
    v30 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%{public}s: %{public}@", buf, 0x16u);
  }

  if (!v4)
  {
    v8 = NCABCMS_Tinker_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_ED90(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    goto LABEL_11;
  }

  v7 = [(NCABTinkerContactsManagementStateManager *)self familyMember];

  if (!v7)
  {
    v16 = NCABCMS_Tinker_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_ED18(v16, v17, v18, v19, v20, v21, v22, v23);
    }

    v25 = NSLocalizedDescriptionKey;
    v26 = @"No familyMember";
    v24 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v8 = [NSError errorWithDomain:@"NCABErrorDomain" code:1 userInfo:v24];

    (*(v4 + 2))(v4, 0, v8);
LABEL_11:

    goto LABEL_12;
  }

  [(NCABTinkerContactsManagementStateManager *)self _addFetchCompletionHandler:v4];
  [(NCABTinkerContactsManagementStateManager *)self _fetchContactsManagementState];
LABEL_12:
}

- (int)lastKnownContactsManagementState
{
  os_unfair_lock_lock(&self->_stateLock);
  contactsManagementState = self->_contactsManagementState;
  os_unfair_lock_unlock(&self->_stateLock);
  return contactsManagementState;
}

- (void)requestContactsManagementForFamilyMember:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = NCABCMS_Tinker_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446466;
    v11 = "[NCABTinkerContactsManagementStateManager requestContactsManagementForFamilyMember:completionHandler:]";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: %@", &v10, 0x16u);
  }

  v9 = [(NCABTinkerContactsManagementStateManager *)self familyMember];
  [(NCABTinkerContactsManagementStateManager *)self _enableContactsManagementForFamilyMember:v9 request:1 completionHandler:v7];
}

- (int)contactsCountStatus
{
  p_contactsCountStatus = &self->_contactsCountStatus;
  if (self->_contactsCountStatus <= 3u)
  {
    v4 = [(NCABTinkerContactsManagementStateManager *)self familyMember];
    self->_contactsCountStatus = [NCABContactsSyncHelper contactsCountStatusForFamilyMember:v4 contactsSyncAndNetworkAccessEnabled:[(NCABTinkerContactsManagementStateManager *)self contactsSyncAndNetworkAccessEnabled]];

    v5 = NCABCMS_Tinker_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *p_contactsCountStatus;
      v9 = 136446466;
      v10 = "[NCABTinkerContactsManagementStateManager contactsCountStatus]";
      v11 = 1024;
      v12 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s - fetched contactsCountStatus:%d", &v9, 0x12u);
    }
  }

  v7 = NCABCMS_Tinker_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_EE08(p_contactsCountStatus);
  }

  return *p_contactsCountStatus;
}

- (void)_addFetchCompletionHandler:(id)a3
{
  v8 = a3;
  os_unfair_lock_lock(&self->_completionHandlersLock);
  completionHandlersArray = self->_completionHandlersArray;
  if (!completionHandlersArray)
  {
    v5 = +[NSMutableArray array];
    v6 = self->_completionHandlersArray;
    self->_completionHandlersArray = v5;

    completionHandlersArray = self->_completionHandlersArray;
  }

  v7 = objc_retainBlock(v8);
  [(NSMutableArray *)completionHandlersArray addObject:v7];

  os_unfair_lock_unlock(&self->_completionHandlersLock);
}

- (void)_runCompletionHandlersWithContactsManagementState:(int)a3 error:(id)a4
{
  v6 = a4;
  v7 = NCABCMS_Tinker_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v20 = "[NCABTinkerContactsManagementStateManager _runCompletionHandlersWithContactsManagementState:error:]";
    v21 = 1024;
    v22 = a3;
    v23 = 2114;
    v24 = v6;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}s - managementState: %d, error: %{public}@", buf, 0x1Cu);
  }

  os_unfair_lock_lock(&self->_completionHandlersLock);
  v8 = [(NSMutableArray *)self->_completionHandlersArray copy];
  [(NSMutableArray *)self->_completionHandlersArray removeAllObjects];
  os_unfair_lock_unlock(&self->_completionHandlersLock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        (*(*(*(&v14 + 1) + 8 * v13) + 16))(*(*(&v14 + 1) + 8 * v13));
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)_processSTContactManagementState:(int64_t)a3 familyMember:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = NCABCMS_Tinker_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v24 = "[NCABTinkerContactsManagementStateManager _processSTContactManagementState:familyMember:error:]";
    v25 = 2048;
    v26 = a3;
    v27 = 2114;
    v28 = v9;
    v29 = 2112;
    v30 = v8;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}s - stContactManagementState: %lld, error: %{public}@ for familyMember: %@ -  ", buf, 0x2Au);
  }

  switch(a3)
  {
    case 2:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_6A5C;
      v16[3] = &unk_1C6F0;
      v16[4] = self;
      v14[4] = self;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_6A6C;
      v15[3] = &unk_1C718;
      v15[4] = self;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_6A7C;
      v14[3] = &unk_1C718;
      v11 = v16;
      v12 = v15;
      v13 = v14;
      goto LABEL_10;
    case 1:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_6A2C;
      v19[3] = &unk_1C6F0;
      v19[4] = self;
      v17[4] = self;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_6A3C;
      v18[3] = &unk_1C718;
      v18[4] = self;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_6A4C;
      v17[3] = &unk_1C718;
      v11 = v19;
      v12 = v18;
      v13 = v17;
LABEL_10:
      [(NCABTinkerContactsManagementStateManager *)self _fetchContactsCountStatusWithDeterminedStatusHandler:v11 notTryingToSyncHandler:v12 syncTimedOutHandler:v13];
      break;
    case 0:
      if (([objc_opt_class() _familyMemberIsEligibleForScreenTime:v8] & 1) == 0)
      {
        [(NCABTinkerContactsManagementStateManager *)self _updateContactsManagementState:1 error:0];
        break;
      }

      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_6A00;
      v22[3] = &unk_1C6F0;
      v22[4] = self;
      v20[4] = self;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_6A0C;
      v21[3] = &unk_1C718;
      v21[4] = self;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_6A1C;
      v20[3] = &unk_1C718;
      v11 = v22;
      v12 = v21;
      v13 = v20;
      goto LABEL_10;
  }
}

- (void)_setContactsManagementStateFromContactsCountStatus:(int)a3
{
  v5 = NCABCMS_Tinker_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[NCABTinkerContactsManagementStateManager _setContactsManagementStateFromContactsCountStatus:]";
    v8 = 1024;
    v9 = a3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %d", &v6, 0x12u);
  }

  if ((a3 - 3) <= 2)
  {
    [(NCABTinkerContactsManagementStateManager *)self _updateContactsManagementState:dword_12BE0[a3 - 3] error:0];
  }
}

- (void)_fetchContactsCountStatusWithDeterminedStatusHandler:(id)a3 notTryingToSyncHandler:(id)a4 syncTimedOutHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NCABTinkerContactsManagementStateManager *)self contactsSyncAndNetworkAccessEnabled];
  v12 = NCABCMS_Tinker_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_retainBlock(v8);
    v14 = objc_retainBlock(v9);
    v15 = objc_retainBlock(v10);
    v26 = 136447234;
    v27 = "[NCABTinkerContactsManagementStateManager _fetchContactsCountStatusWithDeterminedStatusHandler:notTryingToSyncHandler:syncTimedOutHandler:]";
    v28 = 2048;
    *v29 = v13;
    *&v29[8] = 2048;
    *&v29[10] = v14;
    v30 = 2048;
    v31 = v15;
    v32 = 1024;
    v33 = v11;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}s :%p:%p:%p - syncEnabled:%d", &v26, 0x30u);
  }

  if (v11)
  {
    v16 = [(NCABTinkerContactsManagementStateManager *)self contactsCountStatus];
    v17 = NCABCMS_Tinker_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v26 = 136446722;
      v27 = "[NCABTinkerContactsManagementStateManager _fetchContactsCountStatusWithDeterminedStatusHandler:notTryingToSyncHandler:syncTimedOutHandler:]";
      v28 = 1024;
      *v29 = v16;
      *&v29[4] = 1024;
      *&v29[6] = v16 == 2;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "%{public}s - contactsCountStatus:%d => waitingOnContactsSync:%d", &v26, 0x18u);
    }

    if (v16 == 2)
    {
      v18 = [(NCABTinkerContactsManagementStateManager *)self _checkContactsCountStatusNotYetSyncedTimedOut];
      v19 = NCABCMS_Tinker_log();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      if (v18)
      {
        if (v20)
        {
          v21 = objc_retainBlock(v10);
          v26 = 136446466;
          v27 = "[NCABTinkerContactsManagementStateManager _fetchContactsCountStatusWithDeterminedStatusHandler:notTryingToSyncHandler:syncTimedOutHandler:]";
          v28 = 2048;
          *v29 = v21;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%{public}s timedOut => syncTimedOutHandler():%p", &v26, 0x16u);
        }

        if (v10)
        {
          v10[2](v10);
        }
      }

      else
      {
        if (v20)
        {
          v26 = 136446210;
          v27 = "[NCABTinkerContactsManagementStateManager _fetchContactsCountStatusWithDeterminedStatusHandler:notTryingToSyncHandler:syncTimedOutHandler:]";
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%{public}s waiting to sync => _waitOnContactsSyncWithRetries", &v26, 0xCu);
        }

        [(NCABTinkerContactsManagementStateManager *)self _waitOnContactsSyncWithRetries];
      }
    }

    else
    {
      v24 = NCABCMS_Tinker_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = objc_retainBlock(v8);
        v26 = 136446722;
        v27 = "[NCABTinkerContactsManagementStateManager _fetchContactsCountStatusWithDeterminedStatusHandler:notTryingToSyncHandler:syncTimedOutHandler:]";
        v28 = 1024;
        *v29 = v16;
        *&v29[4] = 2048;
        *&v29[6] = v25;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%{public}s => determinedStatusHandler(%d):%p", &v26, 0x1Cu);
      }

      if (v8)
      {
        (*(v8 + 2))(v8, v16);
      }
    }
  }

  else
  {
    v22 = NCABCMS_Tinker_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_retainBlock(v9);
      v26 = 136446466;
      v27 = "[NCABTinkerContactsManagementStateManager _fetchContactsCountStatusWithDeterminedStatusHandler:notTryingToSyncHandler:syncTimedOutHandler:]";
      v28 = 2048;
      *v29 = v23;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%{public}s !syncEnabled => notTryingToSyncHandler():%p", &v26, 0x16u);
    }

    if (v9)
    {
      v9[2](v9);
    }
  }
}

- (BOOL)_checkContactsCountStatusNotYetSyncedTimedOut
{
  v3 = [(NCABTinkerContactsManagementStateManager *)self contactsCountSyncStatusRetryTimeoutDate];

  if (!v3)
  {
    [(NCABTinkerContactsManagementStateManager *)self contactsCountSyncStatusRetryTimeoutInterval];
    v4 = [NSDate dateWithTimeIntervalSinceNow:?];
    [(NCABTinkerContactsManagementStateManager *)self setContactsCountSyncStatusRetryTimeoutDate:v4];

    v5 = NCABCMS_Tinker_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(NCABTinkerContactsManagementStateManager *)self contactsCountSyncStatusRetryTimeoutDate];
      v13 = 136446466;
      v14 = "[NCABTinkerContactsManagementStateManager _checkContactsCountStatusNotYetSyncedTimedOut]";
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s - set contactsCountSyncStatusRetryTimeoutDate:%{public}@", &v13, 0x16u);
    }
  }

  v7 = [(NCABTinkerContactsManagementStateManager *)self contactsCountSyncStatusRetryTimeoutDate];
  [v7 timeIntervalSinceNow];
  v9 = v8;

  v10 = NCABCMS_Tinker_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(NCABTinkerContactsManagementStateManager *)self contactsCountSyncStatusRetryTimeoutDate];
    v13 = 136446978;
    v14 = "[NCABTinkerContactsManagementStateManager _checkContactsCountStatusNotYetSyncedTimedOut]";
    v15 = 2114;
    v16 = v11;
    v17 = 2048;
    v18 = v9;
    v19 = 1024;
    v20 = v9 < 0.0;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}s - contactsCountSyncStatusRetryTimeoutDate:%{public}@ remainingTimeoutSeconds:%0.2f => timedOut:%d", &v13, 0x26u);
  }

  return v9 < 0.0;
}

- (void)_waitOnContactsSyncWithRetries
{
  os_unfair_lock_lock(&self->_stateLock);
  self->_contactsManagementRequestState = 2;
  os_unfair_lock_unlock(&self->_stateLock);
  [(NCABTinkerContactsManagementStateManager *)self _installContactsCountRetryAndTimeoutHandlers];
  v3 = +[NCABContactsSyncHelper localDeviceContactsCount];
}

- (void)_installContactsCountRetryAndTimeoutHandlers
{
  v3 = NCABCMS_Tinker_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v6 = "[NCABTinkerContactsManagementStateManager _installContactsCountRetryAndTimeoutHandlers]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_72A0;
  block[3] = &unk_1C718;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_removeContactsCountRetryAndTimeoutHandlers_SYNC
{
  v3 = NCABCMS_Tinker_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "[NCABTinkerContactsManagementStateManager _removeContactsCountRetryAndTimeoutHandlers_SYNC]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v7, 0xCu);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:CNContactStoreDidChangeNotification object:0];

  [(NSTimer *)self->_contactsCountSyncStatusRetryTimeoutTimer invalidate];
  contactsCountSyncStatusRetryTimeoutTimer = self->_contactsCountSyncStatusRetryTimeoutTimer;
  self->_contactsCountSyncStatusRetryTimeoutTimer = 0;

  [(NSTimer *)self->_contactsCountSyncStatusRetryTimer invalidate];
  contactsCountSyncStatusRetryTimer = self->_contactsCountSyncStatusRetryTimer;
  self->_contactsCountSyncStatusRetryTimer = 0;
}

- (void)_removeContactsCountRetryAndTimeoutHandlers
{
  v3 = NCABCMS_Tinker_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v6 = "[NCABTinkerContactsManagementStateManager _removeContactsCountRetryAndTimeoutHandlers]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7788;
  block[3] = &unk_1C718;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)__contactsSyncRetryNow
{
  p_contactsManagementRequestState = &self->_contactsManagementRequestState;
  if (self->_contactsManagementRequestState != 2)
  {
    v4 = NCABCMS_Tinker_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_F028(p_contactsManagementRequestState, self, v4);
    }
  }

  [(NCABTinkerContactsManagementStateManager *)self _fetchContactsManagementState];
}

- (void)__contactsSyncTimeoutTimer:(id)a3
{
  v4 = NCABCMS_Tinker_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[NCABTinkerContactsManagementStateManager __contactsSyncTimeoutTimer:]";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s", &v5, 0xCu);
  }

  [(NCABTinkerContactsManagementStateManager *)self __contactsSyncRetryNow];
}

- (void)__contactsSyncRetryTimer:(id)a3
{
  v4 = NCABCMS_Tinker_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[NCABTinkerContactsManagementStateManager __contactsSyncRetryTimer:]";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s", &v5, 0xCu);
  }

  [(NCABTinkerContactsManagementStateManager *)self __contactsSyncRetryNow];
}

- (void)__contactStoreDidChange:(id)a3
{
  v4 = NCABCMS_Tinker_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[NCABTinkerContactsManagementStateManager __contactStoreDidChange:]";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s", &v5, 0xCu);
  }

  [(NCABTinkerContactsManagementStateManager *)self __contactsSyncRetryNow];
}

- (BOOL)_shouldRunAgainAfterSyncEnabled_LOCKED
{
  v3 = [(NCABTinkerContactsManagementStateManager *)self contactsSyncAndNetworkAccessEnabled];
  if (v3)
  {
    LOBYTE(v3) = (self->_contactsManagementState - 100) < 3;
  }

  return v3;
}

- (void)_fetchContactsManagementState
{
  v3 = NCABCMS_Tinker_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136446210;
    v16 = "[NCABTinkerContactsManagementStateManager _fetchContactsManagementState]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v15, 0xCu);
  }

  [(NCABTinkerContactsManagementStateManager *)self _removeContactsCountRetryAndTimeoutHandlers];
  os_unfair_lock_lock(&self->_stateLock);
  v4 = [(NCABTinkerContactsManagementStateManager *)self _shouldRunAgainAfterSyncEnabled_LOCKED];
  v5 = NCABCMS_Tinker_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    contactsManagementRequestState = self->_contactsManagementRequestState;
    contactsManagementState = self->_contactsManagementState;
    v15 = 136446978;
    v16 = "[NCABTinkerContactsManagementStateManager _fetchContactsManagementState]";
    v17 = 1024;
    v18 = contactsManagementRequestState;
    v19 = 1024;
    v20 = contactsManagementState;
    v21 = 1024;
    v22 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s - _contactsManagementRequestState: %d, _contactsManagementState: %d, shouldRunAgainAfterSyncEnabled: %d", &v15, 0x1Eu);
  }

  v8 = self->_contactsManagementRequestState;
  if ((v8 != 4) | v4 & 1)
  {
    if (!v8)
    {
LABEL_10:
      self->_contactsManagementRequestState = 1;
      goto LABEL_11;
    }

    if (v8 == 2)
    {
LABEL_11:
      os_unfair_lock_unlock(&self->_stateLock);
      v9 = NCABCMS_Tinker_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = self->_contactsManagementRequestState;
        v15 = 136446466;
        v16 = "[NCABTinkerContactsManagementStateManager _fetchContactsManagementState]";
        v17 = 1024;
        v18 = v10;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}s - starting fetch - _contactsManagementRequestState: %d", &v15, 0x12u);
      }

      [(NCABTinkerContactsManagementStateManager *)self _startFetchingContactsManagementState];
      return;
    }

    if (v4)
    {
      if ((v8 | 4) == 4)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    os_unfair_lock_unlock(&self->_stateLock);
    v14 = NCABCMS_Tinker_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136446210;
      v16 = "[NCABTinkerContactsManagementStateManager _fetchContactsManagementState]";
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}s - fetch already in progress; nothing to do", &v15, 0xCu);
    }
  }

  else
  {
    v11 = self->_contactsManagementState;
    v12 = self->_contactsManagementFetchError;
    os_unfair_lock_unlock(&self->_stateLock);
    v13 = NCABCMS_Tinker_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136446210;
      v16 = "[NCABTinkerContactsManagementStateManager _fetchContactsManagementState]";
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}s - sync running completion handlers", &v15, 0xCu);
    }

    [(NCABTinkerContactsManagementStateManager *)self _runCompletionHandlersWithContactsManagementState:v11 error:v12];
  }
}

- (void)_startFetchingContactsManagementState
{
  v3 = [(NCABTinkerContactsManagementStateManager *)self familyMember];
  v4 = NCABCMS_Tinker_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v12 = "[NCABTinkerContactsManagementStateManager _startFetchingContactsManagementState]";
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s - familyMember: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v5 = [(NCABTinkerContactsManagementStateManager *)self stManagementState];
  v6 = [v3 dsid];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_7EEC;
  v8[3] = &unk_1C740;
  objc_copyWeak(&v10, buf);
  v7 = v3;
  v9 = v7;
  [v5 contactManagementStateForDSID:v6 completionHandler:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)_enableContactsManagementForFamilyMember:(id)a3 request:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(NCABTinkerContactsManagementStateManager *)self lastKnownContactsManagementState];
  v11 = NCABCMS_Tinker_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v24 = "[NCABTinkerContactsManagementStateManager _enableContactsManagementForFamilyMember:request:completionHandler:]";
    v25 = 2112;
    v26 = v8;
    v27 = 1024;
    v28 = v6;
    v29 = 1024;
    LODWORD(v30) = v10;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: %@ request: %d lastKnownContactsManagementState: %d", buf, 0x22u);
  }

  v12 = [(NCABTinkerContactsManagementStateManager *)self lastKnownContactsManagementState];
  if ((v12 > 5 || ((1 << v12) & 0x23) == 0) && v12 - 100 >= 3)
  {
    goto LABEL_14;
  }

  v13 = NCABCMS_Tinker_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_F0C8(self, v13);
  }

  v31 = NSLocalizedDescriptionKey;
  v14 = [NSString stringWithFormat:@"Attempted to enable contacts management from bad state: %d", v10];
  v32 = v14;
  v15 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v16 = [NSError errorWithDomain:@"NCABErrorDomain" code:3 userInfo:v15];

  if (v16)
  {
    v17 = 0;
  }

  else
  {
LABEL_14:
    v19 = [(NCABTinkerContactsManagementStateManager *)self stManagementState];
    v20 = [v8 dsid];
    v22 = 0;
    v17 = [v19 enableScreenTimeForDSID:v20 error:&v22];
    v16 = v22;

    if (v17 && !v16)
    {
      v16 = [(NCABTinkerContactsManagementStateManager *)self stManagementState];
      v21 = [v8 dsid];
      if (v6)
      {
        [v16 requestToManageContactsForDSID:v21 completionHandler:v9];
      }

      else
      {
        [v16 setManageContactsEnabled:1 forDSID:v21 completionHandler:v9];
      }

      goto LABEL_20;
    }
  }

  v18 = NCABCMS_Tinker_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v24 = "[NCABTinkerContactsManagementStateManager _enableContactsManagementForFamilyMember:request:completionHandler:]";
    v25 = 2112;
    v26 = v8;
    v27 = 1024;
    v28 = v17;
    v29 = 2114;
    v30 = v16;
    _os_log_error_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%{public}s - failed to enable Screen Time for family member: %@, enabledST: %d, error: %{public}@", buf, 0x26u);
  }

  v9[2](v9, v16);
LABEL_20:
}

+ (BOOL)_familyMemberIsEligibleForScreenTime:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 memberType] == &dword_0 + 1 || objc_msgSend(v4, "memberType") == &dword_0 + 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end