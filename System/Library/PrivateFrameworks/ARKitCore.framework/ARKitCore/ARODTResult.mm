@interface ARODTResult
- (__n128)setVisionTransform:(__n128)transform;
@end

@implementation ARODTResult

- (__n128)setVisionTransform:(__n128)transform
{
  result[2] = a2;
  result[3] = transform;
  result[4] = a4;
  result[5] = a5;
  return result;
}

@end