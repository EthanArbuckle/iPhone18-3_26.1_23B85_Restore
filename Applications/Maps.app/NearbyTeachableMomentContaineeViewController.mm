@interface NearbyTeachableMomentContaineeViewController
+ (BOOL)hasShownTeachableMoment;
+ (void)hasDisplayedNearbyCard;
- (_TtC4Maps44NearbyTeachableMomentContaineeViewController)initWithTeachableMomentConfiguration:(id)configuration;
@end

@implementation NearbyTeachableMomentContaineeViewController

+ (BOOL)hasShownTeachableMoment
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [standardUserDefaults BOOLForKey:v3];

  return v4;
}

- (_TtC4Maps44NearbyTeachableMomentContaineeViewController)initWithTeachableMomentConfiguration:(id)configuration
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (void)hasDisplayedNearbyCard
{
  v0 = objc_opt_self();
  standardUserDefaults = [v0 standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [standardUserDefaults integerForKey:v2];

  if (v3 <= 3)
  {
    standardUserDefaults2 = [v0 standardUserDefaults];
    v5 = String._bridgeToObjectiveC()();
    [standardUserDefaults2 setInteger:v3 + 1 forKey:v5];
  }
}

@end