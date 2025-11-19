@interface NPUIMediaControlsStandaloneViewController
- (NPUIMediaControlsStandaloneViewControllerDelegate)standaloneControlsDelegate;
- (void)mediaControlsViewController:(id)a3 didSelectRoute:(id)a4;
- (void)setStandaloneControlsDelegate:(id)a3;
@end

@implementation NPUIMediaControlsStandaloneViewController

- (void)setStandaloneControlsDelegate:(id)a3
{
  obj = a3;
  v4 = [(NPUIMediaControlsStandaloneViewController *)self standaloneControlsDelegate];

  if (v4 != obj)
  {
    v5 = objc_storeWeak(&self->_standaloneControlsDelegate, obj);
    if (obj)
    {
      v6 = self;
    }

    else
    {
      v6 = 0;
    }

    [(NPUIMediaControlsStandaloneViewController *)self setDelegate:v6];
  }
}

- (void)mediaControlsViewController:(id)a3 didSelectRoute:(id)a4
{
  v5 = a4;
  v6 = [(NPUIMediaControlsStandaloneViewController *)self standaloneControlsDelegate];
  [v6 standaloneMediaControlsViewController:self didSelectRoute:v5];
}

- (NPUIMediaControlsStandaloneViewControllerDelegate)standaloneControlsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_standaloneControlsDelegate);

  return WeakRetained;
}

@end