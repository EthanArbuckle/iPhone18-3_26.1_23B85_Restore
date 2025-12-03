@interface NTKPoodleComplicationBackgroundView
- (NTKPoodleComplicationBackgroundView)init;
- (void)applyStyleChange;
- (void)applyTransitionFraction:(double)fraction fromPalette:(id)palette toPalette:(id)toPalette;
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

    layer = [(NTKPoodleComplicationBackgroundView *)v2 layer];
    [layer addSublayer:v2->_backgroundLayer];
  }

  return v2;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = NTKPoodleComplicationBackgroundView;
  [(NTKPoodleComplicationBackgroundView *)&v7 layoutSubviews];
  device = [(NTKZeudleComplicationBackgroundView *)self device];
  v4 = sub_10980(device, device);

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
  layer = [(NTKPoodleComplicationBackgroundView *)self layer];
  [layer addSublayer:self->_backgroundLayer];
}

- (void)applyStyleChange
{
  v6.receiver = self;
  v6.super_class = NTKPoodleComplicationBackgroundView;
  [(NTKZeudleComplicationBackgroundView *)&v6 applyStyleChange];
  backgroundLayer = self->_backgroundLayer;
  palette = [(NTKZeudleComplicationBackgroundView *)self palette];
  bottomComplicationBackground = [palette bottomComplicationBackground];
  -[CALayer setBackgroundColor:](backgroundLayer, "setBackgroundColor:", [bottomComplicationBackground CGColor]);
}

- (void)applyTransitionFraction:(double)fraction fromPalette:(id)palette toPalette:(id)toPalette
{
  paletteCopy = palette;
  toPaletteCopy = toPalette;
  v14.receiver = self;
  v14.super_class = NTKPoodleComplicationBackgroundView;
  [(NTKZeudleComplicationBackgroundView *)&v14 applyTransitionFraction:paletteCopy fromPalette:toPaletteCopy toPalette:fraction];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = toPaletteCopy;
      bottomComplicationBackground = [paletteCopy bottomComplicationBackground];
      bottomComplicationBackground2 = [v10 bottomComplicationBackground];

      v13 = NTKInterpolateBetweenColors();

      -[CALayer setBackgroundColor:](self->_backgroundLayer, "setBackgroundColor:", [v13 CGColor]);
    }
  }
}

@end