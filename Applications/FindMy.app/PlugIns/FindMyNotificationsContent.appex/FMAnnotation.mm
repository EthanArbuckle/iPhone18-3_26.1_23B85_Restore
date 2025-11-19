@interface FMAnnotation
- (BOOL)isEqual:(id)a3;
- (CLLocationCoordinate2D)coordinate;
- (NSString)title;
- (_TtC26FindMyNotificationsContent12FMAnnotation)init;
- (void)setTitle:(id)a3;
@end

@implementation FMAnnotation

- (CLLocationCoordinate2D)coordinate
{
  v2 = *(self + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_coordinate);
  v3 = *(self + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_coordinate + 8);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (NSString)title
{
  if (*(self + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_title + 8))
  {

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setTitle:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_title);
  *v6 = v4;
  v6[1] = v5;
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

  v6 = sub_10000D16C(v8);

  sub_100006930(v8, &qword_10001A2C8);
  return v6 & 1;
}

- (_TtC26FindMyNotificationsContent12FMAnnotation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end