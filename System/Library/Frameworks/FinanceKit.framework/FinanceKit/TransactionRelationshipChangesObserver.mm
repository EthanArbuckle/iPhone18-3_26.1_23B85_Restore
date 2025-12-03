@interface TransactionRelationshipChangesObserver
- (void)contextDidChangeNotificationWithNotification:(id)notification;
- (void)contextWillSaveNotificationWithNotification:(id)notification;
@end

@implementation TransactionRelationshipChangesObserver

- (void)contextDidChangeNotificationWithNotification:(id)notification
{
  notificationCopy = notification;

  sub_1B76B152C(notificationCopy);
}

- (void)contextWillSaveNotificationWithNotification:(id)notification
{
  notificationCopy = notification;

  sub_1B76B5694();
}

@end