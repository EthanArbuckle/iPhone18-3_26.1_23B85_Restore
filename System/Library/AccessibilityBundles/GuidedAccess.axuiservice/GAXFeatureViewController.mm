@interface GAXFeatureViewController
+ (GAXFeatureViewController)allocWithZone:(_NSZone *)zone;
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
- (void)_enumerateAppFeatureViewsParametersUsingBlock:(id)block;
- (void)_enumerateHardwareFeatureViewsParametersUsingBlock:(id)block;
- (void)_enumerateSystemFeatureViewsParametersUsingBlock:(id)block;
- (void)dismissOptionsAnimated:(BOOL)animated;
- (void)loadView;
- (void)presentOptionsAnimated:(BOOL)animated;
- (void)viewDidLayoutSubviews;
@end

@implementation GAXFeatureViewController

+ (GAXFeatureViewController)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {
    GAXUserInterfaceIdiomIsPad();
    v6 = objc_opt_class();

    return [v6 allocWithZone:zone];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___GAXFeatureViewController;
    return objc_msgSendSuper2(&v7, "allocWithZone:", zone);
  }
}

- (void)loadView
{
  styleProvider = [(GAXFeatureViewController *)self styleProvider];
  v4 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [v4 preferredContentSizeCategory];
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
  featureViewControllerInstructionsFont = [styleProvider featureViewControllerInstructionsFont];
  v109 = GAXLocString(@"HELP_INTEREST_AREA");
  v15 = [GAXInterfaceUtilities labelWithText:v109 font:featureViewControllerInstructionsFont allowMultipleLines:1 styleProvider:styleProvider];
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
  featureViewControllerInstructionsColor = [styleProvider featureViewControllerInstructionsColor];
  [v15 setTextColor:featureViewControllerInstructionsColor];

  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(GAXFeatureViewController *)self setInstructionsLabel:v15];
  [(GAXGroupingView *)v9 addSubview:v15];
  v112[0] = NSFontAttributeName;
  v18 = styleProvider;
  featureViewControllerOptionsButtonFont = [styleProvider featureViewControllerOptionsButtonFont];
  v113[0] = featureViewControllerOptionsButtonFont;
  v112[1] = NSForegroundColorAttributeName;
  defaultLabelTextColor = [styleProvider defaultLabelTextColor];
  v21 = defaultLabelTextColor;
  v112[2] = NSUnderlineStyleAttributeName;
  v22 = &off_61798;
  if (v6 == -1)
  {
    v22 = &off_617B0;
  }

  v113[1] = defaultLabelTextColor;
  v113[2] = v22;
  v108 = [NSDictionary dictionaryWithObjects:v113 forKeys:v112 count:3];

  v23 = [NSAttributedString alloc];
  v24 = GAXLocString(@"OPTIONS");
  v107 = [v23 initWithString:v24 attributes:v108];

  v25 = [UIButton buttonWithType:1];
  [(GAXFeatureViewController *)self setOptionsButton:v25];

  v26 = +[UIColor systemBlueColor];
  optionsButton = [(GAXFeatureViewController *)self optionsButton];
  [optionsButton setBackgroundColor:v26];

  [styleProvider optionsButtonCornerRadius];
  v29 = v28;
  optionsButton2 = [(GAXFeatureViewController *)self optionsButton];
  layer = [optionsButton2 layer];
  [layer setCornerRadius:v29];

  optionsButton3 = [(GAXFeatureViewController *)self optionsButton];
  [optionsButton3 setTranslatesAutoresizingMaskIntoConstraints:0];

  optionsButton4 = [(GAXFeatureViewController *)self optionsButton];
  [optionsButton4 setClipsToBounds:1];

  optionsButton5 = [(GAXFeatureViewController *)self optionsButton];
  [optionsButton5 setAccessibilityIdentifier:@"OPTIONS_BUTTON"];

  optionsButton6 = [(GAXFeatureViewController *)self optionsButton];
  [optionsButton6 addTarget:self action:"_handleTouchUpInside:" forControlEvents:64];

  optionsButton7 = [(GAXFeatureViewController *)self optionsButton];
  [optionsButton7 setAttributedTitle:v107 forState:0];

  optionsButton8 = [(GAXFeatureViewController *)self optionsButton];
  [(GAXGroupingView *)v9 addSubview:optionsButton8];

  v106 = v10;
  [v10 ax_constrainLayoutAttribute:4 asEqualToValueOfView:v9];
  [v10 ax_constrainLayoutAttribute:5 asEqualToValueOfView:v9];
  [v10 ax_constrainLayoutAttribute:6 asEqualToValueOfView:v9];
  [v10 ax_constrainLayoutAttribute:3 asEqualToValueOfView:v9];
  v38 = +[NSMutableArray array];
  bottomAnchor = [v12 bottomAnchor];
  bottomAnchor2 = [(GAXGroupingView *)v9 bottomAnchor];
  v41 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v38 addObject:v41];

  leadingAnchor = [v12 leadingAnchor];
  leadingAnchor2 = [(GAXGroupingView *)v9 leadingAnchor];
  v44 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v38 addObject:v44];

  v105 = v12;
  trailingAnchor = [v12 trailingAnchor];
  trailingAnchor2 = [(GAXGroupingView *)v9 trailingAnchor];
  v47 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v38 addObject:v47];

  bottomAnchor3 = [v14 bottomAnchor];
  topAnchor = [v12 topAnchor];
  v50 = [bottomAnchor3 constraintEqualToAnchor:topAnchor];
  [v38 addObject:v50];

  topAnchor2 = [v14 topAnchor];
  topAnchor3 = [(GAXGroupingView *)v9 topAnchor];
  v53 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
  [v38 addObject:v53];

  leadingAnchor3 = [v14 leadingAnchor];
  safeAreaLayoutGuide = [(GAXGroupingView *)v9 safeAreaLayoutGuide];
  leadingAnchor4 = [safeAreaLayoutGuide leadingAnchor];
  v57 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v38 addObject:v57];

  trailingAnchor3 = [v14 trailingAnchor];
  safeAreaLayoutGuide2 = [(GAXGroupingView *)v9 safeAreaLayoutGuide];
  trailingAnchor4 = [safeAreaLayoutGuide2 trailingAnchor];
  v61 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v38 addObject:v61];

  topAnchor4 = [v111 topAnchor];
  topAnchor5 = [v14 topAnchor];
  [v18 workspaceInstructionsLabelPadding];
  v64 = [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:?];
  [v38 addObject:v64];

  widthAnchor = [v111 widthAnchor];
  widthAnchor2 = [v14 widthAnchor];
  v67 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v38 addObject:v67];

  bottomAnchor4 = [v111 bottomAnchor];
  optionsButton9 = [(GAXFeatureViewController *)self optionsButton];
  topAnchor6 = [optionsButton9 topAnchor];
  [v18 workspaceInstructionsLabelPadding];
  v72 = [bottomAnchor4 constraintEqualToAnchor:topAnchor6 constant:-v71];
  [v38 addObject:v72];

  centerXAnchor = [v111 centerXAnchor];
  centerXAnchor2 = [v14 centerXAnchor];
  v75 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v38 addObject:v75];

  optionsButton10 = [(GAXFeatureViewController *)self optionsButton];
  centerXAnchor3 = [optionsButton10 centerXAnchor];
  v104 = v14;
  centerXAnchor4 = [v14 centerXAnchor];
  v79 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v38 addObject:v79];

  optionsButton11 = [(GAXFeatureViewController *)self optionsButton];
  bottomAnchor5 = [optionsButton11 bottomAnchor];
  bottomAnchor6 = [v14 bottomAnchor];
  v83 = v18;
  [v18 optionsButtonBottomPadding];
  v84 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:?];
  [v38 addObject:v84];

  optionsButton12 = [(GAXFeatureViewController *)self optionsButton];
  titleLabel = [optionsButton12 titleLabel];
  leadingAnchor5 = [titleLabel leadingAnchor];
  optionsButton13 = [(GAXFeatureViewController *)self optionsButton];
  leadingAnchor6 = [optionsButton13 leadingAnchor];
  [v18 optionsButtonLabelPadding];
  v90 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:?];
  [v38 addObject:v90];

  optionsButton14 = [(GAXFeatureViewController *)self optionsButton];
  titleLabel2 = [optionsButton14 titleLabel];
  trailingAnchor5 = [titleLabel2 trailingAnchor];
  optionsButton15 = [(GAXFeatureViewController *)self optionsButton];
  trailingAnchor6 = [optionsButton15 trailingAnchor];
  [v83 optionsButtonLabelPadding];
  v97 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-v96];
  [v38 addObject:v97];

  topAnchor7 = [v105 topAnchor];
  view = [(GAXFeatureViewController *)self view];
  safeAreaLayoutGuide3 = [view safeAreaLayoutGuide];
  bottomAnchor7 = [safeAreaLayoutGuide3 bottomAnchor];
  v102 = [topAnchor7 constraintEqualToAnchor:bottomAnchor7];
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
  styleProvider = [(GAXFeatureViewController *)self styleProvider];
  view = [(GAXFeatureViewController *)self view];
  instructionsLabel = [(GAXFeatureViewController *)self instructionsLabel];
  font = [instructionsLabel font];
  [instructionsLabel frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(GAXFeatureViewController *)self instructionsLabelHorizontalOffset];
  v16 = v15;
  text = [instructionsLabel text];
  [view frame];
  Width = CGRectGetWidth(v29);
  v30.origin.x = v8;
  v30.origin.y = v10;
  v30.size.width = v12;
  v30.size.height = v14;
  MaxX = CGRectGetMaxX(v30);
  [GAXInterfaceUtilities labelSizeThatFitsText:text constrainedToSize:font font:styleProvider styleProvider:v12, 1.79769313e308];
  v20 = Width - MaxX;
  if (v21 > v14 && v20 != v16)
  {
    v23 = +[UIApplication sharedApplication];
    preferredContentSizeCategory = [v23 preferredContentSizeCategory];
    v25 = _UIContentSizeCategoryCompareToContentSizeCategory();

    if (v25 == -1)
    {
      instructionsLabelWidthConstraint = [(GAXFeatureViewController *)self instructionsLabelWidthConstraint];
      [view removeConstraint:instructionsLabelWidthConstraint];

      v27 = [NSLayoutConstraint constraintWithItem:instructionsLabel attribute:6 relatedBy:0 toItem:view attribute:6 multiplier:1.0 constant:-v16];
      [(GAXFeatureViewController *)self setInstructionsLabelWidthConstraint:v27];
      [view addConstraint:v27];
      [view layoutIfNeeded];
    }
  }
}

