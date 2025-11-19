@interface BuddyPasscodeBaseViewController
+ (BOOL)allowSkip;
+ (double)_passcodeInputVerticalPaddingForOrientation:(int64_t)a3;
- (BOOL)_allowSkip;
- (BuddyPasscodeBaseViewController)init;
- (BuddyPasscodeBaseViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (BuddyPasscodeBaseViewControllerDelegate)passcodeCreationDelegate;
- (id)_currentPasscodeInputView;
- (id)_firstEntryInstructions;
- (id)_passcodeInputViewForState:(unint64_t)a3 updateDetailText:(BOOL)a4;
- (id)instructionsForState:(unint64_t)a3;
- (id)passcodeInputView;
- (id)passcodeOptionAlertController;
- (id)titleForState:(unint64_t)a3;
- (unint64_t)_onboardingPasscodeAnimationForBFF:(unint64_t)a3;
- (void)_animatedPasscodeViewTransitionToState:(unint64_t)a3 animation:(unint64_t)a4;
- (void)_commitPasscodeEntryTypeChange;
- (void)_finishedWithPasscode:(id)a3;
- (void)_prepareTransitionForPasscodeInput:(id)a3;
- (void)_setupFirstEntry;
- (void)_showPasscodeOptionsSheet;
- (void)_showSkipPasscodeAlert;
- (void)_showWeakWarningAlert;
- (void)_updateNextButton;
- (void)_updateNextButtonForPasscode:(id)a3;
- (void)clear;
- (void)configurePasscodeTypeUsingAnimations:(BOOL)a3;
- (void)dealloc;
- (void)nextButtonPressed;
- (void)passcodeInput:(id)a3 enteredPasscode:(id)a4;
- (void)passcodeInput:(id)a3 willChangeContents:(id)a4;
- (void)passcodeManager:(id)a3 didSetPasscodeWithSuccess:(BOOL)a4 error:(id)a5;
- (void)passcodeManager:(id)a3 didTransitionFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)passcodeManagerWillSetPasscode:(id)a3;
- (void)tappedFooterButton:(id)a3;
- (void)transitionToPasscodeInput:(id)a3 delegate:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BuddyPasscodeBaseViewController

- (BuddyPasscodeBaseViewController)init
{
  location = [(BuddyPasscodeBaseViewController *)self initWithTitle:&stru_10032F900 detailText:@" " icon:0, a2, 0];
  objc_storeStrong(&location, location);
  if (location)
  {
    *(location + 16) = 1;
  }

  v2 = location;
  objc_storeStrong(&location, 0);
  return v2;
}

- (BuddyPasscodeBaseViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = 0;
  objc_storeStrong(&v13, a5);
  v7 = v16;
  v16 = 0;
  v12.receiver = v7;
  v12.super_class = BuddyPasscodeBaseViewController;
  v16 = [(BuddyPasscodeBaseViewController *)&v12 initWithTitle:&stru_10032F900 detailText:@" " icon:0];
  objc_storeStrong(&v16, v16);
  if (v16)
  {
    v8 = objc_alloc_init(BuddyFeatureFlags);
    v9 = *(v16 + 1);
    *(v16 + 1) = v8;

    *(v16 + 16) = 1;
  }

  v10 = v16;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v16, 0);
  return v10;
}

+ (BOOL)allowSkip
{
  if (PSHasStockholmPass())
  {
    return 0;
  }

  v2 = +[MCProfileConnection sharedConnection];
  v4 = ([v2 isPasscodeRequired] ^ 1) & 1;

  return v4;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  v2 = [(BuddyPasscodeBaseViewController *)self passcodeManager];
  [(BFFPasscodeCreationManager *)v2 setDelegate:0];

  v3.receiver = v5;
  v3.super_class = BuddyPasscodeBaseViewController;
  [(BuddyPasscodeBaseViewController *)&v3 dealloc];
}

- (void)_setupFirstEntry
{
  v27 = self;
  v26 = a2;
  v3 = +[BFFPasscodeCreationManager sharedPasscodeManager];
  [(BuddyPasscodeBaseViewController *)self setPasscodeManager:v3];

  v4 = [(BuddyPasscodeBaseViewController *)v27 passcodeManager];
  [(BFFPasscodeCreationManager *)v4 reset];

  v5 = [(BuddyPasscodeBaseViewController *)v27 passcodeManager];
  [(BFFPasscodeCreationManager *)v5 setDelegate:v27];

  v25 = 0;
  v6 = +[MCProfileConnection sharedConnection];
  LODWORD(v3) = [v6 minimumNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:&v25];

  *&v24[1] = v3;
  if (v3)
  {
    v14 = [(BuddyPasscodeBaseViewController *)v27 passcodeManager];
    [(BFFPasscodeCreationManager *)v14 setNumericPasscodeEntry:0];

    v15 = [(BuddyPasscodeBaseViewController *)v27 passcodeManager];
    [(BFFPasscodeCreationManager *)v15 setSimplePasscodeEntryLength:0];
  }

  else
  {
    v7 = PSSupportsMesa();
    *v24 = v7 & 1;
    v8 = 1;
    if ((v7 & 1) == 0)
    {
      v23 = MGGetBoolAnswer() & 1;
      v8 = v23;
    }

    v24[0] = v8 & 1;
    v9 = 1;
    if (v25 != 1)
    {
      v9 = v24[0];
    }

    v22 = v9 & 1;
    v10 = [(BuddyPasscodeBaseViewController *)v27 passcodeManager];
    v11 = v10;
    if (v22)
    {
      v12 = 6;
    }

    else
    {
      v12 = 4;
    }

    [(BFFPasscodeCreationManager *)v10 setSimplePasscodeEntryLength:v12];

    v13 = [(BuddyPasscodeBaseViewController *)v27 passcodeManager];
    [(BFFPasscodeCreationManager *)v13 setNumericPasscodeEntry:1];
  }

  [(BuddyPasscodeBaseViewController *)v27 configurePasscodeTypeUsingAnimations:0];
  v16 = [(BuddyPasscodeBaseViewController *)v27 passcodeManager];
  v17 = [(BFFPasscodeCreationManager *)v16 passcodeState];

  v21 = v17;
  v18 = [(BuddyPasscodeBaseViewController *)v27 headerView];
  v19 = [(BuddyPasscodeBaseViewController *)v27 titleForState:v17];
  [v18 setTitle:v19];

  location = [(BuddyPasscodeBaseViewController *)v27 _passcodeInputViewForState:v21 updateDetailText:1];
  [(BuddyPasscodeBaseViewController *)v27 transitionToPasscodeInput:location delegate:v27];
  objc_storeStrong(&location, 0);
}

