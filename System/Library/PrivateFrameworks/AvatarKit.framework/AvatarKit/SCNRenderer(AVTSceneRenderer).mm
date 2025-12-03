@interface SCNRenderer(AVTSceneRenderer)
- (__n64)avt_simdProjectPoint:()AVTSceneRenderer;
- (__n64)avt_simdUnprojectPoint:()AVTSceneRenderer;
@end

@implementation SCNRenderer(AVTSceneRenderer)

- (__n64)avt_simdProjectPoint:()AVTSceneRenderer
{
  LODWORD(a3) = a2.n128_u32[1];
  LODWORD(a4) = a2.n128_u32[2];
  [self projectPoint:{a2.n128_f64[0], a3, a4}];
  result.n64_u32[1] = v4;
  return result;
}

- (__n64)avt_simdUnprojectPoint:()AVTSceneRenderer
{
  LODWORD(a3) = a2.n128_u32[1];
  LODWORD(a4) = a2.n128_u32[2];
  [self unprojectPoint:{a2.n128_f64[0], a3, a4}];
  result.n64_u32[1] = v4;
  return result;
}

@end