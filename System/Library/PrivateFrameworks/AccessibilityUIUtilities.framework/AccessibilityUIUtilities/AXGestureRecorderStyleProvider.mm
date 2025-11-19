@interface AXGestureRecorderStyleProvider
- (CGSize)fingerLineDropDownShadowOffset;
- (CGSize)instructionsLabelShadowOffset;
- (double)instructionsLabelHorizontalInset;
- (id)dynamicFingerLineGradientBottomColor;
- (id)dynamicFingerLineGradientTopColor;
- (id)gestureRecorderViewBackgroundGradientBottomColor;
- (id)gestureRecorderViewBackgroundGradientTopColor;
- (id)tracingDynamicFingerColor;
@end

@implementation AXGestureRecorderStyleProvider

- (CGSize)instructionsLabelShadowOffset
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)instructionsLabelHorizontalInset
{
  IsPad = AXDeviceIsPad();
  result = 10.0;
  if (IsPad)
  {
    return 30.0;
  }

  return result;
}

- (id)gestureRecorderViewBackgroundGradientTopColor
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    v4 = 0.90234375;
    v5 = 0.91015625;
    v6 = 0.92578125;
  }

  else
  {
    v4 = 0.800000012;
    v5 = 0.819999993;
    v6 = 0.839999974;
  }

  v7 = [MEMORY[0x1E69DC888] colorWithRed:v4 green:v5 blue:v6 alpha:1.0];

  return v7;
}

- (id)gestureRecorderViewBackgroundGradientBottomColor
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    [MEMORY[0x1E69DC888] colorWithRed:0.8515625 green:0.859375 blue:0.875 alpha:1.0];
  }

  else
  {
    [(AXGestureRecorderStyleProvider *)self gestureRecorderViewBackgroundGradientTopColor];
  }
  v5 = ;

  return v5;
}

- (id)tracingDynamicFingerColor
{
  v2 = [MEMORY[0x1E69DC888] systemTealColor];
  v3 = [v2 colorWithAlphaComponent:0.8];

  return v3;
}

- (id)dynamicFingerLineGradientTopColor
{
  v2 = [MEMORY[0x1E69DC888] systemBlueColor];
  v3 = [v2 colorWithAlphaComponent:0.8];

  return v3;
}

- (id)dynamicFingerLineGradientBottomColor
{
  v2 = [MEMORY[0x1E69DC888] systemGray2Color];
  v3 = [v2 colorWithAlphaComponent:0.8];

  return v3;
}

- (CGSize)fingerLineDropDownShadowOffset
{
  v2 = 0.0;
  v3 = 1.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end