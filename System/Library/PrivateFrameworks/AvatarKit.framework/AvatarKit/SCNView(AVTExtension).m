@interface SCNView(AVTExtension)
- (__n64)avt_simdViewport;
@end

@implementation SCNView(AVTExtension)

- (__n64)avt_simdViewport
{
  [a1 _viewport];
  result.n64_u32[1] = v1;
  return result;
}

@end