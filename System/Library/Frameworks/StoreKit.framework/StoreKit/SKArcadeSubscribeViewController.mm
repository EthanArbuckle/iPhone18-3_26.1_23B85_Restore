@interface SKArcadeSubscribeViewController
- (BOOL)prefersStatusBarHidden;
- (SKArcadeSubscribeViewController)initWithItemID:(id)a3 bundleID:(id)a4;
- (SKArcadeSubscribeViewControllerDelegate)delegate;
- (unint64_t)supportedInterfaceOrientations;
- (void)_loadOcelotUpsellExtension;
- (void)_setupRemoteChildViewController;
- (void)dealloc;
- (void)finish;
- (void)finishExtension;
- (void)storeRemoteViewControllerDidDismiss;
- (void)storeRemoteViewControllerTerminatedWithError:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SKArcadeSubscribeViewController

- (SKArcadeSubscribeViewController)initWithItemID:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SKArcadeSubscribeViewController;
  v8 = [(SKArcadeSubscribeViewController *)&v11 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    [(SKArcadeSubscribeViewController *)v8 setItemID:v6];
    [(SKArcadeSubscribeViewController *)v9 setBundleID:v7];
  }

  return v9;
}

- (void)dealloc
{
  remoteViewController = self->_remoteViewController;
  if (remoteViewController)
  {
    [(SKStoreRemoteViewController *)remoteViewController willMoveToParentViewController:0];
    if ([(SKStoreRemoteViewController *)self->_remoteViewController isViewLoaded])
    {
      v4 = [(SKStoreRemoteViewController *)self->_remoteViewController view];
      [v4 removeFromSuperview];
    }

    [(SKStoreRemoteViewController *)self->_remoteViewController removeFromParentViewController];
  }

  extension = self->_extension;
  if (extension)
  {
    if (self->_extensionRequestIdentifier)
    {
      [(NSExtension *)extension cancelExtensionRequestWithIdentifier:?];
      extension = self->_extension;
    }

    [(NSExtension *)extension _kill:9];
  }

  v6.receiver = self;
  v6.super_class = SKArcadeSubscribeViewController;
  [(SKArcadeSubscribeViewController *)&v6 dealloc];
}

- (void)finishExtension
{
  extension = self->_extension;
  if (extension)
  {
    if (self->_extensionRequestIdentifier)
    {
      [(NSExtension *)extension cancelExtensionRequestWithIdentifier:?];
    }
  }
}

- (BOOL)prefersStatusBarHidden
{
  v3 = [(SKArcadeSubscribeViewController *)self remoteViewController];

  if (!v3)
  {
    return 1;
  }

  v4 = [(SKArcadeSubscribeViewController *)self remoteViewController];
  v5 = [v4 prefersStatusBarHidden];

  return v5;
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = [(SKArcadeSubscribeViewController *)self remoteViewController];

  if (v3)
  {
    [(SKArcadeSubscribeViewController *)self remoteViewController];
  }

  else
  {
    [(SKArcadeSubscribeViewController *)self parentViewController];
  }
  v4 = ;
  v5 = [v4 supportedInterfaceOrientations];

  return v5;
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SKArcadeSubscribeViewController;
  [(SKArcadeSubscribeViewController *)&v5 viewDidAppear:a3];
  v4 = [(SKArcadeSubscribeViewController *)self extension];

  if (!v4)
  {
    [(SKArcadeSubscribeViewController *)self _loadOcelotUpsellExtension];
  }
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v8.receiver = self;
  v8.super_class = SKArcadeSubscribeViewController;
  v6 = a4;
  v7 = a3;
  [(SKArcadeSubscribeViewController *)&v8 willTransitionToTraitCollection:v7 withTransitionCoordinator:v6];
  [(_UIRemoteViewController *)self->_remoteViewController willTransitionToTraitCollection:v7 withTransitionCoordinator:v6, v8.receiver, v8.super_class];
}

- (void)finish
{
  v2 = [(SKArcadeSubscribeViewController *)self delegate];
  [v2 didFinishWithError:0];
}

