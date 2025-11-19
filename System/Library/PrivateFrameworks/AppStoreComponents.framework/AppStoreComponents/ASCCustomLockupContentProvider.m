@interface ASCCustomLockupContentProvider
- (ASCCustomLockupContentProvider)initWithLockupView:(id)a3;
- (ASCLockupView)lockupView;
@end

@implementation ASCCustomLockupContentProvider

- (ASCCustomLockupContentProvider)initWithLockupView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ASCCustomLockupContentProvider;
  v5 = [(ASCCustomLockupContentProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_lockupView, v4);
  }

  return v6;
}

- (ASCLockupView)lockupView
{
  WeakRetained = objc_loadWeakRetained(&self->_lockupView);

  return WeakRetained;
}

@end