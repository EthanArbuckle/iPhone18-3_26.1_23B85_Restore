@interface UGCThirdPartyPhotoSharingSplashViewController
+ (void)checkShouldPresentPhotoSharingSplash:(id)splash;
- (id)_obViewController;
- (void)_setThirdPartyPhotoShareEnabled:(BOOL)enabled;
- (void)viewDidLoad;
@end

@implementation UGCThirdPartyPhotoSharingSplashViewController

- (void)_setThirdPartyPhotoShareEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  objc_initWeak(&location, self);
  v5 = +[UGCThirdPartyPhotoSharingPreferencesManager sharedManager];
  thirdPartyPhotoSharingPreference = [(UGCThirdPartyPhotoSharingSplashViewController *)self thirdPartyPhotoSharingPreference];
  version = [thirdPartyPhotoSharingPreference version];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100F823EC;
  v8[3] = &unk_10165F1F8;
  objc_copyWeak(&v9, &location);
  [v5 updateThirdPartyPhotoSharingPreferences:enabledCopy versionID:version completion:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)_obViewController
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[UGC] Third Party Photo Sharing title" value:@"localized string not found" table:0];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"[UGC] Third Party Photo Sharing subtitle" value:@"localized string not found" table:0];

  v7 = [UIImage systemImageNamed:@"photo.on.rectangle.angled"];
  v8 = [[OBWelcomeController alloc] initWithTitle:v4 detailText:v6 icon:v7];
  [v8 setModalPresentationStyle:2];
  v9 = +[OBBoldTrayButton boldButton];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"[UGC] Allow button" value:@"localized string not found" table:0];
  [v9 setTitle:v11 forState:0];

  [v9 addTarget:self action:"_sharePressed" forControlEvents:64];
  buttonTray = [v8 buttonTray];
  [buttonTray addButton:v9];

  v13 = +[OBLinkTrayButton linkButton];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"[UGC] Don’t Allow button" value:@"localized string not found" table:0];
  [v13 setTitle:v15 forState:0];

  [v13 addTarget:self action:"_noThanksPressed" forControlEvents:64];
  buttonTray2 = [v8 buttonTray];
  [buttonTray2 addButton:v13];

  return v8;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = UGCThirdPartyPhotoSharingSplashViewController;
  [(UGCThirdPartyPhotoSharingSplashViewController *)&v13 viewDidLoad];
  presentationController = [(UGCThirdPartyPhotoSharingSplashViewController *)self presentationController];
  [presentationController setDelegate:self];

  _obViewController = [(UGCThirdPartyPhotoSharingSplashViewController *)self _obViewController];
  [(UGCThirdPartyPhotoSharingSplashViewController *)self addChildViewController:_obViewController];
  view = [(UGCThirdPartyPhotoSharingSplashViewController *)self view];
  view2 = [_obViewController view];
  [view addSubview:view2];

  [_obViewController didMoveToParentViewController:self];
  view3 = [_obViewController view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view4 = [_obViewController view];
  view5 = [(UGCThirdPartyPhotoSharingSplashViewController *)self view];
  LODWORD(v10) = 1148846080;
  v11 = [view4 _maps_constraintsEqualToEdgesOfView:view5 priority:v10];
  allConstraints = [v11 allConstraints];
  [NSLayoutConstraint activateConstraints:allConstraints];
}

+ (void)checkShouldPresentPhotoSharingSplash:(id)splash
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100F829E8;
  v4[3] = &unk_10165F1D0;
  splashCopy = splash;
  v3 = splashCopy;
  [UGCReviewedPlaceManager fetchAllHistoryObjectsWithPhotosFromStorageWithCompletion:v4];
}

@end