- (void)transitionToPasscodeInput:(id)a3 delegate:(id)a4
{
  v49 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v47 = 0;
  objc_storeStrong(&v47, a4);
  v5 = [(BuddyPasscodeBaseViewController *)v49 _currentPasscodeInputView];
  v6 = 1;
  if (([v5 isEqual:location[0]] & 1) == 0)
  {
    v6 = location[0] == 0;
  }

  if (v6)
  {
    v46 = 1;
  }

  else
  {
    v45 = [(BuddyPasscodeBaseViewController *)v49 _currentPasscodeInputView];
    [v45 disable];
    [v45 setDelegate:0];
    [location[0] setTranslatesAutoresizingMaskIntoConstraints:0];
    [location[0] setDelegate:v49];
    v7 = [(BuddyPasscodeBaseViewController *)v49 contentView];
    [v7 addSubview:location[0]];

    if ([v45 isFirstResponder])
    {
      v39 = _NSConcreteStackBlock;
      v40 = -1073741824;
      v41 = 0;
      v42 = sub_100233634;
      v43 = &unk_10032B0D0;
      v44 = location[0];
      [UIView performWithoutAnimation:&v39];
      objc_storeStrong(&v44, 0);
    }

    else
    {
      [location[0] becomeFirstResponder];
    }

    [v45 removeFromSuperview];
    v8 = objc_opt_class();
    v9 = +[UIApplication sharedApplication];
    [v8 _passcodeInputVerticalPaddingForOrientation:{-[UIApplication activeInterfaceOrientation](v9, "activeInterfaceOrientation")}];
    v11 = v10;

    v38 = v11;
    v12 = [location[0] topAnchor];
    v13 = [(BuddyPasscodeBaseViewController *)v49 contentView];
    v14 = [v13 topAnchor];
    v37 = [v12 constraintEqualToAnchor:v14 constant:v11];

    v15 = [(BuddyPasscodeBaseViewController *)v49 contentViewTopConstraint];
    if (v15)
    {
      v16 = [(BuddyPasscodeBaseViewController *)v49 contentViewTopConstraint];
      [(NSLayoutConstraint *)v16 constant];
      [v37 setConstant:?];
    }

    [(BuddyPasscodeBaseViewController *)v49 setContentViewTopConstraint:v37];
    v17 = [(BuddyPasscodeBaseViewController *)v49 footerButton];
    v18 = [(UIButton *)v17 topAnchor];
    v19 = [location[0] bottomAnchor];
    v20 = [v18 constraintEqualToAnchor:v19 constant:v38];
    [(BuddyPasscodeBaseViewController *)v49 setPasscodeInputViewBottomConstraint:v20];

    v21 = [location[0] leadingAnchor];
    v22 = [(BuddyPasscodeBaseViewController *)v49 contentView];
    v23 = [v22 leadingAnchor];
    v24 = [v21 constraintEqualToAnchor:v23];
    [v24 setActive:1];

    v25 = [location[0] trailingAnchor];
    v26 = [(BuddyPasscodeBaseViewController *)v49 contentView];
    v27 = [v26 trailingAnchor];
    v28 = [v25 constraintEqualToAnchor:v27];
    [v28 setActive:1];

    v29 = [(BuddyPasscodeBaseViewController *)v49 contentViewTopConstraint];
    v51[0] = v29;
    v30 = [(BuddyPasscodeBaseViewController *)v49 passcodeInputViewBottomConstraint];
    v51[1] = v30;
    v31 = [NSArray arrayWithObjects:v51 count:2];
    [NSLayoutConstraint activateConstraints:v31];

    if (([(BuddyFeatureFlags *)v49->_featureFlags isSolariumEnabled]& 1) == 0)
    {
      v32 = [location[0] centerXAnchor];
      v33 = [(BuddyPasscodeBaseViewController *)v49 contentView];
      v34 = [v33 centerXAnchor];
      v35 = [v32 constraintEqualToAnchor:v34];
      v50 = v35;
      v36 = [NSArray arrayWithObjects:&v50 count:1];
      [NSLayoutConstraint activateConstraints:v36];
    }

    objc_storeStrong(&v37, 0);
    objc_storeStrong(&v45, 0);
    v46 = 0;
  }

  objc_storeStrong(&v47, 0);
  objc_storeStrong(location, 0);
}

+ (double)_passcodeInputVerticalPaddingForOrientation:(int64_t)a3
{
  v8 = 0.0;
  v3 = +[BYDevice currentDevice];
  v4 = [v3 type];

  if (v4 == 1)
  {
    return 20.0;
  }

  v5 = +[BYDevice currentDevice];
  v6 = [v5 size];

  if (v6 < 2)
  {
    return 37.0;
  }

  if (v6 == 2)
  {
    return 22.0;
  }

  if (v6 == 3 || v6 != 4 && (v6 - 5) <= 1)
  {
    return 37.0;
  }

  return v8;
}

