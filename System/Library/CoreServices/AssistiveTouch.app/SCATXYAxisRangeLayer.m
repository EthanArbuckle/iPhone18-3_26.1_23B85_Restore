@interface SCATXYAxisRangeLayer
- (SCATXYAxisRangeLayer)initWithAxis:(int)a3;
- (id)_backgroundColorForTheme:(int)a3;
- (id)_borderBackgroundColorForTheme:(int)a3;
- (id)_borderForegroundColorForTheme:(int)a3;
- (void)removeAllAnimations;
- (void)resetLineLayer;
- (void)updateFrameForParentBounds:(CGRect)a3 refinementPoint:(CGPoint *)a4;
- (void)updateTheme:(int)a3 animated:(BOOL)a4;
- (void)updateToFitWithinParentBounds:(CGRect)a3;
@end

@implementation SCATXYAxisRangeLayer

- (SCATXYAxisRangeLayer)initWithAxis:(int)a3
{
  v3 = *&a3;
  v13.receiver = self;
  v13.super_class = SCATXYAxisRangeLayer;
  v4 = [(SCATAxisLayer *)&v13 initWithAxis:?];
  if (v4)
  {
    +[SCATAxisLayer rangeLayerBorderWidth];
    [(SCATXYAxisRangeLayer *)v4 setBorderWidth:?];
    v5 = [(SCATAxisLayer *)[SCATXYAxisLineLayer alloc] initWithAxis:v3];
    [(SCATXYAxisRangeLayer *)v4 setLineLayer:v5];
    v6 = [(SCATAxisLayer *)v4 compositingLayer];
    [(SCATXYAxisRangeLayer *)v4 insertSublayer:v5 below:v6];

    v7 = kCAFilterPlusL;
    v8 = [CAFilter filterWithType:kCAFilterPlusL];
    [(SCATXYAxisRangeLayer *)v4 setCompositingFilter:v8];

    v9 = [(SCATAxisLayer *)v4 foregroundLayer];
    [v9 setBorderWidth:1.0];

    v10 = [(SCATAxisLayer *)v4 foregroundLayer];
    v11 = [CAFilter filterWithType:v7];
    [v10 setCompositingFilter:v11];
  }

  return v4;
}

- (void)removeAllAnimations
{
  v3 = [(SCATXYAxisRangeLayer *)self presentationLayer];
  [v3 position];
  v5 = v4;
  v7 = v6;

  v16.receiver = self;
  v16.super_class = SCATXYAxisRangeLayer;
  [(SCATXYAxisRangeLayer *)&v16 removeAllAnimations];
  [(SCATAxisLayer *)self updateLayerTreePosition:v5, v7];
  v8 = [(SCATXYAxisRangeLayer *)self lineLayer];
  v9 = [v8 presentationLayer];
  [v9 position];
  v11 = v10;
  v13 = v12;

  v14 = [(SCATXYAxisRangeLayer *)self lineLayer];
  [v14 removeAllAnimations];

  v15 = [(SCATXYAxisRangeLayer *)self lineLayer];
  [v15 updateLayerTreePosition:{v11, v13}];
}

- (void)resetLineLayer
{
  v3 = [(SCATXYAxisRangeLayer *)self lineLayer];
  [v3 removeFromSuperlayer];

  v4 = [(SCATXYAxisRangeLayer *)self lineLayer];
  [v4 removeAllAnimations];

  v5 = [(SCATXYAxisRangeLayer *)self lineLayer];
  LODWORD(v6) = 1.0;
  [v5 setSpeed:v6];

  v8 = [(SCATXYAxisRangeLayer *)self lineLayer];
  v7 = [(SCATAxisLayer *)self compositingLayer];
  [(SCATXYAxisRangeLayer *)self insertSublayer:v8 below:v7];
}

- (void)updateTheme:(int)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  v13.receiver = self;
  v13.super_class = SCATXYAxisRangeLayer;
  [SCATAxisLayer updateTheme:"updateTheme:animated:" animated:?];
  if (!v4)
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
  }

  v7 = [(SCATXYAxisRangeLayer *)self lineLayer];
  [v7 updateTheme:v5 animated:v4];

  v8 = [(SCATXYAxisRangeLayer *)self _backgroundColorForTheme:v5];
  -[SCATAxisLayer setBackgroundColor:](self, "setBackgroundColor:", [v8 CGColor]);

  v9 = [(SCATXYAxisRangeLayer *)self _borderBackgroundColorForTheme:v5];
  -[SCATXYAxisRangeLayer setBorderColor:](self, "setBorderColor:", [v9 CGColor]);

  v10 = [(SCATXYAxisRangeLayer *)self _borderForegroundColorForTheme:v5];
  v11 = [v10 CGColor];
  v12 = [(SCATAxisLayer *)self foregroundLayer];
  [v12 setBorderColor:v11];

  if (!v4)
  {
    +[CATransaction commit];
  }
}

