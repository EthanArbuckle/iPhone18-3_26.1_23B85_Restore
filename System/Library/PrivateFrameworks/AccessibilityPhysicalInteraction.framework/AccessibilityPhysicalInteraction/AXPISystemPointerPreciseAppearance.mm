@interface AXPISystemPointerPreciseAppearance
- (double)fingerInnerCircleInnerRadius;
- (id)circularProgressFillColor;
- (id)deselectedStrokeColor;
@end

@implementation AXPISystemPointerPreciseAppearance

- (id)deselectedStrokeColor
{
  _AXSPointerStrokeColor();
  if (_AXSPointerStrokeColorValues())
  {
    [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v2 = ;

  return v2;
}

- (id)circularProgressFillColor
{
  deselectedStrokeColor = [(AXPISystemPointerPreciseAppearance *)self deselectedStrokeColor];
  v3 = AXSlightlyDarkerColorForColor();

  return v3;
}

- (double)fingerInnerCircleInnerRadius
{
  showInnerCircle = [(AXPISystemPointerPreciseAppearance *)self showInnerCircle];
  result = 0.0;
  if (showInnerCircle)
  {
    return 4.75;
  }

  return result;
}

@end