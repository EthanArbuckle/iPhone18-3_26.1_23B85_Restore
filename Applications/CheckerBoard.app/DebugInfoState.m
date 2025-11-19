@interface DebugInfoState
- (void)dealloc;
- (void)initialPopulateComplete;
@end

@implementation DebugInfoState

- (void)dealloc
{
  swift_getKeyPath();
  v5 = self;
  sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
  v3 = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  [*(&v3->super.isa + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__timer) invalidate];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for DebugInfoState(0);
  [(DebugInfoState *)&v4 dealloc];
}

- (void)initialPopulateComplete
{
  v2 = self;
  sub_100043390();
}

@end