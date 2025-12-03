@interface NCABTinkerContactsManagementStateManager
+ (BOOL)_familyMemberIsEligibleForScreenTime:(id)time;
+ (id)managerForBuddyControllerDelegate:(id)delegate;
- (BOOL)_checkContactsCountStatusNotYetSyncedTimedOut;
- (BOOL)_shouldRunAgainAfterSyncEnabled_LOCKED;
- (NCABTinkerContactsManagementStateManager)initWithFamilyMember:(id)member autoEnableIfPossible:(BOOL)possible;
- (int)contactsCountStatus;
- (int)lastKnownContactsManagementState;
- (void)__contactStoreDidChange:(id)change;
- (void)__contactsSyncRetryNow;
- (void)__contactsSyncRetryTimer:(id)timer;
- (void)__contactsSyncTimeoutTimer:(id)timer;
- (void)_addFetchCompletionHandler:(id)handler;
- (void)_enableContactsManagementForFamilyMember:(id)member request:(BOOL)request completionHandler:(id)handler;
- (void)_fetchContactsCountStatusWithDeterminedStatusHandler:(id)handler notTryingToSyncHandler:(id)syncHandler syncTimedOutHandler:(id)outHandler;
- (void)_fetchContactsManagementState;
- (void)_installContactsCountRetryAndTimeoutHandlers;
- (void)_processSTContactManagementState:(int64_t)state familyMember:(id)member error:(id)error;
- (void)_removeContactsCountRetryAndTimeoutHandlers;
- (void)_removeContactsCountRetryAndTimeoutHandlers_SYNC;
- (void)_runCompletionHandlersWithContactsManagementState:(int)state error:(id)error;
- (void)_setContactsManagementStateFromContactsCountStatus:(int)status;
- (void)_startFetchingContactsManagementState;
- (void)_waitOnContactsSyncWithRetries;
- (void)dealloc;
- (void)fetchContactsManagementStateWithCompletionHandler:(id)handler;
- (void)requestContactsManagementForFamilyMember:(id)member completionHandler:(id)handler;
- (void)setExtendedFamilyMemberContactsSyncTimeout:(BOOL)timeout;
@end

@implementation NCABTinkerContactsManagementStateManager

+ (id)managerForBuddyControllerDelegate:(id)delegate
{
  delegateCopy = delegate;
  setupFlowUserInfo = [(NCABTinkerContactsManagementStateManager *)delegateCopy setupFlowUserInfo];
  v5 = [setupFlowUserInfo objectForKeyedSubscript:BPSPairingFlowFamilyMember];

  v6 = objc_getAssociatedObject(delegateCopy, "managerForBuddyControllerDelegate:");
  if (v6)
  {
    v7 = v6;
    familyMember = [(NCABTinkerContactsManagementStateManager *)v6 familyMember];

    v9 = NCABCMS_Accounts_log();
    v10 = v9;
    if (familyMember != v5)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_5A88(v7, v5, v10);
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
    v22 = delegateCopy;
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
    objc_setAssociatedObject(delegateCopy, "managerForBuddyControllerDelegate:", v7, &dword_0 + 1);
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
    v22 = delegateCopy;
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
    v18 = delegateCopy;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}s - Deferring creation of tinkerContactsManagementStateManager (no familyMember); delegate: %@", &v15, 0x16u);
  }

  v7 = 0;
LABEL_14:

  return v7;
}

