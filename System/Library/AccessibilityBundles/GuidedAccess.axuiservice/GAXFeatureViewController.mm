@interface GAXFeatureViewController
+ (GAXFeatureViewController)allocWithZone:(_NSZone *)a3;
- (BOOL)_isUsingAppRestrictions;
- (BOOL)isTouchEnabled;
- (BOOL)shouldDisplayMiniToolbar;
- (GAXFeatureViewControllerDelegate)delegate;
- (GAXUIServer)userInterfaceServer;
- (NSArray)hardwareFeatureViewsParameters;
- (NSArray)systemFeatureViewsParameters;
- (UIOffset)optionsButtonOffset;
- (double)featureViewControllerHeight;
- (double)instructionsLabelHorizontalOffset;
- (id)_viewForPresentingOverlayUserInterface;
- (int64_t)applicationInterfaceOrientation;
- (unint64_t)_numFeatures;
- (void)_enumerateAppFeatureViewsParametersUsingBlock:(id)a3;
- (void)_enumerateHardwareFeatureViewsParametersUsingBlock:(id)a3;
- (void)_enumerateSystemFeatureViewsParametersUsingBlock:(id)a3;
- (void)dismissOptionsAnimated:(BOOL)a3;
- (void)loadView;
- (void)presentOptionsAnimated:(BOOL)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation GAXFeatureViewController

+ (GAXFeatureViewController)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {
    GAXUserInterfaceIdiomIsPad();
    v6 = objc_opt_class();

    return [v6 allocWithZone:a3];
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___GAXFeatureViewController;
    return objc_msgSendSuper2(&v7, "allocWithZone:", a3);
  }
}

