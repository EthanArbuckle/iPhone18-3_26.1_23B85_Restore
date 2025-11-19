@interface CFPrefsRecreateFileWatcher
@end

@implementation CFPrefsRecreateFileWatcher

uint64_t ___CFPrefsRecreateFileWatcher_block_invoke()
{
  os_unfair_lock_lock(&dirWatcherLock);
  locked = _onqueue_locked_CFPrefsRecreateFileWatcher();
  os_unfair_lock_unlock(&dirWatcherLock);
  v1 = fsEventStreamStart;

  return v1(locked);
}

@end