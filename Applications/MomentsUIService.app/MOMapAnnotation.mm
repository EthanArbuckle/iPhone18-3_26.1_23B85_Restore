@interface MOMapAnnotation
- (CLLocationCoordinate2D)coordinate;
- (NSString)title;
- (_TtC16MomentsUIService15MOMapAnnotation)init;
- (void)setCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)setTitle:(id)title;
@end

@implementation MOMapAnnotation

- (CLLocationCoordinate2D)coordinate
{
  v2 = (self + OBJC_IVAR____TtC16MomentsUIService15MOMapAnnotation_coordinate);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  result.longitude = v4;
  result.latitude = v3;
  return result;
}

- (void)setCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v5 = (self + OBJC_IVAR____TtC16MomentsUIService15MOMapAnnotation_coordinate);
  swift_beginAccess();
  *v5 = latitude;
  v5[1] = longitude;
}

- (NSString)title
{
  v2 = self + OBJC_IVAR____TtC16MomentsUIService15MOMapAnnotation_title;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTitle:(id)title
{
  if (title)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC16MomentsUIService15MOMapAnnotation_title);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (_TtC16MomentsUIService15MOMapAnnotation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end