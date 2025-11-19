@interface CRLCurvedShadowCurveFilter
+ (id)curveKernel;
@end

@implementation CRLCurvedShadowCurveFilter

+ (id)curveKernel
{
  if (qword_101A34920 != -1)
  {
    sub_10133E410();
  }

  v3 = qword_101A34918;

  return v3;
}

@end