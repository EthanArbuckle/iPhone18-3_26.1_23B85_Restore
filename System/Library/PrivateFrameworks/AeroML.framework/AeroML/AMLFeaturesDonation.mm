@interface AMLFeaturesDonation
- (AMLFeaturesConfiguration)featuresConfiguration;
- (id)donateFeature:(id)feature metadata:(id)metadata completionBlock:(id)block;
- (id)donateFeatureDictionaries:(id)dictionaries metadata:(id)metadata completionBlock:(id)block;
- (id)donateFeaturesBatch:(id)batch metadata:(id)metadata completionBlock:(id)block;
- (void)encodeWithCoder:(id)coder;
- (void)setFeaturesConfiguration:(id)configuration;
@end

@implementation AMLFeaturesDonation

- (AMLFeaturesConfiguration)featuresConfiguration
{
  v2 = sub_21AEB0300();

  return v2;
}

- (void)setFeaturesConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_21AEB0368(configurationCopy);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  AMLFeaturesDonation.encode(with:)(coderCopy);
}

- (id)donateFeature:(id)feature metadata:(id)metadata completionBlock:(id)block
{
  v8 = _Block_copy(block);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_21AEB390C;
  }

  else
  {
    v9 = 0;
  }

  swift_unknownObjectRetain();
  metadataCopy = metadata;
  selfCopy = self;
  v12 = sub_21AEB2E88(feature, metadataCopy, v8, v9, "Encountered error from bundle: %s while archiving feature donation: %@");
  sub_21AE9678C(v8);
  swift_unknownObjectRelease();

  return v12;
}

- (id)donateFeatureDictionaries:(id)dictionaries metadata:(id)metadata completionBlock:(id)block
{
  v7 = _Block_copy(block);
  sub_21AEA7574(&qword_27CD3D830, &qword_21AF0C488);
  v8 = sub_21AF0988C();
  if (v7)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    v7 = sub_21AEB390C;
  }

  else
  {
    v9 = 0;
  }

  metadataCopy = metadata;
  selfCopy = self;
  v12 = sub_21AEB20B8(v8, metadataCopy, v7, v9);
  sub_21AE9678C(v7);

  return v12;
}

- (id)donateFeaturesBatch:(id)batch metadata:(id)metadata completionBlock:(id)block
{
  v8 = _Block_copy(block);
  if (v8)
  {
    *(swift_allocObject() + 16) = v8;
    v8 = sub_21AEB37CC;
  }

  batchCopy = batch;
  metadataCopy = metadata;
  selfCopy = self;
  v14 = sub_21AEB2E88(batchCopy, metadataCopy, v12, v13, "Encountered error from bundle: %s while archiving batch features donation: %@");
  sub_21AE9678C(v8);

  return v14;
}

@end