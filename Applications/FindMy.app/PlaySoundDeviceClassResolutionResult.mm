@interface PlaySoundDeviceClassResolutionResult
+ (id)confirmationRequiredWithPlaySoundDeviceClassToConfirm:(int64_t)a3;
+ (id)successWithResolvedPlaySoundDeviceClass:(int64_t)a3;
- (PlaySoundDeviceClassResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation PlaySoundDeviceClassResolutionResult

+ (id)successWithResolvedPlaySoundDeviceClass:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static PlaySoundDeviceClassResolutionResult.success(with:)(a3);

  return v4;
}

+ (id)confirmationRequiredWithPlaySoundDeviceClassToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static PlaySoundDeviceClassResolutionResult.confirmationRequired(with:)(a3);

  return v4;
}

- (PlaySoundDeviceClassResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a4;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for PlaySoundDeviceClassResolutionResult();
  v8 = [(PlaySoundDeviceClassResolutionResult *)&v10 initWithJSONDictionary:isa forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end