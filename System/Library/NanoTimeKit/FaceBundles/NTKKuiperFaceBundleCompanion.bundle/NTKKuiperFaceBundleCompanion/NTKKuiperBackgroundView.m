@interface NTKKuiperBackgroundView
- (CGRect)dialFrame;
- (NTKKuiperBackgroundView)initWithDevice:(id)a3 dialRadius:(double)a4;
- (id)_foregroundDigitColorForRotationFraction:(double)a3;
- (void)_addMulticolorCircularGradientLayer;
- (void)_addMulticolorFullscreenGradientLayer;
- (void)_applyColorPalette;
- (void)_applyDialLayout;
- (void)_applyFontForDigitIndex:(unint64_t)a3;
- (void)_applyFullscreenGradientLayerEnabled:(BOOL)a3 circularGradientLayerEnabled:(BOOL)a4;
- (void)_applyTransformToLabelsWithRubberbanding:(double)a3;
- (void)_removeMulticolorCircularGradientLayer;
- (void)_removeMulticolorFullscreenGradientLayer;
- (void)_setTypographicSize:(CGSize)a3 rubberbanding:(double)a4;
- (void)applyFont;
- (void)setColorPalette:(id)a3;
- (void)setOverrideBackgroundColor:(id)a3;
- (void)typographicSizeProviderUpdateNumeralSizes:(id)a3;
@end

@implementation NTKKuiperBackgroundView

- (NTKKuiperBackgroundView)initWithDevice:(id)a3 dialRadius:(double)a4
{
  v7 = a3;
  [v7 screenBounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v47.receiver = self;
  v47.super_class = NTKKuiperBackgroundView;
  v16 = [(NTKKuiperBackgroundView *)&v47 initWithFrame:?];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_device, a3);
    v18 = objc_opt_new();
    backgroundColorLayer = v17->_backgroundColorLayer;
    v17->_backgroundColorLayer = v18;

    v20 = [(NTKKuiperBackgroundView *)v17 layer];
    [v20 addSublayer:v17->_backgroundColorLayer];

    v21 = [[NTKRoundedCornerOverlayView alloc] initWithFrame:v7 forDeviceCornerRadius:{v9, v11, v13, v15}];
    cornerView = v17->_cornerView;
    v17->_cornerView = v21;

    [(NTKKuiperBackgroundView *)v17 addSubview:v17->_cornerView];
    v17->_dialRadius = a4;
    v23 = +[CAShapeLayer layer];
    dialLayer = v17->_dialLayer;
    v17->_dialLayer = v23;

    v25 = [(NTKKuiperBackgroundView *)v17 layer];
    [v25 addSublayer:v17->_dialLayer];

    v27 = sub_4668(v26, 0x3CuLL);
    minuteTickReplicatorLayer = v17->_minuteTickReplicatorLayer;
    v17->_minuteTickReplicatorLayer = v27;

    v29 = sub_459C();
    minuteTickLayer = v17->_minuteTickLayer;
    v17->_minuteTickLayer = v29;

    [(CAReplicatorLayer *)v17->_minuteTickReplicatorLayer addSublayer:v17->_minuteTickLayer];
    v31 = [(NTKKuiperBackgroundView *)v17 layer];
    [v31 addSublayer:v17->_minuteTickReplicatorLayer];

    v32 = 12;
    v34 = sub_4668(v33, 0xCuLL);
    hourTickReplicatorLayer = v17->_hourTickReplicatorLayer;
    v17->_hourTickReplicatorLayer = v34;

    v36 = sub_459C();
    hourTickLayer = v17->_hourTickLayer;
    v17->_hourTickLayer = v36;

    [(CAReplicatorLayer *)v17->_hourTickReplicatorLayer addSublayer:v17->_hourTickLayer];
    v38 = [(NTKKuiperBackgroundView *)v17 layer];
    [v38 addSublayer:v17->_hourTickReplicatorLayer];

    v39 = [NTKKuiperFontLoader alloc];
    sub_5C08(v7, &v46);
    v40 = [(NTKKuiperFontLoader *)v39 initWithFontSize:*(&v46 + 1)];
    fontLoader = v17->_fontLoader;
    v17->_fontLoader = v40;

    v42 = objc_opt_new();
    do
    {
      v43 = [[NTKKuiperNumeralLabel alloc] initWithDevice:v7];
      [(NSArray *)v42 addObject:v43];
      [(NTKKuiperBackgroundView *)v17 addSubview:v43];

      --v32;
    }

    while (v32);
    digitLabels = v17->_digitLabels;
    v17->_digitLabels = v42;

    v17->_typographicSize = CGSizeZero;
    [(NTKKuiperBackgroundView *)v17 _applyDialLayout];
  }

  return v17;
}

