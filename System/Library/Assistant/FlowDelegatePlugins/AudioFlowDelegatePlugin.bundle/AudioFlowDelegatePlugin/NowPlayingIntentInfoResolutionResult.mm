@interface NowPlayingIntentInfoResolutionResult
+ (id)confirmationRequiredWithNowPlayingIntentInfoToConfirm:(id)confirm;
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)disambiguationWithNowPlayingIntentInfosToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedNowPlayingIntentInfo:(id)info;
+ (id)successWithResolvedObject:(id)object;
- (NowPlayingIntentInfoResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation NowPlayingIntentInfoResolutionResult

+ (id)successWithResolvedNowPlayingIntentInfo:(id)info
{
  swift_getObjCClassMetadata();
  infoCopy = info;
  v5 = static NowPlayingIntentInfoResolutionResult.success(with:)(infoCopy);

  return v5;
}

+ (id)disambiguationWithNowPlayingIntentInfosToDisambiguate:(id)disambiguate
{
  type metadata accessor for NowPlayingIntentInfo();
  v3 = sub_2CE410();
  swift_getObjCClassMetadata();
  v4 = static NowPlayingIntentInfoResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithNowPlayingIntentInfoToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static NowPlayingIntentInfoResolutionResult.confirmationRequired(with:)(confirm);

  return v5;
}

+ (id)successWithResolvedObject:(id)object
{
  result = sub_2CED80();
  __break(1u);
  return result;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  result = sub_2CED80();
  __break(1u);
  return result;
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm
{
  result = sub_2CED80();
  __break(1u);
  return result;
}

- (NowPlayingIntentInfoResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_2CE200();
  intentCopy = intent;
  isa = sub_2CE1F0().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for NowPlayingIntentInfoResolutionResult();
  v8 = [(NowPlayingIntentInfoResolutionResult *)&v10 initWithJSONDictionary:isa forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end