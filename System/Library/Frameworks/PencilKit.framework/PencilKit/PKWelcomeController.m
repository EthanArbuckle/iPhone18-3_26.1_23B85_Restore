@interface PKWelcomeController
+ (void)resetEducationPane;
- (BOOL)presentHandwritingEducationPaneIfNecessaryIn:(id)a3 withFeatures:(unint64_t)a4;
- (PKWelcomeController)init;
- (UIViewController)pencilEducationPanePresenter;
- (void)dismissPresentedPencilEducationPane;
- (void)presentEducationPaneOfType:(int64_t)a3 in:(id)a4 withFeatures:(unint64_t)a5;
- (void)toolPickerDidShow;
@end

@implementation PKWelcomeController

- (PKWelcomeController)init
{
  v6.receiver = self;
  v6.super_class = PKWelcomeController;
  v2 = [(PKWelcomeController *)&v6 init];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:v2 selector:sel_toolPickerDidShow name:@"PKToolPickerDidShowNotification" object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:v2 selector:sel_didEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];

  return v2;
}

- (void)toolPickerDidShow
{
  v2 = +[PKHandwritingEducationPaneSettings sharedInstance];
  [(PKHandwritingEducationPaneSettings *)v2 userHasDrawn];
}

- (BOOL)presentHandwritingEducationPaneIfNecessaryIn:(id)a3 withFeatures:(unint64_t)a4
{
  v6 = a3;
  v7 = [(PKWelcomeController *)self pencilEducationPanePresenter];

  if (!v7 && (hasCheckedThisLaunch & 1) == 0 && (hasCheckedThisLaunch = 1, +[PKHandwritingEducationPaneSettings sharedInstance](), v8 = objc_claimAutoreleasedReturnValue(), User = [(PKHandwritingEducationPaneSettings *)v8 isCurrentSystemVersionEqualToLastUserDrawn], v8, User) && (+[PKHandwritingEducationPaneSettings sharedInstance], v10 = objc_claimAutoreleasedReturnValue(), v11 = [(PKHandwritingEducationPaneSettings *)v10 seenFeatures], v10, PKIsPadDevice()) && CHGetPersonalizedSynthesisSupportState() >= 3 && PKCurrentAppSupportsRefinement())
  {
    v12 = a4 & ~v11;
    v13 = [objc_opt_class() hasAutoRefineLocaleEnabled];
    v14 = 0;
    if (v12 && v13)
    {
      [(PKWelcomeController *)self presentEducationPaneOfType:8 in:v6 withFeatures:v12];
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)presentEducationPaneOfType:(int64_t)a3 in:(id)a4 withFeatures:(unint64_t)a5
{
  v8 = a4;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2050000000;
  v9 = _MergedGlobals_163;
  v38 = _MergedGlobals_163;
  if (!_MergedGlobals_163)
  {
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __getPNPWelcomeControllerClass_block_invoke;
    v33 = &unk_1E82D6498;
    v34 = &v35;
    __getPNPWelcomeControllerClass_block_invoke(&v30);
    v9 = v36[3];
  }

  v10 = v9;
  _Block_object_dispose(&v35, 8);
  v11 = [v9 controllerWithType:a3 buttonType:0 deviceType:0 delegate:self];
  [v11 setFeatures:a5];
  v12 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v11];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2050000000;
  v13 = qword_1ED6A5438;
  v38 = qword_1ED6A5438;
  if (!qword_1ED6A5438)
  {
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __getPNPWizardViewControllerClass_block_invoke;
    v33 = &unk_1E82D6498;
    v34 = &v35;
    __getPNPWizardViewControllerClass_block_invoke(&v30);
    v13 = v36[3];
  }

  v14 = v13;
  _Block_object_dispose(&v35, 8);
  [v13 preferredContentSize];
  v16 = v15;
  v18 = v17;
  v19 = [v12 view];
  v20 = [v19 widthAnchor];
  v21 = [v20 constraintEqualToConstant:v16];
  [v21 setActive:1];

  v22 = [v12 view];
  v23 = [v22 heightAnchor];
  v24 = [v23 constraintEqualToConstant:v18];
  [v24 setActive:1];

  v25 = [v12 view];
  v26 = [v25 layer];
  [v26 setCornerRadius:16.0];

  [v12 setModalPresentationStyle:2];
  [(PKWelcomeController *)self setPencilEducationPanePresenter:v8];
  [v8 presentModalViewController:v12 withTransition:3];
  v27 = +[PKHandwritingEducationPaneSettings sharedInstance];
  v28 = [(PKHandwritingEducationPaneSettings *)v27 seenFeatures];

  v29 = +[PKHandwritingEducationPaneSettings sharedInstance];
  [(PKHandwritingEducationPaneSettings *)v29 setSeenFeatures:?];
}

- (void)dismissPresentedPencilEducationPane
{
  v3 = [(PKWelcomeController *)self pencilEducationPanePresenter];
  [v3 dismissModalViewControllerWithTransition:7];

  [(PKWelcomeController *)self setPencilEducationPanePresenter:0];
}

+ (void)resetEducationPane
{
  [PKSettingsDaemon setAutoRefineEnabled:0];
  v2 = +[PKHandwritingEducationPaneSettings sharedInstance];
  [(PKHandwritingEducationPaneSettings *)v2 setSeenFeatures:?];

  hasCheckedThisLaunch = 0;
}

- (UIViewController)pencilEducationPanePresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_pencilEducationPanePresenter);

  return WeakRetained;
}

@end