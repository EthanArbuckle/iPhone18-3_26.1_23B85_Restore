@interface SNKShotFeaturizationStreamResult
- (MLMultiArray)data;
- (SNKShotLabel)label;
- (void)setData:(id)a3;
- (void)setLabel:(id)a3;
@end

@implementation SNKShotFeaturizationStreamResult

- (MLMultiArray)data
{
  v2 = sub_1C97B0FA4();

  return v2;
}

- (void)setData:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C97B100C(v4);
}

- (SNKShotLabel)label
{
  v2 = self;
  v3 = sub_1C97B1154();

  return v3;
}

- (void)setLabel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C97B1210(v4);
}

@end