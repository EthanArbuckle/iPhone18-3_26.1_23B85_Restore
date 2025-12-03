@interface CDXRetrieveExtensionsOperation
- (BOOL)_nsExtension:(id)extension isOnlyExtensionInContainingAppAmongNSExtensions:(id)extensions;
- (CDXRetrieveExtensionsOperation)initWithStore:(id)store;
- (CDXRetrieveExtensionsOperation)initWithStore:(id)store extensionsDataSource:(id)source queue:(id)queue;
- (id)_extensionsFromNSExtensions:(id)extensions usingProritizedStoreExtensions:(id)storeExtensions;
- (void)performWithCompletionHandler:(id)handler;
@end

@implementation CDXRetrieveExtensionsOperation

- (CDXRetrieveExtensionsOperation)initWithStore:(id)store extensionsDataSource:(id)source queue:(id)queue
{
  storeCopy = store;
  sourceCopy = source;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = CDXRetrieveExtensionsOperation;
  v12 = [(CDXRetrieveExtensionsOperation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, queue);
    objc_storeStrong(&v13->_extensionsDataSource, source);
    objc_storeStrong(&v13->_store, store);
  }

  return v13;
}

- (CDXRetrieveExtensionsOperation)initWithStore:(id)store
{
  storeCopy = store;
  v5 = dispatch_queue_create("com.apple.callkit.calldirectory.retrieveextensionsoperation", 0);
  v6 = objc_alloc_init(CXCallDirectoryNSExtensionManager);
  v7 = [(CDXRetrieveExtensionsOperation *)self initWithStore:storeCopy extensionsDataSource:v6 queue:v5];

  return v7;
}

- (void)performWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(CDXRetrieveExtensionsOperation *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011F58;
  v7[3] = &unk_100034B80;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (id)_extensionsFromNSExtensions:(id)extensions usingProritizedStoreExtensions:(id)storeExtensions
{
  extensionsCopy = extensions;
  storeExtensionsCopy = storeExtensions;
  v8 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [extensionsCopy count]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v9 = extensionsCopy;
  v10 = [v9 countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v36;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        identifier = [v14 identifier];
        [v8 setObject:v14 forKeyedSubscript:identifier];
      }

      v11 = [v9 countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v11);
  }

  v16 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [storeExtensionsCopy count]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = storeExtensionsCopy;
  v17 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v17)
  {
    v19 = v17;
    v20 = *v32;
    *&v18 = 138412290;
    v29 = v18;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v31 + 1) + 8 * j);
        identifier2 = [v22 identifier];
        v24 = [v8 objectForKeyedSubscript:identifier2];

        if (v24)
        {
          v25 = [(CDXRetrieveExtensionsOperation *)self _extensionWithNSExtension:v24 storeExtension:v22 isOnlyExtensionInContainingApp:[(CDXRetrieveExtensionsOperation *)self _nsExtension:v24 isOnlyExtensionInContainingAppAmongNSExtensions:v9]];
          [v16 addObject:v25];
        }

        else
        {
          v25 = sub_100005CC4();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            identifier3 = [v22 identifier];
            *buf = v29;
            v40 = identifier3;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "No NSExtension found with prioritized store extension identifier %@", buf, 0xCu);
          }
        }
      }

      v19 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
    }

    while (v19);
  }

  v27 = [v16 copy];

  return v27;
}

- (BOOL)_nsExtension:(id)extension isOnlyExtensionInContainingAppAmongNSExtensions:(id)extensions
{
  extensionCopy = extension;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  extensionsCopy = extensions;
  v7 = [extensionsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = 0;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(extensionsCopy);
        }

        containingAppURL = [*(*(&v15 + 1) + 8 * i) containingAppURL];
        containingAppURL2 = [extensionCopy containingAppURL];
        v13 = [containingAppURL isEqual:containingAppURL2];

        v8 += v13;
        if (v8 > 1)
        {
          LOBYTE(v7) = 0;
          goto LABEL_11;
        }
      }

      v7 = [extensionsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    LOBYTE(v7) = v8 == 1;
  }

LABEL_11:

  return v7;
}

@end