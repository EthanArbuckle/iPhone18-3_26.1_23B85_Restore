@interface MFIntentAccountResolutionResult
+ (id)confirmationRequiredWithMFIntentAccountToConfirm:(id)confirm;
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)disambiguationWithMFIntentAccountsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedMFIntentAccount:(id)account;
+ (id)successWithResolvedObject:(id)object;
- (MFIntentAccountResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation MFIntentAccountResolutionResult

+ (id)successWithResolvedMFIntentAccount:(id)account
{
  swift_getObjCClassMetadata();
  _objc_retain(account);
  swift_getObjCClassMetadata();
  v5 = static MFIntentAccountResolutionResult.success(with:)(account);
  _objc_release(account);

  return v5;
}

+ (id)disambiguationWithMFIntentAccountsToDisambiguate:(id)disambiguate
{
  swift_getObjCClassMetadata();
  _objc_retain(disambiguate);
  type metadata accessor for MFIntentAccount();
  v4 = sub_10007D9A8();
  swift_getObjCClassMetadata();
  v6 = static MFIntentAccountResolutionResult.disambiguation(with:)(v4);

  _objc_release(disambiguate);

  return v6;
}

+ (id)confirmationRequiredWithMFIntentAccountToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  _objc_retain(confirm);
  swift_getObjCClassMetadata();
  v5 = static MFIntentAccountResolutionResult.confirmationRequired(with:)(confirm);
  _objc_release(confirm);

  return v5;
}

+ (id)successWithResolvedObject:(id)object
{
  swift_getObjCClassMetadata();
  _objc_retain(object);
  swift_getObjCClassMetadata();
  static MFIntentAccountResolutionResult.success(with:)();
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  swift_getObjCClassMetadata();
  _objc_retain(disambiguate);
  sub_10007B394();
  sub_10007D9A8();
  swift_getObjCClassMetadata();
  static MFIntentAccountResolutionResult.disambiguation(with:)();
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  _objc_retain(confirm);
  swift_getObjCClassMetadata();
  static MFIntentAccountResolutionResult.confirmationRequired(with:)();
}

- (MFIntentAccountResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  _objc_retain(dictionary);
  _objc_retain(intent);
  v4 = sub_10007D7D8();
  v8 = MFIntentAccountResolutionResult.init(JSONDictionary:intent:)(v4, intent);
  _objc_release(dictionary);
  return v8;
}

@end