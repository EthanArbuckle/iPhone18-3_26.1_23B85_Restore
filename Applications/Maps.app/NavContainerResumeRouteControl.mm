@interface NavContainerResumeRouteControl
- (NavContainerResumeRouteControl)initWithFrame:(CGRect)a3;
- (id)constraintsForPositionInStatusBarBackgroundView:(id)a3;
- (id)initialConstraintsForAnimatingPositionInStatusBarBackgroundView:(id)a3;
- (void)_updateBackgroundColor;
- (void)didMoveToSuperview;
- (void)hideIfNeeded;
- (void)setHighlighted:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)showIfNeeded;
@end

@implementation NavContainerResumeRouteControl

- (id)initialConstraintsForAnimatingPositionInStatusBarBackgroundView:(id)a3
{
  v4 = a3;
  v5 = [(NavContainerResumeRouteControl *)self bottomConstraintWhenHidden];
  v6 = [(NavContainerResumeRouteControl *)self leadingAnchor];
  v7 = [v4 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v14[1] = v8;
  v9 = [(NavContainerResumeRouteControl *)self trailingAnchor];
  v10 = [v4 trailingAnchor];

  v11 = [v9 constraintEqualToAnchor:v10];
  v14[2] = v11;
  v12 = [NSArray arrayWithObjects:v14 count:3];

  return v12;
}

- (id)constraintsForPositionInStatusBarBackgroundView:(id)a3
{
  v4 = a3;
  v5 = [(NavContainerResumeRouteControl *)self topConstraint];
  v15[0] = v5;
  v6 = [(NavContainerResumeRouteControl *)self bottomConstraint];
  v15[1] = v6;
  v7 = [(NavContainerResumeRouteControl *)self leadingAnchor];
  v8 = [v4 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v15[2] = v9;
  v10 = [(NavContainerResumeRouteControl *)self trailingAnchor];
  v11 = [v4 trailingAnchor];

  v12 = [v10 constraintEqualToAnchor:v11];
  v15[3] = v12;
  v13 = [NSArray arrayWithObjects:v15 count:4];

  return v13;
}

- (void)showIfNeeded
{
  v3 = [(NavContainerResumeRouteControl *)self contentHeightCollapsedConstraint];
  v4 = [v3 isActive];

  if (v4)
  {
    titleText = self->_titleText;
    v6 = [(NavContainerResumeRouteControl *)self titleLabel];
    [v6 setText:titleText];

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
  v3 = [(NavContainerResumeRouteControl *)self contentHeightCollapsedConstraint];
  v4 = [v3 isActive];

  if ((v4 & 1) == 0)
  {
    v5 = [(NavContainerResumeRouteControl *)self titleLabel];
    [v5 setText:0];

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1009F3E38;
    v6[3] = &unk_101661B18;
    v6[4] = self;
    [UIView animateWithDuration:v6 animations:0.5];
  }
}

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
  titleText = self->_titleText;
  self->_titleText = v4;

  v6 = self->_titleText;
  v7 = [(NavContainerResumeRouteControl *)self titleLabel];
  [v7 setText:v6];
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = NavContainerResumeRouteControl;
  [(NavContainerResumeRouteControl *)&v4 setHighlighted:a3];
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

  v6 = [(NavContainerResumeRouteControl *)self superview];

  if (v6)
  {
    v7 = [(NavContainerResumeRouteControl *)self topAnchor];
    v8 = [(NavContainerResumeRouteControl *)self superview];
    v9 = [v8 topAnchor];
    v10 = [v7 constraintEqualToAnchor:v9];
    v11 = self->_topConstraint;
    self->_topConstraint = v10;

    v12 = [(NavContainerResumeRouteControl *)self bottomAnchor];
    v13 = [(NavContainerResumeRouteControl *)self superview];
    v14 = [v13 bottomAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    v16 = self->_bottomConstraint;
    self->_bottomConstraint = v15;

    v17 = [(NavContainerResumeRouteControl *)self bottomAnchor];
    v18 = [(NavContainerResumeRouteControl *)self superview];
    v19 = [v18 topAnchor];
    v20 = [v17 constraintEqualToAnchor:v19];
    v21 = self->_bottomConstraintWhenHidden;
    self->_bottomConstraintWhenHidden = v20;
  }
}

- (void)_updateBackgroundColor
{
  v4 = [(NavContainerResumeRouteControl *)self theme];
  if ([(NavContainerResumeRouteControl *)self isHighlighted])
  {
    [v4 navResumeRouteBannerHighlightColor];
  }

  else
  {
    [v4 navResumeRouteBannerBackgroundColor];
  }
  v3 = ;
  [(NavContainerResumeRouteControl *)self setBackgroundColor:v3];
}

- (NavContainerResumeRouteControl)initWithFrame:(CGRect)a3
{
  v114.receiver = self;
  v114.super_class = NavContainerResumeRouteControl;
  v3 = [(NavContainerResumeRouteControl *)&v114 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(NavContainerResumeRouteControl *)v3 setAccessibilityIdentifier:v5];

    [(NavContainerResumeRouteControl *)v3 setClipsToBounds:1];
    v6 = objc_alloc_init(UILayoutGuide);
    contentLayoutGuide = v3->_contentLayoutGuide;
    v3->_contentLayoutGuide = v6;

    v8 = [(NavContainerResumeRouteControl *)v3 contentLayoutGuide];
    [(NavContainerResumeRouteControl *)v3 addLayoutGuide:v8];

    v9 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v13 = [v9 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v13;

    v15 = [(NavContainerResumeRouteControl *)v3 titleLabel];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

    v16 = +[UIColor whiteColor];
    v17 = [(NavContainerResumeRouteControl *)v3 titleLabel];
    [v17 setTextColor:v16];

    v18 = [UIFont _maps_systemFontWithSize:17.0];
    v19 = [(NavContainerResumeRouteControl *)v3 titleLabel];
    [v19 setFont:v18];

    v20 = [(NavContainerResumeRouteControl *)v3 titleLabel];
    [v20 setNumberOfLines:2];

    v21 = [(NavContainerResumeRouteControl *)v3 titleLabel];
    LODWORD(v22) = 1148846080;
    [v21 setContentCompressionResistancePriority:1 forAxis:v22];

    v23 = [(NavContainerResumeRouteControl *)v3 titleLabel];
    [v23 setAccessibilityIdentifier:@"TitleLabel"];

    v24 = [(NavContainerResumeRouteControl *)v3 titleLabel];
    [(NavContainerResumeRouteControl *)v3 addSubview:v24];

    v25 = [[UIButton alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    closeButton = v3->_closeButton;
    v3->_closeButton = v25;

    v27 = [(NavContainerResumeRouteControl *)v3 closeButton];
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];

    v28 = [(NavContainerResumeRouteControl *)v3 closeButton];
    v29 = [UIImage systemImageNamed:@"xmark.circle.fill"];
    [v28 setImage:v29 forState:0];

    v30 = [(NavContainerResumeRouteControl *)v3 closeButton];
    v31 = [UIImageSymbolConfiguration configurationWithPointSize:19.0];
    [v30 setPreferredSymbolConfiguration:v31 forImageInState:0];

    v32 = +[UIColor whiteColor];
    v33 = [(NavContainerResumeRouteControl *)v3 closeButton];
    [v33 setTintColor:v32];

    v34 = [(NavContainerResumeRouteControl *)v3 closeButton];
    [v34 addTarget:v3 action:"_closeButtonAction" forControlEvents:64];

    v35 = [(NavContainerResumeRouteControl *)v3 closeButton];
    [v35 _setTouchInsets:{-3.0, -3.0, -3.0, -3.0}];

    v36 = [(NavContainerResumeRouteControl *)v3 closeButton];
    [v36 setAccessibilityIdentifier:@"CloseButton"];

    v37 = [(NavContainerResumeRouteControl *)v3 closeButton];
    [(NavContainerResumeRouteControl *)v3 addSubview:v37];

    v38 = [(NavContainerResumeRouteControl *)v3 contentLayoutGuide];
    v39 = [v38 heightAnchor];
    v40 = [v39 constraintEqualToConstant:0.0];
    [(NavContainerResumeRouteControl *)v3 setContentHeightCollapsedConstraint:v40];

    v41 = [(NavContainerResumeRouteControl *)v3 closeButton];
    v42 = [v41 heightAnchor];
    v43 = [v42 constraintEqualToConstant:40.0];
    [(NavContainerResumeRouteControl *)v3 setCloseButtonHeightConstraint:v43];

    v44 = [(NavContainerResumeRouteControl *)v3 contentLayoutGuide];
    v45 = [v44 heightAnchor];
    v46 = [v45 constraintEqualToConstant:60.0];

    LODWORD(v47) = 1148829696;
    v103 = v46;
    [v46 setPriority:v47];
    v113 = [(NavContainerResumeRouteControl *)v3 contentLayoutGuide];
    v111 = [v113 leadingAnchor];
    v112 = [(NavContainerResumeRouteControl *)v3 safeAreaLayoutGuide];
    v110 = [v112 leadingAnchor];
    v109 = [v111 constraintEqualToAnchor:v110 constant:13.0];
    v115[0] = v109;
    v108 = [(NavContainerResumeRouteControl *)v3 contentLayoutGuide];
    v106 = [v108 trailingAnchor];
    v107 = [(NavContainerResumeRouteControl *)v3 safeAreaLayoutGuide];
    v105 = [v107 trailingAnchor];
    v104 = [v106 constraintEqualToAnchor:v105 constant:-13.0];
    v115[1] = v104;
    v102 = [(NavContainerResumeRouteControl *)v3 contentLayoutGuide];
    v100 = [v102 topAnchor];
    v101 = [(NavContainerResumeRouteControl *)v3 safeAreaLayoutGuide];
    v99 = [v101 topAnchor];
    v98 = [v100 constraintEqualToAnchor:v99];
    v115[2] = v98;
    v97 = [(NavContainerResumeRouteControl *)v3 contentLayoutGuide];
    v96 = [v97 bottomAnchor];
    v95 = [(NavContainerResumeRouteControl *)v3 bottomAnchor];
    v94 = [v96 constraintEqualToAnchor:v95];
    v115[3] = v94;
    v115[4] = v46;
    v93 = [(NavContainerResumeRouteControl *)v3 titleLabel];
    v91 = [v93 topAnchor];
    v92 = [(NavContainerResumeRouteControl *)v3 contentLayoutGuide];
    v90 = [v92 topAnchor];
    v89 = [v91 constraintEqualToAnchor:v90];
    v115[5] = v89;
    v88 = [(NavContainerResumeRouteControl *)v3 titleLabel];
    v86 = [v88 bottomAnchor];
    v87 = [(NavContainerResumeRouteControl *)v3 contentLayoutGuide];
    v85 = [v87 bottomAnchor];
    v84 = [v86 constraintEqualToAnchor:v85];
    v115[6] = v84;
    v83 = [(NavContainerResumeRouteControl *)v3 titleLabel];
    v81 = [v83 leadingAnchor];
    v82 = [(NavContainerResumeRouteControl *)v3 contentLayoutGuide];
    v80 = [v82 leadingAnchor];
    v79 = [v81 constraintEqualToAnchor:v80];
    v115[7] = v79;
    v78 = [(NavContainerResumeRouteControl *)v3 titleLabel];
    v76 = [v78 trailingAnchor];
    v77 = [(NavContainerResumeRouteControl *)v3 closeButton];
    v75 = [v77 leadingAnchor];
    v74 = [v76 constraintEqualToAnchor:v75 constant:-13.0];
    v115[8] = v74;
    v73 = [(NavContainerResumeRouteControl *)v3 closeButton];
    v71 = [v73 topAnchor];
    v72 = [(NavContainerResumeRouteControl *)v3 contentLayoutGuide];
    v70 = [v72 topAnchor];
    v69 = [v71 constraintGreaterThanOrEqualToAnchor:v70 constant:10.0];
    v115[9] = v69;
    v68 = [(NavContainerResumeRouteControl *)v3 closeButton];
    v66 = [v68 bottomAnchor];
    v67 = [(NavContainerResumeRouteControl *)v3 contentLayoutGuide];
    v65 = [v67 bottomAnchor];
    v64 = [v66 constraintLessThanOrEqualToAnchor:v65 constant:-10.0];
    v115[10] = v64;
    v63 = [(NavContainerResumeRouteControl *)v3 closeButton];
    v61 = [v63 centerYAnchor];
    v62 = [(NavContainerResumeRouteControl *)v3 contentLayoutGuide];
    v60 = [v62 centerYAnchor];
    v59 = [v61 constraintEqualToAnchor:v60];
    v115[11] = v59;
    v58 = [(NavContainerResumeRouteControl *)v3 closeButton];
    v48 = [v58 trailingAnchor];
    v49 = [(NavContainerResumeRouteControl *)v3 contentLayoutGuide];
    v50 = [v49 trailingAnchor];
    v51 = [v48 constraintEqualToAnchor:v50];
    v115[12] = v51;
    v52 = [(NavContainerResumeRouteControl *)v3 closeButtonHeightConstraint];
    v115[13] = v52;
    v53 = [(NavContainerResumeRouteControl *)v3 closeButton];
    v54 = [v53 widthAnchor];
    v55 = [v54 constraintEqualToConstant:40.0];
    v115[14] = v55;
    v56 = [NSArray arrayWithObjects:v115 count:15];
    [NSLayoutConstraint activateConstraints:v56];
  }

  return v3;
}

@end