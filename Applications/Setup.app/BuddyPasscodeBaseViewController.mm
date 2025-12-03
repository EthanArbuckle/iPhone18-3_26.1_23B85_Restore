@interface BuddyPasscodeBaseViewController
+ (BOOL)allowSkip;
+ (double)_passcodeInputVerticalPaddingForOrientation:(int64_t)orientation;
- (BOOL)_allowSkip;
- (BuddyPasscodeBaseViewController)init;
- (BuddyPasscodeBaseViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (BuddyPasscodeBaseViewControllerDelegate)passcodeCreationDelegate;
- (id)_currentPasscodeInputView;
- (id)_firstEntryInstructions;
- (id)_passcodeInputViewForState:(unint64_t)state updateDetailText:(BOOL)text;
- (id)instructionsForState:(unint64_t)state;
- (id)passcodeInputView;
- (id)passcodeOptionAlertController;
- (id)titleForState:(unint64_t)state;
- (unint64_t)_onboardingPasscodeAnimationForBFF:(unint64_t)f;
- (void)_animatedPasscodeViewTransitionToState:(unint64_t)state animation:(unint64_t)animation;
- (void)_commitPasscodeEntryTypeChange;
- (void)_finishedWithPasscode:(id)passcode;
- (void)_prepareTransitionForPasscodeInput:(id)input;
- (void)_setupFirstEntry;
- (void)_showPasscodeOptionsSheet;
- (void)_showSkipPasscodeAlert;
- (void)_showWeakWarningAlert;
- (void)_updateNextButton;
- (void)_updateNextButtonForPasscode:(id)passcode;
- (void)clear;
- (void)configurePasscodeTypeUsingAnimations:(BOOL)animations;
- (void)dealloc;
- (void)nextButtonPressed;
- (void)passcodeInput:(id)input enteredPasscode:(id)passcode;
- (void)passcodeInput:(id)input willChangeContents:(id)contents;
- (void)passcodeManager:(id)manager didSetPasscodeWithSuccess:(BOOL)success error:(id)error;
- (void)passcodeManager:(id)manager didTransitionFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)passcodeManagerWillSetPasscode:(id)passcode;
- (void)tappedFooterButton:(id)button;
- (void)transitionToPasscodeInput:(id)input delegate:(id)delegate;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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

- (BuddyPasscodeBaseViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v14 = 0;
  objc_storeStrong(&v14, text);
  v13 = 0;
  objc_storeStrong(&v13, icon);
  v7 = selfCopy;
  selfCopy = 0;
  v12.receiver = v7;
  v12.super_class = BuddyPasscodeBaseViewController;
  selfCopy = [(BuddyPasscodeBaseViewController *)&v12 initWithTitle:&stru_10032F900 detailText:@" " icon:0];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v8 = objc_alloc_init(BuddyFeatureFlags);
    v9 = *(selfCopy + 1);
    *(selfCopy + 1) = v8;

    *(selfCopy + 16) = 1;
  }

  v10 = selfCopy;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
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
  selfCopy = self;
  v4 = a2;
  passcodeManager = [(BuddyPasscodeBaseViewController *)self passcodeManager];
  [(BFFPasscodeCreationManager *)passcodeManager setDelegate:0];

  v3.receiver = selfCopy;
  v3.super_class = BuddyPasscodeBaseViewController;
  [(BuddyPasscodeBaseViewController *)&v3 dealloc];
}

- (void)_setupFirstEntry
{
  selfCopy = self;
  v26 = a2;
  v3 = +[BFFPasscodeCreationManager sharedPasscodeManager];
  [(BuddyPasscodeBaseViewController *)self setPasscodeManager:v3];

  passcodeManager = [(BuddyPasscodeBaseViewController *)selfCopy passcodeManager];
  [(BFFPasscodeCreationManager *)passcodeManager reset];

  passcodeManager2 = [(BuddyPasscodeBaseViewController *)selfCopy passcodeManager];
  [(BFFPasscodeCreationManager *)passcodeManager2 setDelegate:selfCopy];

  v25 = 0;
  v6 = +[MCProfileConnection sharedConnection];
  LODWORD(v3) = [v6 minimumNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:&v25];

  *&v24[1] = v3;
  if (v3)
  {
    passcodeManager3 = [(BuddyPasscodeBaseViewController *)selfCopy passcodeManager];
    [(BFFPasscodeCreationManager *)passcodeManager3 setNumericPasscodeEntry:0];

    passcodeManager4 = [(BuddyPasscodeBaseViewController *)selfCopy passcodeManager];
    [(BFFPasscodeCreationManager *)passcodeManager4 setSimplePasscodeEntryLength:0];
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
    passcodeManager5 = [(BuddyPasscodeBaseViewController *)selfCopy passcodeManager];
    v11 = passcodeManager5;
    if (v22)
    {
      v12 = 6;
    }

    else
    {
      v12 = 4;
    }

    [(BFFPasscodeCreationManager *)passcodeManager5 setSimplePasscodeEntryLength:v12];

    passcodeManager6 = [(BuddyPasscodeBaseViewController *)selfCopy passcodeManager];
    [(BFFPasscodeCreationManager *)passcodeManager6 setNumericPasscodeEntry:1];
  }

  [(BuddyPasscodeBaseViewController *)selfCopy configurePasscodeTypeUsingAnimations:0];
  passcodeManager7 = [(BuddyPasscodeBaseViewController *)selfCopy passcodeManager];
  passcodeState = [(BFFPasscodeCreationManager *)passcodeManager7 passcodeState];

  v21 = passcodeState;
  headerView = [(BuddyPasscodeBaseViewController *)selfCopy headerView];
  v19 = [(BuddyPasscodeBaseViewController *)selfCopy titleForState:passcodeState];
  [headerView setTitle:v19];

  location = [(BuddyPasscodeBaseViewController *)selfCopy _passcodeInputViewForState:v21 updateDetailText:1];
  [(BuddyPasscodeBaseViewController *)selfCopy transitionToPasscodeInput:location delegate:selfCopy];
  objc_storeStrong(&location, 0);
}