- (void)viewDidLoad
{
  v65 = self;
  v64 = a2;
  v63.receiver = self;
  v63.super_class = BuddyPasscodeBaseViewController;
  [(BuddyPasscodeBaseViewController *)&v63 viewDidLoad];
  v2 = [(BuddyPasscodeBaseViewController *)v65 flowItemDispositionProvider];
  v3 = [(BuddyFlowItemDispositionProvider *)v2 dispositions]& 8;

  if (v3 == 8)
  {
    v4 = +[UIColor systemBlueColor];
    location = [UIImageSymbolConfiguration configurationWithHierarchicalColor:v4];

    v5 = [(BuddyPasscodeBaseViewController *)v65 headerView];
    v6 = [UIImage systemImageNamed:@"figure.child.and.lock.fill" withConfiguration:location];
    [v5 setIcon:v6 accessibilityLabel:0];

    objc_storeStrong(&location, 0);
  }

  else if ([(BuddyPasscodeBaseViewController *)v65 includeHeaderAnimation])
  {
    v7 = [[OBAnimationState alloc] initWithStateName:@"State 1" darkStateName:@"Dark 1" transitionDuration:0.01 transitionSpeed:1.0];
    v68[0] = v7;
    v8 = [[OBAnimationState alloc] initWithStateName:@"State 2" darkStateName:@"Dark 2" transitionDuration:1.0 transitionSpeed:1.0];
    v68[1] = v8;
    v61 = [NSArray arrayWithObjects:v68 count:2];

    v9 = [(BuddyPasscodeBaseViewController *)v65 buddy_animationController:@"Lock" animatedStates:v61 startAtFirstState:1];
    [(BuddyPasscodeBaseViewController *)v65 setAnimationController:v9];

    objc_storeStrong(&v61, 0);
  }

  v10 = [BuddyMultilineButton buttonWithType:1];
  [(BuddyPasscodeBaseViewController *)v65 setFooterButton:v10];

  v11 = [(BuddyPasscodeBaseViewController *)v65 footerButton];
  [(UIButton *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(BuddyPasscodeBaseViewController *)v65 footerButton];
  v13 = [(UIButton *)v12 titleLabel];
  v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)v13 setFont:v14];

  v15 = [(BuddyPasscodeBaseViewController *)v65 footerButton];
  v16 = [(UIButton *)v15 titleLabel];
  [(UILabel *)v16 setNumberOfLines:0];

  v17 = [(BuddyPasscodeBaseViewController *)v65 footerButton];
  [(UIButton *)v17 addTarget:v65 action:"tappedFooterButton:" forEvents:64];

  v18 = [(BuddyPasscodeBaseViewController *)v65 contentView];
  v19 = [(BuddyPasscodeBaseViewController *)v65 footerButton];
  [v18 addSubview:v19];

  if (([(BuddyFeatureFlags *)v65->_featureFlags isSolariumEnabled]& 1) != 0)
  {
    v20 = [(BuddyPasscodeBaseViewController *)v65 footerButton];
    LODWORD(v21) = 1148846080;
    [(UIButton *)v20 setContentHuggingPriority:0 forAxis:v21];

    v56 = [(BuddyPasscodeBaseViewController *)v65 footerButton];
    v54 = [(UIButton *)v56 leadingAnchor];
    v55 = [(BuddyPasscodeBaseViewController *)v65 contentView];
    v53 = [v55 leadingAnchor];
    v52 = [v54 constraintEqualToAnchor:?];
    v67[0] = v52;
    v50 = [(BuddyPasscodeBaseViewController *)v65 footerButton];
    v22 = [(UIButton *)v50 trailingAnchor];
    v23 = [(BuddyPasscodeBaseViewController *)v65 contentView];
    v24 = [v23 trailingAnchor];
    v25 = [v22 constraintLessThanOrEqualToAnchor:v24];
    v67[1] = v25;
    v26 = [(BuddyPasscodeBaseViewController *)v65 footerButton];
    v27 = [(UIButton *)v26 bottomAnchor];
    v28 = [(BuddyPasscodeBaseViewController *)v65 contentView];
    v29 = [v28 bottomAnchor];
    v30 = [v27 constraintEqualToAnchor:v29];
    v67[2] = v30;
    v31 = [NSArray arrayWithObjects:v67 count:3];
    [NSLayoutConstraint activateConstraints:v31];

    v32 = [(BuddyPasscodeBaseViewController *)v65 footerButton];
    v33 = [(UIButton *)v32 titleLabel];
    [(UILabel *)v33 setTextAlignment:4];
  }

  else
  {
    v57 = sub_100234030();
    v58 = v34;
    v59 = v35;
    v60 = v36;
    v37 = [(BuddyPasscodeBaseViewController *)v65 footerButton];
    [(UIButton *)v37 setContentEdgeInsets:v57, v58, v59, v60];

    v38 = [(BuddyPasscodeBaseViewController *)v65 footerButton];
    v39 = [(UIButton *)v38 titleLabel];
    [(UILabel *)v39 setTextAlignment:1];

    v51 = [(BuddyPasscodeBaseViewController *)v65 footerButton];
    v40 = [(UIButton *)v51 widthAnchor];
    v41 = [(BuddyPasscodeBaseViewController *)v65 contentView];
    v42 = [v41 widthAnchor];
    v43 = [v40 constraintEqualToAnchor:v42];
    v66[0] = v43;
    v44 = [(BuddyPasscodeBaseViewController *)v65 footerButton];
    v45 = [(UIButton *)v44 bottomAnchor];
    v46 = [(BuddyPasscodeBaseViewController *)v65 contentView];
    v47 = [v46 bottomAnchor];
    v48 = [v45 constraintEqualToAnchor:v47];
    v66[1] = v48;
    v49 = [NSArray arrayWithObjects:v66 count:2];
    [NSLayoutConstraint activateConstraints:v49];
  }

  [(BuddyPasscodeBaseViewController *)v65 setExtendedLayoutIncludesOpaqueBars:1];
  [(BuddyPasscodeBaseViewController *)v65 _setupFirstEntry];
}

- (void)viewWillAppear:(BOOL)a3
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  v8.receiver = self;
  v8.super_class = BuddyPasscodeBaseViewController;
  [(BuddyPasscodeBaseViewController *)&v8 viewWillAppear:a3];
  v7 = [(BuddyPasscodeBaseViewController *)v11 _currentPasscodeInputView];
  v3 = [(BuddyPasscodeBaseViewController *)v11 presentedViewController];
  v4 = v3 == 0;

  if (v4)
  {
    [v7 becomeFirstResponder];
  }

  v5 = v11;
  v6 = [v7 passcode];
  [(BuddyPasscodeBaseViewController *)v5 _updateNextButtonForPasscode:v6];

  objc_storeStrong(&v7, 0);
}

