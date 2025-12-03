@interface NSUserActivity
- (NSString)callProviderIdentifier;
- (TUHandle)handle;
- (int)callService;
@end

@implementation NSUserActivity

- (NSString)callProviderIdentifier
{
  userInfo = [(NSUserActivity *)self userInfo];
  v3 = userInfo;
  if (userInfo)
  {
    v4 = [userInfo objectForKeyedSubscript:TUCallUserActivityProviderIdentifierKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 copy];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)callService
{
  userInfo = [(NSUserActivity *)self userInfo];
  v3 = userInfo;
  if (userInfo)
  {
    v4 = [userInfo objectForKeyedSubscript:@"TUCallUserActivityServiceKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      intValue = [v4 intValue];
    }

    else
    {
      intValue = 0;
    }
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (TUHandle)handle
{
  userInfo = [(NSUserActivity *)self userInfo];
  v3 = userInfo;
  if (!userInfo)
  {
    v5 = 0;
    goto LABEL_16;
  }

  v4 = [userInfo objectForKeyedSubscript:TUCallUserActivityHandleKey];
  if (!v4)
  {
    v6 = PHDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "User activity is missing the required key TUCallUserActivityHandleKey.", buf, 2u);
    }

    goto LABEL_9;
  }

  v5 = [TUHandle handleWithDictionaryRepresentation:v4];
  if (!v5)
  {
LABEL_9:
    v7 = [v3 objectForKeyedSubscript:TUCallUserActivityDestinationIDKey];
    if (v7)
    {
      v5 = [TUHandle handleWithDestinationID:v7];
    }

    else
    {
      v8 = PHDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "User activity is missing the required key TUCallUserActivityDestinationIDKey.", v10, 2u);
      }

      v5 = 0;
    }
  }

LABEL_16:

  return v5;
}

@end