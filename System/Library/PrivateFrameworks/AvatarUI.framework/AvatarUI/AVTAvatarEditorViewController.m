@interface AVTAvatarEditorViewController
+ (BOOL)shouldShowSplashScreen;
+ (id)defaultSessionProvider;
+ (id)viewControllerForCreatingAvatarInStore:(id)a3;
+ (id)viewControllerForCreatingAvatarInStore:(id)a3 avtViewSessionProvider:(id)a4;
+ (id)viewControllerForEditingAvatar:(id)a3 avtViewSessionProvider:(id)a4 store:(id)a5;
+ (id)viewControllerForEditingAvatar:(id)a3 store:(id)a4;
- (AVTAvatarEditorViewController)initWithAvatarRecord:(id)a3 avtViewSessionProvider:(id)a4 store:(id)a5 enviroment:(id)a6 isCreating:(BOOL)a7;
- (AVTAvatarEditorViewControllerDelegate)delegate;
- (BOOL)disableAvatarSnapshotting;
- (UIEdgeInsets)additionalSafeAreaInsets;
- (id)appropriatePresentationController;
- (id)keyCommands;
- (id)visibleLayout;
- (void)applyLayout:(id)a3;
- (void)attributeEditorDidMakeFirstSelection:(id)a3;
- (void)cancel:(id)a3;
- (void)configureEditorNavigationItems;
- (void)configurePPTMemoji;
- (void)configureSplashNavigationItems;
- (void)confirmCancel:(id)a3;
- (void)controllerPresentationWillObstructView:(id)a3;
- (void)enableDoneButton:(BOOL)a3;
- (void)finish:(id)a3;
- (void)handleDiscardAttempt;
- (void)loadAttributeEditorViewWithAvatarRecord:(id)a3;
- (void)loadSplashScreen;
- (void)prepareForAnimatedTransitionWithLayout:(id)a3 completionBlock:(id)a4;
- (void)returnPressed:(id)a3;
- (void)setDisableAvatarSnapshotting:(BOOL)a3;
- (void)setupInitialViewState;
- (void)splashScreenViewControllerDidCancel:(id)a3;
- (void)splashScreenViewControllerDidConfirm:(id)a3;
- (void)toolbar:(id)a3 didSelectButton:(id)a4 atIndex:(unint64_t)a5;
- (void)updateToolBarForLayout:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AVTAvatarEditorViewController

+ (BOOL)shouldShowSplashScreen
{
  if (AVTUIAlwaysShowSplashScreen_once())
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v2 = AVTUIHasDisplayedSplashScreen() ^ 1;
  }

  if ((AVTUIForceCameraDisclosures_once() & 1) != 0 || AVTDeviceIsGreenTea())
  {
    v3 = AVTUIHasDisplayedCameraDisclosureSplashScreen() ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return (v2 | v3) & 1;
}

+ (id)defaultSessionProvider
{
  v2 = +[AVTViewSessionProvider creatorForAVTView];
  v3 = +[AVTUIEnvironment defaultEnvironment];
  [AVTViewSessionProvider backingSizeForEnvironment:v3];
  v6 = [[AVTViewSessionProvider alloc] initWithAVTViewBackingSize:v2 viewCreator:v3 environment:v4, v5];

  return v6;
}

+ (id)viewControllerForEditingAvatar:(id)a3 store:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 defaultSessionProvider];
  v9 = [a1 viewControllerForEditingAvatar:v7 avtViewSessionProvider:v8 store:v6];

  return v9;
}

+ (id)viewControllerForEditingAvatar:(id)a3 avtViewSessionProvider:(id)a4 store:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  if (([v9 conformsToProtocol:&unk_1F39DD3B0] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object protocol for %@", v9}];
  }

  v11 = v9;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v8}];
  }

  v12 = v8;
  v13 = +[AVTUIEnvironment defaultEnvironment];
  v14 = [[a1 alloc] initWithAvatarRecord:v12 avtViewSessionProvider:v10 store:v11 enviroment:v13 isCreating:0];

  return v14;
}

