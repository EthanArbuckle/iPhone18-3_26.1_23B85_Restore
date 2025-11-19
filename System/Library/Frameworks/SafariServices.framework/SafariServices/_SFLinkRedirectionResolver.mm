@interface _SFLinkRedirectionResolver
- (_SFLinkRedirectionResolver)initWithURL:(id)a3 completionHandler:(id)a4;
- (void)safariViewController:(id)a3 didResolveRedirectionWithURL:(id)a4 appLink:(id)a5;
@end

@implementation _SFLinkRedirectionResolver

- (_SFLinkRedirectionResolver)initWithURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = _SFLinkRedirectionResolver;
  v8 = [(_SFLinkRedirectionResolver *)&v15 init];
  if (v8)
  {
    v9 = _Block_copy(v7);
    completionHandler = v8->_completionHandler;
    v8->_completionHandler = v9;

    v11 = [[SFLinkRedirectionViewController alloc] initWithURL:v6];
    redirectionViewController = v8->_redirectionViewController;
    v8->_redirectionViewController = v11;

    [(SFSafariViewController *)v8->_redirectionViewController setDelegate:v8];
    v13 = v8;
  }

  return v8;
}

- (void)safariViewController:(id)a3 didResolveRedirectionWithURL:(id)a4 appLink:(id)a5
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, a4, a5, 0);
  }
}

@end