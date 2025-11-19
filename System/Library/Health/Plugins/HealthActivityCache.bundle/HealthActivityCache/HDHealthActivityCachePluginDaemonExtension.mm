@interface HDHealthActivityCachePluginDaemonExtension
- (HDDaemon)daemon;
- (HDHealthActivityCachePluginDaemonExtension)initWithDaemon:(id)a3;
@end

@implementation HDHealthActivityCachePluginDaemonExtension

- (HDHealthActivityCachePluginDaemonExtension)initWithDaemon:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HDHealthActivityCachePluginDaemonExtension;
  v5 = [(HDHealthActivityCachePluginDaemonExtension *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_daemon, v4);
  }

  return v6;
}

- (HDDaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

@end