- (void)viewDidAppear:(BOOL)a3
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v11.receiver = self;
  v11.super_class = BuddyPasscodeBaseViewController;
  [(BuddyPasscodeBaseViewController *)&v11 viewDidAppear:a3];
  v3 = [(BuddyPasscodeBaseViewController *)v14 animationController];
  [(OBAnimationController *)v3 startAnimation];

  v4 = [(BuddyPasscodeBaseViewController *)v14 scrollView];
  [v4 contentSize];
  v6 = v5;
  v7 = [(BuddyPasscodeBaseViewController *)v14 view];
  [v7 frame];
  v9 = v8;

  if (v6 > v9)
  {
    v10 = [(BuddyPasscodeBaseViewController *)v14 scrollView];
    [v10 flashScrollIndicators];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = BuddyPasscodeBaseViewController;
  [(BuddyPasscodeBaseViewController *)&v5 viewWillDisappear:a3];
  v3 = [(BuddyPasscodeBaseViewController *)v8 _currentPasscodeInputView];
  [v3 resignFirstResponder];
  objc_storeStrong(&v4, 0);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v7.receiver = self;
  v7.super_class = BuddyPasscodeBaseViewController;
  [(BuddyPasscodeBaseViewController *)&v7 viewDidDisappear:a3];
  if ([(BuddyPasscodeBaseViewController *)v10 showingSpinner])
  {
    [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"SETUP_PASSCODE_VIEW_CONTROLLER"];
    [(BuddyPasscodeBaseViewController *)v10 setShowingSpinner:0];
  }

  v3 = +[BFFPasscodeCreationManager sharedPasscodeManager];
  v4 = [v3 passcodeState];

  if (v4 == 4)
  {
    [(BuddyPasscodeBaseViewController *)v10 clear];
  }

  else
  {
    v5 = +[BFFPasscodeCreationManager sharedPasscodeManager];
    [v5 reset];
  }

  v6 = [(BuddyPasscodeBaseViewController *)v10 _currentPasscodeInputView];
  [v6 resignFirstResponder];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v14 = a3;
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v11.receiver = v13;
  v11.super_class = BuddyPasscodeBaseViewController;
  [(BuddyPasscodeBaseViewController *)&v11 viewWillTransitionToSize:location[0] withTransitionCoordinator:v14.width, v14.height];
  v4 = location[0];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100234544;
  v9 = &unk_10032D9E8;
  v10 = v13;
  [v4 animateAlongsideTransition:&v5 completion:0];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)nextButtonPressed
{
  v5 = self;
  location[1] = a2;
  v2 = [(BuddyPasscodeBaseViewController *)self _currentPasscodeInputView];
  location[0] = [v2 passcode];

  v3 = [(BuddyPasscodeBaseViewController *)v5 passcodeManager];
  [(BFFPasscodeCreationManager *)v3 transitionToNextPasscodeStateForInput:location[0]];

  objc_storeStrong(location, 0);
}

- (void)_updateNextButton
{
  v4 = self;
  location[1] = a2;
  location[0] = [(BuddyPasscodeBaseViewController *)self _currentPasscodeInputView];
  v2 = [location[0] passcode];
  [(BuddyPasscodeBaseViewController *)v4 _updateNextButtonForPasscode:v2];

  objc_storeStrong(location, 0);
}

- (void)_updateNextButtonForPasscode:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  v3 = 0;
  if ([location[0] length])
  {
    v8 = +[MCProfileConnection sharedConnection];
    v7 = 1;
    v3 = [v8 passcode:location[0] meetsCurrentConstraintsOutError:0];
  }

  if (v7)
  {
  }

  v9 = v3 & 1;
  v4 = [(BuddyPasscodeBaseViewController *)v11 navigationItem];
  v5 = [v4 rightBarButtonItem];
  [v5 setEnabled:v9 & 1];

  v6 = +[UIKeyboard activeKeyboard];
  [v6 setReturnKeyEnabled:v9 & 1];

  objc_storeStrong(location, 0);
}

- (BOOL)_allowSkip
{
  v2 = [(BuddyPasscodeBaseViewController *)self passcodeCreationDelegate];
  v3 = objc_opt_respondsToSelector();

  if ((v3 & 1) == 0)
  {
    return +[BuddyPasscodeBaseViewController allowSkip];
  }

  v4 = [(BuddyPasscodeBaseViewController *)self passcodeCreationDelegate];
  v6 = [(BuddyPasscodeBaseViewControllerDelegate *)v4 passcodeViewControllerAllowSkip:self]& 1;

  return v6;
}

- (void)passcodeInput:(id)a3 willChangeContents:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(BuddyPasscodeBaseViewController *)v7 _updateNextButtonForPasscode:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)passcodeInput:(id)a3 enteredPasscode:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v5 = [location[0] passcodeField];
  [v5 forceDisplayIfNeeded];

  v15 = 0x3FB374BC6A7EF9DBLL;
  v14 = dispatch_time(0, (0.076 * 1000000000.0));
  v6 = &_dispatch_main_q;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_100234BD8;
  v11 = &unk_10032B838;
  v12 = v18;
  v13 = v16;
  dispatch_after(v14, v6, &v7);

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (id)passcodeInputView
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  v2 = [(BuddyPasscodeBaseViewController *)self passcodeManager];
  v3 = [(BFFPasscodeCreationManager *)v2 isSimplePasscodeEntry];

  if (v3)
  {
    v4 = [BuddySimplePasscodeInputView alloc];
    v5 = [(BuddyPasscodeBaseViewController *)v14 passcodeManager];
    obj = [(BuddySimplePasscodeInputView *)v4 initWithFrame:[(BFFPasscodeCreationManager *)v5 simplePasscodeEntryLength] numberOfEntryFields:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];

    [obj setLimitCharactersToNumbers:0];
    objc_storeStrong(location, obj);
    objc_storeStrong(&obj, 0);
  }

  else
  {
    v6 = [BuddyComplexPasscodeInputView alloc];
    v7 = [(BuddyPasscodeBaseViewController *)v14 passcodeManager];
    v8 = [(BuddyComplexPasscodeInputView *)v6 initWithFrame:[(BFFPasscodeCreationManager *)v7 isNumericPasscodeEntry]& 1 numericOnly:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v9 = location[0];
    location[0] = v8;
  }

  v10 = location[0];
  objc_storeStrong(location, 0);
  return v10;
}

