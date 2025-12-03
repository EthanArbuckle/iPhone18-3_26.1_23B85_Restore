@interface _MKKVOProxy
- (_MKKVOProxy)initWithDelegate:(id)delegate;
- (_MKKVOProxyDelegate)delegate;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation _MKKVOProxy

- (_MKKVOProxyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  objectCopy = object;
  pathCopy = path;
  delegate = [(_MKKVOProxy *)self delegate];
  [delegate _mkObserveValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
}

- (_MKKVOProxy)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = _MKKVOProxy;
  v5 = [(_MKKVOProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

@end