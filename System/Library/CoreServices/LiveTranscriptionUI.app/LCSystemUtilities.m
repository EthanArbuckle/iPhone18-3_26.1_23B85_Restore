@interface LCSystemUtilities
+ (BOOL)liveCaptionsSupported;
+ (void)registerLiveCaptionsPID;
- (void)idleSleepTimerDisabled:(BOOL)a3;
@end

@implementation LCSystemUtilities

+ (BOOL)liveCaptionsSupported
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = off_100064590;
  v8 = off_100064590;
  if (!off_100064590)
  {
    v3 = sub_1000020F8();
    v6[3] = dlsym(v3, "AXHasCapability");
    off_100064590 = v6[3];
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    sub_100045398();
  }

  return v2(@"LiveTranscription");
}

+ (void)registerLiveCaptionsPID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = qword_1000645A0;
  v9 = qword_1000645A0;
  if (!qword_1000645A0)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000226C;
    v5[3] = &unk_10005DB00;
    v5[4] = &v6;
    sub_10000226C(v5);
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
    v5 = qword_1000645A8;
    v17 = qword_1000645A8;
    if (!qword_1000645A8)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000022C4;
      v13[3] = &unk_10005DB00;
      v13[4] = &v14;
      sub_1000022C4(v13);
      v5 = v15[3];
    }

    v6 = v5;
    _Block_object_dispose(&v14, 8);
    v7 = [v5 sharedInstance];
    v8 = [v7 acquireAssertionToDisableIdleTimerWithReason:@"LiveCaptions"];
    v9 = self->_disableIdleTimerAssertion;
    self->_disableIdleTimerAssertion = v8;

    v10 = sub_100001C60();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Idle sleep assertion is acquired", v13, 2u);
    }
  }

  else
  {
    if (disableIdleTimerAssertion)
    {
      v11 = sub_100001C60();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13[0]) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Idle sleep assertion is invalidated", v13, 2u);
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