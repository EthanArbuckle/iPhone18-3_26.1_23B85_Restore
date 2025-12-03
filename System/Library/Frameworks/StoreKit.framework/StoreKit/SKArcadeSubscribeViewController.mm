@interface SKArcadeSubscribeViewController
- (BOOL)prefersStatusBarHidden;
- (SKArcadeSubscribeViewController)initWithItemID:(id)d bundleID:(id)iD;
- (SKArcadeSubscribeViewControllerDelegate)delegate;
- (unint64_t)supportedInterfaceOrientations;
- (void)_loadOcelotUpsellExtension;
- (void)_setupRemoteChildViewController;
- (void)dealloc;
- (void)finish;
- (void)finishExtension;
- (void)storeRemoteViewControllerDidDismiss;
- (void)storeRemoteViewControllerTerminatedWithError:(id)error;
- (void)viewDidAppear:(BOOL)appear;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation SKArcadeSubscribeViewController

- (SKArcadeSubscribeViewController)initWithItemID:(id)d bundleID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v11.receiver = self;
  v11.super_class = SKArcadeSubscribeViewController;
  v8 = [(SKArcadeSubscribeViewController *)&v11 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    [(SKArcadeSubscribeViewController *)v8 setItemID:dCopy];
    [(SKArcadeSubscribeViewController *)v9 setBundleID:iDCopy];
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
      view = [(SKStoreRemoteViewController *)self->_remoteViewController view];
      [view removeFromSuperview];
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
  remoteViewController = [(SKArcadeSubscribeViewController *)self remoteViewController];

  if (!remoteViewController)
  {
    return 1;
  }

  remoteViewController2 = [(SKArcadeSubscribeViewController *)self remoteViewController];
  prefersStatusBarHidden = [remoteViewController2 prefersStatusBarHidden];

  return prefersStatusBarHidden;
}

- (unint64_t)supportedInterfaceOrientations
{
  remoteViewController = [(SKArcadeSubscribeViewController *)self remoteViewController];

  if (remoteViewController)
  {
    [(SKArcadeSubscribeViewController *)self remoteViewController];
  }

  else
  {
    [(SKArcadeSubscribeViewController *)self parentViewController];
  }
  v4 = ;
  supportedInterfaceOrientations = [v4 supportedInterfaceOrientations];

  return supportedInterfaceOrientations;
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SKArcadeSubscribeViewController;
  [(SKArcadeSubscribeViewController *)&v5 viewDidAppear:appear];
  extension = [(SKArcadeSubscribeViewController *)self extension];

  if (!extension)
  {
    [(SKArcadeSubscribeViewController *)self _loadOcelotUpsellExtension];
  }
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v8.receiver = self;
  v8.super_class = SKArcadeSubscribeViewController;
  coordinatorCopy = coordinator;
  collectionCopy = collection;
  [(SKArcadeSubscribeViewController *)&v8 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
  [(_UIRemoteViewController *)self->_remoteViewController willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy, v8.receiver, v8.super_class];
}

- (void)finish
{
  delegate = [(SKArcadeSubscribeViewController *)self delegate];
  [delegate didFinishWithError:0];
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
    delegate = [(SKArcadeSubscribeViewController *)self delegate];
    [delegate didFinishWithError:v5];
  }

  else if (v3)
  {
    [(SKArcadeSubscribeViewController *)self setExtension:v3];
    delegate = objc_opt_new();
    v12[0] = delegate;
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
    delegate = [(SKArcadeSubscribeViewController *)self delegate];
    [delegate didFinishWithError:0];
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
  remoteViewController = [(SKArcadeSubscribeViewController *)self remoteViewController];
  serviceViewControllerProxy = [remoteViewController serviceViewControllerProxy];

  v4 = [MEMORY[0x1E695E0F8] mutableCopy];
  itemID = [(SKArcadeSubscribeViewController *)self itemID];
  stringValue = [itemID stringValue];

  if (stringValue)
  {
    itemID2 = [(SKArcadeSubscribeViewController *)self itemID];
    stringValue2 = [itemID2 stringValue];
    [v4 setObject:stringValue2 forKeyedSubscript:@"itemID"];
  }

  [serviceViewControllerProxy setupWithParameters:v4];
  remoteViewController2 = [(SKArcadeSubscribeViewController *)self remoteViewController];
  [(SKArcadeSubscribeViewController *)self addChildViewController:remoteViewController2];

  remoteViewController3 = [(SKArcadeSubscribeViewController *)self remoteViewController];
  view = [remoteViewController3 view];

  view2 = [(SKArcadeSubscribeViewController *)self view];
  [view2 bounds];
  [view setFrame:?];

  [view setAutoresizingMask:18];
  view3 = [(SKArcadeSubscribeViewController *)self view];
  [view3 addSubview:view];

  remoteViewController4 = [(SKArcadeSubscribeViewController *)self remoteViewController];
  [remoteViewController4 didMoveToParentViewController:self];
}

- (void)storeRemoteViewControllerDidDismiss
{
  delegate = [(SKArcadeSubscribeViewController *)self delegate];
  [delegate didFinishWithError:0];
}

- (void)storeRemoteViewControllerTerminatedWithError:(id)error
{
  errorCopy = error;
  delegate = [(SKArcadeSubscribeViewController *)self delegate];
  [delegate didFinishWithError:errorCopy];
}

- (SKArcadeSubscribeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end