@interface HKWorkout
+ (id)kTrackTrackIdentifierMetadataKey;
- (BOOL)didWinRace;
- (BOOL)hasChartableMetrics;
- (BOOL)isFirstPartyWorkout;
- (BOOL)isIntervalWorkout;
- (BOOL)isPacerWorkout;
- (BOOL)isRaceWorkout;
- (BOOL)isTrackWorkout;
- (BOOL)serializedConfigurationContainsRoute;
- (BOOL)shouldShowRaceResults;
- (BOOL)shouldUseCircularGradientImage;
- (BOOL)supportsTrackWorkout;
- (BOOL)wasUserEntered;
- (NSArray)downhillRunEventsBridge;
- (NSData)serializedConfigurationRouteSnapshotData;
- (NSNumber)trackId;
- (NSString)formattedCreationDate;
- (double)elapsedTime;
- (double)raceTime;
- (double)raceWorkoutDisplayDistance;
- (double)raceWorkoutReferencePace;
- (id)displayDetail:(id)a3;
- (id)expectedIntervalDistanceForStepKeyPath:(id)a3;
- (id)expectedIntervalDurationForStepKeyPath:(id)a3;
- (id)requiredDistanceForIntervalTimeGoalForStepKeyPath:(id)a3;
- (id)serializedConfigurationDataIncludingRoute:(BOOL)a3;
- (id)serializedConfigurationWithEmbedding:(id)a3 snapshot:(id)a4;
- (void)makeDownhillRunBridgesWithHealthStore:(id)a3 completion:(id)a4;
@end

@implementation HKWorkout

- (void)makeDownhillRunBridgesWithHealthStore:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10032D920;
  *(v8 + 24) = v7;
  v9 = a3;
  v10 = self;

  HKWorkout.makeDownhillRuns(healthStore:completion:)();
}

- (NSArray)downhillRunEventsBridge
{
  v2 = self;
  v3 = [(HKWorkout *)v2 downhillRunEvents];
  if (v3)
  {
    v4 = v3;
    sub_10014573C();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {

    v5.super.isa = 0;
  }

  return v5.super.isa;
}

+ (id)kTrackTrackIdentifierMetadataKey
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (BOOL)hasChartableMetrics
{
  v2 = self;
  v3 = [(HKWorkout *)v2 fiui_activityType];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1005D6348();

    v6 = v5[2];

    LOBYTE(v3) = v6 != 0;
  }

  else
  {
    __break(1u);
  }

  return v3;
}

- (double)elapsedTime
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v10 = self;
  v11 = [(HKWorkout *)v10 endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = [(HKWorkout *)v10 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSince(_:)();
  v14 = v13;

  v15 = *(v4 + 8);
  v15(v6, v3);
  v15(v9, v3);
  return v14;
}

- (BOOL)shouldUseCircularGradientImage
{
  v2 = self;
  v3 = sub_1003AC468();

  return v3 & 1;
}

- (BOOL)isIntervalWorkout
{
  v2 = self;
  v3 = sub_1003AC770();

  return v3;
}

- (BOOL)isRaceWorkout
{
  v2 = self;
  v3 = sub_1003AD450(&enum case for ConfigurationType.race(_:));

  return v3 & 1;
}

- (BOOL)shouldShowRaceResults
{
  v2 = self;
  v3 = sub_1003ACD8C();

  return v3;
}

- (double)raceTime
{
  v2 = self;
  v3 = sub_1003ACF7C();

  return v3;
}

- (BOOL)didWinRace
{
  v2 = self;
  v3 = sub_1003AD280();

  return v3;
}

- (BOOL)isPacerWorkout
{
  v2 = self;
  v3 = sub_1003AD450(&enum case for ConfigurationType.pacer(_:));

  return v3 & 1;
}

- (double)raceWorkoutReferencePace
{
  v2 = self;
  v3 = sub_1003ADA48(&RaceWorkoutConfiguration.referenceRouteAveragePace.getter);

  return v3;
}

- (double)raceWorkoutDisplayDistance
{
  v2 = self;
  v3 = sub_1003ADA48(&RaceWorkoutConfiguration.lastWorkoutDistance.getter);

  return v3;
}

- (BOOL)isFirstPartyWorkout
{
  v2 = self;
  v3 = sub_1003ADB9C();

  return v3 & 1;
}

- (BOOL)supportsTrackWorkout
{
  v2 = self;
  v3 = sub_1003ADCA4();

  return v3 & 1;
}

- (BOOL)isTrackWorkout
{
  v2 = self;
  if ([(HKWorkout *)v2 supportsTrackWorkout])
  {
    v3 = [(HKWorkout *)v2 trackId];

    if (!v3)
    {
      return 0;
    }

    v4 = 1;
    v2 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSNumber)trackId
{
  v2 = self;
  v3 = sub_1003ADE34();

  return v3;
}

- (id)serializedConfigurationDataIncludingRoute:(BOOL)a3
{
  v4 = self;
  v5 = sub_1003ADF34(a3);
  v7 = v6;

  if (v7 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100145150(v5, v7);
    v8 = isa;
  }

  return v8;
}

- (BOOL)serializedConfigurationContainsRoute
{
  v2 = self;
  v3 = sub_1003AE168();

  return v3 & 1;
}

- (NSData)serializedConfigurationRouteSnapshotData
{
  v2 = self;
  v3 = sub_1003AE38C();
  v5 = v4;

  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100145150(v3, v5);
    v6 = isa;
  }

  return v6;
}

- (id)serializedConfigurationWithEmbedding:(id)a3 snapshot:(id)a4
{
  v4 = a4;
  if (a4)
  {
    v7 = a3;
    v8 = self;
    v9 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v12 = a3;
    v13 = self;
    v11 = 0xF000000000000000;
  }

  v14 = sub_1003AE504(a3, v4, v11);
  v16 = v15;
  sub_100145150(v4, v11);

  if (v16 >> 60 == 15)
  {
    v17 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100145150(v14, v16);
    v17 = isa;
  }

  return v17;
}

- (BOOL)wasUserEntered
{
  v2 = self;
  v3 = sub_1003AEA88();

  return v3 & 1;
}

- (NSString)formattedCreationDate
{
  v18 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v3 = *(v18 - 8);
  __chkstk_darwin(v18);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Date.FormatStyle.DateStyle();
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = self;
  v14 = [(HKWorkout *)v13 _creationDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  static Date.FormatStyle.DateStyle.abbreviated.getter();
  static Date.FormatStyle.TimeStyle.omitted.getter();
  Date.formatted(date:time:)();

  (*(v3 + 8))(v5, v18);
  (*(v6 + 8))(v8, v17);
  (*(v10 + 8))(v12, v9);
  v15 = String._bridgeToObjectiveC()();

  return v15;
}

- (id)displayDetail:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003AEE14(v4);
  v7 = v6;

  if (v7)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)expectedIntervalDistanceForStepKeyPath:(id)a3
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = self;
  v9 = [(HKWorkout *)v8 requiredDistanceForIntervalTimeGoalForStepKeyPath:a3];
  if (!v9)
  {
    v9 = sub_1003AFB2C(v5, v7, 1);
  }

  v10 = v9;

  return v10;
}

- (id)expectedIntervalDurationForStepKeyPath:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8 = sub_1003AFB2C(v4, v6, 2);

  return v8;
}

- (id)requiredDistanceForIntervalTimeGoalForStepKeyPath:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  v5 = sub_1003AFF4C();

  return v5;
}

@end