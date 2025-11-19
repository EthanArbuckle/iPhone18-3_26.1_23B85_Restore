@interface NTKBellonaComplicationBackgroundView
- (NTKBellonaComplicationBackgroundView)init;
- (id)borderColorForCurrentHour:(unint64_t)a3;
- (void)alphaBasedOnSpecificFadeInProgress:(double)a3 fadeOutProgress:(double)a4 forCurrentHour:(unint64_t)a5;
- (void)applyStyleChange;
- (void)applyTransitionFraction:(double)a3 fromPalette:(id)a4 toPalette:(id)a5;
- (void)hourChangeAnimationFromCurrentHour:(unint64_t)a3 withFraction:(double)a4 timeChanged:(BOOL)a5;
- (void)layoutSubviews;
- (void)tritiumOnTransitionWithFraction:(double)a3 forCurrentHour:(unint64_t)a4;
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
  v3 = [(NTKZeudleComplicationBackgroundView *)self device];
  v4 = sub_D6FC(v3, v3);

  [(NTKZeudleComplicationBackgroundView *)self contentFrame];
  [(UIView *)self->_backgroundView setFrame:?];
  CLKRectGetCenter();
  [(UIView *)self->_backgroundView setCenter:?];
  v5 = [(UIView *)self->_backgroundView layer];
  [v5 setCornerRadius:v4];

  v6 = [(UIView *)self->_backgroundView layer];
  [v6 setCornerCurve:kCACornerCurveContinuous];

  v7 = [(UIView *)self->_backgroundView layer];
  [v7 setMasksToBounds:1];

  v8 = [(UIView *)self->_backgroundView layer];
  [v8 setBorderWidth:1.0];

  v9 = [(NTKZeudleComplicationBackgroundView *)self palette];
  v10 = [v9 dateComplicationBackgroundStroke];
  v11 = [v10 colorWithAlphaComponent:1.0];
  v12 = [v11 CGColor];
  v13 = [(UIView *)self->_backgroundView layer];
  [v13 setBorderColor:v12];

  v14 = [(NTKZeudleComplicationBackgroundView *)self palette];
  v15 = [v14 dateComplicationBackground];
  v16 = [v15 colorWithAlphaComponent:0.0];
  [(UIView *)self->_backgroundView setBackgroundColor:v16];
}

- (id)borderColorForCurrentHour:(unint64_t)a3
{
  if (a3 <= 0xB)
  {
    v3 = a3;
  }

  else
  {
    v3 = a3 - 12;
  }

  v4 = [(NTKZeudleComplicationBackgroundView *)self palette];
  v5 = v4;
  if (v3 == 3)
  {
    [v4 beige];
  }

  else
  {
    [v4 dateComplicationBackgroundStroke];
  }
  v6 = ;

  return v6;
}

- (void)hourChangeAnimationFromCurrentHour:(unint64_t)a3 withFraction:(double)a4 timeChanged:(BOOL)a5
{
  v5 = a5;
  v13 = [(NTKBellonaComplicationBackgroundView *)self borderColorForCurrentHour:?];
  if (v5)
  {
    v8 = [v13 CGColor];
    v9 = [(UIView *)self->_backgroundView layer];
    [v9 setBorderColor:v8];
  }

  else
  {
    v9 = [(NTKBellonaComplicationBackgroundView *)self borderColorForCurrentHour:a3 + 1];
    v10 = CLKInterpolateBetweenColors();
    v11 = [v10 CGColor];
    v12 = [(UIView *)self->_backgroundView layer];
    [v12 setBorderColor:v11];
  }
}

- (void)tritiumOnTransitionWithFraction:(double)a3 forCurrentHour:(unint64_t)a4
{
  v8 = [(NTKBellonaComplicationBackgroundView *)self borderColorForCurrentHour:a4, a3];
  v5 = v8;
  v6 = [v8 CGColor];
  v7 = [(UIView *)self->_backgroundView layer];
  [v7 setBorderColor:v6];
}

- (void)alphaBasedOnSpecificFadeInProgress:(double)a3 fadeOutProgress:(double)a4 forCurrentHour:(unint64_t)a5
{
  v6 = [(NTKBellonaComplicationBackgroundView *)self borderColorForCurrentHour:a5, 0, 0, 0, 0, 0, 0, 0, 0];
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
  v20 = [v19 CGColor];
  v21 = [(UIView *)self->_backgroundView layer];
  [v21 setBorderColor:v20];
}

- (void)applyStyleChange
{
  v9.receiver = self;
  v9.super_class = NTKBellonaComplicationBackgroundView;
  [(NTKZeudleComplicationBackgroundView *)&v9 applyStyleChange];
  v3 = [(NTKZeudleComplicationBackgroundView *)self palette];
  v4 = [v3 dateComplicationBackground];
  [(UIView *)self->_backgroundView setBackgroundColor:v4];

  v5 = [(NTKZeudleComplicationBackgroundView *)self palette];
  v6 = [v5 dateComplicationBackgroundStroke];
  v7 = [v6 CGColor];
  v8 = [(UIView *)self->_backgroundView layer];
  [v8 setBorderColor:v7];
}

- (void)applyTransitionFraction:(double)a3 fromPalette:(id)a4 toPalette:(id)a5
{
  v8 = a4;
  v9 = a5;
  v20.receiver = self;
  v20.super_class = NTKBellonaComplicationBackgroundView;
  [(NTKZeudleComplicationBackgroundView *)&v20 applyTransitionFraction:v8 fromPalette:v9 toPalette:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      v11 = v8;
      v12 = [v11 dateComplicationBackground];
      v13 = [v10 dateComplicationBackground];
      v14 = NTKInterpolateBetweenColors();

      v15 = [v11 dateComplicationBackgroundStroke];

      v16 = [v10 dateComplicationBackgroundStroke];

      v17 = NTKInterpolateBetweenColors();

      [(UIView *)self->_backgroundView setBackgroundColor:v14];
      v18 = [v17 CGColor];
      v19 = [(UIView *)self->_backgroundView layer];
      [v19 setBorderColor:v18];
    }
  }
}

@end