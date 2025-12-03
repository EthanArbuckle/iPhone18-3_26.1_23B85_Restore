@interface GCNotificationManager
+ (id)sharedInstance;
- (GCNotificationManager)init;
- (void)requestNotification:(id)notification withReply:(id)reply;
- (void)requestNotificationImpl:(id)impl withReply:(id)reply;
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
      currentNotificationCenter = [objc_alloc(MEMORY[0x1E6983308]) initWithBundleIdentifier:@"com.apple.GameControllerNotifications"];
    }

    else
    {
      currentNotificationCenter = [MEMORY[0x1E6983308] currentNotificationCenter];
    }

    userNotificationCenter = v2->_userNotificationCenter;
    v2->_userNotificationCenter = currentNotificationCenter;

    v2->_isPermissionGranted = IsGameControllerDaemon;
  }

  return v2;
}

- (void)requestNotificationImpl:(id)impl withReply:(id)reply
{
  v29[1] = *MEMORY[0x1E69E9840];
  implCopy = impl;
  if (self->_isPermissionGranted)
  {
    v7 = MEMORY[0x1E6983220];
    replyCopy = reply;
    v9 = objc_alloc_init(v7);
    title = [implCopy title];
    [v9 setTitle:title];

    body = [implCopy body];
    [v9 setBody:body];

    [v9 setShouldIgnoreDoNotDisturb:1];
    threadID = [implCopy threadID];
    [v9 setThreadIdentifier:threadID];

    v13 = MEMORY[0x1E6983278];
    categoryID = [implCopy categoryID];
    v15 = [v13 categoryWithIdentifier:categoryID actions:MEMORY[0x1E695E0F0] intentIdentifiers:MEMORY[0x1E695E0F0] options:0];

    notificationCategories = [(UNUserNotificationCenter *)self->_userNotificationCenter notificationCategories];
    v17 = [notificationCategories setByAddingObject:v15];
    [(UNUserNotificationCenter *)self->_userNotificationCenter setNotificationCategories:v17];

    categoryID2 = [implCopy categoryID];
    [v9 setCategoryIdentifier:categoryID2];

    v19 = MEMORY[0x1E6983298];
    categoryID3 = [implCopy categoryID];
    v21 = [v19 requestWithIdentifier:categoryID3 content:v9 trigger:0];

    [(UNUserNotificationCenter *)self->_userNotificationCenter addNotificationRequest:v21 withCompletionHandler:replyCopy];
  }

  else
  {
    v22 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v29[0] = @"Permission not granted";
    v23 = MEMORY[0x1E695DF20];
    replyCopy2 = reply;
    v25 = [v23 dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v26 = [v22 errorWithDomain:@"GCNotificationManager" code:0 userInfo:v25];
    (*(reply + 2))(replyCopy2, v26);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)requestNotification:(id)notification withReply:(id)reply
{
  notificationCopy = notification;
  replyCopy = reply;
  if (self->_isPermissionGranted)
  {
    [(GCNotificationManager *)self requestNotificationImpl:notificationCopy withReply:replyCopy];
  }

  else
  {
    objc_initWeak(&location, self);
    userNotificationCenter = self->_userNotificationCenter;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__GCNotificationManager_requestNotification_withReply___block_invoke;
    v9[3] = &unk_1E841A8F8;
    v11 = replyCopy;
    objc_copyWeak(&v12, &location);
    v10 = notificationCopy;
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