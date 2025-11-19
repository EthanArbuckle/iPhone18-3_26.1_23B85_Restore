@interface MTSharedPlaybackController
- (MTSharedPlaybackController)init;
- (void)playManifest:(id)a3 waitingForEngine:(BOOL)a4 completion:(id)a5;
@end

@implementation MTSharedPlaybackController

- (void)playManifest:(id)a3 waitingForEngine:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = _Block_copy(a5);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_1001F6D40;
  }

  else
  {
    v9 = 0;
  }

  v10 = a3;
  v11 = self;
  sub_10023B46C(v10, v5, v8, v9);
  sub_1000112B4(v8);
}

- (MTSharedPlaybackController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end