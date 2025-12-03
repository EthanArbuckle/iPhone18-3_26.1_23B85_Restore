@interface RoutingMaterialColorSwitchingView
- (RoutingMaterialColorSwitchingView)initWithLightMaterial:(int64_t)material darkColor:(id)color;
- (UIView)darkView;
- (UIView)lightView;
- (void)_setDarkViewVisible:(BOOL)visible;
- (void)_setLightViewVisible:(BOOL)visible;
- (void)_updateForCurrentInterfaceStyle;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation RoutingMaterialColorSwitchingView

- (void)_setDarkViewVisible:(BOOL)visible
{
  if (visible)
  {
    [(UIView *)self->_lightView removeFromSuperview];
    darkView = [(RoutingMaterialColorSwitchingView *)self darkView];
    [(RoutingMaterialColorSwitchingView *)self addSubview:darkView];

    darkView2 = [(RoutingMaterialColorSwitchingView *)self darkView];
    LODWORD(v5) = 1148846080;
    v6 = [darkView2 _maps_constraintsEqualToEdgesOfView:self priority:v5];
    allConstraints = [v6 allConstraints];
    [NSLayoutConstraint activateConstraints:allConstraints];
  }

  else
  {
    darkView = self->_darkView;

    [(UIView *)darkView removeFromSuperview];
  }
}

- (UIView)darkView
{
  darkView = self->_darkView;
  if (!darkView)
  {
    v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_darkView;
    self->_darkView = v4;

    [(UIView *)self->_darkView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_darkView setBackgroundColor:self->_darkColor];
    darkView = self->_darkView;
  }

  return darkView;
}

- (void)_setLightViewVisible:(BOOL)visible
{
  if (visible)
  {
    [(UIView *)self->_darkView removeFromSuperview];
    lightView = [(RoutingMaterialColorSwitchingView *)self lightView];
    [(RoutingMaterialColorSwitchingView *)self addSubview:lightView];

    lightView2 = [(RoutingMaterialColorSwitchingView *)self lightView];
    LODWORD(v5) = 1148846080;
    v6 = [lightView2 _maps_constraintsEqualToEdgesOfView:self priority:v5];
    allConstraints = [v6 allConstraints];
    [NSLayoutConstraint activateConstraints:allConstraints];
  }

  else
  {
    lightView = self->_lightView;

    [(UIView *)lightView removeFromSuperview];
  }
}

- (UIView)lightView
{
  lightView = self->_lightView;
  if (!lightView)
  {
    v4 = [UIVisualEffectView alloc];
    v5 = [UIBlurEffect effectWithStyle:self->_lightMaterial];
    v6 = [v4 initWithEffect:v5];

    [(UIView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v6 setAllowsBlurring:0];
    v7 = self->_lightView;
    self->_lightView = v6;

    lightView = self->_lightView;
  }

  return lightView;
}

- (void)_updateForCurrentInterfaceStyle
{
  traitCollection = [(RoutingMaterialColorSwitchingView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  [(RoutingMaterialColorSwitchingView *)self _setLightViewVisible:userInterfaceStyle == 1];

  [(RoutingMaterialColorSwitchingView *)self _setDarkViewVisible:userInterfaceStyle == 2];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = RoutingMaterialColorSwitchingView;
  changeCopy = change;
  [(RoutingMaterialColorSwitchingView *)&v8 traitCollectionDidChange:changeCopy];
  userInterfaceStyle = [changeCopy userInterfaceStyle];

  traitCollection = [(RoutingMaterialColorSwitchingView *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(RoutingMaterialColorSwitchingView *)self _updateForCurrentInterfaceStyle];
  }
}

- (RoutingMaterialColorSwitchingView)initWithLightMaterial:(int64_t)material darkColor:(id)color
{
  colorCopy = color;
  v11.receiver = self;
  v11.super_class = RoutingMaterialColorSwitchingView;
  v8 = [(RoutingMaterialColorSwitchingView *)&v11 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v9 = v8;
  if (v8)
  {
    v8->_lightMaterial = material;
    objc_storeStrong(&v8->_darkColor, color);
    [(RoutingMaterialColorSwitchingView *)v9 _updateForCurrentInterfaceStyle];
  }

  return v9;
}

@end