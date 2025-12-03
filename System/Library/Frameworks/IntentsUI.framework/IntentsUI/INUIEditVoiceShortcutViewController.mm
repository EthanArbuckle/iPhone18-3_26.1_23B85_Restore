@interface INUIEditVoiceShortcutViewController
+ (void)initialize;
- (INUIEditVoiceShortcutViewController)initWithVoiceShortcut:(INVoiceShortcut *)voiceShortcut;
- (id)delegate;
- (void)loadView;
- (void)remoteViewControllerDidCancel;
- (void)remoteViewControllerDidDeleteVoiceShortcutWithIdentifier:(id)identifier;
- (void)remoteViewControllerDidUpdateVoiceShortcut:(id)shortcut error:(id)error;
- (void)setChildViewController:(id)controller;
@end

@implementation INUIEditVoiceShortcutViewController

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)remoteViewControllerDidCancel
{
  delegate = [(INUIEditVoiceShortcutViewController *)self delegate];
  [delegate editVoiceShortcutViewControllerDidCancel:self];
}

- (void)remoteViewControllerDidDeleteVoiceShortcutWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(INUIEditVoiceShortcutViewController *)self delegate];
  [delegate editVoiceShortcutViewController:self didDeleteVoiceShortcutWithIdentifier:identifierCopy];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.IntentsUI.INUIEditVoiceShortcutViewController.didDeleteVoiceShortcut" object:0];
}

- (void)remoteViewControllerDidUpdateVoiceShortcut:(id)shortcut error:(id)error
{
  errorCopy = error;
  shortcutCopy = shortcut;
  delegate = [(INUIEditVoiceShortcutViewController *)self delegate];
  [delegate editVoiceShortcutViewController:self didUpdateVoiceShortcut:shortcutCopy error:errorCopy];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.IntentsUI.INUIEditVoiceShortcutViewController.didUpdateVoiceShortcut" object:shortcutCopy];
}

- (void)setChildViewController:(id)controller
{
  controllerCopy = controller;
  currentChildViewController = [(INUIEditVoiceShortcutViewController *)self currentChildViewController];
  if (currentChildViewController)
  {
    [currentChildViewController willMoveToParentViewController:0];
    view = [currentChildViewController view];
    [view removeFromSuperview];

    [currentChildViewController removeFromParentViewController];
  }

  [controllerCopy willMoveToParentViewController:self];
  [(INUIEditVoiceShortcutViewController *)self addChildViewController:controllerCopy];
  view2 = [controllerCopy view];
  view3 = [(INUIEditVoiceShortcutViewController *)self view];
  [view3 bounds];
  [view2 setFrame:?];

  view4 = [controllerCopy view];
  [view4 setAutoresizingMask:18];

  view5 = [(INUIEditVoiceShortcutViewController *)self view];
  view6 = [controllerCopy view];
  [view5 addSubview:view6];

  [controllerCopy didMoveToParentViewController:self];
  [(INUIEditVoiceShortcutViewController *)self setCurrentChildViewController:controllerCopy];
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = INUIEditVoiceShortcutViewController;
  [(INUIEditVoiceShortcutViewController *)&v4 loadView];
  v3 = objc_alloc_init(INUILoadingVoiceShortcutViewController);
  [(INUIEditVoiceShortcutViewController *)self setChildViewController:v3];
}

- (INUIEditVoiceShortcutViewController)initWithVoiceShortcut:(INVoiceShortcut *)voiceShortcut
{
  v4 = voiceShortcut;
  v10.receiver = self;
  v10.super_class = INUIEditVoiceShortcutViewController;
  v5 = [(INUIEditVoiceShortcutViewController *)&v10 initWithNibName:0 bundle:0];
  if (v5)
  {
    objc_initWeak(&location, v5);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __61__INUIEditVoiceShortcutViewController_initWithVoiceShortcut___block_invoke;
    v7[3] = &unk_27872BF58;
    objc_copyWeak(&v8, &location);
    [INUIVoiceShortcutHostViewController getViewControllerForEditingVoiceShortcut:v4 completion:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __61__INUIEditVoiceShortcutViewController_initWithVoiceShortcut___block_invoke(uint64_t a1, void *a2, void *a3)
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
      v10 = __61__INUIEditVoiceShortcutViewController_initWithVoiceShortcut___block_invoke_2;
      v11 = v5;
    }

    else
    {
      v12 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v17 = "[INUIEditVoiceShortcutViewController initWithVoiceShortcut:]_block_invoke";
        v18 = 2114;
        v19 = v6;
        _os_log_error_impl(&dword_22CA36000, v12, OS_LOG_TYPE_ERROR, "%s Failed to get view controller for editing: %{public}@", buf, 0x16u);
      }

      v9 = v15;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v10 = __61__INUIEditVoiceShortcutViewController_initWithVoiceShortcut___block_invoke_5;
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

void __61__INUIEditVoiceShortcutViewController_initWithVoiceShortcut___block_invoke_5(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = INIntentError();
  [v5 editVoiceShortcutViewController:v3 didUpdateVoiceShortcut:0 error:v4];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    MEMORY[0x282122D80]();
  }
}

@end