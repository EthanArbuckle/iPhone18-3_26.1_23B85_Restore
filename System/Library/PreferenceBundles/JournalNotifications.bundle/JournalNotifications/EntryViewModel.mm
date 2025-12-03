@interface EntryViewModel
- (void)contextObjectsDidChangeWithNotification:(id)notification;
@end

@implementation EntryViewModel

- (void)contextObjectsDidChangeWithNotification:(id)notification
{
  notificationCopy = notification;

  sub_5258(notificationCopy);
}

@end