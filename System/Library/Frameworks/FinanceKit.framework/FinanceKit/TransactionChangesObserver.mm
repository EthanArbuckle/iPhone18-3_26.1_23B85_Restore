@interface TransactionChangesObserver
- (void)contextDidMergeChangesObjectIDsNotificationWithNotification:(id)notification;
@end

@implementation TransactionChangesObserver

- (void)contextDidMergeChangesObjectIDsNotificationWithNotification:(id)notification
{
  notificationCopy = notification;

  if (sub_1B75628D8(notificationCopy))
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *&self->delegate[8];
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  else
  {
  }
}

@end