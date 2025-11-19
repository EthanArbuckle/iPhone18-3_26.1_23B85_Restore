@interface TagResolutionResult
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)confirmationRequiredWithTagToConfirm:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)disambiguationWithTagsToDisambiguate:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
+ (id)successWithResolvedTag:(id)a3;
- (TagResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation TagResolutionResult

+ (id)successWithResolvedTag:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static TagResolutionResult.success(with:)(v4);

  return v5;
}

+ (id)disambiguationWithTagsToDisambiguate:(id)a3
{
  type metadata accessor for Tag();
  v3 = sub_1000CAED0();
  swift_getObjCClassMetadata();
  v4 = static TagResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithTagToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static TagResolutionResult.confirmationRequired(with:)(a3);

  return v5;
}

+ (id)successWithResolvedObject:(id)a3
{
  result = sub_1000CB380();
  __break(1u);
  return result;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  result = sub_1000CB380();
  __break(1u);
  return result;
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)a3
{
  result = sub_1000CB380();
  __break(1u);
  return result;
}

- (TagResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_1000CAC10();
  v6 = a4;
  isa = sub_1000CAC00().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for TagResolutionResult();
  v8 = [(TagResolutionResult *)&v10 initWithJSONDictionary:isa forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end