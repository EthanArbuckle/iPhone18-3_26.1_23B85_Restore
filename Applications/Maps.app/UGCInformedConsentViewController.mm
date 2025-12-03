@interface UGCInformedConsentViewController
+ (void)presentIfNeededWithPresentingViewController:(id)controller presentationContext:(int64_t)context completion:(id)completion;
- (UGCInformedConsentViewController)initWithCompletion:(id)completion;
- (void)_continuePressed;
- (void)_invokeCompletionWithHasGivenConsent:(BOOL)consent;
- (void)_notNowPressed;
- (void)_setupPrivacyController;
- (void)viewDidLoad;
@end

@implementation UGCInformedConsentViewController

- (void)_invokeCompletionWithHasGivenConsent:(BOOL)consent
{
  consentCopy = consent;
  HasUserConsentedToAddingContributions = MKGetHasUserConsentedToAddingContributions();
  MKSetHasUserConsentedToAddingContributions();
  +[RatingRequestHomeAvailability setHasShownTipKitAlertOnProactiveTray];
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100CC87DC;
  v7[3] = &unk_1016505E8;
  objc_copyWeak(&v8, &location);
  v9 = consentCopy;
  v10 = ((HasUserConsentedToAddingContributions != 1) | ~consent) & (HasUserConsentedToAddingContributions != 2 || consent) & 1;
  [(UGCInformedConsentViewController *)self dismissViewControllerAnimated:1 completion:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_notNowPressed
{
  [(UGCInformedConsentViewController *)self _captureUserAction:25 withValue:0];

  [(UGCInformedConsentViewController *)self _invokeCompletionWithHasGivenConsent:0];
}

- (void)_continuePressed
{
  [(UGCInformedConsentViewController *)self _captureUserAction:98 withValue:0];

  [(UGCInformedConsentViewController *)self _invokeCompletionWithHasGivenConsent:1];
}

- (void)_setupPrivacyController
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Share Your Experience [UGC]" value:@"localized string not found" table:0];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Share Your Experience Description [UGC]" value:@"localized string not found" table:0];

  v7 = [UIImage systemImageNamed:@"hand.thumbsup"];
  if ((MapsFeature_IsEnabled_ARPCommunityID() & 1) == 0)
  {
    [(UGCInformedConsentViewController *)self addBulletedListItemWithTitle:v4 description:v6 image:v7];
  }

  v37 = v7;
  v38 = v6;
  v39 = v4;
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"Siri Suggestions [UGC]" value:@"localized string not found" table:0];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Siri Suggestions Description [UGC]" value:@"localized string not found" table:0];

  [UIImage systemImageNamed:@"location"];
  v35 = v11;
  v34 = v36 = v9;
  [(UGCInformedConsentViewController *)self addBulletedListItemWithTitle:v9 description:v11 image:?];
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"Photo Credit [UGC]" value:@"localized string not found" table:0];

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"Photo Credit Description [UGC]" value:@"localized string not found" table:0];

  v16 = [UIImage systemImageNamed:@"camera.badge.ellipsis"];
  v32 = v15;
  v33 = v13;
  [(UGCInformedConsentViewController *)self addBulletedListItemWithTitle:v13 description:v15 image:v16];
  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"Community Safety [UGC]" value:@"localized string not found" table:0];

  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"Community Safety Description [UGC]" value:@"localized string not found" table:0];

  v21 = [UIImage systemImageNamed:@"person.3"];
  if ((MapsFeature_IsEnabled_ARPCommunityID() & 1) == 0)
  {
    [(UGCInformedConsentViewController *)self addBulletedListItemWithTitle:v18 description:v20 image:v21];
  }

  v22 = +[OBBoldTrayButton boldButton];
  v23 = +[NSBundle mainBundle];
  v24 = [v23 localizedStringForKey:@"Continue [UGC]" value:@"localized string not found" table:0];
  [v22 setTitle:v24 forState:0];

  [v22 addTarget:self action:"_continuePressed" forControlEvents:64];
  v25 = +[OBLinkTrayButton linkButton];
  v26 = +[NSBundle mainBundle];
  v27 = [v26 localizedStringForKey:@"Not Now [UGC]" value:@"localized string not found" table:0];
  [v25 setTitle:v27 forState:0];

  [v25 addTarget:self action:"_notNowPressed" forControlEvents:64];
  buttonTray = [(UGCInformedConsentViewController *)self buttonTray];
  v40 = @"com.apple.onboarding.ratingsAndPhotos";
  v29 = [NSArray arrayWithObjects:&v40 count:1];
  [buttonTray setPrivacyLinkForBundles:v29];

  buttonTray2 = [(UGCInformedConsentViewController *)self buttonTray];
  [buttonTray2 addButton:v22];

  buttonTray3 = [(UGCInformedConsentViewController *)self buttonTray];
  [buttonTray3 addButton:v25];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = UGCInformedConsentViewController;
  [(UGCInformedConsentViewController *)&v6 viewDidLoad];
  [(UGCInformedConsentViewController *)self _setupPrivacyController];
  presentationContext = [(UGCInformedConsentViewController *)self presentationContext];
  v4 = @"placecard";
  if (presentationContext != 1)
  {
    v4 = 0;
  }

  if (presentationContext == 2)
  {
    v5 = @"suggestion";
  }

  else
  {
    v5 = v4;
  }

  [(UGCInformedConsentViewController *)self _captureUserAction:45 withValue:v5];
}

- (UGCInformedConsentViewController)initWithCompletion:(id)completion
{
  completionCopy = completion;
  IsEnabled_ARPCommunityID = MapsFeature_IsEnabled_ARPCommunityID();
  v6 = +[NSBundle mainBundle];
  v7 = v6;
  if (IsEnabled_ARPCommunityID)
  {
    v8 = @"Contributing Photos to Maps [UGC]";
  }

  else
  {
    v8 = @"Introducing Ratings and Photos [UGC]";
  }

  v9 = [v6 localizedStringForKey:v8 value:@"localized string not found" table:0];

  v14.receiver = self;
  v14.super_class = UGCInformedConsentViewController;
  v10 = [(UGCInformedConsentViewController *)&v14 initWithTitle:v9 detailText:0 icon:0];
  if (v10)
  {
    v11 = [completionCopy copy];
    completion = v10->_completion;
    v10->_completion = v11;
  }

  return v10;
}

+ (void)presentIfNeededWithPresentingViewController:(id)controller presentationContext:(int64_t)context completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  if (completionCopy)
  {
    if (MKGetHasUserConsentedToAddingContributions() == 1)
    {
      completionCopy[2](completionCopy, 1, 0);
    }

    else
    {
      v9 = [[UGCInformedConsentViewController alloc] initWithCompletion:completionCopy];
      [(UGCInformedConsentViewController *)v9 setModalPresentationStyle:2];
      [(UGCInformedConsentViewController *)v9 setPresentationContext:context];
      if (sub_10000FA08(v9) == 5)
      {
        [controllerCopy presentViewController:v9 animated:1 completion:0];
      }

      else
      {
        [controllerCopy _maps_topMostPresentViewController:v9 animated:1 completion:0];
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *v10 = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: completion != ((void *)0)", v10, 2u);
  }
}

@end