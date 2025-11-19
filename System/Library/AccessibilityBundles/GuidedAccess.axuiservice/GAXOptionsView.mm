@interface GAXOptionsView
- (GAXOptionsView)initWithFeatureViews:(id)a3 styleProvider:(id)a4 userInterfaceServer:(id)a5;
- (id)_separatorViewsWithCount:(unint64_t)a3 styleProvider:(id)a4;
- (int64_t)applicationInterfaceOrientation;
- (void)dismissOptionsAnimated:(BOOL)a3;
- (void)layoutSubviews;
- (void)presentOptionsInView:(id)a3 animated:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)updateConstraints;
- (void)updateFeatureMasks;
@end

@implementation GAXOptionsView

- (id)_separatorViewsWithCount:(unint64_t)a3 styleProvider:(id)a4
{
  v5 = objc_opt_new();
  if (a3)
  {
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    do
    {
      v9 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
      v10 = +[UIColor tableSeparatorLightColor];
      [v9 setBackgroundColor:v10];

      [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v5 addObject:v9];

      --a3;
    }

    while (a3);
  }

  v11 = [v5 copy];

  return v11;
}

- (GAXOptionsView)initWithFeatureViews:(id)a3 styleProvider:(id)a4 userInterfaceServer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v105.receiver = self;
  v105.super_class = GAXOptionsView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v14 = [(GAXOptionsView *)&v105 initWithFrame:CGRectZero.origin.x, y, width, height];
  v15 = v14;
  if (v14)
  {
    [(GAXOptionsView *)v14 setFeatureViews:v8];
    v84 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v84 setAlpha:0.6];
    v16 = [v9 optionsViewBackgroundDimmingColor];
    [v84 setBackgroundColor:v16];

    [v84 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GAXOptionsView *)v15 setBackgroundDimmingView:v84];
    [(GAXOptionsView *)v15 addSubview:v84];
    v17 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GAXOptionsView *)v15 setModalView:v17];
    [(GAXOptionsView *)v15 addSubview:v17];
    v18 = [UIVisualEffectView alloc];
    [v9 featureViewOptionsBlurEffect];
    v19 = v85 = v10;
    v20 = [v18 initWithEffect:v19];

    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GAXOptionsView *)v15 setOverrideUserInterfaceStyle:2];
    [v17 addSubview:v20];
    v21 = [[GAXOptionsScrollView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    [(GAXOptionsScrollView *)v21 setDelegate:v15];
    [(GAXOptionsScrollView *)v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GAXOptionsView *)v15 setFeaturesScrollView:v21];
    v22 = [v20 contentView];
    [v22 addSubview:v21];

    v23 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GAXOptionsView *)v15 setFeaturesContentView:v23];
    [(GAXOptionsScrollView *)v21 addSubview:v23];
    v103[0] = _NSConcreteStackBlock;
    v103[1] = 3221225472;
    v103[2] = sub_26A80;
    v103[3] = &unk_5DC20;
    v24 = v23;
    v104 = v24;
    [v8 enumerateObjectsUsingBlock:v103];
    [v9 optionsViewSeparatorHeight];
    v26 = v25;
    [v9 optionsViewSeparatorHorizontalPadding];
    v28 = v27;
    [v9 optionsViewSeparatorHorizontalPadding];
    v30 = -v29;
    v83 = -[GAXOptionsView _separatorViewsWithCount:styleProvider:](v15, "_separatorViewsWithCount:styleProvider:", [v8 count] - 1, v9);
    v96[0] = _NSConcreteStackBlock;
    v96[1] = 3221225472;
    v96[2] = sub_26A8C;
    v96[3] = &unk_5DC48;
    v31 = v9;
    v97 = v31;
    v78 = v31;
    v98 = v24;
    v32 = v98;
    v79 = v8;
    v99 = v79;
    v100 = v26;
    v101 = v28;
    v102 = v30;
    [v83 enumerateObjectsUsingBlock:v96];
    v82 = GAXLocString(@"DONE");
    v80 = [GAXOptionsDoneButton optionsDoneButtonWithTitle:v82 styleProvider:v31];
    [v80 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v80 addTarget:v15 action:"_handleTouchUpInside:" forControlEvents:64];
    [v17 addSubview:v80];
    [v17 ax_constrainLayoutAttribute:8 asLessThanOrEqualToValueOfView:v15];
    [v17 ax_constrainLayoutAttribute:5 asEqualToValueOfView:v15];
    [v17 ax_constrainLayoutAttribute:6 asEqualToValueOfView:v15];
    v81 = v20;
    [v20 ax_constrainLayoutAttribute:4 asEqualToValueOfView:v17];
    [v20 ax_constrainLayoutAttribute:5 asEqualToValueOfView:v17];
    [v20 ax_constrainLayoutAttribute:6 asEqualToValueOfView:v17];
    [v20 ax_constrainLayoutAttribute:3 asEqualToValueOfView:v17];
    [(GAXOptionsScrollView *)v21 ax_constrainLayoutAttribute:5 asEqualToValueOfView:v17];
    [(GAXOptionsScrollView *)v21 ax_constrainLayoutAttribute:6 asEqualToValueOfView:v17];
    [(GAXOptionsScrollView *)v21 ax_constrainLayoutAttribute:3 asEqualToValueOfView:v17];
    v76 = [v32 bottomAnchor];
    v75 = [(GAXOptionsScrollView *)v21 bottomAnchor];
    v74 = [v76 constraintEqualToAnchor:v75];
    v106[0] = v74;
    v71 = [v32 leadingAnchor];
    v72 = [(GAXOptionsScrollView *)v21 safeAreaLayoutGuide];
    v70 = [v72 leadingAnchor];
    v69 = [v71 constraintEqualToAnchor:v70];
    v106[1] = v69;
    v33 = v32;
    v73 = v32;
    v67 = [v32 trailingAnchor];
    v77 = v21;
    v68 = [(GAXOptionsScrollView *)v21 safeAreaLayoutGuide];
    v66 = [v68 trailingAnchor];
    v65 = [v67 constraintEqualToAnchor:v66];
    v106[2] = v65;
    v34 = [v32 topAnchor];
    [(GAXOptionsScrollView *)v21 topAnchor];
    v35 = v86 = v9;
    [v34 constraintEqualToAnchor:v35];
    v36 = v87 = v8;
    v106[3] = v36;
    v37 = [v33 widthAnchor];
    v38 = [(GAXOptionsScrollView *)v21 safeAreaLayoutGuide];
    v39 = [v38 widthAnchor];
    v40 = [v37 constraintEqualToAnchor:v39];
    v106[4] = v40;
    v41 = [NSArray arrayWithObjects:v106 count:5];
    [NSLayoutConstraint activateConstraints:v41];

    v8 = v87;
    v9 = v86;

    [v78 featureViewFrameEdgeInsets];
    v43 = v42;
    [v78 featureViewFrameEdgeInsets];
    v45 = -v44;
    [v78 optionsViewSeparatorVerticalPadding];
    v47 = v46;
    [v78 optionsViewSeparatorVerticalPadding];
    v49 = -v48;
    v88[0] = _NSConcreteStackBlock;
    v88[1] = 3221225472;
    v88[2] = sub_26C6C;
    v88[3] = &unk_5DC70;
    v91 = [v79 count] - 1;
    v89 = v73;
    v92 = v47;
    v93 = v49;
    v50 = v78;
    v90 = v50;
    v94 = v43;
    v95 = v45;
    v51 = v73;
    [v79 enumerateObjectsUsingBlock:v88];
    [v50 optionsDoneButtonHeight];
    v53 = v52;
    [v80 ax_constrainLayoutAttribute:4 asEqualToValueOfView:v17];
    [v80 ax_constrainLayoutAttribute:8 asEqualToConstant:v53];
    [v80 ax_constrainLayoutAttribute:5 asEqualToValueOfView:v17];
    [v80 ax_constrainLayoutAttribute:6 asEqualToValueOfView:v17];
    [v80 ax_constrainLayoutAttribute:3 asEqualToLayoutAttribute:4 ofView:v77];
    LODWORD(v54) = 1132068864;
    [v80 setContentHuggingPriority:0 forAxis:v54];
    LODWORD(v55) = 1148846080;
    [v80 setContentHuggingPriority:1 forAxis:v55];
    LODWORD(v56) = 1144750080;
    [v80 setContentCompressionResistancePriority:0 forAxis:v56];
    LODWORD(v57) = 1148846080;
    [v80 setContentCompressionResistancePriority:1 forAxis:v57];
    v58 = UILayoutFittingCompressedSize.height;
    [v51 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, v58}];
    v60 = v59;
    LODWORD(v59) = 1144750080;
    v61 = [(GAXOptionsScrollView *)v77 ax_addedConstraintForLayoutAttribute:8 asEqualToConstant:v60 priority:v59];
    [(GAXOptionsView *)v15 setFeaturesScrollViewHeightConstraint:v61];

    [v17 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, v58}];
    v62 = [NSLayoutConstraint constraintWithItem:v17 attribute:4 relatedBy:0 toItem:v15 attribute:4 multiplier:1.0 constant:?];
    [(GAXOptionsView *)v15 setModalViewBottomConstraint:v62];
    [(GAXOptionsView *)v15 addConstraint:v62];
    v63 = v50;
    v10 = v85;
    [(GAXOptionsView *)v15 setStyleProvider:v63];
    [(GAXOptionsView *)v15 setUserInterfaceServer:v85];
  }

  return v15;
}

