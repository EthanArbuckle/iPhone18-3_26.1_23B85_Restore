@interface WebViewController
- (id)_url;
- (void)_presentWebsite;
- (void)cancel;
- (void)safariViewControllerDidFinish:(id)a3;
@end

@implementation WebViewController

- (void)_presentWebsite
{
  v3 = [SFSafariViewController alloc];
  v4 = [(WebViewController *)self _url];
  v5 = [v3 initWithURL:v4];

  [v5 setDelegate:self];
  [v5 setModalPresentationStyle:5];
  [(WebViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)cancel
{
  if (!self->_didDismissSafari)
  {
    [(WebViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)safariViewControllerDidFinish:(id)a3
{
  self->_didDismissSafari = 1;
  v3 = [(BaseViewController *)self viewServiceHost];
  [v3 invalidate];
}

- (id)_url
{
  v3 = [(BaseViewController *)self presentationContext];
  v4 = [v3 tvProviderRequest];

  if (v4)
  {
    v5 = [(BaseViewController *)self presentationContext];
    v6 = [v5 tvProviderRequest];
    v7 = [v6 providerURL];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end