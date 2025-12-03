@interface RCStoreChangeMerger
- (BOOL)_isBackgroundContextTransaction:(id)transaction;
- (BOOL)_isRelevantTransactionAuthor:(id)author;
- (RCStoreChangeMerger)initWithPersistentStore:(id)store transactionAuthorToIgnore:(id)ignore startingToken:(id)token viewContext:(id)context;
- (RCStoreChangeMergerDelegate)delegate;
- (id)_nextTransactionAfterToken:(id)token context:(id)context error:(id *)error;
- (void)_mergeChangeIntoRelevantContexts:(id)contexts;
- (void)handleChange:(id)change;
@end

@implementation RCStoreChangeMerger

- (RCStoreChangeMerger)initWithPersistentStore:(id)store transactionAuthorToIgnore:(id)ignore startingToken:(id)token viewContext:(id)context
{
  storeCopy = store;
  ignoreCopy = ignore;
  tokenCopy = token;
  contextCopy = context;
  v24.receiver = self;
  v24.super_class = RCStoreChangeMerger;
  v14 = [(RCStoreChangeMerger *)&v24 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_transactionAuthorToIgnore, ignore);
    objc_storeStrong(&v15->_currentHistoryToken, token);
    objc_storeStrong(&v15->_latestHistoryToken, token);
    v16 = objc_opt_new();
    transactionsBuffer = v15->_transactionsBuffer;
    v15->_transactionsBuffer = v16;

    objc_storeStrong(&v15->_viewContext, context);
    persistentStoreCoordinator = [storeCopy persistentStoreCoordinator];
    managedObjectModel = [persistentStoreCoordinator managedObjectModel];
    entitiesByName = [managedObjectModel entitiesByName];
    v21 = [entitiesByName objectForKeyedSubscript:RCCloudRecording_EntityName];
    cloudRecordingEntity = v15->_cloudRecordingEntity;
    v15->_cloudRecordingEntity = v21;
  }

  return v15;
}

- (BOOL)_isRelevantTransactionAuthor:(id)author
{
  author = [author author];
  LOBYTE(self) = [author isEqualToString:self->_transactionAuthorToIgnore];

  return self ^ 1;
}

- (BOOL)_isBackgroundContextTransaction:(id)transaction
{
  contextName = [transaction contextName];
  v4 = [contextName isEqualToString:kRCBackgroundContextName];

  return v4;
}

- (void)handleChange:(id)change
{
  changeCopy = change;
  if ([(NSPersistentHistoryToken *)self->_latestHistoryToken compareToken:changeCopy error:0]== 2)
  {
    v5 = [changeCopy copy];
    latestHistoryToken = self->_latestHistoryToken;
    self->_latestHistoryToken = v5;

    if (!self->_changeNotificationDate)
    {
      v7 = self->_viewContext;
      v24 = 0;
      v25 = &v24;
      v26 = 0x3032000000;
      v27 = sub_10006BD98;
      v28 = sub_10006BDC4;
      v29 = 0;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10006BDCC;
      v21[3] = &unk_10028B438;
      v21[4] = self;
      v8 = v7;
      v22 = v8;
      v23 = &v24;
      v9 = objc_retainBlock(v21);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10006C080;
      v18[3] = &unk_10028A538;
      v18[4] = self;
      v10 = v8;
      v19 = v10;
      v11 = v9;
      v20 = v11;
      v12 = objc_retainBlock(v18);
      v13 = v25[5];
      v25[5] = v12;

      (*(v25[5] + 16))(v25[5], v14, v15, v16, v17);
      _Block_object_dispose(&v24, 8);
    }
  }
}

