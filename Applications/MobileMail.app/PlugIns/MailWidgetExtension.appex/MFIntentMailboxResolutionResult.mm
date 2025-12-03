@interface MFIntentMailboxResolutionResult
+ (id)confirmationRequiredWithMFIntentMailboxToConfirm:(id)confirm;
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)disambiguationWithMFIntentMailboxsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedMFIntentMailbox:(id)mailbox;
+ (id)successWithResolvedObject:(id)object;
- (MFIntentMailboxResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation MFIntentMailboxResolutionResult

+ (id)successWithResolvedMFIntentMailbox:(id)mailbox
{
  swift_getObjCClassMetadata();
  _objc_retain(mailbox);
  swift_getObjCClassMetadata();
  v5 = static MFIntentMailboxResolutionResult.success(with:)(mailbox);
  _objc_release(mailbox);

  return v5;
}

+ (id)disambiguationWithMFIntentMailboxsToDisambiguate:(id)disambiguate
{
  swift_getObjCClassMetadata();
  _objc_retain(disambiguate);
  type metadata accessor for MFIntentMailbox();
  v4 = sub_10007D9A8();
  swift_getObjCClassMetadata();
  v6 = static MFIntentMailboxResolutionResult.disambiguation(with:)(v4);

  _objc_release(disambiguate);

  return v6;
}

+ (id)confirmationRequiredWithMFIntentMailboxToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  _objc_retain(confirm);
  swift_getObjCClassMetadata();
  v5 = static MFIntentMailboxResolutionResult.confirmationRequired(with:)(confirm);
  _objc_release(confirm);

  return v5;
}

+ (id)successWithResolvedObject:(id)object
{
  swift_getObjCClassMetadata();
  _objc_retain(object);
  swift_getObjCClassMetadata();
  static MFIntentMailboxResolutionResult.success(with:)();
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  swift_getObjCClassMetadata();
  _objc_retain(disambiguate);
  sub_10007B394();
  sub_10007D9A8();
  swift_getObjCClassMetadata();
  static MFIntentMailboxResolutionResult.disambiguation(with:)();
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  _objc_retain(confirm);
  swift_getObjCClassMetadata();
  static MFIntentMailboxResolutionResult.confirmationRequired(with:)();
}

- (MFIntentMailboxResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  _objc_retain(dictionary);
  _objc_retain(intent);
  v4 = sub_10007D7D8();
  v8 = MFIntentMailboxResolutionResult.init(JSONDictionary:intent:)(v4, intent);
  _objc_release(dictionary);
  return v8;
}

@end