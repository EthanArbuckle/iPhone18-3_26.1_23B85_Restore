@interface B389MapAnnotation
- (CLLocationCoordinate2D)coordinate;
- (NSString)title;
- (_TtC18SharingViewService17B389MapAnnotation)init;
@end

@implementation B389MapAnnotation

- (_TtC18SharingViewService17B389MapAnnotation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CLLocationCoordinate2D)coordinate
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC18SharingViewService17B389MapAnnotation_region);
  v3 = *&self->roleEmoji[OBJC_IVAR____TtC18SharingViewService17B389MapAnnotation_region];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (NSString)title
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

@end