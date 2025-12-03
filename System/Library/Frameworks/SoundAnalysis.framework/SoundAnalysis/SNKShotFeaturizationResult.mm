@interface SNKShotFeaturizationResult
- (MLMultiArray)exemplar;
- (void)setExemplar:(id)exemplar;
@end

@implementation SNKShotFeaturizationResult

- (MLMultiArray)exemplar
{
  v2 = sub_1C97B3898();

  return v2;
}

- (void)setExemplar:(id)exemplar
{
  exemplarCopy = exemplar;
  selfCopy = self;
  sub_1C97B3908(exemplarCopy);
}

@end