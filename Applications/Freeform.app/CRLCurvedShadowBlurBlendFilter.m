@interface CRLCurvedShadowBlurBlendFilter
+ (id)blurBlendKernel;
@end

@implementation CRLCurvedShadowBlurBlendFilter

+ (id)blurBlendKernel
{
  if (qword_101A34930 != -1)
  {
    sub_10133E424();
  }

  v3 = qword_101A34928;

  return v3;
}

@end