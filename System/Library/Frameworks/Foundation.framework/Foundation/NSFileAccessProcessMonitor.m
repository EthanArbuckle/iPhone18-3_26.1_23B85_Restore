@interface NSFileAccessProcessMonitor
+ (id)sharedInstance;
- (BOOL)processWithPIDIsSuspended:(int)a3;
- (id)_init;
- (void)addProcessManager:(id)a3 forPID:(int)a4;
- (void)dealloc;
- (void)process:(id)a3 receivedUpdate:(id)a4;
- (void)removeProcessManager:(id)a3 forPID:(int)a4;
- (void)updateMonitorPredicate;
@end

@implementation NSFileAccessProcessMonitor

+ (id)sharedInstance
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__NSFileAccessProcessMonitor_sharedInstance__block_invoke;
  v3[3] = &unk_1E69F2C00;
  v3[4] = a1;
  if (qword_1ED440018 != -1)
  {
    dispatch_once(&qword_1ED440018, v3);
  }

  return qword_1ED440010;
}

- (void)updateMonitorPredicate
{
  v5[5] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = -[objc_class predicateMatchingIdentifiers:](objc_lookUpClass("RBSProcessPredicate"), "predicateMatchingIdentifiers:", [MEMORY[0x1E695DFD8] setWithArray:{-[NSMutableDictionary allKeys](self->_pidToProcessManagers, "allKeys")}]);
  monitor = self->_monitor;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__NSFileAccessProcessMonitor_updateMonitorPredicate__block_invoke;
  v5[3] = &unk_1E69F7618;
  v5[4] = v3;
  [(RBSProcessMonitor *)monitor updateConfiguration:v5];
  os_unfair_lock_unlock(&self->_lock);
}

uint64_t __52__NSFileAccessProcessMonitor_updateMonitorPredicate__block_invoke(uint64_t a1, void *a2)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *(a1 + 32);
  return [a2 setPredicates:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v3, 1)}];
}

- (id)_init
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1ED440008 != -1)
  {
    dispatch_once(&qword_1ED440008, &__block_literal_global_69);
  }

  if (_MergedGlobals_143)
  {
    v8.receiver = self;
    v8.super_class = NSFileAccessProcessMonitor;
    v3 = [(NSFileAccessProcessMonitor *)&v8 init];
    v4 = v3;
    if (v3)
    {
      v3->_lock._os_unfair_lock_opaque = 0;
      v5 = objc_alloc_init(objc_lookUpClass("RBSProcessMonitor"));
      v4->_monitor = v5;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __35__NSFileAccessProcessMonitor__init__block_invoke_2;
      v7[3] = &unk_1E69F7618;
      v7[4] = v4;
      [(RBSProcessMonitor *)v5 updateConfiguration:v7];
      v4->_pidToProcessManagers = objc_alloc_init(MEMORY[0x1E695DF90]);
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

Class __35__NSFileAccessProcessMonitor__init__block_invoke()
{
  dlopen("/System/Library/PrivateFrameworks/RunningBoardServices.framework/RunningBoardServices", 256);
  result = objc_lookUpClass("RBSProcessMonitor");
  _MergedGlobals_143 = result != 0;
  return result;
}

uint64_t __35__NSFileAccessProcessMonitor__init__block_invoke_2(uint64_t a1, void *a2)
{
  v4[5] = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__NSFileAccessProcessMonitor__init__block_invoke_3;
  v4[3] = &unk_1E69F75F0;
  v4[4] = *(a1 + 32);
  [a2 setUpdateHandler:v4];
  return [a2 setStateDescriptor:{-[objc_class descriptor](objc_lookUpClass("RBSProcessStateDescriptor"), "descriptor")}];
}

uint64_t __44__NSFileAccessProcessMonitor_sharedInstance__block_invoke(uint64_t a1)
{
  result = [objc_alloc(*(a1 + 32)) _init];
  qword_1ED440010 = result;
  return result;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(RBSProcessMonitor *)self->_monitor invalidate];

  v3.receiver = self;
  v3.super_class = NSFileAccessProcessMonitor;
  [(NSFileAccessProcessMonitor *)&v3 dealloc];
}

- (void)addProcessManager:(id)a3 forPID:(int)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = [(objc_class *)objc_lookUpClass("RBSProcessIdentifier") identifierWithPid:*&a4];
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_pidToProcessManagers objectForKey:v7];
  if (!v8)
  {
    v8 = +[NSHashTable weakObjectsHashTable];
    [(NSMutableDictionary *)self->_pidToProcessManagers setObject:v8 forKey:v7];
  }

  if ([(NSHashTable *)v8 containsObject:a3])
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v9 = _NSFCProcessMonitorLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10[0] = 67109120;
      v10[1] = a4;
      _os_log_debug_impl(&dword_18075C000, v9, OS_LOG_TYPE_DEBUG, "Creating process monitor for pid %d", v10, 8u);
    }

    [(NSHashTable *)v8 addObject:a3];
    os_unfair_lock_unlock(&self->_lock);
    [(NSFileAccessProcessMonitor *)self updateMonitorPredicate];
  }
}

- (void)removeProcessManager:(id)a3 forPID:(int)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = [(objc_class *)objc_lookUpClass("RBSProcessIdentifier") identifierWithPid:*&a4];
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_pidToProcessManagers objectForKey:v7];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 containsObject:a3];
    if (v10)
    {
      v11 = _NSFCProcessMonitorLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12[0] = 67109120;
        v12[1] = a4;
        _os_log_debug_impl(&dword_18075C000, v11, OS_LOG_TYPE_DEBUG, "Destroying process monitor for pid %d", v12, 8u);
      }

      [v9 removeObject:a3];
    }

    if (![v9 count])
    {
      [(NSMutableDictionary *)self->_pidToProcessManagers removeObjectForKey:v7];
    }

    os_unfair_lock_unlock(&self->_lock);
    if (v10)
    {
      [(NSFileAccessProcessMonitor *)self updateMonitorPredicate];
    }
  }

  else
  {

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)process:(id)a3 receivedUpdate:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  if ([objc_msgSend(a3 "currentState")] == 3)
  {
    v6 = -[objc_class identifierWithPid:](objc_lookUpClass("RBSProcessIdentifier"), "identifierWithPid:", [a3 pid]);
    os_unfair_lock_lock(&self->_lock);
    v7 = [-[NSMutableDictionary objectForKey:](self->_pidToProcessManagers objectForKey:{v6), "allObjects"}];
    os_unfair_lock_unlock(&self->_lock);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v13 + 1) + 8 * v11++) processSuspended];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v12 count:16];
      }

      while (v9);
    }
  }
}

- (BOOL)processWithPIDIsSuspended:(int)a3
{
  v3 = [(objc_class *)objc_lookUpClass("RBSProcessIdentifier") identifierWithPid:*&a3];
  v4 = [(objc_class *)objc_lookUpClass("RBSProcessPredicate") predicateMatchingIdentifier:v3];
  return [objc_msgSend(-[objc_class handleForPredicate:error:](objc_lookUpClass("RBSProcessHandle") handleForPredicate:v4 error:{0), "currentState"), "taskState"}] == 3;
}

@end