@interface CAAnimation(LPExtras)
- (id)_lp_copyWithBeginTime:()LPExtras;
@end

@implementation CAAnimation(LPExtras)

- (id)_lp_copyWithBeginTime:()LPExtras
{
  v3 = [a1 copy];
  [v3 setBeginTime:a2];

  return v3;
}

@end