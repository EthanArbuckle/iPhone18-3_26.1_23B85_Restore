@interface TagResolutionResult
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)confirmationRequiredWithTagToConfirm:(id)confirm;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithTagsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedObject:(id)object;
+ (id)successWithResolvedTag:(id)tag;
- (TagResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation TagResolutionResult

+ (id)successWithResolvedTag:(id)tag
{
  swift_getObjCClassMetadata();
  tagCopy = tag;
  v5 = static TagResolutionResult.success(with:)(tagCopy);

  return v5;
}

+ (id)disambiguationWithTagsToDisambiguate:(id)disambiguate
{
  type metadata accessor for Tag();
  v3 = sub_1000A2F10();
  swift_getObjCClassMetadata();
  v4 = static TagResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithTagToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static TagResolutionResult.confirmationRequired(with:)(confirm);

  return v5;
}

+ (id)successWithResolvedObject:(id)object
{
  result = sub_1000A33B0();
  __break(1u);
  return result;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  result = sub_1000A33B0();
  __break(1u);
  return result;
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm
{
  result = sub_1000A33B0();
  __break(1u);
  return result;
}

- (TagResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_1000A2C60();
  intentCopy = intent;
  isa = sub_1000A2C50().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for TagResolutionResult();
  v8 = [(TagResolutionResult *)&v10 initWithJSONDictionary:isa forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end