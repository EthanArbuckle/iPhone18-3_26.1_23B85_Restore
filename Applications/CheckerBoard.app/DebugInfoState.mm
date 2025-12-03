@interface DebugInfoState
- (void)dealloc;
- (void)initialPopulateComplete;
@end

@implementation DebugInfoState

- (void)dealloc
{
  swift_getKeyPath();
  selfCopy = self;
  sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
  selfCopy2 = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  [*(&selfCopy2->super.isa + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__timer) invalidate];
  v4.receiver = selfCopy2;
  v4.super_class = type metadata accessor for DebugInfoState(0);
  [(DebugInfoState *)&v4 dealloc];
}

- (void)initialPopulateComplete
{
  selfCopy = self;
  sub_100043390();
}

@end