+ (id)viewControllerForCreatingAvatarInStore:(id)a3
{
  v4 = a3;
  v5 = [a1 defaultSessionProvider];
  v6 = [a1 viewControllerForCreatingAvatarInStore:v4 avtViewSessionProvider:v5];

  return v6;
}

+ (id)viewControllerForCreatingAvatarInStore:(id)a3 avtViewSessionProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v6 conformsToProtocol:&unk_1F39DD3B0] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object protocol for %@", v6}];
  }

  v8 = v6;
  v9 = +[AVTUIEnvironment defaultEnvironment];
  v10 = [MEMORY[0x1E698E320] defaultAvatarRecord];
  v11 = [[a1 alloc] initWithAvatarRecord:v10 avtViewSessionProvider:v7 store:v8 enviroment:v9 isCreating:1];

  return v11;
}

- (AVTAvatarEditorViewController)initWithAvatarRecord:(id)a3 avtViewSessionProvider:(id)a4 store:(id)a5 enviroment:(id)a6 isCreating:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v22.receiver = self;
  v22.super_class = AVTAvatarEditorViewController;
  v17 = [(AVTAvatarEditorViewController *)&v22 initWithNibName:0 bundle:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_initialAvatarRecord, a3);
    objc_storeStrong(&v18->_store, a5);
    objc_storeStrong(&v18->_environment, a6);
    v19 = [v16 logger];
    logger = v18->_logger;
    v18->_logger = v19;

    objc_storeStrong(&v18->_avtViewSessionProvider, a4);
    v18->_isCreating = a7;
  }

  return v18;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = AVTAvatarEditorViewController;
  [(AVTAvatarEditorViewController *)&v7 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  v4 = [(AVTAvatarEditorViewController *)self view];
  [v4 setBackgroundColor:v3];

  [(AVTAvatarEditorViewController *)self setupInitialViewState];
  v5 = [(AVTAvatarEditorViewController *)self navigationItem];
  [v5 setLargeTitleDisplayMode:2];

  v6 = [(AVTAvatarEditorViewController *)self navigationItem];
  [v6 _setBackgroundHidden:1];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = AVTAvatarEditorViewController;
  [(AVTAvatarEditorViewController *)&v5 viewWillAppear:a3];
  v4 = [(AVTAvatarEditorViewController *)self visibleLayout];
  [(AVTAvatarEditorViewController *)self updateToolBarForLayout:v4];
}

- (void)viewDidAppear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = AVTAvatarEditorViewController;
  [(AVTAvatarEditorViewController *)&v12 viewDidAppear:a3];
  v4 = [(AVTAvatarEditorViewController *)self navigationController];
  if (v4)
  {
    v5 = [(AVTAvatarEditorViewController *)self navigationController];
    v6 = [v5 viewControllers];
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = v7 == self;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(AVTAvatarEditorViewController *)self navigationController];

  if (v8 || !v9)
  {
    v10 = [(AVTAvatarEditorViewController *)self appropriatePresentationController];
    v11 = [v10 delegate];

    if (!v11)
    {
      [v10 setDelegate:self];
    }
  }
}

- (id)appropriatePresentationController
{
  v2 = self;
  v3 = [(AVTAvatarEditorViewController *)v2 parentViewController];

  if (v3)
  {
    do
    {
      v4 = [(AVTAvatarEditorViewController *)v2 parentViewController];

      v5 = [(AVTAvatarEditorViewController *)v4 parentViewController];

      v2 = v4;
    }

    while (v5);
  }

  else
  {
    v4 = v2;
  }

  v6 = [(AVTAvatarEditorViewController *)v4 presentationController];

  return v6;
}

- (void)setDisableAvatarSnapshotting:(BOOL)a3
{
  v3 = a3;
  v5 = [(AVTAvatarEditorViewController *)self attributeEditorViewController];

  if (v5)
  {
    v6 = [(AVTAvatarEditorViewController *)self attributeEditorViewController];
    [v6 setDisableAvatarSnapshotting:v3];
  }
}

