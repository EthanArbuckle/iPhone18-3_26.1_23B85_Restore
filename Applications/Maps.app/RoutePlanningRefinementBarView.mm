@interface RoutePlanningRefinementBarView
- (NSArray)refinements;
- (RoutePlanningRefinementDelegate)delegate;
- (_TtC4Maps30RoutePlanningRefinementBarView)initWithCoder:(id)coder;
- (_TtC4Maps30RoutePlanningRefinementBarView)initWithDelegate:(id)delegate refinements:(id)refinements;
- (_TtC4Maps30RoutePlanningRefinementBarView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)reloadRefinementBar;
- (void)resetScrollPosition;
- (void)setDelegate:(id)delegate;
- (void)setRefinements:(id)refinements;
@end

@implementation RoutePlanningRefinementBarView

- (RoutePlanningRefinementDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectWeakAssign();
  delegateCopy = delegate;
  selfCopy = self;
  sub_1003FD870(0x65746167656C6564, 0xE800000000000000);
}

- (NSArray)refinements
{
  sub_100014C84(0, &unk_1019202B0);

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setRefinements:(id)refinements
{
  sub_100014C84(0, &unk_1019202B0);
  *(self + OBJC_IVAR____TtC4Maps30RoutePlanningRefinementBarView_refinements) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;

  sub_1003FD870(0x656D656E69666572, 0xEB0000000073746ELL);
}

- (_TtC4Maps30RoutePlanningRefinementBarView)initWithDelegate:(id)delegate refinements:(id)refinements
{
  sub_100014C84(0, &unk_1019202B0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  delegateCopy = delegate;
  return sub_1003FD9C4(delegate, v5);
}

- (_TtC4Maps30RoutePlanningRefinementBarView)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC4Maps30RoutePlanningRefinementBarView_filterBarContainerVC) = 0;
  v4 = OBJC_IVAR____TtC4Maps30RoutePlanningRefinementBarView_filterBar;
  v5 = type metadata accessor for FilterBar();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(self + OBJC_IVAR____TtC4Maps30RoutePlanningRefinementBarView_heightConstraint) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1003FEA0C();
}

- (void)resetScrollPosition
{
  selfCopy = self;
  sub_1003FEB34();
}

- (void)reloadRefinementBar
{
  selfCopy = self;
  sub_1003FEE34();
}

- (_TtC4Maps30RoutePlanningRefinementBarView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end