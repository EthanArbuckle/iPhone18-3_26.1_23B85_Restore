@interface ACRemoteDataclassOwnersManager
- (ACRemoteDataclassOwnersManager)init;
- (id)_accountStore;
- (id)_dataclassOwnerBundles;
- (id)_dataclassToOwnerMap;
- (id)_ownerForDataclass:(id)dataclass;
- (void)_cacheDataclassOwnersLimitedToDataclass:(id)dataclass withOwnerLoadBlock:(id)block;
- (void)_decrementBusyCounterForAccount:(id)account;
- (void)_incrementBusyCounterForAccount:(id)account;
- (void)_setOwner:(id)owner forDataclass:(id)dataclass;
- (void)actionsForAddingAccount:(id)account affectingDataclass:(id)dataclass completion:(id)completion;
- (void)actionsForDeletingAccount:(id)account affectingDataclass:(id)dataclass completion:(id)completion;
- (void)actionsForDisablingDataclass:(id)dataclass onAccount:(id)account completion:(id)completion;
- (void)actionsForEnablingDataclass:(id)dataclass onAccount:(id)account completion:(id)completion;
- (void)isPerformingDataclassActionsForAccount:(id)account completion:(id)completion;
- (void)performDataclassActions:(id)actions forAccount:(id)account withChildren:(id)children completion:(id)completion;
- (void)preloadDataclassOwnersWithCompletion:(id)completion;
@end

@implementation ACRemoteDataclassOwnersManager

- (ACRemoteDataclassOwnersManager)init
{
  v9.receiver = self;
  v9.super_class = ACRemoteDataclassOwnersManager;
  v2 = [(ACRemoteDataclassOwnersManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.accounts.dom.actions", v3);
    dataclassActionQueue = v2->_dataclassActionQueue;
    v2->_dataclassActionQueue = v4;

    v6 = objc_alloc_init(NSMutableDictionary);
    pendingActionBatches = v2->_pendingActionBatches;
    v2->_pendingActionBatches = v6;
  }

  return v2;
}

- (id)_accountStore
{
  accountStore = self->_accountStore;
  if (!accountStore)
  {
    v4 = objc_alloc_init(ACAccountStore);
    v5 = self->_accountStore;
    self->_accountStore = v4;

    accountStore = self->_accountStore;
  }

  return accountStore;
}

- (void)preloadDataclassOwnersWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_10000328C();
  v6 = _ACSignpostCreate();

  v7 = sub_10000328C();
  v8 = v7;
  if ((v6 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "DataclassPreload", &unk_100004FF1, buf, 2u);
  }

  v9 = sub_10000328C();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000033C8(v6, v9);
  }

  [(ACRemoteDataclassOwnersManager *)self _cacheDataclassOwnersLimitedToDataclass:0 withOwnerLoadBlock:0];
  v10 = _ACLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100003440(v10);
  }

  _ACSignpostGetNanoseconds();
  v11 = sub_10000328C();
  v12 = v11;
  if ((v6 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v6, "DataclassPreload", &unk_100004FF1, v14, 2u);
  }

  v13 = sub_10000328C();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_100003484();
  }

  completionCopy[2](completionCopy, 0);
}

- (void)actionsForAddingAccount:(id)account affectingDataclass:(id)dataclass completion:(id)completion
{
  dataclassCopy = dataclass;
  completionCopy = completion;
  accountCopy = account;
  v11 = sub_10000328C();
  v12 = _ACSignpostCreate();

  v13 = sub_10000328C();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v23 = 138543362;
    v24 = dataclassCopy;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "ActionsForAdding", " Dataclass=%{public,signpost.telemetry:string1,name=Dataclass}@ ", &v23, 0xCu);
  }

  v15 = sub_10000328C();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_1000034EC();
  }

  _accountStore = [(ACRemoteDataclassOwnersManager *)self _accountStore];
  [accountCopy _setAccountStore:_accountStore];

  v17 = [(ACRemoteDataclassOwnersManager *)self _ownerForDataclass:dataclassCopy];
  v18 = [v17 actionsForAddingAccount:accountCopy forDataclass:dataclassCopy];

  v19 = _ACLogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    sub_100003554();
  }

  _ACSignpostGetNanoseconds();
  v20 = sub_10000328C();
  v21 = v20;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    LOWORD(v23) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_END, v12, "ActionsForAdding", &unk_100004FF1, &v23, 2u);
  }

  v22 = sub_10000328C();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    sub_1000035BC();
  }

  completionCopy[2](completionCopy, v18, 0);
}

