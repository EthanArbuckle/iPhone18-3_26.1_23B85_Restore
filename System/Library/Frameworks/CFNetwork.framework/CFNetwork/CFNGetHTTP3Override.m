@interface CFNGetHTTP3Override
@end

@implementation CFNGetHTTP3Override

void ____CFNGetHTTP3Override_block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = getenv("CFN_USE_HTTP3");
  if (!v0)
  {
    goto LABEL_9;
  }

  v1 = v0;
  if (__CFNIsInDevelopmentEnvironment::onceToken != -1)
  {
    dispatch_once(&__CFNIsInDevelopmentEnvironment::onceToken, &__block_literal_global_21_5558);
  }

  if (__CFNIsInDevelopmentEnvironment::ok)
  {
    __CFNGetHTTP3Override::value = strtol(v1, 0, 10);
    if (CFNLog::onceToken != -1)
    {
      dispatch_once(&CFNLog::onceToken, &__block_literal_global_2_5525);
    }

    v2 = CFNLog::logger;
    if (os_log_type_enabled(CFNLog::logger, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v7 = __CFNGetHTTP3Override::value;
      v3 = "HTTP/3 override %d via env";
LABEL_14:
      _os_log_impl(&dword_197BA3000, v2, OS_LOG_TYPE_INFO, v3, buf, 8u);
    }
  }

  else
  {
LABEL_9:
    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"CFNetworkHTTP3Override", @"Apple Global Domain", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      __CFNGetHTTP3Override::value = AppIntegerValue;
      if (CFNLog::onceToken != -1)
      {
        dispatch_once(&CFNLog::onceToken, &__block_literal_global_2_5525);
      }

      v2 = CFNLog::logger;
      if (os_log_type_enabled(CFNLog::logger, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v7 = __CFNGetHTTP3Override::value;
        v3 = "HTTP/3 override %d via preference";
        goto LABEL_14;
      }
    }
  }
}

@end