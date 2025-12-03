@interface MessagesViewController
- (AVTAvatarPickerDelegate)avatarPickerDelegate;
- (void)didBecomeActiveWithConversation:(id)conversation;
- (void)didTransitionToPresentationStyle:(unint64_t)style;
- (void)dismissLaunchScreenIfNecessary;
- (void)setAvatarPickerDelegate:(id)delegate;
- (void)splashScreenViewControllerDidConfirm:(id)confirm;
- (void)viewDidLoad;
- (void)willTransitionToPresentationStyle:(unint64_t)style;
@end

@implementation MessagesViewController

- (void)viewDidLoad
{
  v68.receiver = self;
  v68.super_class = MessagesViewController;
  [(MessagesViewController *)&v68 viewDidLoad];
  v3 = +[AVTUIColorRepository appBackgroundColor];
  view = [(MessagesViewController *)self view];
  [view setBackgroundColor:v3];

  v5 = objc_alloc_init(AVTAvatarStore);
  [(MessagesViewController *)self setAvatarStore:v5];

  v6 = +[AVTFunCamAvatarPickerStyle defaultLayoutStyle];
  avatarStore = [(MessagesViewController *)self avatarStore];
  v67 = v6;
  v8 = [AVTFunCamAvatarPickerController funCamAvatarPickerControllerForStore:avatarStore style:v6];
  [(MessagesViewController *)self setPickerController:v8];

  pickerController = [(MessagesViewController *)self pickerController];
  [pickerController setPresenterDelegate:self];

  avatarPickerDelegate = [(MessagesViewController *)self avatarPickerDelegate];
  pickerController2 = [(MessagesViewController *)self pickerController];
  [pickerController2 setAvatarPickerDelegate:avatarPickerDelegate];

  pickerController3 = [(MessagesViewController *)self pickerController];
  [(MessagesViewController *)self addChildViewController:pickerController3];

  pickerController4 = [(MessagesViewController *)self pickerController];
  view2 = [pickerController4 view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

  view3 = [(MessagesViewController *)self view];
  pickerController5 = [(MessagesViewController *)self pickerController];
  view4 = [pickerController5 view];
  [view3 addSubview:view4];

  view5 = [(MessagesViewController *)self view];
  topAnchor = [view5 topAnchor];
  pickerController6 = [(MessagesViewController *)self pickerController];
  view6 = [pickerController6 view];
  topAnchor2 = [view6 topAnchor];
  v61 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v69[0] = v61;
  view7 = [(MessagesViewController *)self view];
  leftAnchor = [view7 leftAnchor];
  pickerController7 = [(MessagesViewController *)self pickerController];
  view8 = [pickerController7 view];
  leftAnchor2 = [view8 leftAnchor];
  v55 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v69[1] = v55;
  view9 = [(MessagesViewController *)self view];
  rightAnchor = [view9 rightAnchor];
  pickerController8 = [(MessagesViewController *)self pickerController];
  view10 = [pickerController8 view];
  rightAnchor2 = [view10 rightAnchor];
  v19 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v69[2] = v19;
  view11 = [(MessagesViewController *)self view];
  bottomAnchor = [view11 bottomAnchor];
  pickerController9 = [(MessagesViewController *)self pickerController];
  view12 = [pickerController9 view];
  bottomAnchor2 = [view12 bottomAnchor];
  v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v69[3] = v25;
  v26 = [NSArray arrayWithObjects:v69 count:4];
  [(MessagesViewController *)self setConstraints:v26];

  view13 = [(MessagesViewController *)self view];
  constraints = [(MessagesViewController *)self constraints];
  [view13 addConstraints:constraints];

  pickerController10 = [(MessagesViewController *)self pickerController];
  [pickerController10 didMoveToParentViewController:self];

  v30 = +[NSBundle mainBundle];
  bundleIdentifier = [v30 bundleIdentifier];
  LODWORD(bottomAnchor) = [bundleIdentifier isEqualToString:@"com.apple.InCallService"];

  if (bottomAnchor)
  {
    AVTUIHasDisplayedCameraEffectsSplashScreen();
  }

  else
  {
    v32 = +[NSUserDefaults standardUserDefaults];
    v33 = [v32 BOOLForKey:@"JFDefaults_AlwaysShowLaunchScreen"];

    if (v33)
    {
      AVTUISetHasDisplayedCameraEffectsSplashScreen();
      AVTUISetHasDisplayedAnimojiSplashScreen();
      AVTUISetHasDisplayedSplashScreen();
    }

    if ((AVTUIHasDisplayedCameraEffectsSplashScreen() & 1) == 0)
    {
      [(MessagesViewController *)self setShowsSplashScreen:1];
      pickerController11 = [(MessagesViewController *)self pickerController];
      view14 = [pickerController11 view];
      [view14 setAlpha:0.0];

      v36 = objc_alloc_init(AVTSplashScreenConfiguration);
      v37 = [NSBundle bundleForClass:objc_opt_class()];
      v38 = [v37 localizedStringForKey:@"sJFLaunchTitle" value:&stru_C498 table:@"JFStrings"];
      [v36 setTitleString:v38];

      v39 = [NSBundle bundleForClass:objc_opt_class()];
      v40 = [v39 localizedStringForKey:@"sJFLaunchBody" value:&stru_C498 table:@"JFStrings"];
      [v36 setSubTitleString:v40];

      v41 = [NSBundle bundleForClass:objc_opt_class()];
      v42 = [v41 localizedStringForKey:@"sJFLaunchContinueButton" value:&stru_C498 table:@"JFStrings"];
      [v36 setButtonString:v42];

      v43 = AVTAvatarEditorSplashVideo();
      [v36 setPrimaryPlayerItem:v43];
      v44 = [[AVTSplashScreenViewController alloc] initWithConfiguration:v36];
      [(MessagesViewController *)self setSplashViewController:v44];

      splashViewController = [(MessagesViewController *)self splashViewController];
      [splashViewController setDelegate:self];

      splashViewController2 = [(MessagesViewController *)self splashViewController];
      view15 = [splashViewController2 view];
      [view15 setAlpha:0.0];

      view16 = [(MessagesViewController *)self view];
      splashViewController3 = [(MessagesViewController *)self splashViewController];
      view17 = [splashViewController3 view];
      [view16 addSubview:view17];
    }
  }
}

- (void)didBecomeActiveWithConversation:(id)conversation
{
  v7.receiver = self;
  v7.super_class = MessagesViewController;
  [(MessagesViewController *)&v7 didBecomeActiveWithConversation:conversation];
  parentMessagesViewController = [(MessagesViewController *)self parentMessagesViewController];
  v5 = [parentMessagesViewController presentationStyle] == &dword_0 + 1;

  pickerController = [(MessagesViewController *)self pickerController];
  [pickerController setMode:v5];
}

- (void)setAvatarPickerDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_avatarPickerDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_avatarPickerDelegate, obj);
    pickerController = [(MessagesViewController *)self pickerController];

    if (pickerController)
    {
      pickerController2 = [(MessagesViewController *)self pickerController];
      [pickerController2 setAvatarPickerDelegate:obj];
    }
  }
}

