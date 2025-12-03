@interface _SFLinkRedirectionResolver
- (_SFLinkRedirectionResolver)initWithURL:(id)l completionHandler:(id)handler;
- (void)safariViewController:(id)controller didResolveRedirectionWithURL:(id)l appLink:(id)link;
@end

@implementation _SFLinkRedirectionResolver

- (_SFLinkRedirectionResolver)initWithURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v15.receiver = self;
  v15.super_class = _SFLinkRedirectionResolver;
  v8 = [(_SFLinkRedirectionResolver *)&v15 init];
  if (v8)
  {
    v9 = _Block_copy(handlerCopy);
    completionHandler = v8->_completionHandler;
    v8->_completionHandler = v9;

    v11 = [[SFLinkRedirectionViewController alloc] initWithURL:lCopy];
    redirectionViewController = v8->_redirectionViewController;
    v8->_redirectionViewController = v11;

    [(SFSafariViewController *)v8->_redirectionViewController setDelegate:v8];
    v13 = v8;
  }

  return v8;
}

- (void)safariViewController:(id)controller didResolveRedirectionWithURL:(id)l appLink:(id)link
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, l, link, 0);
  }
}

@end