- (void)_loadOcelotUpsellExtension
{
  v12[1] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v10 = 0;
  v3 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:@"com.apple.AppStore.SubscribePageExtension" error:&v10];
  v4 = v10;
  v5 = v4;
  if (v4)
  {
    NSLog(&cfstr_ErrorInstantia.isa, v4);
    v6 = [(SKArcadeSubscribeViewController *)self delegate];
    [v6 didFinishWithError:v5];
  }

  else if (v3)
  {
    [(SKArcadeSubscribeViewController *)self setExtension:v3];
    v6 = objc_opt_new();
    v12[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__SKArcadeSubscribeViewController__loadOcelotUpsellExtension__block_invoke;
    v8[3] = &unk_1E7B27958;
    objc_copyWeak(&v9, &location);
    v8[4] = self;
    [v3 instantiateViewControllerWithInputItems:v7 connectionHandler:v8];

    objc_destroyWeak(&v9);
  }

  else
  {
    NSLog(&cfstr_ErrorNoExtensi.isa);
    v6 = [(SKArcadeSubscribeViewController *)self delegate];
    [v6 didFinishWithError:0];
  }

  objc_destroyWeak(&location);
}

void __61__SKArcadeSubscribeViewController__loadOcelotUpsellExtension__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v9)
  {
    NSLog(&cfstr_ErrorInstantia_0.isa, v9);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__SKArcadeSubscribeViewController__loadOcelotUpsellExtension__block_invoke_2;
  block[3] = &unk_1E7B27930;
  block[4] = WeakRetained;
  v16 = v7;
  v11 = *(a1 + 32);
  v17 = v8;
  v18 = v11;
  v19 = v9;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __61__SKArcadeSubscribeViewController__loadOcelotUpsellExtension__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setExtensionRequestIdentifier:*(a1 + 40)];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = *(a1 + 56);
    v4 = *(a1 + 48);
    [v4 setDelegate:v2];
    [*(a1 + 32) setRemoteViewController:v4];
    [*(a1 + 32) _setupRemoteChildViewController];
  }

  else
  {
    v3 = objc_opt_class();
    NSLog(&cfstr_ErrorLoadingRe.isa, v3);
    v4 = [*(a1 + 56) delegate];
    [v4 didFinishWithError:*(a1 + 64)];
  }
}

- (void)_setupRemoteChildViewController
{
  v3 = [(SKArcadeSubscribeViewController *)self remoteViewController];
  v15 = [v3 serviceViewControllerProxy];

  v4 = [MEMORY[0x1E695E0F8] mutableCopy];
  v5 = [(SKArcadeSubscribeViewController *)self itemID];
  v6 = [v5 stringValue];

  if (v6)
  {
    v7 = [(SKArcadeSubscribeViewController *)self itemID];
    v8 = [v7 stringValue];
    [v4 setObject:v8 forKeyedSubscript:@"itemID"];
  }

  [v15 setupWithParameters:v4];
  v9 = [(SKArcadeSubscribeViewController *)self remoteViewController];
  [(SKArcadeSubscribeViewController *)self addChildViewController:v9];

  v10 = [(SKArcadeSubscribeViewController *)self remoteViewController];
  v11 = [v10 view];

  v12 = [(SKArcadeSubscribeViewController *)self view];
  [v12 bounds];
  [v11 setFrame:?];

  [v11 setAutoresizingMask:18];
  v13 = [(SKArcadeSubscribeViewController *)self view];
  [v13 addSubview:v11];

  v14 = [(SKArcadeSubscribeViewController *)self remoteViewController];
  [v14 didMoveToParentViewController:self];
}

- (void)storeRemoteViewControllerDidDismiss
{
  v2 = [(SKArcadeSubscribeViewController *)self delegate];
  [v2 didFinishWithError:0];
}

- (void)storeRemoteViewControllerTerminatedWithError:(id)a3
{
  v4 = a3;
  v5 = [(SKArcadeSubscribeViewController *)self delegate];
  [v5 didFinishWithError:v4];
}

- (SKArcadeSubscribeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end