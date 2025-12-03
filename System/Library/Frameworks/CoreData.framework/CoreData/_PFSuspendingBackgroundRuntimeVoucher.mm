@interface _PFSuspendingBackgroundRuntimeVoucher
+ (id)_beginPowerAssertionNamed:(id)named;
+ (void)_endPowerAssertionWithVoucher:(id)voucher;
+ (void)_observeApplicationActivationNotifications;
+ (void)initialize;
@end

@implementation _PFSuspendingBackgroundRuntimeVoucher

+ (void)_observeApplicationActivationNotifications
{
  objc_opt_self();
  if (_observeApplicationActivationNotifications_onceToken != -1)
  {

    dispatch_once(&_observeApplicationActivationNotifications_onceToken, &__block_literal_global_32);
  }
}

+ (void)initialize
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS____PFSuspendingBackgroundRuntimeVoucher;
  objc_msgSendSuper2(&v3, sel_initialize);
  if (objc_opt_class() == self)
  {
    qword_1ED4BEB80 = dispatch_group_create();
    qword_1ED4BEB78 = CFSetCreateMutable(0, 0, 0);
    if (qword_1ED4BEB70)
    {
      +[_PFSuspendingBackgroundRuntimeVoucher _observeApplicationActivationNotifications];
    }
  }
}

+ (id)_beginPowerAssertionNamed:(id)named
{
  v42 = *MEMORY[0x1E69E9840];
  MEMORY[0x1865FAAC0](self, a2);
  if (qword_1ED4BEB70)
  {
    v4 = 1;
  }

  else
  {
    v4 = byte_1ED4BEB4C == 0;
  }

  if (v4 || qword_1ED4BEB60 == 0)
  {
    goto LABEL_29;
  }

  if (objc_opt_respondsToSelector())
  {
    sharedApplication = [qword_1ED4BEB60 sharedApplication];
  }

  else
  {
    sharedApplication = 0;
  }

  v7 = objc_opt_respondsToSelector();
  if (_MergedGlobals_88)
  {
    v8 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    IsLogEnabled = _NSCoreDataIsLogEnabled(2);
    v10 = @"failure";
    if (!IsLogEnabled || _pflogging_enable_oslog < 1)
    {
      goto LABEL_21;
    }

    if (_pflogging_catastrophic_mode)
    {
      LogStream = _PFLogGetLogStream(1);
      v12 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      v10 = @"failure";
      if (v12)
      {
        if (v7)
        {
          v13 = @"success";
        }

        else
        {
          v13 = @"failure";
        }

        *buf = 134218498;
        namedCopy5 = qword_1ED4BEB60;
        v38 = 2048;
        namedCopy2 = sharedApplication;
        v40 = 2112;
        v41 = v13;
        v14 = "CoreData: error: Registration for _beginPowerAssertionNamed completed with class %p on app %p and result %@\n";
LABEL_72:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v14, buf, 0x20u);
        v10 = @"failure";
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(2);
      v15 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      v10 = @"failure";
      if (v15)
      {
        if (v7)
        {
          v32 = @"success";
        }

        else
        {
          v32 = @"failure";
        }

        *buf = 134218498;
        namedCopy5 = qword_1ED4BEB60;
        v38 = 2048;
        namedCopy2 = sharedApplication;
        v40 = 2112;
        v41 = v32;
        v14 = "CoreData: warning: Registration for _beginPowerAssertionNamed completed with class %p on app %p and result %@\n";
        goto LABEL_72;
      }
    }

LABEL_21:
    if (v7)
    {
      v10 = @"success";
    }

    if (_pflogging_catastrophic_mode)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    _NSCoreDataLog_console(v16, "Registration for _beginPowerAssertionNamed completed with class %p on app %p and result %@", qword_1ED4BEB60, sharedApplication, v10);
    objc_autoreleasePoolPop(v8);
  }

  if (v7)
  {
    qword_1ED4BEB70 = sharedApplication;
    +[_PFSuspendingBackgroundRuntimeVoucher _observeApplicationActivationNotifications];
  }

LABEL_29:
  v17 = [(_PFBackgroundRuntimeVoucher *)[_PFSuspendingBackgroundRuntimeVoucher alloc] initWithTask:named];
  if (qword_1ED4BEB70)
  {
    objc_initWeak(&location, v17);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __67___PFSuspendingBackgroundRuntimeVoucher__beginPowerAssertionNamed___block_invoke;
    v33[3] = &unk_1E6EC23A0;
    objc_copyWeak(&v34, &location);
    qword_1ED4BEB68 = [qword_1ED4BEB70 qword_1ED4BEB68];
    if (qword_1ED4BEB68)
    {
      [(_PFBackgroundRuntimeVoucher *)v17 setStatus:2];
      if (!_MergedGlobals_88)
      {
        goto LABEL_66;
      }

      v19 = objc_autoreleasePoolPush();
      _pflogInitialize(2);
      if (!_NSCoreDataIsLogEnabled(2) || _pflogging_enable_oslog < 1)
      {
        goto LABEL_60;
      }

      if (_pflogging_catastrophic_mode)
      {
        v20 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          namedCopy5 = qword_1ED4BEB68;
          v38 = 2112;
          namedCopy2 = named;
          v21 = "CoreData: error: Successfully acquired background task assertion %ld for task '%@'.\n";
LABEL_74:
          _os_log_error_impl(&dword_18565F000, v20, OS_LOG_TYPE_ERROR, v21, buf, 0x16u);
        }
      }

      else
      {
        v20 = _PFLogGetLogStream(2);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          namedCopy5 = qword_1ED4BEB68;
          v38 = 2112;
          namedCopy2 = named;
          v21 = "CoreData: warning: Successfully acquired background task assertion %ld for task '%@'.\n";
          goto LABEL_74;
        }
      }

LABEL_60:
      if (_pflogging_catastrophic_mode)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }

      _NSCoreDataLog_console(v29, "Successfully acquired background task assertion %ld for task '%@'.", qword_1ED4BEB68, named);
      objc_autoreleasePoolPop(v19);
      goto LABEL_66;
    }

    if (byte_1ED4BEB49 == 1 && pthread_main_np())
    {
LABEL_40:
      [(_PFBackgroundRuntimeVoucher *)v17 setStatus:1];
      v22 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v23 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            namedCopy5 = named;
LABEL_76:
            _os_log_error_impl(&dword_18565F000, v23, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to acquire background task assertion for task '%@'.\n", buf, 0xCu);
          }
        }

        else
        {
          v23 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            namedCopy5 = named;
            goto LABEL_76;
          }
        }
      }

      _NSCoreDataLog_console(1, "Failed to acquire background task assertion for task '%@'.", named);
      objc_autoreleasePoolPop(v22);
      qword_1ED4BEB68 = 0;
