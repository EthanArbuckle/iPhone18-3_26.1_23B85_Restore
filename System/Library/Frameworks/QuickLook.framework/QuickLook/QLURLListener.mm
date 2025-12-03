@interface QLURLListener
- (QLURLListener)initWithURL:(id)l item:(id)item;
- (QLURLListenerDelegate)delegate;
- (void)presentedItemDidMoveToURL:(id)l;
@end

@implementation QLURLListener

- (QLURLListener)initWithURL:(id)l item:(id)item
{
  lCopy = l;
  itemCopy = item;
  v14.receiver = self;
  v14.super_class = QLURLListener;
  v9 = [(QLURLListener *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_presentedItem, item);
    objc_storeStrong(&v10->_presentedItemURL, l);
    v11 = objc_opt_new();
    presentedItemOperationQueue = v10->_presentedItemOperationQueue;
    v10->_presentedItemOperationQueue = v11;
  }

  return v10;
}

- (void)presentedItemDidMoveToURL:(id)l
{
  lCopy = l;
  delegate = [(QLURLListener *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(QLURLListener *)self delegate];
    [delegate2 urlListener:self fileDidMoveTo:lCopy];
  }
}

- (QLURLListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end