- (void)loadView
{
  v3 = [(GAXFeatureViewController *)self styleProvider];
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 preferredContentSizeCategory];
  v6 = _UIContentSizeCategoryCompareToContentSizeCategory();

  v7 = [GAXGroupingView alloc];
  [(GAXFeatureViewController *)self featureViewControllerHeight];
  v9 = [(GAXGroupingView *)v7 initWithFrame:0.0, 0.0, 1.0, v8];
  [(GAXViewController *)self setView:v9];
  v10 = [[_UIBackdropView alloc] initWithStyle:2030];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(GAXGroupingView *)v9 addSubview:v10];
  v11 = objc_opt_new();
  [v11 setIdentifier:@"safeAreaStrut"];
  v12 = v11;
  [(GAXGroupingView *)v9 addLayoutGuide:v11];
  v13 = objc_opt_new();
  [v13 setIdentifier:@"usableSpaceGuide"];
  v14 = v13;
  [(GAXGroupingView *)v9 addLayoutGuide:v13];
  v110 = [v3 featureViewControllerInstructionsFont];
  v109 = GAXLocString(@"HELP_INTEREST_AREA");
  v15 = [GAXInterfaceUtilities labelWithText:v109 font:v110 allowMultipleLines:1 styleProvider:v3];
  v111 = v15;
  if ([(GAXFeatureViewController *)self isTouchEnabled])
  {
    v16 = 1.0;
  }

  else
  {
    v16 = 0.0;
  }

  [v15 setAlpha:v16];
  v17 = [v3 featureViewControllerInstructionsColor];
  [v15 setTextColor:v17];

  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(GAXFeatureViewController *)self setInstructionsLabel:v15];
  [(GAXGroupingView *)v9 addSubview:v15];
  v112[0] = NSFontAttributeName;
  v18 = v3;
  v19 = [v3 featureViewControllerOptionsButtonFont];
  v113[0] = v19;
  v112[1] = NSForegroundColorAttributeName;
  v20 = [v3 defaultLabelTextColor];
  v21 = v20;
  v112[2] = NSUnderlineStyleAttributeName;
  v22 = &off_61798;
  if (v6 == -1)
  {
    v22 = &off_617B0;
  }

  v113[1] = v20;
  v113[2] = v22;
  v108 = [NSDictionary dictionaryWithObjects:v113 forKeys:v112 count:3];

  v23 = [NSAttributedString alloc];
  v24 = GAXLocString(@"OPTIONS");
  v107 = [v23 initWithString:v24 attributes:v108];

  v25 = [UIButton buttonWithType:1];
  [(GAXFeatureViewController *)self setOptionsButton:v25];

  v26 = +[UIColor systemBlueColor];
  v27 = [(GAXFeatureViewController *)self optionsButton];
  [v27 setBackgroundColor:v26];

  [v3 optionsButtonCornerRadius];
  v29 = v28;
  v30 = [(GAXFeatureViewController *)self optionsButton];
  v31 = [v30 layer];
  [v31 setCornerRadius:v29];

  v32 = [(GAXFeatureViewController *)self optionsButton];
  [v32 setTranslatesAutoresizingMaskIntoConstraints:0];

  v33 = [(GAXFeatureViewController *)self optionsButton];
  [v33 setClipsToBounds:1];

  v34 = [(GAXFeatureViewController *)self optionsButton];
  [v34 setAccessibilityIdentifier:@"OPTIONS_BUTTON"];

  v35 = [(GAXFeatureViewController *)self optionsButton];
  [v35 addTarget:self action:"_handleTouchUpInside:" forControlEvents:64];

  v36 = [(GAXFeatureViewController *)self optionsButton];
  [v36 setAttributedTitle:v107 forState:0];

  v37 = [(GAXFeatureViewController *)self optionsButton];
  [(GAXGroupingView *)v9 addSubview:v37];

  v106 = v10;
  [v10 ax_constrainLayoutAttribute:4 asEqualToValueOfView:v9];
  [v10 ax_constrainLayoutAttribute:5 asEqualToValueOfView:v9];
  [v10 ax_constrainLayoutAttribute:6 asEqualToValueOfView:v9];
  [v10 ax_constrainLayoutAttribute:3 asEqualToValueOfView:v9];
  v38 = +[NSMutableArray array];
  v39 = [v12 bottomAnchor];
  v40 = [(GAXGroupingView *)v9 bottomAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];
  [v38 addObject:v41];

  v42 = [v12 leadingAnchor];
  v43 = [(GAXGroupingView *)v9 leadingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];
  [v38 addObject:v44];

  v105 = v12;
  v45 = [v12 trailingAnchor];
  v46 = [(GAXGroupingView *)v9 trailingAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];
  [v38 addObject:v47];

  v48 = [v14 bottomAnchor];
  v49 = [v12 topAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];
  [v38 addObject:v50];

  v51 = [v14 topAnchor];
  v52 = [(GAXGroupingView *)v9 topAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];
  [v38 addObject:v53];

  v54 = [v14 leadingAnchor];
  v55 = [(GAXGroupingView *)v9 safeAreaLayoutGuide];
  v56 = [v55 leadingAnchor];
  v57 = [v54 constraintEqualToAnchor:v56];
  [v38 addObject:v57];

  v58 = [v14 trailingAnchor];
  v59 = [(GAXGroupingView *)v9 safeAreaLayoutGuide];
  v60 = [v59 trailingAnchor];
  v61 = [v58 constraintEqualToAnchor:v60];
  [v38 addObject:v61];

  v62 = [v111 topAnchor];
  v63 = [v14 topAnchor];
  [v18 workspaceInstructionsLabelPadding];
  v64 = [v62 constraintEqualToAnchor:v63 constant:?];
  [v38 addObject:v64];

  v65 = [v111 widthAnchor];
  v66 = [v14 widthAnchor];
  v67 = [v65 constraintEqualToAnchor:v66];
  [v38 addObject:v67];

  v68 = [v111 bottomAnchor];
  v69 = [(GAXFeatureViewController *)self optionsButton];
  v70 = [v69 topAnchor];
  [v18 workspaceInstructionsLabelPadding];
  v72 = [v68 constraintEqualToAnchor:v70 constant:-v71];
  [v38 addObject:v72];

  v73 = [v111 centerXAnchor];
  v74 = [v14 centerXAnchor];
  v75 = [v73 constraintEqualToAnchor:v74];
  [v38 addObject:v75];

  v76 = [(GAXFeatureViewController *)self optionsButton];
  v77 = [v76 centerXAnchor];
  v104 = v14;
  v78 = [v14 centerXAnchor];
  v79 = [v77 constraintEqualToAnchor:v78];
  [v38 addObject:v79];

  v80 = [(GAXFeatureViewController *)self optionsButton];
  v81 = [v80 bottomAnchor];
  v82 = [v14 bottomAnchor];
  v83 = v18;
  [v18 optionsButtonBottomPadding];
  v84 = [v81 constraintEqualToAnchor:v82 constant:?];
  [v38 addObject:v84];

  v85 = [(GAXFeatureViewController *)self optionsButton];
  v86 = [v85 titleLabel];
  v87 = [v86 leadingAnchor];
  v88 = [(GAXFeatureViewController *)self optionsButton];
  v89 = [v88 leadingAnchor];
  [v18 optionsButtonLabelPadding];
  v90 = [v87 constraintEqualToAnchor:v89 constant:?];
  [v38 addObject:v90];

  v91 = [(GAXFeatureViewController *)self optionsButton];
  v92 = [v91 titleLabel];
  v93 = [v92 trailingAnchor];
  v94 = [(GAXFeatureViewController *)self optionsButton];
  v95 = [v94 trailingAnchor];
  [v83 optionsButtonLabelPadding];
  v97 = [v93 constraintEqualToAnchor:v95 constant:-v96];
  [v38 addObject:v97];

  v98 = [v105 topAnchor];
  v99 = [(GAXFeatureViewController *)self view];
  v100 = [v99 safeAreaLayoutGuide];
  v101 = [v100 bottomAnchor];
  v102 = [v98 constraintEqualToAnchor:v101];
  safeAreaStrutHeightConstraint = self->_safeAreaStrutHeightConstraint;
  self->_safeAreaStrutHeightConstraint = v102;

  [v38 addObject:self->_safeAreaStrutHeightConstraint];
  [NSLayoutConstraint activateConstraints:v38];
}

