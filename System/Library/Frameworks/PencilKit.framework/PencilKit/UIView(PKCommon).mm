@interface UIView(PKCommon)
- (BOOL)_pk_useCompactLayout;
@end

@implementation UIView(PKCommon)

- (BOOL)_pk_useCompactLayout
{
  v2 = [a1 traitCollection];
  v3 = [a1 window];
  v4 = [v3 windowScene];
  v5 = PKUseCompactSize(v2, v4);

  return v5;
}

@end