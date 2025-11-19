@interface ARODTResult
- (__n128)setVisionTransform:(__n128)a3;
@end

@implementation ARODTResult

- (__n128)setVisionTransform:(__n128)a3
{
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = a5;
  return result;
}

@end