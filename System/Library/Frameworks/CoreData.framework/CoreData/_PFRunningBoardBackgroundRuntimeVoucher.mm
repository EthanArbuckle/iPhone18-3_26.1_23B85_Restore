@interface _PFRunningBoardBackgroundRuntimeVoucher
+ (id)_beginPowerAssertionNamed:(id)a3;
+ (void)_deferredInitialization;
+ (void)_endPowerAssertionWithVoucher:(id)a3;
- (_PFRunningBoardBackgroundRuntimeVoucher)initWithTask:(id)a3;
- (void)dealloc;
@end

@implementation _PFRunningBoardBackgroundRuntimeVoucher

+ (void)_deferredInitialization
{
  objc_opt_self();
  if (_VoucherRunningBoardOnceToken != -1)
  {

    dispatch_once(&_VoucherRunningBoardOnceToken, &__block_literal_global_181);
  }
}

- (_PFRunningBoardBackgroundRuntimeVoucher)initWithTask:(id)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = _PFRunningBoardBackgroundRuntimeVoucher;
  v4 = [(_PFBackgroundRuntimeVoucher *)&v19 initWithTask:?];
  if (!v4)
  {
    goto LABEL_29;
  }

  +[_PFRunningBoardBackgroundRuntimeVoucher _deferredInitialization];
  if (byte_1ED4BEB4D)
  {
    v5 = objc_alloc(getRunningBoardServicesRBSAssertionClass());
    v6 = qword_1ED4BEB88;
    v22[0] = [objc_opt_class() domainAttribute];
    v7 = [v5 initWithExplanation:a3 target:v6 attributes:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v22, 1)}];
    v4->_assertion = v7;
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_10:
    if (getRunningBoardServicesRBSAssertionClass() && getRunningBoardServicesRBSTargetClass() && getRunningBoardServicesRBSDomainAttributeClass() && qword_1ED4BEB88 != 0)
    {
      goto LABEL_29;
    }

    v11 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v12 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v14 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v12)
      {
        if (v14)
        {
          *buf = 0;
LABEL_31:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: RBSAssertion returned nil initialization\n", buf, 2u);
        }
      }

      else if (v14)
      {
        *buf = 0;
        goto LABEL_31;
      }
    }

    _NSCoreDataLog_console(1, "RBSAssertion returned nil initialization");
    objc_autoreleasePoolPop(v11);
    byte_1ED4BEB4D = 0;
    goto LABEL_29;
  }

  if (!v4->_assertion)
  {
    goto LABEL_10;
  }

LABEL_4:
  v8 = objc_autoreleasePoolPush();
  _pflogInitialize(9);
  if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
  {
    if (_pflogging_catastrophic_mode)
    {
      v9 = _PFLogGetLogStream(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = a3;
        _os_log_error_impl(&dword_18565F000, v9, OS_LOG_TYPE_ERROR, "CoreData: error: Initialized RunningBoard assertion for %@\n", buf, 0xCu);
      }
    }

    else
    {
      v15 = _PFLogGetLogStream(9);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v21 = a3;
        _os_log_impl(&dword_18565F000, v15, OS_LOG_TYPE_INFO, "CoreData: debug: Initialized RunningBoard assertion for %@\n", buf, 0xCu);
      }
    }
  }

  if (_pflogging_catastrophic_mode)
  {
    v16 = 1;
  }

  else
  {
    v16 = 9;
  }

  _NSCoreDataLog_console(v16, "Initialized RunningBoard assertion for %@", a3);
  objc_autoreleasePoolPop(v8);
LABEL_29:
  v17 = *MEMORY[0x1E69E9840];
  return v4;
}

+ (id)_beginPowerAssertionNamed:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  +[_PFRunningBoardBackgroundRuntimeVoucher _deferredInitialization];
  if (byte_1ED4BEB4D != 1)
  {
    goto LABEL_14;
  }

  v4 = [[_PFRunningBoardBackgroundRuntimeVoucher alloc] initWithTask:a3];
  v17 = 0;
  objc_initWeak(&location, v4);
  v5 = [(_PFRunningBoardBackgroundRuntimeVoucher *)v4 assertion];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69___PFRunningBoardBackgroundRuntimeVoucher__beginPowerAssertionNamed___block_invoke;
  v14[3] = &unk_1E6EC5500;
  objc_copyWeak(&v15, &location);
  [(RBSAssertion *)v5 setInvalidationHandler:v14];
  v6 = [(RBSAssertion *)[(_PFRunningBoardBackgroundRuntimeVoucher *)v4 assertion] acquireWithError:&v17];
  v7 = objc_autoreleasePoolPush();
  if ((v6 & 1) == 0)
  {
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_22;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
LABEL_22:
          *buf = 138412546;
          v19 = a3;
          v20 = 2112;
          v21 = v17;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to acquire RunningBoard assertion for task '%@' error: %@\n", buf, 0x16u);
        }
      }
    }

    _NSCoreDataLog_console(1, "Failed to acquire RunningBoard assertion for task '%@' error: %@", a3, v17);
    objc_autoreleasePoolPop(v7);
    [(_PFRunningBoardBackgroundRuntimeVoucher *)v4 setAssertion:0];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
