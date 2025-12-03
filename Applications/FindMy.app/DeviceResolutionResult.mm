@interface DeviceResolutionResult
+ (id)confirmationRequiredWithDeviceToConfirm:(id)confirm;
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)disambiguationWithDevicesToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedDevice:(id)device;
+ (id)successWithResolvedObject:(id)object;
- (DeviceResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation DeviceResolutionResult

+ (id)successWithResolvedDevice:(id)device
{
  swift_getObjCClassMetadata();
  deviceCopy = device;
  v5 = static DeviceResolutionResult.success(with:)(deviceCopy);

  return v5;
}

+ (id)disambiguationWithDevicesToDisambiguate:(id)disambiguate
{
  type metadata accessor for Device();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v4 = static DeviceResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithDeviceToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static DeviceResolutionResult.confirmationRequired(with:)(confirm);

  return v5;
}

+ (id)successWithResolvedObject:(id)object
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (DeviceResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  intentCopy = intent;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for DeviceResolutionResult();
  v8 = [(DeviceResolutionResult *)&v10 initWithJSONDictionary:isa forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end