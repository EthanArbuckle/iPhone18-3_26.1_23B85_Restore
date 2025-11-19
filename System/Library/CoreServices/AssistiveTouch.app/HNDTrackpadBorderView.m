@interface HNDTrackpadBorderView
- (BOOL)pointOnBottomBorder:(CGPoint)a3;
- (BOOL)pointOnLeftBorder:(CGPoint)a3;
- (BOOL)pointOnRightBorder:(CGPoint)a3;
- (BOOL)pointOnTopBorder:(CGPoint)a3;
- (BOOL)pointOnTopLeftCorner:(CGPoint)a3;
- (BOOL)pointWithinBounds:(CGPoint)a3 minX:(double)a4 maxX:(double)a5 minY:(double)a6 maxY:(double)a7;
- (HNDTrackpadBorderView)initWithFrame:(CGRect)a3;
- (HNDTrackpadBorderViewDelegate)delegate;
- (id)getTrackpadColor;
- (id)initialResizeIcon;
- (unint64_t)borderLocationFromPoint:(CGPoint)a3;
- (void)initSettings;
- (void)registerForSettingsUpdates;
- (void)resizeTrackpadWithDelta:(CGPoint)a3;
- (void)updateFrameLayer;
- (void)updateLeftBorderHeightWithDelta:(CGPoint)a3;
- (void)updateResizeIcon;
- (void)updateTopBorderHeightWithDelta:(CGPoint)a3;
- (void)updateTrackpadBorderWidth;
@end

@implementation HNDTrackpadBorderView

- (HNDTrackpadBorderView)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = HNDTrackpadBorderView;
  v3 = [(HNDTrackpadBorderView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = +[UIColor clearColor];
  [(HNDTrackpadBorderView *)v3 setBackgroundColor:v4];

  v5 = +[UIColor blackColor];
  v6 = [v5 CGColor];
  v7 = [(HNDTrackpadBorderView *)v3 layer];
  [v7 setBorderColor:v6];

  v8 = [(HNDTrackpadBorderView *)v3 layer];
  [v8 setBorderWidth:1.0];

  v9 = [(HNDTrackpadBorderView *)v3 layer];
  [v9 setCornerRadius:11.0];

  [(HNDTrackpadBorderView *)v3 setUserInteractionEnabled:1];
  [(HNDTrackpadBorderView *)v3 initSettings];
  [(HNDTrackpadBorderView *)v3 registerForSettingsUpdates];
  v10 = [(HNDTrackpadBorderView *)v3 initialResizeIcon];
  resizeIconView = v3->_resizeIconView;
  v3->_resizeIconView = v10;

  [(HNDTrackpadBorderView *)v3 addSubview:v3->_resizeIconView];
  [(HNDTrackpadBorderView *)v3 frame];
  v3->_minWidth = v12;
  [(HNDTrackpadBorderView *)v3 frame];
  v3->_minHeight = v13;
  return v3;
}

- (void)initSettings
{
  v3 = [(HNDTrackpadBorderView *)self getTrackpadColor];
  [(HNDTrackpadBorderView *)self setColor:v3];

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
  v3 = [(HNDTrackpadBorderView *)self trackpadFrameLayer];

  if (v3)
  {
    v4 = [(HNDTrackpadBorderView *)self trackpadFrameLayer];
    [v4 removeFromSuperlayer];
  }

  [(HNDTrackpadBorderView *)self bounds];
  v12 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];
  v5 = [(HNDTrackpadBorderView *)self delegate];
  [v5 trackpadViewFrame];
  v6 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];

  [v12 appendPath:v6];
  [v12 setUsesEvenOddFillRule:1];
  v7 = +[CAShapeLayer layer];
  v8 = v12;
  [v7 setPath:{objc_msgSend(v12, "CGPath")}];
  [v7 setFillRule:kCAFillRuleEvenOdd];
  v9 = [(HNDTrackpadBorderView *)self color];
  [(HNDTrackpadBorderView *)self opacity];
  v10 = [v9 colorWithAlphaComponent:?];
  [v7 setFillColor:{objc_msgSend(v10, "CGColor")}];

  v11 = [(HNDTrackpadBorderView *)self layer];
  [v11 insertSublayer:v7 atIndex:0];

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
  v9 = [(HNDTrackpadBorderView *)self delegate];
  [v9 setTrackpadViewFrame:{v4, v4, v6, v8}];
}

