@interface LocateDeviceClassResolutionResult
+ (id)confirmationRequiredWithLocateDeviceClassToConfirm:(int64_t)a3;
+ (id)successWithResolvedLocateDeviceClass:(int64_t)a3;
- (LocateDeviceClassResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation LocateDeviceClassResolutionResult

+ (id)successWithResolvedLocateDeviceClass:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static PlaySoundDeviceClassResolutionResult.success(with:)(a3);

  return v4;
}

+ (id)confirmationRequiredWithLocateDeviceClassToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static PlaySoundDeviceClassResolutionResult.confirmationRequired(with:)(a3);

  return v4;
}

- (LocateDeviceClassResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a4;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for LocateDeviceClassResolutionResult();
  v8 = [(LocateDeviceClassResolutionResult *)&v10 initWithJSONDictionary:isa forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end