- (void)_applyDialLayout
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  sub_5C08(self->_device, &v24);
  [(CLKDevice *)self->_device screenBounds];
  [(CALayer *)self->_backgroundColorLayer setFrame:?];
  v3 = self->_dialRadius + self->_dialRadius;
  device = self->_device;
  CLKSizeCenteredInRectForDevice();
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  self->_dialFrame = v29;
  v9 = CGPathCreateWithEllipseInRect(v29, 0);
  [(CAShapeLayer *)self->_dialLayer setPath:v9];
  CGPathRelease(v9);
  v10 = *&v24;
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v11 = CGRectGetWidth(v30) * 0.5;
  [(CAReplicatorLayer *)self->_hourTickReplicatorLayer setFrame:x, y, width, height];
  [(CAReplicatorLayer *)self->_minuteTickReplicatorLayer setFrame:x, y, width, height];
  v12 = v25;
  [(CALayer *)self->_hourTickLayer setBounds:0.0, 0.0, v25];
  [(CALayer *)self->_hourTickLayer setPosition:v11, v10 + *(&v12 + 1) * 0.5];
  v13 = v26;
  [(CALayer *)self->_minuteTickLayer setBounds:0.0, 0.0, v26];
  [(CALayer *)self->_minuteTickLayer setPosition:v11, v10 + *(&v13 + 1) * 0.5];
  v14 = [(NTKKuiperFontLoader *)self->_fontLoader fontForMaximumOverscrollTypographicSize];
  if (qword_16DB8 != -1)
  {
    sub_79A4();
  }

  v27 = NSFontAttributeName;
  v28 = v14;
  v15 = qword_16DB0;
  v16 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  [v15 sizeWithAttributes:v16];

  [(NTKKuiperBackgroundView *)self bounds];
  v17 = self->_device;
  CLKSizeCenteredInRectForDevice();
  digitLabels = self->_digitLabels;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_4A78;
  v23[3] = &unk_106A0;
  v23[4] = v19;
  v23[5] = v20;
  v23[6] = v21;
  v23[7] = v22;
  [(NSArray *)digitLabels enumerateObjectsUsingBlock:v23];

  [(NTKKuiperBackgroundView *)self _applyTransformToLabelsWithRubberbanding:0.0];
  [(NTKKuiperBackgroundView *)self applyFont];
}

- (void)_applyTransformToLabelsWithRubberbanding:(double)a3
{
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  sub_5C08(self->_device, &v8);
  dialRadius = self->_dialRadius;
  digitLabels = self->_digitLabels;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4B54;
  v7[3] = &unk_106C0;
  *&v7[4] = dialRadius - (*&v8 + *(&v9 + 1));
  *&v7[5] = a3;
  [(NSArray *)digitLabels enumerateObjectsUsingBlock:v7];
}

