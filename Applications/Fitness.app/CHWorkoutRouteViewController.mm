@interface CHWorkoutRouteViewController
- (CHWorkoutRouteViewController)initWithLocationReadings:(id)readings title:(id)title sharingEnabled:(BOOL)enabled shareText:(id)text excludedActivityTypes:(id)types;
- (CHWorkoutRouteViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)activityViewControllerLinkMetadata:(id)metadata;
- (id)activityViewControllerPlaceholderItem:(id)item;
- (id)mapView:(id)view rendererForOverlay:(id)overlay;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (void)reportProblem;
- (void)shareButtonPressed;
- (void)toggleMapType;
- (void)updateLocationReadings:(id)readings;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation CHWorkoutRouteViewController

- (CHWorkoutRouteViewController)initWithLocationReadings:(id)readings title:(id)title sharingEnabled:(BOOL)enabled shareText:(id)text excludedActivityTypes:(id)types
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  type metadata accessor for ActivityType(0);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_1002F145C(readings, v9, v11, enabled, v12, v14, v15);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1002F1728(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = type metadata accessor for WorkoutRouteViewController();
  v4 = v8.receiver;
  [(CHWorkoutRouteViewController *)&v8 viewWillDisappear:disappearCopy];
  tabBarController = [v4 tabBarController];
  if (tabBarController)
  {
    v6 = tabBarController;
    tabBar = [tabBarController tabBar];

    [tabBar setScrollEdgeAppearance:0];
  }
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1002F1944();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1002F1C68();
}

- (void)shareButtonPressed
{
  selfCopy = self;
  sub_1002F203C();
}

- (void)toggleMapType
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR___CHWorkoutRouteViewController_mapView);
  selfCopy = self;
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
  selfCopy = self;
  [v2 centerCoordinate];
  v4 = v3;
  v6 = v5;
  trackId = [*(&selfCopy->super.super.super.isa + OBJC_IVAR___CHWorkoutRouteViewController_workout) trackId];
  v8 = objc_allocWithZone(type metadata accessor for WorkoutDetailedBasicViewController());
  v9 = sub_1002D0F68(trackId, v4, v6);

  [(CHWorkoutRouteViewController *)selfCopy presentViewController:v9 animated:1 completion:0];
}

- (CHWorkoutRouteViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)mapView:(id)view rendererForOverlay:(id)overlay
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_1002F3A44(overlay);

  swift_unknownObjectRelease();

  return v8;
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_1002F3C34(annotation);

  swift_unknownObjectRelease();

  return v8;
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  v3 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();

  return v3;
}

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  metadataCopy = metadata;
  selfCopy = self;
  v6 = sub_1002F3D4C();

  return v6;
}

- (void)updateLocationReadings:(id)readings
{
  readingsCopy = readings;
  selfCopy = self;
  sub_1002F3764(readingsCopy);
}

@end