- (void)viewDidLayoutSubviews
{
  v28.receiver = self;
  v28.super_class = GAXFeatureViewController;
  [(GAXFeatureViewController *)&v28 viewDidLayoutSubviews];
  v3 = [(GAXFeatureViewController *)self styleProvider];
  v4 = [(GAXFeatureViewController *)self view];
  v5 = [(GAXFeatureViewController *)self instructionsLabel];
  v6 = [v5 font];
  [v5 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(GAXFeatureViewController *)self instructionsLabelHorizontalOffset];
  v16 = v15;
  v17 = [v5 text];
  [v4 frame];
  Width = CGRectGetWidth(v29);
  v30.origin.x = v8;
  v30.origin.y = v10;
  v30.size.width = v12;
  v30.size.height = v14;
  MaxX = CGRectGetMaxX(v30);
  [GAXInterfaceUtilities labelSizeThatFitsText:v17 constrainedToSize:v6 font:v3 styleProvider:v12, 1.79769313e308];
  v20 = Width - MaxX;
  if (v21 > v14 && v20 != v16)
  {
    v23 = +[UIApplication sharedApplication];
    v24 = [v23 preferredContentSizeCategory];
    v25 = _UIContentSizeCategoryCompareToContentSizeCategory();

    if (v25 == -1)
    {
      v26 = [(GAXFeatureViewController *)self instructionsLabelWidthConstraint];
      [v4 removeConstraint:v26];

      v27 = [NSLayoutConstraint constraintWithItem:v5 attribute:6 relatedBy:0 toItem:v4 attribute:6 multiplier:1.0 constant:-v16];
      [(GAXFeatureViewController *)self setInstructionsLabelWidthConstraint:v27];
      [v4 addConstraint:v27];
      [v4 layoutIfNeeded];
    }
  }
}

- (double)instructionsLabelHorizontalOffset
{
  v3 = [(GAXFeatureViewController *)self styleProvider];
  if ([(GAXFeatureViewController *)self shouldDisplayMiniToolbar])
  {
    [v3 featureViewControllerInstructionsMiniHorizontalOffset];
  }

  else
  {
    [v3 featureViewControllerInstructionsHorizontalOffset];
  }

  v5 = v4;

  return v5;
}

- (BOOL)isTouchEnabled
{
  v2 = [(GAXFeatureViewController *)self userInterfaceServer];
  v3 = [v2 allowsTouch];

  return v3;
}

