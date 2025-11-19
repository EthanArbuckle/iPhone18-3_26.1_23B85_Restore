@interface NTKUltraCubeImageClassification
- (NTKUltraCubeImageClassification)init;
@end

@implementation NTKUltraCubeImageClassification

- (NTKUltraCubeImageClassification)init
{
  v3.receiver = self;
  v3.super_class = NTKUltraCubeImageClassification;
  result = [(NTKUltraCubeImageClassification *)&v3 init];
  if (result)
  {
    *&result->_hasPeople = 0;
  }

  return result;
}

@end