- (void)updateFrameForParentBounds:(CGRect)a3 refinementPoint:(CGPoint *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a4)
  {
    +[SCATAxisLayer rangeLayerMaxWidth];
    v11 = v10;
  }

  else
  {
    v12 = +[AXSettings sharedInstance];
    if ([v12 switchControlPointPickerSelectionStyle] == 1)
    {
      +[SCATAxisLayer lineLayerMaxWidth];
    }

    else
    {
      +[SCATAxisLayer rangeLayerMaxWidth];
    }

    v11 = v13;
  }

  v14 = [(SCATAxisLayer *)self axis];
  [objc_opt_class() rangeLayerFrameInset];
  v16 = v15 * -0.5;
  if (v14)
  {
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    v41 = CGRectInset(v40, v16, 0.0);
    v17 = v41.origin.x;
    v18 = v41.origin.y;
    v19 = v11;
    v11 = v41.size.width;
    if (!a4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.width = width;
    v42.size.height = height;
    v43 = CGRectInset(v42, 0.0, v16);
    v17 = v43.origin.x;
    v18 = v43.origin.y;
    v19 = v43.size.height;
    if (!a4)
    {
      goto LABEL_17;
    }
  }

  v20 = [(SCATXYAxisRangeLayer *)self superlayer];
  v21 = [v20 delegate];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [HNDScreen convertPoint:v21 toView:a4->x, a4->y];
    v23 = v22;
    v25 = v24;
    if ([(SCATAxisLayer *)self axis])
    {
      v18 = v25 - v19 * 0.5;
    }

    else
    {
      v17 = v23 - v11 * 0.5;
    }
  }

  else
  {
    v37 = v21;
    _AXAssert();
  }

LABEL_17:
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(SCATAxisLayer *)self setFrame:v17, v18, v11, v19];
  +[CATransaction commit];
  v44.origin.x = v17;
  v44.origin.y = v18;
  v44.size.width = v11;
  v44.size.height = v19;
  v45 = CGRectInset(v44, 1.0, 1.0);
  v26 = v45.size.width;
  v27 = v45.size.height;
  v28 = [(SCATAxisLayer *)self foregroundLayer:v45.origin.x];
  [v28 setFrame:{1.0, 1.0, v26, v27}];

  v29 = [(SCATAxisLayer *)self compositingLayer];
  [v29 setFrame:{1.0, 1.0, v26, v27}];

  LODWORD(v29) = [(SCATAxisLayer *)self axis];
  +[SCATAxisLayer lineLayerMaxWidth];
  if (v29)
  {
    v19 = v30;
  }

  else
  {
    v11 = v30;
  }

  v31 = [(SCATXYAxisRangeLayer *)self lineLayer];
  [v31 setFrame:{0.0, 0.0, v11, v19}];

  v46.origin.x = 0.0;
  v46.origin.y = 0.0;
  v46.size.width = v11;
  v46.size.height = v19;
  v47 = CGRectInset(v46, 1.0, 1.0);
  v32 = v47.size.width;
  v33 = v47.size.height;
  v34 = [(SCATXYAxisRangeLayer *)self lineLayer:v47.origin.x];
  v35 = [v34 foregroundLayer];
  [v35 setFrame:{1.0, 1.0, v32, v33}];

  v38 = [(SCATXYAxisRangeLayer *)self lineLayer];
  v36 = [v38 compositingLayer];
  [v36 setFrame:{1.0, 1.0, v32, v33}];
}

- (void)updateToFitWithinParentBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  [(SCATXYAxisRangeLayer *)self frame:a3.origin.x];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if ([(SCATAxisLayer *)self axis])
  {
    if (v9 + v13 <= height)
    {
      if (v9 < 0.0)
      {
        v13 = v13 - fabs(v9);
        v9 = 0.0;
      }
    }

    else
    {
      v13 = height - v9;
    }
  }

  else if (v7 + v11 <= width)
  {
    if (v7 < 0.0)
    {
      v11 = v11 - fabs(v7);
      v7 = 0.0;
    }
  }

  else
  {
    v11 = width - v7;
  }

  [(SCATAxisLayer *)self setFrame:v7, v9, v11, v13];
  v19.origin.x = v7;
  v19.origin.y = v9;
  v19.size.width = v11;
  v19.size.height = v13;
  v20 = CGRectInset(v19, 1.0, 1.0);
  v14 = v20.size.width;
  v15 = v20.size.height;
  v16 = [(SCATAxisLayer *)self foregroundLayer:v20.origin.x];
  [v16 setFrame:{1.0, 1.0, v14, v15}];

  v17 = [(SCATAxisLayer *)self compositingLayer];
  [v17 setFrame:{1.0, 1.0, v14, v15}];
}

- (id)_backgroundColorForTheme:(int)a3
{
  if (a3)
  {
    v3 = +[UIColor clearColor];
  }

  else
  {
    v4 = +[AXSettings sharedInstance];
    if ([v4 assistiveTouchScannerCursorHighVisibilityEnabled])
    {
      v5 = 0.25;
    }

    else
    {
      v5 = 0.15;
    }

    v6 = +[AXSettings sharedInstance];
    [v6 assistiveTouchCursorColor];

    v7 = AXSAssistiveTouchCursorColor();
    CopyWithAlpha = CGColorCreateCopyWithAlpha(v7, v5);
    v3 = [UIColor colorWithCGColor:CFAutorelease(CopyWithAlpha)];
  }

  return v3;
}

- (id)_borderBackgroundColorForTheme:(int)a3
{
  if (a3 > 1)
  {
    +[UIColor clearColor];
  }

  else
  {
    v3 = +[AXSettings sharedInstance];
    [v3 assistiveTouchCursorColor];

    [UIColor colorWithCGColor:AXSAssistiveTouchCursorColor()];
  }
  v4 = ;

  return v4;
}

- (id)_borderForegroundColorForTheme:(int)a3
{
  if (a3 > 1)
  {
    +[UIColor clearColor];
  }

  else
  {
    v3 = +[AXSettings sharedInstance];
    [v3 assistiveTouchCursorColor];

    [UIColor colorWithCGColor:AXSAssistiveTouchCursorColor()];
  }
  v4 = ;

  return v4;
}

@end