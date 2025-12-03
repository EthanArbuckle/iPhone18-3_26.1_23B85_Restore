@interface MirroringPIPCoordinator
- (CGRect)pictureInPictureProxyViewFrameForTransitionAnimation:(id)animation;
- (_TtC17AppleVisionProApp23MirroringPIPCoordinator)init;
- (id)pictureInPictureProxyViewControllerWindowForTransitionAnimation:(id)animation;
- (void)pictureInPictureProxy:(id)proxy didStartPictureInPictureWithAnimationType:(int64_t)type;
- (void)pictureInPictureProxy:(id)proxy didStopPictureInPictureWithAnimationType:(int64_t)type reason:(int64_t)reason;
- (void)pictureInPictureProxy:(id)proxy restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)handler;
- (void)pictureInPictureProxy:(id)proxy willStartPictureInPictureWithAnimationType:(int64_t)type;
- (void)pictureInPictureProxy:(id)proxy willStopPictureInPictureWithAnimationType:(int64_t)type reason:(int64_t)reason;
- (void)pictureInPictureProxyWillSetupPictureInPictureStop:(id)stop;
@end

@implementation MirroringPIPCoordinator

- (_TtC17AppleVisionProApp23MirroringPIPCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)pictureInPictureProxyViewControllerWindowForTransitionAnimation:(id)animation
{
  animationCopy = animation;
  selfCopy = self;
  v6 = sub_100014154();

  return v6;
}

- (CGRect)pictureInPictureProxyViewFrameForTransitionAnimation:(id)animation
{
  animationCopy = animation;
  selfCopy = self;
  v6 = sub_10001463C();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)pictureInPictureProxy:(id)proxy willStartPictureInPictureWithAnimationType:(int64_t)type
{
  proxyCopy = proxy;
  selfCopy = self;
  sub_100014920(proxy, "%s Started transitioning from full screen to PIP for session: %{public}s", sub_100030DB8);
}

- (void)pictureInPictureProxy:(id)proxy didStartPictureInPictureWithAnimationType:(int64_t)type
{
  proxyCopy = proxy;
  selfCopy = self;
  sub_100014920(proxy, "%s Finished transitioning from full screen to PIP for session: %{public}s", sub_10002EFE4);
}

- (void)pictureInPictureProxyWillSetupPictureInPictureStop:(id)stop
{
  stopCopy = stop;
  selfCopy = self;
  sub_100014B74();
}

- (void)pictureInPictureProxy:(id)proxy willStopPictureInPictureWithAnimationType:(int64_t)type reason:(int64_t)reason
{
  proxyCopy = proxy;
  selfCopy = self;
  sub_100014C64(reason);
}

- (void)pictureInPictureProxy:(id)proxy didStopPictureInPictureWithAnimationType:(int64_t)type reason:(int64_t)reason
{
  proxyCopy = proxy;
  selfCopy = self;
  sub_100014FB0(reason);
}

- (void)pictureInPictureProxy:(id)proxy restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_10001414C;
  }

  proxyCopy = proxy;
  selfCopy = self;
  sub_100013DC4(proxy, v6);
  sub_100014104(v6);
}

@end