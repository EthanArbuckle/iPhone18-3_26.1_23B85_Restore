@interface MapBridgingUserAnnotation
- (CLLocationCoordinate2D)coordinate;
- (_TtC15_MapKit_SwiftUI25MapBridgingUserAnnotation)init;
@end

@implementation MapBridgingUserAnnotation

- (CLLocationCoordinate2D)coordinate
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC15_MapKit_SwiftUI25MapBridgingUserAnnotation_coordinate);
  v3 = *(&self->coordinate.latitude + OBJC_IVAR____TtC15_MapKit_SwiftUI25MapBridgingUserAnnotation_coordinate);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (_TtC15_MapKit_SwiftUI25MapBridgingUserAnnotation)init
{
  *(&self->super.isa + OBJC_IVAR____TtC15_MapKit_SwiftUI25MapBridgingUserAnnotation_coordinate) = *MEMORY[0x277CE4278];
  v3.receiver = self;
  v3.super_class = type metadata accessor for MapBridgingUserAnnotation();
  return [(MapBridgingUserAnnotation *)&v3 init];
}

@end