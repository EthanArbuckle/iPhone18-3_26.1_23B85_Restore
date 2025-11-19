@interface AppNotificationEventRegistry
- (void)sendAppNotificationEvents:(NSArray *)a3 reply:(id)a4;
@end

@implementation AppNotificationEventRegistry

- (void)sendAppNotificationEvents:(NSArray *)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;

  sub_221A65FB8(&unk_221BD6658, v7);
}

@end