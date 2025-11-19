@interface UIResponder(SafariServicesExtras)
- (BOOL)sf_inResponderChain;
@end

@implementation UIResponder(SafariServicesExtras)

- (BOOL)sf_inResponderChain
{
  v2 = [a1 firstResponder];
  v3 = v2;
  for (i = v2 != 0; v3 != a1 && v3; i = v3 != 0)
  {
    v5 = v3;
    v3 = [v3 nextResponder];
  }

  return i;
}

@end