@interface MapBridgingMarker
- (CLLocationCoordinate2D)coordinate;
- (_TtC15_MapKit_SwiftUI17MapBridgingMarker)init;
@end

@implementation MapBridgingMarker

- (CLLocationCoordinate2D)coordinate
{
  v2 = *(self + OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_coordinate);
  v3 = *(self + OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_coordinate + 8);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (_TtC15_MapKit_SwiftUI17MapBridgingMarker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end