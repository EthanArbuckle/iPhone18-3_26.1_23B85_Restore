@interface MessagesViewController
- (AVTAvatarPickerDelegate)avatarPickerDelegate;
- (void)didBecomeActiveWithConversation:(id)a3;
- (void)didTransitionToPresentationStyle:(unint64_t)a3;
- (void)dismissLaunchScreenIfNecessary;
- (void)setAvatarPickerDelegate:(id)a3;
- (void)splashScreenViewControllerDidConfirm:(id)a3;
- (void)viewDidLoad;
- (void)willTransitionToPresentationStyle:(unint64_t)a3;
@end

@implementation MessagesViewController

- (void)viewDidLoad
{
  v68.receiver = self;
  v68.super_class = MessagesViewController;
  [(MessagesViewController *)&v68 viewDidLoad];
  v3 = +[AVTUIColorRepository appBackgroundColor];
  v4 = [(MessagesViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = objc_alloc_init(AVTAvatarStore);
  [(MessagesViewController *)self setAvatarStore:v5];

  v6 = +[AVTFunCamAvatarPickerStyle defaultLayoutStyle];
  v7 = [(MessagesViewController *)self avatarStore];
  v67 = v6;
  v8 = [AVTFunCamAvatarPickerController funCamAvatarPickerControllerForStore:v7 style:v6];
  [(MessagesViewController *)self setPickerController:v8];

  v9 = [(MessagesViewController *)self pickerController];
  [v9 setPresenterDelegate:self];

  v10 = [(MessagesViewController *)self avatarPickerDelegate];
  v11 = [(MessagesViewController *)self pickerController];
  [v11 setAvatarPickerDelegate:v10];

  v12 = [(MessagesViewController *)self pickerController];
  [(MessagesViewController *)self addChildViewController:v12];

  v13 = [(MessagesViewController *)self pickerController];
  v14 = [v13 view];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [(MessagesViewController *)self view];
  v16 = [(MessagesViewController *)self pickerController];
  v17 = [v16 view];
  [v15 addSubview:v17];

  v66 = [(MessagesViewController *)self view];
  v64 = [v66 topAnchor];
  v65 = [(MessagesViewController *)self pickerController];
  v63 = [v65 view];
  v62 = [v63 topAnchor];
  v61 = [v64 constraintEqualToAnchor:v62];
  v69[0] = v61;
  v60 = [(MessagesViewController *)self view];
  v58 = [v60 leftAnchor];
  v59 = [(MessagesViewController *)self pickerController];
  v57 = [v59 view];
  v56 = [v57 leftAnchor];
  v55 = [v58 constraintEqualToAnchor:v56];
  v69[1] = v55;
  v54 = [(MessagesViewController *)self view];
  v52 = [v54 rightAnchor];
  v53 = [(MessagesViewController *)self pickerController];
  v51 = [v53 view];
  v18 = [v51 rightAnchor];
  v19 = [v52 constraintEqualToAnchor:v18];
  v69[2] = v19;
  v20 = [(MessagesViewController *)self view];
  v21 = [v20 bottomAnchor];
  v22 = [(MessagesViewController *)self pickerController];
  v23 = [v22 view];
  v24 = [v23 bottomAnchor];
  v25 = [v21 constraintEqualToAnchor:v24];
  v69[3] = v25;
  v26 = [NSArray arrayWithObjects:v69 count:4];
  [(MessagesViewController *)self setConstraints:v26];

  v27 = [(MessagesViewController *)self view];
  v28 = [(MessagesViewController *)self constraints];
  [v27 addConstraints:v28];

  v29 = [(MessagesViewController *)self pickerController];
  [v29 didMoveToParentViewController:self];

  v30 = +[NSBundle mainBundle];
  v31 = [v30 bundleIdentifier];
  LODWORD(v21) = [v31 isEqualToString:@"com.apple.InCallService"];

  if (v21)
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
      v34 = [(MessagesViewController *)self pickerController];
      v35 = [v34 view];
      [v35 setAlpha:0.0];

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

      v45 = [(MessagesViewController *)self splashViewController];
      [v45 setDelegate:self];

      v46 = [(MessagesViewController *)self splashViewController];
      v47 = [v46 view];
      [v47 setAlpha:0.0];

      v48 = [(MessagesViewController *)self view];
      v49 = [(MessagesViewController *)self splashViewController];
      v50 = [v49 view];
      [v48 addSubview:v50];
    }
  }
}

- (void)didBecomeActiveWithConversation:(id)a3
{
  v7.receiver = self;
  v7.super_class = MessagesViewController;
  [(MessagesViewController *)&v7 didBecomeActiveWithConversation:a3];
  v4 = [(MessagesViewController *)self parentMessagesViewController];
  v5 = [v4 presentationStyle] == &dword_0 + 1;

  v6 = [(MessagesViewController *)self pickerController];
  [v6 setMode:v5];
}

- (void)setAvatarPickerDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_avatarPickerDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_avatarPickerDelegate, obj);
    v5 = [(MessagesViewController *)self pickerController];

    if (v5)
    {
      v6 = [(MessagesViewController *)self pickerController];
      [v6 setAvatarPickerDelegate:obj];
    }
  }
}

- (AVTAvatarPickerDelegate)avatarPickerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_avatarPickerDelegate);

  return WeakRetained;
}

- (void)willTransitionToPresentationStyle:(unint64_t)a3
{
  v5 = [(MessagesViewController *)self showsSplashScreen];
  if (!a3 && v5)
  {
    [(MessagesViewController *)self dismissLaunchScreenIfNecessary];
  }

  v6 = [(MessagesViewController *)self pickerController];
  [v6 setMode:a3 == 1];
}

- (void)didTransitionToPresentationStyle:(unint64_t)a3
{
  if ([(MessagesViewController *)self showsSplashScreen])
  {
    v5 = [(MessagesViewController *)self splashViewController];
    v4 = [v5 view];
    [v4 setAlpha:1.0];
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

- (void)splashScreenViewControllerDidConfirm:(id)a3
{
  AVTUISetHasDisplayedAnimojiSplashScreen();
  AVTUISetHasDisplayedCameraEffectsSplashScreen();
  AVTUISetHasDisplayedCameraEffectsCameraDisclosureSplashScreen();

  [(MessagesViewController *)self dismissLaunchScreenIfNecessary];
}

@end