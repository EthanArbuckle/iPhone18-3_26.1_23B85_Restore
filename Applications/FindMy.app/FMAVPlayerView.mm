@interface FMAVPlayerView
+ (Class)layerClass;
- (NSString)accessibilityAssetName;
- (NSString)description;
- (_TtC6FindMy14FMAVPlayerView)initWithFrame:(CGRect)a3;
- (void)dealloc;
@end

@implementation FMAVPlayerView

+ (Class)layerClass
{
  sub_10000905C(0, &qword_1006BAF68);

  return swift_getObjCClassFromMetadata();
}

- (void)dealloc
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetManager);
  v3 = self;
  [v2 invalidate];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for FMAVPlayerView();
  [(FMAVPlayerView *)&v4 dealloc];
}

- (NSString)description
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtC6FindMy14FMAVPlayerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)accessibilityAssetName
{
  if (*&self->assetBundle[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetName])
  {

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end