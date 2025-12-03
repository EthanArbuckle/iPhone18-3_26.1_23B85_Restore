@interface AVTAvatarEditorViewController
+ (BOOL)shouldShowSplashScreen;
+ (id)defaultSessionProvider;
+ (id)viewControllerForCreatingAvatarInStore:(id)store;
+ (id)viewControllerForCreatingAvatarInStore:(id)store avtViewSessionProvider:(id)provider;
+ (id)viewControllerForEditingAvatar:(id)avatar avtViewSessionProvider:(id)provider store:(id)store;
+ (id)viewControllerForEditingAvatar:(id)avatar store:(id)store;
- (AVTAvatarEditorViewController)initWithAvatarRecord:(id)record avtViewSessionProvider:(id)provider store:(id)store enviroment:(id)enviroment isCreating:(BOOL)creating;
- (AVTAvatarEditorViewControllerDelegate)delegate;
- (BOOL)disableAvatarSnapshotting;
- (UIEdgeInsets)additionalSafeAreaInsets;
- (id)appropriatePresentationController;
- (id)keyCommands;
- (id)visibleLayout;
- (void)applyLayout:(id)layout;
- (void)attributeEditorDidMakeFirstSelection:(id)selection;
- (void)cancel:(id)cancel;
- (void)configureEditorNavigationItems;
- (void)configurePPTMemoji;
- (void)configureSplashNavigationItems;
- (void)confirmCancel:(id)cancel;
- (void)controllerPresentationWillObstructView:(id)view;
- (void)enableDoneButton:(BOOL)button;
- (void)finish:(id)finish;
- (void)handleDiscardAttempt;
- (void)loadAttributeEditorViewWithAvatarRecord:(id)record;
- (void)loadSplashScreen;
- (void)prepareForAnimatedTransitionWithLayout:(id)layout completionBlock:(id)block;
- (void)returnPressed:(id)pressed;
- (void)setDisableAvatarSnapshotting:(BOOL)snapshotting;
- (void)setupInitialViewState;
- (void)splashScreenViewControllerDidCancel:(id)cancel;
- (void)splashScreenViewControllerDidConfirm:(id)confirm;
- (void)toolbar:(id)toolbar didSelectButton:(id)button atIndex:(unint64_t)index;
- (void)updateToolBarForLayout:(id)layout;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
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

+ (id)viewControllerForEditingAvatar:(id)avatar store:(id)store
{
  storeCopy = store;
  avatarCopy = avatar;
  defaultSessionProvider = [self defaultSessionProvider];
  v9 = [self viewControllerForEditingAvatar:avatarCopy avtViewSessionProvider:defaultSessionProvider store:storeCopy];

  return v9;
}

+ (id)viewControllerForEditingAvatar:(id)avatar avtViewSessionProvider:(id)provider store:(id)store
{
  avatarCopy = avatar;
  storeCopy = store;
  providerCopy = provider;
  if (([storeCopy conformsToProtocol:&unk_1F39DD3B0] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object protocol for %@", storeCopy}];
  }

  v11 = storeCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", avatarCopy}];
  }

  v12 = avatarCopy;
  v13 = +[AVTUIEnvironment defaultEnvironment];
  v14 = [[self alloc] initWithAvatarRecord:v12 avtViewSessionProvider:providerCopy store:v11 enviroment:v13 isCreating:0];

  return v14;
}

+ (id)viewControllerForCreatingAvatarInStore:(id)store
{
  storeCopy = store;
  defaultSessionProvider = [self defaultSessionProvider];
  v6 = [self viewControllerForCreatingAvatarInStore:storeCopy avtViewSessionProvider:defaultSessionProvider];

  return v6;
}

