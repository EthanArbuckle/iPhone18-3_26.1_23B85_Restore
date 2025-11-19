@interface ANManagedAccountNotification
- (void)takeValuesFromAccountNotification:(id)a3;
@end

@implementation ANManagedAccountNotification

- (void)takeValuesFromAccountNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  [(ANManagedAccountNotification *)self setIdentifier:v5];

  v6 = [v4 title];
  [(ANManagedAccountNotification *)self setTitle:v6];

  v7 = [v4 message];
  [(ANManagedAccountNotification *)self setMessage:v7];

  v8 = [v4 accountTypeID];
  [(ANManagedAccountNotification *)self setAccountTypeID:v8];

  v9 = [v4 date];
  [(ANManagedAccountNotification *)self setDate:v9];

  v10 = [v4 activateButtonTitle];
  [(ANManagedAccountNotification *)self setActivateButtonTitle:v10];

  v11 = [v4 userInfo];
  [(ANManagedAccountNotification *)self setUserInfo:v11];

  v12 = [v4 callbackMachService];
  [(ANManagedAccountNotification *)self setCallbackMachServiceName:v12];

  v13 = [v4 eventIdentifier];

  [(ANManagedAccountNotification *)self setEventID:v13];
}

@end