@interface InsightsCalendarDetailTabView.ViewControllerType
- (_TtCV7Journal29InsightsCalendarDetailTabView18ViewControllerType)initWithCoder:(id)coder;
- (_TtCV7Journal29InsightsCalendarDetailTabView18ViewControllerType)initWithTransitionStyle:(int64_t)style navigationOrientation:(int64_t)orientation options:(id)options;
- (void)didMoveToParentViewController:(id)controller;
- (void)setContentScrollView:(id)view forEdge:(unint64_t)edge;
@end

@implementation InsightsCalendarDetailTabView.ViewControllerType

- (void)didMoveToParentViewController:(id)controller
{
  if (controller)
  {
    selfCopy = self;
    controllerCopy = controller;
    v5 = [(InsightsCalendarDetailTabView.ViewControllerType *)selfCopy contentScrollViewForEdge:1];
    [controllerCopy setContentScrollView:v5 forEdge:1];

    v6 = [(InsightsCalendarDetailTabView.ViewControllerType *)selfCopy contentScrollViewForEdge:4];
    [controllerCopy setContentScrollView:v6 forEdge:4];
  }
}

- (void)setContentScrollView:(id)view forEdge:(unint64_t)edge
{
  viewCopy = view;
  selfCopy = self;
  sub_1008B2328(view, edge);
}

- (_TtCV7Journal29InsightsCalendarDetailTabView18ViewControllerType)initWithTransitionStyle:(int64_t)style navigationOrientation:(int64_t)orientation options:(id)options
{
  isa = options;
  if (options)
  {
    type metadata accessor for OptionsKey(0);
    sub_1008B3D7C(&qword_100AF7160, type metadata accessor for OptionsKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for InsightsCalendarDetailTabView.ViewControllerType();
  v9 = [(InsightsCalendarDetailTabView.ViewControllerType *)&v11 initWithTransitionStyle:style navigationOrientation:orientation options:isa];

  return v9;
}

- (_TtCV7Journal29InsightsCalendarDetailTabView18ViewControllerType)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for InsightsCalendarDetailTabView.ViewControllerType();
  coderCopy = coder;
  v5 = [(InsightsCalendarDetailTabView.ViewControllerType *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end