- (void)updateConstraints
{
  v7.receiver = self;
  v7.super_class = GAXOptionsView;
  [(GAXOptionsView *)&v7 updateConstraints];
  v3 = [(GAXOptionsView *)self featuresContentView];
  [v3 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v5 = v4;

  v6 = [(GAXOptionsView *)self featuresScrollViewHeightConstraint];
  [v6 setConstant:v5];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = GAXOptionsView;
  [(GAXOptionsView *)&v5 layoutSubviews];
  v3 = [(GAXOptionsView *)self featuresScrollView];
  [v3 setNeedsLayout];

  v4 = [(GAXOptionsView *)self featuresScrollView];
  [v4 layoutIfNeeded];
}

- (void)dismissOptionsAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(GAXOptionsView *)self isOptionsVisible])
  {
    v5 = [(GAXOptionsView *)self styleProvider];
    v6 = v5;
    v7 = 0.0;
    if (v3)
    {
      [v5 defaultAnimationDuration];
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_26F3C;
    v9[3] = &unk_5CD48;
    v9[4] = self;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_26FE0;
    v8[3] = &unk_5CC18;
    v8[4] = self;
    [UIView animateWithDuration:v9 animations:v8 completion:v7];
    [(GAXOptionsView *)self setOptionsVisible:0];
  }
}