- (NCABTinkerContactsManagementStateManager)initWithFamilyMember:(id)member autoEnableIfPossible:(BOOL)possible
{
  memberCopy = member;
  v13.receiver = self;
  v13.super_class = NCABTinkerContactsManagementStateManager;
  v8 = [(NCABTinkerContactsManagementStateManager *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_familyMember, member);
    v10 = objc_opt_new();
    stManagementState = v9->_stManagementState;
    v9->_stManagementState = v10;

    v9->_autoEnableContactsManagement = possible;
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

- (void)setExtendedFamilyMemberContactsSyncTimeout:(BOOL)timeout
{
  timeoutCopy = timeout;
  self->_extendedFamilyMemberContactsSyncTimeout = timeout;
  v5 = 120.0;
  if (timeout)
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
    v11 = timeoutCopy;
    v12 = 2048;
    v13 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: %d - updated contactsCountSyncStatusRetryTimeoutInterval => %0.1f", &v8, 0x1Cu);
  }
}

- (void)fetchContactsManagementStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = NCABCMS_Tinker_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_retainBlock(handlerCopy);
    *buf = 136446466;
    v28 = "[NCABTinkerContactsManagementStateManager fetchContactsManagementStateWithCompletionHandler:]";
    v29 = 2114;
    v30 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%{public}s: %{public}@", buf, 0x16u);
  }

  if (!handlerCopy)
  {
    v8 = NCABCMS_Tinker_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_5BC0(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    goto LABEL_11;
  }

  familyMember = [(NCABTinkerContactsManagementStateManager *)self familyMember];

  if (!familyMember)
  {
    v16 = NCABCMS_Tinker_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_5B48(v16, v17, v18, v19, v20, v21, v22, v23);
    }

    v25 = NSLocalizedDescriptionKey;
    v26 = @"No familyMember";
    v24 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v8 = [NSError errorWithDomain:@"NCABErrorDomain" code:1 userInfo:v24];

    (*(handlerCopy + 2))(handlerCopy, 0, v8);
LABEL_11:

    goto LABEL_12;
  }

  [(NCABTinkerContactsManagementStateManager *)self _addFetchCompletionHandler:handlerCopy];
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

- (void)requestContactsManagementForFamilyMember:(id)member completionHandler:(id)handler
{
  memberCopy = member;
  handlerCopy = handler;
  v8 = NCABCMS_Tinker_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446466;
    v11 = "[NCABTinkerContactsManagementStateManager requestContactsManagementForFamilyMember:completionHandler:]";
    v12 = 2112;
    v13 = memberCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: %@", &v10, 0x16u);
  }

  familyMember = [(NCABTinkerContactsManagementStateManager *)self familyMember];
  [(NCABTinkerContactsManagementStateManager *)self _enableContactsManagementForFamilyMember:familyMember request:1 completionHandler:handlerCopy];
}

- (int)contactsCountStatus
{
  p_contactsCountStatus = &self->_contactsCountStatus;
  if (self->_contactsCountStatus <= 3u)
  {
    familyMember = [(NCABTinkerContactsManagementStateManager *)self familyMember];
    self->_contactsCountStatus = [NCABContactsSyncHelper contactsCountStatusForFamilyMember:familyMember contactsSyncAndNetworkAccessEnabled:[(NCABTinkerContactsManagementStateManager *)self contactsSyncAndNetworkAccessEnabled]];

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
    sub_5C38(p_contactsCountStatus);
  }

  return *p_contactsCountStatus;
}

- (void)_addFetchCompletionHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_completionHandlersLock);
  completionHandlersArray = self->_completionHandlersArray;
  if (!completionHandlersArray)
  {
    v5 = +[NSMutableArray array];
    v6 = self->_completionHandlersArray;
    self->_completionHandlersArray = v5;

    completionHandlersArray = self->_completionHandlersArray;
  }

  v7 = objc_retainBlock(handlerCopy);
  [(NSMutableArray *)completionHandlersArray addObject:v7];

  os_unfair_lock_unlock(&self->_completionHandlersLock);
}

- (void)_runCompletionHandlersWithContactsManagementState:(int)state error:(id)error
{
  errorCopy = error;
  v7 = NCABCMS_Tinker_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v20 = "[NCABTinkerContactsManagementStateManager _runCompletionHandlersWithContactsManagementState:error:]";
    v21 = 1024;
    stateCopy = state;
    v23 = 2114;
    v24 = errorCopy;
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

- (void)_processSTContactManagementState:(int64_t)state familyMember:(id)member error:(id)error
{
  memberCopy = member;
  errorCopy = error;
  v10 = NCABCMS_Tinker_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v24 = "[NCABTinkerContactsManagementStateManager _processSTContactManagementState:familyMember:error:]";
    v25 = 2048;
    stateCopy = state;
    v27 = 2114;
    v28 = errorCopy;
    v29 = 2112;
    v30 = memberCopy;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}s - stContactManagementState: %lld, error: %{public}@ for familyMember: %@ -  ", buf, 0x2Au);
  }

  switch(state)
  {
    case 2:
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_263C;
      v16[3] = &unk_C360;
      v16[4] = self;
      v14[4] = self;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_264C;
      v15[3] = &unk_C388;
      v15[4] = self;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_265C;
      v14[3] = &unk_C388;
      v11 = v16;
      v12 = v15;
      v13 = v14;
      goto LABEL_10;
    case 1:
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_260C;
      v19[3] = &unk_C360;
      v19[4] = self;
      v17[4] = self;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_261C;
      v18[3] = &unk_C388;
      v18[4] = self;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_262C;
      v17[3] = &unk_C388;
      v11 = v19;
      v12 = v18;
      v13 = v17;
LABEL_10:
      [(NCABTinkerContactsManagementStateManager *)self _fetchContactsCountStatusWithDeterminedStatusHandler:v11 notTryingToSyncHandler:v12 syncTimedOutHandler:v13];
      break;
    case 0:
      if (([objc_opt_class() _familyMemberIsEligibleForScreenTime:memberCopy] & 1) == 0)
      {
        [(NCABTinkerContactsManagementStateManager *)self _updateContactsManagementState:1 error:0];
        break;
      }

      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_25E0;
      v22[3] = &unk_C360;
      v22[4] = self;
      v20[4] = self;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_25EC;
      v21[3] = &unk_C388;
      v21[4] = self;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_25FC;
      v20[3] = &unk_C388;
      v11 = v22;
      v12 = v21;
      v13 = v20;
      goto LABEL_10;
  }
}

