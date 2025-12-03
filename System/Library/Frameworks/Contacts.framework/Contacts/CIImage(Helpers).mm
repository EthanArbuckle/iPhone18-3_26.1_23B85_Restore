@interface CIImage(Helpers)
- (id)imageByScalingToFit:()Helpers;
@end

@implementation CIImage(Helpers)

- (id)imageByScalingToFit:()Helpers
{
  if (a2 >= a3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a3;
  }

  [self extent];
  if (v5 > v4 || v6 > v4)
  {
    v8 = v4 / v5;
    memset(&v12.c, 0, 32);
    if (v4 / v5 >= v4 / v6)
    {
      v8 = v4 / v6;
    }

    *&v12.a = 0uLL;
    CGAffineTransformMakeScale(&v12, v8, v8);
    v11 = v12;
    selfCopy = [self imageByApplyingTransform:&v11];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end