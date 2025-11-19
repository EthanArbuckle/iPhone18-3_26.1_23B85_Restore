@interface SFLinkRedirectionViewController
- (SFLinkRedirectionViewController)initWithURL:(id)a3;
- (void)remoteViewController:(id)a3 didResolveRedirectionWithURL:(id)a4 appLink:(id)a5;
- (void)setDefersAddingRemoteViewController:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation SFLinkRedirectionViewController

- (SFLinkRedirectionViewController)initWithURL:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SFSafariViewControllerConfiguration);
  [(SFSafariViewControllerConfiguration *)v5 setEntersReaderIfAvailable:0];
  [(SFSafariViewControllerConfiguration *)v5 _setEphemeral:1];
  v11.receiver = self;
  v11.super_class = SFLinkRedirectionViewController;
  v6 = [(SFSafariViewController *)&v11 initWithURL:v4 configuration:v5];

  if (v6)
  {
    v7 = [(SFSafariViewController *)v6 serviceProxy];
    v8 = [(SFSafariViewController *)v6 initialURL];
    [v7 startResolveRedirectionForURL:v8];

    [(SFSafariViewController *)v6 setDismissButtonStyle:1];
    [(SFLinkRedirectionViewController *)v6 setDefersAddingRemoteViewController:1];
    v9 = v6;
  }

  return v6;
}

- (void)setDefersAddingRemoteViewController:(BOOL)a3
{
  v3 = a3;
  if ([(SFSafariViewController *)self defersAddingRemoteViewController]!= a3)
  {
    v5.receiver = self;
    v5.super_class = SFLinkRedirectionViewController;
    [(SFSafariViewController *)&v5 setDefersAddingRemoteViewController:v3];
    if (!v3)
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

- (void)remoteViewController:(id)a3 didResolveRedirectionWithURL:(id)a4 appLink:(id)a5
{
  v9 = a4;
  v7 = a5;
  v8 = [(SFSafariViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 safariViewController:self didResolveRedirectionWithURL:v9 appLink:v7];
  }
}

@end