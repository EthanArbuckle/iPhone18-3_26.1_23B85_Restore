@interface AFSiriTaskContextProvider
- (AFSiriTaskContextProvider)initWithTaskmaster:(id)taskmaster;
- (void)getAppContextWithDeliveryHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation AFSiriTaskContextProvider

- (void)getAppContextWithDeliveryHandler:(id)handler completionHandler:(id)completionHandler
{
  v25 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v20 = "[AFSiriTaskContextProvider getAppContextWithDeliveryHandler:completionHandler:]";
    v21 = 2112;
    selfCopy = self;
    v23 = 2080;
    v24 = "[AFSiriTaskContextProvider getAppContextWithDeliveryHandler:completionHandler:]";
    _os_log_impl(&dword_1912FE000, v9, OS_LOG_TYPE_INFO, "%s %@ %s", buf, 0x20u);
  }

  v10 = objc_alloc_init(AFContextRequest);
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    taskmaster = self->_taskmaster;
    *buf = 136315650;
    v20 = "[AFSiriTaskContextProvider getAppContextWithDeliveryHandler:completionHandler:]";
    v21 = 2112;
    selfCopy = taskmaster;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s asking taskmaster=%@ to handle contextRequest=%@", buf, 0x20u);
  }

  v13 = self->_taskmaster;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __80__AFSiriTaskContextProvider_getAppContextWithDeliveryHandler_completionHandler___block_invoke;
  v16[3] = &unk_1E73437B8;
  v17 = completionHandlerCopy;
  v18 = a2;
  v16[4] = self;
  v14 = completionHandlerCopy;
  [(AFSiriTaskmaster *)v13 handleSiriRequest:v10 deliveryHandler:handlerCopy completionHandler:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __80__AFSiriTaskContextProvider_getAppContextWithDeliveryHandler_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a1[6] object:a1[4] file:@"AFSiriTaskContextProvider.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"!response || [response isKindOfClass:[AFContextResponse class]]"}];

    if (v6)
    {
      goto LABEL_4;
    }
  }

  else if (v6)
  {
LABEL_4:
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1[4] + 8);
      *buf = 136315650;
      v15 = "[AFSiriTaskContextProvider getAppContextWithDeliveryHandler:completionHandler:]_block_invoke";
      v16 = 2112;
      v17 = v9;
      v18 = 2114;
      v19 = v6;
      _os_log_error_impl(&dword_1912FE000, v7, OS_LOG_TYPE_ERROR, "%s Unable to obtain context using %@: %{public}@", buf, 0x20u);
    }

    v8 = 0;
    goto LABEL_10;
  }

  v8 = [v5 _context];
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v12 = *(a1[4] + 8);
    *buf = 136315394;
    v15 = "[AFSiriTaskContextProvider getAppContextWithDeliveryHandler:completionHandler:]_block_invoke";
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s %@ got context", buf, 0x16u);
  }

LABEL_10:
  (*(a1[5] + 16))();

  v13 = *MEMORY[0x1E69E9840];
}

- (AFSiriTaskContextProvider)initWithTaskmaster:(id)taskmaster
{
  taskmasterCopy = taskmaster;
  v9.receiver = self;
  v9.super_class = AFSiriTaskContextProvider;
  v6 = [(AFSiriTaskContextProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_taskmaster, taskmaster);
  }

  return v7;
}

@end