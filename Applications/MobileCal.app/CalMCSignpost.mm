@interface CalMCSignpost
+ (id)calendarSignpostHandle;
+ (void)beginLaunch:(BOOL)launch;
+ (void)endLaunchToView:(int64_t)view extended:(BOOL)extended;
@end

@implementation CalMCSignpost

+ (id)calendarSignpostHandle
{
  if (qword_100251CC8 != -1)
  {
    sub_100003210();
  }

  v3 = qword_100251CC0;

  return v3;
}

+ (void)beginLaunch:(BOOL)launch
{
  launchCopy = launch;
  calendarSignpostHandle = [self calendarSignpostHandle];
  v5 = os_signpost_enabled(calendarSignpostHandle);
  if (launchCopy)
  {
    if (v5)
    {
      v9 = 0;
      v6 = "ExtendedLaunch";
      v7 = &v9;
LABEL_6:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, calendarSignpostHandle, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, v6, " enableTelemetry=YES ", v7, 2u);
    }
  }

  else if (v5)
  {
    v8 = 0;
    v6 = "Launch";
    v7 = &v8;
    goto LABEL_6;
  }
}

+ (void)endLaunchToView:(int64_t)view extended:(BOOL)extended
{
  extendedCopy = extended;
  if (view > 4)
  {
    v5 = "unknown";
  }

  else
  {
    v5 = off_1002118E0[view];
  }

  calendarSignpostHandle = [self calendarSignpostHandle];
  v7 = os_signpost_enabled(calendarSignpostHandle);
  if (extendedCopy)
  {
    if (v7)
    {
      v9 = 136446210;
      v10 = v5;
      v8 = "ExtendedLaunch";
LABEL_9:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, calendarSignpostHandle, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, v8, " enableTelemetry=YES LaunchedView=%{public, signpost.telemetry:string1, Name=LaunchedView}s", &v9, 0xCu);
    }
  }

  else if (v7)
  {
    v9 = 136446210;
    v10 = v5;
    v8 = "Launch";
    goto LABEL_9;
  }
}

@end