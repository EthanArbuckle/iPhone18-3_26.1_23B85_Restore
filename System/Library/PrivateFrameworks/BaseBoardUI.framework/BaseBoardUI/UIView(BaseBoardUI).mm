@interface UIView(BaseBoardUI)
- (uint64_t)bs_isHitTestingDisabled;
- (uint64_t)bs_setHitTestingDisabled:()BaseBoardUI;
@end

@implementation UIView(BaseBoardUI)

- (uint64_t)bs_isHitTestingDisabled
{
  layer = [self layer];
  if ([layer allowsHitTesting])
  {
    v3 = 0;
  }

  else
  {
    v3 = [self isUserInteractionEnabled] ^ 1;
  }

  return v3;
}

- (uint64_t)bs_setHitTestingDisabled:()BaseBoardUI
{
  layer = [self layer];
  [layer setAllowsHitTesting:a3 ^ 1u];

  return [self setUserInteractionEnabled:a3 ^ 1u];
}

@end