@interface CinematicFramingRemoteAlertViewController
- (id)createWelcomeController;
- (id)detailStringFromBundle:(id)bundle tableName:(id)name;
- (id)parameterForKey:(id)key fromUserInfo:(id)info requiredClass:(Class)class;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dismissRemoteAlert;
- (void)handleControlCenterButton:(id)button;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)welcomeControllerDidDisappear:(id)disappear;
@end

@implementation CinematicFramingRemoteAlertViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CinematicFramingRemoteAlertViewController;
  [(CinematicFramingRemoteAlertViewController *)&v5 viewDidLoad];
  v3 = [UIColor colorWithWhite:0.0 alpha:0.5];
  view = [(CinematicFramingRemoteAlertViewController *)self view];
  [view setBackgroundColor:v3];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = CinematicFramingRemoteAlertViewController;
  [(CinematicFramingRemoteAlertViewController *)&v6 viewWillAppear:?];
  if (!appear)
  {
    view = [(CinematicFramingRemoteAlertViewController *)self view];
    [view setAlpha:0.0];
  }

  if ([(CinematicFramingRemoteAlertViewController *)self isStandaloneTestApp])
  {
    [(CinematicFramingRemoteAlertViewController *)self setTargetBundleDisplayName:@"FaceTime"];
    [(CinematicFramingRemoteAlertViewController *)self setTargetBundleIdentifier:@"com.apple.facetime"];
    [(CinematicFramingRemoteAlertViewController *)self setCinematicFramingControlMode:1];
    [(CinematicFramingRemoteAlertViewController *)self setFirstEverCinematicFramingAlert:0];
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v5 = [(CinematicFramingRemoteAlertViewController *)self _remoteViewControllerProxyWithErrorHandler:&stru_1000081A0];
  [v5 setReachabilityDisabled:1];
  [v5 setAllowsAlertStacking:1];
  [v5 setDismissalAnimationStyle:1];
  if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  userInfo = [context userInfo];
  v7 = [(CinematicFramingRemoteAlertViewController *)self parameterForKey:FigCaptureCinematicFramingRemoteAlertUserInfoBundleIdentifierKey fromUserInfo:userInfo requiredClass:objc_opt_class()];
  v8 = [(CinematicFramingRemoteAlertViewController *)self parameterForKey:FigCaptureCinematicFramingRemoteAlertUserInfoBundleDisplayNameKey fromUserInfo:userInfo requiredClass:objc_opt_class()];
  v9 = [(CinematicFramingRemoteAlertViewController *)self parameterForKey:FigCaptureCinematicFramingRemoteAlertUserInfoControlModeKey fromUserInfo:userInfo requiredClass:objc_opt_class()];
  v10 = [(CinematicFramingRemoteAlertViewController *)self parameterForKey:FigCaptureCinematicFramingRemoteAlertUserInfoFirstEverCinematicFramingAlertKey fromUserInfo:userInfo requiredClass:objc_opt_class()];
  [(CinematicFramingRemoteAlertViewController *)self setTargetBundleIdentifier:v7];
  [(CinematicFramingRemoteAlertViewController *)self setTargetBundleDisplayName:v8];
  if (v9)
  {
    integerValue = [v9 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  [(CinematicFramingRemoteAlertViewController *)self setCinematicFramingControlMode:integerValue];
  if (v10)
  {
    bOOLValue = [v10 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  [(CinematicFramingRemoteAlertViewController *)self setFirstEverCinematicFramingAlert:bOOLValue];
  if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (id)parameterForKey:(id)key fromUserInfo:(id)info requiredClass:(Class)class
{
  v5 = [info objectForKeyedSubscript:key];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v5 = 0;
  }

  return v5;
}

- (void)dismissRemoteAlert
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000014B4;
  v2[3] = &unk_1000081E8;
  v2[4] = self;
  [(CinematicFramingRemoteAlertViewController *)self dismissViewControllerAnimated:1 completion:v2];
}

- (id)createWelcomeController
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  shouldShowControlCenterButton = [(CinematicFramingRemoteAlertViewController *)self shouldShowControlCenterButton];
  v5 = [v3 localizedStringForKey:@"TITLE" value:&stru_1000082A8 table:@"CinematicFramingRemoteAlert"];
  v6 = [(CinematicFramingRemoteAlertViewController *)self detailStringFromBundle:v3 tableName:@"CinematicFramingRemoteAlert"];
  v7 = [v3 localizedStringForKey:@"CONTINUE_BUTTON" value:&stru_1000082A8 table:@"CinematicFramingRemoteAlert"];
  v8 = [v3 localizedStringForKey:@"CONTROL_CENTER_BUTTON" value:&stru_1000082A8 table:@"CinematicFramingRemoteAlert"];
  v40 = v6;
  v41 = v5;
  v9 = [[CinematicFramingRemoteAlertOBWelcomeController alloc] initWithTitle:v5 detailText:v6 icon:0];
  v10 = +[OBBoldTrayButton boldButton];
  v39 = v7;
  [v10 setTitle:v7 forState:0];
  [v10 addTarget:self action:"handleContinueButton:" forControlEvents:64];
  v11 = [OBPrivacyLinkController linkWithBundleIdentifier:@"com.apple.onboarding.camera"];
  [v11 setDisplayCaptionText:0];
  buttonTray = [(CinematicFramingRemoteAlertOBWelcomeController *)v9 buttonTray];
  v36 = v10;
  [buttonTray addButton:v10];
  if (shouldShowControlCenterButton)
  {
    v13 = +[OBLinkTrayButton linkButton];
    [v13 setTitle:v8 forState:0];
    [v13 addTarget:self action:"handleControlCenterButton:" forControlEvents:64];
    [buttonTray addButton:v13];
  }

  v37 = v8;
  v34 = buttonTray;
  v35 = v11;
  [buttonTray setPrivacyLinkController:v11];
  v38 = v9;
  headerView = [(CinematicFramingRemoteAlertOBWelcomeController *)v9 headerView];
  traitCollection = [(CinematicFramingRemoteAlertViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    v16 = @"CinematicFraming864x300Dark";
  }

  else
  {
    v16 = @"CinematicFraming864x300Light";
  }

  v32 = [v3 URLForResource:v16 withExtension:@"ca"];
  v17 = [[OBAnimationState alloc] initWithStateName:@"State 1" transitionDuration:1.5 transitionSpeed:1.0];
  v42[0] = v17;
  v18 = [[OBAnimationState alloc] initWithStateName:@"State 2" transitionDuration:1.5 transitionSpeed:1.0];
  v42[1] = v18;
  v19 = [[OBAnimationState alloc] initWithStateName:@"State 3" transitionDuration:1.5 transitionSpeed:1.0];
  v42[2] = v19;
  v20 = [[OBAnimationState alloc] initWithStateName:@"State 4" transitionDuration:1.5 transitionSpeed:1.0];
  v42[3] = v20;
  v21 = [[OBAnimationState alloc] initWithStateName:@"State 5" transitionDuration:1.5 transitionSpeed:1.0];
  v42[4] = v21;
  v22 = [[OBAnimationState alloc] initWithStateName:@"State 6" transitionDuration:1.5 transitionSpeed:1.0];
  v42[5] = v22;
  v23 = [[OBAnimationState alloc] initWithStateName:@"State 7" transitionDuration:1.5 transitionSpeed:1.0];
  v42[6] = v23;
  v24 = [NSArray arrayWithObjects:v42 count:7];

  v25 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", 3 * [v24 count]);
  v26 = 3;
  do
  {
    [v25 addObjectsFromArray:v24];
    --v26;
  }

  while (v26);
  v27 = [OBAnimationController alloc];
  animationView = [headerView animationView];
  firstObject = [v25 firstObject];
  v30 = [v27 initWithUrlToPackage:v32 animationView:animationView animatedStates:v25 startAtFirstState:firstObject];
  [(CinematicFramingRemoteAlertViewController *)self setAnimationController:v30];

  return v38;
}

- (id)detailStringFromBundle:(id)bundle tableName:(id)name
{
  nameCopy = name;
  bundleCopy = bundle;
  if ([(CinematicFramingRemoteAlertViewController *)self isFirstEverCinematicFramingAlert])
  {
    nameCopy = [bundleCopy localizedStringForKey:@"DETAIL" value:&stru_1000082A8 table:nameCopy];
  }

  else
  {
    v9 = [bundleCopy localizedStringForKey:@"DETAIL_APP_NAME" value:&stru_1000082A8 table:nameCopy];

    nameCopy = [(CinematicFramingRemoteAlertViewController *)self targetBundleDisplayName];
    nameCopy = [NSString stringWithFormat:v9, nameCopy];
    bundleCopy = v9;
  }

  return nameCopy;
}

- (void)welcomeControllerDidDisappear:(id)disappear
{
  v3 = [(CinematicFramingRemoteAlertViewController *)self _remoteViewControllerProxyWithErrorHandler:&stru_100008208];
  [v3 invalidate];
}

- (void)handleControlCenterButton:(id)button
{
  targetBundleIdentifier = [(CinematicFramingRemoteAlertViewController *)self targetBundleIdentifier];
  targetBundleDisplayName = [(CinematicFramingRemoteAlertViewController *)self targetBundleDisplayName];
  FigCaptureSourceRemoteShowVideoEffectUserInterfaceForCinematicFramingOnboardingUI();
  [(CinematicFramingRemoteAlertViewController *)self dismissRemoteAlert];
}

@end