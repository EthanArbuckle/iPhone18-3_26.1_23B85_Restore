@interface AMUIPosterEditingSwitcherViewController
- (AMUIPosterEditingSwitcherViewController)initWithActiveConfiguration:(id)configuration transitionOverlayView:(id)view;
- (AMUIPosterEditingSwitcherViewControllerDelegate)delegate;
- (void)modalRemoteViewController:(id)controller didDismissWithResponse:(id)response;
- (void)viewDidLoad;
@end

@implementation AMUIPosterEditingSwitcherViewController

- (AMUIPosterEditingSwitcherViewController)initWithActiveConfiguration:(id)configuration transitionOverlayView:(id)view
{
  configurationCopy = configuration;
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = AMUIPosterEditingSwitcherViewController;
  v9 = [(AMUIPosterEditingSwitcherViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_activeConfiguration, configuration);
    objc_storeStrong(&v10->_transitionOverlayView, view);
  }

  return v10;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = AMUIPosterEditingSwitcherViewController;
  [(AMUIPosterEditingSwitcherViewController *)&v12 viewDidLoad];
  transitionOverlayView = [(AMUIPosterEditingSwitcherViewController *)self transitionOverlayView];
  v4 = transitionOverlayView;
  if (transitionOverlayView)
  {
    layer = [transitionOverlayView layer];
    RenderId = CALayerGetRenderId();
  }

  else
  {
    RenderId = 0;
  }

  window = [v4 window];
  _contextId = [window _contextId];

  v9 = [objc_alloc(MEMORY[0x277D3EAB0]) initWithActiveConfiguration:self->_activeConfiguration transitionOverlayRenderId:RenderId transitionOverlayContextId:_contextId];
  v10 = [objc_alloc(MEMORY[0x277D3EAF8]) initWithEntryPoint:v9];
  remoteViewController = self->_remoteViewController;
  self->_remoteViewController = v10;

  [(PRUISModalRemoteViewController *)self->_remoteViewController setModalInPresentation:0];
  [(PRUISModalRemoteViewController *)self->_remoteViewController setDelegate:self];
  [(AMUIPosterEditingSwitcherViewController *)self bs_addChildViewController:self->_remoteViewController];
}

- (void)modalRemoteViewController:(id)controller didDismissWithResponse:(id)response
{
  v5 = [(AMUIPosterEditingSwitcherViewController *)self delegate:controller];
  [v5 posterEditingSwitcherViewControllerRequestsDismissal:self];
}

- (AMUIPosterEditingSwitcherViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end