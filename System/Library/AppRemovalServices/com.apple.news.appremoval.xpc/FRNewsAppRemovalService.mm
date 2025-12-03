@interface FRNewsAppRemovalService
+ (void)initialize;
- (FRNewsAppRemovalService)init;
- (void)removeAppWithReply:(id)reply;
@end

@implementation FRNewsAppRemovalService

+ (void)initialize
{
  qword_10000CD90 = os_log_create("com.apple.news.appRemoval", "general");

  _objc_release_x1();
}

- (FRNewsAppRemovalService)init
{
  v3.receiver = self;
  v3.super_class = FRNewsAppRemovalService;
  return [(FRNewsAppRemovalService *)&v3 init];
}

- (void)removeAppWithReply:(id)reply
{
  replyCopy = reply;
  v4 = [[NSSNewsTerminationItem alloc] initWithProcessType:1 bundleID:@"UNUSED"];
  v5 = [[NSSNewsTerminationItem alloc] initWithProcessType:0 bundleID:@"com.apple.stocks"];
  v7[0] = v4;
  v7[1] = v5;
  v6 = [NSArray arrayWithObjects:v7 count:2];
  NSSTerminateNewsProcessesWithItems();

  replyCopy[2](replyCopy, 0);
}

@end