+ (id)viewControllerForCreatingAvatarInStore:(id)store avtViewSessionProvider:(id)provider
{
  storeCopy = store;
  providerCopy = provider;
  if (([storeCopy conformsToProtocol:&unk_1F39DD3B0] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object protocol for %@", storeCopy}];
  }

  v8 = storeCopy;
  v9 = +[AVTUIEnvironment defaultEnvironment];
  defaultAvatarRecord = [MEMORY[0x1E698E320] defaultAvatarRecord];
  v11 = [[self alloc] initWithAvatarRecord:defaultAvatarRecord avtViewSessionProvider:providerCopy store:v8 enviroment:v9 isCreating:1];

  return v11;
}

- (AVTAvatarEditorViewController)initWithAvatarRecord:(id)record avtViewSessionProvider:(id)provider store:(id)store enviroment:(id)enviroment isCreating:(BOOL)creating
{
  recordCopy = record;
  providerCopy = provider;
  storeCopy = store;
  enviromentCopy = enviroment;
  v22.receiver = self;
  v22.super_class = AVTAvatarEditorViewController;
  v17 = [(AVTAvatarEditorViewController *)&v22 initWithNibName:0 bundle:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_initialAvatarRecord, record);
    objc_storeStrong(&v18->_store, store);
    objc_storeStrong(&v18->_environment, enviroment);
    logger = [enviromentCopy logger];
    logger = v18->_logger;
    v18->_logger = logger;

    objc_storeStrong(&v18->_avtViewSessionProvider, provider);
    v18->_isCreating = creating;
  }

  return v18;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = AVTAvatarEditorViewController;
  [(AVTAvatarEditorViewController *)&v7 viewDidLoad];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view = [(AVTAvatarEditorViewController *)self view];
  [view setBackgroundColor:clearColor];

  [(AVTAvatarEditorViewController *)self setupInitialViewState];
  navigationItem = [(AVTAvatarEditorViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  navigationItem2 = [(AVTAvatarEditorViewController *)self navigationItem];
  [navigationItem2 _setBackgroundHidden:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = AVTAvatarEditorViewController;
  [(AVTAvatarEditorViewController *)&v5 viewWillAppear:appear];
  visibleLayout = [(AVTAvatarEditorViewController *)self visibleLayout];
  [(AVTAvatarEditorViewController *)self updateToolBarForLayout:visibleLayout];
}

- (void)viewDidAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = AVTAvatarEditorViewController;
  [(AVTAvatarEditorViewController *)&v12 viewDidAppear:appear];
  navigationController = [(AVTAvatarEditorViewController *)self navigationController];
  if (navigationController)
  {
    navigationController2 = [(AVTAvatarEditorViewController *)self navigationController];
    viewControllers = [navigationController2 viewControllers];
    v7 = [viewControllers objectAtIndexedSubscript:0];
    v8 = v7 == self;
  }

  else
  {
    v8 = 0;
  }

  navigationController3 = [(AVTAvatarEditorViewController *)self navigationController];

  if (v8 || !navigationController3)
  {
    appropriatePresentationController = [(AVTAvatarEditorViewController *)self appropriatePresentationController];
    delegate = [appropriatePresentationController delegate];

    if (!delegate)
    {
      [appropriatePresentationController setDelegate:self];
    }
  }
}

- (id)appropriatePresentationController
{
  selfCopy = self;
  parentViewController = [(AVTAvatarEditorViewController *)selfCopy parentViewController];

  if (parentViewController)
  {
    do
    {
      parentViewController2 = [(AVTAvatarEditorViewController *)selfCopy parentViewController];

      v4ParentViewController = [(AVTAvatarEditorViewController *)parentViewController2 parentViewController];

      selfCopy = parentViewController2;
    }

    while (v4ParentViewController);
  }

  else
  {
    parentViewController2 = selfCopy;
  }

  presentationController = [(AVTAvatarEditorViewController *)parentViewController2 presentationController];

  return presentationController;
}

- (void)setDisableAvatarSnapshotting:(BOOL)snapshotting
{
  snapshottingCopy = snapshotting;
  attributeEditorViewController = [(AVTAvatarEditorViewController *)self attributeEditorViewController];

  if (attributeEditorViewController)
  {
    attributeEditorViewController2 = [(AVTAvatarEditorViewController *)self attributeEditorViewController];
    [attributeEditorViewController2 setDisableAvatarSnapshotting:snapshottingCopy];
  }
}

- (BOOL)disableAvatarSnapshotting
{
  attributeEditorViewController = [(AVTAvatarEditorViewController *)self attributeEditorViewController];
  disableAvatarSnapshotting = [attributeEditorViewController disableAvatarSnapshotting];

  return disableAvatarSnapshotting;
}

- (void)prepareForAnimatedTransitionWithLayout:(id)layout completionBlock:(id)block
{
  layoutCopy = layout;
  blockCopy = block;
  attributeEditorViewController = [(AVTAvatarEditorViewController *)self attributeEditorViewController];

  if (attributeEditorViewController)
  {
    [(AVTAvatarEditorViewController *)self updateToolBarForLayout:layoutCopy];
    attributeEditorViewController2 = [(AVTAvatarEditorViewController *)self attributeEditorViewController];
    [attributeEditorViewController2 prepareForAnimatedTransitionWithLayout:layoutCopy completionBlock:blockCopy];
  }
}

- (void)applyLayout:(id)layout
{
  layoutCopy = layout;
  attributeEditorViewController = [(AVTAvatarEditorViewController *)self attributeEditorViewController];

  if (attributeEditorViewController)
  {
    [(AVTAvatarEditorViewController *)self updateToolBarForLayout:layoutCopy];
    attributeEditorViewController2 = [(AVTAvatarEditorViewController *)self attributeEditorViewController];
    [attributeEditorViewController2 applyLayout:layoutCopy];
  }
}

- (id)visibleLayout
{
  attributeEditorViewController = [(AVTAvatarEditorViewController *)self attributeEditorViewController];

  if (attributeEditorViewController)
  {
    attributeEditorViewController2 = [(AVTAvatarEditorViewController *)self attributeEditorViewController];
    visibleLayout = [attributeEditorViewController2 visibleLayout];
  }

  else
  {
    visibleLayout = 0;
  }

  return visibleLayout;
}

- (void)setupInitialViewState
{
  if ([objc_opt_class() shouldShowSplashScreen])
  {

    [(AVTAvatarEditorViewController *)self loadSplashScreen];
  }

  else
  {
    initialAvatarRecord = [(AVTAvatarEditorViewController *)self initialAvatarRecord];
    [(AVTAvatarEditorViewController *)self loadAttributeEditorViewWithAvatarRecord:initialAvatarRecord];
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
  view = [(AVTAvatarEditorViewController *)self view];
  [view bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  view2 = [(AVTSplashScreenViewController *)self->_splashScreenViewController view];
  [view2 setFrame:{v16, v18, v20, v22}];

  view3 = [(AVTSplashScreenViewController *)self->_splashScreenViewController view];
  [view3 setAutoresizingMask:18];

  view4 = [(AVTAvatarEditorViewController *)self view];
  view5 = [(AVTSplashScreenViewController *)self->_splashScreenViewController view];
  [view4 addSubview:view5];

  [(AVTAvatarEditorViewController *)self addChildViewController:self->_splashScreenViewController];
  [(AVTSplashScreenViewController *)self->_splashScreenViewController didMoveToParentViewController:self];
  [(AVTAvatarEditorViewController *)self configureSplashNavigationItems];
}

- (void)loadAttributeEditorViewWithAvatarRecord:(id)record
{
  recordCopy = record;
  v5 = [AVTAvatarAttributeEditorViewController alloc];
  avtViewSessionProvider = [(AVTAvatarEditorViewController *)self avtViewSessionProvider];
  environment = [(AVTAvatarEditorViewController *)self environment];
  v8 = [(AVTAvatarAttributeEditorViewController *)v5 initWithAvatarRecord:recordCopy avtViewSessionProvider:avtViewSessionProvider environment:environment isCreating:[(AVTAvatarEditorViewController *)self isCreating]];

  attributeEditorViewController = self->_attributeEditorViewController;
  self->_attributeEditorViewController = v8;

  [(AVTAvatarAttributeEditorViewController *)self->_attributeEditorViewController setDelegate:self];
  [(AVTAvatarAttributeEditorViewController *)self->_attributeEditorViewController setShouldHideUserInfoView:[(AVTAvatarEditorViewController *)self shouldHideUserInfoView]];
  [(AVTAvatarAttributeEditorViewController *)self->_attributeEditorViewController setEditorPresentationContext:[(AVTAvatarEditorViewController *)self editorPresentationContext]];
  [(AVTAvatarEditorViewController *)self addChildViewController:self->_attributeEditorViewController];
  view = [(AVTAvatarEditorViewController *)self view];
  [view bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  view2 = [(AVTAvatarAttributeEditorViewController *)self->_attributeEditorViewController view];
  [view2 setFrame:{v12, v14, v16, v18}];

  view3 = [(AVTAvatarAttributeEditorViewController *)self->_attributeEditorViewController view];
  [view3 setAutoresizingMask:18];

  view4 = [(AVTAvatarEditorViewController *)self view];
  view5 = [(AVTAvatarAttributeEditorViewController *)self->_attributeEditorViewController view];
  [view4 addSubview:view5];

  [(AVTAvatarAttributeEditorViewController *)self->_attributeEditorViewController didMoveToParentViewController:self];

  [(AVTAvatarEditorViewController *)self configureEditorNavigationItems];
}

- (void)configureSplashNavigationItems
{
  environment = [(AVTAvatarEditorViewController *)self environment];
  deviceIsMac = [environment deviceIsMac];

  if ((deviceIsMac & 1) == 0)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancel_];
    [(AVTAvatarEditorViewController *)self setCancelButtonItem:v5];

    cancelButtonItem = [(AVTAvatarEditorViewController *)self cancelButtonItem];
    navigationItem = [(AVTAvatarEditorViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:cancelButtonItem];
  }
}

- (void)configureEditorNavigationItems
{
  v30[2] = *MEMORY[0x1E69E9840];
  environment = [(AVTAvatarEditorViewController *)self environment];
  deviceIsMac = [environment deviceIsMac];

  if (deviceIsMac)
  {
    toolbar = [(AVTAvatarEditorViewController *)self toolbar];
    [toolbar removeFromSuperview];

    v6 = [AVTToolbarButton alloc];
    v7 = AVTAvatarUIBundle();
    v8 = [v7 localizedStringForKey:@"DONE" value:&stru_1F39618F0 table:@"Localized"];
    doneButtonItem = [(AVTToolbarButton *)v6 initWithTitle:v8 isDefault:1];

    v10 = [AVTToolbarButton alloc];
    v11 = AVTAvatarUIBundle();
    v12 = [v11 localizedStringForKey:@"CANCEL" value:&stru_1F39618F0 table:@"Localized"];
    navigationItem2 = [(AVTToolbarButton *)v10 initWithTitle:v12 isDefault:0];

    v14 = [AVTToolBar alloc];
    v30[0] = navigationItem2;
    v30[1] = doneButtonItem;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    v16 = [(AVTToolBar *)v14 initWithButtons:v15];

    view = [(AVTAvatarEditorViewController *)self view];
    [view bounds];
    v19 = v18;
    v21 = v20;

    +[AVTToolBar defaultToolBarHeight];
    [(AVTToolBar *)v16 setFrame:0.0, v21 - v22, v19, v22];
    [(AVTToolBar *)v16 setAutoresizingMask:10];
    [(AVTToolBar *)v16 setDelegate:self];
    view2 = [(AVTAvatarEditorViewController *)self view];
    view3 = [(AVTAvatarAttributeEditorViewController *)self->_attributeEditorViewController view];
    [view2 insertSubview:v16 aboveSubview:view3];

    [(AVTAvatarEditorViewController *)self setToolbar:v16];
    navigationController = [(AVTAvatarEditorViewController *)self navigationController];
    [navigationController setNavigationBarHidden:1];
  }

  else
  {
    v26 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancel_];
    [(AVTAvatarEditorViewController *)self setCancelButtonItem:v26];

    cancelButtonItem = [(AVTAvatarEditorViewController *)self cancelButtonItem];
    navigationItem = [(AVTAvatarEditorViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:cancelButtonItem];

    v29 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_finish_];
    [(AVTAvatarEditorViewController *)self setDoneButtonItem:v29];

    doneButtonItem = [(AVTAvatarEditorViewController *)self doneButtonItem];
    navigationItem2 = [(AVTAvatarEditorViewController *)self navigationItem];
    [(AVTToolbarButton *)navigationItem2 setRightBarButtonItem:doneButtonItem];
  }

  [(AVTAvatarEditorViewController *)self enableDoneButton:[(AVTAvatarEditorViewController *)self isCreating]];
}

- (id)keyCommands
{
  array = [MEMORY[0x1E695DF70] array];
  v3 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel_escPressed_];
  _nonRepeatableKeyCommand = [v3 _nonRepeatableKeyCommand];
  [array addObject:_nonRepeatableKeyCommand];

  v5 = MEMORY[0x1E69DCBA0];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\r"];
  v7 = [v5 keyCommandWithInput:v6 modifierFlags:0 action:sel_returnPressed_];

  _nonRepeatableKeyCommand2 = [v7 _nonRepeatableKeyCommand];
  [array addObject:_nonRepeatableKeyCommand2];

  return array;
}

- (void)updateToolBarForLayout:(id)layout
{
  layoutCopy = layout;
  toolbar = [(AVTAvatarEditorViewController *)self toolbar];

  if (toolbar)
  {
    toolbar2 = [(AVTAvatarEditorViewController *)self toolbar];
    [toolbar2 frame];
    v7 = v6;
    v9 = v8;

    [layoutCopy attributesContentViewFrame];
    v11 = v10;
    [layoutCopy attributesContentViewFrame];
    v13 = v12;
    [MEMORY[0x1E69DD250] inheritedAnimationDuration];
    v15 = v14 > 0.0;
    toolbar3 = [(AVTAvatarEditorViewController *)self toolbar];
    [toolbar3 setIsAnimating:v15];

    toolbar4 = [(AVTAvatarEditorViewController *)self toolbar];
    [toolbar4 setFrame:{v11, v7, v13, v9}];

    toolbar5 = [(AVTAvatarEditorViewController *)self toolbar];
    window = [toolbar5 window];

    if (window)
    {
      toolbar6 = [(AVTAvatarEditorViewController *)self toolbar];
      [toolbar6 layoutIfNeeded];
    }
  }
}

- (UIEdgeInsets)additionalSafeAreaInsets
{
  toolbar = [(AVTAvatarEditorViewController *)self toolbar];
  if (toolbar)
  {
    toolbar2 = [(AVTAvatarEditorViewController *)self toolbar];
    [toolbar2 bounds];
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

- (void)enableDoneButton:(BOOL)button
{
  buttonCopy = button;
  doneButtonItem = [(AVTAvatarEditorViewController *)self doneButtonItem];
  [doneButtonItem setEnabled:buttonCopy];

  toolbar = [(AVTAvatarEditorViewController *)self toolbar];
  [toolbar setEnabled:buttonCopy forButtonAtIndex:1];
}

- (void)cancel:(id)cancel
{
  cancelCopy = cancel;
  if ([(AVTAvatarEditorViewController *)self hasChanges])
  {
    [(AVTAvatarEditorViewController *)self confirmCancel:cancelCopy];
  }

  else
  {
    attributeEditorViewController = [(AVTAvatarEditorViewController *)self attributeEditorViewController];
    [attributeEditorViewController didFinishEditing];

    splashScreenViewController = [(AVTAvatarEditorViewController *)self splashScreenViewController];

    if (splashScreenViewController)
    {
      splashScreenViewController2 = [(AVTAvatarEditorViewController *)self splashScreenViewController];
      [splashScreenViewController2 stopPlayingVideos];
    }

    delegate = [(AVTAvatarEditorViewController *)self delegate];
    [delegate avatarEditorViewControllerDidCancel:self];
  }
}

- (void)returnPressed:(id)pressed
{
  if ([(AVTAvatarEditorViewController *)self isCreating]|| [(AVTAvatarEditorViewController *)self hasChanges])
  {

    [(AVTAvatarEditorViewController *)self finish:0];
  }
}

- (void)finish:(id)finish
{
  logger = [(AVTAvatarEditorViewController *)self logger];
  attributeEditorViewController = [(AVTAvatarEditorViewController *)self attributeEditorViewController];
  [attributeEditorViewController didFinishEditing];

  attributeEditorViewController2 = [(AVTAvatarEditorViewController *)self attributeEditorViewController];
  avatarRecord = [attributeEditorViewController2 avatarRecord];

  isCreating = [(AVTAvatarEditorViewController *)self isCreating];
  environment = [(AVTAvatarEditorViewController *)self environment];
  usageTrackingSession = [environment usageTrackingSession];
  v11 = usageTrackingSession;
  if (isCreating)
  {
    [usageTrackingSession didCreateAvatar:avatarRecord];
  }

  else
  {
    [usageTrackingSession didEditAvatar:avatarRecord];
  }

  attributeEditorViewController3 = [(AVTAvatarEditorViewController *)self attributeEditorViewController];
  avatar = [attributeEditorViewController3 avatar];

  store = [(AVTAvatarEditorViewController *)self store];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __40__AVTAvatarEditorViewController_finish___block_invoke;
  v17[3] = &unk_1E7F3ADD8;
  v18 = logger;
  selfCopy = self;
  v20 = avatarRecord;
  v15 = avatarRecord;
  v16 = logger;
  [store saveAvatarRecord:v15 thumbnailAvatar:avatar completionBlock:v17 thumbnailGenerationCompletionBlock:0];
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

- (void)splashScreenViewControllerDidCancel:(id)cancel
{
  delegate = [(AVTAvatarEditorViewController *)self delegate];
  [delegate avatarEditorViewControllerDidCancel:self];
}

- (void)splashScreenViewControllerDidConfirm:(id)confirm
{
  AVTUISetHasDisplayedSplashScreen();
  AVTUISetHasDisplayedCameraDisclosureSplashScreen();
  initialAvatarRecord = [(AVTAvatarEditorViewController *)self initialAvatarRecord];
  [(AVTAvatarEditorViewController *)self loadAttributeEditorViewWithAvatarRecord:initialAvatarRecord];

  splashScreenViewController = [(AVTAvatarEditorViewController *)self splashScreenViewController];
  [splashScreenViewController willMoveToParentViewController:0];

  splashScreenViewController2 = [(AVTAvatarEditorViewController *)self splashScreenViewController];
  view = [splashScreenViewController2 view];
  [view removeFromSuperview];

  splashScreenViewController3 = [(AVTAvatarEditorViewController *)self splashScreenViewController];
  [splashScreenViewController3 removeFromParentViewController];
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
    delegate = [(AVTAvatarEditorViewController *)self delegate];
    [delegate avatarEditorViewControllerDidCancel:self];
  }
}

void __53__AVTAvatarEditorViewController_handleDiscardAttempt__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 cancelButtonItem];
  [v1 confirmCancel:v2];
}

- (void)confirmCancel:(id)cancel
{
  cancelCopy = cancel;
  isCreating = [(AVTAvatarEditorViewController *)self isCreating];
  v6 = AVTAvatarUIBundle();
  v7 = v6;
  if (isCreating)
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
  popoverPresentationController = [v10 popoverPresentationController];
  v20 = popoverPresentationController;
  if (v18)
  {
    [popoverPresentationController setBarButtonItem:cancelCopy];
  }

  else
  {
    [popoverPresentationController setSourceView:cancelCopy];
  }

  cancelButtonItem = [(AVTAvatarEditorViewController *)self cancelButtonItem];
  if (cancelButtonItem == cancelCopy)
  {
    v22 = 1;
  }

  else
  {
    v22 = 15;
  }

  popoverPresentationController2 = [v10 popoverPresentationController];
  [popoverPresentationController2 setPermittedArrowDirections:v22];

  [(AVTAvatarEditorViewController *)self presentViewController:v10 animated:1 completion:0];
}

void __47__AVTAvatarEditorViewController_confirmCancel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) attributeEditorViewController];
  [v2 didFinishEditing];

  v3 = [*(a1 + 32) delegate];
  [v3 avatarEditorViewControllerDidCancel:*(a1 + 32)];
}

- (void)attributeEditorDidMakeFirstSelection:(id)selection
{
  [(AVTAvatarEditorViewController *)self enableDoneButton:1];

  [(AVTAvatarEditorViewController *)self setHasChanges:1];
}

- (void)controllerPresentationWillObstructView:(id)view
{
  attributeEditorViewController = [(AVTAvatarEditorViewController *)self attributeEditorViewController];
  presentedViewController = [attributeEditorViewController presentedViewController];

  v4 = presentedViewController;
  if (presentedViewController)
  {
    [presentedViewController dismissViewControllerAnimated:0 completion:0];
    v4 = presentedViewController;
  }
}

- (void)toolbar:(id)toolbar didSelectButton:(id)button atIndex:(unint64_t)index
{
  if (index)
  {
    [(AVTAvatarEditorViewController *)self finish:button];
  }

  else
  {
    [(AVTAvatarEditorViewController *)self cancel:button];
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