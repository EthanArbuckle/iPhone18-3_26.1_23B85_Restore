@interface CRLPairNonRetainedSecond
- (void)p_SetSecond:(id)a3;
@end

@implementation CRLPairNonRetainedSecond

- (void)p_SetSecond:(id)a3
{
  v5 = a3;
  mSecond = self->super.mSecond;
  p_mSecond = &self->super.mSecond;
  if (mSecond != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mSecond, a3);
    v5 = v8;
  }
}

@end