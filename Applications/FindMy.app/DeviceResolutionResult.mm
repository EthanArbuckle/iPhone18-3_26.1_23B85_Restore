@interface DeviceResolutionResult
+ (id)confirmationRequiredWithDeviceToConfirm:(id)a3;
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)disambiguationWithDevicesToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedDevice:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
- (DeviceResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation DeviceResolutionResult

+ (id)successWithResolvedDevice:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static DeviceResolutionResult.success(with:)(v4);

  return v5;
}

+ (id)disambiguationWithDevicesToDisambiguate:(id)a3
{
  type metadata accessor for Device();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v4 = static DeviceResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithDeviceToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static DeviceResolutionResult.confirmationRequired(with:)(a3);

  return v5;
}

+ (id)successWithResolvedObject:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (DeviceResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a4;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for DeviceResolutionResult();
  v8 = [(DeviceResolutionResult *)&v10 initWithJSONDictionary:isa forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end