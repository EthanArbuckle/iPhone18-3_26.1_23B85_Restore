@interface MFIntentMailboxResolutionResult
+ (id)confirmationRequiredWithMFIntentMailboxToConfirm:(id)a3;
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)disambiguationWithMFIntentMailboxsToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedMFIntentMailbox:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
- (MFIntentMailboxResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation MFIntentMailboxResolutionResult

+ (id)successWithResolvedMFIntentMailbox:(id)a3
{
  swift_getObjCClassMetadata();
  _objc_retain(a3);
  swift_getObjCClassMetadata();
  v5 = static MFIntentMailboxResolutionResult.success(with:)(a3);
  _objc_release(a3);

  return v5;
}

+ (id)disambiguationWithMFIntentMailboxsToDisambiguate:(id)a3
{
  swift_getObjCClassMetadata();
  _objc_retain(a3);
  type metadata accessor for MFIntentMailbox();
  v4 = sub_10007D9A8();
  swift_getObjCClassMetadata();
  v6 = static MFIntentMailboxResolutionResult.disambiguation(with:)(v4);

  _objc_release(a3);

  return v6;
}

+ (id)confirmationRequiredWithMFIntentMailboxToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  _objc_retain(a3);
  swift_getObjCClassMetadata();
  v5 = static MFIntentMailboxResolutionResult.confirmationRequired(with:)(a3);
  _objc_release(a3);

  return v5;
}

+ (id)successWithResolvedObject:(id)a3
{
  swift_getObjCClassMetadata();
  _objc_retain(a3);
  swift_getObjCClassMetadata();
  static MFIntentMailboxResolutionResult.success(with:)();
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  swift_getObjCClassMetadata();
  _objc_retain(a3);
  sub_10007B394();
  sub_10007D9A8();
  swift_getObjCClassMetadata();
  static MFIntentMailboxResolutionResult.disambiguation(with:)();
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  _objc_retain(a3);
  swift_getObjCClassMetadata();
  static MFIntentMailboxResolutionResult.confirmationRequired(with:)();
}

- (MFIntentMailboxResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  _objc_retain(a3);
  _objc_retain(a4);
  v4 = sub_10007D7D8();
  v8 = MFIntentMailboxResolutionResult.init(JSONDictionary:intent:)(v4, a4);
  _objc_release(a3);
  return v8;
}

@end