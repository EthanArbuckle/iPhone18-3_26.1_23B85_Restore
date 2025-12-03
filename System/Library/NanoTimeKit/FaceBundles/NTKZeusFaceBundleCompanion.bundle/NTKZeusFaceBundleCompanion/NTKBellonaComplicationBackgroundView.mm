@interface NTKBellonaComplicationBackgroundView
- (NTKBellonaComplicationBackgroundView)init;
- (id)borderColorForCurrentHour:(unint64_t)hour;
- (void)alphaBasedOnSpecificFadeInProgress:(double)progress fadeOutProgress:(double)outProgress forCurrentHour:(unint64_t)hour;
- (void)applyStyleChange;
- (void)applyTransitionFraction:(double)fraction fromPalette:(id)palette toPalette:(id)toPalette;
- (void)hourChangeAnimationFromCurrentHour:(unint64_t)hour withFraction:(double)fraction timeChanged:(BOOL)changed;
- (void)layoutSubviews;
- (void)tritiumOnTransitionWithFraction:(double)fraction forCurrentHour:(unint64_t)hour;
@end

@implementation NTKBellonaComplicationBackgroundView

- (NTKBellonaComplicationBackgroundView)init
{
  v6.receiver = self;
  v6.super_class = NTKBellonaComplicationBackgroundView;
  v2 = [(NTKBellonaComplicationBackgroundView *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(UIView);
    backgroundView = v2->_backgroundView;
    v2->_backgroundView = v3;

    [(NTKBellonaComplicationBackgroundView *)v2 addSubview:v2->_backgroundView];
  }

  return v2;
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = NTKBellonaComplicationBackgroundView;
  [(NTKBellonaComplicationBackgroundView *)&v17 layoutSubviews];
  device = [(NTKZeudleComplicationBackgroundView *)self device];
  v4 = sub_D6FC(device, device);

  [(NTKZeudleComplicationBackgroundView *)self contentFrame];
  [(UIView *)self->_backgroundView setFrame:?];
  CLKRectGetCenter();
  [(UIView *)self->_backgroundView setCenter:?];
  layer = [(UIView *)self->_backgroundView layer];
  [layer setCornerRadius:v4];

  layer2 = [(UIView *)self->_backgroundView layer];
  [layer2 setCornerCurve:kCACornerCurveContinuous];

  layer3 = [(UIView *)self->_backgroundView layer];
  [layer3 setMasksToBounds:1];

  layer4 = [(UIView *)self->_backgroundView layer];
  [layer4 setBorderWidth:1.0];

  palette = [(NTKZeudleComplicationBackgroundView *)self palette];
  dateComplicationBackgroundStroke = [palette dateComplicationBackgroundStroke];
  v11 = [dateComplicationBackgroundStroke colorWithAlphaComponent:1.0];
  cGColor = [v11 CGColor];
  layer5 = [(UIView *)self->_backgroundView layer];
  [layer5 setBorderColor:cGColor];

  palette2 = [(NTKZeudleComplicationBackgroundView *)self palette];
  dateComplicationBackground = [palette2 dateComplicationBackground];
  v16 = [dateComplicationBackground colorWithAlphaComponent:0.0];
  [(UIView *)self->_backgroundView setBackgroundColor:v16];
}

- (id)borderColorForCurrentHour:(unint64_t)hour
{
  if (hour <= 0xB)
  {
    hourCopy = hour;
  }

  else
  {
    hourCopy = hour - 12;
  }

  palette = [(NTKZeudleComplicationBackgroundView *)self palette];
  v5 = palette;
  if (hourCopy == 3)
  {
    [palette beige];
  }

  else
  {
    [palette dateComplicationBackgroundStroke];
  }
  v6 = ;

  return v6;
}

- (void)hourChangeAnimationFromCurrentHour:(unint64_t)hour withFraction:(double)fraction timeChanged:(BOOL)changed
{
  changedCopy = changed;
  v13 = [(NTKBellonaComplicationBackgroundView *)self borderColorForCurrentHour:?];
  if (changedCopy)
  {
    cGColor = [v13 CGColor];
    layer = [(UIView *)self->_backgroundView layer];
    [layer setBorderColor:cGColor];
  }

  else
  {
    layer = [(NTKBellonaComplicationBackgroundView *)self borderColorForCurrentHour:hour + 1];
    v10 = CLKInterpolateBetweenColors();
    cGColor2 = [v10 CGColor];
    layer2 = [(UIView *)self->_backgroundView layer];
    [layer2 setBorderColor:cGColor2];
  }
}

- (void)tritiumOnTransitionWithFraction:(double)fraction forCurrentHour:(unint64_t)hour
{
  fraction = [(NTKBellonaComplicationBackgroundView *)self borderColorForCurrentHour:hour, fraction];
  v5 = fraction;
  cGColor = [fraction CGColor];
  layer = [(UIView *)self->_backgroundView layer];
  [layer setBorderColor:cGColor];
}

- (void)alphaBasedOnSpecificFadeInProgress:(double)progress fadeOutProgress:(double)outProgress forCurrentHour:(unint64_t)hour
{
  v6 = [(NTKBellonaComplicationBackgroundView *)self borderColorForCurrentHour:hour, 0, 0, 0, 0, 0, 0, 0, 0];
  [v6 getRed:&v29 green:&v28 blue:&v27 alpha:&v26];

  v7 = [(NTKBellonaComplicationBackgroundView *)self borderColorForCurrentHour:3];
  [v7 getRed:&v25 green:&v24 blue:&v23 alpha:&v22];

  CLKInterpolateBetweenFloatsClipped();
  v9 = v8;
  CLKInterpolateBetweenFloatsClipped();
  v11 = v10;
  CLKInterpolateBetweenFloatsClipped();
  v13 = v12;
  CLKInterpolateBetweenFloatsClipped();
  v15 = v14;
  CLKInterpolateBetweenFloatsClipped();
  v17 = v16;
  CLKInterpolateBetweenFloatsClipped();
  v19 = [UIColor colorWithRed:v9 * v15 green:v11 * v17 blue:v13 * v18 alpha:1.0];
  cGColor = [v19 CGColor];
  layer = [(UIView *)self->_backgroundView layer];
  [layer setBorderColor:cGColor];
}

- (void)applyStyleChange
{
  v9.receiver = self;
  v9.super_class = NTKBellonaComplicationBackgroundView;
  [(NTKZeudleComplicationBackgroundView *)&v9 applyStyleChange];
  palette = [(NTKZeudleComplicationBackgroundView *)self palette];
  dateComplicationBackground = [palette dateComplicationBackground];
  [(UIView *)self->_backgroundView setBackgroundColor:dateComplicationBackground];

  palette2 = [(NTKZeudleComplicationBackgroundView *)self palette];
  dateComplicationBackgroundStroke = [palette2 dateComplicationBackgroundStroke];
  cGColor = [dateComplicationBackgroundStroke CGColor];
  layer = [(UIView *)self->_backgroundView layer];
  [layer setBorderColor:cGColor];
}

- (void)applyTransitionFraction:(double)fraction fromPalette:(id)palette toPalette:(id)toPalette
{
  paletteCopy = palette;
  toPaletteCopy = toPalette;
  v20.receiver = self;
  v20.super_class = NTKBellonaComplicationBackgroundView;
  [(NTKZeudleComplicationBackgroundView *)&v20 applyTransitionFraction:paletteCopy fromPalette:toPaletteCopy toPalette:fraction];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = toPaletteCopy;
      v11 = paletteCopy;
      dateComplicationBackground = [v11 dateComplicationBackground];
      dateComplicationBackground2 = [v10 dateComplicationBackground];
      v14 = NTKInterpolateBetweenColors();

      dateComplicationBackgroundStroke = [v11 dateComplicationBackgroundStroke];

      dateComplicationBackgroundStroke2 = [v10 dateComplicationBackgroundStroke];

      v17 = NTKInterpolateBetweenColors();

      [(UIView *)self->_backgroundView setBackgroundColor:v14];
      cGColor = [v17 CGColor];
      layer = [(UIView *)self->_backgroundView layer];
      [layer setBorderColor:cGColor];
    }
  }
}

@end