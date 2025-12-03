@interface EntryViewModel
- (void)contextObjectsDidChangeWithNotification:(id)notification;
@end

@implementation EntryViewModel

- (void)contextObjectsDidChangeWithNotification:(id)notification
{
  notificationCopy = notification;

  sub_10008E528(notificationCopy);
}

@end