- (void)transitionToPasscodeInput:(id)input delegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, input);
  v47 = 0;
  objc_storeStrong(&v47, delegate);
  _currentPasscodeInputView = [(BuddyPasscodeBaseViewController *)selfCopy _currentPasscodeInputView];
  v6 = 1;
  if (([_currentPasscodeInputView isEqual:location[0]] & 1) == 0)
  {
    v6 = location[0] == 0;
  }

  if (v6)
  {
    v46 = 1;
  }

  else
  {
    _currentPasscodeInputView2 = [(BuddyPasscodeBaseViewController *)selfCopy _currentPasscodeInputView];
    [_currentPasscodeInputView2 disable];
    [_currentPasscodeInputView2 setDelegate:0];
    [location[0] setTranslatesAutoresizingMaskIntoConstraints:0];
    [location[0] setDelegate:selfCopy];
    contentView = [(BuddyPasscodeBaseViewController *)selfCopy contentView];
    [contentView addSubview:location[0]];

    if ([_currentPasscodeInputView2 isFirstResponder])
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

    [_currentPasscodeInputView2 removeFromSuperview];
    v8 = objc_opt_class();
    v9 = +[UIApplication sharedApplication];
    [v8 _passcodeInputVerticalPaddingForOrientation:{-[UIApplication activeInterfaceOrientation](v9, "activeInterfaceOrientation")}];
    v11 = v10;

    v38 = v11;
    topAnchor = [location[0] topAnchor];
    contentView2 = [(BuddyPasscodeBaseViewController *)selfCopy contentView];
    topAnchor2 = [contentView2 topAnchor];
    v37 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v11];

    contentViewTopConstraint = [(BuddyPasscodeBaseViewController *)selfCopy contentViewTopConstraint];
    if (contentViewTopConstraint)
    {
      contentViewTopConstraint2 = [(BuddyPasscodeBaseViewController *)selfCopy contentViewTopConstraint];
      [(NSLayoutConstraint *)contentViewTopConstraint2 constant];
      [v37 setConstant:?];
    }

    [(BuddyPasscodeBaseViewController *)selfCopy setContentViewTopConstraint:v37];
    footerButton = [(BuddyPasscodeBaseViewController *)selfCopy footerButton];
    topAnchor3 = [(UIButton *)footerButton topAnchor];
    bottomAnchor = [location[0] bottomAnchor];
    v20 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:v38];
    [(BuddyPasscodeBaseViewController *)selfCopy setPasscodeInputViewBottomConstraint:v20];

    leadingAnchor = [location[0] leadingAnchor];
    contentView3 = [(BuddyPasscodeBaseViewController *)selfCopy contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v24 setActive:1];

    trailingAnchor = [location[0] trailingAnchor];
    contentView4 = [(BuddyPasscodeBaseViewController *)selfCopy contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v28 setActive:1];

    contentViewTopConstraint3 = [(BuddyPasscodeBaseViewController *)selfCopy contentViewTopConstraint];
    v51[0] = contentViewTopConstraint3;
    passcodeInputViewBottomConstraint = [(BuddyPasscodeBaseViewController *)selfCopy passcodeInputViewBottomConstraint];
    v51[1] = passcodeInputViewBottomConstraint;
    v31 = [NSArray arrayWithObjects:v51 count:2];
    [NSLayoutConstraint activateConstraints:v31];

    if (([(BuddyFeatureFlags *)selfCopy->_featureFlags isSolariumEnabled]& 1) == 0)
    {
      centerXAnchor = [location[0] centerXAnchor];
      contentView5 = [(BuddyPasscodeBaseViewController *)selfCopy contentView];
      centerXAnchor2 = [contentView5 centerXAnchor];
      v35 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v50 = v35;
      v36 = [NSArray arrayWithObjects:&v50 count:1];
      [NSLayoutConstraint activateConstraints:v36];
    }

    objc_storeStrong(&v37, 0);
    objc_storeStrong(&_currentPasscodeInputView2, 0);
    v46 = 0;
  }

  objc_storeStrong(&v47, 0);
  objc_storeStrong(location, 0);
}