- (id)_passcodeInputViewForState:(unint64_t)a3 updateDetailText:(BOOL)a4
{
  v22 = self;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  location = [(BuddyPasscodeBaseViewController *)self passcodeInputView];
  if (!v20 || v20 == 3)
  {
    v4 = [(BuddyPasscodeBaseViewController *)v22 passcodeOptionAlertController];
    v17 = [v4 actions];

    v5 = [v17 count] == 2;
    v6 = 0;
    if (v5)
    {
      v6 = [(BuddyPasscodeBaseViewController *)v22 _allowSkip];
    }

    v22->_footerButtonIsSkip = v6 & 1;
    if (v22->_footerButtonIsSkip)
    {
      v7 = [(BuddyPasscodeBaseViewController *)v22 footerButton];
      v8 = [NSBundle bundleForClass:objc_opt_class()];
      v9 = [(NSBundle *)v8 localizedStringForKey:@"DO_NOT_ADD_PASSCODE" value:&stru_10032F900 table:@"Localizable"];
      [(UIButton *)v7 setTitle:v9 forState:0];
    }

    else if ([v17 count] > 1)
    {
      v10 = [(BuddyPasscodeBaseViewController *)v22 footerButton];
      v11 = [NSBundle bundleForClass:objc_opt_class()];
      v12 = [(NSBundle *)v11 localizedStringForKey:@"PASSCODE_OPTIONS" value:&stru_10032F900 table:@"Localizable"];
      [(UIButton *)v10 setTitle:v12 forState:0];
    }

    objc_storeStrong(&v17, 0);
  }

  if (v19)
  {
    v13 = [(BuddyPasscodeBaseViewController *)v22 headerView];
    v14 = [(BuddyPasscodeBaseViewController *)v22 instructionsForState:v20];
    [v13 setDetailText:v14];
  }

  v15 = location;
  objc_storeStrong(&location, 0);
  return v15;
}

- (void)_animatedPasscodeViewTransitionToState:(unint64_t)a3 animation:(unint64_t)a4
{
  v18 = self;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  if (a3 && v16 != 3)
  {
    v5 = [(BuddyPasscodeBaseViewController *)v18 footerButton];
    [(UIButton *)v5 setHidden:1];
  }

  else
  {
    v4 = [(BuddyPasscodeBaseViewController *)v18 footerButton];
    [(UIButton *)v4 setHidden:0];
  }

  location = [(BuddyPasscodeBaseViewController *)v18 _passcodeInputViewForState:v16 updateDetailText:0];
  [(BuddyPasscodeBaseViewController *)v18 _prepareTransitionForPasscodeInput:location];
  v13 = [(BuddyPasscodeBaseViewController *)v18 _onboardingPasscodeAnimationForBFF:v15];
  v6 = [(BuddyPasscodeBaseViewController *)v18 instructionsForState:v16];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_1002351E0;
  v11 = &unk_10032F620;
  v12 = v18;
  [(BuddyPasscodeBaseViewController *)v18 animateDetailText:v6 animationType:v13 heightDifference:&v7];

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
}

- (void)_prepareTransitionForPasscodeInput:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyPasscodeBaseViewController *)v5 transitionToPasscodeInput:location[0] delegate:v5];
  v3 = [(BuddyPasscodeBaseViewController *)v5 contentView];
  [v3 layoutIfNeeded];

  objc_storeStrong(location, 0);
}

- (unint64_t)_onboardingPasscodeAnimationForBFF:(unint64_t)a3
{
  if (a3 == 1)
  {
    return 0;
  }

  if (a3 == 2)
  {
    return 1;
  }

  return 2;
}

- (void)passcodeManager:(id)a3 didTransitionFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = a4;
  v14 = a5;
  v7 = [(BuddyPasscodeBaseViewController *)v17 headerView];
  v8 = [(BuddyPasscodeBaseViewController *)v17 titleForState:v14];
  [v7 setTitle:v8];

  if (v14)
  {
    switch(v14)
    {
      case 2uLL:
      case 3uLL:
        if (v14 == 2)
        {
          v10 = 2;
        }

        else
        {
          v10 = 1;
        }

        [(BuddyPasscodeBaseViewController *)v17 _animatedPasscodeViewTransitionToState:v14 animation:v10, v10];
        break;
      case 1uLL:
        [(BuddyPasscodeBaseViewController *)v17 _showWeakWarningAlert];
        break;
      case 4uLL:
        v11 = v17;
        v12 = [(BuddyPasscodeBaseViewController *)v17 passcodeManager];
        v13 = [(BFFPasscodeCreationManager *)v12 passcode];
        [(BuddyPasscodeBaseViewController *)v11 _finishedWithPasscode:v13];

        break;
    }
  }

  else
  {
    v9 = [(BuddyPasscodeBaseViewController *)v17 _currentPasscodeInputView];
    [v9 setPasscode:&stru_10032F900];

    if (v15 != 1)
    {
      [(BuddyPasscodeBaseViewController *)v17 _animatedPasscodeViewTransitionToState:0 animation:3];
    }
  }

  [(BuddyPasscodeBaseViewController *)v17 _updateNextButton];
  objc_storeStrong(location, 0);
}