- (BOOL)disableAvatarSnapshotting
{
  v2 = [(AVTAvatarEditorViewController *)self attributeEditorViewController];
  v3 = [v2 disableAvatarSnapshotting];

  return v3;
}

- (void)prepareForAnimatedTransitionWithLayout:(id)a3 completionBlock:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(AVTAvatarEditorViewController *)self attributeEditorViewController];

  if (v7)
  {
    [(AVTAvatarEditorViewController *)self updateToolBarForLayout:v9];
    v8 = [(AVTAvatarEditorViewController *)self attributeEditorViewController];
    [v8 prepareForAnimatedTransitionWithLayout:v9 completionBlock:v6];
  }
}

- (void)applyLayout:(id)a3
{
  v6 = a3;
  v4 = [(AVTAvatarEditorViewController *)self attributeEditorViewController];

  if (v4)
  {
    [(AVTAvatarEditorViewController *)self updateToolBarForLayout:v6];
    v5 = [(AVTAvatarEditorViewController *)self attributeEditorViewController];
    [v5 applyLayout:v6];
  }
}

- (id)visibleLayout
{
  v3 = [(AVTAvatarEditorViewController *)self attributeEditorViewController];

  if (v3)
  {
    v4 = [(AVTAvatarEditorViewController *)self attributeEditorViewController];
    v5 = [v4 visibleLayout];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setupInitialViewState
{
  if ([objc_opt_class() shouldShowSplashScreen])
  {

    [(AVTAvatarEditorViewController *)self loadSplashScreen];
  }

  else
  {
    v3 = [(AVTAvatarEditorViewController *)self initialAvatarRecord];
    [(AVTAvatarEditorViewController *)self loadAttributeEditorViewWithAvatarRecord:v3];
  }
}

- (void)loadSplashScreen
{
  v27 = objc_alloc_init(AVTSplashScreenConfiguration);
  v3 = AVTAvatarUIBundle();
  v4 = [v3 localizedStringForKey:@"MEMOJI_SPLASH_TITLE" value:&stru_1F39618F0 table:@"Localized"];
  [(AVTSplashScreenConfiguration *)v27 setTitleString:v4];

  LODWORD(v3) = AVTUIIsFacetrackingSupported();
  v5 = AVTAvatarUIBundle();
  v6 = v5;
  if (v3)
  {
    v7 = @"MEMOJI_SPLASH_SUBTITLE";
  }

  else
  {
    v7 = @"MEMOJI_SPLASH_SUBTITLE_NO_FACE_TRACKING";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_1F39618F0 table:@"Localized"];
  [(AVTSplashScreenConfiguration *)v27 setSubTitleString:v8];

  v9 = AVTAvatarUIBundle();
  v10 = [v9 localizedStringForKey:@"MEMOJI_SPLASH_CREATE_YOURS" value:&stru_1F39618F0 table:@"Localized"];
  [(AVTSplashScreenConfiguration *)v27 setButtonString:v10];

  v11 = AVTAvatarEditorSplashVideo();
  [(AVTSplashScreenConfiguration *)v27 setPrimaryPlayerItem:v11];

  v12 = [[AVTSplashScreenViewController alloc] initWithConfiguration:v27];
  splashScreenViewController = self->_splashScreenViewController;
  self->_splashScreenViewController = v12;

  [(AVTSplashScreenViewController *)self->_splashScreenViewController setDelegate:self];
  v14 = [(AVTAvatarEditorViewController *)self view];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [(AVTSplashScreenViewController *)self->_splashScreenViewController view];
  [v23 setFrame:{v16, v18, v20, v22}];

  v24 = [(AVTSplashScreenViewController *)self->_splashScreenViewController view];
  [v24 setAutoresizingMask:18];

  v25 = [(AVTAvatarEditorViewController *)self view];
  v26 = [(AVTSplashScreenViewController *)self->_splashScreenViewController view];
  [v25 addSubview:v26];

  [(AVTAvatarEditorViewController *)self addChildViewController:self->_splashScreenViewController];
  [(AVTSplashScreenViewController *)self->_splashScreenViewController didMoveToParentViewController:self];
  [(AVTAvatarEditorViewController *)self configureSplashNavigationItems];
}

- (void)loadAttributeEditorViewWithAvatarRecord:(id)a3
{
  v4 = a3;
  v5 = [AVTAvatarAttributeEditorViewController alloc];
  v6 = [(AVTAvatarEditorViewController *)self avtViewSessionProvider];
  v7 = [(AVTAvatarEditorViewController *)self environment];
  v8 = [(AVTAvatarAttributeEditorViewController *)v5 initWithAvatarRecord:v4 avtViewSessionProvider:v6 environment:v7 isCreating:[(AVTAvatarEditorViewController *)self isCreating]];

  attributeEditorViewController = self->_attributeEditorViewController;
  self->_attributeEditorViewController = v8;

  [(AVTAvatarAttributeEditorViewController *)self->_attributeEditorViewController setDelegate:self];
  [(AVTAvatarAttributeEditorViewController *)self->_attributeEditorViewController setShouldHideUserInfoView:[(AVTAvatarEditorViewController *)self shouldHideUserInfoView]];
  [(AVTAvatarAttributeEditorViewController *)self->_attributeEditorViewController setEditorPresentationContext:[(AVTAvatarEditorViewController *)self editorPresentationContext]];
  [(AVTAvatarEditorViewController *)self addChildViewController:self->_attributeEditorViewController];
  v10 = [(AVTAvatarEditorViewController *)self view];
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(AVTAvatarAttributeEditorViewController *)self->_attributeEditorViewController view];
  [v19 setFrame:{v12, v14, v16, v18}];

  v20 = [(AVTAvatarAttributeEditorViewController *)self->_attributeEditorViewController view];
  [v20 setAutoresizingMask:18];

  v21 = [(AVTAvatarEditorViewController *)self view];
  v22 = [(AVTAvatarAttributeEditorViewController *)self->_attributeEditorViewController view];
  [v21 addSubview:v22];

  [(AVTAvatarAttributeEditorViewController *)self->_attributeEditorViewController didMoveToParentViewController:self];

  [(AVTAvatarEditorViewController *)self configureEditorNavigationItems];
}

- (void)configureSplashNavigationItems
{
  v3 = [(AVTAvatarEditorViewController *)self environment];
  v4 = [v3 deviceIsMac];

  if ((v4 & 1) == 0)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancel_];
    [(AVTAvatarEditorViewController *)self setCancelButtonItem:v5];

    v7 = [(AVTAvatarEditorViewController *)self cancelButtonItem];
    v6 = [(AVTAvatarEditorViewController *)self navigationItem];
    [v6 setLeftBarButtonItem:v7];
  }
}