- (double)instructionsLabelHorizontalOffset
{
  styleProvider = [(GAXFeatureViewController *)self styleProvider];
  if ([(GAXFeatureViewController *)self shouldDisplayMiniToolbar])
  {
    [styleProvider featureViewControllerInstructionsMiniHorizontalOffset];
  }

  else
  {
    [styleProvider featureViewControllerInstructionsHorizontalOffset];
  }

  v5 = v4;

  return v5;
}

- (BOOL)isTouchEnabled
{
  userInterfaceServer = [(GAXFeatureViewController *)self userInterfaceServer];
  allowsTouch = [userInterfaceServer allowsTouch];

  return allowsTouch;
}

- (UIOffset)optionsButtonOffset
{
  styleProvider = [(GAXFeatureViewController *)self styleProvider];
  if ([(GAXFeatureViewController *)self shouldDisplayMiniToolbar])
  {
    [styleProvider featureViewControllerOptionsButtonMiniOffset];
  }

  else
  {
    [styleProvider featureViewControllerOptionsButtonOffset];
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
  styleProvider = [(GAXFeatureViewController *)self styleProvider];
  if ([(GAXFeatureViewController *)self shouldDisplayMiniToolbar])
  {
    [styleProvider featureViewControllerMiniHeight];
  }

  else
  {
    [styleProvider featureViewControllerHeight];
  }

  v5 = v4;

  return v5;
}

- (int64_t)applicationInterfaceOrientation
{
  v2 = +[AXUIDisplayManager sharedDisplayManager];
  activeInterfaceOrientation = [v2 activeInterfaceOrientation];

  return activeInterfaceOrientation;
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
  delegate = [(GAXFeatureViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate shouldDisplayMiniToolbarForController:self];
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
  hardwareFeatureViewsParameters = [(GAXFeatureViewController *)self hardwareFeatureViewsParameters];
  v4 = [hardwareFeatureViewsParameters count];
  systemFeatureViewsParameters = [(GAXFeatureViewController *)self systemFeatureViewsParameters];
  v6 = [systemFeatureViewsParameters count];
  if ([(GAXFeatureViewController *)self _isUsingAppRestrictions])
  {
    userInterfaceServer = [(GAXFeatureViewController *)self userInterfaceServer];
    appRestrictionIdentifiers = [userInterfaceServer appRestrictionIdentifiers];
    v9 = [appRestrictionIdentifiers count];
  }

  else
  {
    v9 = 0;
  }

  return v6 + v4 + v9 + 1;
}

- (void)_enumerateAppFeatureViewsParametersUsingBlock:(id)block
{
  blockCopy = block;
  userInterfaceServer = [(GAXFeatureViewController *)self userInterfaceServer];
  appRestrictionIdentifiers = [userInterfaceServer appRestrictionIdentifiers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_23ED0;
  v9[3] = &unk_5DB30;
  v10 = userInterfaceServer;
  v11 = blockCopy;
  v7 = blockCopy;
  v8 = userInterfaceServer;
  [appRestrictionIdentifiers enumerateObjectsUsingBlock:v9];
}

- (void)_enumerateHardwareFeatureViewsParametersUsingBlock:(id)block
{
  blockCopy = block;
  styleProvider = [(GAXFeatureViewController *)self styleProvider];
  userInterfaceServer = [(GAXFeatureViewController *)self userInterfaceServer];
  hardwareFeatureViewsParameters = [(GAXFeatureViewController *)self hardwareFeatureViewsParameters];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_240B4;
  v11[3] = &unk_5DB58;
  v12 = styleProvider;
  v13 = userInterfaceServer;
  v14 = blockCopy;
  v8 = blockCopy;
  v9 = userInterfaceServer;
  v10 = styleProvider;
  [hardwareFeatureViewsParameters enumerateObjectsUsingBlock:v11];
}

- (void)_enumerateSystemFeatureViewsParametersUsingBlock:(id)block
{
  blockCopy = block;
  styleProvider = [(GAXFeatureViewController *)self styleProvider];
  userInterfaceServer = [(GAXFeatureViewController *)self userInterfaceServer];
  systemFeatureViewsParameters = [(GAXFeatureViewController *)self systemFeatureViewsParameters];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_242C4;
  v11[3] = &unk_5DB58;
  v12 = styleProvider;
  v13 = userInterfaceServer;
  v14 = blockCopy;
  v8 = blockCopy;
  v9 = userInterfaceServer;
  v10 = styleProvider;
  [systemFeatureViewsParameters enumerateObjectsUsingBlock:v11];
}

- (BOOL)_isUsingAppRestrictions
{
  userInterfaceServer = [(GAXFeatureViewController *)self userInterfaceServer];
  appRestrictionIdentifiers = [userInterfaceServer appRestrictionIdentifiers];

  if (appRestrictionIdentifiers)
  {
    v4 = [appRestrictionIdentifiers count] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_viewForPresentingOverlayUserInterface
{
  delegate = [(GAXFeatureViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate viewForPresentingOverlayUserInterfaceForFeatureViewController:self];
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

- (void)dismissOptionsAnimated:(BOOL)animated
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (void)presentOptionsAnimated:(BOOL)animated
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end