@interface AXPIFingerLayer
- (AXPIFingerAppearanceDelegate)appearanceDelegate;
- (AXPIFingerLayer)initWithAppearanceDelegate:(id)delegate;
- (CGRect)outerFrame;
@end

@implementation AXPIFingerLayer

- (AXPIFingerLayer)initWithAppearanceDelegate:(id)delegate
{
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = AXPIFingerLayer;
  v5 = [(AXPIFingerLayer *)&v21 init];
  v6 = v5;
  if (v5)
  {
    [(AXPIFingerLayer *)v5 setAppearanceDelegate:delegateCopy];
    appearanceDelegate = [(AXPIFingerLayer *)v6 appearanceDelegate];
    [appearanceDelegate fingerInnerRadius];
    v9 = v8;
    appearanceDelegate2 = [(AXPIFingerLayer *)v6 appearanceDelegate];
    [appearanceDelegate2 strokeWidth];
    v12 = v11 + v9 * 2.0;

    appearanceDelegate3 = [(AXPIFingerLayer *)v6 appearanceDelegate];
    [appearanceDelegate3 fingerWidth];
    v15 = (v14 - v12) * 0.5;

    v6->_outerFrame.origin.x = v15;
    v6->_outerFrame.origin.y = v15;
    v6->_outerFrame.size.width = v12;
    v6->_outerFrame.size.height = v12;
    v6->_shape = 0;
    if (!+[AXPIFingerUtilities laserEnabled](AXPIFingerUtilities, "laserEnabled") || (-[AXPIFingerLayer appearanceDelegate](v6, "appearanceDelegate"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 useSystemFilters], v16, (v17 & 1) == 0))
    {
      appearanceDelegate4 = [(AXPIFingerLayer *)v6 appearanceDelegate];
      deselectedFillColor = [appearanceDelegate4 deselectedFillColor];
      -[AXPIFingerLayer setFillColor:](v6, "setFillColor:", [deselectedFillColor CGColor]);
    }
  }

  return v6;
}

- (AXPIFingerAppearanceDelegate)appearanceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);

  return WeakRetained;
}

- (CGRect)outerFrame
{
  x = self->_outerFrame.origin.x;
  y = self->_outerFrame.origin.y;
  width = self->_outerFrame.size.width;
  height = self->_outerFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end