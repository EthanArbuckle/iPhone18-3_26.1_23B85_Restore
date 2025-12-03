@interface CLKCompanionWatchFaceLibraryService
- (CLKCompanionWatchFaceLibraryService)init;
- (void)_popTransaction;
- (void)_pushTransaction;
- (void)openResourceOperation:(id)operation didFailWithError:(id)error;
- (void)openResourceOperationDidComplete:(id)complete;
- (void)openWatchFaceURLWithSecurityScopedURL:(id)l sourceApplicationBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)validateFaceType:(id)type faceBundleId:(id)id completionHandler:(id)handler;
@end

@implementation CLKCompanionWatchFaceLibraryService

- (CLKCompanionWatchFaceLibraryService)init
{
  v8.receiver = self;
  v8.super_class = CLKCompanionWatchFaceLibraryService;
  v2 = [(CLKCompanionWatchFaceLibraryService *)&v8 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    transactions = v2->_transactions;
    v2->_transactions = v3;

    v5 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CLKCompanionWatchFaceLibraryService initialized.", v7, 2u);
    }
  }

  return v2;
}

- (void)openWatchFaceURLWithSecurityScopedURL:(id)l sourceApplicationBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  lCopy = l;
  v11 = CLKLoggingObjectForDomain();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CLKCompanionWatchFaceLibraryService: Received XPC call from openWatchFace.", buf, 2u);
  }

  v12 = [lCopy url];

  if ([v12 startAccessingSecurityScopedResource])
  {
    v13 = +[NSXPCConnection currentConnection];
    v14 = v13;
    if (v13)
    {
      [v13 auditToken];
    }

    else
    {
      *buf = 0u;
      v31 = 0u;
    }

    fileSystemRepresentation = [v12 fileSystemRepresentation];
    v17 = sandbox_check_by_audit_token();

    if (handlerCopy && v17)
    {
      v18 = [CLKWatchFaceLibrary errorWithCode:3, fileSystemRepresentation];
      handlerCopy[2](handlerCopy, v18);
    }

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10000125C;
    v27[3] = &unk_100004160;
    v19 = v12;
    v28 = v19;
    v29 = handlerCopy;
    [(CLKCompanionWatchFaceLibraryService *)self setCompletionHandler:v27];
    v20 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "CLKCompanionWatchFaceLibraryService: will open url: %@", buf, 0xCu);
    }

    [(CLKCompanionWatchFaceLibraryService *)self _pushTransaction];
    v21 = objc_opt_new();
    v22 = v21;
    if (identifierCopy)
    {
      [v21 setObject:identifierCopy forKey:UIApplicationOpenURLOptionsSourceApplicationKey];
    }

    v23 = +[LSApplicationWorkspace defaultWorkspace];
    v24 = [v22 copy];
    v25 = [v23 operationToOpenResource:v19 usingApplication:@"com.apple.Bridge" uniqueDocumentIdentifier:0 userInfo:v24 delegate:self];

    [v25 start];
    v15 = v28;
  }

  else
  {
    v15 = [[NSError alloc] initWithDomain:@"com.apple.greenfield.ssurl.errordomain" code:0 userInfo:0];
    v16 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "CLKCompanionWatchFaceLibraryService: encountered error accessing security-scoped resource: %@", buf, 0xCu);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v15);
    }
  }
}

- (void)validateFaceType:(id)type faceBundleId:(id)id completionHandler:(id)handler
{
  handlerCopy = handler;
  if (([NTKGreenfieldUtilities validateFaceType:type faceBundleId:id]& 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [CLKWatchFaceLibrary errorWithCode:4];
  }

  handlerCopy[2](handlerCopy, v7);
}

- (void)openResourceOperation:(id)operation didFailWithError:(id)error
{
  errorCopy = error;
  v6 = CLKLoggingObjectForDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = errorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CLKCompanionWatchFaceLibraryService: didFailWithError: %@", &v9, 0xCu);
  }

  completionHandler = [(CLKCompanionWatchFaceLibraryService *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(CLKCompanionWatchFaceLibraryService *)self completionHandler];
    (completionHandler2)[2](completionHandler2, errorCopy);

    [(CLKCompanionWatchFaceLibraryService *)self setCompletionHandler:0];
  }

  [(CLKCompanionWatchFaceLibraryService *)self _popTransaction];
}

- (void)openResourceOperationDidComplete:(id)complete
{
  v4 = CLKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CLKCompanionWatchFaceLibraryService: openResourceOperationDidComplete", v7, 2u);
  }

  completionHandler = [(CLKCompanionWatchFaceLibraryService *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(CLKCompanionWatchFaceLibraryService *)self completionHandler];
    completionHandler2[2](completionHandler2, 0);

    [(CLKCompanionWatchFaceLibraryService *)self setCompletionHandler:0];
  }

  [(CLKCompanionWatchFaceLibraryService *)self _popTransaction];
}

- (void)_pushTransaction
{
  v3 = [NSString stringWithFormat:@"%@.%lu", @"com.apple.ClockKit.CLKCompanionWatchFaceLibraryService", [(NSMutableArray *)self->_transactions count]];
  [v3 cStringUsingEncoding:4];
  v4 = os_transaction_create();
  [(NSMutableArray *)self->_transactions addObject:v4];
  v5 = CLKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CLKCompanionWatchFaceLibraryService: push token: %@", buf, 0xCu);
  }
}

- (void)_popTransaction
{
  if ([(NSMutableArray *)self->_transactions count])
  {
    [(NSMutableArray *)self->_transactions removeObjectAtIndex:0];
  }

  v3 = CLKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSMutableArray *)self->_transactions count];
    v5 = 134217984;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CLKCompanionWatchFaceLibraryService: poped token. Remaining Count: %lu", &v5, 0xCu);
  }
}

@end