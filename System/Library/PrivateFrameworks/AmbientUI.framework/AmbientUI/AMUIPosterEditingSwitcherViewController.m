@interface AMUIPosterEditingSwitcherViewController
- (AMUIPosterEditingSwitcherViewController)initWithActiveConfiguration:(id)a3 transitionOverlayView:(id)a4;
- (AMUIPosterEditingSwitcherViewControllerDelegate)delegate;
- (void)modalRemoteViewController:(id)a3 didDismissWithResponse:(id)a4;
- (void)viewDidLoad;
@end

@implementation AMUIPosterEditingSwitcherViewController

- (AMUIPosterEditingSwitcherViewController)initWithActiveConfiguration:(id)a3 transitionOverlayView:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AMUIPosterEditingSwitcherViewController;
  v9 = [(AMUIPosterEditingSwitcherViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_activeConfiguration, a3);
    objc_storeStrong(&v10->_transitionOverlayView, a4);
  }

  return v10;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = AMUIPosterEditingSwitcherViewController;
  [(AMUIPosterEditingSwitcherViewController *)&v12 viewDidLoad];
  v3 = [(AMUIPosterEditingSwitcherViewController *)self transitionOverlayView];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 layer];
    RenderId = CALayerGetRenderId();
  }

  else
  {
    RenderId = 0;
  }

  v7 = [v4 window];
  v8 = [v7 _contextId];

  v9 = [objc_alloc(MEMORY[0x277D3EAB0]) initWithActiveConfiguration:self->_activeConfiguration transitionOverlayRenderId:RenderId transitionOverlayContextId:v8];
  v10 = [objc_alloc(MEMORY[0x277D3EAF8]) initWithEntryPoint:v9];
  remoteViewController = self->_remoteViewController;
  self->_remoteViewController = v10;

  [(PRUISModalRemoteViewController *)self->_remoteViewController setModalInPresentation:0];
  [(PRUISModalRemoteViewController *)self->_remoteViewController setDelegate:self];
  [(AMUIPosterEditingSwitcherViewController *)self bs_addChildViewController:self->_remoteViewController];
}

- (void)modalRemoteViewController:(id)a3 didDismissWithResponse:(id)a4
{
  v5 = [(AMUIPosterEditingSwitcherViewController *)self delegate:a3];
  [v5 posterEditingSwitcherViewControllerRequestsDismissal:self];
}

- (AMUIPosterEditingSwitcherViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end