+ (double)_passcodeInputVerticalPaddingForOrientation:(int64_t)orientation
{
  v8 = 0.0;
  v3 = +[BYDevice currentDevice];
  type = [v3 type];

  if (type == 1)
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
  selfCopy = self;
  v64 = a2;
  v63.receiver = self;
  v63.super_class = BuddyPasscodeBaseViewController;
  [(BuddyPasscodeBaseViewController *)&v63 viewDidLoad];
  flowItemDispositionProvider = [(BuddyPasscodeBaseViewController *)selfCopy flowItemDispositionProvider];
  v3 = [(BuddyFlowItemDispositionProvider *)flowItemDispositionProvider dispositions]& 8;

  if (v3 == 8)
  {
    v4 = +[UIColor systemBlueColor];
    location = [UIImageSymbolConfiguration configurationWithHierarchicalColor:v4];

    headerView = [(BuddyPasscodeBaseViewController *)selfCopy headerView];
    v6 = [UIImage systemImageNamed:@"figure.child.and.lock.fill" withConfiguration:location];
    [headerView setIcon:v6 accessibilityLabel:0];

    objc_storeStrong(&location, 0);
  }

  else if ([(BuddyPasscodeBaseViewController *)selfCopy includeHeaderAnimation])
  {
    v7 = [[OBAnimationState alloc] initWithStateName:@"State 1" darkStateName:@"Dark 1" transitionDuration:0.01 transitionSpeed:1.0];
    v68[0] = v7;
    v8 = [[OBAnimationState alloc] initWithStateName:@"State 2" darkStateName:@"Dark 2" transitionDuration:1.0 transitionSpeed:1.0];
    v68[1] = v8;
    v61 = [NSArray arrayWithObjects:v68 count:2];

    v9 = [(BuddyPasscodeBaseViewController *)selfCopy buddy_animationController:@"Lock" animatedStates:v61 startAtFirstState:1];
    [(BuddyPasscodeBaseViewController *)selfCopy setAnimationController:v9];

    objc_storeStrong(&v61, 0);
  }

  v10 = [BuddyMultilineButton buttonWithType:1];
  [(BuddyPasscodeBaseViewController *)selfCopy setFooterButton:v10];

  footerButton = [(BuddyPasscodeBaseViewController *)selfCopy footerButton];
  [(UIButton *)footerButton setTranslatesAutoresizingMaskIntoConstraints:0];

  footerButton2 = [(BuddyPasscodeBaseViewController *)selfCopy footerButton];
  titleLabel = [(UIButton *)footerButton2 titleLabel];
  v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)titleLabel setFont:v14];

  footerButton3 = [(BuddyPasscodeBaseViewController *)selfCopy footerButton];
  titleLabel2 = [(UIButton *)footerButton3 titleLabel];
  [(UILabel *)titleLabel2 setNumberOfLines:0];

  footerButton4 = [(BuddyPasscodeBaseViewController *)selfCopy footerButton];
  [(UIButton *)footerButton4 addTarget:selfCopy action:"tappedFooterButton:" forEvents:64];

  contentView = [(BuddyPasscodeBaseViewController *)selfCopy contentView];
  footerButton5 = [(BuddyPasscodeBaseViewController *)selfCopy footerButton];
  [contentView addSubview:footerButton5];

  if (([(BuddyFeatureFlags *)selfCopy->_featureFlags isSolariumEnabled]& 1) != 0)
  {
    footerButton6 = [(BuddyPasscodeBaseViewController *)selfCopy footerButton];
    LODWORD(v21) = 1148846080;
    [(UIButton *)footerButton6 setContentHuggingPriority:0 forAxis:v21];

    footerButton7 = [(BuddyPasscodeBaseViewController *)selfCopy footerButton];
    leadingAnchor = [(UIButton *)footerButton7 leadingAnchor];
    contentView2 = [(BuddyPasscodeBaseViewController *)selfCopy contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v52 = [leadingAnchor constraintEqualToAnchor:?];
    v67[0] = v52;
    footerButton8 = [(BuddyPasscodeBaseViewController *)selfCopy footerButton];
    trailingAnchor = [(UIButton *)footerButton8 trailingAnchor];
    contentView3 = [(BuddyPasscodeBaseViewController *)selfCopy contentView];
    trailingAnchor2 = [contentView3 trailingAnchor];
    v25 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    v67[1] = v25;
    footerButton9 = [(BuddyPasscodeBaseViewController *)selfCopy footerButton];
    bottomAnchor = [(UIButton *)footerButton9 bottomAnchor];
    contentView4 = [(BuddyPasscodeBaseViewController *)selfCopy contentView];
    bottomAnchor2 = [contentView4 bottomAnchor];
    v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v67[2] = v30;
    v31 = [NSArray arrayWithObjects:v67 count:3];
    [NSLayoutConstraint activateConstraints:v31];

    footerButton10 = [(BuddyPasscodeBaseViewController *)selfCopy footerButton];
    titleLabel3 = [(UIButton *)footerButton10 titleLabel];
    [(UILabel *)titleLabel3 setTextAlignment:4];
  }

  else
  {
    v57 = sub_100234030();
    v58 = v34;
    v59 = v35;
    v60 = v36;
    footerButton11 = [(BuddyPasscodeBaseViewController *)selfCopy footerButton];
    [(UIButton *)footerButton11 setContentEdgeInsets:v57, v58, v59, v60];

    footerButton12 = [(BuddyPasscodeBaseViewController *)selfCopy footerButton];
    titleLabel4 = [(UIButton *)footerButton12 titleLabel];
    [(UILabel *)titleLabel4 setTextAlignment:1];

    footerButton13 = [(BuddyPasscodeBaseViewController *)selfCopy footerButton];
    widthAnchor = [(UIButton *)footerButton13 widthAnchor];
    contentView5 = [(BuddyPasscodeBaseViewController *)selfCopy contentView];
    widthAnchor2 = [contentView5 widthAnchor];
    v43 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v66[0] = v43;
    footerButton14 = [(BuddyPasscodeBaseViewController *)selfCopy footerButton];
    bottomAnchor3 = [(UIButton *)footerButton14 bottomAnchor];
    contentView6 = [(BuddyPasscodeBaseViewController *)selfCopy contentView];
    bottomAnchor4 = [contentView6 bottomAnchor];
    v48 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v66[1] = v48;
    v49 = [NSArray arrayWithObjects:v66 count:2];
    [NSLayoutConstraint activateConstraints:v49];
  }

  [(BuddyPasscodeBaseViewController *)selfCopy setExtendedLayoutIncludesOpaqueBars:1];
  [(BuddyPasscodeBaseViewController *)selfCopy _setupFirstEntry];
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v10 = a2;
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = BuddyPasscodeBaseViewController;
  [(BuddyPasscodeBaseViewController *)&v8 viewWillAppear:appear];
  _currentPasscodeInputView = [(BuddyPasscodeBaseViewController *)selfCopy _currentPasscodeInputView];
  presentedViewController = [(BuddyPasscodeBaseViewController *)selfCopy presentedViewController];
  v4 = presentedViewController == 0;

  if (v4)
  {
    [_currentPasscodeInputView becomeFirstResponder];
  }

  v5 = selfCopy;
  passcode = [_currentPasscodeInputView passcode];
  [(BuddyPasscodeBaseViewController *)v5 _updateNextButtonForPasscode:passcode];

  objc_storeStrong(&_currentPasscodeInputView, 0);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v13 = a2;
  appearCopy = appear;
  v11.receiver = self;
  v11.super_class = BuddyPasscodeBaseViewController;
  [(BuddyPasscodeBaseViewController *)&v11 viewDidAppear:appear];
  animationController = [(BuddyPasscodeBaseViewController *)selfCopy animationController];
  [(OBAnimationController *)animationController startAnimation];

  scrollView = [(BuddyPasscodeBaseViewController *)selfCopy scrollView];
  [scrollView contentSize];
  v6 = v5;
  view = [(BuddyPasscodeBaseViewController *)selfCopy view];
  [view frame];
  v9 = v8;

  if (v6 > v9)
  {
    scrollView2 = [(BuddyPasscodeBaseViewController *)selfCopy scrollView];
    [scrollView2 flashScrollIndicators];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v7 = a2;
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = BuddyPasscodeBaseViewController;
  [(BuddyPasscodeBaseViewController *)&v5 viewWillDisappear:disappear];
  _currentPasscodeInputView = [(BuddyPasscodeBaseViewController *)selfCopy _currentPasscodeInputView];
  [_currentPasscodeInputView resignFirstResponder];
  objc_storeStrong(&v4, 0);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v9 = a2;
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = BuddyPasscodeBaseViewController;
  [(BuddyPasscodeBaseViewController *)&v7 viewDidDisappear:disappear];
  if ([(BuddyPasscodeBaseViewController *)selfCopy showingSpinner])
  {
    [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"SETUP_PASSCODE_VIEW_CONTROLLER"];
    [(BuddyPasscodeBaseViewController *)selfCopy setShowingSpinner:0];
  }

  v3 = +[BFFPasscodeCreationManager sharedPasscodeManager];
  passcodeState = [v3 passcodeState];

  if (passcodeState == 4)
  {
    [(BuddyPasscodeBaseViewController *)selfCopy clear];
  }

  else
  {
    v5 = +[BFFPasscodeCreationManager sharedPasscodeManager];
    [v5 reset];
  }

  _currentPasscodeInputView = [(BuddyPasscodeBaseViewController *)selfCopy _currentPasscodeInputView];
  [_currentPasscodeInputView resignFirstResponder];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  sizeCopy = size;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coordinator);
  v11.receiver = selfCopy;
  v11.super_class = BuddyPasscodeBaseViewController;
  [(BuddyPasscodeBaseViewController *)&v11 viewWillTransitionToSize:location[0] withTransitionCoordinator:sizeCopy.width, sizeCopy.height];
  v4 = location[0];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100234544;
  v9 = &unk_10032D9E8;
  v10 = selfCopy;
  [v4 animateAlongsideTransition:&v5 completion:0];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)nextButtonPressed
{
  selfCopy = self;
  location[1] = a2;
  _currentPasscodeInputView = [(BuddyPasscodeBaseViewController *)self _currentPasscodeInputView];
  location[0] = [_currentPasscodeInputView passcode];

  passcodeManager = [(BuddyPasscodeBaseViewController *)selfCopy passcodeManager];
  [(BFFPasscodeCreationManager *)passcodeManager transitionToNextPasscodeStateForInput:location[0]];

  objc_storeStrong(location, 0);
}