- (void)setOverrideBackgroundColor:(id)a3
{
  v5 = a3;
  if (([(UIColor *)self->_overrideBackgroundColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_overrideBackgroundColor, a3);
    [(NTKKuiperBackgroundView *)self _applyColorPalette];
  }
}

- (void)setColorPalette:(id)a3
{
  objc_storeStrong(&self->_colorPalette, a3);

  [(NTKKuiperBackgroundView *)self _applyColorPalette];
}

- (void)_applyColorPalette
{
  v3 = self->_colorPalette;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v4 = self->_overrideBackgroundColor;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(NTKKuiperColorPalette *)v3 background];
  }

  v7 = v6;
  [(CALayer *)self->_backgroundColorLayer setBackgroundColor:[(UIColor *)v6 CGColor]];
  v8 = [(NTKKuiperColorPalette *)v3 dialBackground];
  -[CAShapeLayer setFillColor:](self->_dialLayer, "setFillColor:", [v8 CGColor]);
  v9 = [(NTKKuiperColorPalette *)v3 hourTick];
  -[CALayer setBackgroundColor:](self->_hourTickLayer, "setBackgroundColor:", [v9 CGColor]);
  v10 = [(NTKKuiperColorPalette *)v3 minuteTick];
  -[CALayer setBackgroundColor:](self->_minuteTickLayer, "setBackgroundColor:", [v10 CGColor]);
  +[CATransaction commit];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = v7;
    v32 = v5;
    v11 = v3;
    v12 = [(NTKKuiperColorPalette *)v11 fromPalette];
    v13 = [(NTKKuiperColorPalette *)v11 toPalette];
    v33 = v12;
    v14 = [v12 pigmentEditOption];
    v15 = [v14 isRainbowColor];

    v16 = [v13 pigmentEditOption];
    v17 = [v16 isRainbowColor];

    if ((v17 & 1) != 0 || v15)
    {
      v28 = v15;
      v23 = v33;
      if ([v23 isRainbowColor])
      {
        if ([v23 dial] > 1)
        {
          v24 = 1;
        }

        else
        {
          v24 = [v23 isTritium];
        }
      }

      else
      {
        v24 = 0;
      }

      v25 = v13;
      v30 = v8;
      if ([v25 isRainbowColor])
      {
        if ([v25 dial] > 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = [v25 isTritium];
        }
      }

      else
      {
        v26 = 0;
      }

      [(NTKKuiperBackgroundView *)self _applyFullscreenGradientLayerEnabled:(v17 & ~v26 | v28 & ~v24) & 1 circularGradientLayerEnabled:(v26 | v24) & 1];
      v8 = v30;
    }

    else
    {
      [(NTKKuiperBackgroundView *)self _applyFullscreenGradientLayerEnabled:0 circularGradientLayerEnabled:0];
    }

    v7 = v31;
    v5 = v32;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v8;
      v18 = v3;
      v19 = [(NTKKuiperColorPalette *)v18 pigmentEditOption];
      v20 = [v19 isRainbowColor];

      if (v20)
      {
        v21 = v18;
        if ([(NTKKuiperColorPalette *)v21 isRainbowColor])
        {
          v8 = v29;
          if ([(NTKKuiperColorPalette *)v21 dial]> 1)
          {
            v22 = &dword_0 + 1;
          }

          else
          {
            v22 = [(NTKKuiperColorPalette *)v21 isTritium];
          }
        }

        else
        {
          v22 = 0;
          v8 = v29;
        }

        if (v5)
        {
          v34 = 0.0;
          v35 = 0;
          [(UIColor *)v5 getWhite:&v35 alpha:&v34];
          v27 = v34 < 1.0;
        }

        else
        {
          v27 = 1;
        }

        [(NTKKuiperBackgroundView *)self _applyFullscreenGradientLayerEnabled:(v22 ^ 1) & v27 circularGradientLayerEnabled:v22];
      }

      else
      {
        [(NTKKuiperBackgroundView *)self _applyFullscreenGradientLayerEnabled:0 circularGradientLayerEnabled:0];
        v8 = v29;
      }
    }
  }
}