- (void)configureEditorNavigationItems
{
  v30[2] = *MEMORY[0x1E69E9840];
  v3 = [(AVTAvatarEditorViewController *)self environment];
  v4 = [v3 deviceIsMac];

  if (v4)
  {
    v5 = [(AVTAvatarEditorViewController *)self toolbar];
    [v5 removeFromSuperview];

    v6 = [AVTToolbarButton alloc];
    v7 = AVTAvatarUIBundle();
    v8 = [v7 localizedStringForKey:@"DONE" value:&stru_1F39618F0 table:@"Localized"];
    v9 = [(AVTToolbarButton *)v6 initWithTitle:v8 isDefault:1];

    v10 = [AVTToolbarButton alloc];
    v11 = AVTAvatarUIBundle();
    v12 = [v11 localizedStringForKey:@"CANCEL" value:&stru_1F39618F0 table:@"Localized"];
    v13 = [(AVTToolbarButton *)v10 initWithTitle:v12 isDefault:0];

    v14 = [AVTToolBar alloc];
    v30[0] = v13;
    v30[1] = v9;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    v16 = [(AVTToolBar *)v14 initWithButtons:v15];

    v17 = [(AVTAvatarEditorViewController *)self view];
    [v17 bounds];
    v19 = v18;
    v21 = v20;

    +[AVTToolBar defaultToolBarHeight];
    [(AVTToolBar *)v16 setFrame:0.0, v21 - v22, v19, v22];
    [(AVTToolBar *)v16 setAutoresizingMask:10];
    [(AVTToolBar *)v16 setDelegate:self];
    v23 = [(AVTAvatarEditorViewController *)self view];
    v24 = [(AVTAvatarAttributeEditorViewController *)self->_attributeEditorViewController view];
    [v23 insertSubview:v16 aboveSubview:v24];

    [(AVTAvatarEditorViewController *)self setToolbar:v16];
    v25 = [(AVTAvatarEditorViewController *)self navigationController];
    [v25 setNavigationBarHidden:1];
  }

  else
  {
    v26 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancel_];
    [(AVTAvatarEditorViewController *)self setCancelButtonItem:v26];

    v27 = [(AVTAvatarEditorViewController *)self cancelButtonItem];
    v28 = [(AVTAvatarEditorViewController *)self navigationItem];
    [v28 setLeftBarButtonItem:v27];

    v29 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_finish_];
    [(AVTAvatarEditorViewController *)self setDoneButtonItem:v29];

    v9 = [(AVTAvatarEditorViewController *)self doneButtonItem];
    v13 = [(AVTAvatarEditorViewController *)self navigationItem];
    [(AVTToolbarButton *)v13 setRightBarButtonItem:v9];
  }

  [(AVTAvatarEditorViewController *)self enableDoneButton:[(AVTAvatarEditorViewController *)self isCreating]];
}

