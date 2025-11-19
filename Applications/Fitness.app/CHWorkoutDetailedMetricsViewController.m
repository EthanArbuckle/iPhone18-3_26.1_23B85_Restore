@interface CHWorkoutDetailedMetricsViewController
- (CHWorkoutDetailedMetricsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (CHWorkoutDetailedMetricsViewController)initWithWorkout:(id)a3 workoutActivity:(id)a4 dataCalculator:(id)a5 formattingManager:(id)a6 locationReadings:(id)a7;
- (id)mapView:(id)a3 rendererForOverlay:(id)a4;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (void)durationChanged:(id)a3;
- (void)updateLocationReadings:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CHWorkoutDetailedMetricsViewController

- (CHWorkoutDetailedMetricsViewController)initWithWorkout:(id)a3 workoutActivity:(id)a4 dataCalculator:(id)a5 formattingManager:(id)a6 locationReadings:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = sub_100640EF4(v11, a4, v13, v14, v15);

  return v16;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10063C484();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10063CBC8(a3);
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

- (void)durationChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10063F280(v4);
}

- (CHWorkoutDetailedMetricsViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  v8 = sub_1006423D0(a4);

  swift_unknownObjectRelease();

  return v8;
}

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v4 = [objc_allocWithZone(type metadata accessor for WorkoutLocationAnnotationView()) initWithAnnotation:a4 reuseIdentifier:0];

  return v4;
}

- (void)updateLocationReadings:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1006408F0(v4);
}

@end