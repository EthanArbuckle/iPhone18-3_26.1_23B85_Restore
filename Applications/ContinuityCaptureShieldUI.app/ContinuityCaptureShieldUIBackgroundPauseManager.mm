@interface ContinuityCaptureShieldUIBackgroundPauseManager
+ (id)sharedInstance;
- (void)requestDefaultScreenPauseEvent:(int64_t)event;
- (void)requestDefaultScreenResumeEvent:(int64_t)event;
@end

@implementation ContinuityCaptureShieldUIBackgroundPauseManager

+ (id)sharedInstance
{
  if (qword_10001EAE8 != -1)
  {
    sub_10000AC64();
  }

  v3 = qword_10001EAE0;

  return v3;
}

- (void)requestDefaultScreenPauseEvent:(int64_t)event
{
  BoolAnswer = AVGestaltGetBoolAnswer();
  v6 = sub_100006DC0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136316162;
    v9 = "[ContinuityCaptureShieldUIBackgroundPauseManager requestDefaultScreenPauseEvent:]";
    v10 = 2048;
    selfCopy = self;
    v12 = 2048;
    eventCopy = event;
    v14 = 1024;
    v15 = BoolAnswer;
    v16 = 1024;
    v17 = BoolAnswer;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: <%p> Called pauseEvent:%zu. Ignoring event: %d. supportsCCMultitasking:%d", &v8, 0x2Cu);
  }

  if ((BoolAnswer & 1) == 0)
  {
    v7 = +[CMContinuityCaptureXPCClientCCD sharedInstance];
    [v7 pauseSessionForEvent:event];
  }
}

- (void)requestDefaultScreenResumeEvent:(int64_t)event
{
  BoolAnswer = AVGestaltGetBoolAnswer();
  v6 = sub_100006DC0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136316162;
    v9 = "[ContinuityCaptureShieldUIBackgroundPauseManager requestDefaultScreenResumeEvent:]";
    v10 = 2048;
    selfCopy = self;
    v12 = 2048;
    eventCopy = event;
    v14 = 1024;
    v15 = BoolAnswer;
    v16 = 1024;
    v17 = BoolAnswer;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: <%p> Called resumeEvent:%zu. Ignoring event: %d. supportsCCMultitasking:%d", &v8, 0x2Cu);
  }

  if ((BoolAnswer & 1) == 0)
  {
    v7 = +[CMContinuityCaptureXPCClientCCD sharedInstance];
    [v7 resumeStreamingForEvent:event];
  }
}

@end