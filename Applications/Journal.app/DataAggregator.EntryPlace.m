@interface DataAggregator.EntryPlace
- (CLLocationCoordinate2D)coordinate;
- (_TtCC7Journal14DataAggregator10EntryPlace)init;
- (int64_t)compareTo:(id)a3;
@end

@implementation DataAggregator.EntryPlace

- (CLLocationCoordinate2D)coordinate
{
  [*(&self->super.isa + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_location) coordinate];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (_TtCC7Journal14DataAggregator10EntryPlace)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)compareTo:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  v5 = sub_1001801F4();
  swift_unknownObjectRelease();

  return v5;
}

@end