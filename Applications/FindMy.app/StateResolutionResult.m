@interface StateResolutionResult
+ (id)confirmationRequiredWithStateToConfirm:(int64_t)a3;
+ (id)successWithResolvedState:(int64_t)a3;
- (StateResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation StateResolutionResult

+ (id)successWithResolvedState:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static PlaySoundDeviceClassResolutionResult.success(with:)(a3);

  return v4;
}

+ (id)confirmationRequiredWithStateToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static PlaySoundDeviceClassResolutionResult.confirmationRequired(with:)(a3);

  return v4;
}

- (StateResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a4;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for StateResolutionResult();
  v8 = [(StateResolutionResult *)&v10 initWithJSONDictionary:isa forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end