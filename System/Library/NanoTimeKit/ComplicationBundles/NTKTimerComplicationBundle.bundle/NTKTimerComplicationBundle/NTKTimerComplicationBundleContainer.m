@interface NTKTimerComplicationBundleContainer
+ (id)complicationBundleDataSources;
@end

@implementation NTKTimerComplicationBundleContainer

+ (id)complicationBundleDataSources
{
  v2 = +[CLKDevice currentDevice];
  v3 = [v2 supportsPDRCapability:3516830922];
  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v2 nrDeviceUUID];
    v6 = v5;
    v7 = @"does not support";
    if (v3)
    {
      v7 = @"supports";
    }

    *buf = 138412546;
    v17 = v5;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "CLKDevice: %@ %{public}@ multiple timers.", buf, 0x16u);
  }

  v8 = _NTKLoggingObjectForDomain();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Multiple timer complications is supported", buf, 2u);
    }

    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v10 = v15;
    v11 = 2;
  }

  else
  {
    if (v9)
    {
      *buf = 138543362;
      v17 = @"No";
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Not loading multiple timer complication bundle. Supported: %{public}@.", buf, 0xCu);
    }

    v14 = objc_opt_class();
    v10 = &v14;
    v11 = 1;
  }

  v12 = [NSArray arrayWithObjects:v10 count:v11];

  return v12;
}

@end