@interface MechanismUINotificationCenter
- (BOOL)_checkIsRedundantNotification:(int64_t)a3;
- (BOOL)postNotification:(int64_t)a3;
- (id)_identifierForNotification:(int64_t)a3;
- (void)_postDarwinNotificationWithIdentifier:(id)a3;
@end

@implementation MechanismUINotificationCenter

- (BOOL)postNotification:(int64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [(MechanismUINotificationCenter *)self _identifierForNotification:?];
  v6 = [(MechanismUINotificationCenter *)self _checkIsRedundantNotification:a3];
  if (v6)
  {
    v7 = LA_LOG_MechanismUINotificationCenter();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v5;
      v8 = "Did skip notification with identifier: %{public}@";
LABEL_6:
      _os_log_impl(&dword_238B95000, v7, OS_LOG_TYPE_DEFAULT, v8, &v12, 0xCu);
    }
  }

  else
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [(MechanismUINotificationCenter *)self setLastNotification:v9];

    [(MechanismUINotificationCenter *)self _postDarwinNotificationWithIdentifier:v5];
    v7 = LA_LOG_MechanismUINotificationCenter();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v5;
      v8 = "Did post notification with identifier: %{public}@";
      goto LABEL_6;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return !v6;
}

- (BOOL)_checkIsRedundantNotification:(int64_t)a3
{
  if (a3 == 1)
  {
    v5 = [(MechanismUINotificationCenter *)self lastNotification];
    if (v5)
    {
      v6 = [(MechanismUINotificationCenter *)self lastNotification];
      v3 = [v6 isEqual:&unk_284B788D0] ^ 1;
    }

    else
    {
      v3 = 1;
    }

    goto LABEL_7;
  }

  if (!a3)
  {
    v5 = [(MechanismUINotificationCenter *)self lastNotification];
    v3 = [v5 isEqual:&unk_284B788D0];
LABEL_7:
  }

  return v3 & 1;
}

- (id)_identifierForNotification:(int64_t)a3
{
  if (a3)
  {
    return @"com.apple.LocalAuthentication.ui.dismissed";
  }

  else
  {
    return @"com.apple.LocalAuthentication.ui.presented";
  }
}

- (void)_postDarwinNotificationWithIdentifier:(id)a3
{
  name = a3;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, name, 0, 0, 1u);
}

@end