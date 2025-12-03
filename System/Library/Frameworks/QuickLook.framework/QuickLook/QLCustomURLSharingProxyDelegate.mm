@interface QLCustomURLSharingProxyDelegate
- (QLCustomURLSharingProxyDelegate)initWithDelegate:(id)delegate;
- (UIDocumentInteractionControllerDelegate)delegate;
- (void)documentInteractionControllerDidDismissOptionsMenu:(id)menu;
@end

@implementation QLCustomURLSharingProxyDelegate

- (QLCustomURLSharingProxyDelegate)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = QLCustomURLSharingProxyDelegate;
  v5 = [(QLCustomURLSharingProxyDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)documentInteractionControllerDidDismissOptionsMenu:(id)menu
{
  menuCopy = menu;
  delegate = [(QLCustomURLSharingProxyDelegate *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(QLCustomURLSharingProxyDelegate *)self delegate];
    [delegate2 documentInteractionControllerDidDismissOptionsMenu:menuCopy];
  }
}

- (UIDocumentInteractionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end