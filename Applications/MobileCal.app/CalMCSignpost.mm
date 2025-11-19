@interface CalMCSignpost
+ (id)calendarSignpostHandle;
+ (void)beginLaunch:(BOOL)a3;
+ (void)endLaunchToView:(int64_t)a3 extended:(BOOL)a4;
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

+ (void)beginLaunch:(BOOL)a3
{
  v3 = a3;
  v4 = [a1 calendarSignpostHandle];
  v5 = os_signpost_enabled(v4);
  if (v3)
  {
    if (v5)
    {
      v9 = 0;
      v6 = "ExtendedLaunch";
      v7 = &v9;
LABEL_6:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, v6, " enableTelemetry=YES ", v7, 2u);
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

+ (void)endLaunchToView:(int64_t)a3 extended:(BOOL)a4
{
  v4 = a4;
  if (a3 > 4)
  {
    v5 = "unknown";
  }

  else
  {
    v5 = off_1002118E0[a3];
  }

  v6 = [a1 calendarSignpostHandle];
  v7 = os_signpost_enabled(v6);
  if (v4)
  {
    if (v7)
    {
      v9 = 136446210;
      v10 = v5;
      v8 = "ExtendedLaunch";
LABEL_9:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, v8, " enableTelemetry=YES LaunchedView=%{public, signpost.telemetry:string1, Name=LaunchedView}s", &v9, 0xCu);
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