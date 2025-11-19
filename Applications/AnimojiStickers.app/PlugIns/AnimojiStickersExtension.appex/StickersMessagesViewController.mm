@interface StickersMessagesViewController
- (AVTAvatarEditorViewController)editorViewController;
- (BOOL)shouldAllowUserActionOnSticker:(id)a3;
- (BOOL)shouldPresentEditorFromKeyboardSplashScreen;
- (StickersParentMessagesViewController)delegate;
- (void)addStickerViewToHiearchyIfNeeded;
- (void)setupStickerView;
- (void)showEditorViewControllerFromKeyboardSplashScreen;
- (void)strongPopupPresentationNotification:(id)a3;
- (void)updateSnapshotWithCompletionBlock:(id)a3;
- (void)updateWithPresentationContext:(unint64_t)a3;
- (void)viewDidLoad;
- (void)willBecomeActiveWithConversation:(id)a3;
- (void)willTransitionToPresentationStyle:(unint64_t)a3;
@end

@implementation StickersMessagesViewController

- (void)updateWithPresentationContext:(unint64_t)a3
{
  self->_isFromKeyboard = a3 == 2;
  self->_allowsEditing = a3 != 1;
  v4 = [(StickersMessagesViewController *)self stickerController];

  if (v4)
  {
    v5 = [(StickersMessagesViewController *)self stickerController];
    [v5 setAllowEditing:self->_allowsEditing];
  }
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = StickersMessagesViewController;
  [(StickersMessagesViewController *)&v9 viewDidLoad];
  [(StickersMessagesViewController *)self updateWithPresentationContext:[(StickersMessagesViewController *)self presentationContext]];
  v3 = +[AVTUIColorRepository appBackgroundColor];
  v4 = [(StickersMessagesViewController *)self view];
  [v4 setBackgroundColor:v3];

  [(StickersMessagesViewController *)self setShouldShowDisclosureWarning:AVTUIStickersShowDisclosureWarning()];
  v5 = objc_alloc_init(AVTAvatarStore);
  [(StickersMessagesViewController *)self setAvatarStore:v5];

  v6 = +[AVTUIControllerPresentation pendingGlobalPresentation];

  if (!v6)
  {
    [(StickersMessagesViewController *)self setupStickerView];
    v7 = [(StickersMessagesViewController *)self stickerController];
    v8 = [v7 view];
    [v8 setAlpha:0.0];
  }
}

- (void)addStickerViewToHiearchyIfNeeded
{
  v3 = [(StickersMessagesViewController *)self stickerController];
  if (v3)
  {
    v11 = v3;
    v4 = [(StickersMessagesViewController *)self stickerController];
    v5 = [v4 parentViewController];
    if (v5)
    {
    }

    else
    {
      v6 = [(StickersMessagesViewController *)self presentationStyle];

      if (v6 == 3)
      {
        return;
      }

      v7 = [(StickersMessagesViewController *)self stickerController];
      [(StickersMessagesViewController *)self addChildViewController:v7];

      v8 = [(StickersMessagesViewController *)self stickerController];
      v11 = [v8 view];

      v9 = [(StickersMessagesViewController *)self view];
      [v9 bounds];
      [v11 setFrame:?];

      [v11 setAutoresizingMask:18];
      v10 = [(StickersMessagesViewController *)self view];
      [v10 addSubview:v11];

      v4 = [(StickersMessagesViewController *)self stickerController];
      [v4 didMoveToParentViewController:self];
    }
  }
}

- (void)willTransitionToPresentationStyle:(unint64_t)a3
{
  if (a3 == 1)
  {
    v4 = [(StickersMessagesViewController *)self usageTrackingSession];
    [v4 didShowExpandedMode];
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

- (void)willBecomeActiveWithConversation:(id)a3
{
  v8.receiver = self;
  v8.super_class = StickersMessagesViewController;
  [(StickersMessagesViewController *)&v8 willBecomeActiveWithConversation:a3];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(StickersMessagesViewController *)self presentationContext];
    v5 = [(StickersMessagesViewController *)self presentationStyle];
    *buf = 134218240;
    v10 = v4;
    v11 = 2048;
    v12 = v5;
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
    v6 = [(StickersMessagesViewController *)self stickerController];
    v7 = [v6 view];
    [v7 setAlpha:1.0];
  }
}

- (void)setupStickerView
{
  v3 = [(StickersMessagesViewController *)self avatarStore];
  v4 = [AVTStickerViewController stickerViewControllerForStore:v3 allowEditing:[(StickersMessagesViewController *)self allowsEditing] allowPeel:1];
  [(StickersMessagesViewController *)self setStickerController:v4];

  v5 = [(StickersMessagesViewController *)self stickerController];
  [v5 setDisclosureValidationDelegate:self];

  v6 = [(StickersMessagesViewController *)self stickerController];
  [v6 setPresenterDelegate:self];

  [(StickersMessagesViewController *)self addStickerViewToHiearchyIfNeeded];
}

- (void)showEditorViewControllerFromKeyboardSplashScreen
{
  v3 = [(StickersMessagesViewController *)self stickerController];

  if (v3)
  {
    v4 = [(StickersMessagesViewController *)self stickerController];
    [v4 removeFromParentViewController];

    v5 = [(StickersMessagesViewController *)self stickerController];
    v6 = [v5 view];
    [v6 removeFromSuperview];

    [(StickersMessagesViewController *)self setStickerController:0];
  }

  v7 = [(StickersMessagesViewController *)self avatarStore];
  v13 = [AVTAvatarEditorViewController viewControllerForCreatingAvatarInStore:v7];

  [v13 setDelegate:self];
  v8 = [[UINavigationController alloc] initWithRootViewController:v13];
  [(StickersMessagesViewController *)self addChildViewController:v8];
  v9 = [(StickersMessagesViewController *)self view];
  v10 = [v8 view];
  [v9 addSubview:v10];

  [v8 didMoveToParentViewController:self];
  [(StickersMessagesViewController *)self setEditorViewController:v13];
  v11 = [(StickersMessagesViewController *)self delegate];

  if (v11)
  {
    v12 = [(StickersMessagesViewController *)self delegate];
    [v12 didPresentEditorViewController];
  }
}

- (void)updateSnapshotWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(StickersMessagesViewController *)self view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;

  v10 = [(StickersMessagesViewController *)self stickerController];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100005050;
  v12[3] = &unk_10000C450;
  v14 = v7;
  v15 = v9;
  v12[4] = self;
  v13 = v4;
  v11 = v4;
  [v10 snapshotInBlock:v12];
}

- (BOOL)shouldAllowUserActionOnSticker:(id)a3
{
  v4 = a3;
  v5 = [(StickersMessagesViewController *)self shouldShowDisclosureWarning];
  if (v5)
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
    v9 = [(StickersMessagesViewController *)self view];
    v10 = [v9 window];
    v11 = [v10 rootViewController];
    [v11 presentViewController:v6 animated:0 completion:0];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v5 ^ 1;
}

- (void)strongPopupPresentationNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"BaseMessagesViewControllerStrongPopupPresentedKey"];
  v6 = [v5 BOOLValue];

  v7 = [(StickersMessagesViewController *)self stickerController];

  if (v7)
  {
    v8 = [(StickersMessagesViewController *)self stickerController];
    v9 = v8;
    if (v6)
    {
      [v8 stickerControllerDidEnterBackground];
    }

    else
    {
      [v8 stickerControllerWillEnterForeground];
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