- (void)_updateNextButton
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(BuddyPasscodeBaseViewController *)self _currentPasscodeInputView];
  passcode = [location[0] passcode];
  [(BuddyPasscodeBaseViewController *)selfCopy _updateNextButtonForPasscode:passcode];

  objc_storeStrong(location, 0);
}

- (void)_updateNextButtonForPasscode:(id)passcode
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, passcode);
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
  navigationItem = [(BuddyPasscodeBaseViewController *)selfCopy navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v9 & 1];

  v6 = +[UIKeyboard activeKeyboard];
  [v6 setReturnKeyEnabled:v9 & 1];

  objc_storeStrong(location, 0);
}

- (BOOL)_allowSkip
{
  passcodeCreationDelegate = [(BuddyPasscodeBaseViewController *)self passcodeCreationDelegate];
  v3 = objc_opt_respondsToSelector();

  if ((v3 & 1) == 0)
  {
    return +[BuddyPasscodeBaseViewController allowSkip];
  }

  passcodeCreationDelegate2 = [(BuddyPasscodeBaseViewController *)self passcodeCreationDelegate];
  v6 = [(BuddyPasscodeBaseViewControllerDelegate *)passcodeCreationDelegate2 passcodeViewControllerAllowSkip:self]& 1;

  return v6;
}

