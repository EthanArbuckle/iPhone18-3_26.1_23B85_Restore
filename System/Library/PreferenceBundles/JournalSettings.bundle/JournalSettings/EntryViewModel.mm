@interface EntryViewModel
- (void)contextObjectsDidChangeWithNotification:(id)notification;
@end

@implementation EntryViewModel

- (void)contextObjectsDidChangeWithNotification:(id)notification
{
  notificationCopy = notification;

  sub_4895C(notificationCopy);
}

@end