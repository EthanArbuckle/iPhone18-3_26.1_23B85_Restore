@interface MFIntentMailboxKindResolutionResult
+ (id)confirmationRequiredWithMFIntentMailboxKindToConfirm:(int64_t)a3;
+ (id)successWithResolvedMFIntentMailboxKind:(int64_t)a3;
- (MFIntentMailboxKindResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation MFIntentMailboxKindResolutionResult

+ (id)successWithResolvedMFIntentMailboxKind:(int64_t)a3
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v3 = static MFIntentMailboxKindResolutionResult.success(with:)();

  return v3;
}

+ (id)confirmationRequiredWithMFIntentMailboxKindToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v3 = static MFIntentMailboxKindResolutionResult.confirmationRequired(with:)();

  return v3;
}

- (MFIntentMailboxKindResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  _objc_retain(a3);
  _objc_retain(a4);
  v4 = sub_10007D7D8();
  v8 = MFIntentMailboxKindResolutionResult.init(JSONDictionary:intent:)(v4, a4);
  _objc_release(a3);
  return v8;
}

@end