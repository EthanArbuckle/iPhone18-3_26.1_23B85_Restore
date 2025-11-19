@interface TKTokenWatcherProxy
- (TKTokenWatcherProxy)initWithWatcher:(id)a3;
- (void)insertedToken:(id)a3;
- (void)removedToken:(id)a3;
@end

@implementation TKTokenWatcherProxy

- (TKTokenWatcherProxy)initWithWatcher:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TKTokenWatcherProxy;
  v5 = [(TKTokenWatcherProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_watcher, v4);
  }

  return v6;
}

- (void)insertedToken:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_watcher);
  [WeakRetained insertedToken:v4];
}

- (void)removedToken:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_watcher);
  [WeakRetained removedToken:v4];
}

@end