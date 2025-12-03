@interface AccountSetupController
- (AccountSetupController)initWithNibName:(id)name bundle:(id)bundle;
- (AccountSetupControllerDelegate)accountSetupDelegate;
- (BOOL)accountSetupInProgress;
- (BOOL)shouldSnapshot;
- (MailMainScene)scene;
- (id)customDefaultPNGName;
- (void)_accountSetupDidChange:(BOOL)change;
- (void)dealloc;
- (void)didDismissFormSheetView;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AccountSetupController

- (AccountSetupController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v11.receiver = self;
  v11.super_class = AccountSetupController;
  v8 = [(AccountSetupController *)&v11 initWithNibName:nameCopy bundle:bundleCopy];
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

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = AccountSetupController;
  [(AccountSetupController *)&v6 viewWillAppear:appear];
  scene = [(AccountSetupController *)self scene];
  extendedLaunchTracker = [scene extendedLaunchTracker];
  [extendedLaunchTracker observeViewController:self scene:scene];

  self->_setupWasInProgress = [(AccountSetupController *)self accountSetupInProgress];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = AccountSetupController;
  [(AccountSetupController *)&v6 viewDidAppear:appear];
  if (self->_setupWasInProgress)
  {
    self->_setupWasInProgress = 0;
    [(AccountSetupController *)self _accountSetupDidChange:0];
  }

  scene = [(AccountSetupController *)self scene];
  extendedLaunchTracker = [scene extendedLaunchTracker];
  [extendedLaunchTracker didFinishLoadViewController:self scene:scene];
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
  selfCopy = self;
  visibleViewController = [(AccountSetupController *)self visibleViewController];
  LOBYTE(selfCopy) = visibleViewController == selfCopy->_addTypeController;

  return selfCopy;
}

- (id)customDefaultPNGName
{
  if ((+[UIDevice mf_isPadIdiom]& 1) != 0 || ![(AccountSetupController *)self shouldSnapshot])
  {
    customDefaultPNGName = @"Default-AccountSetup";
  }

  else
  {
    v5.receiver = self;
    v5.super_class = AccountSetupController;
    customDefaultPNGName = [(AccountSetupController *)&v5 customDefaultPNGName];
  }

  return customDefaultPNGName;
}

- (void)_accountSetupDidChange:(BOOL)change
{
  changeCopy = change;
  accountSetupDelegate = [(AccountSetupController *)self accountSetupDelegate];
  if (objc_opt_respondsToSelector())
  {
    [accountSetupDelegate accountSetupControllerDidChange:self finished:changeCopy];
  }
}

- (BOOL)accountSetupInProgress
{
  selfCopy = self;
  visibleViewController = [(AccountSetupController *)self visibleViewController];
  LOBYTE(selfCopy) = visibleViewController != selfCopy->_addTypeController;

  return selfCopy;
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