- (void)updateTopBorderHeightWithDelta:(CGPoint)a3
{
  y = a3.y;
  [(HNDTrackpadBorderView *)self frame];
  v25 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(HNDTrackpadBorderView *)self delegate];
  [v12 trackpadViewFrame];
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
      v24 = [(HNDTrackpadBorderView *)self delegate];
      [v24 setTrackpadViewFrame:{v14, v16, v18, v20 - y}];

      [(HNDTrackpadBorderView *)self setFrame:v25, v23, v9, v21];

      [(HNDTrackpadBorderView *)self updateFrameLayer];
    }
  }
}

- (void)updateLeftBorderHeightWithDelta:(CGPoint)a3
{
  x = a3.x;
  [(HNDTrackpadBorderView *)self frame:a3.x];
  v6 = v5;
  v25 = v7;
  v9 = v8;
  v11 = v10;
  v12 = [(HNDTrackpadBorderView *)self delegate];
  [v12 trackpadViewFrame];
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
      v24 = [(HNDTrackpadBorderView *)self delegate];
      [v24 setTrackpadViewFrame:{v14, v16, v18 - x, v20}];

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
  v6 = [(HNDTrackpadBorderView *)self resizeIconView];
  [v6 setFrame:{v5, v5, v4, v4}];
}

- (void)resizeTrackpadWithDelta:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(HNDTrackpadBorderView *)self updateTopBorderHeightWithDelta:?];

  [(HNDTrackpadBorderView *)self updateLeftBorderHeightWithDelta:x, y];
}

- (unint64_t)borderLocationFromPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

- (BOOL)pointOnTopLeftCorner:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(HNDTrackpadBorderView *)self width];
  v7 = v6;
  [(HNDTrackpadBorderView *)self width];

  return [(HNDTrackpadBorderView *)self pointWithinBounds:x minX:y maxX:-5.0 minY:v7 maxY:-5.0, v8];
}

- (BOOL)pointOnTopBorder:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(HNDTrackpadBorderView *)self frame];
  v7 = v6;
  [(HNDTrackpadBorderView *)self width];

  return [(HNDTrackpadBorderView *)self pointWithinBounds:x minX:y maxX:0.0 minY:v7 maxY:0.0, v8];
}

- (BOOL)pointOnBottomBorder:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(HNDTrackpadBorderView *)self frame];
  v7 = v6;
  [(HNDTrackpadBorderView *)self width];
  v9 = v8;
  v10 = [(HNDTrackpadBorderView *)self delegate];
  [v10 trackpadViewFrame];
  v12 = v11;

  return [(HNDTrackpadBorderView *)self pointWithinBounds:x minX:y maxX:0.0 minY:v7 maxY:v9 + v12, v12 + v9 * 2.0];
}

- (BOOL)pointOnLeftBorder:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(HNDTrackpadBorderView *)self frame];
  [(HNDTrackpadBorderView *)self width];

  return [HNDTrackpadBorderView pointWithinBounds:"pointWithinBounds:minX:maxX:minY:maxY:" minX:x maxX:y minY:0.0 maxY:?];
}

- (BOOL)pointOnRightBorder:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(HNDTrackpadBorderView *)self frame];
  v7 = v6;
  [(HNDTrackpadBorderView *)self width];
  v9 = v8;
  v10 = [(HNDTrackpadBorderView *)self delegate];
  [v10 trackpadViewFrame];
  v12 = v11;

  return [(HNDTrackpadBorderView *)self pointWithinBounds:x minX:y maxX:v9 + v12 minY:v12 + v9 * 2.0 maxY:v9, v7 - v9];
}

- (BOOL)pointWithinBounds:(CGPoint)a3 minX:(double)a4 maxX:(double)a5 minY:(double)a6 maxY:(double)a7
{
  if (a3.x < a4 || a3.x > a5)
  {
    return 0;
  }

  if (a3.y <= a7)
  {
    return a3.y >= a6;
  }

  return 0;
}

- (id)getTrackpadColor
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchVirtualTrackpadBorderColor];

  if (v3 <= 2)
  {
    if (!v3)
    {
      v4 = +[UIColor systemGrayColor];
      goto LABEL_18;
    }

    if (v3 != 1)
    {
      if (v3 == 2)
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
    if (v3 <= 4)
    {
      if (v3 == 3)
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

    if (v3 != 5)
    {
      if (v3 == 6)
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