LABEL_66:
      objc_destroyWeak(&v34);
      objc_destroyWeak(&location);
      goto LABEL_67;
    }

    v24 = 10;
    while (1)
    {
      v25 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog < 1)
      {
        goto LABEL_50;
      }

      if (_pflogging_catastrophic_mode)
      {
        v26 = _PFLogGetLogStream(1);
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_50;
        }
      }

      else
      {
        v26 = _PFLogGetLogStream(1);
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_50;
        }
      }

      *buf = 138412290;
      namedCopy5 = named;
      _os_log_error_impl(&dword_18565F000, v26, OS_LOG_TYPE_ERROR, "CoreData: error: Attempting to recover from failed background task assertion acquisition for task '%@'.\n", buf, 0xCu);
LABEL_50:
      _NSCoreDataLog_console(1, "Attempting to recover from failed background task assertion acquisition for task '%@'.", named);
      objc_autoreleasePoolPop(v25);
      os_unfair_lock_lock_with_options();
      CFSetAddValue(qword_1ED4BEB78, v17);
      dispatch_group_enter(qword_1ED4BEB80);
      [(_PFBackgroundRuntimeVoucher *)v17 setStatus:5];
      os_unfair_lock_unlock(&unk_1ED4BEB50);
      v27 = qword_1ED4BEB80;
      v28 = dispatch_time(0, 120000000000);
      if (dispatch_group_wait(v27, v28))
      {
        os_unfair_lock_lock_with_options();
        if (CFSetContainsValue(qword_1ED4BEB78, v17))
        {
          CFSetRemoveValue(qword_1ED4BEB78, v17);
          dispatch_group_leave(qword_1ED4BEB80);
        }

        os_unfair_lock_unlock(&unk_1ED4BEB50);
      }

      qword_1ED4BEB68 = [qword_1ED4BEB70 qword_1ED4BEB68];
      if (qword_1ED4BEB68)
      {
        [(_PFBackgroundRuntimeVoucher *)v17 setStatus:2];
        goto LABEL_66;
      }

      if (!--v24)
      {
        goto LABEL_40;
      }
    }
  }

  qword_1ED4BEB68 = 0;
LABEL_67:
  [(_PFBackgroundRuntimeVoucher *)v17 setSequenceID:qword_1ED4BEB68];
  v30 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (void)_endPowerAssertionWithVoucher:(id)voucher
{
  v14 = *MEMORY[0x1E69E9840];
  if (voucher)
  {
    MEMORY[0x1865FAAD0](self, a2);
    v4 = *(voucher + 2);
    if (qword_1ED4BEB70)
    {
      v5 = v4 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      goto LABEL_18;
    }

    v6 = objc_autoreleasePoolPush();
    [qword_1ED4BEB70 endBackgroundTask_];
    [voucher setStatus:4];
    if (!_MergedGlobals_88)
    {
LABEL_17:
      objc_autoreleasePoolPop(v6);
LABEL_18:
      [(_PFBackgroundRuntimeVoucher *)voucher _notifyEndAssertion];

      goto LABEL_19;
    }

    v7 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v13 = v4;
          v9 = "CoreData: error: Ended background task assertion %ld.\n";
LABEL_21:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v9, buf, 0xCu);
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(2);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v13 = v4;
          v9 = "CoreData: warning: Ended background task assertion %ld.\n";
          goto LABEL_21;
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    _NSCoreDataLog_console(v10, "Ended background task assertion %ld.", v4);
    objc_autoreleasePoolPop(v7);
    goto LABEL_17;
  }

LABEL_19:
  v11 = *MEMORY[0x1E69E9840];
}

@end