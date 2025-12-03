@interface MFAccountsController
+ (id)log;
- (MFAccountsController)initWithFocusController:(id)controller;
- (void)_gatherStatisticsWithAccounts:(id)accounts;
- (void)_resetAccounts;
- (void)currentFocusChanged:(id)changed;
- (void)resetAccounts;
@end

@implementation MFAccountsController

- (void)_resetAccounts
{
  selfCopy2 = self;
  if (pthread_main_np() != 1)
  {
    v41 = +[NSAssertionHandler currentHandler];
    [v41 handleFailureInMethod:a2 object:self file:@"MFAccountsController.m" lineNumber:91 description:@"Current thread must be main"];

    selfCopy2 = self;
  }

  mailboxProvider = [(MFAccountsController *)selfCopy2 mailboxProvider];
  [mailboxProvider invalidateMailboxes];

  v5 = +[MFAccountsController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reloading accounts", buf, 2u);
  }

  +[MailAccount reloadAccounts];
  +[DeliveryAccount reloadDeliveryAccounts];
  accountsProvider = [(MFAccountsController *)self accountsProvider];
  os_unfair_lock_lock(&self->_currentFocusLock);
  v6 = self->_currentFocus;
  os_unfair_lock_unlock(&self->_currentFocusLock);
  v44 = v6;
  v7 = +[MailAccount mailAccounts];
  v47 = [accountsProvider reloadWithMailAccounts:v7 currentFocus:v6];

  first = [v47 first];
  mailAccounts = [first mailAccounts];

  if (mailAccounts)
  {
    mailAccounts2 = [accountsProvider mailAccounts];
    v42 = mailAccounts;
    v43 = mailAccounts2;
    v10 = [v42 ef_mapSelector:"uniqueID"];
    v51 = [NSSet setWithArray:v10];

    v11 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v43 count]);
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = v43;
    v12 = [obj countByEnumeratingWithState:&v60 objects:buf count:16];
    if (v12)
    {
      v13 = *v61;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v61 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v60 + 1) + 8 * i);
          uniqueID = [v15 uniqueID];
          [v11 setObject:v15 forKey:uniqueID];
        }

        v12 = [obj countByEnumeratingWithState:&v60 objects:buf count:16];
      }

      while (v12);
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v49 = v42;
    v17 = [v49 countByEnumeratingWithState:&v56 objects:v67 count:16];
    if (v17)
    {
      v18 = *v57;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v57 != v18)
          {
            objc_enumerationMutation(v49);
          }

          v20 = *(*(&v56 + 1) + 8 * j);
          uniqueID2 = [v20 uniqueID];
          v22 = [v11 objectForKey:uniqueID2];

          v23 = +[MFInvocationQueue sharedInvocationQueue];
          if (v22)
          {
            [MFMonitoredInvocation mf_invocationWithSelector:"transferNotificationSessionToAccount:" target:v20 object:v22];
          }

          else
          {
            [MFMonitoredInvocation mf_invocationWithSelector:"stopListeningForNotifications" target:v20];
          }
          v24 = ;
          [v23 addInvocation:v24];
        }

        v17 = [v49 countByEnumeratingWithState:&v56 objects:v67 count:16];
      }

      while (v17);
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v25 = obj;
    v26 = [v25 countByEnumeratingWithState:&v52 objects:v66 count:16];
    if (v26)
    {
      v27 = *v53;
      do
      {
        for (k = 0; k != v26; k = k + 1)
        {
          if (*v53 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v29 = *(*(&v52 + 1) + 8 * k);
          uniqueID3 = [v29 uniqueID];
          if (([v51 containsObject:uniqueID3] & 1) == 0)
          {
            canFetch = [v29 canFetch];

            if (!canFetch)
            {
              continue;
            }

            uniqueID3 = +[MFInvocationQueue sharedInvocationQueue];
            v32 = [MFMonitoredInvocation mf_invocationWithSelector:"startListeningForNotifications" target:v29];
            [uniqueID3 addInvocation:v32];
          }
        }

        v26 = [v25 countByEnumeratingWithState:&v52 objects:v66 count:16];
      }

      while (v26);
    }
  }

  mailAccounts3 = [accountsProvider mailAccounts];
  [(MFAccountsController *)self _gatherStatisticsWithAccounts:mailAccounts3];

  v64[0] = ECMailAccountsDidChangeNotificationKeyPreviousAccountIdentifiers;
  first2 = [v47 first];
  displayedAccountsIdentifiers = [first2 displayedAccountsIdentifiers];
  v65[0] = displayedAccountsIdentifiers;
  v64[1] = ECMailAccountsDidChangeNotificationKeyAccountIdentifiers;
  second = [v47 second];
  displayedAccountsIdentifiers2 = [second displayedAccountsIdentifiers];
  v65[1] = displayedAccountsIdentifiers2;
  v38 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:2];

  v39 = +[NSNotificationCenter defaultCenter];
  [v39 postNotificationName:ECMailAccountsDidChangeNotification object:self userInfo:v38];

  v40 = +[NSNotificationCenter defaultCenter];
  [v40 postNotificationName:MFMailComposeControllerShouldReloadAccounts object:self];
}

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006B10;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD3B8 != -1)
  {
    dispatch_once(&qword_1006DD3B8, block);
  }

  v2 = qword_1006DD3B0;

  return v2;
}

