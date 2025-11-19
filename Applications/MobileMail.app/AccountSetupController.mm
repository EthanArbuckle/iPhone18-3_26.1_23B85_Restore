@interface AccountSetupController
- (AccountSetupController)initWithNibName:(id)a3 bundle:(id)a4;
- (AccountSetupControllerDelegate)accountSetupDelegate;
- (BOOL)accountSetupInProgress;
- (BOOL)shouldSnapshot;
- (MailMainScene)scene;
- (id)customDefaultPNGName;
- (void)_accountSetupDidChange:(BOOL)a3;
- (void)dealloc;
- (void)didDismissFormSheetView;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AccountSetupController

- (AccountSetupController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AccountSetupController;
  v8 = [(AccountSetupController *)&v11 initWithNibName:v6 bundle:v7];
  if (v8)
  {
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v8 selector:"_accountSetupDidFinish:" name:ACUIAccountSetupDidFinish object:0];
  }

  return v8;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:ACUIAccountSetupDidFinish object:0];

  v4.receiver = self;
  v4.super_class = AccountSetupController;
  [(AccountSetupController *)&v4 dealloc];
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = AccountSetupController;
  [(AccountSetupController *)&v5 loadView];
  v3 = objc_alloc_init(ACUIAddMailAccountViewController);
  addTypeController = self->_addTypeController;
  self->_addTypeController = v3;

  [(AccountSetupController *)self showController:self->_addTypeController];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = AccountSetupController;
  [(AccountSetupController *)&v6 viewWillAppear:a3];
  v4 = [(AccountSetupController *)self scene];
  v5 = [v4 extendedLaunchTracker];
  [v5 observeViewController:self scene:v4];

  self->_setupWasInProgress = [(AccountSetupController *)self accountSetupInProgress];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = AccountSetupController;
  [(AccountSetupController *)&v6 viewDidAppear:a3];
  if (self->_setupWasInProgress)
  {
    self->_setupWasInProgress = 0;
    [(AccountSetupController *)self _accountSetupDidChange:0];
  }

  v4 = [(AccountSetupController *)self scene];
  v5 = [v4 extendedLaunchTracker];
  [v5 didFinishLoadViewController:self scene:v4];
}

- (void)didDismissFormSheetView
{
  v3.receiver = self;
  v3.super_class = AccountSetupController;
  [(AccountSetupController *)&v3 didDismissFormSheetView];
  [(AccountSetupController *)self _accountSetupDidChange:0];
}

- (BOOL)shouldSnapshot
{
  v2 = self;
  v3 = [(AccountSetupController *)self visibleViewController];
  LOBYTE(v2) = v3 == v2->_addTypeController;

  return v2;
}

- (id)customDefaultPNGName
{
  if ((+[UIDevice mf_isPadIdiom]& 1) != 0 || ![(AccountSetupController *)self shouldSnapshot])
  {
    v3 = @"Default-AccountSetup";
  }

  else
  {
    v5.receiver = self;
    v5.super_class = AccountSetupController;
    v3 = [(AccountSetupController *)&v5 customDefaultPNGName];
  }

  return v3;
}

- (void)_accountSetupDidChange:(BOOL)a3
{
  v3 = a3;
  v5 = [(AccountSetupController *)self accountSetupDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 accountSetupControllerDidChange:self finished:v3];
  }
}

- (BOOL)accountSetupInProgress
{
  v2 = self;
  v3 = [(AccountSetupController *)self visibleViewController];
  LOBYTE(v2) = v3 != v2->_addTypeController;

  return v2;
}

- (AccountSetupControllerDelegate)accountSetupDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accountSetupDelegate);

  return WeakRetained;
}

- (MailMainScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end