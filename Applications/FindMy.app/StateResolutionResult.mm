@interface StateResolutionResult
+ (id)confirmationRequiredWithStateToConfirm:(int64_t)confirm;
+ (id)successWithResolvedState:(int64_t)state;
- (StateResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation StateResolutionResult

+ (id)successWithResolvedState:(int64_t)state
{
  swift_getObjCClassMetadata();
  v4 = static PlaySoundDeviceClassResolutionResult.success(with:)(state);

  return v4;
}

+ (id)confirmationRequiredWithStateToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = static PlaySoundDeviceClassResolutionResult.confirmationRequired(with:)(confirm);

  return v4;
}

- (StateResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  intentCopy = intent;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for StateResolutionResult();
  v8 = [(StateResolutionResult *)&v10 initWithJSONDictionary:isa forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end