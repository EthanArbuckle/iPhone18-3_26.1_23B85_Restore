@interface ANManagedNotificationAction
- (void)takeValuesFromNotificationAction:(id)action;
@end

@implementation ANManagedNotificationAction

- (void)takeValuesFromNotificationAction:(id)action
{
  actionCopy = action;
  v5 = [actionCopy url];
  absoluteString = [v5 absoluteString];
  [(ANManagedNotificationAction *)self setUrl:absoluteString];

  options = [actionCopy options];
  [(ANManagedNotificationAction *)self setOptions:options];

  v8 = MEMORY[0x277CCABB0];
  isInternalURL = [actionCopy isInternalURL];

  v10 = [v8 numberWithBool:isInternalURL];
  [(ANManagedNotificationAction *)self setIsInternal:v10];
}

@end