@interface AccountNotificationPlugin
- (void)account:(id)a3 didChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6;
@end

@implementation AccountNotificationPlugin

- (void)account:(id)a3 didChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6
{
  v30 = *MEMORY[0x29EDCA608];
  v8 = a3;
  v9 = a6;
  v10 = [MEMORY[0x29EDBFA68] sharedPluginConfig];
  if (!v10)
  {
    v10 = [MEMORY[0x29EDBFA68] sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v29 = 138543618;
    *&v29[4] = objc_opt_class();
    *&v29[12] = 1026;
    *&v29[14] = a4;
    v12 = *&v29[4];
    _os_log_impl(&dword_29C91F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Proccessing account change. Change type: %{public}u", v29, 0x12u);
  }

  if ([v8 ams_isiTunesAccount] && (objc_msgSend(v8, "isActive") & 1) == 0 && objc_msgSend(v9, "isActive"))
  {
    v13 = [MEMORY[0x29EDBFA68] sharedPluginConfig];
    if (!v13)
    {
      v13 = [MEMORY[0x29EDBFA68] sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      *v29 = 138543362;
      *&v29[4] = v15;
      v16 = v15;
      _os_log_impl(&dword_29C91F000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: iTunes account deactivated - resetting requester account", v29, 0xCu);
    }

    v17 = MEMORY[0x29EDBFA70];
    v18 = 1;
LABEL_20:
    [v17 resetAccountWithType:v18];
    goto LABEL_21;
  }

  v19 = [v9 ams_isiCloudAccount];
  if (a4 == 3 && v19)
  {
    v20 = [MEMORY[0x29EDBFA68] sharedPluginConfig];
    if (!v20)
    {
      v20 = [MEMORY[0x29EDBFA68] sharedConfig];
    }

    v21 = [v20 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      *v29 = 138543362;
      *&v29[4] = v22;
      v23 = v22;
      _os_log_impl(&dword_29C91F000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: iCloud account deleted - resetting approver account", v29, 0xCu);
    }

    v17 = MEMORY[0x29EDBFA70];
    v18 = 0;
    goto LABEL_20;
  }

  if ((([v8 ams_isiTunesAccount] & 1) != 0 || objc_msgSend(v8, "ams_isiCloudAccount")) && (a4 == 1 || (objc_msgSend(v9, "isActive") & 1) == 0 && objc_msgSend(v8, "isActive")) && objc_msgSend(MEMORY[0x29EDBFA60], "retryNotificationRegistration"))
  {
    v25 = [MEMORY[0x29EDBFA68] sharedPluginConfig];
    if (!v25)
    {
      v25 = [MEMORY[0x29EDBFA68] sharedConfig];
    }

    v26 = [v25 OSLogObject];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_opt_class();
      *v29 = 138543362;
      *&v29[4] = v27;
      v28 = v27;
      _os_log_impl(&dword_29C91F000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: Restarting APNS Connection due to account change.", v29, 0xCu);
    }

    [MEMORY[0x29EDBFA70] restartAPNSConnection];
  }

LABEL_21:

  v24 = *MEMORY[0x29EDCA608];
}

@end