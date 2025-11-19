@interface PFClassicBackgroundRuntimeVoucher
@end

@implementation PFClassicBackgroundRuntimeVoucher

void *__64___PFClassicBackgroundRuntimeVoucher__beginPowerAssertionNamed___block_invoke(uint64_t a1)
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