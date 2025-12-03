@interface SNKShotFeaturizationStreamCompletion
- (MLMultiArray)exemplar;
- (void)setExemplar:(id)exemplar;
@end

@implementation SNKShotFeaturizationStreamCompletion

- (MLMultiArray)exemplar
{
  v2 = sub_1C97B1B1C();

  return v2;
}

- (void)setExemplar:(id)exemplar
{
  exemplarCopy = exemplar;
  selfCopy = self;
  sub_1C97B1B84(exemplarCopy);
}

@end