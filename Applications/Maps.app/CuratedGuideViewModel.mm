@interface CuratedGuideViewModel
- (BOOL)isEqual:(id)a3;
- (NSString)guideNumberOfPlaces;
- (NSString)guideSubtitle;
- (NSString)guideTitle;
- (_TtC4Maps21CuratedGuideViewModel)init;
- (double)guideBrickHeight;
- (double)guideBrickWidth;
- (double)width;
- (int64_t)hash;
- (void)setMetrics:(id)a3;
- (void)setWidth:(double)a3;
@end

@implementation CuratedGuideViewModel

- (void)setMetrics:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_metrics);
  *(&self->super.isa + OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_metrics) = a3;
  v3 = a3;
}

- (double)width
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  static Published.subscript.getter();

  return v5;
}

- (void)setWidth:(double)a3
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  static Published.subscript.setter();
}

- (NSString)guideNumberOfPlaces
{
  v2 = self;
  sub_1002B3C98();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (NSString)guideTitle
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_placeCollection);
  v3 = self;
  v4 = [v2 collectionTitle];
  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  return v4;
}

- (NSString)guideSubtitle
{
  v2 = self;
  sub_1002B3F0C();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)guideBrickWidth
{
  v2 = self;
  v3 = sub_1002B4098();

  return v3;
}

- (double)guideBrickHeight
{
  v2 = self;
  v3 = sub_1002B419C();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_1002B4258(v8);

  sub_1000DB2F4(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = NSObject.hashValue.getter();

  return v3;
}

- (_TtC4Maps21CuratedGuideViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end