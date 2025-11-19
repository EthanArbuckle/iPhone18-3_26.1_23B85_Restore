@interface TransactionRelationshipChangesObserver
- (void)contextDidChangeNotificationWithNotification:(id)a3;
- (void)contextWillSaveNotificationWithNotification:(id)a3;
@end

@implementation TransactionRelationshipChangesObserver

- (void)contextDidChangeNotificationWithNotification:(id)a3
{
  v3 = a3;

  sub_1B76B152C(v3);
}

- (void)contextWillSaveNotificationWithNotification:(id)a3
{
  v3 = a3;

  sub_1B76B5694();
}

@end