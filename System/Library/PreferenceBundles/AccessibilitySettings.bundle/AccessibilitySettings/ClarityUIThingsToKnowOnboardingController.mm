@interface ClarityUIThingsToKnowOnboardingController
- (ClarityUIThingsToKnowOnboardingController)initWithCompletion:(id)completion;
- (void)viewDidLoad;
@end

@implementation ClarityUIThingsToKnowOnboardingController

- (ClarityUIThingsToKnowOnboardingController)initWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = settingsLocString(@"THINGS_TO_KNOW", @"ClarityUISettings");
  v6 = AXLocStringKeyForModel();
  v7 = settingsLocString(v6, @"ClarityUISettings");
  v8 = settingsLocString(v7, @"ClarityUISettings");
  v41.receiver = self;
  v41.super_class = ClarityUIThingsToKnowOnboardingController;
  v9 = [(ClarityUIThingsToKnowOnboardingController *)&v41 initWithTitle:v5 detailText:v8 icon:0 contentLayout:2];

  if (v9)
  {
    v10 = objc_retainBlock(completionCopy);
    completionHandler = v9->_completionHandler;
    v9->_completionHandler = v10;

    v40 = 0;
    v36 = [[CoreTelephonyClient alloc] initWithQueue:&_dispatch_main_q];
    v12 = [v36 getStewieSupport:&v40];
    v13 = v40;

    if (v13)
    {
      v14 = CLFLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(ClarityUIThingsToKnowOnboardingController *)v13 initWithCompletion:v14];
      }
    }

    v15 = +[OBBulletedListItemLinkButton linkButton];
    configuration = [v15 configuration];

    v17 = settingsLocString(@"LEARN_MORE_LINK", @"ClarityUISettings");
    [configuration setTitle:v17];

    [configuration setContentInsets:{20.0, 0.0, 20.0, 0.0}];
    objc_initWeak(&location, v9);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = __64__ClarityUIThingsToKnowOnboardingController_initWithCompletion___block_invoke;
    v37[3] = &unk_257790;
    objc_copyWeak(&v38, &location);
    v18 = [UIAction actionWithHandler:v37];
    v19 = [OBBulletedListItemLinkButton buttonWithConfiguration:configuration primaryAction:v18];
    v20 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v20 userInterfaceIdiom];

    if (!userInterfaceIdiom)
    {
      if (v12)
      {
        v22 = settingsLocString(@"THINGS_TO_KNOW_SOS_EXPLANATION_SATELLITE", @"ClarityUISettings");
      }

      else
      {
        v23 = AXLocStringKeyForHomeButtonAndExclusiveModel();
        v22 = settingsLocString(v23, @"ClarityUISettings");
      }

      v24 = settingsLocString(@"THINGS_TO_KNOW_SOS", @"ClarityUISettings");
      v25 = +[UIColor systemRedColor];
      [(ClarityUIThingsToKnowOnboardingController *)v9 addBulletedListItemWithTitle:v24 description:v22 symbolName:@"sos.circle.fill" tintColor:v25];
    }

    v26 = settingsLocString(@"THINGS_TO_KNOW_NOTIFICATIONS", @"ClarityUISettings");
    v27 = settingsLocString(@"THINGS_TO_KNOW_NOTIFICATIONS_EXPLANATION", @"ClarityUISettings");
    v28 = +[UIColor systemBlueColor];
    [(ClarityUIThingsToKnowOnboardingController *)v9 addBulletedListItemWithTitle:v26 description:v27 symbolName:@"bell.fill" tintColor:v28];

    v29 = settingsLocString(@"THINGS_TO_KNOW_SETTINGS", @"ClarityUISettings");
    v30 = settingsLocString(@"THINGS_TO_KNOW_SETTINGS_EXPLANATION", @"ClarityUISettings");
    v31 = +[UIColor systemGreenColor];
    [(ClarityUIThingsToKnowOnboardingController *)v9 addBulletedListItemWithTitle:v29 description:v30 symbolName:@"person.fill" tintColor:v31 linkButton:v19];

    v32 = +[OBBoldTrayButton boldButton];
    v33 = settingsLocString(@"GET_STARTED", @"ClarityUISettings");
    [v32 setTitle:v33 forState:0];

    [v32 addTarget:v9 action:"_nextButtonTapped:" forControlEvents:0x2000];
    buttonTray = [(ClarityUIThingsToKnowOnboardingController *)v9 buttonTray];
    [buttonTray addButton:v32];

    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __64__ClarityUIThingsToKnowOnboardingController_initWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _learnMoreButtonTapped:0];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ClarityUIThingsToKnowOnboardingController;
  [(ClarityUIThingsToKnowOnboardingController *)&v5 viewDidLoad];
  v3 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:self action:"_cancelButtonTapped:"];
  navigationItem = [(ClarityUIThingsToKnowOnboardingController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v3];
}

- (void)initWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error getting SOS Satellite support: %@", &v2, 0xCu);
}

@end