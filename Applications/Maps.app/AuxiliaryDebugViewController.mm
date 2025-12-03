@interface AuxiliaryDebugViewController
- (AuxiliaryDebugViewController)init;
- (id)delegate;
- (id)navigationDelegate;
- (void)_done;
- (void)segueToViewController:(id)controller;
- (void)willNavigateToSubsequentController:(id)controller;
@end

@implementation AuxiliaryDebugViewController

- (id)navigationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);

  return WeakRetained;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_done
{
  delegate = [(AuxiliaryDebugViewController *)self delegate];
  [delegate debugControllerDidFinish:self];
}

- (void)willNavigateToSubsequentController:(id)controller
{
  controllerCopy = controller;
  delegate = [(AuxiliaryDebugViewController *)self delegate];
  [controllerCopy setDelegate:delegate];
}

- (void)segueToViewController:(id)controller
{
  controllerCopy = controller;
  [(AuxiliaryDebugViewController *)self willNavigateToSubsequentController:controllerCopy];
  navigationDelegate = [(AuxiliaryDebugViewController *)self navigationDelegate];

  if (navigationDelegate)
  {
    navigationDelegate2 = [(AuxiliaryDebugViewController *)self navigationDelegate];
    [navigationDelegate2 debugViewController:self segueToViewController:controllerCopy];
  }

  else
  {
    navigationDelegate2 = [(AuxiliaryDebugViewController *)self navigationController];
    [navigationDelegate2 pushViewController:controllerCopy animated:1];
  }
}

- (AuxiliaryDebugViewController)init
{
  v7.receiver = self;
  v7.super_class = AuxiliaryDebugViewController;
  v2 = [(AuxiliaryDebugViewController *)&v7 initWithStyle:1];
  if (v2)
  {
    navigationDestinationTitle = [objc_opt_class() navigationDestinationTitle];
    [(AuxiliaryDebugViewController *)v2 setTitle:navigationDestinationTitle];

    v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:v2 action:"_done"];
    navigationItem = [(AuxiliaryDebugViewController *)v2 navigationItem];
    [navigationItem setRightBarButtonItem:v4];
  }

  return v2;
}

@end