- (void)_setContactsManagementStateFromContactsCountStatus:(int)status
{
  v5 = NCABCMS_Tinker_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[NCABTinkerContactsManagementStateManager _setContactsManagementStateFromContactsCountStatus:]";
    v8 = 1024;
    statusCopy = status;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %d", &v6, 0x12u);
  }

  if ((status - 3) <= 2)
  {
    [(NCABTinkerContactsManagementStateManager *)self _updateContactsManagementState:dword_77E8[status - 3] error:0];
  }
}

- (void)_fetchContactsCountStatusWithDeterminedStatusHandler:(id)handler notTryingToSyncHandler:(id)syncHandler syncTimedOutHandler:(id)outHandler
{
  handlerCopy = handler;
  syncHandlerCopy = syncHandler;
  outHandlerCopy = outHandler;
  contactsSyncAndNetworkAccessEnabled = [(NCABTinkerContactsManagementStateManager *)self contactsSyncAndNetworkAccessEnabled];
  v12 = NCABCMS_Tinker_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_retainBlock(handlerCopy);
    v14 = objc_retainBlock(syncHandlerCopy);
    v15 = objc_retainBlock(outHandlerCopy);
    v26 = 136447234;
    v27 = "[NCABTinkerContactsManagementStateManager _fetchContactsCountStatusWithDeterminedStatusHandler:notTryingToSyncHandler:syncTimedOutHandler:]";
    v28 = 2048;
    *v29 = v13;
    *&v29[8] = 2048;
    *&v29[10] = v14;
    v30 = 2048;
    v31 = v15;
    v32 = 1024;
    v33 = contactsSyncAndNetworkAccessEnabled;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}s :%p:%p:%p - syncEnabled:%d", &v26, 0x30u);
  }

  if (contactsSyncAndNetworkAccessEnabled)
  {
    contactsCountStatus = [(NCABTinkerContactsManagementStateManager *)self contactsCountStatus];
    v17 = NCABCMS_Tinker_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v26 = 136446722;
      v27 = "[NCABTinkerContactsManagementStateManager _fetchContactsCountStatusWithDeterminedStatusHandler:notTryingToSyncHandler:syncTimedOutHandler:]";
      v28 = 1024;
      *v29 = contactsCountStatus;
      *&v29[4] = 1024;
      *&v29[6] = contactsCountStatus == 2;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "%{public}s - contactsCountStatus:%d => waitingOnContactsSync:%d", &v26, 0x18u);
    }

    if (contactsCountStatus == 2)
    {
      _checkContactsCountStatusNotYetSyncedTimedOut = [(NCABTinkerContactsManagementStateManager *)self _checkContactsCountStatusNotYetSyncedTimedOut];
      v19 = NCABCMS_Tinker_log();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      if (_checkContactsCountStatusNotYetSyncedTimedOut)
      {
        if (v20)
        {
          v21 = objc_retainBlock(outHandlerCopy);
          v26 = 136446466;
          v27 = "[NCABTinkerContactsManagementStateManager _fetchContactsCountStatusWithDeterminedStatusHandler:notTryingToSyncHandler:syncTimedOutHandler:]";
          v28 = 2048;
          *v29 = v21;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%{public}s timedOut => syncTimedOutHandler():%p", &v26, 0x16u);
        }

        if (outHandlerCopy)
        {
          outHandlerCopy[2](outHandlerCopy);
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
        v25 = objc_retainBlock(handlerCopy);
        v26 = 136446722;
        v27 = "[NCABTinkerContactsManagementStateManager _fetchContactsCountStatusWithDeterminedStatusHandler:notTryingToSyncHandler:syncTimedOutHandler:]";
        v28 = 1024;
        *v29 = contactsCountStatus;
        *&v29[4] = 2048;
        *&v29[6] = v25;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%{public}s => determinedStatusHandler(%d):%p", &v26, 0x1Cu);
      }

      if (handlerCopy)
      {
        (*(handlerCopy + 2))(handlerCopy, contactsCountStatus);
      }
    }
  }

  else
  {
    v22 = NCABCMS_Tinker_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_retainBlock(syncHandlerCopy);
      v26 = 136446466;
      v27 = "[NCABTinkerContactsManagementStateManager _fetchContactsCountStatusWithDeterminedStatusHandler:notTryingToSyncHandler:syncTimedOutHandler:]";
      v28 = 2048;
      *v29 = v23;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%{public}s !syncEnabled => notTryingToSyncHandler():%p", &v26, 0x16u);
    }

    if (syncHandlerCopy)
    {
      syncHandlerCopy[2](syncHandlerCopy);
    }
  }
}

