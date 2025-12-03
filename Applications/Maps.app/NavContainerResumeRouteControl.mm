@interface NavContainerResumeRouteControl
- (NavContainerResumeRouteControl)initWithFrame:(CGRect)frame;
- (id)constraintsForPositionInStatusBarBackgroundView:(id)view;
- (id)initialConstraintsForAnimatingPositionInStatusBarBackgroundView:(id)view;
- (void)_updateBackgroundColor;
- (void)didMoveToSuperview;
- (void)hideIfNeeded;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setTitle:(id)title;
- (void)showIfNeeded;
@end

@implementation NavContainerResumeRouteControl

- (id)initialConstraintsForAnimatingPositionInStatusBarBackgroundView:(id)view
{
  viewCopy = view;
  bottomConstraintWhenHidden = [(NavContainerResumeRouteControl *)self bottomConstraintWhenHidden];
  leadingAnchor = [(NavContainerResumeRouteControl *)self leadingAnchor];
  leadingAnchor2 = [viewCopy leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v14[1] = v8;
  trailingAnchor = [(NavContainerResumeRouteControl *)self trailingAnchor];
  trailingAnchor2 = [viewCopy trailingAnchor];

  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v14[2] = v11;
  v12 = [NSArray arrayWithObjects:v14 count:3];

  return v12;
}

- (id)constraintsForPositionInStatusBarBackgroundView:(id)view
{
  viewCopy = view;
  topConstraint = [(NavContainerResumeRouteControl *)self topConstraint];
  v15[0] = topConstraint;
  bottomConstraint = [(NavContainerResumeRouteControl *)self bottomConstraint];
  v15[1] = bottomConstraint;
  leadingAnchor = [(NavContainerResumeRouteControl *)self leadingAnchor];
  leadingAnchor2 = [viewCopy leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v15[2] = v9;
  trailingAnchor = [(NavContainerResumeRouteControl *)self trailingAnchor];
  trailingAnchor2 = [viewCopy trailingAnchor];

  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v15[3] = v12;
  v13 = [NSArray arrayWithObjects:v15 count:4];

  return v13;
}

- (void)showIfNeeded
{
  contentHeightCollapsedConstraint = [(NavContainerResumeRouteControl *)self contentHeightCollapsedConstraint];
  isActive = [contentHeightCollapsedConstraint isActive];

  if (isActive)
  {
    titleText = self->_titleText;
    titleLabel = [(NavContainerResumeRouteControl *)self titleLabel];
    [titleLabel setText:titleText];

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1009F3CFC;
    v7[3] = &unk_101661B18;
    v7[4] = self;
    [UIView animateWithDuration:v7 animations:0.5];
  }
}

- (void)hideIfNeeded
{
  contentHeightCollapsedConstraint = [(NavContainerResumeRouteControl *)self contentHeightCollapsedConstraint];
  isActive = [contentHeightCollapsedConstraint isActive];

  if ((isActive & 1) == 0)
  {
    titleLabel = [(NavContainerResumeRouteControl *)self titleLabel];
    [titleLabel setText:0];

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1009F3E38;
    v6[3] = &unk_101661B18;
    v6[4] = self;
    [UIView animateWithDuration:v6 animations:0.5];
  }
}

- (void)setTitle:(id)title
{
  v4 = [title copy];
  titleText = self->_titleText;
  self->_titleText = v4;

  v6 = self->_titleText;
  titleLabel = [(NavContainerResumeRouteControl *)self titleLabel];
  [titleLabel setText:v6];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = NavContainerResumeRouteControl;
  [(NavContainerResumeRouteControl *)&v4 setHighlighted:highlighted];
  [(NavContainerResumeRouteControl *)self _updateBackgroundColor];
}

- (void)didMoveToSuperview
{
  v22.receiver = self;
  v22.super_class = NavContainerResumeRouteControl;
  [(NavContainerResumeRouteControl *)&v22 didMoveToSuperview];
  topConstraint = self->_topConstraint;
  self->_topConstraint = 0;

  bottomConstraint = self->_bottomConstraint;
  self->_bottomConstraint = 0;

  bottomConstraintWhenHidden = self->_bottomConstraintWhenHidden;
  self->_bottomConstraintWhenHidden = 0;

  superview = [(NavContainerResumeRouteControl *)self superview];

  if (superview)
  {
    topAnchor = [(NavContainerResumeRouteControl *)self topAnchor];
    superview2 = [(NavContainerResumeRouteControl *)self superview];
    topAnchor2 = [superview2 topAnchor];
    v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v11 = self->_topConstraint;
    self->_topConstraint = v10;

    bottomAnchor = [(NavContainerResumeRouteControl *)self bottomAnchor];
    superview3 = [(NavContainerResumeRouteControl *)self superview];
    bottomAnchor2 = [superview3 bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v16 = self->_bottomConstraint;
    self->_bottomConstraint = v15;

    bottomAnchor3 = [(NavContainerResumeRouteControl *)self bottomAnchor];
    superview4 = [(NavContainerResumeRouteControl *)self superview];
    topAnchor3 = [superview4 topAnchor];
    v20 = [bottomAnchor3 constraintEqualToAnchor:topAnchor3];
    v21 = self->_bottomConstraintWhenHidden;
    self->_bottomConstraintWhenHidden = v20;
  }
}

- (void)_updateBackgroundColor
{
  theme = [(NavContainerResumeRouteControl *)self theme];
  if ([(NavContainerResumeRouteControl *)self isHighlighted])
  {
    [theme navResumeRouteBannerHighlightColor];
  }

  else
  {
    [theme navResumeRouteBannerBackgroundColor];
  }
  v3 = ;
  [(NavContainerResumeRouteControl *)self setBackgroundColor:v3];
}

- (NavContainerResumeRouteControl)initWithFrame:(CGRect)frame
{
  v114.receiver = self;
  v114.super_class = NavContainerResumeRouteControl;
  v3 = [(NavContainerResumeRouteControl *)&v114 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(NavContainerResumeRouteControl *)v3 setAccessibilityIdentifier:v5];

    [(NavContainerResumeRouteControl *)v3 setClipsToBounds:1];
    v6 = objc_alloc_init(UILayoutGuide);
    contentLayoutGuide = v3->_contentLayoutGuide;
    v3->_contentLayoutGuide = v6;

    contentLayoutGuide = [(NavContainerResumeRouteControl *)v3 contentLayoutGuide];
    [(NavContainerResumeRouteControl *)v3 addLayoutGuide:contentLayoutGuide];

    v9 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v13 = [v9 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v13;

    titleLabel = [(NavContainerResumeRouteControl *)v3 titleLabel];
    [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    v16 = +[UIColor whiteColor];
    titleLabel2 = [(NavContainerResumeRouteControl *)v3 titleLabel];
    [titleLabel2 setTextColor:v16];

    v18 = [UIFont _maps_systemFontWithSize:17.0];
    titleLabel3 = [(NavContainerResumeRouteControl *)v3 titleLabel];
    [titleLabel3 setFont:v18];

    titleLabel4 = [(NavContainerResumeRouteControl *)v3 titleLabel];
    [titleLabel4 setNumberOfLines:2];

    titleLabel5 = [(NavContainerResumeRouteControl *)v3 titleLabel];
    LODWORD(v22) = 1148846080;
    [titleLabel5 setContentCompressionResistancePriority:1 forAxis:v22];

    titleLabel6 = [(NavContainerResumeRouteControl *)v3 titleLabel];
    [titleLabel6 setAccessibilityIdentifier:@"TitleLabel"];

    titleLabel7 = [(NavContainerResumeRouteControl *)v3 titleLabel];
    [(NavContainerResumeRouteControl *)v3 addSubview:titleLabel7];

    v25 = [[UIButton alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    closeButton = v3->_closeButton;
    v3->_closeButton = v25;

    closeButton = [(NavContainerResumeRouteControl *)v3 closeButton];
    [closeButton setTranslatesAutoresizingMaskIntoConstraints:0];

    closeButton2 = [(NavContainerResumeRouteControl *)v3 closeButton];
    v29 = [UIImage systemImageNamed:@"xmark.circle.fill"];
    [closeButton2 setImage:v29 forState:0];

    closeButton3 = [(NavContainerResumeRouteControl *)v3 closeButton];
    v31 = [UIImageSymbolConfiguration configurationWithPointSize:19.0];
    [closeButton3 setPreferredSymbolConfiguration:v31 forImageInState:0];

    v32 = +[UIColor whiteColor];
    closeButton4 = [(NavContainerResumeRouteControl *)v3 closeButton];
    [closeButton4 setTintColor:v32];

    closeButton5 = [(NavContainerResumeRouteControl *)v3 closeButton];
    [closeButton5 addTarget:v3 action:"_closeButtonAction" forControlEvents:64];

    closeButton6 = [(NavContainerResumeRouteControl *)v3 closeButton];
    [closeButton6 _setTouchInsets:{-3.0, -3.0, -3.0, -3.0}];

    closeButton7 = [(NavContainerResumeRouteControl *)v3 closeButton];
    [closeButton7 setAccessibilityIdentifier:@"CloseButton"];

    closeButton8 = [(NavContainerResumeRouteControl *)v3 closeButton];
    [(NavContainerResumeRouteControl *)v3 addSubview:closeButton8];

    contentLayoutGuide2 = [(NavContainerResumeRouteControl *)v3 contentLayoutGuide];
    heightAnchor = [contentLayoutGuide2 heightAnchor];
    v40 = [heightAnchor constraintEqualToConstant:0.0];
    [(NavContainerResumeRouteControl *)v3 setContentHeightCollapsedConstraint:v40];

    closeButton9 = [(NavContainerResumeRouteControl *)v3 closeButton];
    heightAnchor2 = [closeButton9 heightAnchor];
    v43 = [heightAnchor2 constraintEqualToConstant:40.0];
    [(NavContainerResumeRouteControl *)v3 setCloseButtonHeightConstraint:v43];

    contentLayoutGuide3 = [(NavContainerResumeRouteControl *)v3 contentLayoutGuide];
    heightAnchor3 = [contentLayoutGuide3 heightAnchor];
    v46 = [heightAnchor3 constraintEqualToConstant:60.0];

    LODWORD(v47) = 1148829696;
    v103 = v46;
    [v46 setPriority:v47];
    contentLayoutGuide4 = [(NavContainerResumeRouteControl *)v3 contentLayoutGuide];
    leadingAnchor = [contentLayoutGuide4 leadingAnchor];
    safeAreaLayoutGuide = [(NavContainerResumeRouteControl *)v3 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v109 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:13.0];
    v115[0] = v109;
    contentLayoutGuide5 = [(NavContainerResumeRouteControl *)v3 contentLayoutGuide];
    trailingAnchor = [contentLayoutGuide5 trailingAnchor];
    safeAreaLayoutGuide2 = [(NavContainerResumeRouteControl *)v3 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
    v104 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-13.0];
    v115[1] = v104;
    contentLayoutGuide6 = [(NavContainerResumeRouteControl *)v3 contentLayoutGuide];
    topAnchor = [contentLayoutGuide6 topAnchor];
    safeAreaLayoutGuide3 = [(NavContainerResumeRouteControl *)v3 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
    v98 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v115[2] = v98;
    contentLayoutGuide7 = [(NavContainerResumeRouteControl *)v3 contentLayoutGuide];
    bottomAnchor = [contentLayoutGuide7 bottomAnchor];
    bottomAnchor2 = [(NavContainerResumeRouteControl *)v3 bottomAnchor];
    v94 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v115[3] = v94;
    v115[4] = v46;
    titleLabel8 = [(NavContainerResumeRouteControl *)v3 titleLabel];
    topAnchor3 = [titleLabel8 topAnchor];
    contentLayoutGuide8 = [(NavContainerResumeRouteControl *)v3 contentLayoutGuide];
    topAnchor4 = [contentLayoutGuide8 topAnchor];
    v89 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v115[5] = v89;
    titleLabel9 = [(NavContainerResumeRouteControl *)v3 titleLabel];
    bottomAnchor3 = [titleLabel9 bottomAnchor];
    contentLayoutGuide9 = [(NavContainerResumeRouteControl *)v3 contentLayoutGuide];
    bottomAnchor4 = [contentLayoutGuide9 bottomAnchor];
    v84 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v115[6] = v84;
    titleLabel10 = [(NavContainerResumeRouteControl *)v3 titleLabel];
    leadingAnchor3 = [titleLabel10 leadingAnchor];
    contentLayoutGuide10 = [(NavContainerResumeRouteControl *)v3 contentLayoutGuide];
    leadingAnchor4 = [contentLayoutGuide10 leadingAnchor];
    v79 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v115[7] = v79;
    titleLabel11 = [(NavContainerResumeRouteControl *)v3 titleLabel];
    trailingAnchor3 = [titleLabel11 trailingAnchor];
    closeButton10 = [(NavContainerResumeRouteControl *)v3 closeButton];
    leadingAnchor5 = [closeButton10 leadingAnchor];
    v74 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor5 constant:-13.0];
    v115[8] = v74;
    closeButton11 = [(NavContainerResumeRouteControl *)v3 closeButton];
    topAnchor5 = [closeButton11 topAnchor];
    contentLayoutGuide11 = [(NavContainerResumeRouteControl *)v3 contentLayoutGuide];
    topAnchor6 = [contentLayoutGuide11 topAnchor];
    v69 = [topAnchor5 constraintGreaterThanOrEqualToAnchor:topAnchor6 constant:10.0];
    v115[9] = v69;
    closeButton12 = [(NavContainerResumeRouteControl *)v3 closeButton];
    bottomAnchor5 = [closeButton12 bottomAnchor];
    contentLayoutGuide12 = [(NavContainerResumeRouteControl *)v3 contentLayoutGuide];
    bottomAnchor6 = [contentLayoutGuide12 bottomAnchor];
    v64 = [bottomAnchor5 constraintLessThanOrEqualToAnchor:bottomAnchor6 constant:-10.0];
    v115[10] = v64;
    closeButton13 = [(NavContainerResumeRouteControl *)v3 closeButton];
    centerYAnchor = [closeButton13 centerYAnchor];
    contentLayoutGuide13 = [(NavContainerResumeRouteControl *)v3 contentLayoutGuide];
    centerYAnchor2 = [contentLayoutGuide13 centerYAnchor];
    v59 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v115[11] = v59;
    closeButton14 = [(NavContainerResumeRouteControl *)v3 closeButton];
    trailingAnchor4 = [closeButton14 trailingAnchor];
    contentLayoutGuide14 = [(NavContainerResumeRouteControl *)v3 contentLayoutGuide];
    trailingAnchor5 = [contentLayoutGuide14 trailingAnchor];
    v51 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v115[12] = v51;
    closeButtonHeightConstraint = [(NavContainerResumeRouteControl *)v3 closeButtonHeightConstraint];
    v115[13] = closeButtonHeightConstraint;
    closeButton15 = [(NavContainerResumeRouteControl *)v3 closeButton];
    widthAnchor = [closeButton15 widthAnchor];
    v55 = [widthAnchor constraintEqualToConstant:40.0];
    v115[14] = v55;
    v56 = [NSArray arrayWithObjects:v115 count:15];
    [NSLayoutConstraint activateConstraints:v56];
  }

  return v3;
}

@end