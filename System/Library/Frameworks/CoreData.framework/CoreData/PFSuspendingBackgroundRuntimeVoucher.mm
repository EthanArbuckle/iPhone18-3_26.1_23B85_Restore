@interface PFSuspendingBackgroundRuntimeVoucher
@end

@implementation PFSuspendingBackgroundRuntimeVoucher

uint64_t __83___PFSuspendingBackgroundRuntimeVoucher__observeApplicationActivationNotifications__block_invoke()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = +[_PFRoutines applicationActivateLifecyleNotifications];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  result = [v0 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v2 = result;
    v3 = *v9;
    do
    {
      v4 = 0;
      do
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v8 + 1) + 8 * v4);
        v6 = [MEMORY[0x1E696AD88] defaultCenter];
        [v6 addObserverForName:v5 object:qword_1ED4BEB70 queue:0 usingBlock:&__block_literal_global_173];
        ++v4;
      }

      while (v2 != v4);
      result = [v0 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v2 = result;
    }

    while (result);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void __83___PFSuspendingBackgroundRuntimeVoucher__observeApplicationActivationNotifications__block_invoke_2()
{
  os_unfair_lock_lock_with_options();
  Count = CFSetGetCount(qword_1ED4BEB78);
  if (Count >= 1)
  {
    v1 = Count + 1;
    do
    {
      dispatch_group_leave(qword_1ED4BEB80);
      --v1;
    }

    while (v1 > 1);
    CFSetRemoveAllValues(qword_1ED4BEB78);
  }

  os_unfair_lock_unlock(&unk_1ED4BEB50);
}

void *__67___PFSuspendingBackgroundRuntimeVoucher__beginPowerAssertionNamed___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v3 = _pflogging_catastrophic_mode;
    LogStream = _PFLogGetLogStream(1);
    v5 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      if (v5)
      {
        v10 = 0;
        v6 = &v10;
LABEL_8:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Unexpected background task assertion cancellation.\n", v6, 2u);
      }
    }

    else if (v5)
    {
      LOWORD(v9) = 0;
      v6 = &v9;
      goto LABEL_8;
    }
  }

  _NSCoreDataLog_console(1, "Unexpected background task assertion cancellation.", v9);
  objc_autoreleasePoolPop(v2);
  Weak = objc_loadWeak((a1 + 32));
  return [(_PFBackgroundRuntimeVoucher *)Weak assertionWillCancel];
}

@end