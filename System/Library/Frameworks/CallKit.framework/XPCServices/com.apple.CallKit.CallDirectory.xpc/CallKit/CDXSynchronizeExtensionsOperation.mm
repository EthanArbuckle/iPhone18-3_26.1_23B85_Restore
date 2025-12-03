@interface CDXSynchronizeExtensionsOperation
- (CDXSynchronizeExtensionsOperation)initWithStore:(id)store firstUnlockStatus:(BOOL)status extensionsDataSource:(id)source identificationEntriesChangedNotifier:(id)notifier queue:(id)queue;
- (id)storedExtensionIdentifiersPassingTest:(id)test error:(id *)error;
- (void)performWithCompletionHandler:(id)handler;
@end

@implementation CDXSynchronizeExtensionsOperation

- (CDXSynchronizeExtensionsOperation)initWithStore:(id)store firstUnlockStatus:(BOOL)status extensionsDataSource:(id)source identificationEntriesChangedNotifier:(id)notifier queue:(id)queue
{
  storeCopy = store;
  sourceCopy = source;
  notifierCopy = notifier;
  queueCopy = queue;
  v22.receiver = self;
  v22.super_class = CDXSynchronizeExtensionsOperation;
  v17 = [(CDXSynchronizeExtensionsOperation *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_queue, queue);
    objc_storeStrong(&v18->_store, store);
    v19 = objc_alloc_init(_TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy);
    liveLookupStore = v18->_liveLookupStore;
    v18->_liveLookupStore = v19;

    objc_storeStrong(&v18->_extensionsDataSource, source);
    objc_storeStrong(&v18->_identificationEntriesChangedNotifier, notifier);
    v18->_afterFirstUnlock = status;
  }

  return v18;
}

- (void)performWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(CDXSynchronizeExtensionsOperation *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000060D8;
  v7[3] = &unk_100034B80;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (id)storedExtensionIdentifiersPassingTest:(id)test error:(id *)error
{
  testCopy = test;
  cachedCallDirectoryStoreExtensions = [(CDXSynchronizeExtensionsOperation *)self cachedCallDirectoryStoreExtensions];

  if (!cachedCallDirectoryStoreExtensions)
  {
    store = [(CDXSynchronizeExtensionsOperation *)self store];
    v9 = [store prioritizedExtensionsWithError:error];
    [(CDXSynchronizeExtensionsOperation *)self setCachedCallDirectoryStoreExtensions:v9];
  }

  cachedCallDirectoryStoreExtensions2 = [(CDXSynchronizeExtensionsOperation *)self cachedCallDirectoryStoreExtensions];

  if (cachedCallDirectoryStoreExtensions2)
  {
    v11 = +[NSMutableSet set];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    cachedCallDirectoryStoreExtensions3 = [(CDXSynchronizeExtensionsOperation *)self cachedCallDirectoryStoreExtensions];
    v13 = [cachedCallDirectoryStoreExtensions3 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(cachedCallDirectoryStoreExtensions3);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          if (testCopy[2](testCopy, v17))
          {
            identifier = [v17 identifier];
            [v11 addObject:identifier];
          }
        }

        v14 = [cachedCallDirectoryStoreExtensions3 countByEnumeratingWithState:&v21 objects:v25 count:16];
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