- (void)passcodeManagerWillSetPasscode:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:v7 identifier:@"SETUP_PASSCODE_VIEW_CONTROLLER"];
  [(BuddyPasscodeBaseViewController *)v7 setShowingSpinner:1];
  v3 = [(BuddyPasscodeBaseViewController *)v7 passcodeCreationDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(BuddyPasscodeBaseViewController *)v7 passcodeCreationDelegate];
    [(BuddyPasscodeBaseViewControllerDelegate *)v5 passcodeViewControllerWillSetPasscode:v7];
  }

  objc_storeStrong(location, 0);
}

- (void)passcodeManager:(id)a3 didSetPasscodeWithSuccess:(BOOL)a4 error:(id)a5
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = a4;
  v12 = 0;
  objc_storeStrong(&v12, a5);
  if ([(BuddyPasscodeBaseViewController *)v15 showingSpinner])
  {
    [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"SETUP_PASSCODE_VIEW_CONTROLLER"];
    [(BuddyPasscodeBaseViewController *)v15 setShowingSpinner:0];
  }

  if (v13)
  {
    v7 = [(BuddyPasscodeBaseViewController *)v15 passcodeCreationDelegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(BuddyPasscodeBaseViewController *)v15 passcodeCreationDelegate];
      v10 = v15;
      v11 = [location[0] passcode];
      [(BuddyPasscodeBaseViewControllerDelegate *)v9 passcodeViewController:v10 didSetPasscode:v11];
    }
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)tappedFooterButton:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_footerButtonIsSkip)
  {
    [(BuddyPasscodeBaseViewController *)v4 _showSkipPasscodeAlert];
  }

  else
  {
    [(BuddyPasscodeBaseViewController *)v4 _showPasscodeOptionsSheet];
  }

  objc_storeStrong(location, 0);
}

- (void)clear
{
  v2 = [(BuddyPasscodeBaseViewController *)self _currentPasscodeInputView];
  [v2 disable];

  v3 = [(BuddyPasscodeBaseViewController *)self _currentPasscodeInputView];
  [v3 setDelegate:0];

  v4 = [(BuddyPasscodeBaseViewController *)self _currentPasscodeInputView];
  [v4 removeFromSuperview];

  v5 = [(BuddyPasscodeBaseViewController *)self passcodeManager];
  [(BFFPasscodeCreationManager *)v5 setDelegate:0];

  [(BuddyPasscodeBaseViewController *)self setPasscodeManager:0];
}

- (void)_finishedWithPasscode:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyPasscodeBaseViewController *)v5 passcodeCreationDelegate];
  [(BuddyPasscodeBaseViewControllerDelegate *)v3 passcodeViewController:v5 didFinishWithPasscodeCreation:location[0]];

  objc_storeStrong(location, 0);
}

- (id)titleForState:(unint64_t)a3
{
  v21 = self;
  location[2] = a2;
  location[1] = a3;
  location[0] = 0;
  v3 = [(BuddyPasscodeBaseViewController *)self flowItemDispositionProvider];
  v18 = 0;
  v16 = 0;
  v4 = 0;
  if (v3)
  {
    v19 = [(BuddyPasscodeBaseViewController *)v21 flowItemDispositionProvider];
    v18 = 1;
    v4 = 0;
    if ([(BuddyFlowItemDispositionProvider *)v19 dispositions]== 8)
    {
      v17 = [(BuddyPasscodeBaseViewController *)v21 userFirstName];
      v16 = 1;
      v4 = v17 != 0;
    }
  }

  if (v16)
  {
  }

  if (v18)
  {
  }

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  if (v4)
  {
    v6 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"CREATE_PASSCODE_FOR_CHILD_WITH_NAME"];
    v7 = [(NSBundle *)v5 localizedStringForKey:v6 value:&stru_10032F900 table:@"Localizable"];
    v8 = [(BuddyPasscodeBaseViewController *)v21 userFirstName];
    v9 = [NSString localizedStringWithFormat:v7, v8];
    v10 = location[0];
    location[0] = v9;
  }

  else
  {
    v11 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"CREATE_PASSCODE"];
    v12 = [(NSBundle *)v5 localizedStringForKey:v11 value:&stru_10032F900 table:@"Localizable"];
    v13 = location[0];
    location[0] = v12;
  }

  v14 = location[0];
  objc_storeStrong(location, 0);
  return v14;
}

- (id)instructionsForState:(unint64_t)a3
{
  v11 = self;
  location[2] = a2;
  location[1] = a3;
  location[0] = 0;
  switch(a3)
  {
    case 0uLL:
      v3 = [(BuddyPasscodeBaseViewController *)v11 passcodeManager];
      v4 = [(BFFPasscodeCreationManager *)v3 constraintInstructions];
      v5 = location[0];
      location[0] = v4;

      if (location[0] && [location[0] length])
      {
        v12 = location[0];
      }

      else
      {
        v12 = [(BuddyPasscodeBaseViewController *)v11 _firstEntryInstructions];
      }

      break;
    case 1uLL:
      goto LABEL_13;
    case 2uLL:
      v6 = [NSBundle bundleForClass:objc_opt_class()];
      v12 = [(NSBundle *)v6 localizedStringForKey:@"RE_ENTER_PASSCODE" value:&stru_10032F900 table:@"Localizable"];

      break;
    case 3uLL:
      v7 = [NSBundle bundleForClass:objc_opt_class()];
      v12 = [(NSBundle *)v7 localizedStringForKey:@"PASSCODES_FAILED_TO_MATCH" value:&stru_10032F900 table:@"Localizable"];

      break;
    case 4uLL:
LABEL_13:
      v12 = &stru_10032F900;
      break;
  }

  objc_storeStrong(location, 0);
  v8 = v12;

  return v8;
}

