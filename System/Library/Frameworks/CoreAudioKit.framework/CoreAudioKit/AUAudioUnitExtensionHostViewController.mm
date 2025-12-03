@interface AUAudioUnitExtensionHostViewController
- (AUAudioUnitExtensionHostViewController)initWithConfiguration:(id)configuration;
- (AUAudioUnitExtensionHostViewController)initWithConfiguration:(id)configuration completion:(id)completion;
- (CGSize)determineViewSize:(id)size;
- (id)_containedRemoteViewController;
- (void)addChildViewController:(id)controller;
- (void)dealloc;
- (void)hostViewControllerDidActivate:(id)activate;
- (void)hostViewControllerWillDeactivate:(id)deactivate error:(id)error;
- (void)setAUContainerViewConstraints:(id)constraints childView:(id)view auViewSize:(CGSize)size;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AUAudioUnitExtensionHostViewController

- (AUAudioUnitExtensionHostViewController)initWithConfiguration:(id)configuration
{
  v7.receiver = self;
  v7.super_class = AUAudioUnitExtensionHostViewController;
  v3 = [(_EXHostViewController *)&v7 initWithConfiguration:configuration];
  v4 = v3;
  if (v3)
  {
    [(_EXHostViewController *)v3 setDelegate:v3];
    v5 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(_EXHostViewController *)v4 setPlaceholderView:v5];
  }

  return v4;
}

- (AUAudioUnitExtensionHostViewController)initWithConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  v7 = [(AUAudioUnitExtensionHostViewController *)self initWithConfiguration:configuration];
  v8 = v7;
  if (v7)
  {
    [(AUAudioUnitExtensionHostViewController *)v7 setDidBeginHostingCallback:completionCopy];
  }

  return v8;
}

- (id)_containedRemoteViewController
{
  childViewControllers = [(AUAudioUnitExtensionHostViewController *)self childViewControllers];
  firstObject = [childViewControllers firstObject];

  return firstObject;
}