- (MFAccountsController)initWithFocusController:(id)controller
{
  controllerCopy = controller;
  v17.receiver = self;
  v17.super_class = MFAccountsController;
  v5 = [(MFAccountsController *)&v17 init];
  if (v5)
  {
    v6 = objc_alloc_init(MFMailAccountsProvider);
    accountsProvider = v5->_accountsProvider;
    v5->_accountsProvider = v6;

    v8 = [[MFMailboxProvider alloc] initWithAccountsProvider:v5->_accountsProvider];
    mailboxProvider = v5->_mailboxProvider;
    v5->_mailboxProvider = v8;

    v5->_currentFocusLock._os_unfair_lock_opaque = 0;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [EFScheduler serialDispatchQueueSchedulerWithName:v11 qualityOfService:25];
    scheduler = v5->_scheduler;
    v5->_scheduler = v12;

    v14 = [controllerCopy addObserver:v5 currentFocus:&v5->_currentFocus];
    focusObservationToken = v5->_focusObservationToken;
    v5->_focusObservationToken = v14;
  }

  return v5;
}

- (void)resetAccounts
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001A2134;
  v3[3] = &unk_10064C7E8;
  v3[4] = self;
  v2 = +[EFScheduler mainThreadScheduler];
  [v2 performBlock:v3];
}

- (void)_gatherStatisticsWithAccounts:(id)accounts
{
  accountsCopy = accounts;
  v4 = +[EFScheduler globalAsyncScheduler];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001A2214;
  v6[3] = &unk_10064C7E8;
  v5 = accountsCopy;
  v7 = v5;
  [v4 performBlock:v6];
}

- (void)currentFocusChanged:(id)changed
{
  changedCopy = changed;
  v6 = +[MFAccountsController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [changedCopy ef_publicDescription];
    *buf = 138543362;
    v17 = ef_publicDescription;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Current focus has changed %{public}@", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_currentFocusLock);
  v8 = self->_currentFocus;
  objc_storeStrong(&self->_currentFocus, changed);
  os_unfair_lock_unlock(&self->_currentFocusLock);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001A27CC;
  v12[3] = &unk_10064C6B0;
  v9 = v8;
  v13 = v9;
  v10 = changedCopy;
  v14 = v10;
  selfCopy = self;
  v11 = +[EFScheduler mainThreadScheduler];
  [v11 performBlock:v12];
}

@end