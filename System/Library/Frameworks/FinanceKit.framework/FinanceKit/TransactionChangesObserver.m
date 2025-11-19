@interface TransactionChangesObserver
- (void)contextDidMergeChangesObjectIDsNotificationWithNotification:(id)a3;
@end

@implementation TransactionChangesObserver

- (void)contextDidMergeChangesObjectIDsNotificationWithNotification:(id)a3
{
  v4 = a3;

  if (sub_1B75628D8(v4))
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