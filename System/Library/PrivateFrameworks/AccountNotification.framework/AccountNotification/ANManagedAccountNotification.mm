@interface ANManagedAccountNotification
- (void)takeValuesFromAccountNotification:(id)notification;
@end

@implementation ANManagedAccountNotification

- (void)takeValuesFromAccountNotification:(id)notification
{
  notificationCopy = notification;
  identifier = [notificationCopy identifier];
  [(ANManagedAccountNotification *)self setIdentifier:identifier];

  title = [notificationCopy title];
  [(ANManagedAccountNotification *)self setTitle:title];

  message = [notificationCopy message];
  [(ANManagedAccountNotification *)self setMessage:message];

  accountTypeID = [notificationCopy accountTypeID];
  [(ANManagedAccountNotification *)self setAccountTypeID:accountTypeID];

  date = [notificationCopy date];
  [(ANManagedAccountNotification *)self setDate:date];

  activateButtonTitle = [notificationCopy activateButtonTitle];
  [(ANManagedAccountNotification *)self setActivateButtonTitle:activateButtonTitle];

  userInfo = [notificationCopy userInfo];
  [(ANManagedAccountNotification *)self setUserInfo:userInfo];

  callbackMachService = [notificationCopy callbackMachService];
  [(ANManagedAccountNotification *)self setCallbackMachServiceName:callbackMachService];

  eventIdentifier = [notificationCopy eventIdentifier];

  [(ANManagedAccountNotification *)self setEventID:eventIdentifier];
}

@end