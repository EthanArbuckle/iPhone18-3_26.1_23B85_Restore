@interface NPUIMediaControlsStandaloneViewController
- (NPUIMediaControlsStandaloneViewControllerDelegate)standaloneControlsDelegate;
- (void)mediaControlsViewController:(id)controller didSelectRoute:(id)route;
- (void)setStandaloneControlsDelegate:(id)delegate;
@end

@implementation NPUIMediaControlsStandaloneViewController

- (void)setStandaloneControlsDelegate:(id)delegate
{
  obj = delegate;
  standaloneControlsDelegate = [(NPUIMediaControlsStandaloneViewController *)self standaloneControlsDelegate];

  if (standaloneControlsDelegate != obj)
  {
    v5 = objc_storeWeak(&self->_standaloneControlsDelegate, obj);
    if (obj)
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    [(NPUIMediaControlsStandaloneViewController *)self setDelegate:selfCopy];
  }
}

- (void)mediaControlsViewController:(id)controller didSelectRoute:(id)route
{
  routeCopy = route;
  standaloneControlsDelegate = [(NPUIMediaControlsStandaloneViewController *)self standaloneControlsDelegate];
  [standaloneControlsDelegate standaloneMediaControlsViewController:self didSelectRoute:routeCopy];
}

- (NPUIMediaControlsStandaloneViewControllerDelegate)standaloneControlsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_standaloneControlsDelegate);

  return WeakRetained;
}

@end