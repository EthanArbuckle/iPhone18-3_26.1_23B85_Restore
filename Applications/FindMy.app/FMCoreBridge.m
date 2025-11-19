@interface FMCoreBridge
+ (id)displayNameFor:(id)a3;
- (_TtC6FindMy12FMCoreBridge)init;
@end

@implementation FMCoreBridge

+ (id)displayNameFor:(id)a3
{
  type metadata accessor for FMFCoreHelper();
  v4 = a3;
  static FMFCoreHelper.displayName(for:)();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (_TtC6FindMy12FMCoreBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMCoreBridge();
  return [(FMCoreBridge *)&v3 init];
}

@end