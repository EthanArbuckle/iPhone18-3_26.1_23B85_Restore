@interface InsightsCalendarDetailTabView.ViewControllerType
- (_TtCV7Journal29InsightsCalendarDetailTabView18ViewControllerType)initWithCoder:(id)a3;
- (_TtCV7Journal29InsightsCalendarDetailTabView18ViewControllerType)initWithTransitionStyle:(int64_t)a3 navigationOrientation:(int64_t)a4 options:(id)a5;
- (void)didMoveToParentViewController:(id)a3;
- (void)setContentScrollView:(id)a3 forEdge:(unint64_t)a4;
@end

@implementation InsightsCalendarDetailTabView.ViewControllerType

- (void)didMoveToParentViewController:(id)a3
{
  if (a3)
  {
    v7 = self;
    v4 = a3;
    v5 = [(InsightsCalendarDetailTabView.ViewControllerType *)v7 contentScrollViewForEdge:1];
    [v4 setContentScrollView:v5 forEdge:1];

    v6 = [(InsightsCalendarDetailTabView.ViewControllerType *)v7 contentScrollViewForEdge:4];
    [v4 setContentScrollView:v6 forEdge:4];
  }
}

- (void)setContentScrollView:(id)a3 forEdge:(unint64_t)a4
{
  v7 = a3;
  v8 = self;
  sub_1008B2328(a3, a4);
}

- (_TtCV7Journal29InsightsCalendarDetailTabView18ViewControllerType)initWithTransitionStyle:(int64_t)a3 navigationOrientation:(int64_t)a4 options:(id)a5
{
  isa = a5;
  if (a5)
  {
    type metadata accessor for OptionsKey(0);
    sub_1008B3D7C(&qword_100AF7160, type metadata accessor for OptionsKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for InsightsCalendarDetailTabView.ViewControllerType();
  v9 = [(InsightsCalendarDetailTabView.ViewControllerType *)&v11 initWithTransitionStyle:a3 navigationOrientation:a4 options:isa];

  return v9;
}

- (_TtCV7Journal29InsightsCalendarDetailTabView18ViewControllerType)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for InsightsCalendarDetailTabView.ViewControllerType();
  v4 = a3;
  v5 = [(InsightsCalendarDetailTabView.ViewControllerType *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end