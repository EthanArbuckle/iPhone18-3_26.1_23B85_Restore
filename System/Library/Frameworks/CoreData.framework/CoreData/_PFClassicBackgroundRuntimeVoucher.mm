@interface _PFClassicBackgroundRuntimeVoucher
+ (id)_beginPowerAssertionNamed:(id)named;
+ (void)_endPowerAssertionWithVoucher:(id)voucher;
+ (void)initialize;
@end

@implementation _PFClassicBackgroundRuntimeVoucher

+ (void)initialize
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS____PFClassicBackgroundRuntimeVoucher;
  objc_msgSendSuper2(&v2, sel_initialize);
  objc_opt_class();
}

+ (id)_beginPowerAssertionNamed:(id)named
{
  v33 = *MEMORY[0x1E69E9840];
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
    goto LABEL_30;
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
    if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          if (v7)
          {
            v10 = @"success";
          }

          else
          {
            v10 = @"failure";
          }

          *buf = 134218498;
          namedCopy4 = qword_1ED4BEB60;
          v29 = 2048;
          namedCopy2 = sharedApplication;
          v31 = 2112;
          v32 = v10;
          v11 = "CoreData: error: Registration for _beginPowerAssertionNamed completed with class %p on app %p and result %@\n";
LABEL_57:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v11, buf, 0x20u);
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(2);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          if (v7)
          {
            v23 = @"success";
          }

          else
          {
            v23 = @"failure";
          }

          *buf = 134218498;
          namedCopy4 = qword_1ED4BEB60;
          v29 = 2048;
          namedCopy2 = sharedApplication;
          v31 = 2112;
          v32 = v23;
          v11 = "CoreData: warning: Registration for _beginPowerAssertionNamed completed with class %p on app %p and result %@\n";
          goto LABEL_57;
        }
      }
    }

    if (v7)
    {
      v12 = @"success";
    }

    else
    {
      v12 = @"failure";
    }

    if (_pflogging_catastrophic_mode)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    _NSCoreDataLog_console(v13, "Registration for _beginPowerAssertionNamed completed with class %p on app %p and result %@", qword_1ED4BEB60, sharedApplication, v12);
    objc_autoreleasePoolPop(v8);
  }

  if (v7)
  {
    qword_1ED4BEB70 = sharedApplication;
  }

LABEL_30:
  v14 = [(_PFBackgroundRuntimeVoucher *)[_PFClassicBackgroundRuntimeVoucher alloc] initWithTask:named];
  objc_initWeak(&location, v14);
  if (qword_1ED4BEB70)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __64___PFClassicBackgroundRuntimeVoucher__beginPowerAssertionNamed___block_invoke;
    v24[3] = &unk_1E6EC23A0;
    objc_copyWeak(&v25, &location);
    qword_1ED4BEB68 = [qword_1ED4BEB70 qword_1ED4BEB68];
    if (qword_1ED4BEB68)
    {
      [(_PFBackgroundRuntimeVoucher *)v14 setStatus:2];
      if (!_MergedGlobals_88)
      {
LABEL_51:
        objc_destroyWeak(&v25);
        goto LABEL_52;
      }

      v16 = objc_autoreleasePoolPush();
      _pflogInitialize(2);
      if (!_NSCoreDataIsLogEnabled(2) || _pflogging_enable_oslog < 1)
      {
        goto LABEL_46;
      }

      if (_pflogging_catastrophic_mode)
      {
        v17 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          namedCopy4 = qword_1ED4BEB68;
          v29 = 2112;
          namedCopy2 = named;
          v18 = "CoreData: error: Successfully acquired background task assertion %ld for task '%@'.\n";
LABEL_61:
          _os_log_error_impl(&dword_18565F000, v17, OS_LOG_TYPE_ERROR, v18, buf, 0x16u);
        }
      }

      else
      {
        v17 = _PFLogGetLogStream(2);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          namedCopy4 = qword_1ED4BEB68;
          v29 = 2112;
          namedCopy2 = named;
          v18 = "CoreData: warning: Successfully acquired background task assertion %ld for task '%@'.\n";
          goto LABEL_61;
        }
      }

LABEL_46:
      if (_pflogging_catastrophic_mode)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      _NSCoreDataLog_console(v20, "Successfully acquired background task assertion %ld for task '%@'.", qword_1ED4BEB68, named);
      goto LABEL_50;
    }

    [(_PFBackgroundRuntimeVoucher *)v14 setStatus:1];
    v16 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v19 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          namedCopy4 = named;
LABEL_59:
          _os_log_error_impl(&dword_18565F000, v19, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to acquire background task assertion for task '%@'.\n", buf, 0xCu);
        }
      }

      else
      {
        v19 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          namedCopy4 = named;
          goto LABEL_59;
        }
      }
    }

    _NSCoreDataLog_console(1, "Failed to acquire background task assertion for task '%@'.", named);
LABEL_50:
    objc_autoreleasePoolPop(v16);
    goto LABEL_51;
  }

  qword_1ED4BEB68 = 0;
LABEL_52:
  [(_PFBackgroundRuntimeVoucher *)v14 setSequenceID:qword_1ED4BEB68];
  objc_destroyWeak(&location);
  v21 = *MEMORY[0x1E69E9840];
  return v14;
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
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      [voucher setEndTime:?];
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