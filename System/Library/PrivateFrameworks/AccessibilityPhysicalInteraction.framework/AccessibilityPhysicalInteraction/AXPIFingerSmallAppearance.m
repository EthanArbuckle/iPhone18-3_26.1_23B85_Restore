@interface AXPIFingerSmallAppearance
- (double)fingerWidth;
@end

@implementation AXPIFingerSmallAppearance

- (double)fingerWidth
{
  [(AXPIFingerSmallAppearance *)self fingerInnerRadius];
  v4 = v3;
  [(AXPIFingerSmallAppearance *)self strokeWidth];
  v6 = v4 + v5;
  [(AXPIFingerSmallAppearance *)self strokeOutlineWidth];
  return v6 + v7 + v6 + v7;
}

@end