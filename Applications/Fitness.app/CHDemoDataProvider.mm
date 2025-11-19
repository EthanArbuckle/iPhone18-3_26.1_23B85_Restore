@interface CHDemoDataProvider
- (BOOL)hasDemoWorkouts;
- (CHDemoDataProvider)init;
- (NSArray)workouts;
@end

@implementation CHDemoDataProvider

- (CHDemoDataProvider)init
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  v7 = static DemoUtilities.fetchWorkouts(startingDate:)();
  (*(v4 + 8))(v6, v3);
  *(self + OBJC_IVAR___CHDemoDataProvider_workouts) = v7;
  v8 = type metadata accessor for DemoDataProvider();
  v10.receiver = self;
  v10.super_class = v8;
  return [(CHDemoDataProvider *)&v10 init];
}

- (BOOL)hasDemoWorkouts
{
  v2 = *(self + OBJC_IVAR___CHDemoDataProvider_workouts);
  if (v2)
  {
    if (v2 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        return 1;
      }
    }

    else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return 1;
    }
  }

  return 0;
}

- (NSArray)workouts
{
  if (*(self + OBJC_IVAR___CHDemoDataProvider_workouts))
  {
    sub_100289C9C();

    v2.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  return v2.super.isa;
}

@end