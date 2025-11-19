@interface TwoButtonContainerHeaderView
- (TwoButtonContainerHeaderView)initWithAdditionalCardButtonType:(unint64_t)a3 tintColor:(id)a4 buttonMenu:(id)a5;
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
  v5 = [(CardButton *)self->_quickActionButtonView trailingAnchor];
  v6 = [(TwoButtonContainerHeaderView *)self trailingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v12[0] = v7;
  v8 = [(CardButton *)self->_quickActionButtonView centerYAnchor];
  v9 = [(TwoButtonContainerHeaderView *)self centerYAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v12[1] = v10;
  v11 = [NSArray arrayWithObjects:v12 count:2];
  [NSLayoutConstraint activateConstraints:v11];
}

- (TwoButtonContainerHeaderView)initWithAdditionalCardButtonType:(unint64_t)a3 tintColor:(id)a4 buttonMenu:(id)a5
{
  v8 = a4;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = TwoButtonContainerHeaderView;
  v10 = [(ContainerHeaderView *)&v15 initWithCardButtonType:1 cardButtonTintColor:v8];
  if (v10)
  {
    v11 = objc_opt_new();
    [(CardButtonConfiguration *)v11 setType:a3];
    [(CardButtonConfiguration *)v11 setTintColor:v8];
    buttonConfig = v10->_buttonConfig;
    v10->_buttonConfig = v11;
    v13 = v11;

    objc_storeStrong(&v10->_quickActionButtonMenu, a5);
    [(TwoButtonContainerHeaderView *)v10 setAccessibilityIdentifier:@"TwoButtonContainerHeader"];
    [(TwoButtonContainerHeaderView *)v10 _customInitForSecondButton];
  }

  return v10;
}

@end