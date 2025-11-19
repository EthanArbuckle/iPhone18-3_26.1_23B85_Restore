@interface SNKShotFeaturizationStreamCompletion
- (MLMultiArray)exemplar;
- (void)setExemplar:(id)a3;
@end

@implementation SNKShotFeaturizationStreamCompletion

- (MLMultiArray)exemplar
{
  v2 = sub_1C97B1B1C();

  return v2;
}

- (void)setExemplar:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C97B1B84(v4);
}

@end