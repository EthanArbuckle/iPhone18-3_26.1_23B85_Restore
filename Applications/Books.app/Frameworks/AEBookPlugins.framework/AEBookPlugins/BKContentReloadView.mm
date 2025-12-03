@interface BKContentReloadView
- (BKContentReloadView)initWithFrame:(CGRect)frame theme:(id)theme delegate:(id)delegate;
- (BKContentReloadViewDelegate)delegate;
- (UIButton)button;
- (UILabel)label;
- (UIStackView)stackView;
- (void)_buttonTapped:(id)tapped;
- (void)_updateColors;
- (void)setTheme:(id)theme;
@end

@implementation BKContentReloadView

- (BKContentReloadView)initWithFrame:(CGRect)frame theme:(id)theme delegate:(id)delegate
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  themeCopy = theme;
  delegateCopy = delegate;
  v34.receiver = self;
  v34.super_class = BKContentReloadView;
  height = [(BKContentReloadView *)&v34 initWithFrame:x, y, width, height];
  v14 = height;
  if (height)
  {
    [(BKContentReloadView *)height setDelegate:delegateCopy];
    stackView = [(BKContentReloadView *)v14 stackView];
    [(BKContentReloadView *)v14 addSubview:stackView];
    widthAnchor = [stackView widthAnchor];
    widthAnchor2 = [(BKContentReloadView *)v14 widthAnchor];
    v29 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2 constant:-24.0];
    v35[0] = v29;
    heightAnchor = [stackView heightAnchor];
    heightAnchor2 = [(BKContentReloadView *)v14 heightAnchor];
    [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2 constant:-56.0];
    v16 = v32 = delegateCopy;
    v35[1] = v16;
    centerYAnchor = [stackView centerYAnchor];
    centerYAnchor2 = [(BKContentReloadView *)v14 centerYAnchor];
    [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v19 = v33 = themeCopy;
    v35[2] = v19;
    centerXAnchor = [stackView centerXAnchor];
    centerXAnchor2 = [(BKContentReloadView *)v14 centerXAnchor];
    v22 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v35[3] = v22;
    v23 = [NSArray arrayWithObjects:v35 count:4];
    [NSLayoutConstraint activateConstraints:v23];

    themeCopy = v33;
    [(BKContentReloadView *)v14 setTheme:v33];
    v24 = +[UITraitCollection bc_allAPITraits];
    v25 = [(BKContentReloadView *)v14 registerForTraitChanges:v24 withAction:"_traitCollectionDidChange:previousTraitCollection:"];

    delegateCopy = v32;
  }

  return v14;
}

- (void)setTheme:(id)theme
{
  objc_storeStrong(&self->_theme, theme);

  [(BKContentReloadView *)self _updateColors];
}

- (UIStackView)stackView
{
  stackView = self->_stackView;
  if (!stackView)
  {
    v4 = [UIStackView alloc];
    label = [(BKContentReloadView *)self label];
    v11[0] = label;
    button = [(BKContentReloadView *)self button];
    v11[1] = button;
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
    theme = [(BKContentReloadView *)self theme];
    v5 = +[UIButtonConfiguration filledButtonConfiguration];
    v6 = AEBundle();
    v7 = [v6 localizedStringForKey:@"Reload Book" value:&stru_1E7188 table:0];
    [v5 setTitle:v7];

    [v5 setTitleAlignment:2];
    [v5 setCornerStyle:4];
    finishedButtonBackgroundColor = [theme finishedButtonBackgroundColor];
    [v5 setBaseBackgroundColor:finishedButtonBackgroundColor];

    finishedButtonTextColor = [theme finishedButtonTextColor];
    [v5 setBaseForegroundColor:finishedButtonTextColor];

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
  theme = [(BKContentReloadView *)self theme];
  theme2 = [(BKContentReloadView *)self theme];
  if ([theme2 overlayContentBackgroundColor])
  {
    traitCollection = +[UIColor whiteColor];
    [(BKContentReloadView *)self setBackgroundColor:traitCollection];
  }

  else
  {
    traitCollection = [(BKContentReloadView *)self traitCollection];
    v5 = [theme backgroundColorForTraitCollection:traitCollection];
    [(BKContentReloadView *)self setBackgroundColor:v5];
  }

  contentTextColor = [theme contentTextColor];
  label = [(BKContentReloadView *)self label];
  [label setTextColor:contentTextColor];

  button = [(BKContentReloadView *)self button];
  configuration = [button configuration];
  v10 = [configuration copy];

  buttonColor = [theme buttonColor];
  [v10 setBaseBackgroundColor:buttonColor];

  v12 = +[UIColor whiteColor];
  [v10 setBaseForegroundColor:v12];

  [button setConfiguration:v10];
}

- (void)_buttonTapped:(id)tapped
{
  delegate = [(BKContentReloadView *)self delegate];
  [delegate reloadViewDidBeginReloading:self];
}

- (BKContentReloadViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end