- (id)keyCommands
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel_escPressed_];
  v4 = [v3 _nonRepeatableKeyCommand];
  [v2 addObject:v4];

  v5 = MEMORY[0x1E69DCBA0];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\r"];
  v7 = [v5 keyCommandWithInput:v6 modifierFlags:0 action:sel_returnPressed_];

  v8 = [v7 _nonRepeatableKeyCommand];
  [v2 addObject:v8];

  return v2;
}

- (void)updateToolBarForLayout:(id)a3
{
  v21 = a3;
  v4 = [(AVTAvatarEditorViewController *)self toolbar];

  if (v4)
  {
    v5 = [(AVTAvatarEditorViewController *)self toolbar];
    [v5 frame];
    v7 = v6;
    v9 = v8;

    [v21 attributesContentViewFrame];
    v11 = v10;
    [v21 attributesContentViewFrame];
    v13 = v12;
    [MEMORY[0x1E69DD250] inheritedAnimationDuration];
    v15 = v14 > 0.0;
    v16 = [(AVTAvatarEditorViewController *)self toolbar];
    [v16 setIsAnimating:v15];

    v17 = [(AVTAvatarEditorViewController *)self toolbar];
    [v17 setFrame:{v11, v7, v13, v9}];

    v18 = [(AVTAvatarEditorViewController *)self toolbar];
    v19 = [v18 window];

    if (v19)
    {
      v20 = [(AVTAvatarEditorViewController *)self toolbar];
      [v20 layoutIfNeeded];
    }
  }
}