- (void)passcodeInput:(id)input willChangeContents:(id)contents
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, input);
  v5 = 0;
  objc_storeStrong(&v5, contents);
  [(BuddyPasscodeBaseViewController *)selfCopy _updateNextButtonForPasscode:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)passcodeInput:(id)input enteredPasscode:(id)passcode
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, input);
  v16 = 0;
  objc_storeStrong(&v16, passcode);
  passcodeField = [location[0] passcodeField];
  [passcodeField forceDisplayIfNeeded];

  v15 = 0x3FB374BC6A7EF9DBLL;
  v14 = dispatch_time(0, (0.076 * 1000000000.0));
  v6 = &_dispatch_main_q;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_100234BD8;
  v11 = &unk_10032B838;
  v12 = selfCopy;
  v13 = v16;
  dispatch_after(v14, v6, &v7);

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (id)passcodeInputView
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  passcodeManager = [(BuddyPasscodeBaseViewController *)self passcodeManager];
  isSimplePasscodeEntry = [(BFFPasscodeCreationManager *)passcodeManager isSimplePasscodeEntry];

  if (isSimplePasscodeEntry)
  {
    v4 = [BuddySimplePasscodeInputView alloc];
    passcodeManager2 = [(BuddyPasscodeBaseViewController *)selfCopy passcodeManager];
    obj = [(BuddySimplePasscodeInputView *)v4 initWithFrame:[(BFFPasscodeCreationManager *)passcodeManager2 simplePasscodeEntryLength] numberOfEntryFields:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];

    [obj setLimitCharactersToNumbers:0];
    objc_storeStrong(location, obj);
    objc_storeStrong(&obj, 0);
  }

  else
  {
    v6 = [BuddyComplexPasscodeInputView alloc];
    passcodeManager3 = [(BuddyPasscodeBaseViewController *)selfCopy passcodeManager];
    v8 = [(BuddyComplexPasscodeInputView *)v6 initWithFrame:[(BFFPasscodeCreationManager *)passcodeManager3 isNumericPasscodeEntry]& 1 numericOnly:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v9 = location[0];
    location[0] = v8;
  }

  v10 = location[0];
  objc_storeStrong(location, 0);
  return v10;
}

- (id)_passcodeInputViewForState:(unint64_t)state updateDetailText:(BOOL)text
{
  selfCopy = self;
  v21 = a2;
  stateCopy = state;
  textCopy = text;
  location = [(BuddyPasscodeBaseViewController *)self passcodeInputView];
  if (!stateCopy || stateCopy == 3)
  {
    passcodeOptionAlertController = [(BuddyPasscodeBaseViewController *)selfCopy passcodeOptionAlertController];
    actions = [passcodeOptionAlertController actions];

    v5 = [actions count] == 2;
    _allowSkip = 0;
    if (v5)
    {
      _allowSkip = [(BuddyPasscodeBaseViewController *)selfCopy _allowSkip];
    }

    selfCopy->_footerButtonIsSkip = _allowSkip & 1;
    if (selfCopy->_footerButtonIsSkip)
    {
      footerButton = [(BuddyPasscodeBaseViewController *)selfCopy footerButton];
      v8 = [NSBundle bundleForClass:objc_opt_class()];
      v9 = [(NSBundle *)v8 localizedStringForKey:@"DO_NOT_ADD_PASSCODE" value:&stru_10032F900 table:@"Localizable"];
      [(UIButton *)footerButton setTitle:v9 forState:0];
    }

    else if ([actions count] > 1)
    {
      footerButton2 = [(BuddyPasscodeBaseViewController *)selfCopy footerButton];
      v11 = [NSBundle bundleForClass:objc_opt_class()];
      v12 = [(NSBundle *)v11 localizedStringForKey:@"PASSCODE_OPTIONS" value:&stru_10032F900 table:@"Localizable"];
      [(UIButton *)footerButton2 setTitle:v12 forState:0];
    }

    objc_storeStrong(&actions, 0);
  }

  if (textCopy)
  {
    headerView = [(BuddyPasscodeBaseViewController *)selfCopy headerView];
    v14 = [(BuddyPasscodeBaseViewController *)selfCopy instructionsForState:stateCopy];
    [headerView setDetailText:v14];
  }

  v15 = location;
  objc_storeStrong(&location, 0);
  return v15;
}

- (void)_animatedPasscodeViewTransitionToState:(unint64_t)state animation:(unint64_t)animation
{
  selfCopy = self;
  v17 = a2;
  stateCopy = state;
  animationCopy = animation;
  if (state && stateCopy != 3)
  {
    footerButton = [(BuddyPasscodeBaseViewController *)selfCopy footerButton];
    [(UIButton *)footerButton setHidden:1];
  }

  else
  {
    footerButton2 = [(BuddyPasscodeBaseViewController *)selfCopy footerButton];
    [(UIButton *)footerButton2 setHidden:0];
  }

  location = [(BuddyPasscodeBaseViewController *)selfCopy _passcodeInputViewForState:stateCopy updateDetailText:0];
  [(BuddyPasscodeBaseViewController *)selfCopy _prepareTransitionForPasscodeInput:location];
  v13 = [(BuddyPasscodeBaseViewController *)selfCopy _onboardingPasscodeAnimationForBFF:animationCopy];
  v6 = [(BuddyPasscodeBaseViewController *)selfCopy instructionsForState:stateCopy];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_1002351E0;
  v11 = &unk_10032F620;
  v12 = selfCopy;
  [(BuddyPasscodeBaseViewController *)selfCopy animateDetailText:v6 animationType:v13 heightDifference:&v7];

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
}

- (void)_prepareTransitionForPasscodeInput:(id)input
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, input);
  [(BuddyPasscodeBaseViewController *)selfCopy transitionToPasscodeInput:location[0] delegate:selfCopy];
  contentView = [(BuddyPasscodeBaseViewController *)selfCopy contentView];
  [contentView layoutIfNeeded];

  objc_storeStrong(location, 0);
}

