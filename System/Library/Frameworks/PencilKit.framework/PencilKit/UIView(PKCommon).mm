@interface UIView(PKCommon)
- (BOOL)_pk_useCompactLayout;
@end

@implementation UIView(PKCommon)

- (BOOL)_pk_useCompactLayout
{
  traitCollection = [self traitCollection];
  window = [self window];
  windowScene = [window windowScene];
  v5 = PKUseCompactSize(traitCollection, windowScene);

  return v5;
}

@end