- (BOOL)_checkContactsCountStatusNotYetSyncedTimedOut
{
  contactsCountSyncStatusRetryTimeoutDate = [(NCABTinkerContactsManagementStateManager *)self contactsCountSyncStatusRetryTimeoutDate];

  if (!contactsCountSyncStatusRetryTimeoutDate)
  {
    [(NCABTinkerContactsManagementStateManager *)self contactsCountSyncStatusRetryTimeoutInterval];
    v4 = [NSDate dateWithTimeIntervalSinceNow:?];
    [(NCABTinkerContactsManagementStateManager *)self setContactsCountSyncStatusRetryTimeoutDate:v4];

    v5 = NCABCMS_Tinker_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      contactsCountSyncStatusRetryTimeoutDate2 = [(NCABTinkerContactsManagementStateManager *)self contactsCountSyncStatusRetryTimeoutDate];
      v13 = 136446466;
      v14 = "[NCABTinkerContactsManagementStateManager _checkContactsCountStatusNotYetSyncedTimedOut]";
      v15 = 2114;
      v16 = contactsCountSyncStatusRetryTimeoutDate2;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s - set contactsCountSyncStatusRetryTimeoutDate:%{public}@", &v13, 0x16u);
    }
  }

  contactsCountSyncStatusRetryTimeoutDate3 = [(NCABTinkerContactsManagementStateManager *)self contactsCountSyncStatusRetryTimeoutDate];
  [contactsCountSyncStatusRetryTimeoutDate3 timeIntervalSinceNow];
  v9 = v8;

  v10 = NCABCMS_Tinker_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    contactsCountSyncStatusRetryTimeoutDate4 = [(NCABTinkerContactsManagementStateManager *)self contactsCountSyncStatusRetryTimeoutDate];
    v13 = 136446978;
    v14 = "[NCABTinkerContactsManagementStateManager _checkContactsCountStatusNotYetSyncedTimedOut]";
    v15 = 2114;
    v16 = contactsCountSyncStatusRetryTimeoutDate4;
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
  block[2] = sub_2E80;
  block[3] = &unk_C388;
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
  block[2] = sub_3368;
  block[3] = &unk_C388;
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
      sub_5E58(p_contactsManagementRequestState, self, v4);
    }
  }

  [(NCABTinkerContactsManagementStateManager *)self _fetchContactsManagementState];
}

- (void)__contactsSyncTimeoutTimer:(id)timer
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

- (void)__contactsSyncRetryTimer:(id)timer
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

