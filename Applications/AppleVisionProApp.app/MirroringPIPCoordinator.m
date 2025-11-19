@interface MirroringPIPCoordinator
- (CGRect)pictureInPictureProxyViewFrameForTransitionAnimation:(id)a3;
- (_TtC17AppleVisionProApp23MirroringPIPCoordinator)init;
- (id)pictureInPictureProxyViewControllerWindowForTransitionAnimation:(id)a3;
- (void)pictureInPictureProxy:(id)a3 didStartPictureInPictureWithAnimationType:(int64_t)a4;
- (void)pictureInPictureProxy:(id)a3 didStopPictureInPictureWithAnimationType:(int64_t)a4 reason:(int64_t)a5;
- (void)pictureInPictureProxy:(id)a3 restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)a4;
- (void)pictureInPictureProxy:(id)a3 willStartPictureInPictureWithAnimationType:(int64_t)a4;
- (void)pictureInPictureProxy:(id)a3 willStopPictureInPictureWithAnimationType:(int64_t)a4 reason:(int64_t)a5;
- (void)pictureInPictureProxyWillSetupPictureInPictureStop:(id)a3;
@end

@implementation MirroringPIPCoordinator

- (_TtC17AppleVisionProApp23MirroringPIPCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)pictureInPictureProxyViewControllerWindowForTransitionAnimation:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100014154();

  return v6;
}

- (CGRect)pictureInPictureProxyViewFrameForTransitionAnimation:(id)a3
{
  v4 = a3;
  v5 = self;
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

- (void)pictureInPictureProxy:(id)a3 willStartPictureInPictureWithAnimationType:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_100014920(a3, "%s Started transitioning from full screen to PIP for session: %{public}s", sub_100030DB8);
}

- (void)pictureInPictureProxy:(id)a3 didStartPictureInPictureWithAnimationType:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_100014920(a3, "%s Finished transitioning from full screen to PIP for session: %{public}s", sub_10002EFE4);
}

- (void)pictureInPictureProxyWillSetupPictureInPictureStop:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100014B74();
}

- (void)pictureInPictureProxy:(id)a3 willStopPictureInPictureWithAnimationType:(int64_t)a4 reason:(int64_t)a5
{
  v7 = a3;
  v8 = self;
  sub_100014C64(a5);
}

- (void)pictureInPictureProxy:(id)a3 didStopPictureInPictureWithAnimationType:(int64_t)a4 reason:(int64_t)a5
{
  v7 = a3;
  v8 = self;
  sub_100014FB0(a5);
}

- (void)pictureInPictureProxy:(id)a3 restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_10001414C;
  }

  v7 = a3;
  v8 = self;
  sub_100013DC4(a3, v6);
  sub_100014104(v6);
}

@end