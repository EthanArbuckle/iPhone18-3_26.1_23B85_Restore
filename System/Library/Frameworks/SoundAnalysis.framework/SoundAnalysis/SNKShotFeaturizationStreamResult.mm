@interface SNKShotFeaturizationStreamResult
- (MLMultiArray)data;
- (SNKShotLabel)label;
- (void)setData:(id)data;
- (void)setLabel:(id)label;
@end

@implementation SNKShotFeaturizationStreamResult

- (MLMultiArray)data
{
  v2 = sub_1C97B0FA4();

  return v2;
}

- (void)setData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  sub_1C97B100C(dataCopy);
}

- (SNKShotLabel)label
{
  selfCopy = self;
  v3 = sub_1C97B1154();

  return v3;
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  selfCopy = self;
  sub_1C97B1210(labelCopy);
}

@end