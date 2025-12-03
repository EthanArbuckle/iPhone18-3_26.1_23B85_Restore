@interface TKTokenWatcherProxy
- (TKTokenWatcherProxy)initWithWatcher:(id)watcher;
- (void)insertedToken:(id)token;
- (void)removedToken:(id)token;
@end

@implementation TKTokenWatcherProxy

- (TKTokenWatcherProxy)initWithWatcher:(id)watcher
{
  watcherCopy = watcher;
  v8.receiver = self;
  v8.super_class = TKTokenWatcherProxy;
  v5 = [(TKTokenWatcherProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_watcher, watcherCopy);
  }

  return v6;
}

- (void)insertedToken:(id)token
{
  tokenCopy = token;
  WeakRetained = objc_loadWeakRetained(&self->_watcher);
  [WeakRetained insertedToken:tokenCopy];
}

- (void)removedToken:(id)token
{
  tokenCopy = token;
  WeakRetained = objc_loadWeakRetained(&self->_watcher);
  [WeakRetained removedToken:tokenCopy];
}

@end