@interface ClarityUIAppleIDController
- (ClarityUIAppleIDController)initWithAppleID:(id)a3 delegate:(id)a4 andCompletion:(id)a5;
- (ClarityUIOnboardingDismissalDelegate)delegate;
- (void)_changeButtonTapped:(id)a3;
- (void)viewDidLoad;
@end

@implementation ClarityUIAppleIDController

- (ClarityUIAppleIDController)initWithAppleID:(id)a3 delegate:(id)a4 andCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 clarityUI_shortName];
  v12 = [v8 appleID];
  if ([v11 length])
  {
    v13 = AXLocStringKeyForModel();
    v14 = settingsLocString(v13, @"ClarityUISettings");
    v15 = AXCFormattedString();
  }

  else
  {
    v13 = AXLocStringKeyForModel();
    v15 = settingsLocString(v13, @"ClarityUISettings");
  }

  v16 = settingsLocString(@"APPLE_ID_TEXT", @"ClarityUISettings");
  v17 = [NSString localizedStringWithFormat:v16, v12];
  v41.receiver = self;
  v41.super_class = ClarityUIAppleIDController;
  v18 = [(ClarityUIAppleIDController *)&v41 initWithTitle:v15 detailText:v17 icon:0];

  if (v18)
  {
    v35 = v15;
    v36 = v12;
    v37 = v9;
    objc_storeWeak(&v18->_delegate, v9);
    v19 = objc_retainBlock(v10);
    completionHandler = v18->_completionHandler;
    v18->_completionHandler = v19;

    v21 = +[OBBoldTrayButton boldButton];
    v22 = settingsLocString(@"CONTINUE", @"ClarityUISettings");
    [v21 setTitle:v22 forState:0];

    [v21 addTarget:v18 action:"_nextButtonTapped:" forControlEvents:0x2000];
    v23 = [(ClarityUIAppleIDController *)v18 buttonTray];
    [v23 addButton:v21];

    objc_initWeak(&location, v18);
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = __69__ClarityUIAppleIDController_initWithAppleID_delegate_andCompletion___block_invoke;
    v38[3] = &unk_257790;
    objc_copyWeak(&v39, &location);
    v24 = [UIAction actionWithHandler:v38];
    v25 = +[OBLinkTrayButton linkButton];
    v26 = settingsLocString(@"CHANGE_APPLE_ID", @"ClarityUISettings");
    [v25 setTitle:v26 forState:0];

    [v25 addAction:v24 forControlEvents:0x2000];
    v27 = [(ClarityUIAppleIDController *)v18 buttonTray];
    [v27 addButton:v25];

    v28 = settingsLocString(@"APPLE_ID_TITLE_1", @"ClarityUISettings");
    v29 = settingsLocString(@"APPLE_ID_VALUE_1", @"ClarityUISettings");
    v30 = [UIImage systemImageNamed:@"icloud"];
    [(ClarityUIAppleIDController *)v18 addBulletedListItemWithTitle:v28 description:v29 image:v30];

    v31 = settingsLocString(@"APPLE_ID_TITLE_2", @"ClarityUISettings");
    v32 = settingsLocString(@"APPLE_ID_VALUE_2", @"ClarityUISettings");
    v33 = [UIImage systemImageNamed:@"person.2.fill"];
    [(ClarityUIAppleIDController *)v18 addBulletedListItemWithTitle:v31 description:v32 image:v33];

    objc_destroyWeak(&v39);
    objc_destroyWeak(&location);

    v9 = v37;
    v15 = v35;
    v12 = v36;
  }

  return v18;
}

void __69__ClarityUIAppleIDController_initWithAppleID_delegate_andCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AXLogTemp();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Button pressed", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _changeButtonTapped:v3];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = ClarityUIAppleIDController;
  [(ClarityUIAppleIDController *)&v7 viewDidLoad];
  v3 = objc_allocWithZone(UIBarButtonItem);
  v4 = settingsLocString(@"CANCEL", @"ClarityUISettings");
  v5 = [v3 initWithTitle:v4 style:2 target:self action:"_cancelButtonTapped:"];

  v6 = [(ClarityUIAppleIDController *)self navigationItem];
  [v6 setRightBarButtonItem:v5];
}

- (void)_changeButtonTapped:(id)a3
{
  v3 = [(ClarityUIAppleIDController *)self delegate];
  [v3 dimissOnboardingControllerEarlyWithCompletion:&__block_literal_global_36];
}

void __50__ClarityUIAppleIDController__changeButtonTapped___block_invoke(id a1)
{
  v2 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT"];
  v1 = +[LSApplicationWorkspace defaultWorkspace];
  [v1 openSensitiveURL:v2 withOptions:0];
}

- (ClarityUIOnboardingDismissalDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end