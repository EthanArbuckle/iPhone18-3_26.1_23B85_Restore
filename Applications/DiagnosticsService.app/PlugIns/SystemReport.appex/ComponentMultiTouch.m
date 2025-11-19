@interface ComponentMultiTouch
- (BOOL)isPresent;
- (id)resetCount;
- (void)populateAttributes:(id)a3;
@end

@implementation ComponentMultiTouch

- (id)resetCount
{
  v2 = +[NSNull null];
  if (MTDeviceCreateDefault())
  {
    properties = 0;
    Service = MTDeviceGetService();
    if (IORegistryEntryCreateCFProperties(Service, &properties, kCFAllocatorDefault, 0))
    {
      v4 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error: IORegistryEntryCreateCFProperties failure for AppleMultitouchSPI.", buf, 2u);
      }
    }

    else
    {
      v4 = properties;
      v6 = [(__CFDictionary *)properties objectForKeyedSubscript:@"ResetCount"];

      if (v6)
      {
        v7 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *v12 = 0;
          _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "MultiTouch found", v12, 2u);
        }

        v8 = [v4 objectForKeyedSubscript:@"ResetCount"];

        v2 = v8;
      }
    }

    MTDeviceRelease();
  }

  else
  {
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error: Could not create default MTDevice.", v10, 2u);
    }
  }

  return v2;
}

- (BOOL)isPresent
{
  v2 = [(ComponentMultiTouch *)self resetCount];
  if (v2)
  {
    objc_opt_class();
    v3 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (void)populateAttributes:(id)a3
{
  v4 = a3;
  v5 = [(ComponentMultiTouch *)self resetCount];
  [v4 setObject:v5 forKeyedSubscript:@"multitouchResetCount"];
}

@end