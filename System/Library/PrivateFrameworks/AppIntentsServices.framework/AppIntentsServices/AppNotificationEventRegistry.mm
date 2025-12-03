@interface AppNotificationEventRegistry
- (void)sendAppNotificationEvents:(NSArray *)events reply:(id)reply;
@end

@implementation AppNotificationEventRegistry

- (void)sendAppNotificationEvents:(NSArray *)events reply:(id)reply
{
  v6 = _Block_copy(reply);
  v7 = swift_allocObject();
  v7[2] = events;
  v7[3] = v6;
  v7[4] = self;
  eventsCopy = events;

  sub_221A65FB8(&unk_221BD6658, v7);
}

@end