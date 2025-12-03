@interface PlaySoundDeviceClassResolutionResult
+ (id)confirmationRequiredWithPlaySoundDeviceClassToConfirm:(int64_t)confirm;
+ (id)successWithResolvedPlaySoundDeviceClass:(int64_t)class;
- (PlaySoundDeviceClassResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation PlaySoundDeviceClassResolutionResult

+ (id)successWithResolvedPlaySoundDeviceClass:(int64_t)class
{
  swift_getObjCClassMetadata();
  v4 = static PlaySoundDeviceClassResolutionResult.success(with:)(class);

  return v4;
}

+ (id)confirmationRequiredWithPlaySoundDeviceClassToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = static PlaySoundDeviceClassResolutionResult.confirmationRequired(with:)(confirm);

  return v4;
}

- (PlaySoundDeviceClassResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  intentCopy = intent;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for PlaySoundDeviceClassResolutionResult();
  v8 = [(PlaySoundDeviceClassResolutionResult *)&v10 initWithJSONDictionary:isa forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end