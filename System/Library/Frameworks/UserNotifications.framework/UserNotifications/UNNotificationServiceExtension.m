@interface UNNotificationServiceExtension
- (UNNotificationServiceExtension)init;
- (void)beginRequestWithExtensionContext:(id)a3;
- (void)didReceiveNotificationRequest:(UNNotificationRequest *)request withContentHandler:(void *)contentHandler;
- (void)serviceExtensionTimeWillExpire;
@end

@implementation UNNotificationServiceExtension

- (UNNotificationServiceExtension)init
{
  v20.receiver = self;
  v20.super_class = UNNotificationServiceExtension;
  v2 = [(UNNotificationServiceExtension *)&v20 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    InstanceMethod = class_getInstanceMethod(v4, sel_beginRequestWithExtensionContext_);
    v6 = class_getInstanceMethod(v3, sel_beginRequestWithExtensionContext_);
    v7 = UNLogServiceExtension;
    if (InstanceMethod == v6)
    {
      if (os_log_type_enabled(UNLogServiceExtension, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B85E3000, v7, OS_LOG_TYPE_DEFAULT, "Service extension was initialized", buf, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(UNLogServiceExtension, OS_LOG_TYPE_ERROR))
      {
        [(UNNotificationServiceExtension *)v7 init:v8];
      }

      v15 = MEMORY[0x1E695DF30];
      v16 = *MEMORY[0x1E695D920];
      v17 = NSStringFromClass(v3);
      [v15 raise:v16 format:{@"You have overridden beginRequestWithExtensionContext: on your subclass of UNNotificationServiceExtension (%@) - this is not allowed", v17}];
    }
  }

  return v2;
}

- (void)didReceiveNotificationRequest:(UNNotificationRequest *)request withContentHandler:(void *)contentHandler
{
  v5 = request;
  v6 = contentHandler;
  v7 = UNLogServiceExtension;
  if (os_log_type_enabled(UNLogServiceExtension, OS_LOG_TYPE_ERROR))
  {
    [(UNNotificationServiceExtension *)v7 didReceiveNotificationRequest:v8 withContentHandler:v9, v10, v11, v12, v13, v14];
  }

  v15 = [(UNNotificationRequest *)v5 content];
  v6[2](v6, v15);
}

- (void)serviceExtensionTimeWillExpire
{
  v2 = UNLogServiceExtension;
  if (os_log_type_enabled(UNLogServiceExtension, OS_LOG_TYPE_ERROR))
  {
    [(UNNotificationServiceExtension *)v2 serviceExtensionTimeWillExpire:v3];
  }
}

- (void)beginRequestWithExtensionContext:(id)a3
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = UNSafeCast(v6, v5);
  v8 = v7;
  if (v7)
  {
    [v7 setExtensionInstance:self];
  }

  else
  {
    [(UNNotificationServiceExtension *)a2 beginRequestWithExtensionContext:v5];
  }
}

- (void)beginRequestWithExtensionContext:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"UNNotificationServiceExtension.m" lineNumber:71 description:{@"remoteContext is not an instance of _UNNotificationServiceExtensionRemoteContext: remoteContext='%@'", 0}];

  v7 = UNLogServiceExtension;
  if (os_log_type_enabled(UNLogServiceExtension, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1B85E3000, v7, OS_LOG_TYPE_ERROR, "Remote context is not an instance of _UNNotificationServiceExtensionRemoteContext", buf, 2u);
  }

  v8 = [MEMORY[0x1E696ABC0] un_errorWithUNPrivateErrorCode:1902 userInfo:0];
  [a3 cancelRequestWithError:v8];
}

@end