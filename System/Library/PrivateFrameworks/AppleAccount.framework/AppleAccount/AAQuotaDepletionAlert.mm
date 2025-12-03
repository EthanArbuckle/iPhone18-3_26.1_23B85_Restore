@interface AAQuotaDepletionAlert
+ (BOOL)_isDisabledDataclass:(id)dataclass;
- (AAQuotaDepletionAlert)init;
- (BOOL)showIfNecessaryWithHandler:(id)handler;
- (id)_deviceSpecificLocalizedString:(id)string;
- (id)_primaryAccount;
- (id)initForDataclass:(id)dataclass;
- (void)showWithHandler:(id)handler;
@end

@implementation AAQuotaDepletionAlert

- (AAQuotaDepletionAlert)init
{
  v3.receiver = self;
  v3.super_class = AAQuotaDepletionAlert;
  return [(AAQuotaDepletionAlert *)&v3 init];
}

- (id)initForDataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  v9.receiver = self;
  v9.super_class = AAQuotaDepletionAlert;
  v6 = [(AAQuotaDepletionAlert *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataclass, dataclass);
  }

  return v7;
}

+ (BOOL)_isDisabledDataclass:(id)dataclass
{
  v10[2] = *MEMORY[0x1E69E9840];
  dataclassCopy = dataclass;
  v4 = *MEMORY[0x1E6959B28];
  v10[0] = *MEMORY[0x1E6959B58];
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v6 = v5;
  if (dataclassCopy)
  {
    v7 = [v5 containsObject:dataclassCopy];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)_primaryAccount
{
  if (!self->_primaryAccount)
  {
    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    accountStore = self->_accountStore;
    self->_accountStore = defaultStore;

    v5 = self->_accountStore;
    if (v5)
    {
      aa_primaryAppleAccount = [(ACAccountStore *)v5 aa_primaryAppleAccount];
      primaryAccount = self->_primaryAccount;
      self->_primaryAccount = aa_primaryAppleAccount;
    }
  }

  v8 = self->_primaryAccount;

  return v8;
}

- (void)showWithHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if ([AAQuotaDepletionAlert _isDisabledDataclass:self->_dataclass])
  {
    v5 = _AALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      dataclass = self->_dataclass;
      *buf = 138412290;
      v34 = dataclass;
      _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Quota ran out for dataclass: %@. Skipping notifying user.", buf, 0xCu);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 3);
    }
  }

  else
  {
    _primaryAccount = [(AAQuotaDepletionAlert *)self _primaryAccount];
    if (_primaryAccount)
    {
      _primaryAccount2 = [(AAQuotaDepletionAlert *)self _primaryAccount];
      v9 = [_primaryAccount2 aa_isManagedAppleID] ^ 1;
    }

    else
    {
      v9 = 0;
    }

    v10 = _AALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_dataclass;
      *buf = 138412546;
      v34 = v11;
      v35 = 1024;
      v36 = v9;
      _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "Quota ran out for dataclass: %@. Notify user. Upgrade Available: %d", buf, 0x12u);
    }

    v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v13 = v12;
    if (v9)
    {
      v14 = @"QUOTA_ALERT_UPGRADE_BUTTON";
    }

    else
    {
      v14 = @"QUOTA_ALERT_MANAGE_BUTTON";
    }

    v15 = [v12 localizedStringForKey:v14 value:&stru_1F2EF6280 table:@"Localizable"];

    v16 = [(NSString *)self->_dataclass isEqualToString:*MEMORY[0x1E6959AD8]];
    v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v18 = v17;
    if (v16)
    {
      v19 = [v17 localizedStringForKey:@"QUOTA_ALERT_BACKUP_TITLE" value:&stru_1F2EF6280 table:@"Localizable"];

      v20 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v21 = [(AAQuotaDepletionAlert *)self _deviceSpecificLocalizedString:@"QUOTA_ALERT_BACKUP_MESSAGE"];
      v22 = [v20 localizedStringForKey:v21 value:&stru_1F2EF6280 table:@"Localizable"];
    }

    else
    {
      v19 = [v17 localizedStringForKey:@"QUOTA_ALERT_TITLE" value:&stru_1F2EF6280 table:@"Localizable"];

      v20 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v22 = [v20 localizedStringForKey:@"QUOTA_ALERT_MESSAGE" value:&stru_1F2EF6280 table:@"Localizable"];
    }

    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __41__AAQuotaDepletionAlert_showWithHandler___block_invoke;
    v30 = &unk_1E7C9D710;
    v32 = v9;
    v31 = handlerCopy;
    v23 = _Block_copy(&v27);
    v24 = [MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class(), v27, v28, v29, v30}];
    v25 = [v24 localizedStringForKey:@"ALERT_CLOSE" value:&stru_1F2EF6280 table:@"Localizable"];
    [AAUserNotification showUserNotificationWithTitle:v19 message:v22 cancelButtonTitle:v25 otherButtonTitle:v15 withCompletionBlock:v23];
  }

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t __41__AAQuotaDepletionAlert_showWithHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    if (*(a1 + 40))
    {
      v5 = @"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/STORAGE_AND_BACKUP/CHANGE_STORAGE_PLAN";
    }

    else
    {
      v5 = @"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/STORAGE_AND_BACKUP";
    }

    v6 = [MEMORY[0x1E695DFF8] URLWithString:v5];
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__AAQuotaDepletionAlert_showWithHandler___block_invoke_2;
    block[3] = &unk_1E7C9A868;
    v11 = v6;
    v8 = v6;
    dispatch_async(v7, block);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

void __41__AAQuotaDepletionAlert_showWithHandler___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v2 openSensitiveURL:*(a1 + 32) withOptions:0];
}

- (BOOL)showIfNecessaryWithHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = [AAQuotaDepletionAlert _isDisabledDataclass:self->_dataclass];
  v6 = _AALogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      dataclass = self->_dataclass;
      v17 = 138412290;
      v18 = dataclass;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Quota ran out for dataclass: %@. Skipping notifying user.", &v17, 0xCu);
    }

LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  if (v7)
  {
    v9 = self->_dataclass;
    v17 = 138412290;
    v18 = v9;
    _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Quota ran out for dataclass: %@. Notify user.", &v17, 0xCu);
  }

  v6 = CFPreferencesCopyAppValue(@"AANextCastleQuotaAlert", @"com.apple.appleaccount");
  if (v6)
  {
    date = [MEMORY[0x1E695DF00] date];
    v11 = [date compare:v6];

    if (v11 != 1)
    {
      goto LABEL_9;
    }
  }

  date2 = [MEMORY[0x1E695DF00] date];
  v13 = [date2 dateByAddingTimeInterval:86400.0];

  CFPreferencesSetAppValue(@"AANextCastleQuotaAlert", v13, @"com.apple.appleaccount");
  CFPreferencesSynchronize(@"com.apple.appleaccount", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  [(AAQuotaDepletionAlert *)self showWithHandler:handlerCopy];

  v14 = 1;
LABEL_10:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)_deviceSpecificLocalizedString:(id)string
{
  stringCopy = string;
  v4 = MGCopyAnswer();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"iPhone";
  }

  uppercaseString = [(__CFString *)v5 uppercaseString];
  v7 = [uppercaseString stringByReplacingOccurrencesOfString:@" " withString:@"_"];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", stringCopy, v7];

  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:v8 value:&stru_1F2EF6280 table:@"Localizable"];

  return v10;
}

@end