- (void)__contactStoreDidChange:(id)change
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
  contactsSyncAndNetworkAccessEnabled = [(NCABTinkerContactsManagementStateManager *)self contactsSyncAndNetworkAccessEnabled];
  if (contactsSyncAndNetworkAccessEnabled)
  {
    LOBYTE(contactsSyncAndNetworkAccessEnabled) = (self->_contactsManagementState - 100) < 3;
  }

  return contactsSyncAndNetworkAccessEnabled;
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
  _shouldRunAgainAfterSyncEnabled_LOCKED = [(NCABTinkerContactsManagementStateManager *)self _shouldRunAgainAfterSyncEnabled_LOCKED];
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
    v22 = _shouldRunAgainAfterSyncEnabled_LOCKED;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s - _contactsManagementRequestState: %d, _contactsManagementState: %d, shouldRunAgainAfterSyncEnabled: %d", &v15, 0x1Eu);
  }

  v8 = self->_contactsManagementRequestState;
  if ((v8 != 4) | _shouldRunAgainAfterSyncEnabled_LOCKED & 1)
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

    if (_shouldRunAgainAfterSyncEnabled_LOCKED)
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
  familyMember = [(NCABTinkerContactsManagementStateManager *)self familyMember];
  v4 = NCABCMS_Tinker_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v12 = "[NCABTinkerContactsManagementStateManager _startFetchingContactsManagementState]";
    v13 = 2112;
    v14 = familyMember;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s - familyMember: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  stManagementState = [(NCABTinkerContactsManagementStateManager *)self stManagementState];
  dsid = [familyMember dsid];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_3ACC;
  v8[3] = &unk_C3B0;
  objc_copyWeak(&v10, buf);
  v7 = familyMember;
  v9 = v7;
  [stManagementState contactManagementStateForDSID:dsid completionHandler:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)_enableContactsManagementForFamilyMember:(id)member request:(BOOL)request completionHandler:(id)handler
{
  requestCopy = request;
  memberCopy = member;
  handlerCopy = handler;
  lastKnownContactsManagementState = [(NCABTinkerContactsManagementStateManager *)self lastKnownContactsManagementState];
  v11 = NCABCMS_Tinker_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v24 = "[NCABTinkerContactsManagementStateManager _enableContactsManagementForFamilyMember:request:completionHandler:]";
    v25 = 2112;
    v26 = memberCopy;
    v27 = 1024;
    v28 = requestCopy;
    v29 = 1024;
    LODWORD(v30) = lastKnownContactsManagementState;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: %@ request: %d lastKnownContactsManagementState: %d", buf, 0x22u);
  }

  lastKnownContactsManagementState2 = [(NCABTinkerContactsManagementStateManager *)self lastKnownContactsManagementState];
  if ((lastKnownContactsManagementState2 > 5 || ((1 << lastKnownContactsManagementState2) & 0x23) == 0) && lastKnownContactsManagementState2 - 100 >= 3)
  {
    goto LABEL_14;
  }

  v13 = NCABCMS_Tinker_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_5EF8(self, v13);
  }

  v31 = NSLocalizedDescriptionKey;
  v14 = [NSString stringWithFormat:@"Attempted to enable contacts management from bad state: %d", lastKnownContactsManagementState];
  v32 = v14;
  v15 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  stManagementState2 = [NSError errorWithDomain:@"NCABErrorDomain" code:3 userInfo:v15];

  if (stManagementState2)
  {
    v17 = 0;
  }

  else
  {
LABEL_14:
    stManagementState = [(NCABTinkerContactsManagementStateManager *)self stManagementState];
    dsid = [memberCopy dsid];
    v22 = 0;
    v17 = [stManagementState enableScreenTimeForDSID:dsid error:&v22];
    stManagementState2 = v22;

    if (v17 && !stManagementState2)
    {
      stManagementState2 = [(NCABTinkerContactsManagementStateManager *)self stManagementState];
      dsid2 = [memberCopy dsid];
      if (requestCopy)
      {
        [stManagementState2 requestToManageContactsForDSID:dsid2 completionHandler:handlerCopy];
      }

      else
      {
        [stManagementState2 setManageContactsEnabled:1 forDSID:dsid2 completionHandler:handlerCopy];
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
    v26 = memberCopy;
    v27 = 1024;
    v28 = v17;
    v29 = 2114;
    v30 = stManagementState2;
    _os_log_error_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%{public}s - failed to enable Screen Time for family member: %@, enabledST: %d, error: %{public}@", buf, 0x26u);
  }

  handlerCopy[2](handlerCopy, stManagementState2);
LABEL_20:
}

+ (BOOL)_familyMemberIsEligibleForScreenTime:(id)time
{
  timeCopy = time;
  v4 = timeCopy;
  if (timeCopy)
  {
    v5 = [timeCopy memberType] == &dword_0 + 1 || objc_msgSend(v4, "memberType") == &dword_0 + 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end