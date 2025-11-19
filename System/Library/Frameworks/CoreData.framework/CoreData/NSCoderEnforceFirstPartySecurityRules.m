@interface NSCoderEnforceFirstPartySecurityRules
@end

@implementation NSCoderEnforceFirstPartySecurityRules

void ___NSCoderEnforceFirstPartySecurityRules_block_invoke()
{
  v0 = dlopen("/System/Library/Frameworks/Security.framework/Security", 256);
  if (!v0 || (v1 = v0, v2 = dlsym(v0, "SecTaskCreateFromSelf"), v3 = dlsym(v1, "SecTaskGetCodeSignStatus"), v4 = dlsym(v1, "SecTaskCopySigningIdentifier"), !v2) || !v3 || (v5 = v4) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v10 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v12 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v10)
      {
        if (v12)
        {
          v15 = 0;
          v13 = &v15;
LABEL_20:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Couldn't load a Security symbol.\n", v13, 2u);
        }
      }

      else if (v12)
      {
        LOWORD(v14) = 0;
        v13 = &v14;
        goto LABEL_20;
      }
    }

    _NSCoreDataLog_console(1, "Couldn't load a Security symbol.", v14);
    objc_autoreleasePoolPop(v9);
    return;
  }

  v6 = v2(*MEMORY[0x1E695E480]);
  if ((~v3() & 0x4000001) != 0)
  {
    v7 = v5(v6, 0);
    if (v7)
    {
      v8 = v7;
      if ([v7 rangeOfString:@"^([A-Z0-9]+\\.)?com\\.apple\\." options:1024] == 0x7FFFFFFFFFFFFFFFLL)
      {
        _MergedGlobals_67 = 1;
      }

      CFRelease(v8);
    }
  }

  CFRelease(v6);
}

@end