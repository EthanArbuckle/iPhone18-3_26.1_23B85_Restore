@interface AMLStorageFeatures
- (AMLStorageFeatures)initWithFeatureProvider:(id)a3 batchProvider:(id)a4 arrayProvider:(id)a5;
- (MLArrayBatchProvider)arrayProvider;
- (MLBatchProvider)batchProvider;
- (MLFeatureProvider)featureProvider;
- (void)setArrayProvider:(id)a3;
- (void)setBatchProvider:(id)a3;
- (void)setFeatureProvider:(id)a3;
@end

@implementation AMLStorageFeatures

- (MLFeatureProvider)featureProvider
{
  v2 = sub_21AEA2BA0();

  return v2;
}

- (void)setFeatureProvider:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_21AEA2C0C(a3);
}

- (MLBatchProvider)batchProvider
{
  v2 = sub_21AEA2C4C();

  return v2;
}

- (void)setBatchProvider:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_21AEA2CB8(a3);
}

- (MLArrayBatchProvider)arrayProvider
{
  v2 = sub_21AEA2CF8();

  return v2;
}

- (void)setArrayProvider:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_21AEA2D84(a3);
}

- (AMLStorageFeatures)initWithFeatureProvider:(id)a3 batchProvider:(id)a4 arrayProvider:(id)a5
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = a5;
  return AMLStorageFeatures.init(featureProvider:batchProvider:arrayProvider:)();
}

@end