- (UIEdgeInsets)additionalSafeAreaInsets
{
  v3 = [(AVTAvatarEditorViewController *)self toolbar];
  if (v3)
  {
    v4 = [(AVTAvatarEditorViewController *)self toolbar];
    [v4 bounds];
    v6 = v5;

    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
  }

  else
  {
    v9 = *MEMORY[0x1E69DDCE0];
    v8 = *(MEMORY[0x1E69DDCE0] + 8);
    v6 = *(MEMORY[0x1E69DDCE0] + 16);
    v7 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v10 = v9;
  v11 = v8;
  v12 = v6;
  v13 = v7;
  result.right = v13;
  result.bottom = v12;
  result.left = v11;
  result.top = v10;
  return result;
}

- (void)enableDoneButton:(BOOL)a3
{
  v3 = a3;
  v5 = [(AVTAvatarEditorViewController *)self doneButtonItem];
  [v5 setEnabled:v3];

  v6 = [(AVTAvatarEditorViewController *)self toolbar];
  [v6 setEnabled:v3 forButtonAtIndex:1];
}

- (void)cancel:(id)a3
{
  v8 = a3;
  if ([(AVTAvatarEditorViewController *)self hasChanges])
  {
    [(AVTAvatarEditorViewController *)self confirmCancel:v8];
  }

  else
  {
    v4 = [(AVTAvatarEditorViewController *)self attributeEditorViewController];
    [v4 didFinishEditing];

    v5 = [(AVTAvatarEditorViewController *)self splashScreenViewController];

    if (v5)
    {
      v6 = [(AVTAvatarEditorViewController *)self splashScreenViewController];
      [v6 stopPlayingVideos];
    }

    v7 = [(AVTAvatarEditorViewController *)self delegate];
    [v7 avatarEditorViewControllerDidCancel:self];
  }
}

- (void)returnPressed:(id)a3
{
  if ([(AVTAvatarEditorViewController *)self isCreating]|| [(AVTAvatarEditorViewController *)self hasChanges])
  {

    [(AVTAvatarEditorViewController *)self finish:0];
  }
}

- (void)finish:(id)a3
{
  v4 = [(AVTAvatarEditorViewController *)self logger];
  v5 = [(AVTAvatarEditorViewController *)self attributeEditorViewController];
  [v5 didFinishEditing];

  v6 = [(AVTAvatarEditorViewController *)self attributeEditorViewController];
  v7 = [v6 avatarRecord];

  v8 = [(AVTAvatarEditorViewController *)self isCreating];
  v9 = [(AVTAvatarEditorViewController *)self environment];
  v10 = [v9 usageTrackingSession];
  v11 = v10;
  if (v8)
  {
    [v10 didCreateAvatar:v7];
  }

  else
  {
    [v10 didEditAvatar:v7];
  }

  v12 = [(AVTAvatarEditorViewController *)self attributeEditorViewController];
  v13 = [v12 avatar];

  v14 = [(AVTAvatarEditorViewController *)self store];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __40__AVTAvatarEditorViewController_finish___block_invoke;
  v17[3] = &unk_1E7F3ADD8;
  v18 = v4;
  v19 = self;
  v20 = v7;
  v15 = v7;
  v16 = v4;
  [v14 saveAvatarRecord:v15 thumbnailAvatar:v13 completionBlock:v17 thumbnailGenerationCompletionBlock:0];
}

void __40__AVTAvatarEditorViewController_finish___block_invoke(uint64_t a1, int a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    [*(a1 + 32) logDidFinishEditingWithSuccess];
  }

  else
  {
    v5 = [a3 description];
    [v4 logDidFinishEditingWithError:v5];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__AVTAvatarEditorViewController_finish___block_invoke_2;
  v7[3] = &unk_1E7F3AD60;
  v6 = *(a1 + 48);
  v7[4] = *(a1 + 40);
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __40__AVTAvatarEditorViewController_finish___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 avatarEditorViewController:*(a1 + 32) didFinishWithAvatarRecord:*(a1 + 40)];
}

- (void)splashScreenViewControllerDidCancel:(id)a3
{
  v4 = [(AVTAvatarEditorViewController *)self delegate];
  [v4 avatarEditorViewControllerDidCancel:self];
}

- (void)splashScreenViewControllerDidConfirm:(id)a3
{
  AVTUISetHasDisplayedSplashScreen();
  AVTUISetHasDisplayedCameraDisclosureSplashScreen();
  v4 = [(AVTAvatarEditorViewController *)self initialAvatarRecord];
  [(AVTAvatarEditorViewController *)self loadAttributeEditorViewWithAvatarRecord:v4];

  v5 = [(AVTAvatarEditorViewController *)self splashScreenViewController];
  [v5 willMoveToParentViewController:0];

  v6 = [(AVTAvatarEditorViewController *)self splashScreenViewController];
  v7 = [v6 view];
  [v7 removeFromSuperview];

  v8 = [(AVTAvatarEditorViewController *)self splashScreenViewController];
  [v8 removeFromParentViewController];
}

- (void)handleDiscardAttempt
{
  if ([(AVTAvatarEditorViewController *)self hasChanges])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__AVTAvatarEditorViewController_handleDiscardAttempt__block_invoke;
    block[3] = &unk_1E7F3A9B8;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v3 = [(AVTAvatarEditorViewController *)self delegate];
    [v3 avatarEditorViewControllerDidCancel:self];
  }
}

