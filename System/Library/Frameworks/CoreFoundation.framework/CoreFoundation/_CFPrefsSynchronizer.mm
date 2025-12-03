@interface _CFPrefsSynchronizer
+ (uint64_t)sharedInstance;
- (CFSetRef)copyDirtySourcesSnapshotAndClear;
- (_CFPrefsSynchronizer)init;
- (void)clear;
- (void)clear_alreadyLocked;
- (void)disableTimer_alreadyLocked;
- (void)enableTimer_alreadyLocked;
- (void)noteDirtySource:(uint64_t)source;
- (void)synchronize;
- (void)synchronizeForDaemonTermination;
@end

@implementation _CFPrefsSynchronizer

+ (uint64_t)sharedInstance
{
  objc_opt_self();
  if (sharedInstance_onceToken != -1)
  {
    +[_CFPrefsSynchronizer sharedInstance];
  }

  return sharedInstance_shared;
}

- (void)synchronize
{
  if (self)
  {
    copyDirtySourcesSnapshotAndClear = [(_CFPrefsSynchronizer *)self copyDirtySourcesSnapshotAndClear];
    CFSetApplyFunction(copyDirtySourcesSnapshotAndClear, _CFPrefsSynchronizeDirtySourceForTimer, 0);

    CFRelease(copyDirtySourcesSnapshotAndClear);
  }
}

- (CFSetRef)copyDirtySourcesSnapshotAndClear
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock_with_options();
    Copy = CFSetCreateCopy(&__kCFAllocatorSystemDefault, *(v1 + 24));
    [(_CFPrefsSynchronizer *)v1 clear_alreadyLocked];
    os_unfair_lock_unlock((v1 + 32));
    return Copy;
  }

  return result;
}

- (void)clear_alreadyLocked
{
  if (self)
  {
    CFSetRemoveAllValues(*(self + 24));
    if (*(self + 36) == 1)
    {
      dispatch_suspend(*(self + 8));
      *(self + 36) = 0;
    }
  }
}

- (_CFPrefsSynchronizer)init
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = _CFPrefsSynchronizer;
  v2 = [(_CFPrefsSynchronizer *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_CFPrefsDirtySourcesLock._os_unfair_lock_opaque = 0;
    v2->_dirtySources = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeSetCallBacks);
    global_queue = dispatch_get_global_queue(0, 0);
    v5 = dispatch_queue_create_with_target_V2("CFPreferences Periodic Sync Queue", 0, global_queue);
    v3->_synchQueue = v5;
    v6 = dispatch_source_create(MEMORY[0x1E69E96D0], 0x2710uLL, 0, v5);
    v3->_synchTimer = v6;
    dispatch_source_set_event_handler(v6, &__block_literal_global_3_0);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)enableTimer_alreadyLocked
{
  if (self)
  {
    if ((*(self + 36) & 1) == 0)
    {
      *(self + 36) = 1;
      dispatch_resume(*(self + 8));
    }
  }
}

- (void)disableTimer_alreadyLocked
{
  if (self)
  {
    if (*(self + 36) == 1)
    {
      dispatch_suspend(*(self + 8));
      *(self + 36) = 0;
    }
  }
}

- (void)noteDirtySource:(uint64_t)source
{
  if (source)
  {
    OUTLINED_FUNCTION_11_0();
    os_unfair_lock_lock_with_options();
    CFSetAddValue(*(v1 + 24), v2);
    if ((*(v1 + 36) & 1) == 0)
    {
      *(v1 + 36) = 1;
      dispatch_resume(*(v1 + 8));
    }

    os_unfair_lock_unlock((v1 + 32));
  }
}

- (void)synchronizeForDaemonTermination
{
  if (self)
  {
    copyDirtySourcesSnapshotAndClear = [(_CFPrefsSynchronizer *)self copyDirtySourcesSnapshotAndClear];
    CFSetApplyFunction(copyDirtySourcesSnapshotAndClear, _CFPrefsSynchronizeDirtySourceForDaemonTermination, 0);

    CFRelease(copyDirtySourcesSnapshotAndClear);
  }
}

- (void)clear
{
  if (self)
  {
    os_unfair_lock_lock_with_options();
    [(_CFPrefsSynchronizer *)self clear_alreadyLocked];

    os_unfair_lock_unlock(self + 8);
  }
}

@end