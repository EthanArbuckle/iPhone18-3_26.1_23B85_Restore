@interface GAXTimeRestrictionLockoutViewController
- (GAXTimeRestrictionLockoutViewController)initWithUIServer:(id)server;
- (GAXUIServer)uiServer;
- (id)_titleFont;
- (void)contentSizeCategoryPrefChanged:(id)changed;
- (void)loadView;
- (void)setAppTimeRestrictionDuration:(double)duration;
@end

@implementation GAXTimeRestrictionLockoutViewController

- (GAXTimeRestrictionLockoutViewController)initWithUIServer:(id)server
{
  serverCopy = server;
  if (AXDeviceIsPad())
  {
    v5 = @"GAXTimeRestrictionLockoutView_ipad";
  }

  else
  {
    v5 = @"GAXTimeRestrictionLockoutView_iphone";
  }

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v11.receiver = self;
  v11.super_class = GAXTimeRestrictionLockoutViewController;
  v7 = [(GAXViewController *)&v11 initWithNibName:v5 bundle:v6];

  if (v7)
  {
    v8 = objc_alloc_init(AXUIAlertStyleProvider);
    [(GAXTimeRestrictionLockoutViewController *)v7 setStyleProvider:v8];

    [(GAXTimeRestrictionLockoutViewController *)v7 setUiServer:serverCopy];
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v7 selector:"contentSizeCategoryPrefChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v7;
}

- (void)contentSizeCategoryPrefChanged:(id)changed
{
  _titleFont = [(GAXTimeRestrictionLockoutViewController *)self _titleFont];
  titleLabel = [(GAXTimeRestrictionLockoutViewController *)self titleLabel];
  [titleLabel setFont:_titleFont];

  _subtitleFont = [(GAXTimeRestrictionLockoutViewController *)self _subtitleFont];
  subtitleLabel = [(GAXTimeRestrictionLockoutViewController *)self subtitleLabel];
  [subtitleLabel setFont:_subtitleFont];

  v12 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [v12 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  subtitleLabel2 = [(GAXTimeRestrictionLockoutViewController *)self subtitleLabel];
  *&v11 = v9;
  [subtitleLabel2 _setHyphenationFactor:v11];
}

- (id)_titleFont
{
  if (AXDeviceIsPad())
  {
    v2 = 48.0;
  }

  else
  {
    v2 = 36.0;
  }

  v3 = [[UIFontMetrics alloc] initForTextStyle:UIFontTextStyleTitle1];
  [v3 scaledValueForValue:v2];
  v5 = v4;

  return [UIFont _thinSystemFontOfSize:v5];
}

- (void)loadView
{
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:1];
  [v7 setAutoresizingMask:18];
  v8 = +[UIColor blackColor];
  v9 = [v8 colorWithAlphaComponent:0.8];
  [v7 setBackgroundColor:v9];

  [(GAXViewController *)self setView:v7];
  v80 = objc_opt_new();
  [v80 setIndicatorStyle:2];
  [(GAXTimeRestrictionLockoutViewController *)self setScrollView:v80];
  scrollView = [(GAXTimeRestrictionLockoutViewController *)self scrollView];
  [scrollView setTranslatesAutoresizingMaskIntoConstraints:0];

  scrollView2 = [(GAXTimeRestrictionLockoutViewController *)self scrollView];
  [v7 addSubview:scrollView2];

  v12 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  scrollView3 = [(GAXTimeRestrictionLockoutViewController *)self scrollView];
  [scrollView3 addSubview:v12];

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(GAXTimeRestrictionLockoutViewController *)self setContentView:v12];
  contentView = [(GAXTimeRestrictionLockoutViewController *)self contentView];
  topAnchor = [contentView topAnchor];
  scrollView4 = [(GAXTimeRestrictionLockoutViewController *)self scrollView];
  topAnchor2 = [scrollView4 topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v18 setActive:1];

  contentView2 = [(GAXTimeRestrictionLockoutViewController *)self contentView];
  bottomAnchor = [contentView2 bottomAnchor];
  scrollView5 = [(GAXTimeRestrictionLockoutViewController *)self scrollView];
  bottomAnchor2 = [scrollView5 bottomAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v23 setActive:1];

  contentView3 = [(GAXTimeRestrictionLockoutViewController *)self contentView];
  leadingAnchor = [contentView3 leadingAnchor];
  scrollView6 = [(GAXTimeRestrictionLockoutViewController *)self scrollView];
  leadingAnchor2 = [scrollView6 leadingAnchor];
  v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v28 setActive:1];

  contentView4 = [(GAXTimeRestrictionLockoutViewController *)self contentView];
  trailingAnchor = [contentView4 trailingAnchor];
  scrollView7 = [(GAXTimeRestrictionLockoutViewController *)self scrollView];
  trailingAnchor2 = [scrollView7 trailingAnchor];
  v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v33 setActive:1];

  contentView5 = [(GAXTimeRestrictionLockoutViewController *)self contentView];
  widthAnchor = [contentView5 widthAnchor];
  scrollView8 = [(GAXTimeRestrictionLockoutViewController *)self scrollView];
  widthAnchor2 = [scrollView8 widthAnchor];
  v38 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v38 setActive:1];

  v39 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v12 addSubview:v39];
  [(GAXTimeRestrictionLockoutViewController *)self setTitleLabel:v39];
  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  v40 = GAXLocString(@"GAX_TIME_RESTRICTION_LOCKOUT_VIEW_TITLE");
  [v39 setText:v40];

  _titleFont = [(GAXTimeRestrictionLockoutViewController *)self _titleFont];
  [v39 setFont:_titleFont];

  v42 = +[UIColor whiteColor];
  [v39 setColor:v42];

  [v39 setTextAlignment:1];
  [v39 setNumberOfLines:0];
  v43 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v12 addSubview:v43];
  [(GAXTimeRestrictionLockoutViewController *)self setSubtitleLabel:v43];
  v44 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [v44 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  v47 = 0.0;
  if (IsAccessibilityCategory)
  {
    *&v47 = 1.0;
  }

  [v43 _setHyphenationFactor:v47];

  [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
  v48 = GAXLocString(@"GAX_TIME_RESTRICTION_LOCKOUT_VIEW_SUBTITLE");
  [(GAXTimeRestrictionLockoutViewController *)self appTimeRestrictionDuration];
  v50 = GAXLocalizedStringForTimeDuration(v49);
  v51 = [NSString stringWithFormat:v48, v50];
  [v43 setText:v51];

  _subtitleFont = [(GAXTimeRestrictionLockoutViewController *)self _subtitleFont];
  [v43 setFont:_subtitleFont];

  v53 = +[UIColor whiteColor];
  [v43 setColor:v53];

  [v43 setTextAlignment:1];
  [v43 setNumberOfLines:0];
  v81[0] = @"titleXPadding";
  if (AXDeviceIsPad())
  {
    v54 = &off_61810;
  }

  else
  {
    v54 = &off_61820;
  }

  v81[1] = @"titleBottomPadding";
  v82[0] = v54;
  IsPad = AXDeviceIsPad();
  v56 = &off_61830;
  if (!IsPad)
  {
    v56 = &off_61840;
  }

  v82[1] = v56;
  v57 = [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:2];
  v58 = _NSDictionaryOfVariableBindings(@"rootView, contentView, titleLabel, subtitleLabel, scrollView", v7, v12, v39, v43, v80, 0);
  v59 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[scrollView]|" options:0 metrics:v57 views:v58];
  v79 = v7;
  [v7 addConstraints:v59];

  v60 = [NSLayoutConstraint constraintWithItem:v7 attribute:10 relatedBy:0 toItem:v80 attribute:10 multiplier:1.0 constant:0.0];
  [v7 addConstraint:v60];

  LODWORD(v61) = 1148846080;
  [v39 setContentCompressionResistancePriority:1 forAxis:v61];
  LODWORD(v62) = 1148846080;
  [v43 setContentCompressionResistancePriority:1 forAxis:v62];
  v63 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-titleXPadding-[titleLabel]-titleXPadding-|", 0, v57, v58);
  [v12 addConstraints:v63];

  v64 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-titleXPadding-[subtitleLabel]-titleXPadding-|", 0, v57, v58);
  v78 = v12;
  [v12 addConstraints:v64];

  v65 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|[titleLabel]-titleBottomPadding-[subtitleLabel]|", 96, v57, v58);
  [v12 addConstraints:v65];

  contentView6 = [(GAXTimeRestrictionLockoutViewController *)self contentView];
  heightAnchor = [contentView6 heightAnchor];
  scrollView9 = [(GAXTimeRestrictionLockoutViewController *)self scrollView];
  heightAnchor2 = [scrollView9 heightAnchor];
  v70 = [heightAnchor constraintEqualToAnchor:heightAnchor2];

  LODWORD(v71) = 1144750080;
  [v70 setPriority:v71];
  [v70 setActive:1];
  scrollView10 = [(GAXTimeRestrictionLockoutViewController *)self scrollView];
  heightAnchor3 = [scrollView10 heightAnchor];
  heightAnchor4 = [v79 heightAnchor];
  if (AXDeviceIsPad())
  {
    v75 = &off_61830;
  }

  else
  {
    v75 = &off_61840;
  }

  [v75 doubleValue];
  v77 = [heightAnchor3 constraintLessThanOrEqualToAnchor:heightAnchor4 multiplier:1.0 constant:v76 * -2.0];

  [v77 setActive:1];
}

- (void)setAppTimeRestrictionDuration:(double)duration
{
  self->_appTimeRestrictionDuration = duration;
  v8 = GAXLocString(@"GAX_TIME_RESTRICTION_LOCKOUT_VIEW_SUBTITLE");
  v5 = GAXLocalizedStringForTimeDuration(duration);
  v6 = [NSString stringWithFormat:v8, v5];
  subtitleLabel = [(GAXTimeRestrictionLockoutViewController *)self subtitleLabel];
  [subtitleLabel setText:v6];
}

- (GAXUIServer)uiServer
{
  WeakRetained = objc_loadWeakRetained(&self->_uiServer);

  return WeakRetained;
}

@end