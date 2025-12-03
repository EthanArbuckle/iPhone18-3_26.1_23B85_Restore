@interface HNDTrackpadBorderView
- (BOOL)pointOnBottomBorder:(CGPoint)border;
- (BOOL)pointOnLeftBorder:(CGPoint)border;
- (BOOL)pointOnRightBorder:(CGPoint)border;
- (BOOL)pointOnTopBorder:(CGPoint)border;
- (BOOL)pointOnTopLeftCorner:(CGPoint)corner;
- (BOOL)pointWithinBounds:(CGPoint)bounds minX:(double)x maxX:(double)maxX minY:(double)y maxY:(double)maxY;
- (HNDTrackpadBorderView)initWithFrame:(CGRect)frame;
- (HNDTrackpadBorderViewDelegate)delegate;
- (id)getTrackpadColor;
- (id)initialResizeIcon;
- (unint64_t)borderLocationFromPoint:(CGPoint)point;
- (void)initSettings;
- (void)registerForSettingsUpdates;
- (void)resizeTrackpadWithDelta:(CGPoint)delta;
- (void)updateFrameLayer;
- (void)updateLeftBorderHeightWithDelta:(CGPoint)delta;
- (void)updateResizeIcon;
- (void)updateTopBorderHeightWithDelta:(CGPoint)delta;
- (void)updateTrackpadBorderWidth;
@end

@implementation HNDTrackpadBorderView

