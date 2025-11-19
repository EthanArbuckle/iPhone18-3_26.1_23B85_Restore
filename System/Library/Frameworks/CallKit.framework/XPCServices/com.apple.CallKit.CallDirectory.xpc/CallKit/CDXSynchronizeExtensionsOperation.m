@interface CDXSynchronizeExtensionsOperation
- (CDXSynchronizeExtensionsOperation)initWithStore:(id)a3 firstUnlockStatus:(BOOL)a4 extensionsDataSource:(id)a5 identificationEntriesChangedNotifier:(id)a6 queue:(id)a7;
- (id)storedExtensionIdentifiersPassingTest:(id)a3 error:(id *)a4;
- (void)performWithCompletionHandler:(id)a3;
@end

@implementation CDXSynchronizeExtensionsOperation

- (CDXSynchronizeExtensionsOperation)initWithStore:(id)a3 firstUnlockStatus:(BOOL)a4 extensionsDataSource:(id)a5 identificationEntriesChangedNotifier:(id)a6 queue:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = CDXSynchronizeExtensionsOperation;
  v17 = [(CDXSynchronizeExtensionsOperation *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_queue, a7);
    objc_storeStrong(&v18->_store, a3);
    v19 = objc_alloc_init(_TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy);
    liveLookupStore = v18->_liveLookupStore;
    v18->_liveLookupStore = v19;

    objc_storeStrong(&v18->_extensionsDataSource, a5);
    objc_storeStrong(&v18->_identificationEntriesChangedNotifier, a6);
    v18->_afterFirstUnlock = a4;
  }

  return v18;
}

- (void)performWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CDXSynchronizeExtensionsOperation *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000060D8;
  v7[3] = &unk_100034B80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (id)storedExtensionIdentifiersPassingTest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CDXSynchronizeExtensionsOperation *)self cachedCallDirectoryStoreExtensions];

  if (!v7)
  {
    v8 = [(CDXSynchronizeExtensionsOperation *)self store];
    v9 = [v8 prioritizedExtensionsWithError:a4];
    [(CDXSynchronizeExtensionsOperation *)self setCachedCallDirectoryStoreExtensions:v9];
  }

  v10 = [(CDXSynchronizeExtensionsOperation *)self cachedCallDirectoryStoreExtensions];

  if (v10)
  {
    v11 = +[NSMutableSet set];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = [(CDXSynchronizeExtensionsOperation *)self cachedCallDirectoryStoreExtensions];
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          if (v6[2](v6, v17))
          {
            v18 = [v17 identifier];
            [v11 addObject:v18];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }

    v19 = [v11 copy];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end