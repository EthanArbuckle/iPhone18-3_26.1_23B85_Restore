@interface SearchFindMyLocation
- (CLLocationCoordinate2D)latLng;
- (_TtC4Maps20SearchFindMyLocation)init;
- (int64_t)hash;
@end

@implementation SearchFindMyLocation

- (CLLocationCoordinate2D)latLng
{
  selfCopy = self;
  Location.latitude.getter();
  v4 = v3;
  Location.longitude.getter();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.longitude = v8;
  result.latitude = v7;
  return result;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = Location.hashValue.getter();

  return v3;
}

- (_TtC4Maps20SearchFindMyLocation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end