- (void)actionsForDeletingAccount:(id)account affectingDataclass:(id)dataclass completion:(id)completion
{
  accountCopy = account;
  dataclassCopy = dataclass;
  completionCopy = completion;
  v11 = sub_10000328C();
  v12 = _ACSignpostCreate();

  v13 = sub_10000328C();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 138543362;
    v26 = dataclassCopy;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "ActionsForDeleting", " Dataclass=%{public,signpost.telemetry:string1,name=Dataclass}@ ", buf, 0xCu);
  }

  v15 = sub_10000328C();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_100003624();
  }

  _accountStore = [(ACRemoteDataclassOwnersManager *)self _accountStore];
  [accountCopy _setAccountStore:_accountStore];

  v17 = [(ACRemoteDataclassOwnersManager *)self _ownerForDataclass:dataclassCopy];
  if (objc_opt_respondsToSelector())
  {
    v24 = 0;
    v18 = [v17 actionsForDeletingAccount:accountCopy forDataclass:dataclassCopy withError:&v24];
    v19 = v24;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v18 = [v17 actionsForDeletingAccount:accountCopy forDataclass:dataclassCopy];
    }

    else
    {
      v18 = 0;
    }

    v19 = 0;
  }

  v20 = _ACLogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_100003554();
  }

  _ACSignpostGetNanoseconds();
  v21 = sub_10000328C();
  v22 = v21;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_END, v12, "ActionsForDeleting", &unk_100004FF1, buf, 2u);
  }

  v23 = sub_10000328C();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    sub_10000368C();
  }

  completionCopy[2](completionCopy, v18, v19);
}

- (void)actionsForEnablingDataclass:(id)dataclass onAccount:(id)account completion:(id)completion
{
  dataclassCopy = dataclass;
  accountCopy = account;
  completionCopy = completion;
  v11 = sub_10000328C();
  v12 = _ACSignpostCreate();

  v13 = sub_10000328C();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 138543362;
    v26 = dataclassCopy;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "ActionsForEnabling", " Dataclass=%{public,signpost.telemetry:string1,name=Dataclass}@ ", buf, 0xCu);
  }

  v15 = sub_10000328C();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_1000036F4();
  }

  _accountStore = [(ACRemoteDataclassOwnersManager *)self _accountStore];
  [accountCopy _setAccountStore:_accountStore];

  v17 = [(ACRemoteDataclassOwnersManager *)self _ownerForDataclass:dataclassCopy];
  if (objc_opt_respondsToSelector())
  {
    v24 = 0;
    v18 = [v17 actionsForEnablingDataclassOnAccount:accountCopy forDataclass:dataclassCopy withError:&v24];
    v19 = v24;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v18 = [v17 actionsForEnablingDataclassOnAccount:accountCopy forDataclass:dataclassCopy];
    }

    else
    {
      v18 = 0;
    }

    v19 = 0;
  }

  v20 = _ACLogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_100003554();
  }

  _ACSignpostGetNanoseconds();
  v21 = sub_10000328C();
  v22 = v21;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_END, v12, "ActionsForEnabling", &unk_100004FF1, buf, 2u);
  }

  v23 = sub_10000328C();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    sub_10000375C();
  }

  completionCopy[2](completionCopy, v18, v19);
}

- (void)actionsForDisablingDataclass:(id)dataclass onAccount:(id)account completion:(id)completion
{
  dataclassCopy = dataclass;
  accountCopy = account;
  completionCopy = completion;
  v11 = sub_10000328C();
  v12 = _ACSignpostCreate();

  v13 = sub_10000328C();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 138543362;
    v26 = dataclassCopy;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "ActionsForDisabling", " Dataclass=%{public,signpost.telemetry:string1,name=Dataclass}@ ", buf, 0xCu);
  }

  v15 = sub_10000328C();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_1000037C4();
  }

  _accountStore = [(ACRemoteDataclassOwnersManager *)self _accountStore];
  [accountCopy _setAccountStore:_accountStore];

  v17 = [(ACRemoteDataclassOwnersManager *)self _ownerForDataclass:dataclassCopy];
  if (objc_opt_respondsToSelector())
  {
    v24 = 0;
    v18 = [v17 actionsForDisablingDataclassOnAccount:accountCopy forDataclass:dataclassCopy withError:&v24];
    v19 = v24;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v18 = [v17 actionsForDisablingDataclassOnAccount:accountCopy forDataclass:dataclassCopy];
    }

    else
    {
      v18 = 0;
    }

    v19 = 0;
  }

  v20 = _ACLogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_100003554();
  }

  _ACSignpostGetNanoseconds();
  v21 = sub_10000328C();
  v22 = v21;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_END, v12, "ActionsForDisabling", &unk_100004FF1, buf, 2u);
  }

  v23 = sub_10000328C();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    sub_10000382C();
  }

  completionCopy[2](completionCopy, v18, v19);
}