void __53__AVTAvatarEditorViewController_handleDiscardAttempt__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 cancelButtonItem];
  [v1 confirmCancel:v2];
}

- (void)confirmCancel:(id)a3
{
  v4 = a3;
  v5 = [(AVTAvatarEditorViewController *)self isCreating];
  v6 = AVTAvatarUIBundle();
  v7 = v6;
  if (v5)
  {
    v8 = @"EDITING_CREATE_DISCARD_CONFIRMATION_TITLE";
  }

  else
  {
    v8 = @"EDITING_DISCARD_CONFIRMATION_TITLE";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_1F39618F0 table:@"Localized"];

  v10 = [AVTAlertController alertControllerWithTitle:v9 message:0 preferredStyle:0];
  v11 = MEMORY[0x1E69DC648];
  v12 = AVTAvatarUIBundle();
  v13 = [v12 localizedStringForKey:@"EDITING_DISCARD_CONFIRM" value:&stru_1F39618F0 table:@"Localized"];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __47__AVTAvatarEditorViewController_confirmCancel___block_invoke;
  v24[3] = &unk_1E7F3B388;
  v24[4] = self;
  v14 = [v11 actionWithTitle:v13 style:2 handler:v24];
  [v10 addAction:v14];

  v15 = MEMORY[0x1E69DC648];
  v16 = AVTAvatarUIBundle();
  v17 = [v16 localizedStringForKey:@"EDITING_DISCARD_CANCEL" value:&stru_1F39618F0 table:@"Localized"];
  v18 = [v15 actionWithTitle:v17 style:1 handler:0];
  [v10 addAction:v18];

  objc_opt_class();
  LOBYTE(v18) = objc_opt_isKindOfClass();
  v19 = [v10 popoverPresentationController];
  v20 = v19;
  if (v18)
  {
    [v19 setBarButtonItem:v4];
  }

  else
  {
    [v19 setSourceView:v4];
  }

  v21 = [(AVTAvatarEditorViewController *)self cancelButtonItem];
  if (v21 == v4)
  {
    v22 = 1;
  }

  else
  {
    v22 = 15;
  }

  v23 = [v10 popoverPresentationController];
  [v23 setPermittedArrowDirections:v22];

  [(AVTAvatarEditorViewController *)self presentViewController:v10 animated:1 completion:0];
}

void __47__AVTAvatarEditorViewController_confirmCancel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) attributeEditorViewController];
  [v2 didFinishEditing];

  v3 = [*(a1 + 32) delegate];
  [v3 avatarEditorViewControllerDidCancel:*(a1 + 32)];
}

- (void)attributeEditorDidMakeFirstSelection:(id)a3
{
  [(AVTAvatarEditorViewController *)self enableDoneButton:1];

  [(AVTAvatarEditorViewController *)self setHasChanges:1];
}

- (void)controllerPresentationWillObstructView:(id)a3
{
  v3 = [(AVTAvatarEditorViewController *)self attributeEditorViewController];
  v5 = [v3 presentedViewController];

  v4 = v5;
  if (v5)
  {
    [v5 dismissViewControllerAnimated:0 completion:0];
    v4 = v5;
  }
}

- (void)toolbar:(id)a3 didSelectButton:(id)a4 atIndex:(unint64_t)a5
{
  if (a5)
  {
    [(AVTAvatarEditorViewController *)self finish:a4];
  }

  else
  {
    [(AVTAvatarEditorViewController *)self cancel:a4];
  }
}

- (AVTAvatarEditorViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)configurePPTMemoji
{
  attributeEditorViewController = self->_attributeEditorViewController;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __73__AVTAvatarEditorViewController_UIApplicationTesting__configurePPTMemoji__block_invoke;
  v3[3] = &unk_1E7F3A9B8;
  v3[4] = self;
  [(AVTAvatarAttributeEditorViewController *)attributeEditorViewController configurePPTMemoji:v3];
}

@end