- (id)_firstEntryInstructions
{
  v22 = self;
  v21[1] = a2;
  v21[0] = 0;
  v2 = [(BuddyPasscodeBaseViewController *)self passcodeCreationDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [(BuddyPasscodeBaseViewController *)v22 passcodeCreationDelegate];
    v5 = [(BuddyPasscodeBaseViewControllerDelegate *)v4 passcodeViewControllerCustomFirstEntryInstructions:v22];
    v6 = v21[0];
    v21[0] = v5;
  }

  if (!v21[0])
  {
    location = @"PASSCODE_DESCRIPTION";
    v7 = [(BuddyPasscodeBaseViewController *)v22 flowItemDispositionProvider];
    v18 = 0;
    v8 = 0;
    if (v7)
    {
      v19 = [(BuddyPasscodeBaseViewController *)v22 flowItemDispositionProvider];
      v18 = 1;
      v8 = [(BuddyFlowItemDispositionProvider *)v19 dispositions]== 8;
    }

    if (v18)
    {
    }

    if (v8)
    {
      v9 = [(BuddyPasscodeBaseViewController *)v22 flowItemDispositionProvider];
      v10 = [BuddyLocalizationUtilities dispositionSpecificLocalizedStringKeyForKey:location disposition:[(BuddyFlowItemDispositionProvider *)v9 dispositions]];
      v11 = location;
      location = v10;
    }

    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [UIDevice modelSpecificLocalizedStringKeyForKey:location];
    v14 = [(NSBundle *)v12 localizedStringForKey:v13 value:&stru_10032F900 table:@"Localizable"];
    v15 = v21[0];
    v21[0] = v14;

    objc_storeStrong(&location, 0);
  }

  v16 = v21[0];
  objc_storeStrong(v21, 0);
  return v16;
}

- (void)configurePasscodeTypeUsingAnimations:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  v3 = [(BuddyPasscodeBaseViewController *)self passcodeManager];
  v4 = [(BFFPasscodeCreationManager *)v3 isSimplePasscodeEntry];

  if (v4)
  {
    v5 = [(BuddyPasscodeBaseViewController *)v13 navigationItem];
    [v5 setRightBarButtonItem:0 animated:v11];
  }

  else
  {
    v6 = [UIBarButtonItem alloc];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [(NSBundle *)v7 localizedStringForKey:@"NEXT" value:&stru_10032F900 table:@"Localizable"];
    v10 = [v6 initWithTitle:v8 style:2 target:v13 action:"nextButtonPressed"];

    v9 = [(BuddyPasscodeBaseViewController *)v13 navigationItem];
    [v9 setRightBarButtonItem:v10 animated:v11];

    [(BuddyPasscodeBaseViewController *)v13 _updateNextButton];
    objc_storeStrong(&v10, 0);
  }
}

- (void)_showWeakWarningAlert
{
  v27 = self;
  v26[1] = a2;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"WEAK_PASSCODE_DETAILS"];
  v26[0] = [(NSBundle *)v2 localizedStringForKey:v3 value:&stru_10032F900 table:@"Localizable"];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [(NSBundle *)v4 localizedStringForKey:@"WEAK_PASSCODE" value:&stru_10032F900 table:@"Localizable"];
  location = [UIAlertController alertControllerWithTitle:v5 message:v26[0] preferredStyle:1];

  v6 = location;
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [(NSBundle *)v7 localizedStringForKey:@"CHANGE_PASSCODE" value:&stru_10032F900 table:@"Localizable"];
  v19 = _NSConcreteStackBlock;
  v20 = -1073741824;
  v21 = 0;
  v22 = sub_100236658;
  v23 = &unk_10032B598;
  v24 = v27;
  v9 = [UIAlertAction actionWithTitle:v8 style:1 handler:&v19];
  [v6 addAction:v9];

  v10 = location;
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [(NSBundle *)v11 localizedStringForKey:@"USE_WEAK_PASSCODE_ANYWAY" value:&stru_10032F900 table:@"Localizable"];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1002366C8;
  v17 = &unk_10032B598;
  v18 = v27;
  v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:&v14];
  [v10 addAction:{v13, v14, v15, v16, v17}];

  [(BuddyPasscodeBaseViewController *)v27 presentViewController:location animated:1 completion:0];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v26, 0);
}

- (void)_showSkipPasscodeAlert
{
  v21 = self;
  v20[1] = a2;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"SKIP_PASSCODE_DESCRIPTION"];
  v20[0] = [(NSBundle *)v2 localizedStringForKey:v3 value:&stru_10032F900 table:@"Localizable"];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [(NSBundle *)v4 localizedStringForKey:@"SKIP_PASSCODE" value:&stru_10032F900 table:@"Localizable"];
  location = [UIAlertController alertControllerWithTitle:v5 message:v20[0] preferredStyle:1];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [(NSBundle *)v6 localizedStringForKey:@"SKIP_OPTION_CREATE_PASSCODE" value:&stru_10032F900 table:@"Localizable"];
  v8 = [UIAlertAction actionWithTitle:v7 style:1 handler:0];
  [location addAction:v8];

  v9 = location;
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [(NSBundle *)v10 localizedStringForKey:@"SKIP_OPTION_DONT_USE_PASSCODE" value:&stru_10032F900 table:@"Localizable"];
  v13 = _NSConcreteStackBlock;
  v14 = -1073741824;
  v15 = 0;
  v16 = sub_100236B20;
  v17 = &unk_10032B598;
  v18 = v21;
  v12 = [UIAlertAction actionWithTitle:v11 style:0 handler:&v13];
  [v9 addAction:v12];

  [(BuddyPasscodeBaseViewController *)v21 presentViewController:location animated:1 completion:0];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v20, 0);
}

- (void)_commitPasscodeEntryTypeChange
{
  [(BuddyPasscodeBaseViewController *)self configurePasscodeTypeUsingAnimations:1, a2];
  v2 = [(BuddyPasscodeBaseViewController *)self passcodeManager];
  [(BFFPasscodeCreationManager *)v2 setPasscodeState:0];
}

