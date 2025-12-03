@interface WebViewController
- (id)_url;
- (void)_presentWebsite;
- (void)cancel;
- (void)safariViewControllerDidFinish:(id)finish;
@end

@implementation WebViewController

- (void)_presentWebsite
{
  v3 = [SFSafariViewController alloc];
  _url = [(WebViewController *)self _url];
  v5 = [v3 initWithURL:_url];

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

- (void)safariViewControllerDidFinish:(id)finish
{
  self->_didDismissSafari = 1;
  viewServiceHost = [(BaseViewController *)self viewServiceHost];
  [viewServiceHost invalidate];
}

- (id)_url
{
  presentationContext = [(BaseViewController *)self presentationContext];
  tvProviderRequest = [presentationContext tvProviderRequest];

  if (tvProviderRequest)
  {
    presentationContext2 = [(BaseViewController *)self presentationContext];
    tvProviderRequest2 = [presentationContext2 tvProviderRequest];
    providerURL = [tvProviderRequest2 providerURL];
  }

  else
  {
    providerURL = 0;
  }

  return providerURL;
}

@end