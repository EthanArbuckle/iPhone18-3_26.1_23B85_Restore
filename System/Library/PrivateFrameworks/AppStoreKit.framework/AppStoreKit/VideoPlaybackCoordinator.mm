@interface VideoPlaybackCoordinator
- (_TtC11AppStoreKit24VideoPlaybackCoordinator)init;
- (void)didChangeAutoPlayVideoSetting:(id)a3;
- (void)didEnterBackground;
- (void)willEnterForeground;
@end

@implementation VideoPlaybackCoordinator

- (void)didChangeAutoPlayVideoSetting:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E140EB78(v4);
}

- (void)didEnterBackground
{
  v7 = self;
  sub_1E140E144();
  sub_1E140ED70();
  v2 = *(&v7->super.isa + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo);
  if (v2)
  {
    v3 = *&v7->visibilityTracker[OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo];
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 96);
    v6 = v2;
    if (v5(ObjectType, v3))
    {
      (*(v3 + 152))(ObjectType, v3);
    }
  }
}

- (void)willEnterForeground
{
  v2 = self;
  sub_1E1412A6C();
}

- (_TtC11AppStoreKit24VideoPlaybackCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end