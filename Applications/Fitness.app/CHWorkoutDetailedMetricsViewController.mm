@interface CHWorkoutDetailedMetricsViewController
- (CHWorkoutDetailedMetricsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CHWorkoutDetailedMetricsViewController)initWithWorkout:(id)workout workoutActivity:(id)activity dataCalculator:(id)calculator formattingManager:(id)manager locationReadings:(id)readings;
- (id)mapView:(id)view rendererForOverlay:(id)overlay;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (void)durationChanged:(id)changed;
- (void)updateLocationReadings:(id)readings;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CHWorkoutDetailedMetricsViewController

- (CHWorkoutDetailedMetricsViewController)initWithWorkout:(id)workout workoutActivity:(id)activity dataCalculator:(id)calculator formattingManager:(id)manager locationReadings:(id)readings
{
  workoutCopy = workout;
  activityCopy = activity;
  calculatorCopy = calculator;
  managerCopy = manager;
  readingsCopy = readings;
  v16 = sub_100640EF4(workoutCopy, activity, calculatorCopy, managerCopy, readingsCopy);

  return v16;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10063C484();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10063CBC8(appear);
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for WorkoutDetailedMetricsViewController();
  v2 = v5.receiver;
  [(CHWorkoutDetailedMetricsViewController *)&v5 viewDidLayoutSubviews];
  v3 = *&v2[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_mapView];
  v4 = *&v2[OBJC_IVAR___CHWorkoutDetailedMetricsViewController_mapGradientView];
  [v3 bounds];
  [v4 setFrame:?];
}

- (void)durationChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_10063F280(changedCopy);
}

- (CHWorkoutDetailedMetricsViewController)initWithNibName:(id)name bundle:(id)bundle
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
  v8 = sub_1006423D0(overlay);

  swift_unknownObjectRelease();

  return v8;
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  v4 = [objc_allocWithZone(type metadata accessor for WorkoutLocationAnnotationView()) initWithAnnotation:annotation reuseIdentifier:0];

  return v4;
}

- (void)updateLocationReadings:(id)readings
{
  readingsCopy = readings;
  selfCopy = self;
  sub_1006408F0(readingsCopy);
}

@end