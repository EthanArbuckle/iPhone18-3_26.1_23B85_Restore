@interface StickersMessagesViewController
- (AVTAvatarEditorViewController)editorViewController;
- (BOOL)shouldAllowUserActionOnSticker:(id)sticker;
- (BOOL)shouldPresentEditorFromKeyboardSplashScreen;
- (StickersParentMessagesViewController)delegate;
- (void)addStickerViewToHiearchyIfNeeded;
- (void)setupStickerView;
- (void)showEditorViewControllerFromKeyboardSplashScreen;
- (void)strongPopupPresentationNotification:(id)notification;
- (void)updateSnapshotWithCompletionBlock:(id)block;
- (void)updateWithPresentationContext:(unint64_t)context;
- (void)viewDidLoad;
- (void)willBecomeActiveWithConversation:(id)conversation;
- (void)willTransitionToPresentationStyle:(unint64_t)style;
@end

@implementation StickersMessagesViewController

- (void)updateWithPresentationContext:(unint64_t)context
{
  self->_isFromKeyboard = context == 2;
  self->_allowsEditing = context != 1;
  stickerController = [(StickersMessagesViewController *)self stickerController];

  if (stickerController)
  {
    stickerController2 = [(StickersMessagesViewController *)self stickerController];
    [stickerController2 setAllowEditing:self->_allowsEditing];
  }
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = StickersMessagesViewController;
  [(StickersMessagesViewController *)&v9 viewDidLoad];
  [(StickersMessagesViewController *)self updateWithPresentationContext:[(StickersMessagesViewController *)self presentationContext]];
  v3 = +[AVTUIColorRepository appBackgroundColor];
  view = [(StickersMessagesViewController *)self view];
  [view setBackgroundColor:v3];

  [(StickersMessagesViewController *)self setShouldShowDisclosureWarning:AVTUIStickersShowDisclosureWarning()];
  v5 = objc_alloc_init(AVTAvatarStore);
  [(StickersMessagesViewController *)self setAvatarStore:v5];

  v6 = +[AVTUIControllerPresentation pendingGlobalPresentation];

  if (!v6)
  {
    [(StickersMessagesViewController *)self setupStickerView];
    stickerController = [(StickersMessagesViewController *)self stickerController];
    view2 = [stickerController view];
    [view2 setAlpha:0.0];
  }
}

- (void)addStickerViewToHiearchyIfNeeded
{
  stickerController = [(StickersMessagesViewController *)self stickerController];
  if (stickerController)
  {
    view = stickerController;
    stickerController2 = [(StickersMessagesViewController *)self stickerController];
    parentViewController = [stickerController2 parentViewController];
    if (parentViewController)
    {
    }

    else
    {
      presentationStyle = [(StickersMessagesViewController *)self presentationStyle];

      if (presentationStyle == 3)
      {
        return;
      }

      stickerController3 = [(StickersMessagesViewController *)self stickerController];
      [(StickersMessagesViewController *)self addChildViewController:stickerController3];

      stickerController4 = [(StickersMessagesViewController *)self stickerController];
      view = [stickerController4 view];

      view2 = [(StickersMessagesViewController *)self view];
      [view2 bounds];
      [view setFrame:?];

      [view setAutoresizingMask:18];
      view3 = [(StickersMessagesViewController *)self view];
      [view3 addSubview:view];

      stickerController2 = [(StickersMessagesViewController *)self stickerController];
      [stickerController2 didMoveToParentViewController:self];
    }
  }
}

- (void)willTransitionToPresentationStyle:(unint64_t)style
{
  if (style == 1)
  {
    usageTrackingSession = [(StickersMessagesViewController *)self usageTrackingSession];
    [usageTrackingSession didShowExpandedMode];
  }
}

- (BOOL)shouldPresentEditorFromKeyboardSplashScreen
{
  if (![(StickersMessagesViewController *)self isFromKeyboard]|| [(StickersMessagesViewController *)self presentationStyle]!= 3)
  {
    return 0;
  }

  v3 = +[AVTUIControllerPresentation pendingGlobalPresentation];
  v4 = v3 == 0;

  return v4;
}

- (void)willBecomeActiveWithConversation:(id)conversation
{
  v8.receiver = self;
  v8.super_class = StickersMessagesViewController;
  [(StickersMessagesViewController *)&v8 willBecomeActiveWithConversation:conversation];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    presentationContext = [(StickersMessagesViewController *)self presentationContext];
    presentationStyle = [(StickersMessagesViewController *)self presentationStyle];
    *buf = 134218240;
    v10 = presentationContext;
    v11 = 2048;
    v12 = presentationStyle;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[StickersView] willBecomeActiveWithConversation context:%lu style:%lu", buf, 0x16u);
  }

  [STDynamicActivityAttributionPublisher setCurrentAttributionKey:0 andApp:@"com.apple.Animoji.StickersApp"];
  [(StickersMessagesViewController *)self updateWithPresentationContext:[(StickersMessagesViewController *)self presentationContext]];
  if ([(StickersMessagesViewController *)self shouldPresentEditorFromKeyboardSplashScreen])
  {
    [(StickersMessagesViewController *)self showEditorViewControllerFromKeyboardSplashScreen];
  }

  else
  {
    stickerController = [(StickersMessagesViewController *)self stickerController];
    view = [stickerController view];
    [view setAlpha:1.0];
  }
}