- (void)_applyFullscreenGradientLayerEnabled:(BOOL)a3 circularGradientLayerEnabled:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (a3)
  {
    [(NTKKuiperBackgroundView *)self _addMulticolorFullscreenGradientLayer];
  }

  else
  {
    [(NTKKuiperBackgroundView *)self _removeMulticolorFullscreenGradientLayer];
  }

  if (v4)
  {
    [(NTKKuiperBackgroundView *)self _addMulticolorCircularGradientLayer];
  }

  else
  {
    [(NTKKuiperBackgroundView *)self _removeMulticolorCircularGradientLayer];
  }

  multicolorFullscreenGradientLayer = self->_multicolorFullscreenGradientLayer;
  if (multicolorFullscreenGradientLayer)
  {
    [(CALayer *)multicolorFullscreenGradientLayer setHidden:!v5];
  }

  multicolorCircularGradientLayer = self->_multicolorCircularGradientLayer;
  if (multicolorCircularGradientLayer)
  {

    [(CALayer *)multicolorCircularGradientLayer setHidden:!v4];
  }
}

- (void)_addMulticolorCircularGradientLayer
{
  if (!self->_multicolorCircularGradientLayer)
  {
    v3 = objc_opt_new();
    multicolorCircularGradientLayer = self->_multicolorCircularGradientLayer;
    self->_multicolorCircularGradientLayer = v3;

    [(CLKDevice *)self->_device screenBounds];
    [(CALayer *)self->_multicolorCircularGradientLayer setFrame:?];
    v10 = NTKKuiperRainbowGradientImage();
    v5 = v10;
    v6 = [v10 CGImage];
    v7 = sub_4624();
    [(CALayer *)self->_multicolorCircularGradientLayer setActions:v7];

    [(CALayer *)self->_multicolorCircularGradientLayer setContents:v6];
    [(CALayer *)self->_multicolorCircularGradientLayer setContentsGravity:kCAGravityResizeAspectFill];
    v8 = objc_opt_new();
    [(CAShapeLayer *)self->_dialLayer frame];
    [v8 setFrame:?];
    [v8 setPath:{-[CAShapeLayer path](self->_dialLayer, "path")}];
    [(CALayer *)self->_multicolorCircularGradientLayer setMask:v8];
    v9 = [(NTKKuiperBackgroundView *)self layer];
    [v9 insertSublayer:self->_multicolorCircularGradientLayer below:self->_dialLayer];
  }
}

- (void)_addMulticolorFullscreenGradientLayer
{
  if (!self->_multicolorFullscreenGradientLayer)
  {
    v3 = objc_opt_new();
    multicolorFullscreenGradientLayer = self->_multicolorFullscreenGradientLayer;
    self->_multicolorFullscreenGradientLayer = v3;

    [(CLKDevice *)self->_device screenBounds];
    [(CALayer *)self->_multicolorFullscreenGradientLayer setFrame:?];
    v9 = NTKKuiperRainbowGradientImage();
    v5 = v9;
    v6 = [v9 CGImage];
    v7 = sub_4624();
    [(CALayer *)self->_multicolorFullscreenGradientLayer setActions:v7];

    [(CALayer *)self->_multicolorFullscreenGradientLayer setContents:v6];
    [(CALayer *)self->_multicolorFullscreenGradientLayer setContentsGravity:kCAGravityResizeAspectFill];
    v8 = [(NTKKuiperBackgroundView *)self layer];
    [v8 insertSublayer:self->_multicolorFullscreenGradientLayer below:self->_backgroundColorLayer];
  }
}

- (void)_removeMulticolorCircularGradientLayer
{
  multicolorCircularGradientLayer = self->_multicolorCircularGradientLayer;
  if (multicolorCircularGradientLayer)
  {
    [(CALayer *)multicolorCircularGradientLayer removeFromSuperlayer];
    v4 = self->_multicolorCircularGradientLayer;
    self->_multicolorCircularGradientLayer = 0;
  }
}