- (void)updateFeatureMasks
{
  v2 = [(GAXOptionsView *)self featureViews];
  [v2 enumerateObjectsUsingBlock:&stru_5DCB0];
}

- (void)presentOptionsInView:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (![(GAXOptionsView *)self isOptionsVisible])
  {
    v7 = [(GAXOptionsView *)self styleProvider];
    [v6 addSubview:self];
    v8 = 0.0;
    v9 = [NSLayoutConstraint constraintWithItem:self attribute:4 relatedBy:0 toItem:v6 attribute:4 multiplier:1.0 constant:0.0];
    v10 = [NSLayoutConstraint constraintWithItem:self attribute:5 relatedBy:0 toItem:v6 attribute:5 multiplier:1.0 constant:0.0];
    v11 = [NSLayoutConstraint constraintWithItem:self attribute:6 relatedBy:0 toItem:v6 attribute:6 multiplier:1.0 constant:0.0];
    v12 = [NSLayoutConstraint constraintWithItem:self attribute:3 relatedBy:0 toItem:v6 attribute:3 multiplier:1.0 constant:0.0];
    v20[0] = v9;
    v20[1] = v10;
    v20[2] = v11;
    v20[3] = v12;
    v13 = [NSArray arrayWithObjects:v20 count:4];
    [(GAXOptionsView *)self setOptionsViewPresentationConstraints:v13];

    v14 = [(GAXOptionsView *)self optionsViewPresentationConstraints];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_273A0;
    v18[3] = &unk_5DCD8;
    v19 = v6;
    [v14 enumerateObjectsUsingBlock:v18];

    [(GAXOptionsView *)self layoutIfNeeded];
    [(GAXOptionsView *)self updateFeatureMasks];
    if (v4)
    {
      [v7 defaultAnimationDuration];
      v8 = v15;
    }

    v16[4] = self;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_273AC;
    v17[3] = &unk_5CD48;
    v17[4] = self;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_27460;
    v16[3] = &unk_5CC18;
    [UIView animateWithDuration:v17 animations:v16 completion:v8];
    [(GAXOptionsView *)self setOptionsVisible:1];
  }
}

- (int64_t)applicationInterfaceOrientation
{
  v2 = +[AXUIDisplayManager sharedDisplayManager];
  v3 = [v2 activeInterfaceOrientation];

  return v3;
}

- (void)scrollViewDidScroll:(id)a3
{
  v11 = a3;
  v4 = [(GAXOptionsView *)self featuresScrollView];

  v5 = v11;
  if (v4 == v11)
  {
    [v11 contentOffset];
    v7 = v6;
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    v8 = [(GAXOptionsView *)self featuresContentView];
    v9 = [v8 layer];
    v10 = [v9 mask];
    [v10 setPosition:{0.0, v7}];

    +[CATransaction commit];
    v5 = v11;
  }
}

@end