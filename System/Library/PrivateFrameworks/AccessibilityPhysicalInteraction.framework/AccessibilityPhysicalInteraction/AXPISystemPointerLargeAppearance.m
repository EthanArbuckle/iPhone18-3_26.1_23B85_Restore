@interface AXPISystemPointerLargeAppearance
- (double)fingerInnerRadius;
@end

@implementation AXPISystemPointerLargeAppearance

- (double)fingerInnerRadius
{
  v4.receiver = self;
  v4.super_class = AXPISystemPointerLargeAppearance;
  [(AXPISystemPointerPreciseAppearance *)&v4 fingerInnerRadius];
  return fmax(v2, 23.5);
}

@end