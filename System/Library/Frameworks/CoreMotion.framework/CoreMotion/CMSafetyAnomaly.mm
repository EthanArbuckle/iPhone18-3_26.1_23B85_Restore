@interface CMSafetyAnomaly
+ (BOOL)areStatsAvailable;
- (int)getState;
- (void)notifyEvent:(id)a3;
@end

@implementation CMSafetyAnomaly

+ (BOOL)areStatsAvailable
{
  if (sub_19B4215D8())
  {
    return 0;
  }

  return objc_msgSend_featureAvailability_(CMMotionUtils, v2, "kCLConnectionMessageKappaStatsAvailable");
}

- (int)getState
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE29B8 != -1)
  {
    dispatch_once(&qword_1EAFE29B8, &unk_1F0E2A5E0);
  }

  v2 = qword_1EAFE29C0;
  if (os_log_type_enabled(qword_1EAFE29C0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "get state updates", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE29B8 != -1)
    {
      dispatch_once(&qword_1EAFE29B8, &unk_1F0E2A5E0);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSafetyAnomaly getState]", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  operator new();
}

- (void)notifyEvent:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"CMSafetyAnomalyPropertiesKey";
  v5[0] = a3;
  v3 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v5, &v4, 1);
  sub_19B5D12C8();
}

@end