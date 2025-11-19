@interface _MKKVOProxy
- (_MKKVOProxy)initWithDelegate:(id)a3;
- (_MKKVOProxyDelegate)delegate;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation _MKKVOProxy

- (_MKKVOProxyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(_MKKVOProxy *)self delegate];
  [v13 _mkObserveValueForKeyPath:v12 ofObject:v11 change:v10 context:a6];
}

- (_MKKVOProxy)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _MKKVOProxy;
  v5 = [(_MKKVOProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

@end