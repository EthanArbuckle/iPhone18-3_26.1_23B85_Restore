@interface MFIntentAccountResolutionResult
+ (id)confirmationRequiredWithMFIntentAccountToConfirm:(id)a3;
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)disambiguationWithMFIntentAccountsToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedMFIntentAccount:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
- (MFIntentAccountResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation MFIntentAccountResolutionResult

+ (id)successWithResolvedMFIntentAccount:(id)a3
{
  swift_getObjCClassMetadata();
  _objc_retain(a3);
  swift_getObjCClassMetadata();
  v5 = static MFIntentAccountResolutionResult.success(with:)(a3);
  _objc_release(a3);

  return v5;
}

+ (id)disambiguationWithMFIntentAccountsToDisambiguate:(id)a3
{
  swift_getObjCClassMetadata();
  _objc_retain(a3);
  type metadata accessor for MFIntentAccount();
  v4 = sub_10007D9A8();
  swift_getObjCClassMetadata();
  v6 = static MFIntentAccountResolutionResult.disambiguation(with:)(v4);

  _objc_release(a3);

  return v6;
}

+ (id)confirmationRequiredWithMFIntentAccountToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  _objc_retain(a3);
  swift_getObjCClassMetadata();
  v5 = static MFIntentAccountResolutionResult.confirmationRequired(with:)(a3);
  _objc_release(a3);

  return v5;
}

+ (id)successWithResolvedObject:(id)a3
{
  swift_getObjCClassMetadata();
  _objc_retain(a3);
  swift_getObjCClassMetadata();
  static MFIntentAccountResolutionResult.success(with:)();
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  swift_getObjCClassMetadata();
  _objc_retain(a3);
  sub_10007B394();
  sub_10007D9A8();
  swift_getObjCClassMetadata();
  static MFIntentAccountResolutionResult.disambiguation(with:)();
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  _objc_retain(a3);
  swift_getObjCClassMetadata();
  static MFIntentAccountResolutionResult.confirmationRequired(with:)();
}

- (MFIntentAccountResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  _objc_retain(a3);
  _objc_retain(a4);
  v4 = sub_10007D7D8();
  v8 = MFIntentAccountResolutionResult.init(JSONDictionary:intent:)(v4, a4);
  _objc_release(a3);
  return v8;
}

@end