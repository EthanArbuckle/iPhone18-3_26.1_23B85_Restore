@interface AuxiliaryDebugViewController
- (AuxiliaryDebugViewController)init;
- (id)delegate;
- (id)navigationDelegate;
- (void)_done;
- (void)segueToViewController:(id)a3;
- (void)willNavigateToSubsequentController:(id)a3;
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
  v3 = [(AuxiliaryDebugViewController *)self delegate];
  [v3 debugControllerDidFinish:self];
}

- (void)willNavigateToSubsequentController:(id)a3
{
  v4 = a3;
  v5 = [(AuxiliaryDebugViewController *)self delegate];
  [v4 setDelegate:v5];
}

- (void)segueToViewController:(id)a3
{
  v4 = a3;
  [(AuxiliaryDebugViewController *)self willNavigateToSubsequentController:v4];
  v5 = [(AuxiliaryDebugViewController *)self navigationDelegate];

  if (v5)
  {
    v6 = [(AuxiliaryDebugViewController *)self navigationDelegate];
    [v6 debugViewController:self segueToViewController:v4];
  }

  else
  {
    v6 = [(AuxiliaryDebugViewController *)self navigationController];
    [v6 pushViewController:v4 animated:1];
  }
}

- (AuxiliaryDebugViewController)init
{
  v7.receiver = self;
  v7.super_class = AuxiliaryDebugViewController;
  v2 = [(AuxiliaryDebugViewController *)&v7 initWithStyle:1];
  if (v2)
  {
    v3 = [objc_opt_class() navigationDestinationTitle];
    [(AuxiliaryDebugViewController *)v2 setTitle:v3];

    v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:v2 action:"_done"];
    v5 = [(AuxiliaryDebugViewController *)v2 navigationItem];
    [v5 setRightBarButtonItem:v4];
  }

  return v2;
}

@end