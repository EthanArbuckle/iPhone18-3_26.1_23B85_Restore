@interface AccountNotificationPlugin
- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
@end

@implementation AccountNotificationPlugin

- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  v30 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  oldAccountCopy = oldAccount;
  mEMORY[0x29EDBFA68] = [MEMORY[0x29EDBFA68] sharedPluginConfig];
  if (!mEMORY[0x29EDBFA68])
  {
    mEMORY[0x29EDBFA68] = [MEMORY[0x29EDBFA68] sharedConfig];
  }

  oSLogObject = [mEMORY[0x29EDBFA68] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *v29 = 138543618;
    *&v29[4] = objc_opt_class();
    *&v29[12] = 1026;
    *&v29[14] = type;
    v12 = *&v29[4];
    _os_log_impl(&dword_29C91F000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Proccessing account change. Change type: %{public}u", v29, 0x12u);
  }

  if ([accountCopy ams_isiTunesAccount] && (objc_msgSend(accountCopy, "isActive") & 1) == 0 && objc_msgSend(oldAccountCopy, "isActive"))
  {
    mEMORY[0x29EDBFA68]2 = [MEMORY[0x29EDBFA68] sharedPluginConfig];
    if (!mEMORY[0x29EDBFA68]2)
    {
      mEMORY[0x29EDBFA68]2 = [MEMORY[0x29EDBFA68] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x29EDBFA68]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      *v29 = 138543362;
      *&v29[4] = v15;
      v16 = v15;
      _os_log_impl(&dword_29C91F000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: iTunes account deactivated - resetting requester account", v29, 0xCu);
    }

    v17 = MEMORY[0x29EDBFA70];
    v18 = 1;
LABEL_20:
    [v17 resetAccountWithType:v18];
    goto LABEL_21;
  }

  ams_isiCloudAccount = [oldAccountCopy ams_isiCloudAccount];
  if (type == 3 && ams_isiCloudAccount)
  {
    mEMORY[0x29EDBFA68]3 = [MEMORY[0x29EDBFA68] sharedPluginConfig];
    if (!mEMORY[0x29EDBFA68]3)
    {
      mEMORY[0x29EDBFA68]3 = [MEMORY[0x29EDBFA68] sharedConfig];
    }

    oSLogObject3 = [mEMORY[0x29EDBFA68]3 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      *v29 = 138543362;
      *&v29[4] = v22;
      v23 = v22;
      _os_log_impl(&dword_29C91F000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: iCloud account deleted - resetting approver account", v29, 0xCu);
    }

    v17 = MEMORY[0x29EDBFA70];
    v18 = 0;
    goto LABEL_20;
  }

  if ((([accountCopy ams_isiTunesAccount] & 1) != 0 || objc_msgSend(accountCopy, "ams_isiCloudAccount")) && (type == 1 || (objc_msgSend(oldAccountCopy, "isActive") & 1) == 0 && objc_msgSend(accountCopy, "isActive")) && objc_msgSend(MEMORY[0x29EDBFA60], "retryNotificationRegistration"))
  {
    mEMORY[0x29EDBFA68]4 = [MEMORY[0x29EDBFA68] sharedPluginConfig];
    if (!mEMORY[0x29EDBFA68]4)
    {
      mEMORY[0x29EDBFA68]4 = [MEMORY[0x29EDBFA68] sharedConfig];
    }

    oSLogObject4 = [mEMORY[0x29EDBFA68]4 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_opt_class();
      *v29 = 138543362;
      *&v29[4] = v27;
      v28 = v27;
      _os_log_impl(&dword_29C91F000, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@: Restarting APNS Connection due to account change.", v29, 0xCu);
    }

    [MEMORY[0x29EDBFA70] restartAPNSConnection];
  }

LABEL_21:

  v24 = *MEMORY[0x29EDCA608];
}

@end