- (AVTAvatarPickerDelegate)avatarPickerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_avatarPickerDelegate);

  return WeakRetained;
}

- (void)willTransitionToPresentationStyle:(unint64_t)style
{
  showsSplashScreen = [(MessagesViewController *)self showsSplashScreen];
  if (!style && showsSplashScreen)
  {
    [(MessagesViewController *)self dismissLaunchScreenIfNecessary];
  }

  pickerController = [(MessagesViewController *)self pickerController];
  [pickerController setMode:style == 1];
}

- (void)didTransitionToPresentationStyle:(unint64_t)style
{
  if ([(MessagesViewController *)self showsSplashScreen])
  {
    splashViewController = [(MessagesViewController *)self splashViewController];
    view = [splashViewController view];
    [view setAlpha:1.0];
  }
}

- (void)dismissLaunchScreenIfNecessary
{
  if ([(MessagesViewController *)self showsSplashScreen])
  {
    [(MessagesViewController *)self setShowsSplashScreen:0];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_4FF4;
    v4[3] = &unk_C390;
    v4[4] = self;
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_508C;
    v3[3] = &unk_C458;
    v3[4] = self;
    [UIView animateWithDuration:v4 animations:v3 completion:0.2];
  }
}

- (void)splashScreenViewControllerDidConfirm:(id)confirm
{
  AVTUISetHasDisplayedAnimojiSplashScreen();
  AVTUISetHasDisplayedCameraEffectsSplashScreen();
  AVTUISetHasDisplayedCameraEffectsCameraDisclosureSplashScreen();

  [(MessagesViewController *)self dismissLaunchScreenIfNecessary];
}

@end