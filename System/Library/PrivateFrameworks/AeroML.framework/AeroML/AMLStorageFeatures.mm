@interface AMLStorageFeatures
- (AMLStorageFeatures)initWithFeatureProvider:(id)provider batchProvider:(id)batchProvider arrayProvider:(id)arrayProvider;
- (MLArrayBatchProvider)arrayProvider;
- (MLBatchProvider)batchProvider;
- (MLFeatureProvider)featureProvider;
- (void)setArrayProvider:(id)provider;
- (void)setBatchProvider:(id)provider;
- (void)setFeatureProvider:(id)provider;
@end

@implementation AMLStorageFeatures

- (MLFeatureProvider)featureProvider
{
  v2 = sub_21AEA2BA0();

  return v2;
}

- (void)setFeatureProvider:(id)provider
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_21AEA2C0C(provider);
}

- (MLBatchProvider)batchProvider
{
  v2 = sub_21AEA2C4C();

  return v2;
}

- (void)setBatchProvider:(id)provider
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_21AEA2CB8(provider);
}

- (MLArrayBatchProvider)arrayProvider
{
  v2 = sub_21AEA2CF8();

  return v2;
}

- (void)setArrayProvider:(id)provider
{
  providerCopy = provider;
  selfCopy = self;
  sub_21AEA2D84(provider);
}

- (AMLStorageFeatures)initWithFeatureProvider:(id)provider batchProvider:(id)batchProvider arrayProvider:(id)arrayProvider
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  arrayProviderCopy = arrayProvider;
  return AMLStorageFeatures.init(featureProvider:batchProvider:arrayProvider:)();
}

@end