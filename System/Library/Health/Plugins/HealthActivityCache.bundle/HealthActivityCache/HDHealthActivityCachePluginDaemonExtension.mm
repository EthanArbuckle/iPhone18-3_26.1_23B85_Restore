@interface HDHealthActivityCachePluginDaemonExtension
- (HDDaemon)daemon;
- (HDHealthActivityCachePluginDaemonExtension)initWithDaemon:(id)daemon;
@end

@implementation HDHealthActivityCachePluginDaemonExtension

- (HDHealthActivityCachePluginDaemonExtension)initWithDaemon:(id)daemon
{
  daemonCopy = daemon;
  v8.receiver = self;
  v8.super_class = HDHealthActivityCachePluginDaemonExtension;
  v5 = [(HDHealthActivityCachePluginDaemonExtension *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_daemon, daemonCopy);
  }

  return v6;
}

- (HDDaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

@end