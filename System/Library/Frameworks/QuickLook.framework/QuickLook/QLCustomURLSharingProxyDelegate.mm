@interface QLCustomURLSharingProxyDelegate
- (QLCustomURLSharingProxyDelegate)initWithDelegate:(id)a3;
- (UIDocumentInteractionControllerDelegate)delegate;
- (void)documentInteractionControllerDidDismissOptionsMenu:(id)a3;
@end

@implementation QLCustomURLSharingProxyDelegate

- (QLCustomURLSharingProxyDelegate)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = QLCustomURLSharingProxyDelegate;
  v5 = [(QLCustomURLSharingProxyDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (void)documentInteractionControllerDidDismissOptionsMenu:(id)a3
{
  v7 = a3;
  v4 = [(QLCustomURLSharingProxyDelegate *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(QLCustomURLSharingProxyDelegate *)self delegate];
    [v6 documentInteractionControllerDidDismissOptionsMenu:v7];
  }
}

- (UIDocumentInteractionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end