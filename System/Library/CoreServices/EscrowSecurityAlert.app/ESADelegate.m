@interface ESADelegate
- (BOOL)isNotificationSnoozed;
- (ESADelegate)init;
- (void)cancelAlert;
@end

@implementation ESADelegate

- (ESADelegate)init
{
  v7.receiver = self;
  v7.super_class = ESADelegate;
  v2 = [(ESADelegate *)&v7 init];
  if (v2)
  {
    v3 = qword_100015A80 == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = objc_alloc_init(ESALocalSettings);
    v5 = qword_100015A80;
    qword_100015A80 = v4;
  }

  return v2;
}

- (void)cancelAlert
{
  [qword_100015A80 reset];
  if (qword_100015A90)
  {
    v2 = CloudServicesLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "canceling alert", &v13, 2u);
    }

    CFUserNotificationCancel(qword_100015A90);
    dword_100015A98 = 0;
    if (qword_100015AA0)
    {
      CFRunLoopSourceInvalidate(qword_100015AA0);
      CFRelease(qword_100015AA0);
      qword_100015AA0 = 0;
    }

    if (qword_100015A90)
    {
      CFRelease(qword_100015A90);
      qword_100015A90 = 0;
    }

    add_explicit = atomic_fetch_add_explicit(dword_100015AA8, 0xFFFFFFFF, memory_order_relaxed);
    v4 = CloudServicesLog();
    v5 = v4;
    if (add_explicit == 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315138;
        v14 = "void cancelAlert(void)";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: ending xpc transaction", &v13, 0xCu);
      }

      v5 = qword_100015A88;
      qword_100015A88 = 0;
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100007B48(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

- (BOOL)isNotificationSnoozed
{
  v2 = [qword_100015A80 alertType];
  if (v2)
  {
    LOBYTE(v2) = [qword_100015A80 alertType] < 3;
  }

  return v2;
}

@end