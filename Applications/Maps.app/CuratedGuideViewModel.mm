@interface CuratedGuideViewModel
- (BOOL)isEqual:(id)equal;
- (NSString)guideNumberOfPlaces;
- (NSString)guideSubtitle;
- (NSString)guideTitle;
- (_TtC4Maps21CuratedGuideViewModel)init;
- (double)guideBrickHeight;
- (double)guideBrickWidth;
- (double)width;
- (int64_t)hash;
- (void)setMetrics:(id)metrics;
- (void)setWidth:(double)width;
@end

@implementation CuratedGuideViewModel

- (void)setMetrics:(id)metrics
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_metrics);
  *(&self->super.isa + OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_metrics) = metrics;
  metricsCopy = metrics;
}

- (double)width
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.getter();

  return v5;
}

- (void)setWidth:(double)width
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.setter();
}

- (NSString)guideNumberOfPlaces
{
  selfCopy = self;
  sub_1002B3C98();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (NSString)guideTitle
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_placeCollection);
  selfCopy = self;
  collectionTitle = [v2 collectionTitle];
  if (!collectionTitle)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    collectionTitle = String._bridgeToObjectiveC()();
  }

  return collectionTitle;
}

- (NSString)guideSubtitle
{
  selfCopy = self;
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
  selfCopy = self;
  v3 = sub_1002B4098();

  return v3;
}

- (double)guideBrickHeight
{
  selfCopy = self;
  v3 = sub_1002B419C();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1002B4258(v8);

  sub_1000DB2F4(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
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