- (unint64_t)_onboardingPasscodeAnimationForBFF:(unint64_t)f
{
  if (f == 1)
  {
    return 0;
  }

  if (f == 2)
  {
    return 1;
  }

  return 2;
}

- (void)passcodeManager:(id)manager didTransitionFromState:(unint64_t)state toState:(unint64_t)toState
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  stateCopy = state;
  toStateCopy = toState;
  headerView = [(BuddyPasscodeBaseViewController *)selfCopy headerView];
  v8 = [(BuddyPasscodeBaseViewController *)selfCopy titleForState:toStateCopy];
  [headerView setTitle:v8];

  if (toStateCopy)
  {
    switch(toStateCopy)
    {
      case 2uLL:
      case 3uLL:
        if (toStateCopy == 2)
        {
          v10 = 2;
        }

        else
        {
          v10 = 1;
        }

        [(BuddyPasscodeBaseViewController *)selfCopy _animatedPasscodeViewTransitionToState:toStateCopy animation:v10, v10];
        break;
      case 1uLL:
        [(BuddyPasscodeBaseViewController *)selfCopy _showWeakWarningAlert];
        break;
      case 4uLL:
        v11 = selfCopy;
        passcodeManager = [(BuddyPasscodeBaseViewController *)selfCopy passcodeManager];
        passcode = [(BFFPasscodeCreationManager *)passcodeManager passcode];
        [(BuddyPasscodeBaseViewController *)v11 _finishedWithPasscode:passcode];

        break;
    }
  }

  else
  {
    _currentPasscodeInputView = [(BuddyPasscodeBaseViewController *)selfCopy _currentPasscodeInputView];
    [_currentPasscodeInputView setPasscode:&stru_10032F900];

    if (stateCopy != 1)
    {
      [(BuddyPasscodeBaseViewController *)selfCopy _animatedPasscodeViewTransitionToState:0 animation:3];
    }
  }

  [(BuddyPasscodeBaseViewController *)selfCopy _updateNextButton];
  objc_storeStrong(location, 0);
}

- (void)passcodeManagerWillSetPasscode:(id)passcode
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, passcode);
  [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:selfCopy identifier:@"SETUP_PASSCODE_VIEW_CONTROLLER"];
  [(BuddyPasscodeBaseViewController *)selfCopy setShowingSpinner:1];
  passcodeCreationDelegate = [(BuddyPasscodeBaseViewController *)selfCopy passcodeCreationDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    passcodeCreationDelegate2 = [(BuddyPasscodeBaseViewController *)selfCopy passcodeCreationDelegate];
    [(BuddyPasscodeBaseViewControllerDelegate *)passcodeCreationDelegate2 passcodeViewControllerWillSetPasscode:selfCopy];
  }

  objc_storeStrong(location, 0);
}

- (void)passcodeManager:(id)manager didSetPasscodeWithSuccess:(BOOL)success error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  successCopy = success;
  v12 = 0;
  objc_storeStrong(&v12, error);
  if ([(BuddyPasscodeBaseViewController *)selfCopy showingSpinner])
  {
    [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"SETUP_PASSCODE_VIEW_CONTROLLER"];
    [(BuddyPasscodeBaseViewController *)selfCopy setShowingSpinner:0];
  }

  if (successCopy)
  {
    passcodeCreationDelegate = [(BuddyPasscodeBaseViewController *)selfCopy passcodeCreationDelegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      passcodeCreationDelegate2 = [(BuddyPasscodeBaseViewController *)selfCopy passcodeCreationDelegate];
      v10 = selfCopy;
      passcode = [location[0] passcode];
      [(BuddyPasscodeBaseViewControllerDelegate *)passcodeCreationDelegate2 passcodeViewController:v10 didSetPasscode:passcode];
    }
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)tappedFooterButton:(id)button
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  if (selfCopy->_footerButtonIsSkip)
  {
    [(BuddyPasscodeBaseViewController *)selfCopy _showSkipPasscodeAlert];
  }

  else
  {
    [(BuddyPasscodeBaseViewController *)selfCopy _showPasscodeOptionsSheet];
  }

  objc_storeStrong(location, 0);
}

- (void)clear
{
  _currentPasscodeInputView = [(BuddyPasscodeBaseViewController *)self _currentPasscodeInputView];
  [_currentPasscodeInputView disable];

  _currentPasscodeInputView2 = [(BuddyPasscodeBaseViewController *)self _currentPasscodeInputView];
  [_currentPasscodeInputView2 setDelegate:0];

  _currentPasscodeInputView3 = [(BuddyPasscodeBaseViewController *)self _currentPasscodeInputView];
  [_currentPasscodeInputView3 removeFromSuperview];

  passcodeManager = [(BuddyPasscodeBaseViewController *)self passcodeManager];
  [(BFFPasscodeCreationManager *)passcodeManager setDelegate:0];

  [(BuddyPasscodeBaseViewController *)self setPasscodeManager:0];
}

- (void)_finishedWithPasscode:(id)passcode
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, passcode);
  passcodeCreationDelegate = [(BuddyPasscodeBaseViewController *)selfCopy passcodeCreationDelegate];
  [(BuddyPasscodeBaseViewControllerDelegate *)passcodeCreationDelegate passcodeViewController:selfCopy didFinishWithPasscodeCreation:location[0]];

  objc_storeStrong(location, 0);
}

