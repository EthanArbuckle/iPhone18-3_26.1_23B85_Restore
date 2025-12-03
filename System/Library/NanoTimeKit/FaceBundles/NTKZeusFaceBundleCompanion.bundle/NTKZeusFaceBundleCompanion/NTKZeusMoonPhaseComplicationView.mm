@interface NTKZeusMoonPhaseComplicationView
- (CGSize)sizeThatFits:(CGSize)fits;
- (NTKZeusMoonPhaseComplicationView)initWithBackgroundView:(id)view;
- (void)_renderMoon;
- (void)_updateImages;
- (void)applyPalette:(id)palette;
- (void)applyTransitionFraction:(double)fraction fromPalette:(id)palette toPalette:(id)toPalette;
- (void)layoutSubviews;
- (void)setPhaseNumber:(unint64_t)number hemisphere:(int64_t)hemisphere;
@end

@implementation NTKZeusMoonPhaseComplicationView

- (NTKZeusMoonPhaseComplicationView)initWithBackgroundView:(id)view
{
  v8.receiver = self;
  v8.super_class = NTKZeusMoonPhaseComplicationView;
  v3 = [(NTKZeusComplicationView *)&v8 initWithBackgroundView:view];
  if (v3)
  {
    v4 = [UIImageView alloc];
    [(NTKZeusMoonPhaseComplicationView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    imageView = v3->_imageView;
    v3->_imageView = v5;

    [(UIImageView *)v3->_imageView setAutoresizingMask:18];
    [(NTKZeusMoonPhaseComplicationView *)v3 addSubview:v3->_imageView];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIImageView *)self->_imageView sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = NTKZeusMoonPhaseComplicationView;
  [(NTKZeusComplicationView *)&v5 layoutSubviews];
  [(UIImageView *)self->_imageView sizeToFit];
  imageView = self->_imageView;
  [(UIImageView *)imageView bounds];
  [(NTKZeusMoonPhaseComplicationView *)self bounds];
  device = [(NTKZeusComplicationView *)self device];
  CLKRectCenteredIntegralRectForDevice();
  [(UIImageView *)imageView setFrame:?];
}

- (void)_renderMoon
{
  device = [(NTKZeusComplicationView *)self device];
  sub_C038(device, v10);
  v4 = [UIColor colorWithWhite:1.0 alpha:0.5];
  v5 = [UIColor colorWithWhite:1.0 alpha:0.25];
  v6 = NUNIRenderedMoonImage();
  moonImage = self->_moonImage;
  self->_moonImage = v6;

  imageView = self->_imageView;
  v9 = self->_moonImage;

  [(UIImageView *)imageView setImage:v9];
}

- (void)setPhaseNumber:(unint64_t)number hemisphere:(int64_t)hemisphere
{
  self->_moonPhaseHemisphere = hemisphere;
  self->_phaseNumber = number;
  if (self->_moonPhaseHemisphere != hemisphere)
  {
    [(NTKZeusMoonPhaseComplicationView *)self _renderMoon];
  }

  [(NTKZeusMoonPhaseComplicationView *)self _updateImages];
}

- (void)_updateImages
{
  [(NTKZeusMoonPhaseComplicationView *)self _renderMoon];
  v3 = 1.0;
  if (self->_moonPhaseHemisphere == 1)
  {
    v3 = -1.0;
  }

  imageView = self->_imageView;
  CGAffineTransformMakeScale(&v8, v3, v3);
  [(UIImageView *)imageView setTransform:&v8];
  v5 = self->_imageView;
  palette = [(NTKZeusComplicationView *)self palette];
  bottomComplication = [palette bottomComplication];
  [(UIImageView *)v5 setTintColor:bottomComplication];

  [(NTKZeusMoonPhaseComplicationView *)self setNeedsLayout];
}

- (void)applyPalette:(id)palette
{
  v4.receiver = self;
  v4.super_class = NTKZeusMoonPhaseComplicationView;
  [(NTKZeusComplicationView *)&v4 applyPalette:palette];
  [(NTKZeusMoonPhaseComplicationView *)self _updateImages];
}

- (void)applyTransitionFraction:(double)fraction fromPalette:(id)palette toPalette:(id)toPalette
{
  v13.receiver = self;
  v13.super_class = NTKZeusMoonPhaseComplicationView;
  toPaletteCopy = toPalette;
  paletteCopy = palette;
  [(NTKZeusComplicationView *)&v13 applyTransitionFraction:paletteCopy fromPalette:toPaletteCopy toPalette:fraction];
  bottomComplication = [paletteCopy bottomComplication];

  bottomComplication2 = [toPaletteCopy bottomComplication];

  v12 = NTKInterpolateBetweenColors();

  [(UIImageView *)self->_imageView setTintColor:v12];
}

@end