- (void)_removeMulticolorFullscreenGradientLayer
{
  multicolorFullscreenGradientLayer = self->_multicolorFullscreenGradientLayer;
  if (multicolorFullscreenGradientLayer)
  {
    [(CALayer *)multicolorFullscreenGradientLayer removeFromSuperlayer];
    v4 = self->_multicolorFullscreenGradientLayer;
    self->_multicolorFullscreenGradientLayer = 0;
  }
}

- (void)applyFont
{
  v3 = [(NSArray *)self->_digitLabels count];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      [(NTKKuiperBackgroundView *)self _applyFontForDigitIndex:i];
    }
  }
}

- (void)_applyFontForDigitIndex:(unint64_t)a3
{
  digitRotationAnimation = self->_digitRotationAnimation;
  if (digitRotationAnimation)
  {
    [(NTKKuiperFontRotationAnimation *)digitRotationAnimation rotationForDigitIndex:a3 fraction:self->_digitRotationFraction];
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = [(NSArray *)self->_digitLabels count];
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v8;
  }

  v19 = [(NSArray *)self->_digitLabels objectAtIndex:(v9 - 1)];
  width = self->_typographicSize.width;
  height = self->_typographicSize.height;
  v12 = a3 - 9;
  v13 = [(NTKKuiperFontLoader *)self->_fontLoader foregroundFontWithTypographicSize:a3 - 9 < 0xFFFFFFFFFFFFFFFBLL tickRotation:width flipped:height, v7];
  [v19 setForegroundFont:v13];
  if (v7 >= 1.0)
  {
    if (qword_16DC8 != -1)
    {
      sub_79B8();
    }

    v14 = qword_16DC0;
  }

  else
  {
    v14 = [NSString stringWithFormat:@"%lu", v9];
  }

  v15 = v14;
  [v19 setText:v14];
  if (v7 <= 0.0)
  {
    v18 = [(NTKKuiperColorPalette *)self->_colorPalette digit];
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v16 = [(NTKKuiperFontLoader *)self->_fontLoader backgroundFontWithTypographicSize:v12 < 0xFFFFFFFFFFFFFFFBLL tickRotation:width flipped:height, v7];
    v17 = [(NTKKuiperBackgroundView *)self _backgroundDigitColorForRotationFraction:v7];
    v18 = [(NTKKuiperBackgroundView *)self _foregroundDigitColorForRotationFraction:v7];
  }

  [v19 setBackgroundFont:v16];
  [v19 setBackgroundTextColor:v17];
  [v19 setForegroundTextColor:v18];
  [v19 setNeedsDisplay];
}

- (id)_foregroundDigitColorForRotationFraction:(double)a3
{
  v4 = [(NTKKuiperColorPalette *)self->_colorPalette digit];
  v5 = [(NTKKuiperColorPalette *)self->_colorPalette dialBackground];
  v6 = NTKInterpolateBetweenColors();

  return v6;
}

- (void)typographicSizeProviderUpdateNumeralSizes:(id)a3
{
  v4 = a3;
  [v4 typographicSize];
  v6 = v5;
  v8 = v7;
  [v4 rubberbanding];
  v10 = v9;

  [(NTKKuiperBackgroundView *)self _setTypographicSize:v6 rubberbanding:v8, v10];
}

- (void)_setTypographicSize:(CGSize)a3 rubberbanding:(double)a4
{
  if (self->_typographicSize.width != a3.width || self->_typographicSize.height != a3.height)
  {
    self->_typographicSize = a3;
    [(NTKKuiperBackgroundView *)self applyFont];
  }

  [(NTKKuiperBackgroundView *)self _applyTransformToLabelsWithRubberbanding:a4];
}

- (CGRect)dialFrame
{
  x = self->_dialFrame.origin.x;
  y = self->_dialFrame.origin.y;
  width = self->_dialFrame.size.width;
  height = self->_dialFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end