- (id)titleForState:(unint64_t)state
{
  selfCopy = self;
  location[2] = a2;
  location[1] = state;
  location[0] = 0;
  flowItemDispositionProvider = [(BuddyPasscodeBaseViewController *)self flowItemDispositionProvider];
  v18 = 0;
  v16 = 0;
  v4 = 0;
  if (flowItemDispositionProvider)
  {
    flowItemDispositionProvider2 = [(BuddyPasscodeBaseViewController *)selfCopy flowItemDispositionProvider];
    v18 = 1;
    v4 = 0;
    if ([(BuddyFlowItemDispositionProvider *)flowItemDispositionProvider2 dispositions]== 8)
    {
      userFirstName = [(BuddyPasscodeBaseViewController *)selfCopy userFirstName];
      v16 = 1;
      v4 = userFirstName != 0;
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
    userFirstName2 = [(BuddyPasscodeBaseViewController *)selfCopy userFirstName];
    v9 = [NSString localizedStringWithFormat:v7, userFirstName2];
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

- (id)instructionsForState:(unint64_t)state
{
  selfCopy = self;
  location[2] = a2;
  location[1] = state;
  location[0] = 0;
  switch(state)
  {
    case 0uLL:
      passcodeManager = [(BuddyPasscodeBaseViewController *)selfCopy passcodeManager];
      constraintInstructions = [(BFFPasscodeCreationManager *)passcodeManager constraintInstructions];
      v5 = location[0];
      location[0] = constraintInstructions;

      if (location[0] && [location[0] length])
      {
        _firstEntryInstructions = location[0];
      }

      else
      {
        _firstEntryInstructions = [(BuddyPasscodeBaseViewController *)selfCopy _firstEntryInstructions];
      }

      break;
    case 1uLL:
      goto LABEL_13;
    case 2uLL:
      v6 = [NSBundle bundleForClass:objc_opt_class()];
      _firstEntryInstructions = [(NSBundle *)v6 localizedStringForKey:@"RE_ENTER_PASSCODE" value:&stru_10032F900 table:@"Localizable"];

      break;
    case 3uLL:
      v7 = [NSBundle bundleForClass:objc_opt_class()];
      _firstEntryInstructions = [(NSBundle *)v7 localizedStringForKey:@"PASSCODES_FAILED_TO_MATCH" value:&stru_10032F900 table:@"Localizable"];

      break;
    case 4uLL:
LABEL_13:
      _firstEntryInstructions = &stru_10032F900;
      break;
  }

  objc_storeStrong(location, 0);
  v8 = _firstEntryInstructions;

  return v8;
}

- (id)_firstEntryInstructions
{
  selfCopy = self;
  v21[1] = a2;
  v21[0] = 0;
  passcodeCreationDelegate = [(BuddyPasscodeBaseViewController *)self passcodeCreationDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    passcodeCreationDelegate2 = [(BuddyPasscodeBaseViewController *)selfCopy passcodeCreationDelegate];
    v5 = [(BuddyPasscodeBaseViewControllerDelegate *)passcodeCreationDelegate2 passcodeViewControllerCustomFirstEntryInstructions:selfCopy];
    v6 = v21[0];
    v21[0] = v5;
  }

  if (!v21[0])
  {
    location = @"PASSCODE_DESCRIPTION";
    flowItemDispositionProvider = [(BuddyPasscodeBaseViewController *)selfCopy flowItemDispositionProvider];
    v18 = 0;
    v8 = 0;
    if (flowItemDispositionProvider)
    {
      flowItemDispositionProvider2 = [(BuddyPasscodeBaseViewController *)selfCopy flowItemDispositionProvider];
      v18 = 1;
      v8 = [(BuddyFlowItemDispositionProvider *)flowItemDispositionProvider2 dispositions]== 8;
    }

    if (v18)
    {
    }

    if (v8)
    {
      flowItemDispositionProvider3 = [(BuddyPasscodeBaseViewController *)selfCopy flowItemDispositionProvider];
      v10 = [BuddyLocalizationUtilities dispositionSpecificLocalizedStringKeyForKey:location disposition:[(BuddyFlowItemDispositionProvider *)flowItemDispositionProvider3 dispositions]];
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

- (void)configurePasscodeTypeUsingAnimations:(BOOL)animations
{
  selfCopy = self;
  v12 = a2;
  animationsCopy = animations;
  passcodeManager = [(BuddyPasscodeBaseViewController *)self passcodeManager];
  isSimplePasscodeEntry = [(BFFPasscodeCreationManager *)passcodeManager isSimplePasscodeEntry];

  if (isSimplePasscodeEntry)
  {
    navigationItem = [(BuddyPasscodeBaseViewController *)selfCopy navigationItem];
    [navigationItem setRightBarButtonItem:0 animated:animationsCopy];
  }

  else
  {
    v6 = [UIBarButtonItem alloc];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [(NSBundle *)v7 localizedStringForKey:@"NEXT" value:&stru_10032F900 table:@"Localizable"];
    v10 = [v6 initWithTitle:v8 style:2 target:selfCopy action:"nextButtonPressed"];

    navigationItem2 = [(BuddyPasscodeBaseViewController *)selfCopy navigationItem];
    [navigationItem2 setRightBarButtonItem:v10 animated:animationsCopy];

    [(BuddyPasscodeBaseViewController *)selfCopy _updateNextButton];
    objc_storeStrong(&v10, 0);
  }
}

- (void)_showWeakWarningAlert
{
  selfCopy = self;
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
  v24 = selfCopy;
  v9 = [UIAlertAction actionWithTitle:v8 style:1 handler:&v19];
  [v6 addAction:v9];

  v10 = location;
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [(NSBundle *)v11 localizedStringForKey:@"USE_WEAK_PASSCODE_ANYWAY" value:&stru_10032F900 table:@"Localizable"];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1002366C8;
  v17 = &unk_10032B598;
  v18 = selfCopy;
  v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:&v14];
  [v10 addAction:{v13, v14, v15, v16, v17}];

  [(BuddyPasscodeBaseViewController *)selfCopy presentViewController:location animated:1 completion:0];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v26, 0);
}

- (void)_showSkipPasscodeAlert
{
  selfCopy = self;
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
  v18 = selfCopy;
  v12 = [UIAlertAction actionWithTitle:v11 style:0 handler:&v13];
  [v9 addAction:v12];

  [(BuddyPasscodeBaseViewController *)selfCopy presentViewController:location animated:1 completion:0];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v20, 0);
}

- (void)_commitPasscodeEntryTypeChange
{
  [(BuddyPasscodeBaseViewController *)self configurePasscodeTypeUsingAnimations:1, a2];
  passcodeManager = [(BuddyPasscodeBaseViewController *)self passcodeManager];
  [(BFFPasscodeCreationManager *)passcodeManager setPasscodeState:0];
}

- (id)passcodeOptionAlertController
{
  selfCopy = self;
  v74 = a2;
  v73 = 0;
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 minimumNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:&v73];

  v72 = v3;
  location = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
  passcodeManager = [(BuddyPasscodeBaseViewController *)selfCopy passcodeManager];
  LOBYTE(v3) = [(BFFPasscodeCreationManager *)passcodeManager isNumericPasscodeEntry];

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
    v70 = selfCopy;
    v8 = [UIAlertAction actionWithTitle:v7 style:0 handler:&v65];
    [v5 addAction:v8];

    objc_storeStrong(&v70, 0);
  }

  v63 = 0;
  v61 = 0;
  if (!v72 || (v9 = 0, v72 == 1))
  {
    passcodeManager2 = [(BuddyPasscodeBaseViewController *)selfCopy passcodeManager];
    v63 = 1;
    v9 = 1;
    if (([(BFFPasscodeCreationManager *)passcodeManager2 isNumericPasscodeEntry]& 1) != 0)
    {
      passcodeManager3 = [(BuddyPasscodeBaseViewController *)selfCopy passcodeManager];
      v61 = 1;
      v9 = [(BFFPasscodeCreationManager *)passcodeManager3 simplePasscodeEntryLength]> 0;
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
    v60 = selfCopy;
    v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:&v55];
    [v10 addAction:v13];

    objc_storeStrong(&v60, 0);
  }

  if (!v72)
  {
    passcodeManager4 = [(BuddyPasscodeBaseViewController *)selfCopy passcodeManager];
    simplePasscodeEntryLength = [(BFFPasscodeCreationManager *)passcodeManager4 simplePasscodeEntryLength];

    if (simplePasscodeEntryLength != 6)
    {
      v16 = location;
      v17 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = [(NSBundle *)v17 localizedStringForKey:@"6_DIGIT_CODE" value:&stru_10032F900 table:@"Localizable"];
      v49 = _NSConcreteStackBlock;
      v50 = -1073741824;
      v51 = 0;
      v52 = sub_100237638;
      v53 = &unk_10032B598;
      v54 = selfCopy;
      v19 = [UIAlertAction actionWithTitle:v18 style:0 handler:&v49];
      [v16 addAction:v19];

      objc_storeStrong(&v54, 0);
    }

    v47 = 0;
    v20 = 0;
    if (!v73)
    {
      passcodeManager5 = [(BuddyPasscodeBaseViewController *)selfCopy passcodeManager];
      v47 = 1;
      v20 = [passcodeManager5 simplePasscodeEntryLength] != 4;
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
      v46 = selfCopy;
      v24 = [UIAlertAction actionWithTitle:v23 style:0 handler:&v41];
      [v21 addAction:v24];

      objc_storeStrong(&v46, 0);
    }
  }

  if ([(BuddyPasscodeBaseViewController *)selfCopy _allowSkip])
  {
    v25 = location;
    v26 = [NSBundle bundleForClass:objc_opt_class()];
    v27 = [(NSBundle *)v26 localizedStringForKey:@"DO_NOT_ADD_PASSCODE" value:&stru_10032F900 table:@"Localizable"];
    v35 = _NSConcreteStackBlock;
    v36 = -1073741824;
    v37 = 0;
    v38 = sub_100237780;
    v39 = &unk_10032B598;
    v40 = selfCopy;
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
  selfCopy = self;
  v8[1] = a2;
  v8[0] = [(BuddyPasscodeBaseViewController *)self passcodeOptionAlertController];
  if (BFFIsiPad())
  {
    [v8[0] setModalPresentationStyle:7];
    popoverPresentationController = [v8[0] popoverPresentationController];
    location = [(BuddyPasscodeBaseViewController *)selfCopy footerButton];
    [popoverPresentationController setPermittedArrowDirections:2];
    [popoverPresentationController setSourceView:location];
    [location bounds];
    [popoverPresentationController setSourceRect:{v2, v3, v4, v5}];
    objc_storeStrong(&location, 0);
    objc_storeStrong(&popoverPresentationController, 0);
  }

  [(BuddyPasscodeBaseViewController *)selfCopy presentViewController:v8[0] animated:1 completion:0];
  objc_storeStrong(v8, 0);
}

- (id)_currentPasscodeInputView
{
  v2 = [(BuddyPasscodeBaseViewController *)self contentView:a2];
  subviews = [v2 subviews];
  v4 = [NSPredicate predicateWithBlock:&stru_10032F660];
  v5 = [subviews filteredArrayUsingPredicate:v4];
  firstObject = [v5 firstObject];

  return firstObject;
}

- (BuddyPasscodeBaseViewControllerDelegate)passcodeCreationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_passcodeCreationDelegate);

  return WeakRetained;
}

@end