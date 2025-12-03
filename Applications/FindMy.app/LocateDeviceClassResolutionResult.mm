@interface LocateDeviceClassResolutionResult
+ (id)confirmationRequiredWithLocateDeviceClassToConfirm:(int64_t)confirm;
+ (id)successWithResolvedLocateDeviceClass:(int64_t)class;
- (LocateDeviceClassResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation LocateDeviceClassResolutionResult

+ (id)successWithResolvedLocateDeviceClass:(int64_t)class
{
  swift_getObjCClassMetadata();
  v4 = static PlaySoundDeviceClassResolutionResult.success(with:)(class);

  return v4;
}

+ (id)confirmationRequiredWithLocateDeviceClassToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = static PlaySoundDeviceClassResolutionResult.confirmationRequired(with:)(confirm);

  return v4;
}

- (LocateDeviceClassResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  intentCopy = intent;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for LocateDeviceClassResolutionResult();
  v8 = [(LocateDeviceClassResolutionResult *)&v10 initWithJSONDictionary:isa forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end