- (void)performDataclassActions:(id)actions forAccount:(id)account withChildren:(id)children completion:(id)completion
{
  actionsCopy = actions;
  accountCopy = account;
  childrenCopy = children;
  completionCopy = completion;
  v13 = sub_10000328C();
  v14 = _ACSignpostCreate();
  v34 = v15;

  v16 = sub_10000328C();
  v17 = v16;
  if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 138412290;
    v50 = actionsCopy;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PerformActions", "actions: %@", buf, 0xCu);
  }

  v18 = sub_10000328C();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_100003894(actionsCopy, v14, v18);
  }

  v19 = actionsCopy;

  _accountStore = [(ACRemoteDataclassOwnersManager *)self _accountStore];
  [accountCopy _setAccountStore:_accountStore];

  v47 = 0u;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  v21 = childrenCopy;
  v22 = [v21 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v45;
    do
    {
      v25 = 0;
      do
      {
        if (*v45 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v44 + 1) + 8 * v25);
        _accountStore2 = [(ACRemoteDataclassOwnersManager *)self _accountStore];
        [v26 _setAccountStore:_accountStore2];

        v25 = v25 + 1;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v23);
  }

  [(ACRemoteDataclassOwnersManager *)self _incrementBusyCounterForAccount:accountCopy];
  dataclassActionQueue = self->_dataclassActionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001E48;
  block[3] = &unk_100008258;
  v29 = v19;
  v37 = v19;
  v38 = accountCopy;
  selfCopy = self;
  v40 = v21;
  v42 = v14;
  v43 = v34;
  v41 = completionCopy;
  v30 = completionCopy;
  v31 = v21;
  v32 = accountCopy;
  v33 = v29;
  dispatch_async(dataclassActionQueue, block);
}

- (void)isPerformingDataclassActionsForAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  _accountStore = [(ACRemoteDataclassOwnersManager *)self _accountStore];
  [accountCopy _setAccountStore:_accountStore];

  v8 = self->_pendingActionBatches;
  objc_sync_enter(v8);
  pendingActionBatches = self->_pendingActionBatches;
  identifier = [accountCopy identifier];
  v11 = [(NSMutableDictionary *)pendingActionBatches objectForKey:identifier];

  objc_sync_exit(v8);
  completionCopy[2](completionCopy, [v11 unsignedIntegerValue] != 0, 0);
}

- (void)_incrementBusyCounterForAccount:(id)account
{
  accountCopy = account;
  v4 = self->_pendingActionBatches;
  objc_sync_enter(v4);
  pendingActionBatches = self->_pendingActionBatches;
  identifier = [accountCopy identifier];
  v7 = [(NSMutableDictionary *)pendingActionBatches objectForKey:identifier];

  objc_sync_exit(v4);
  if (v7)
  {
    v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 unsignedIntegerValue] + 1);
  }

  else
  {
    v8 = &off_100008338;
  }

  v9 = self->_pendingActionBatches;
  objc_sync_enter(v9);
  v10 = self->_pendingActionBatches;
  identifier2 = [accountCopy identifier];
  [(NSMutableDictionary *)v10 setObject:v8 forKey:identifier2];

  objc_sync_exit(v9);
}

- (void)_decrementBusyCounterForAccount:(id)account
{
  accountCopy = account;
  v4 = self->_pendingActionBatches;
  objc_sync_enter(v4);
  pendingActionBatches = self->_pendingActionBatches;
  identifier = [accountCopy identifier];
  v7 = [(NSMutableDictionary *)pendingActionBatches objectForKey:identifier];

  objc_sync_exit(v4);
  if (v7 && [v7 unsignedIntegerValue])
  {
    v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 unsignedIntegerValue] - 1);

    v7 = v8;
  }

  v9 = self->_pendingActionBatches;
  objc_sync_enter(v9);
  if (v7)
  {
    v10 = self->_pendingActionBatches;
    identifier2 = [accountCopy identifier];
    [(NSMutableDictionary *)v10 setObject:v7 forKey:identifier2];
  }

  objc_sync_exit(v9);
}

- (id)_ownerForDataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  _dataclassToOwnerMap = [(ACRemoteDataclassOwnersManager *)self _dataclassToOwnerMap];
  v6 = [_dataclassToOwnerMap objectForKey:dataclassCopy];

  if (v6)
  {
    v7 = +[NSNull null];

    if (v6 == v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6;
    }
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_10000207C;
    v15 = sub_10000208C;
    v16 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000029D8;
    v10[3] = &unk_100008280;
    v10[4] = &v11;
    [(ACRemoteDataclassOwnersManager *)self _cacheDataclassOwnersLimitedToDataclass:dataclassCopy withOwnerLoadBlock:v10];
    v8 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  return v8;
}

