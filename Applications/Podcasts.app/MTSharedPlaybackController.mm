@interface MTSharedPlaybackController
- (MTSharedPlaybackController)init;
- (void)playManifest:(id)manifest waitingForEngine:(BOOL)engine completion:(id)completion;
@end

@implementation MTSharedPlaybackController

- (void)playManifest:(id)manifest waitingForEngine:(BOOL)engine completion:(id)completion
{
  engineCopy = engine;
  v8 = _Block_copy(completion);
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

  manifestCopy = manifest;
  selfCopy = self;
  sub_10023B46C(manifestCopy, engineCopy, v8, v9);
  sub_1000112B4(v8);
}

- (MTSharedPlaybackController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end