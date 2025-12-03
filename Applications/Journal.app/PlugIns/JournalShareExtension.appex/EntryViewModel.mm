@interface EntryViewModel
- (void)contextObjectsDidChangeWithNotification:(id)notification;
@end

@implementation EntryViewModel

- (void)contextObjectsDidChangeWithNotification:(id)notification
{
  notificationCopy = notification;

  sub_1000A6190(notificationCopy);
}

@end