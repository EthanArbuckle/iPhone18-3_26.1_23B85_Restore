@interface INUIEditVoiceShortcutViewController
+ (void)initialize;
- (INUIEditVoiceShortcutViewController)initWithVoiceShortcut:(INVoiceShortcut *)voiceShortcut;
- (id)delegate;
- (void)loadView;
- (void)remoteViewControllerDidCancel;
- (void)remoteViewControllerDidDeleteVoiceShortcutWithIdentifier:(id)a3;
- (void)remoteViewControllerDidUpdateVoiceShortcut:(id)a3 error:(id)a4;
- (void)setChildViewController:(id)a3;
@end

@implementation INUIEditVoiceShortcutViewController

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)remoteViewControllerDidCancel
{
  v3 = [(INUIEditVoiceShortcutViewController *)self delegate];
  [v3 editVoiceShortcutViewControllerDidCancel:self];
}

- (void)remoteViewControllerDidDeleteVoiceShortcutWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(INUIEditVoiceShortcutViewController *)self delegate];
  [v5 editVoiceShortcutViewController:self didDeleteVoiceShortcutWithIdentifier:v4];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"com.apple.IntentsUI.INUIEditVoiceShortcutViewController.didDeleteVoiceShortcut" object:0];
}

- (void)remoteViewControllerDidUpdateVoiceShortcut:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(INUIEditVoiceShortcutViewController *)self delegate];
  [v8 editVoiceShortcutViewController:self didUpdateVoiceShortcut:v7 error:v6];

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 postNotificationName:@"com.apple.IntentsUI.INUIEditVoiceShortcutViewController.didUpdateVoiceShortcut" object:v7];
}

- (void)setChildViewController:(id)a3
{
  v4 = a3;
  v11 = [(INUIEditVoiceShortcutViewController *)self currentChildViewController];
  if (v11)
  {
    [v11 willMoveToParentViewController:0];
    v5 = [v11 view];
    [v5 removeFromSuperview];

    [v11 removeFromParentViewController];
  }

  [v4 willMoveToParentViewController:self];
  [(INUIEditVoiceShortcutViewController *)self addChildViewController:v4];
  v6 = [v4 view];
  v7 = [(INUIEditVoiceShortcutViewController *)self view];
  [v7 bounds];
  [v6 setFrame:?];

  v8 = [v4 view];
  [v8 setAutoresizingMask:18];

  v9 = [(INUIEditVoiceShortcutViewController *)self view];
  v10 = [v4 view];
  [v9 addSubview:v10];

  [v4 didMoveToParentViewController:self];
  [(INUIEditVoiceShortcutViewController *)self setCurrentChildViewController:v4];
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
  if (objc_opt_class() == a1)
  {

    MEMORY[0x282122D80]();
  }
}

@end