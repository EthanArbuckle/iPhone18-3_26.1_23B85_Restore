@interface AirTagMapAnnotation
- (CLLocationCoordinate2D)coordinate;
- (NSString)title;
- (_TtC21FindMyRemoteUIService19AirTagMapAnnotation)init;
@end

@implementation AirTagMapAnnotation

- (CLLocationCoordinate2D)coordinate
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC21FindMyRemoteUIService19AirTagMapAnnotation_region);
  v3 = *&self->roleEmoji[OBJC_IVAR____TtC21FindMyRemoteUIService19AirTagMapAnnotation_region];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (NSString)title
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC21FindMyRemoteUIService19AirTagMapAnnotation_roleEmoji);
  v3 = *&self->roleEmoji[OBJC_IVAR____TtC21FindMyRemoteUIService19AirTagMapAnnotation_roleEmoji];

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (_TtC21FindMyRemoteUIService19AirTagMapAnnotation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end