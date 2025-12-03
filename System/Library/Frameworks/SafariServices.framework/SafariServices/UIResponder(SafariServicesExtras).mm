@interface UIResponder(SafariServicesExtras)
- (BOOL)sf_inResponderChain;
@end

@implementation UIResponder(SafariServicesExtras)

- (BOOL)sf_inResponderChain
{
  firstResponder = [self firstResponder];
  nextResponder = firstResponder;
  for (i = firstResponder != 0; nextResponder != self && nextResponder; i = nextResponder != 0)
  {
    v5 = nextResponder;
    nextResponder = [nextResponder nextResponder];
  }

  return i;
}

@end