- (void)addChildViewController:(id)controller
{
  controllerCopy = controller;
  v20.receiver = self;
  v20.super_class = AUAudioUnitExtensionHostViewController;
  [(AUAudioUnitExtensionHostViewController *)&v20 addChildViewController:controllerCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_auViewController, controller);
    view = [controllerCopy view];
    [(AUAudioUnitExtensionHostViewController *)self determineViewSize:controllerCopy];
    v8 = v7;
    v10 = v9;
    [(AUAudioUnitExtensionHostViewController *)self setPreferredContentSize:?];
    view2 = [(AUAudioUnitExtensionHostViewController *)self view];
    window = [view2 window];
    [(AUAudioUnitExtensionHostViewController *)self resizeWindow:window size:v8, v10];

    view3 = [(AUAudioUnitExtensionHostViewController *)self view];
    [view3 setFrame:{0.0, 0.0, v8, v10}];

    view4 = [(AUAudioUnitExtensionHostViewController *)self view];
    [view4 addSubview:view];

    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    view5 = [(AUAudioUnitExtensionHostViewController *)self view];
    [(AUAudioUnitExtensionHostViewController *)self setAUContainerViewConstraints:view5 childView:view auViewSize:v8, v10];

    view6 = [(AUAudioUnitExtensionHostViewController *)self view];
    [(AUAudioUnitExtensionHostViewController *)self markViewForRedraw:view6];

    [(AUAudioUnitExtensionHostViewController *)self markViewForRedraw:view];
    didBeginHostingCallback = [(AUAudioUnitExtensionHostViewController *)self didBeginHostingCallback];

    if (didBeginHostingCallback)
    {
      didBeginHostingCallback2 = [(AUAudioUnitExtensionHostViewController *)self didBeginHostingCallback];
      connection = [(AUAudioUnitExtensionHostViewController *)self connection];
      (didBeginHostingCallback2)[2](didBeginHostingCallback2, self, connection, 0);

      [(AUAudioUnitExtensionHostViewController *)self setDidBeginHostingCallback:0];
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = AUAudioUnitExtensionHostViewController;
  [(_EXHostViewController *)&v5 viewWillAppear:appear];
  view = [(UIViewController *)self->_auViewController view];
  [view setHidden:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = AUAudioUnitExtensionHostViewController;
  [(_EXHostViewController *)&v5 viewDidDisappear:disappear];
  view = [(UIViewController *)self->_auViewController view];
  [view setHidden:1];
}

- (CGSize)determineViewSize:(id)size
{
  sizeCopy = size;
  [sizeCopy preferredContentSize];
  v5 = v4;
  [sizeCopy preferredContentSize];
  v7 = v6;
  if (!v5)
  {
    view = [sizeCopy view];
    [view frame];
    v8 = v11;

    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    view2 = [sizeCopy view];
    [view2 frame];
    v9 = v13;

    goto LABEL_6;
  }

  v8 = v5;
  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = v7;
LABEL_6:

  v14 = v8;
  v15 = v9;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)setAUContainerViewConstraints:(id)constraints childView:(id)view auViewSize:(CGSize)size
{
  constraintsCopy = constraints;
  v9 = _NSDictionaryOfVariableBindings(&cfstr_Childview.isa, view, 0);
  v7 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[childView]|" options:0 metrics:0 views:v9];
  [constraintsCopy addConstraints:v7];

  v8 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[childView]|" options:0 metrics:0 views:v9];
  [constraintsCopy addConstraints:v8];
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  childViewControllers = [(AUAudioUnitExtensionHostViewController *)self childViewControllers];
  v4 = [childViewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(childViewControllers);
        }

        view = [*(*(&v10 + 1) + 8 * v7) view];
        [view removeFromSuperview];

        ++v7;
      }

      while (v5 != v7);
      v5 = [childViewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = AUAudioUnitExtensionHostViewController;
  [(_EXHostViewController *)&v9 dealloc];
}

- (void)hostViewControllerDidActivate:(id)activate
{
  activateCopy = activate;
  v20 = 0;
  v5 = [(_EXHostViewController *)self makeXPCConnectionWithError:&v20];
  v6 = v20;
  v7 = v6;
  if (v5)
  {
    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A64038];
    [v5 setExportedInterface:v8];

    [v5 setExportedObject:self];
    objc_initWeak(&location, self);
    objc_initWeak(&from, v5);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __72__AUAudioUnitExtensionHostViewController_hostViewControllerDidActivate___block_invoke;
    v15[3] = &unk_278A25630;
    objc_copyWeak(&v16, &location);
    objc_copyWeak(&v17, &from);
    [v5 setInterruptionHandler:v15];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __72__AUAudioUnitExtensionHostViewController_hostViewControllerDidActivate___block_invoke_3;
    v12[3] = &unk_278A25630;
    objc_copyWeak(&v13, &location);
    objc_copyWeak(&v14, &from);
    [v5 setInvalidationHandler:v12];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__AUAudioUnitExtensionHostViewController_hostViewControllerDidActivate___block_invoke_5;
    block[3] = &unk_278A25630;
    objc_copyWeak(&v10, &location);
    objc_copyWeak(&v11, &from);
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    NSLog(&cfstr_ErrorErrorCrea.isa, v6);
  }
}

void __72__AUAudioUnitExtensionHostViewController_hostViewControllerDidActivate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (WeakRetained && v3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __72__AUAudioUnitExtensionHostViewController_hostViewControllerDidActivate___block_invoke_2;
    v5[3] = &unk_278A25608;
    v6 = v3;
    v7 = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

void __72__AUAudioUnitExtensionHostViewController_hostViewControllerDidActivate___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = [*(a1 + 40) connection];
  v3 = *(a1 + 32);

  if (v2 == v3)
  {
    v4 = *(a1 + 40);

    [v4 setConnection:0];
  }
}

void __72__AUAudioUnitExtensionHostViewController_hostViewControllerDidActivate___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (WeakRetained && v3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __72__AUAudioUnitExtensionHostViewController_hostViewControllerDidActivate___block_invoke_4;
    v5[3] = &unk_278A25608;
    v5[4] = WeakRetained;
    v6 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

void __72__AUAudioUnitExtensionHostViewController_hostViewControllerDidActivate___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    v4 = *(a1 + 32);

    [v4 setConnection:0];
  }
}

void __72__AUAudioUnitExtensionHostViewController_hostViewControllerDidActivate___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v2)
  {
    [WeakRetained setConnection:v2];
    [v2 resume];
  }
}

- (void)hostViewControllerWillDeactivate:(id)deactivate error:(id)error
{
  v5 = [(AUAudioUnitExtensionHostViewController *)self connection:deactivate];
  [v5 invalidate];

  [(AUAudioUnitExtensionHostViewController *)self setConnection:0];

  [(_EXHostViewController *)self setConfiguration:0];
}

@end