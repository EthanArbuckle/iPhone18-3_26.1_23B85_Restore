@interface MapsNavigationController
- (_TtC17wirelessinsightsd24MapsNavigationController)init;
- (void)navigationListener:(id)listener didChangeNavigationState:(unint64_t)state transportType:(int)type;
- (void)navigationListener:(id)listener didUpdateNoCellCoverage:(id)coverage;
@end

@implementation MapsNavigationController

- (void)navigationListener:(id)listener didUpdateNoCellCoverage:(id)coverage
{
  coverageCopy = coverage;
  if (coverage)
  {
    sub_100164AEC(0, &qword_1002D7B90, GEONavigationListenerNoCellCoverageInfo_ptr);
    coverageCopy = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  listenerCopy = listener;

  sub_1001BC050(coverageCopy);
}

- (void)navigationListener:(id)listener didChangeNavigationState:(unint64_t)state transportType:(int)type
{
  listenerCopy = listener;

  sub_1001BC61C(state, type);
}

- (_TtC17wirelessinsightsd24MapsNavigationController)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end