@interface MFIntentMailboxKindResolutionResult
+ (id)confirmationRequiredWithMFIntentMailboxKindToConfirm:(int64_t)confirm;
+ (id)successWithResolvedMFIntentMailboxKind:(int64_t)kind;
- (MFIntentMailboxKindResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation MFIntentMailboxKindResolutionResult

+ (id)successWithResolvedMFIntentMailboxKind:(int64_t)kind
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v3 = static MFIntentMailboxKindResolutionResult.success(with:)();

  return v3;
}

+ (id)confirmationRequiredWithMFIntentMailboxKindToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v3 = static MFIntentMailboxKindResolutionResult.confirmationRequired(with:)();

  return v3;
}

- (MFIntentMailboxKindResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  _objc_retain(dictionary);
  _objc_retain(intent);
  v4 = sub_10007D7D8();
  v8 = MFIntentMailboxKindResolutionResult.init(JSONDictionary:intent:)(v4, intent);
  _objc_release(dictionary);
  return v8;
}

@end