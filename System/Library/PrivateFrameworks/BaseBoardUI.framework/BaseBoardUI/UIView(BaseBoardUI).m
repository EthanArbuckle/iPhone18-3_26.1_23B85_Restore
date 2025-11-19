@interface UIView(BaseBoardUI)
- (uint64_t)bs_isHitTestingDisabled;
- (uint64_t)bs_setHitTestingDisabled:()BaseBoardUI;
@end

@implementation UIView(BaseBoardUI)

- (uint64_t)bs_isHitTestingDisabled
{
  v2 = [a1 layer];
  if ([v2 allowsHitTesting])
  {
    v3 = 0;
  }

  else
  {
    v3 = [a1 isUserInteractionEnabled] ^ 1;
  }

  return v3;
}

- (uint64_t)bs_setHitTestingDisabled:()BaseBoardUI
{
  v5 = [a1 layer];
  [v5 setAllowsHitTesting:a3 ^ 1u];

  return [a1 setUserInteractionEnabled:a3 ^ 1u];
}

@end