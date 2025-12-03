@interface SFLinkRedirectionViewController
- (SFLinkRedirectionViewController)initWithURL:(id)l;
- (void)remoteViewController:(id)controller didResolveRedirectionWithURL:(id)l appLink:(id)link;
- (void)setDefersAddingRemoteViewController:(BOOL)controller;
- (void)viewDidLoad;
@end

@implementation SFLinkRedirectionViewController

- (SFLinkRedirectionViewController)initWithURL:(id)l
{
  lCopy = l;
  v5 = objc_alloc_init(SFSafariViewControllerConfiguration);
  [(SFSafariViewControllerConfiguration *)v5 setEntersReaderIfAvailable:0];
  [(SFSafariViewControllerConfiguration *)v5 _setEphemeral:1];
  v11.receiver = self;
  v11.super_class = SFLinkRedirectionViewController;
  v6 = [(SFSafariViewController *)&v11 initWithURL:lCopy configuration:v5];

  if (v6)
  {
    serviceProxy = [(SFSafariViewController *)v6 serviceProxy];
    initialURL = [(SFSafariViewController *)v6 initialURL];
    [serviceProxy startResolveRedirectionForURL:initialURL];

    [(SFSafariViewController *)v6 setDismissButtonStyle:1];
    [(SFLinkRedirectionViewController *)v6 setDefersAddingRemoteViewController:1];
    v9 = v6;
  }

  return v6;
}

- (void)setDefersAddingRemoteViewController:(BOOL)controller
{
  controllerCopy = controller;
  if ([(SFSafariViewController *)self defersAddingRemoteViewController]!= controller)
  {
    v5.receiver = self;
    v5.super_class = SFLinkRedirectionViewController;
    [(SFSafariViewController *)&v5 setDefersAddingRemoteViewController:controllerCopy];
    if (!controllerCopy)
    {
      [(SFSafariViewController *)self _addRemoteViewControllerIfNeeded];
    }
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SFLinkRedirectionViewController;
  [(SFLinkRedirectionViewController *)&v3 viewDidLoad];
  [(SFLinkRedirectionViewController *)self setDefersAddingRemoteViewController:0];
}

- (void)remoteViewController:(id)controller didResolveRedirectionWithURL:(id)l appLink:(id)link
{
  lCopy = l;
  linkCopy = link;
  delegate = [(SFSafariViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate safariViewController:self didResolveRedirectionWithURL:lCopy appLink:linkCopy];
  }
}

@end