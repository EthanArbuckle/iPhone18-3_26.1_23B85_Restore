@interface ASDStoreKitExternalNotificationSheet
+ (id)sharedInstance;
- (ASDStoreKitExternalNotificationSheet)init;
- (void)presentSheetIfNeededForProcessHandle:(id)handle completion:(id)completion;
@end

@implementation ASDStoreKitExternalNotificationSheet

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__ASDStoreKitExternalNotificationSheet_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED90D500 != -1)
  {
    dispatch_once(&qword_1ED90D500, block);
  }

  v2 = _MergedGlobals_33;

  return v2;
}

uint64_t __54__ASDStoreKitExternalNotificationSheet_sharedInstance__block_invoke(uint64_t a1)
{
  _MergedGlobals_33 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (ASDStoreKitExternalNotificationSheet)init
{
  v6.receiver = self;
  v6.super_class = ASDStoreKitExternalNotificationSheet;
  v2 = [(ASDStoreKitExternalNotificationSheet *)&v6 init];
  if (v2)
  {
    v3 = +[ASDServiceBroker defaultBroker];
    serviceBroker = v2->_serviceBroker;
    v2->_serviceBroker = v3;
  }

  return v2;
}

- (void)presentSheetIfNeededForProcessHandle:(id)handle completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  serviceBroker = self->_serviceBroker;
  v14 = 0;
  completionCopy = completion;
  v9 = [(ASDServiceBroker *)serviceBroker getStoreKitExternalNotificationServiceWithError:&v14];
  v10 = v14;
  if (v9)
  {
    v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_10];
    [v11 presentSheetIfNeededForProcessHandle:handleCopy completion:completionCopy];

    completionCopy = v11;
  }

  else
  {
    v12 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = v10;
      _os_log_error_impl(&dword_1B8220000, v12, OS_LOG_TYPE_ERROR, "[ASDStoreKitExternalNotification] Service unavailable: %{public}@", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __88__ASDStoreKitExternalNotificationSheet_presentSheetIfNeededForProcessHandle_completion___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_error_impl(&dword_1B8220000, v3, OS_LOG_TYPE_ERROR, "[ASDStoreKitExternalNotification] Remote object proxy error: %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end