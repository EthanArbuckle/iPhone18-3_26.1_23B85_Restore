@interface EntryViewModel
- (void)contextObjectsDidChangeWithNotification:(id)notification;
@end

@implementation EntryViewModel

- (void)contextObjectsDidChangeWithNotification:(id)notification
{
  notificationCopy = notification;

  sub_1003DE918(notificationCopy);
}

@end