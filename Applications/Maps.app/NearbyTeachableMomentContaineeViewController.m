@interface NearbyTeachableMomentContaineeViewController
+ (BOOL)hasShownTeachableMoment;
+ (void)hasDisplayedNearbyCard;
- (_TtC4Maps44NearbyTeachableMomentContaineeViewController)initWithTeachableMomentConfiguration:(id)a3;
@end

@implementation NearbyTeachableMomentContaineeViewController

+ (BOOL)hasShownTeachableMoment
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 BOOLForKey:v3];

  return v4;
}

- (_TtC4Maps44NearbyTeachableMomentContaineeViewController)initWithTeachableMomentConfiguration:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (void)hasDisplayedNearbyCard
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 integerForKey:v2];

  if (v3 <= 3)
  {
    v4 = [v0 standardUserDefaults];
    v5 = String._bridgeToObjectiveC()();
    [v4 setInteger:v3 + 1 forKey:v5];
  }
}

@end