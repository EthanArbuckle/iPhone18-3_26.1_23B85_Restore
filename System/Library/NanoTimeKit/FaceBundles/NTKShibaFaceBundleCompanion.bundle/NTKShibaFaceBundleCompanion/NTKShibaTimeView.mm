@interface NTKShibaTimeView
- (NTKShibaTimeView)initWithFrame:(CGRect)frame style:(unint64_t)style andDevice:(id)device;
- (id)_customDialBackgroundView;
- (id)_secondTickActiveColorForColorPalette:(id)palette;
- (id)_secondTickInactiveColorForColorPalette:(id)palette;
- (void)applyTransitionFraction:(double)fraction fromColorPalette:(id)palette toColorPalette:(id)colorPalette animateElements:(BOOL)elements;
- (void)layoutSubviews;
- (void)setPalette:(id)palette;
@end

@implementation NTKShibaTimeView

- (NTKShibaTimeView)initWithFrame:(CGRect)frame style:(unint64_t)style andDevice:(id)device
{
  v12.receiver = self;
  v12.super_class = NTKShibaTimeView;
  v5 = [(NTKShibaTimeView *)&v12 initWithFrame:style style:device andDevice:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    digitalTimeLabel = [(NTKShibaTimeView *)v5 digitalTimeLabel];
    [digitalTimeLabel setHidden:1];

    v8 = +[UIColor blackColor];
    analogHandsView = [(NTKShibaTimeView *)v6 analogHandsView];
    secondHandView = [analogHandsView secondHandView];
    [secondHandView setHandDotColor:v8];
  }

  return v6;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = NTKShibaTimeView;
  [(NTKShibaTimeView *)&v8 layoutSubviews];
  digitalContainerView = [(NTKShibaTimeView *)self digitalContainerView];
  [digitalContainerView setClipsToBounds:1];

  digitalContainerView2 = [(NTKShibaTimeView *)self digitalContainerView];
  layer = [digitalContainerView2 layer];
  digitalContainerView3 = [(NTKShibaTimeView *)self digitalContainerView];
  [digitalContainerView3 bounds];
  [layer setCornerRadius:v7 * 0.5];
}

- (id)_customDialBackgroundView
{
  v2 = objc_opt_new();

  return v2;
}

- (void)setPalette:(id)palette
{
  paletteCopy = palette;
  activeTickColor = [paletteCopy activeTickColor];
  activeColor = self->_activeColor;
  self->_activeColor = activeTickColor;

  inactiveTickColor = [paletteCopy inactiveTickColor];
  inactiveColor = self->_inactiveColor;
  self->_inactiveColor = inactiveTickColor;

  secondHandColor = [paletteCopy secondHandColor];

  secondHandColor = self->_secondHandColor;
  self->_secondHandColor = secondHandColor;

  [(NTKShibaTimeView *)self _applyColorToAnalogHands];

  [(NTKShibaTimeView *)self _refreshDigitalTicks];
}

- (void)applyTransitionFraction:(double)fraction fromColorPalette:(id)palette toColorPalette:(id)colorPalette animateElements:(BOOL)elements
{
  colorPaletteCopy = colorPalette;
  paletteCopy = palette;
  activeTickColor = [paletteCopy activeTickColor];
  activeTickColor2 = [colorPaletteCopy activeTickColor];
  v12 = NTKInterpolateBetweenColors();
  activeColor = self->_activeColor;
  self->_activeColor = v12;

  inactiveTickColor = [paletteCopy inactiveTickColor];
  inactiveTickColor2 = [colorPaletteCopy inactiveTickColor];
  v16 = NTKInterpolateBetweenColors();
  inactiveColor = self->_inactiveColor;
  self->_inactiveColor = v16;

  secondHandColor = [paletteCopy secondHandColor];

  secondHandColor2 = [colorPaletteCopy secondHandColor];

  v20 = NTKInterpolateBetweenColors();
  secondHandColor = self->_secondHandColor;
  self->_secondHandColor = v20;

  [(NTKShibaTimeView *)self _applyColorToAnalogHands];

  [(NTKShibaTimeView *)self _refreshDigitalTicks];
}

- (id)_secondTickActiveColorForColorPalette:(id)palette
{
  paletteCopy = palette;
  tritiumOnFraction = self->_tritiumOnFraction;
  if (tritiumOnFraction >= 1.0)
  {
    v13.receiver = self;
    v13.super_class = NTKShibaTimeView;
    v10 = [(NTKShibaTimeView *)&v13 _secondTickInactiveColorForColorPalette:paletteCopy];
  }

  else
  {
    if (tritiumOnFraction > 0.0)
    {
      v12.receiver = self;
      v12.super_class = NTKShibaTimeView;
      v6 = [(NTKShibaTimeView *)&v12 _secondTickInactiveColorForColorPalette:paletteCopy];
      activeColor = self->_activeColor;
      v8 = self->_tritiumOnFraction;
      v9 = NTKInterpolateBetweenColors();

      goto LABEL_7;
    }

    v10 = self->_activeColor;
  }

  v9 = v10;
LABEL_7:

  return v9;
}

- (id)_secondTickInactiveColorForColorPalette:(id)palette
{
  paletteCopy = palette;
  tritiumOnFraction = self->_tritiumOnFraction;
  if (tritiumOnFraction >= 1.0)
  {
    v13.receiver = self;
    v13.super_class = NTKShibaTimeView;
    v10 = [(NTKShibaTimeView *)&v13 _secondTickInactiveColorForColorPalette:paletteCopy];
  }

  else
  {
    if (tritiumOnFraction > 0.0)
    {
      v12.receiver = self;
      v12.super_class = NTKShibaTimeView;
      v6 = [(NTKShibaTimeView *)&v12 _secondTickInactiveColorForColorPalette:paletteCopy];
      inactiveColor = self->_inactiveColor;
      v8 = self->_tritiumOnFraction;
      v9 = NTKInterpolateBetweenColors();

      goto LABEL_7;
    }

    v10 = self->_inactiveColor;
  }

  v9 = v10;
LABEL_7:

  return v9;
}

@end