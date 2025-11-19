@interface QLURLListener
- (QLURLListener)initWithURL:(id)a3 item:(id)a4;
- (QLURLListenerDelegate)delegate;
- (void)presentedItemDidMoveToURL:(id)a3;
@end

@implementation QLURLListener

- (QLURLListener)initWithURL:(id)a3 item:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = QLURLListener;
  v9 = [(QLURLListener *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_presentedItem, a4);
    objc_storeStrong(&v10->_presentedItemURL, a3);
    v11 = objc_opt_new();
    presentedItemOperationQueue = v10->_presentedItemOperationQueue;
    v10->_presentedItemOperationQueue = v11;
  }

  return v10;
}

- (void)presentedItemDidMoveToURL:(id)a3
{
  v7 = a3;
  v4 = [(QLURLListener *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(QLURLListener *)self delegate];
    [v6 urlListener:self fileDidMoveTo:v7];
  }
}

- (QLURLListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end