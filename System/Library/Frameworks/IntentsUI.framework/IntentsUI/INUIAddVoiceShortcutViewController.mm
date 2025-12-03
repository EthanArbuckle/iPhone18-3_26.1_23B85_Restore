@interface INUIAddVoiceShortcutViewController
+ (void)initialize;
- (INUIAddVoiceShortcutViewController)initWithShortcut:(INShortcut *)shortcut;
- (id)delegate;
- (void)loadView;
- (void)remoteViewControllerDidCancel;
- (void)remoteViewControllerDidCreateVoiceShortcut:(id)shortcut error:(id)error;
- (void)setChildViewController:(id)controller;
@end

@implementation INUIAddVoiceShortcutViewController

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)remoteViewControllerDidCancel
{
  delegate = [(INUIAddVoiceShortcutViewController *)self delegate];
  [delegate addVoiceShortcutViewControllerDidCancel:self];
}

- (void)remoteViewControllerDidCreateVoiceShortcut:(id)shortcut error:(id)error
{
  errorCopy = error;
  shortcutCopy = shortcut;
  delegate = [(INUIAddVoiceShortcutViewController *)self delegate];
  [delegate addVoiceShortcutViewController:self didFinishWithVoiceShortcut:shortcutCopy error:errorCopy];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.IntentsUI.INUIAddVoiceShortcutViewController.didAddVoiceShortcut" object:shortcutCopy];
}

- (void)setChildViewController:(id)controller
{
  controllerCopy = controller;
  currentChildViewController = [(INUIAddVoiceShortcutViewController *)self currentChildViewController];
  if (currentChildViewController)
  {
    [currentChildViewController willMoveToParentViewController:0];
    view = [currentChildViewController view];
    [view removeFromSuperview];

    [currentChildViewController removeFromParentViewController];
  }

  [controllerCopy willMoveToParentViewController:self];
  [(INUIAddVoiceShortcutViewController *)self addChildViewController:controllerCopy];
  view2 = [controllerCopy view];
  view3 = [(INUIAddVoiceShortcutViewController *)self view];
  [view3 bounds];
  [view2 setFrame:?];

  view4 = [controllerCopy view];
  [view4 setAutoresizingMask:18];

  view5 = [(INUIAddVoiceShortcutViewController *)self view];
  view6 = [controllerCopy view];
  [view5 addSubview:view6];

  [controllerCopy didMoveToParentViewController:self];
  [(INUIAddVoiceShortcutViewController *)self setCurrentChildViewController:controllerCopy];
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = INUIAddVoiceShortcutViewController;
  [(INUIAddVoiceShortcutViewController *)&v4 loadView];
  v3 = objc_alloc_init(INUILoadingVoiceShortcutViewController);
  [(INUIAddVoiceShortcutViewController *)self setChildViewController:v3];
}

- (INUIAddVoiceShortcutViewController)initWithShortcut:(INShortcut *)shortcut
{
  v5 = shortcut;
  intent = [(INShortcut *)v5 intent];
  userActivity = [(INShortcut *)v5 userActivity];
  v8 = userActivity == 0;

  if ((intent != 0) != v8)
  {
    v9 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"INshortcut must have either intent xor userActivity" userInfo:0];
    [v9 raise];
  }

  v16.receiver = self;
  v16.super_class = INUIAddVoiceShortcutViewController;
  v10 = [(INUIAddVoiceShortcutViewController *)&v16 initWithNibName:0 bundle:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_shortcut, shortcut);
    objc_initWeak(&location, v11);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __55__INUIAddVoiceShortcutViewController_initWithShortcut___block_invoke;
    v13[3] = &unk_27872BF58;
    objc_copyWeak(&v14, &location);
    [INUIVoiceShortcutHostViewController getViewControllerForAddingShortcut:v5 completion:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __55__INUIAddVoiceShortcutViewController_initWithShortcut___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      [WeakRetained _setRemoteHostViewController:v5];
      [v5 setDelegate:v8];
      v9 = v14;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v10 = __55__INUIAddVoiceShortcutViewController_initWithShortcut___block_invoke_2;
      v11 = v5;
    }

    else
    {
      v12 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v17 = "[INUIAddVoiceShortcutViewController initWithShortcut:]_block_invoke";
        v18 = 2114;
        v19 = v6;
        _os_log_error_impl(&dword_22CA36000, v12, OS_LOG_TYPE_ERROR, "%s Failed to get view controller for adding: %{public}@", buf, 0x16u);
      }

      v9 = v15;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v10 = __55__INUIAddVoiceShortcutViewController_initWithShortcut___block_invoke_6;
      v11 = v6;
    }

    v9[2] = v10;
    v9[3] = &unk_27872BF30;
    v9[4] = v8;
    v9[5] = v11;
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __55__INUIAddVoiceShortcutViewController_initWithShortcut___block_invoke_6(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = INIntentError();
  [v5 addVoiceShortcutViewController:v3 didFinishWithVoiceShortcut:0 error:v4];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    MEMORY[0x282122D80]();
  }
}

@end