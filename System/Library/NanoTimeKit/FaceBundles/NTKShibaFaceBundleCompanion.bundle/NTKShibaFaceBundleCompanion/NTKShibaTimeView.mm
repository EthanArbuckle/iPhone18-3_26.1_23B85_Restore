@interface NTKShibaTimeView
- (NTKShibaTimeView)initWithFrame:(CGRect)a3 style:(unint64_t)a4 andDevice:(id)a5;
- (id)_customDialBackgroundView;
- (id)_secondTickActiveColorForColorPalette:(id)a3;
- (id)_secondTickInactiveColorForColorPalette:(id)a3;
- (void)applyTransitionFraction:(double)a3 fromColorPalette:(id)a4 toColorPalette:(id)a5 animateElements:(BOOL)a6;
- (void)layoutSubviews;
- (void)setPalette:(id)a3;
@end

@implementation NTKShibaTimeView

- (NTKShibaTimeView)initWithFrame:(CGRect)a3 style:(unint64_t)a4 andDevice:(id)a5
{
  v12.receiver = self;
  v12.super_class = NTKShibaTimeView;
  v5 = [(NTKShibaTimeView *)&v12 initWithFrame:a4 style:a5 andDevice:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v7 = [(NTKShibaTimeView *)v5 digitalTimeLabel];
    [v7 setHidden:1];

    v8 = +[UIColor blackColor];
    v9 = [(NTKShibaTimeView *)v6 analogHandsView];
    v10 = [v9 secondHandView];
    [v10 setHandDotColor:v8];
  }

  return v6;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = NTKShibaTimeView;
  [(NTKShibaTimeView *)&v8 layoutSubviews];
  v3 = [(NTKShibaTimeView *)self digitalContainerView];
  [v3 setClipsToBounds:1];

  v4 = [(NTKShibaTimeView *)self digitalContainerView];
  v5 = [v4 layer];
  v6 = [(NTKShibaTimeView *)self digitalContainerView];
  [v6 bounds];
  [v5 setCornerRadius:v7 * 0.5];
}

- (id)_customDialBackgroundView
{
  v2 = objc_opt_new();

  return v2;
}

- (void)setPalette:(id)a3
{
  v4 = a3;
  v5 = [v4 activeTickColor];
  activeColor = self->_activeColor;
  self->_activeColor = v5;

  v7 = [v4 inactiveTickColor];
  inactiveColor = self->_inactiveColor;
  self->_inactiveColor = v7;

  v9 = [v4 secondHandColor];

  secondHandColor = self->_secondHandColor;
  self->_secondHandColor = v9;

  [(NTKShibaTimeView *)self _applyColorToAnalogHands];

  [(NTKShibaTimeView *)self _refreshDigitalTicks];
}

- (void)applyTransitionFraction:(double)a3 fromColorPalette:(id)a4 toColorPalette:(id)a5 animateElements:(BOOL)a6
{
  v8 = a5;
  v9 = a4;
  v10 = [v9 activeTickColor];
  v11 = [v8 activeTickColor];
  v12 = NTKInterpolateBetweenColors();
  activeColor = self->_activeColor;
  self->_activeColor = v12;

  v14 = [v9 inactiveTickColor];
  v15 = [v8 inactiveTickColor];
  v16 = NTKInterpolateBetweenColors();
  inactiveColor = self->_inactiveColor;
  self->_inactiveColor = v16;

  v18 = [v9 secondHandColor];

  v19 = [v8 secondHandColor];

  v20 = NTKInterpolateBetweenColors();
  secondHandColor = self->_secondHandColor;
  self->_secondHandColor = v20;

  [(NTKShibaTimeView *)self _applyColorToAnalogHands];

  [(NTKShibaTimeView *)self _refreshDigitalTicks];
}

- (id)_secondTickActiveColorForColorPalette:(id)a3
{
  v4 = a3;
  tritiumOnFraction = self->_tritiumOnFraction;
  if (tritiumOnFraction >= 1.0)
  {
    v13.receiver = self;
    v13.super_class = NTKShibaTimeView;
    v10 = [(NTKShibaTimeView *)&v13 _secondTickInactiveColorForColorPalette:v4];
  }

  else
  {
    if (tritiumOnFraction > 0.0)
    {
      v12.receiver = self;
      v12.super_class = NTKShibaTimeView;
      v6 = [(NTKShibaTimeView *)&v12 _secondTickInactiveColorForColorPalette:v4];
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

- (id)_secondTickInactiveColorForColorPalette:(id)a3
{
  v4 = a3;
  tritiumOnFraction = self->_tritiumOnFraction;
  if (tritiumOnFraction >= 1.0)
  {
    v13.receiver = self;
    v13.super_class = NTKShibaTimeView;
    v10 = [(NTKShibaTimeView *)&v13 _secondTickInactiveColorForColorPalette:v4];
  }

  else
  {
    if (tritiumOnFraction > 0.0)
    {
      v12.receiver = self;
      v12.super_class = NTKShibaTimeView;
      v6 = [(NTKShibaTimeView *)&v12 _secondTickInactiveColorForColorPalette:v4];
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