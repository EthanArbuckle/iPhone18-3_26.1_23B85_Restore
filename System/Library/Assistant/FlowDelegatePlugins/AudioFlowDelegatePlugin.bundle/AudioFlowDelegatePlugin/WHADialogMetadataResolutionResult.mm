@interface WHADialogMetadataResolutionResult
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)confirmationRequiredWithWHADialogMetadataToConfirm:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)disambiguationWithWHADialogMetadatasToDisambiguate:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
+ (id)successWithResolvedWHADialogMetadata:(id)a3;
- (WHADialogMetadataResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation WHADialogMetadataResolutionResult

+ (id)successWithResolvedWHADialogMetadata:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static WHADialogMetadataResolutionResult.success(with:)(v4);

  return v5;
}

+ (id)disambiguationWithWHADialogMetadatasToDisambiguate:(id)a3
{
  type metadata accessor for WHADialogMetadata();
  v3 = sub_2CE410();
  swift_getObjCClassMetadata();
  v4 = static WHADialogMetadataResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithWHADialogMetadataToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static WHADialogMetadataResolutionResult.confirmationRequired(with:)(a3);

  return v5;
}

+ (id)successWithResolvedObject:(id)a3
{
  result = sub_2CED80();
  __break(1u);
  return result;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  result = sub_2CED80();
  __break(1u);
  return result;
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)a3
{
  result = sub_2CED80();
  __break(1u);
  return result;
}

- (WHADialogMetadataResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_2CE200();
  v6 = a4;
  isa = sub_2CE1F0().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for WHADialogMetadataResolutionResult();
  v8 = [(WHADialogMetadataResolutionResult *)&v10 initWithJSONDictionary:isa forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end