- (void)_cacheDataclassOwnersLimitedToDataclass:(id)dataclass withOwnerLoadBlock:(id)block
{
  dataclassCopy = dataclass;
  blockCopy = block;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = [(ACRemoteDataclassOwnersManager *)self _dataclassOwnerBundles];
  v42 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
  if (v42)
  {
    v36 = 0;
    v41 = *v48;
    *&v8 = 138412546;
    v35 = v8;
    v39 = dataclassCopy;
    v37 = blockCopy;
    while (1)
    {
      for (i = 0; i != v42; i = i + 1)
      {
        if (*v48 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v47 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        principalClass = [v10 principalClass];
        v13 = _ACLogSystem();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v55 = principalClass;
          _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Loading dataclasses for class %@...", buf, 0xCu);
        }

        dataclasses = [principalClass dataclasses];
        v15 = _ACLogSystem();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = v35;
          v55 = principalClass;
          v56 = 2112;
          v57 = dataclasses;
          _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Loaded dataclasses for class %@: %@", buf, 0x16u);
        }

        if (dataclassCopy)
        {
          if (([dataclasses containsObject:dataclassCopy] & 1) == 0)
          {
            goto LABEL_33;
          }

          v16 = _ACLogSystem();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            bundlePath = [v10 bundlePath];
            *buf = v35;
            v55 = dataclassCopy;
            v56 = 2112;
            v57 = bundlePath;
            _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Found owner of dataclass %@ at path %@", buf, 0x16u);
          }

          v36 = 1;
        }

        else
        {
          v17 = blockCopy;
          v18 = v11;
          _dataclassToOwnerMap = [(ACRemoteDataclassOwnersManager *)self _dataclassToOwnerMap];
          firstObject = [dataclasses firstObject];
          v21 = [_dataclassToOwnerMap objectForKey:firstObject];

          if (v21)
          {
            v11 = v18;
            blockCopy = v17;
            dataclassCopy = v39;
            goto LABEL_33;
          }

          v16 = _ACLogSystem();
          v11 = v18;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            sub_100003AE0(v52, v10, &v53, v16);
          }
        }

        v22 = _ACLogSystem();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v55 = principalClass;
          _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Initializing dataclass owner class %@...", buf, 0xCu);
        }

        v40 = v11;

        v23 = objc_alloc_init(principalClass);
        v24 = _ACLogSystem();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v55 = principalClass;
          _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Initialized dataclass owner class %@", buf, 0xCu);
        }

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v25 = dataclasses;
        v26 = [v25 countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v44;
          do
          {
            for (j = 0; j != v27; j = j + 1)
            {
              if (*v44 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v43 + 1) + 8 * j);
              _dataclassToOwnerMap2 = [(ACRemoteDataclassOwnersManager *)self _dataclassToOwnerMap];
              [_dataclassToOwnerMap2 setObject:v23 forKey:v30];
            }

            v27 = [v25 countByEnumeratingWithState:&v43 objects:v51 count:16];
          }

          while (v27);
        }

        blockCopy = v37;
        if (v37)
        {
          v37[2](v37, v23);
        }

        dataclassCopy = v39;
        v11 = v40;
LABEL_33:

        objc_autoreleasePoolPop(v11);
      }

      v42 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
      if (!v42)
      {
        goto LABEL_37;
      }
    }
  }

  v36 = 0;
LABEL_37:

  if (dataclassCopy && (v36 & 1) == 0)
  {
    _dataclassToOwnerMap3 = [(ACRemoteDataclassOwnersManager *)self _dataclassToOwnerMap];
    v34 = +[NSNull null];
    [_dataclassToOwnerMap3 setObject:v34 forKey:dataclassCopy];
  }
}

- (id)_dataclassOwnerBundles
{
  dataclassOwnerBundles = self->_dataclassOwnerBundles;
  if (!dataclassOwnerBundles)
  {
    v4 = _ACLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ACRemoteDataclassOwnersManager is loading all dataclass owners!", v8, 2u);
    }

    v5 = [ACDPluginLoader pluginBundlesAtSubpath:@"DataclassOwners"];
    v6 = self->_dataclassOwnerBundles;
    self->_dataclassOwnerBundles = v5;

    dataclassOwnerBundles = self->_dataclassOwnerBundles;
  }

  return dataclassOwnerBundles;
}

- (void)_setOwner:(id)owner forDataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  ownerCopy = owner;
  _dataclassToOwnerMap = [(ACRemoteDataclassOwnersManager *)self _dataclassToOwnerMap];
  [_dataclassToOwnerMap setObject:ownerCopy forKey:dataclassCopy];
}

- (id)_dataclassToOwnerMap
{
  dataclassToOwnerMap = self->_dataclassToOwnerMap;
  if (!dataclassToOwnerMap)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = self->_dataclassToOwnerMap;
    self->_dataclassToOwnerMap = v4;

    dataclassToOwnerMap = self->_dataclassToOwnerMap;
  }

  return dataclassToOwnerMap;
}

@end