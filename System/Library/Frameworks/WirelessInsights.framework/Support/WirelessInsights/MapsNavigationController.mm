@interface MapsNavigationController
- (_TtC17wirelessinsightsd24MapsNavigationController)init;
- (void)navigationListener:(id)a3 didChangeNavigationState:(unint64_t)a4 transportType:(int)a5;
- (void)navigationListener:(id)a3 didUpdateNoCellCoverage:(id)a4;
@end

@implementation MapsNavigationController

- (void)navigationListener:(id)a3 didUpdateNoCellCoverage:(id)a4
{
  v4 = a4;
  if (a4)
  {
    sub_100164AEC(0, &qword_1002D7B90, GEONavigationListenerNoCellCoverageInfo_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;

  sub_1001BC050(v4);
}

- (void)navigationListener:(id)a3 didChangeNavigationState:(unint64_t)a4 transportType:(int)a5
{
  v7 = a3;

  sub_1001BC61C(a4, a5);
}

- (_TtC17wirelessinsightsd24MapsNavigationController)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end