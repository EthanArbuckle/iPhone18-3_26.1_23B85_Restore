@interface RCRemoteChangeMerger
- (RCRemoteChangeMerger)initWithStores:(id)stores viewContext:(id)context transactionAuthorToIgnore:(id)ignore;
- (void)_handleRemoteChangeNotification:(id)notification;
- (void)addContextToMergeChangesInto:(id)into;
@end

@implementation RCRemoteChangeMerger

- (RCRemoteChangeMerger)initWithStores:(id)stores viewContext:(id)context transactionAuthorToIgnore:(id)ignore
{
  storesCopy = stores;
  contextCopy = context;
  ignoreCopy = ignore;
  v35.receiver = self;
  v35.super_class = RCRemoteChangeMerger;
  v11 = [(RCRemoteChangeMerger *)&v35 init];
  if (v11)
  {
    v12 = objc_opt_new();
    storeMergers = v11->storeMergers;
    v11->storeMergers = v12;

    objc_storeStrong(&v11->_viewContext, context);
    v14 = +[NSHashTable weakObjectsHashTable];
    backgroundContexts = v11->_backgroundContexts;
    v11->_backgroundContexts = v14;

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = storesCopy;
    obj = storesCopy;
    v16 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v32;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v31 + 1) + 8 * i);
          persistentStoreCoordinator = [v20 persistentStoreCoordinator];
          v36 = v20;
          v22 = [NSArray arrayWithObjects:&v36 count:1];
          v23 = [persistentStoreCoordinator currentPersistentHistoryTokenFromStores:v22];

          v24 = [[RCStoreChangeMerger alloc] initWithPersistentStore:v20 transactionAuthorToIgnore:ignoreCopy startingToken:v23 viewContext:contextCopy];
          [(RCStoreChangeMerger *)v24 setDelegate:v11];
          v25 = v11->storeMergers;
          identifier = [v20 identifier];
          [(NSMutableDictionary *)v25 setObject:v24 forKeyedSubscript:identifier];
        }

        v17 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v17);
    }

    v27 = +[NSNotificationCenter defaultCenter];
    [v27 addObserver:v11 selector:"_handleRemoteChangeNotification:" name:NSPersistentStoreRemoteChangeNotification object:0];

    storesCopy = v29;
  }

  return v11;
}

- (void)addContextToMergeChangesInto:(id)into
{
  intoCopy = into;
  viewContext = self->_viewContext;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006CB04;
  v7[3] = &unk_10028A650;
  v7[4] = self;
  v8 = intoCopy;
  v6 = intoCopy;
  [(NSManagedObjectContext *)viewContext performBlockAndWait:v7];
}

- (void)_handleRemoteChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  storeMergers = self->storeMergers;
  v6 = [userInfo objectForKeyedSubscript:NSStoreUUIDKey];
  v7 = [(NSMutableDictionary *)storeMergers objectForKeyedSubscript:v6];

  v8 = [userInfo objectForKeyedSubscript:NSPersistentHistoryTokenKey];
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10006CC2C;
    v11[3] = &unk_10028A650;
    v12 = v7;
    v13 = v9;
    dispatch_async(&_dispatch_main_q, v11);
  }
}

@end