- (void)setupStickerView
{
  avatarStore = [(StickersMessagesViewController *)self avatarStore];
  v4 = [AVTStickerViewController stickerViewControllerForStore:avatarStore allowEditing:[(StickersMessagesViewController *)self allowsEditing] allowPeel:1];
  [(StickersMessagesViewController *)self setStickerController:v4];

  stickerController = [(StickersMessagesViewController *)self stickerController];
  [stickerController setDisclosureValidationDelegate:self];

  stickerController2 = [(StickersMessagesViewController *)self stickerController];
  [stickerController2 setPresenterDelegate:self];

  [(StickersMessagesViewController *)self addStickerViewToHiearchyIfNeeded];
}

- (void)showEditorViewControllerFromKeyboardSplashScreen
{
  stickerController = [(StickersMessagesViewController *)self stickerController];

  if (stickerController)
  {
    stickerController2 = [(StickersMessagesViewController *)self stickerController];
    [stickerController2 removeFromParentViewController];

    stickerController3 = [(StickersMessagesViewController *)self stickerController];
    view = [stickerController3 view];
    [view removeFromSuperview];

    [(StickersMessagesViewController *)self setStickerController:0];
  }

  avatarStore = [(StickersMessagesViewController *)self avatarStore];
  v13 = [AVTAvatarEditorViewController viewControllerForCreatingAvatarInStore:avatarStore];

  [v13 setDelegate:self];
  v8 = [[UINavigationController alloc] initWithRootViewController:v13];
  [(StickersMessagesViewController *)self addChildViewController:v8];
  view2 = [(StickersMessagesViewController *)self view];
  view3 = [v8 view];
  [view2 addSubview:view3];

  [v8 didMoveToParentViewController:self];
  [(StickersMessagesViewController *)self setEditorViewController:v13];
  delegate = [(StickersMessagesViewController *)self delegate];

  if (delegate)
  {
    delegate2 = [(StickersMessagesViewController *)self delegate];
    [delegate2 didPresentEditorViewController];
  }
}

- (void)updateSnapshotWithCompletionBlock:(id)block
{
  blockCopy = block;
  view = [(StickersMessagesViewController *)self view];
  [view bounds];
  v7 = v6;
  v9 = v8;

  stickerController = [(StickersMessagesViewController *)self stickerController];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100005050;
  v12[3] = &unk_10000C450;
  v14 = v7;
  v15 = v9;
  v12[4] = self;
  v13 = blockCopy;
  v11 = blockCopy;
  [stickerController snapshotInBlock:v12];
}

- (BOOL)shouldAllowUserActionOnSticker:(id)sticker
{
  stickerCopy = sticker;
  shouldShowDisclosureWarning = [(StickersMessagesViewController *)self shouldShowDisclosureWarning];
  if (shouldShowDisclosureWarning)
  {
    v6 = [AVTAlertController alertControllerWithTitle:@"Animoji Disclosure" message:@"Are you sure every person in this conversation is disclosed on Memoji Stickers?" preferredStyle:1];
    objc_initWeak(&location, self);
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100005350;
    v16 = &unk_10000C478;
    objc_copyWeak(&v17, &location);
    v7 = [UIAlertAction actionWithTitle:@"Yes" style:0 handler:&v13];
    [v6 addAction:{v7, v13, v14, v15, v16}];

    v8 = [UIAlertAction actionWithTitle:@"No" style:1 handler:0];
    [v6 addAction:v8];

    [v6 _setShouldAlignToKeyboard:0];
    view = [(StickersMessagesViewController *)self view];
    window = [view window];
    rootViewController = [window rootViewController];
    [rootViewController presentViewController:v6 animated:0 completion:0];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return shouldShowDisclosureWarning ^ 1;
}

- (void)strongPopupPresentationNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"BaseMessagesViewControllerStrongPopupPresentedKey"];
  bOOLValue = [v5 BOOLValue];

  stickerController = [(StickersMessagesViewController *)self stickerController];

  if (stickerController)
  {
    stickerController2 = [(StickersMessagesViewController *)self stickerController];
    v9 = stickerController2;
    if (bOOLValue)
    {
      [stickerController2 stickerControllerDidEnterBackground];
    }

    else
    {
      [stickerController2 stickerControllerWillEnterForeground];
    }
  }
}

- (AVTAvatarEditorViewController)editorViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_editorViewController);

  return WeakRetained;
}

- (StickersParentMessagesViewController)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end