- (UIOffset)optionsButtonOffset
{
  v3 = [(GAXFeatureViewController *)self styleProvider];
  if ([(GAXFeatureViewController *)self shouldDisplayMiniToolbar])
  {
    [v3 featureViewControllerOptionsButtonMiniOffset];
  }

  else
  {
    [v3 featureViewControllerOptionsButtonOffset];
  }

  v6 = v4;
  v7 = v5;

  v8 = v6;
  v9 = v7;
  result.vertical = v9;
  result.horizontal = v8;
  return result;
}

- (double)featureViewControllerHeight
{
  v3 = [(GAXFeatureViewController *)self styleProvider];
  if ([(GAXFeatureViewController *)self shouldDisplayMiniToolbar])
  {
    [v3 featureViewControllerMiniHeight];
  }

  else
  {
    [v3 featureViewControllerHeight];
  }

  v5 = v4;

  return v5;
}

- (int64_t)applicationInterfaceOrientation
{
  v2 = +[AXUIDisplayManager sharedDisplayManager];
  v3 = [v2 activeInterfaceOrientation];

  return v3;
}

- (NSArray)hardwareFeatureViewsParameters
{
  if (qword_6D9A8 != -1)
  {
    sub_33D5C();
  }

  v3 = qword_6D9A0;

  return v3;
}

- (BOOL)shouldDisplayMiniToolbar
{
  v3 = [(GAXFeatureViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 shouldDisplayMiniToolbarForController:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)systemFeatureViewsParameters
{
  if (qword_6D9B8 != -1)
  {
    sub_33D70();
  }

  v3 = qword_6D9B0;

  return v3;
}

- (unint64_t)_numFeatures
{
  v3 = [(GAXFeatureViewController *)self hardwareFeatureViewsParameters];
  v4 = [v3 count];
  v5 = [(GAXFeatureViewController *)self systemFeatureViewsParameters];
  v6 = [v5 count];
  if ([(GAXFeatureViewController *)self _isUsingAppRestrictions])
  {
    v7 = [(GAXFeatureViewController *)self userInterfaceServer];
    v8 = [v7 appRestrictionIdentifiers];
    v9 = [v8 count];
  }

  else
  {
    v9 = 0;
  }

  return v6 + v4 + v9 + 1;
}

- (void)_enumerateAppFeatureViewsParametersUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(GAXFeatureViewController *)self userInterfaceServer];
  v6 = [v5 appRestrictionIdentifiers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_23ED0;
  v9[3] = &unk_5DB30;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  [v6 enumerateObjectsUsingBlock:v9];
}

- (void)_enumerateHardwareFeatureViewsParametersUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(GAXFeatureViewController *)self styleProvider];
  v6 = [(GAXFeatureViewController *)self userInterfaceServer];
  v7 = [(GAXFeatureViewController *)self hardwareFeatureViewsParameters];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_240B4;
  v11[3] = &unk_5DB58;
  v12 = v5;
  v13 = v6;
  v14 = v4;
  v8 = v4;
  v9 = v6;
  v10 = v5;
  [v7 enumerateObjectsUsingBlock:v11];
}

- (void)_enumerateSystemFeatureViewsParametersUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(GAXFeatureViewController *)self styleProvider];
  v6 = [(GAXFeatureViewController *)self userInterfaceServer];
  v7 = [(GAXFeatureViewController *)self systemFeatureViewsParameters];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_242C4;
  v11[3] = &unk_5DB58;
  v12 = v5;
  v13 = v6;
  v14 = v4;
  v8 = v4;
  v9 = v6;
  v10 = v5;
  [v7 enumerateObjectsUsingBlock:v11];
}

- (BOOL)_isUsingAppRestrictions
{
  v2 = [(GAXFeatureViewController *)self userInterfaceServer];
  v3 = [v2 appRestrictionIdentifiers];

  if (v3)
  {
    v4 = [v3 count] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_viewForPresentingOverlayUserInterface
{
  v3 = [(GAXFeatureViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 viewForPresentingOverlayUserInterfaceForFeatureViewController:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (GAXFeatureViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (GAXUIServer)userInterfaceServer
{
  WeakRetained = objc_loadWeakRetained(&self->_userInterfaceServer);

  return WeakRetained;
}

- (void)dismissOptionsAnimated:(BOOL)a3
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (void)presentOptionsAnimated:(BOOL)a3
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end