@interface NTKPoodleComplicationBackgroundView
- (NTKPoodleComplicationBackgroundView)init;
- (void)applyStyleChange;
- (void)applyTransitionFraction:(double)a3 fromPalette:(id)a4 toPalette:(id)a5;
- (void)layoutSubviews;
@end

@implementation NTKPoodleComplicationBackgroundView

- (NTKPoodleComplicationBackgroundView)init
{
  v7.receiver = self;
  v7.super_class = NTKPoodleComplicationBackgroundView;
  v2 = [(NTKPoodleComplicationBackgroundView *)&v7 init];
  if (v2)
  {
    v3 = +[CALayer layer];
    backgroundLayer = v2->_backgroundLayer;
    v2->_backgroundLayer = v3;

    v5 = [(NTKPoodleComplicationBackgroundView *)v2 layer];
    [v5 addSublayer:v2->_backgroundLayer];
  }

  return v2;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = NTKPoodleComplicationBackgroundView;
  [(NTKPoodleComplicationBackgroundView *)&v7 layoutSubviews];
  v3 = [(NTKZeudleComplicationBackgroundView *)self device];
  v4 = sub_10980(v3, v3);

  [(NTKZeudleComplicationBackgroundView *)self contentFrame];
  [(CALayer *)self->_backgroundLayer setFrame:?];
  [(CALayer *)self->_backgroundLayer setCornerCurve:kCACornerCurveCircular];
  [(CALayer *)self->_backgroundLayer setCornerRadius:v4];
  [(CALayer *)self->_backgroundLayer setMasksToBounds:1];
  backgroundLayer = self->_backgroundLayer;
  if (qword_58858 != -1)
  {
    sub_2EE00();
  }

  [(CALayer *)backgroundLayer setActions:qword_58850];
  v6 = [(NTKPoodleComplicationBackgroundView *)self layer];
  [v6 addSublayer:self->_backgroundLayer];
}

- (void)applyStyleChange
{
  v6.receiver = self;
  v6.super_class = NTKPoodleComplicationBackgroundView;
  [(NTKZeudleComplicationBackgroundView *)&v6 applyStyleChange];
  backgroundLayer = self->_backgroundLayer;
  v4 = [(NTKZeudleComplicationBackgroundView *)self palette];
  v5 = [v4 bottomComplicationBackground];
  -[CALayer setBackgroundColor:](backgroundLayer, "setBackgroundColor:", [v5 CGColor]);
}

- (void)applyTransitionFraction:(double)a3 fromPalette:(id)a4 toPalette:(id)a5
{
  v8 = a4;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = NTKPoodleComplicationBackgroundView;
  [(NTKZeudleComplicationBackgroundView *)&v14 applyTransitionFraction:v8 fromPalette:v9 toPalette:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      v11 = [v8 bottomComplicationBackground];
      v12 = [v10 bottomComplicationBackground];

      v13 = NTKInterpolateBetweenColors();

      -[CALayer setBackgroundColor:](self->_backgroundLayer, "setBackgroundColor:", [v13 CGColor]);
    }
  }
}

@end