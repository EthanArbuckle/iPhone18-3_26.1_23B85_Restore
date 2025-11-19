@interface WorkoutScrubbedLocationAnnotation
- (CLLocationCoordinate2D)coordinate;
- (_TtC10FitnessApp33WorkoutScrubbedLocationAnnotation)init;
@end

@implementation WorkoutScrubbedLocationAnnotation

- (CLLocationCoordinate2D)coordinate
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC10FitnessApp33WorkoutScrubbedLocationAnnotation_coordinate);
  v3 = *(&self->coordinate.latitude + OBJC_IVAR____TtC10FitnessApp33WorkoutScrubbedLocationAnnotation_coordinate);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (_TtC10FitnessApp33WorkoutScrubbedLocationAnnotation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end