@interface CHWorkoutRouteViewController
- (CHWorkoutRouteViewController)initWithLocationReadings:(id)a3 title:(id)a4 sharingEnabled:(BOOL)a5 shareText:(id)a6 excludedActivityTypes:(id)a7;
- (CHWorkoutRouteViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)activityViewControllerLinkMetadata:(id)a3;
- (id)activityViewControllerPlaceholderItem:(id)a3;
- (id)mapView:(id)a3 rendererForOverlay:(id)a4;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (void)reportProblem;
- (void)shareButtonPressed;
- (void)toggleMapType;
- (void)updateLocationReadings:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation CHWorkoutRouteViewController

- (CHWorkoutRouteViewController)initWithLocationReadings:(id)a3 title:(id)a4 sharingEnabled:(BOOL)a5 shareText:(id)a6 excludedActivityTypes:(id)a7
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  type metadata accessor for ActivityType(0);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_1002F145C(a3, v9, v11, a5, v12, v14, v15);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1002F1728(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for WorkoutRouteViewController();
  v4 = v8.receiver;
  [(CHWorkoutRouteViewController *)&v8 viewWillDisappear:v3];
  v5 = [v4 tabBarController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 tabBar];

    [v7 setScrollEdgeAppearance:0];
  }
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1002F1944();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1002F1C68();
}

- (void)shareButtonPressed
{
  v2 = self;
  sub_1002F203C();
}

- (void)toggleMapType
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR___CHWorkoutRouteViewController_mapView);
  v4 = self;
  if ([v2 mapType] == 5)
  {
    v3 = 1;
  }

  else
  {
    v3 = 5;
  }

  sub_1002F2450(v3);
}

- (void)reportProblem
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR___CHWorkoutRouteViewController_mapView);
  v10 = self;
  [v2 centerCoordinate];
  v4 = v3;
  v6 = v5;
  v7 = [*(&v10->super.super.super.isa + OBJC_IVAR___CHWorkoutRouteViewController_workout) trackId];
  v8 = objc_allocWithZone(type metadata accessor for WorkoutDetailedBasicViewController());
  v9 = sub_1002D0F68(v7, v4, v6);

  [(CHWorkoutRouteViewController *)v10 presentViewController:v9 animated:1 completion:0];
}

- (CHWorkoutRouteViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)mapView:(id)a3 rendererForOverlay:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_1002F3A44(a4);

  swift_unknownObjectRelease();

  return v8;
}

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_1002F3C34(a4);

  swift_unknownObjectRelease();

  return v8;
}

- (id)activityViewControllerPlaceholderItem:(id)a3
{
  v3 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();

  return v3;
}

- (id)activityViewControllerLinkMetadata:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1002F3D4C();

  return v6;
}

- (void)updateLocationReadings:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002F3764(v4);
}

@end