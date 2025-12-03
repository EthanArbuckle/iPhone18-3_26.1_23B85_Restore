@interface WHADialogMetadataResolutionResult
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)confirmationRequiredWithWHADialogMetadataToConfirm:(id)confirm;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithWHADialogMetadatasToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedObject:(id)object;
+ (id)successWithResolvedWHADialogMetadata:(id)metadata;
- (WHADialogMetadataResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation WHADialogMetadataResolutionResult

+ (id)successWithResolvedWHADialogMetadata:(id)metadata
{
  swift_getObjCClassMetadata();
  metadataCopy = metadata;
  v5 = static WHADialogMetadataResolutionResult.success(with:)(metadataCopy);

  return v5;
}

+ (id)disambiguationWithWHADialogMetadatasToDisambiguate:(id)disambiguate
{
  type metadata accessor for WHADialogMetadata();
  v3 = sub_2CE410();
  swift_getObjCClassMetadata();
  v4 = static WHADialogMetadataResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithWHADialogMetadataToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static WHADialogMetadataResolutionResult.confirmationRequired(with:)(confirm);

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

- (WHADialogMetadataResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_2CE200();
  intentCopy = intent;
  isa = sub_2CE1F0().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for WHADialogMetadataResolutionResult();
  v8 = [(WHADialogMetadataResolutionResult *)&v10 initWithJSONDictionary:isa forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end