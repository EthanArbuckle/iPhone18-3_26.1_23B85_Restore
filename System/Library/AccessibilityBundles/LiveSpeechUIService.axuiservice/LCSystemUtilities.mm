@interface LCSystemUtilities
+ (BOOL)liveCaptionsSupported;
+ (void)registerLiveCaptionsPID;
- (void)idleSleepTimerDisabled:(BOOL)a3;
@end

@implementation LCSystemUtilities

+ (BOOL)liveCaptionsSupported
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = off_FC220;
  v9 = off_FC220;
  if (!off_FC220)
  {
    v3 = sub_2870();
    v7[3] = dlsym(v3, "AXHasCapability");
    off_FC220 = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    v5 = sub_B8F0C();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v2(@"LiveTranscription");
}

+ (void)registerLiveCaptionsPID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = qword_FC230;
  v9 = qword_FC230;
  if (!qword_FC230)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_29E4;
    v5[3] = &unk_EF500;
    v5[4] = &v6;
    sub_29E4(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  v4 = [v2 server];
  [v4 registerLiveCaptionsPID:getpid()];
}

- (void)idleSleepTimerDisabled:(BOOL)a3
{
  disableIdleTimerAssertion = self->_disableIdleTimerAssertion;
  if (a3)
  {
    if (disableIdleTimerAssertion)
    {
      return;
    }

    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v5 = qword_FC238;
    v17 = qword_FC238;
    if (!qword_FC238)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_2A3C;
      v13[3] = &unk_EF500;
      v13[4] = &v14;
      sub_2A3C(v13);
      v5 = v15[3];
    }

    v6 = v5;
    _Block_object_dispose(&v14, 8);
    v7 = [v5 sharedInstance];
    v8 = [v7 acquireAssertionToDisableIdleTimerWithReason:@"LiveCaptions"];
    v9 = self->_disableIdleTimerAssertion;
    self->_disableIdleTimerAssertion = v8;

    v10 = LCLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Idle sleep assertion is acquired", v13, 2u);
    }
  }

  else
  {
    if (disableIdleTimerAssertion)
    {
      v11 = LCLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13[0]) = 0;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Idle sleep assertion is invalidated", v13, 2u);
      }

      v12 = self->_disableIdleTimerAssertion;
    }

    else
    {
      v12 = 0;
    }

    [(BSInvalidatable *)v12 invalidate];
    v10 = self->_disableIdleTimerAssertion;
    self->_disableIdleTimerAssertion = 0;
  }
}

@end