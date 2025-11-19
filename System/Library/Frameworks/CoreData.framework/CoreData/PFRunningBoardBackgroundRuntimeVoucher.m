@interface PFRunningBoardBackgroundRuntimeVoucher
@end

@implementation PFRunningBoardBackgroundRuntimeVoucher

void __66___PFRunningBoardBackgroundRuntimeVoucher__deferredInitialization__block_invoke()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = getprogname();
  if (v0)
  {
    v1 = v0;
    if (*v0)
    {
      if (!strncmp("Podcasts", v0, 8uLL) || !strncmp("PodcastsWidget", v1, 0xEuLL))
      {
        v2 = xpc_copy_entitlement_for_self();
        if (_MergedGlobals_88)
        {
          v3 = objc_autoreleasePoolPush();
          _pflogInitialize(9);
          if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              LogStream = _PFLogGetLogStream(1);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                if (v2)
                {
                  v5 = v2;
                }

                else
                {
                  v5 = @"<null>";
                }

                *buf = 138412290;
                v12 = v5;
              }
            }

            else
            {
              v6 = _PFLogGetLogStream(9);
              if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
              {
                if (v2)
                {
                  v7 = v2;
                }

                else
                {
                  v7 = @"<null>";
                }

                *buf = 138412290;
                v12 = v7;
              }
            }
          }

          if (v2)
          {
            v8 = v2;
          }

          else
          {
            v8 = @"<null>";
          }

          if (_pflogging_catastrophic_mode)
          {
            v9 = 1;
          }

          else
          {
            v9 = 9;
          }

          objc_autoreleasePoolPop(v3);
        }

        qword_1ED4BEB88 = [(objc_class *)getRunningBoardServicesRBSTargetClass() currentProcess];
        if (qword_1ED4BEB88)
        {
          byte_1ED4BEB4D = 1;
        }

        qword_1ED4BEB90 = [(objc_class *)getRunningBoardServicesRBSDomainAttributeClass() attributeWithDomain:@"com.apple.coredata.filelocks" name:@"SharedDatabaseAccess"];
        qword_1ED4BEB98 = [(objc_class *)getRunningBoardServicesRBSDomainAttributeClass() attributeWithDomain:@"com.apple.coredata.filelocks" name:@"DatabaseSchemaMigration"];
        if (v2)
        {
          xpc_BOOL_get_value(v2);
          xpc_release(v2);
        }
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __69___PFRunningBoardBackgroundRuntimeVoucher__beginPowerAssertionNamed___block_invoke(uint64_t a1, __CFString *a2, __CFString *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  v6 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog < 1)
  {
    goto LABEL_15;
  }

  v7 = _pflogging_catastrophic_mode;
  LogStream = _PFLogGetLogStream(1);
  v9 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    if (Weak)
    {
      v10 = Weak;
    }

    else
    {
      v10 = @"<null>";
    }

    if (a2)
    {
      v11 = a2;
    }

    else
    {
      v11 = @"<null>";
    }

    *buf = 138412802;
    v21 = v10;
    v22 = 2112;
    if (a3)
    {
      v12 = a3;
    }

    else
    {
      v12 = @"<null>";
    }

    v23 = v11;
    v24 = 2112;
    v25 = v12;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    if (Weak)
    {
      v17 = Weak;
    }

    else
    {
      v17 = @"<null>";
    }

    if (a2)
    {
      v18 = a2;
    }

    else
    {
      v18 = @"<null>";
    }

    *buf = 138412802;
    v21 = v17;
    v22 = 2112;
    if (a3)
    {
      v19 = a3;
    }

    else
    {
      v19 = @"<null>";
    }

    v23 = v18;
    v24 = 2112;
    v25 = v19;
  }

  _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: _PFRunningBoardBackgroundRuntimeVoucher '%@' for RBSAssertion '%@' was cancelled due to error '%@'\n", buf, 0x20u);
LABEL_15:
  if (Weak)
  {
    v13 = Weak;
  }

  else
  {
    v13 = @"<null>";
  }

  if (a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = @"<null>";
  }

  if (a3)
  {
    v15 = a3;
  }

  else
  {
    v15 = @"<null>";
  }

  _NSCoreDataLog_console(1, "_PFRunningBoardBackgroundRuntimeVoucher '%@' for RBSAssertion '%@' was cancelled due to error '%@'", v13, v14, v15);
  objc_autoreleasePoolPop(v6);
  v16 = *MEMORY[0x1E69E9840];
}

@end