- (id)passcodeOptionAlertController
{
  v75 = self;
  v74 = a2;
  v73 = 0;
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 minimumNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:&v73];

  v72 = v3;
  location = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
  v4 = [(BuddyPasscodeBaseViewController *)v75 passcodeManager];
  LOBYTE(v3) = [(BFFPasscodeCreationManager *)v4 isNumericPasscodeEntry];

  if (v3)
  {
    v5 = location;
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [(NSBundle *)v6 localizedStringForKey:@"CUSTOM_ALPHANUMERIC_CODE" value:&stru_10032F900 table:@"Localizable"];
    v65 = _NSConcreteStackBlock;
    v66 = -1073741824;
    v67 = 0;
    v68 = sub_1002374F4;
    v69 = &unk_10032B598;
    v70 = v75;
    v8 = [UIAlertAction actionWithTitle:v7 style:0 handler:&v65];
    [v5 addAction:v8];

    objc_storeStrong(&v70, 0);
  }

  v63 = 0;
  v61 = 0;
  if (!v72 || (v9 = 0, v72 == 1))
  {
    v64 = [(BuddyPasscodeBaseViewController *)v75 passcodeManager];
    v63 = 1;
    v9 = 1;
    if (([(BFFPasscodeCreationManager *)v64 isNumericPasscodeEntry]& 1) != 0)
    {
      v62 = [(BuddyPasscodeBaseViewController *)v75 passcodeManager];
      v61 = 1;
      v9 = [(BFFPasscodeCreationManager *)v62 simplePasscodeEntryLength]> 0;
    }
  }

  if (v61)
  {
  }

  if (v63)
  {
  }

  if (v9)
  {
    v10 = location;
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [(NSBundle *)v11 localizedStringForKey:@"CUSTOM_NUMERIC_CODE" value:&stru_10032F900 table:@"Localizable"];
    v55 = _NSConcreteStackBlock;
    v56 = -1073741824;
    v57 = 0;
    v58 = sub_100237594;
    v59 = &unk_10032B598;
    v60 = v75;
    v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:&v55];
    [v10 addAction:v13];

    objc_storeStrong(&v60, 0);
  }

  if (!v72)
  {
    v14 = [(BuddyPasscodeBaseViewController *)v75 passcodeManager];
    v15 = [(BFFPasscodeCreationManager *)v14 simplePasscodeEntryLength];

    if (v15 != 6)
    {
      v16 = location;
      v17 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = [(NSBundle *)v17 localizedStringForKey:@"6_DIGIT_CODE" value:&stru_10032F900 table:@"Localizable"];
      v49 = _NSConcreteStackBlock;
      v50 = -1073741824;
      v51 = 0;
      v52 = sub_100237638;
      v53 = &unk_10032B598;
      v54 = v75;
      v19 = [UIAlertAction actionWithTitle:v18 style:0 handler:&v49];
      [v16 addAction:v19];

      objc_storeStrong(&v54, 0);
    }

    v47 = 0;
    v20 = 0;
    if (!v73)
    {
      v48 = [(BuddyPasscodeBaseViewController *)v75 passcodeManager];
      v47 = 1;
      v20 = [v48 simplePasscodeEntryLength] != 4;
    }

    if (v47)
    {
    }

    if (v20)
    {
      v21 = location;
      v22 = [NSBundle bundleForClass:objc_opt_class()];
      v23 = [(NSBundle *)v22 localizedStringForKey:@"4_DIGIT_CODE" value:&stru_10032F900 table:@"Localizable"];
      v41 = _NSConcreteStackBlock;
      v42 = -1073741824;
      v43 = 0;
      v44 = sub_1002376DC;
      v45 = &unk_10032B598;
      v46 = v75;
      v24 = [UIAlertAction actionWithTitle:v23 style:0 handler:&v41];
      [v21 addAction:v24];

      objc_storeStrong(&v46, 0);
    }
  }

  if ([(BuddyPasscodeBaseViewController *)v75 _allowSkip])
  {
    v25 = location;
    v26 = [NSBundle bundleForClass:objc_opt_class()];
    v27 = [(NSBundle *)v26 localizedStringForKey:@"DO_NOT_ADD_PASSCODE" value:&stru_10032F900 table:@"Localizable"];
    v35 = _NSConcreteStackBlock;
    v36 = -1073741824;
    v37 = 0;
    v38 = sub_100237780;
    v39 = &unk_10032B598;
    v40 = v75;
    v28 = [UIAlertAction actionWithTitle:v27 style:0 handler:&v35];
    [v25 addAction:v28];

    objc_storeStrong(&v40, 0);
  }

  v29 = location;
  v30 = [NSBundle bundleForClass:objc_opt_class()];
  v31 = [(NSBundle *)v30 localizedStringForKey:@"CANCEL" value:&stru_10032F900 table:@"Localizable"];
  v32 = [UIAlertAction actionWithTitle:v31 style:1 handler:0];
  [v29 addAction:v32];

  v33 = location;
  objc_storeStrong(&location, 0);
  return v33;
}

- (void)_showPasscodeOptionsSheet
{
  v9 = self;
  v8[1] = a2;
  v8[0] = [(BuddyPasscodeBaseViewController *)self passcodeOptionAlertController];
  if (BFFIsiPad())
  {
    [v8[0] setModalPresentationStyle:7];
    v7 = [v8[0] popoverPresentationController];
    location = [(BuddyPasscodeBaseViewController *)v9 footerButton];
    [v7 setPermittedArrowDirections:2];
    [v7 setSourceView:location];
    [location bounds];
    [v7 setSourceRect:{v2, v3, v4, v5}];
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v7, 0);
  }

  [(BuddyPasscodeBaseViewController *)v9 presentViewController:v8[0] animated:1 completion:0];
  objc_storeStrong(v8, 0);
}

- (id)_currentPasscodeInputView
{
  v2 = [(BuddyPasscodeBaseViewController *)self contentView:a2];
  v3 = [v2 subviews];
  v4 = [NSPredicate predicateWithBlock:&stru_10032F660];
  v5 = [v3 filteredArrayUsingPredicate:v4];
  v6 = [v5 firstObject];

  return v6;
}

- (BuddyPasscodeBaseViewControllerDelegate)passcodeCreationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_passcodeCreationDelegate);

  return WeakRetained;
}

@end