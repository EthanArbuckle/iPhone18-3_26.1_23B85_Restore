@interface CDXSetExtensionEnabledOperation
- (BOOL)_loadExtensionDataWithError:(id *)a3;
- (CDXSetExtensionEnabledOperation)initWithExtensionIdentifier:(id)a3 enabled:(BOOL)a4 loadExtensionDataOperation:(id)a5 queue:(id)a6 store:(id)a7 identificationEntriesChangedNotifier:(id)a8;
- (void)performWithCompletionHandler:(id)a3;
@end

@implementation CDXSetExtensionEnabledOperation

- (CDXSetExtensionEnabledOperation)initWithExtensionIdentifier:(id)a3 enabled:(BOOL)a4 loadExtensionDataOperation:(id)a5 queue:(id)a6 store:(id)a7 identificationEntriesChangedNotifier:(id)a8
{
  v14 = a3;
  v25 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v26.receiver = self;
  v26.super_class = CDXSetExtensionEnabledOperation;
  v18 = [(CDXSetExtensionEnabledOperation *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_queue, a6);
    v20 = [v14 copy];
    extensionIdentifier = v19->_extensionIdentifier;
    v19->_extensionIdentifier = v20;

    v19->_enabled = a4;
    objc_storeStrong(&v19->_loadExtensionDataOperation, a5);
    objc_storeStrong(&v19->_store, a7);
    objc_storeStrong(&v19->_identificationEntriesChangedNotifier, a8);
    v22 = objc_alloc_init(CDXAWDReporter);
    awdReporter = v19->_awdReporter;
    v19->_awdReporter = v22;
  }

  return v19;
}

- (void)performWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CDXSetExtensionEnabledOperation *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100008E48;
  v7[3] = &unk_100034B80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (BOOL)_loadExtensionDataWithError:(id *)a3
{
  v5 = [(CDXSetExtensionEnabledOperation *)self queue];
  dispatch_assert_queue_V2(v5);

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v6 = [(CDXSetExtensionEnabledOperation *)self loadExtensionDataOperation];

  if (v6)
  {
    v7 = [(CDXSetExtensionEnabledOperation *)self loadExtensionDataOperation];
    [v7 setAllowLoadingDisabledExtensions:1];

    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_10000962C;
    v22 = sub_10000963C;
    v23 = 0;
    v8 = dispatch_semaphore_create(0);
    v9 = [(CDXSetExtensionEnabledOperation *)self loadExtensionDataOperation];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100009644;
    v14[3] = &unk_100034D78;
    v16 = &v24;
    v17 = &v18;
    v10 = v8;
    v15 = v10;
    [v9 performWithCompletionHandler:v14];

    dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    if (a3)
    {
      *a3 = v19[5];
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

    if (a3)
    {
      *a3 = [NSError cx_callDirectoryManagerErrorWithCode:0];
    }
  }

  v12 = *(v25 + 24);
  _Block_object_dispose(&v24, 8);
  return v12;
}

@end