LABEL_14:
    v4 = [_PFBackgroundRuntimeVoucher _beginPowerAssertionNamed:a3];
    goto LABEL_21;
  }

  _pflogInitialize(9);
  if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
  {
    if (_pflogging_catastrophic_mode)
    {
      v8 = _PFLogGetLogStream(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = a3;
        _os_log_error_impl(&dword_18565F000, v8, OS_LOG_TYPE_ERROR, "CoreData: error: Successfully acquired RunningBoard assertion for %@\n", buf, 0xCu);
      }
    }

    else
    {
      v10 = _PFLogGetLogStream(9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v19 = a3;
        _os_log_impl(&dword_18565F000, v10, OS_LOG_TYPE_INFO, "CoreData: debug: Successfully acquired RunningBoard assertion for %@\n", buf, 0xCu);
      }
    }
  }

  if (_pflogging_catastrophic_mode)
  {
    v11 = 1;
  }

  else
  {
    v11 = 9;
  }

  _NSCoreDataLog_console(v11, "Successfully acquired RunningBoard assertion for %@", a3);
  objc_autoreleasePoolPop(v7);
  [(_PFBackgroundRuntimeVoucher *)v4 setStatus:2];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
LABEL_21:
  v12 = *MEMORY[0x1E69E9840];
  return v4;
}

+ (void)_endPowerAssertionWithVoucher:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_31;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (byte_1ED4BEB4D != 1)
    {
      if ([a3 assertion])
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal state trying to invalidate an RBSAssertion while RunningBoard services are disabled\n", buf, 2u);
        }

        v10 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: Illegal state trying to invalidate an RBSAssertion while RunningBoard services are disabled", buf, 2u);
        }
      }

      goto LABEL_31;
    }

    v19 = 0;
    v4 = [objc_msgSend(a3 "assertion")];
    v5 = objc_autoreleasePoolPush();
    if (v4)
    {
      _pflogInitialize(9);
      if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v6 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            v7 = *(a3 + 1);
            *buf = 138412290;
            v21 = v7;
            _os_log_error_impl(&dword_18565F000, v6, OS_LOG_TYPE_ERROR, "CoreData: error: Invalidated RunningBoard assertion for %@\n", buf, 0xCu);
          }
        }

        else
        {
          v14 = _PFLogGetLogStream(9);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = *(a3 + 1);
            *buf = 138412290;
            v21 = v15;
            _os_log_impl(&dword_18565F000, v14, OS_LOG_TYPE_INFO, "CoreData: debug: Invalidated RunningBoard assertion for %@\n", buf, 0xCu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v16 = 1;
      }

      else
      {
        v16 = 9;
      }

      _NSCoreDataLog_console(v16, "Invalidated RunningBoard assertion for %@", *(a3 + 1));
      objc_autoreleasePoolPop(v5);
      [a3 setStatus:4];
      goto LABEL_30;
    }

    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v11 = _pflogging_catastrophic_mode;
      v12 = _PFLogGetLogStream(1);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      if (v11)
      {
        if (v13)
        {
          goto LABEL_32;
        }
      }

      else if (v13)
      {
LABEL_32:
        v18 = *(a3 + 1);
        *buf = 138412546;
        v21 = v18;
        v22 = 2112;
        v23 = v19;
        _os_log_error_impl(&dword_18565F000, v12, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to invalidate RunningBoard assertion for task '%@' error: %@\n", buf, 0x16u);
      }
    }

    _NSCoreDataLog_console(1, "Failed to invalidate RunningBoard assertion for task '%@' error: %@", *(a3 + 1), v19);
    objc_autoreleasePoolPop(v5);
LABEL_30:
    [a3 setAssertion:0];
    [(_PFBackgroundRuntimeVoucher *)a3 _notifyEndAssertion];

LABEL_31:
    v17 = *MEMORY[0x1E69E9840];
    return;
  }

  v8 = *MEMORY[0x1E69E9840];

  [_PFBackgroundRuntimeVoucher _endPowerAssertionWithVoucher:a3];
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  assertion = self->_assertion;
  if (assertion)
  {
    v11 = 0;
    if (([(RBSAssertion *)assertion invalidateWithError:&v11]& 1) != 0)
    {
LABEL_10:
      v8 = self->_assertion;
      goto LABEL_11;
    }

    v4 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v5 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v7 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        if (v7)
        {
          *buf = 138412290;
          v13 = v11;
LABEL_13:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to invalidate RunningBoard assertion during dealloc: %@\n", buf, 0xCu);
        }
      }

      else if (v7)
      {
        *buf = 138412290;
        v13 = v11;
        goto LABEL_13;
      }
    }

    _NSCoreDataLog_console(1, "Failed to invalidate RunningBoard assertion during dealloc: %@", v11);
    objc_autoreleasePoolPop(v4);
    goto LABEL_10;
  }

  v8 = 0;
LABEL_11:

  self->_assertion = 0;
  v10.receiver = self;
  v10.super_class = _PFRunningBoardBackgroundRuntimeVoucher;
  [(_PFBackgroundRuntimeVoucher *)&v10 dealloc];
  v9 = *MEMORY[0x1E69E9840];
}

@end