- (HNDTrackpadBorderView)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = HNDTrackpadBorderView;
  v3 = [(HNDTrackpadBorderView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = +[UIColor clearColor];
  [(HNDTrackpadBorderView *)v3 setBackgroundColor:v4];

  v5 = +[UIColor blackColor];
  cGColor = [v5 CGColor];
  layer = [(HNDTrackpadBorderView *)v3 layer];
  [layer setBorderColor:cGColor];

  layer2 = [(HNDTrackpadBorderView *)v3 layer];
  [layer2 setBorderWidth:1.0];

  layer3 = [(HNDTrackpadBorderView *)v3 layer];
  [layer3 setCornerRadius:11.0];

  [(HNDTrackpadBorderView *)v3 setUserInteractionEnabled:1];
  [(HNDTrackpadBorderView *)v3 initSettings];
  [(HNDTrackpadBorderView *)v3 registerForSettingsUpdates];
  initialResizeIcon = [(HNDTrackpadBorderView *)v3 initialResizeIcon];
  resizeIconView = v3->_resizeIconView;
  v3->_resizeIconView = initialResizeIcon;

  [(HNDTrackpadBorderView *)v3 addSubview:v3->_resizeIconView];
  [(HNDTrackpadBorderView *)v3 frame];
  v3->_minWidth = v12;
  [(HNDTrackpadBorderView *)v3 frame];
  v3->_minHeight = v13;
  return v3;
}

- (void)initSettings
{
  getTrackpadColor = [(HNDTrackpadBorderView *)self getTrackpadColor];
  [(HNDTrackpadBorderView *)self setColor:getTrackpadColor];

  v4 = +[AXSettings sharedInstance];
  [v4 assistiveTouchVirtualTrackpadBorderWidth];
  [(HNDTrackpadBorderView *)self setWidth:?];

  v5 = +[AXSettings sharedInstance];
  [v5 assistiveTouchVirtualTrackpadBorderOpacity];
  [(HNDTrackpadBorderView *)self setOpacity:?];
}

- (void)registerForSettingsUpdates
{
  objc_initWeak(&location, self);
  v3 = +[AXSettings sharedInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000AE554;
  v10[3] = &unk_1001D3460;
  objc_copyWeak(&v11, &location);
  [v3 registerUpdateBlock:v10 forRetrieveSelector:"assistiveTouchVirtualTrackpadBorderColor" withListener:self];

  objc_destroyWeak(&v11);
  v4 = +[AXSettings sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000AE5E0;
  v8[3] = &unk_1001D3460;
  objc_copyWeak(&v9, &location);
  [v4 registerUpdateBlock:v8 forRetrieveSelector:"assistiveTouchVirtualTrackpadBorderOpacity" withListener:self];

  objc_destroyWeak(&v9);
  v5 = +[AXSettings sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AE674;
  v6[3] = &unk_1001D3460;
  objc_copyWeak(&v7, &location);
  [v5 registerUpdateBlock:v6 forRetrieveSelector:"assistiveTouchVirtualTrackpadBorderWidth" withListener:self];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)updateFrameLayer
{
  trackpadFrameLayer = [(HNDTrackpadBorderView *)self trackpadFrameLayer];

  if (trackpadFrameLayer)
  {
    trackpadFrameLayer2 = [(HNDTrackpadBorderView *)self trackpadFrameLayer];
    [trackpadFrameLayer2 removeFromSuperlayer];
  }

  [(HNDTrackpadBorderView *)self bounds];
  v12 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];
  delegate = [(HNDTrackpadBorderView *)self delegate];
  [delegate trackpadViewFrame];
  v6 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];

  [v12 appendPath:v6];
  [v12 setUsesEvenOddFillRule:1];
  v7 = +[CAShapeLayer layer];
  v8 = v12;
  [v7 setPath:{objc_msgSend(v12, "CGPath")}];
  [v7 setFillRule:kCAFillRuleEvenOdd];
  color = [(HNDTrackpadBorderView *)self color];
  [(HNDTrackpadBorderView *)self opacity];
  v10 = [color colorWithAlphaComponent:?];
  [v7 setFillColor:{objc_msgSend(v10, "CGColor")}];

  layer = [(HNDTrackpadBorderView *)self layer];
  [layer insertSublayer:v7 atIndex:0];

  [(HNDTrackpadBorderView *)self setTrackpadFrameLayer:v7];
}

- (void)updateTrackpadBorderWidth
{
  [(HNDTrackpadBorderView *)self width];
  v4 = v3;
  [(HNDTrackpadBorderView *)self frame];
  v6 = v5 + v4 * -2.0;
  [(HNDTrackpadBorderView *)self frame];
  v8 = v7 + v4 * -2.0;
  delegate = [(HNDTrackpadBorderView *)self delegate];
  [delegate setTrackpadViewFrame:{v4, v4, v6, v8}];
}

- (void)updateTopBorderHeightWithDelta:(CGPoint)delta
{
  y = delta.y;
  [(HNDTrackpadBorderView *)self frame];
  v25 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  delegate = [(HNDTrackpadBorderView *)self delegate];
  [delegate trackpadViewFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v11 - y;
  [(HNDTrackpadBorderView *)self minHeight];
  if (v21 >= v22)
  {
    v23 = y + v7;
    if (v23 >= 0.0)
    {
      delegate2 = [(HNDTrackpadBorderView *)self delegate];
      [delegate2 setTrackpadViewFrame:{v14, v16, v18, v20 - y}];

      [(HNDTrackpadBorderView *)self setFrame:v25, v23, v9, v21];

      [(HNDTrackpadBorderView *)self updateFrameLayer];
    }
  }
}

- (void)updateLeftBorderHeightWithDelta:(CGPoint)delta
{
  x = delta.x;
  [(HNDTrackpadBorderView *)self frame:delta.x];
  v6 = v5;
  v25 = v7;
  v9 = v8;
  v11 = v10;
  delegate = [(HNDTrackpadBorderView *)self delegate];
  [delegate trackpadViewFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v9 - x;
  [(HNDTrackpadBorderView *)self minWidth];
  if (v21 >= v22)
  {
    v23 = x + v6;
    if (v23 >= 0.0)
    {
      delegate2 = [(HNDTrackpadBorderView *)self delegate];
      [delegate2 setTrackpadViewFrame:{v14, v16, v18 - x, v20}];

      [(HNDTrackpadBorderView *)self setFrame:v23, v25, v21, v11];

      [(HNDTrackpadBorderView *)self updateFrameLayer];
    }
  }
}

- (id)initialResizeIcon
{
  v3 = [UIImage systemImageNamed:@"arrow.up.backward.and.arrow.down.forward"];
  v4 = [[UIImageView alloc] initWithImage:v3];
  [(HNDTrackpadBorderView *)self width];
  [v4 setFrame:{v5 / 2.5, v5 / 2.5, v5 * 0.5, v5 * 0.5}];
  v6 = +[UIColor whiteColor];
  [v4 setTintColor:v6];

  return v4;
}

- (void)updateResizeIcon
{
  [(HNDTrackpadBorderView *)self width];
  v4 = v3 * 0.5;
  v5 = v3 / 2.5;
  resizeIconView = [(HNDTrackpadBorderView *)self resizeIconView];
  [resizeIconView setFrame:{v5, v5, v4, v4}];
}

- (void)resizeTrackpadWithDelta:(CGPoint)delta
{
  y = delta.y;
  x = delta.x;
  [(HNDTrackpadBorderView *)self updateTopBorderHeightWithDelta:?];

  [(HNDTrackpadBorderView *)self updateLeftBorderHeightWithDelta:x, y];
}

- (unint64_t)borderLocationFromPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(HNDTrackpadBorderView *)self pointOnTopLeftCorner:?])
  {
    return 1;
  }

  if ([(HNDTrackpadBorderView *)self pointOnTopBorder:x, y])
  {
    return 2;
  }

  if ([(HNDTrackpadBorderView *)self pointOnBottomBorder:x, y])
  {
    return 3;
  }

  if ([(HNDTrackpadBorderView *)self pointOnLeftBorder:x, y])
  {
    return 4;
  }

  if ([(HNDTrackpadBorderView *)self pointOnRightBorder:x, y])
  {
    return 5;
  }

  return 0;
}

- (BOOL)pointOnTopLeftCorner:(CGPoint)corner
{
  y = corner.y;
  x = corner.x;
  [(HNDTrackpadBorderView *)self width];
  v7 = v6;
  [(HNDTrackpadBorderView *)self width];

  return [(HNDTrackpadBorderView *)self pointWithinBounds:x minX:y maxX:-5.0 minY:v7 maxY:-5.0, v8];
}

- (BOOL)pointOnTopBorder:(CGPoint)border
{
  y = border.y;
  x = border.x;
  [(HNDTrackpadBorderView *)self frame];
  v7 = v6;
  [(HNDTrackpadBorderView *)self width];

  return [(HNDTrackpadBorderView *)self pointWithinBounds:x minX:y maxX:0.0 minY:v7 maxY:0.0, v8];
}

- (BOOL)pointOnBottomBorder:(CGPoint)border
{
  y = border.y;
  x = border.x;
  [(HNDTrackpadBorderView *)self frame];
  v7 = v6;
  [(HNDTrackpadBorderView *)self width];
  v9 = v8;
  delegate = [(HNDTrackpadBorderView *)self delegate];
  [delegate trackpadViewFrame];
  v12 = v11;

  return [(HNDTrackpadBorderView *)self pointWithinBounds:x minX:y maxX:0.0 minY:v7 maxY:v9 + v12, v12 + v9 * 2.0];
}

- (BOOL)pointOnLeftBorder:(CGPoint)border
{
  y = border.y;
  x = border.x;
  [(HNDTrackpadBorderView *)self frame];
  [(HNDTrackpadBorderView *)self width];

  return [HNDTrackpadBorderView pointWithinBounds:"pointWithinBounds:minX:maxX:minY:maxY:" minX:x maxX:y minY:0.0 maxY:?];
}

- (BOOL)pointOnRightBorder:(CGPoint)border
{
  y = border.y;
  x = border.x;
  [(HNDTrackpadBorderView *)self frame];
  v7 = v6;
  [(HNDTrackpadBorderView *)self width];
  v9 = v8;
  delegate = [(HNDTrackpadBorderView *)self delegate];
  [delegate trackpadViewFrame];
  v12 = v11;

  return [(HNDTrackpadBorderView *)self pointWithinBounds:x minX:y maxX:v9 + v12 minY:v12 + v9 * 2.0 maxY:v9, v7 - v9];
}

- (BOOL)pointWithinBounds:(CGPoint)bounds minX:(double)x maxX:(double)maxX minY:(double)y maxY:(double)maxY
{
  if (bounds.x < x || bounds.x > maxX)
  {
    return 0;
  }

  if (bounds.y <= maxY)
  {
    return bounds.y >= y;
  }

  return 0;
}

- (id)getTrackpadColor
{
  v2 = +[AXSettings sharedInstance];
  assistiveTouchVirtualTrackpadBorderColor = [v2 assistiveTouchVirtualTrackpadBorderColor];

  if (assistiveTouchVirtualTrackpadBorderColor <= 2)
  {
    if (!assistiveTouchVirtualTrackpadBorderColor)
    {
      v4 = +[UIColor systemGrayColor];
      goto LABEL_18;
    }

    if (assistiveTouchVirtualTrackpadBorderColor != 1)
    {
      if (assistiveTouchVirtualTrackpadBorderColor == 2)
      {
        v4 = +[UIColor systemBlueColor];
        goto LABEL_18;
      }

LABEL_14:
      v4 = +[UIColor grayColor];
      goto LABEL_18;
    }

    v4 = +[UIColor systemWhiteColor];
  }

  else
  {
    if (assistiveTouchVirtualTrackpadBorderColor <= 4)
    {
      if (assistiveTouchVirtualTrackpadBorderColor == 3)
      {
        +[UIColor systemRedColor];
      }

      else
      {
        +[UIColor systemGreenColor];
      }
      v4 = ;
      goto LABEL_18;
    }

    if (assistiveTouchVirtualTrackpadBorderColor != 5)
    {
      if (assistiveTouchVirtualTrackpadBorderColor == 6)
      {
        v4 = +[UIColor systemOrangeColor];
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v4 = +[UIColor systemYellowColor];
  }

LABEL_18:

  return v4;
}

- (HNDTrackpadBorderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end