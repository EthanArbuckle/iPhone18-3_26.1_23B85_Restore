os_log_t define_nph_log(char *category)
{
  v1 = os_log_create("com.apple.NanoPhone", category);

  return v1;
}

id nph_general_log()
{
  if (qword_C610 != -1)
  {
    sub_3300();
  }

  v1 = qword_C608;

  return v1;
}

void sub_10E0(id a1)
{
  qword_C608 = os_log_create("com.apple.NanoPhone", "general");

  _objc_release_x1();
}

id nph_sos_general_log()
{
  if (qword_C620 != -1)
  {
    sub_3314();
  }

  v1 = qword_C618;

  return v1;
}

void sub_1168(id a1)
{
  qword_C618 = os_log_create("com.apple.NanoPhone", "sos_general");

  _objc_release_x1();
}

id nph_sos_newton_log()
{
  if (qword_C630 != -1)
  {
    sub_3328();
  }

  v1 = qword_C628;

  return v1;
}

void sub_11F0(id a1)
{
  qword_C628 = os_log_create("com.apple.NanoPhone", "sos_newton");

  _objc_release_x1();
}

uint64_t NPHDeviceOSIsInternalInstall()
{
  if (qword_C638 != -1)
  {
    sub_333C();
  }

  return byte_C640;
}

uint64_t NPHDeviceHasBaseband()
{
  if (qword_C648 != -1)
  {
    sub_3350();
  }

  return byte_C650;
}

id NPHIsCerberusEnabled()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  v1 = [v0 BOOLForKey:@"cerberusEnabled"];

  return v1;
}

uint64_t NPHIsWalkaboutEnabled()
{
  if (qword_C658 != -1)
  {
    sub_3364();
  }

  return byte_C660;
}

void sub_137C(id a1)
{
  v1 = CFPreferencesCopyAppValue(@"ExperimentGroup", @"com.apple.da");
  if (v1)
  {
    v2 = v1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v2 isEqualToString:@"walkabout"])
      {
        if (qword_C638 != -1)
        {
          sub_333C();
        }

        byte_C660 = byte_C640;
      }
    }
  }

  _objc_release_x1();
}

id NPHWiFiStringKey(void *a1)
{
  v1 = a1;
  if (MGGetBoolAnswer())
  {
    v2 = @"_WLAN";
  }

  else
  {
    v2 = @"_WIFI";
  }

  v3 = [v1 stringByAppendingString:v2];

  return v3;
}

uint64_t NPHDeriveProgramName(char *a1)
{
  v2 = strrchr(a1, 47);
  if (v2)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = a1;
  }

  qword_C668 = [NSString stringWithUTF8String:v3];

  return _objc_release_x1();
}

void NPHSetTmpDirPrefix()
{
  v0 = +[NSBundle mainBundle];
  v1 = [v0 bundleIdentifier];
  [v1 cStringUsingEncoding:4];
  v2 = _set_user_dir_suffix();

  if ((v2 & 1) == 0)
  {
    v3 = nph_general_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_3378(v3);
    }
  }
}

id NPHSharedUtilitiesAppendBuildVersion(void *a1)
{
  v1 = a1;
  v2 = MGCopyAnswer();
  v3 = v2;
  v4 = @"unknown";
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = [NSString stringWithFormat:@"%@.%@.", v1, v5];

  return v6;
}

id NSStringFromTUCallDisconnectedReason(unsigned int a1)
{
  if (a1 < 0x1A && ((0x3EFFFFFu >> a1) & 1) != 0)
  {
    v2 = *(&off_8400 + a1);
  }

  else
  {
    v2 = [NSString stringWithFormat:@"unhadled TUCallDisconnectedReason in %s", "NSString *NSStringFromTUCallDisconnectedReason(TUCallDisconnectedReason)"];
  }

  return v2;
}

void sub_17D0(id a1)
{
  v1 = +[PDRDevice activeDevice];
  byte_C678 = [v1 hasHomeButton];
}

double mach_time_elapsed_to_seconds(uint64_t a1)
{
  info = 0;
  mach_timebase_info(&info);
  return (info.numer * a1 / info.denom) / 1000000000.0;
}

void nph_ensure_on_main_queue(void *a1)
{
  block = a1;
  if (+[NSThread isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_1EDC(uint64_t a1)
{
  v2 = [[NSMutableArray alloc] initWithCapacity:3];
  v3 = qword_C688;
  qword_C688 = v2;

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:*(a1 + 32) selector:"_NPHIdleTimeNotification:" name:@"NPHIdleNotification" object:0];
}

id NPHBSFrameworkBundle()
{
  if (qword_C698 != -1)
  {
    sub_3430();
  }

  v1 = qword_C690;

  return v1;
}

void sub_22CC(id a1)
{
  qword_C690 = [NSBundle bundleWithIdentifier:@"com.apple.PhoneBridgeSettings"];

  _objc_release_x1();
}

void sub_3378(NSObject *a1)
{
  v2 = *__error();
  v3 = 136315394;
  v4 = "void NPHSetTmpDirPrefix(void)";
  v5 = 1024;
  v6 = v2;
  _os_log_error_impl(&dword_0, a1, OS_LOG_TYPE_ERROR, "%s: failed, errno: %d", &v3, 0x12u);
}