@interface TwoButtonContainerHeaderView
- (TwoButtonContainerHeaderView)initWithAdditionalCardButtonType:(unint64_t)type tintColor:(id)color buttonMenu:(id)menu;
- (void)_customInitForSecondButton;
@end

@implementation TwoButtonContainerHeaderView

- (void)_customInitForSecondButton
{
  v3 = [[CardButton alloc] initWithConfiguration:self->_buttonConfig];
  quickActionButtonView = self->_quickActionButtonView;
  self->_quickActionButtonView = v3;

  [(CardButton *)self->_quickActionButtonView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CardButton *)self->_quickActionButtonView setMenu:self->_quickActionButtonMenu];
  [(TwoButtonContainerHeaderView *)self addSubview:self->_quickActionButtonView];
  trailingAnchor = [(CardButton *)self->_quickActionButtonView trailingAnchor];
  trailingAnchor2 = [(TwoButtonContainerHeaderView *)self trailingAnchor];
  v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v12[0] = v7;
  centerYAnchor = [(CardButton *)self->_quickActionButtonView centerYAnchor];
  centerYAnchor2 = [(TwoButtonContainerHeaderView *)self centerYAnchor];
  v10 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v12[1] = v10;
  v11 = [NSArray arrayWithObjects:v12 count:2];
  [NSLayoutConstraint activateConstraints:v11];
}

- (TwoButtonContainerHeaderView)initWithAdditionalCardButtonType:(unint64_t)type tintColor:(id)color buttonMenu:(id)menu
{
  colorCopy = color;
  menuCopy = menu;
  v15.receiver = self;
  v15.super_class = TwoButtonContainerHeaderView;
  v10 = [(ContainerHeaderView *)&v15 initWithCardButtonType:1 cardButtonTintColor:colorCopy];
  if (v10)
  {
    v11 = objc_opt_new();
    [(CardButtonConfiguration *)v11 setType:type];
    [(CardButtonConfiguration *)v11 setTintColor:colorCopy];
    buttonConfig = v10->_buttonConfig;
    v10->_buttonConfig = v11;
    v13 = v11;

    objc_storeStrong(&v10->_quickActionButtonMenu, menu);
    [(TwoButtonContainerHeaderView *)v10 setAccessibilityIdentifier:@"TwoButtonContainerHeader"];
    [(TwoButtonContainerHeaderView *)v10 _customInitForSecondButton];
  }

  return v10;
}

@end