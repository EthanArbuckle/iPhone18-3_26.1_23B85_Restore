@interface GCNotificationManager
+ (id)sharedInstance;
- (GCNotificationManager)init;
- (void)requestNotification:(id)a3 withReply:(id)a4;
- (void)requestNotificationImpl:(id)a3 withReply:(id)a4;
@end

@implementation GCNotificationManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[GCNotificationManager sharedInstance];
  }

  v3 = sharedInstance_sharedManager_0;

  return v3;
}

void __39__GCNotificationManager_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedManager_0;
  sharedInstance_sharedManager_0 = v0;
}

- (GCNotificationManager)init
{
  v7.receiver = self;
  v7.super_class = GCNotificationManager;
  v2 = [(GCNotificationManager *)&v7 init];
  if (v2)
  {
    IsGameControllerDaemon = currentProcessIsGameControllerDaemon();
    if (IsGameControllerDaemon)
    {
      v4 = [objc_alloc(MEMORY[0x1E6983308]) initWithBundleIdentifier:@"com.apple.GameControllerNotifications"];
    }

    else
    {
      v4 = [MEMORY[0x1E6983308] currentNotificationCenter];
    }

    userNotificationCenter = v2->_userNotificationCenter;
    v2->_userNotificationCenter = v4;

    v2->_isPermissionGranted = IsGameControllerDaemon;
  }

  return v2;
}

- (void)requestNotificationImpl:(id)a3 withReply:(id)a4
{
  v29[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (self->_isPermissionGranted)
  {
    v7 = MEMORY[0x1E6983220];
    v8 = a4;
    v9 = objc_alloc_init(v7);
    v10 = [v6 title];
    [v9 setTitle:v10];

    v11 = [v6 body];
    [v9 setBody:v11];

    [v9 setShouldIgnoreDoNotDisturb:1];
    v12 = [v6 threadID];
    [v9 setThreadIdentifier:v12];

    v13 = MEMORY[0x1E6983278];
    v14 = [v6 categoryID];
    v15 = [v13 categoryWithIdentifier:v14 actions:MEMORY[0x1E695E0F0] intentIdentifiers:MEMORY[0x1E695E0F0] options:0];

    v16 = [(UNUserNotificationCenter *)self->_userNotificationCenter notificationCategories];
    v17 = [v16 setByAddingObject:v15];
    [(UNUserNotificationCenter *)self->_userNotificationCenter setNotificationCategories:v17];

    v18 = [v6 categoryID];
    [v9 setCategoryIdentifier:v18];

    v19 = MEMORY[0x1E6983298];
    v20 = [v6 categoryID];
    v21 = [v19 requestWithIdentifier:v20 content:v9 trigger:0];

    [(UNUserNotificationCenter *)self->_userNotificationCenter addNotificationRequest:v21 withCompletionHandler:v8];
  }

  else
  {
    v22 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v29[0] = @"Permission not granted";
    v23 = MEMORY[0x1E695DF20];
    v24 = a4;
    v25 = [v23 dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v26 = [v22 errorWithDomain:@"GCNotificationManager" code:0 userInfo:v25];
    (*(a4 + 2))(v24, v26);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)requestNotification:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_isPermissionGranted)
  {
    [(GCNotificationManager *)self requestNotificationImpl:v6 withReply:v7];
  }

  else
  {
    objc_initWeak(&location, self);
    userNotificationCenter = self->_userNotificationCenter;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__GCNotificationManager_requestNotification_withReply___block_invoke;
    v9[3] = &unk_1E841A8F8;
    v11 = v7;
    objc_copyWeak(&v12, &location);
    v10 = v6;
    [(UNUserNotificationCenter *)userNotificationCenter requestAuthorizationWithOptions:7 completionHandler:v9];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __55__GCNotificationManager_requestNotification_withReply___block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 40) + 16);

    v5();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      v9 = objc_loadWeakRetained((a1 + 48));
      v9[16] = a2;
      [v9 requestNotificationImpl:*(a1 + 32) withReply:*(a1 + 40)];
    }

    else
    {
      v8 = *(*(a1 + 40) + 16);

      v8();
    }
  }
}

@end