- (void)_mergeChangeIntoRelevantContexts:(id)contexts
{
  contextsCopy = contexts;
  objectIDNotification = [contextsCopy objectIDNotification];
  userInfo = [objectIDNotification userInfo];

  if ([(RCStoreChangeMerger *)self _isRelevantTransactionAuthor:contextsCopy])
  {
    viewContext = self->_viewContext;
    v7 = [NSArray arrayWithObjects:&viewContext count:1];
    [NSManagedObjectContext mergeChangesFromRemoteContextSave:userInfo intoContexts:v7];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    delegate = [(RCStoreChangeMerger *)self delegate];
    backgroundContexts = [delegate backgroundContexts];

    v10 = [backgroundContexts countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(backgroundContexts);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 3221225472;
          v15[2] = sub_10006C31C;
          v15[3] = &unk_10028A650;
          v16 = userInfo;
          v17 = v14;
          [v14 performBlock:v15];
        }

        v11 = [backgroundContexts countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    goto LABEL_12;
  }

  if ([(RCStoreChangeMerger *)self _isBackgroundContextTransaction:contextsCopy])
  {
    viewContext = self->_viewContext;
    backgroundContexts = [NSArray arrayWithObjects:&viewContext count:1];
    [NSManagedObjectContext mergeChangesFromRemoteContextSave:userInfo intoContexts:backgroundContexts];
LABEL_12:
  }
}

- (id)_nextTransactionAfterToken:(id)token context:(id)context error:(id *)error
{
  tokenCopy = token;
  contextCopy = context;
  if (![(NSMutableArray *)self->_transactionsBuffer count])
  {
    v10 = [NSPersistentHistoryChangeRequest fetchHistoryAfterToken:tokenCopy];
    [v10 setFetchBatchSize:kDefaultFetchBatchSize];
    v11 = [contextCopy executeRequest:v10 error:error];
    v12 = v11;
    if (v11)
    {
      result = [v11 result];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = v12;
        v33 = v10;
        v34 = contextCopy;
        v35 = tokenCopy;
        selfCopy = self;
        v31 = result;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        obj = result;
        v14 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v39;
          do
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v39 != v16)
              {
                objc_enumerationMutation(obj);
              }

              v18 = *(*(&v38 + 1) + 8 * i);
              token = [v18 token];

              if (token)
              {
                v44 = 0u;
                v45 = 0u;
                v42 = 0u;
                v43 = 0u;
                changes = [v18 changes];
                v21 = [changes countByEnumeratingWithState:&v42 objects:buf count:16];
                if (v21)
                {
                  v22 = v21;
                  v23 = *v43;
                  while (2)
                  {
                    for (j = 0; j != v22; j = j + 1)
                    {
                      if (*v43 != v23)
                      {
                        objc_enumerationMutation(changes);
                      }

                      v25 = *(*(&v42 + 1) + 8 * j);
                      if ([v25 changeType] != 2)
                      {
                        changedObjectID = [v25 changedObjectID];

                        if (!changedObjectID)
                        {

                          goto LABEL_21;
                        }
                      }
                    }

                    v22 = [changes countByEnumeratingWithState:&v42 objects:buf count:16];
                    if (v22)
                    {
                      continue;
                    }

                    break;
                  }
                }

                transactionsBuffer = selfCopy->_transactionsBuffer;
                v28 = [v18 copy];
                [(NSMutableArray *)transactionsBuffer addObject:v28];
              }

              else
              {
LABEL_21:

                v28 = OSLogForCategory();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
                {
                  *buf = 136315394;
                  v48 = "[RCStoreChangeMerger _nextTransactionAfterToken:context:error:]";
                  v49 = 2112;
                  v50 = v18;
                  _os_log_fault_impl(&_mh_execute_header, v28, OS_LOG_TYPE_FAULT, "%s -- ERROR:  transaction is malformed:  %@", buf, 0x16u);
                }
              }
            }

            v15 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
          }

          while (v15);
        }

        contextCopy = v34;
        tokenCopy = v35;
        self = selfCopy;
        v12 = v32;
        v10 = v33;
        result = v31;
      }
    }
  }

  firstObject = [(NSMutableArray *)self->_transactionsBuffer firstObject];
  if (firstObject)
  {
    [(NSMutableArray *)self->_transactionsBuffer removeObjectAtIndex:0];
  }

  return firstObject;
}

- (RCStoreChangeMergerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end