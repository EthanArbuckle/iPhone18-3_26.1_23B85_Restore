@interface CDXSetExtensionEnabledOperation
- (BOOL)_loadExtensionDataWithError:(id *)error;
- (CDXSetExtensionEnabledOperation)initWithExtensionIdentifier:(id)identifier enabled:(BOOL)enabled loadExtensionDataOperation:(id)operation queue:(id)queue store:(id)store identificationEntriesChangedNotifier:(id)notifier;
- (void)performWithCompletionHandler:(id)handler;
@end

@implementation CDXSetExtensionEnabledOperation

- (CDXSetExtensionEnabledOperation)initWithExtensionIdentifier:(id)identifier enabled:(BOOL)enabled loadExtensionDataOperation:(id)operation queue:(id)queue store:(id)store identificationEntriesChangedNotifier:(id)notifier
{
  identifierCopy = identifier;
  operationCopy = operation;
  queueCopy = queue;
  storeCopy = store;
  notifierCopy = notifier;
  v26.receiver = self;
  v26.super_class = CDXSetExtensionEnabledOperation;
  v18 = [(CDXSetExtensionEnabledOperation *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_queue, queue);
    v20 = [identifierCopy copy];
    extensionIdentifier = v19->_extensionIdentifier;
    v19->_extensionIdentifier = v20;

    v19->_enabled = enabled;
    objc_storeStrong(&v19->_loadExtensionDataOperation, operation);
    objc_storeStrong(&v19->_store, store);
    objc_storeStrong(&v19->_identificationEntriesChangedNotifier, notifier);
    v22 = objc_alloc_init(CDXAWDReporter);
    awdReporter = v19->_awdReporter;
    v19->_awdReporter = v22;
  }

  return v19;
}

- (void)performWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(CDXSetExtensionEnabledOperation *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100008E48;
  v7[3] = &unk_100034B80;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (BOOL)_loadExtensionDataWithError:(id *)error
{
  queue = [(CDXSetExtensionEnabledOperation *)self queue];
  dispatch_assert_queue_V2(queue);

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  loadExtensionDataOperation = [(CDXSetExtensionEnabledOperation *)self loadExtensionDataOperation];

  if (loadExtensionDataOperation)
  {
    loadExtensionDataOperation2 = [(CDXSetExtensionEnabledOperation *)self loadExtensionDataOperation];
    [loadExtensionDataOperation2 setAllowLoadingDisabledExtensions:1];

    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_10000962C;
    v22 = sub_10000963C;
    v23 = 0;
    v8 = dispatch_semaphore_create(0);
    loadExtensionDataOperation3 = [(CDXSetExtensionEnabledOperation *)self loadExtensionDataOperation];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100009644;
    v14[3] = &unk_100034D78;
    v16 = &v24;
    v17 = &v18;
    v10 = v8;
    v15 = v10;
    [loadExtensionDataOperation3 performWithCompletionHandler:v14];

    dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    if (error)
    {
      *error = v19[5];
    }

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v11 = sub_100005CC4();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100021B1C(v11);
    }

    if (error)
    {
      *error = [NSError cx_callDirectoryManagerErrorWithCode:0];
    }
  }

  v12 = *(v25 + 24);
  _Block_object_dispose(&v24, 8);
  return v12;
}

@end