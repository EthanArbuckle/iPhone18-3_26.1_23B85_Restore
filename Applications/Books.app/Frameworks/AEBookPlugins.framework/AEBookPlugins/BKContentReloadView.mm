@interface BKContentReloadView
- (BKContentReloadView)initWithFrame:(CGRect)a3 theme:(id)a4 delegate:(id)a5;
- (BKContentReloadViewDelegate)delegate;
- (UIButton)button;
- (UILabel)label;
- (UIStackView)stackView;
- (void)_buttonTapped:(id)a3;
- (void)_updateColors;
- (void)setTheme:(id)a3;
@end

@implementation BKContentReloadView

- (BKContentReloadView)initWithFrame:(CGRect)a3 theme:(id)a4 delegate:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v12 = a5;
  v34.receiver = self;
  v34.super_class = BKContentReloadView;
  v13 = [(BKContentReloadView *)&v34 initWithFrame:x, y, width, height];
  v14 = v13;
  if (v13)
  {
    [(BKContentReloadView *)v13 setDelegate:v12];
    v15 = [(BKContentReloadView *)v14 stackView];
    [(BKContentReloadView *)v14 addSubview:v15];
    v31 = [v15 widthAnchor];
    v30 = [(BKContentReloadView *)v14 widthAnchor];
    v29 = [v31 constraintLessThanOrEqualToAnchor:v30 constant:-24.0];
    v35[0] = v29;
    v28 = [v15 heightAnchor];
    v27 = [(BKContentReloadView *)v14 heightAnchor];
    [v28 constraintLessThanOrEqualToAnchor:v27 constant:-56.0];
    v16 = v32 = v12;
    v35[1] = v16;
    v17 = [v15 centerYAnchor];
    v18 = [(BKContentReloadView *)v14 centerYAnchor];
    [v17 constraintEqualToAnchor:v18];
    v19 = v33 = v11;
    v35[2] = v19;
    v20 = [v15 centerXAnchor];
    v21 = [(BKContentReloadView *)v14 centerXAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    v35[3] = v22;
    v23 = [NSArray arrayWithObjects:v35 count:4];
    [NSLayoutConstraint activateConstraints:v23];

    v11 = v33;
    [(BKContentReloadView *)v14 setTheme:v33];
    v24 = +[UITraitCollection bc_allAPITraits];
    v25 = [(BKContentReloadView *)v14 registerForTraitChanges:v24 withAction:"_traitCollectionDidChange:previousTraitCollection:"];

    v12 = v32;
  }

  return v14;
}

- (void)setTheme:(id)a3
{
  objc_storeStrong(&self->_theme, a3);

  [(BKContentReloadView *)self _updateColors];
}

- (UIStackView)stackView
{
  stackView = self->_stackView;
  if (!stackView)
  {
    v4 = [UIStackView alloc];
    v5 = [(BKContentReloadView *)self label];
    v11[0] = v5;
    v6 = [(BKContentReloadView *)self button];
    v11[1] = v6;
    v7 = [NSArray arrayWithObjects:v11 count:2];
    v8 = [v4 initWithArrangedSubviews:v7];
    v9 = self->_stackView;
    self->_stackView = v8;

    [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_stackView setAxis:1];
    [(UIStackView *)self->_stackView setAlignment:3];
    [(UIStackView *)self->_stackView setDistribution:4];
    [(UIStackView *)self->_stackView setSpacing:1.17549435e-38];
    stackView = self->_stackView;
  }

  return stackView;
}

- (UILabel)label
{
  label = self->_label;
  if (!label)
  {
    v4 = objc_alloc_init(UILabel);
    v5 = self->_label;
    self->_label = v4;

    v6 = AEBundle();
    v7 = [v6 localizedStringForKey:@"A problem repeatedly occurred with this book’s content." value:&stru_1E7188 table:0];
    [(UILabel *)self->_label setText:v7];

    v8 = [UIFont boldSystemFontOfSize:14.0];
    [(UILabel *)self->_label setFont:v8];

    [(UILabel *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_label setTextAlignment:1];
    v9 = +[UIColor clearColor];
    [(UILabel *)self->_label setBackgroundColor:v9];

    [(UILabel *)self->_label setNumberOfLines:0];
    [(UILabel *)self->_label setOpaque:0];
    [(UILabel *)self->_label sizeToFit];
    label = self->_label;
  }

  return label;
}

- (UIButton)button
{
  button = self->_button;
  if (!button)
  {
    v4 = [(BKContentReloadView *)self theme];
    v5 = +[UIButtonConfiguration filledButtonConfiguration];
    v6 = AEBundle();
    v7 = [v6 localizedStringForKey:@"Reload Book" value:&stru_1E7188 table:0];
    [v5 setTitle:v7];

    [v5 setTitleAlignment:2];
    [v5 setCornerStyle:4];
    v8 = [v4 finishedButtonBackgroundColor];
    [v5 setBaseBackgroundColor:v8];

    v9 = [v4 finishedButtonTextColor];
    [v5 setBaseForegroundColor:v9];

    objc_initWeak(&location, self);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_87964;
    v14[3] = &unk_1E4BF8;
    objc_copyWeak(&v15, &location);
    v14[4] = self;
    v10 = [UIAction actionWithHandler:v14];
    v11 = [UIButton buttonWithConfiguration:v5 primaryAction:v10];
    v12 = self->_button;
    self->_button = v11;

    [(UIButton *)self->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);

    button = self->_button;
  }

  return button;
}

- (void)_updateColors
{
  v13 = [(BKContentReloadView *)self theme];
  v3 = [(BKContentReloadView *)self theme];
  if ([v3 overlayContentBackgroundColor])
  {
    v4 = +[UIColor whiteColor];
    [(BKContentReloadView *)self setBackgroundColor:v4];
  }

  else
  {
    v4 = [(BKContentReloadView *)self traitCollection];
    v5 = [v13 backgroundColorForTraitCollection:v4];
    [(BKContentReloadView *)self setBackgroundColor:v5];
  }

  v6 = [v13 contentTextColor];
  v7 = [(BKContentReloadView *)self label];
  [v7 setTextColor:v6];

  v8 = [(BKContentReloadView *)self button];
  v9 = [v8 configuration];
  v10 = [v9 copy];

  v11 = [v13 buttonColor];
  [v10 setBaseBackgroundColor:v11];

  v12 = +[UIColor whiteColor];
  [v10 setBaseForegroundColor:v12];

  [v8 setConfiguration:v10];
}

- (void)_buttonTapped:(id)a3
{
  v4 = [(BKContentReloadView *)self delegate];
  [v4 reloadViewDidBeginReloading:self];
}

- (BKContentReloadViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end