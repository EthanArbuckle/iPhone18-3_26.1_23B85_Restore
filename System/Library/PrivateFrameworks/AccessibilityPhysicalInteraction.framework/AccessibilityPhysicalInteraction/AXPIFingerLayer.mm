@interface AXPIFingerLayer
- (AXPIFingerAppearanceDelegate)appearanceDelegate;
- (AXPIFingerLayer)initWithAppearanceDelegate:(id)a3;
- (CGRect)outerFrame;
@end

@implementation AXPIFingerLayer

- (AXPIFingerLayer)initWithAppearanceDelegate:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = AXPIFingerLayer;
  v5 = [(AXPIFingerLayer *)&v21 init];
  v6 = v5;
  if (v5)
  {
    [(AXPIFingerLayer *)v5 setAppearanceDelegate:v4];
    v7 = [(AXPIFingerLayer *)v6 appearanceDelegate];
    [v7 fingerInnerRadius];
    v9 = v8;
    v10 = [(AXPIFingerLayer *)v6 appearanceDelegate];
    [v10 strokeWidth];
    v12 = v11 + v9 * 2.0;

    v13 = [(AXPIFingerLayer *)v6 appearanceDelegate];
    [v13 fingerWidth];
    v15 = (v14 - v12) * 0.5;

    v6->_outerFrame.origin.x = v15;
    v6->_outerFrame.origin.y = v15;
    v6->_outerFrame.size.width = v12;
    v6->_outerFrame.size.height = v12;
    v6->_shape = 0;
    if (!+[AXPIFingerUtilities laserEnabled](AXPIFingerUtilities, "laserEnabled") || (-[AXPIFingerLayer appearanceDelegate](v6, "appearanceDelegate"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 useSystemFilters], v16, (v17 & 1) == 0))
    {
      v18 = [(AXPIFingerLayer *)v6 appearanceDelegate];
      v19 = [v18 deselectedFillColor];
      -[AXPIFingerLayer setFillColor:](v6, "setFillColor:", [v19 CGColor]);
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