@interface BackoffCounter
+ (id)sharedInstance;
- (BOOL)_validateBackoff;
- (BackoffCounter)init;
- (NSError)errorAuthenticationFailedWithBackoff;
- (id)_dateFromUptime:(id)a3;
- (id)actionFailure;
- (id)actionFailureWithBackoffResult;
- (void)_computeRetryTime;
- (void)_saveDefault:(id)a3 forKey:(id)a4;
- (void)_saveDefaults;
- (void)actionBackoffWithReply:(id)a3;
- (void)actionFailureWithReply:(id)a3;
- (void)actionSuccess;
- (void)currentBackoffErrorWithReply:(id)a3;
@end

@implementation BackoffCounter

+ (id)sharedInstance
{
  if (qword_20A70 != -1)
  {
    sub_BC38();
  }

  v3 = qword_20A68;

  return v3;
}

- (BackoffCounter)init
{
  v21.receiver = self;
  v21.super_class = BackoffCounter;
  v2 = [(BackoffCounter *)&v21 init];
  if (v2)
  {
    if (+[DaemonUtils deviceHasSEP])
    {
      v3 = MKBGetDeviceLockStateInfo();
      sepLockInfo = v2->_sepLockInfo;
      v2->_sepLockInfo = v3;
    }

    if (!v2->_sepLockInfo)
    {
      v5 = +[NSUserDefaults standardUserDefaults];
      defaults = v2->_defaults;
      v2->_defaults = v5;

      v7 = [(NSUserDefaults *)v2->_defaults objectForKey:@"failures"];
      v2->_failures = [v7 unsignedIntegerValue];

      v8 = [(NSUserDefaults *)v2->_defaults objectForKey:@"retryTime"];
      v9 = +[NSDate date];
      [v8 timeIntervalSinceDate:v9];
      v11 = v10;

      if (v11 > 0.0)
      {
        v12 = [NSNumber numberWithDouble:v11 + sub_12D8()];
        retryUptime = v2->_retryUptime;
        v2->_retryUptime = v12;
      }

      v14 = +[DaemonUtils sharedInstance];
      v15 = [v14 serverQueue];
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1374;
      handler[3] = &unk_1C3C0;
      v20 = v2;
      v16 = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &unk_209F8, v15, handler);

      if (v16)
      {
        v17 = sub_13BC();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v23 = "com.apple.mobile.keybagd.lock_status";
          v24 = 1024;
          v25 = v16;
          _os_log_impl(&def_13158, v17, OS_LOG_TYPE_DEFAULT, "notify_register_dispatch(%{public}s) failed: %u", buf, 0x12u);
        }
      }
    }
  }

  return v2;
}

- (id)_dateFromUptime:(id)a3
{
  if (a3)
  {
    v4 = +[NSDate dateWithTimeIntervalSinceNow:](NSDate, "dateWithTimeIntervalSinceNow:", ([a3 longValue] - sub_12D8()));
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)actionFailure
{
  v3 = sub_13BC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    *v10 = "[BackoffCounter actionFailure]";
    *&v10[8] = 2112;
    *&v10[10] = self;
    _os_log_impl(&def_13158, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v9, 0x16u);
  }

  if (!self->_sepLockInfo)
  {
    v4 = sub_13BC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      failures = self->_failures;
      v6 = [(BackoffCounter *)self _retryTime];
      v9 = 67109378;
      *v10 = failures;
      *&v10[4] = 2114;
      *&v10[6] = v6;
      _os_log_impl(&def_13158, v4, OS_LOG_TYPE_DEFAULT, "failures: %d, retryTime: %{public}@", &v9, 0x12u);
    }

    ++self->_failures;
    [(BackoffCounter *)self _computeRetryTime];
    [(BackoffCounter *)self _saveDefaults];
  }

  v7 = [(BackoffCounter *)self errorAuthenticationFailedWithBackoff];

  return v7;
}

- (id)actionFailureWithBackoffResult
{
  v3 = sub_13BC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[BackoffCounter actionFailureWithBackoffResult]";
    v9 = 2112;
    v10 = self;
    _os_log_impl(&def_13158, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v7, 0x16u);
  }

  if (!self->_sepLockInfo)
  {
    failures = self->_failures;
    if (failures <= 5)
    {
      failures = 5;
    }

    self->_failures = failures;
  }

  v5 = [(BackoffCounter *)self actionFailure];

  return v5;
}

- (void)actionSuccess
{
  v3 = sub_13BC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    *v9 = "[BackoffCounter actionSuccess]";
    *&v9[8] = 2112;
    *&v9[10] = self;
    _os_log_impl(&def_13158, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v8, 0x16u);
  }

  if (!self->_sepLockInfo)
  {
    v4 = sub_13BC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      failures = self->_failures;
      v6 = [(BackoffCounter *)self _retryTime];
      v8 = 67109378;
      *v9 = failures;
      *&v9[4] = 2114;
      *&v9[6] = v6;
      _os_log_impl(&def_13158, v4, OS_LOG_TYPE_DEFAULT, "failures: %d, retryTime: %{public}@", &v8, 0x12u);
    }

    retryUptime = self->_retryUptime;
    self->_retryUptime = 0;
    self->_failures = 0;

    [(BackoffCounter *)self _saveDefaults];
  }
}

- (void)actionFailureWithReply:(id)a3
{
  v5 = a3;
  v6 = [(BackoffCounter *)self actionFailure];
  (*(a3 + 2))(v5, v6);
}

- (void)actionBackoffWithReply:(id)a3
{
  v5 = a3;
  v6 = [(BackoffCounter *)self actionFailureWithBackoffResult];
  (*(a3 + 2))(v5, v6);
}

- (void)currentBackoffErrorWithReply:(id)a3
{
  v5 = a3;
  v6 = [(BackoffCounter *)self errorAuthenticationFailedWithBackoff];
  (*(a3 + 2))(v5, v6);
}

- (void)_computeRetryTime
{
  failures = self->_failures;
  v4 = failures >= 6;
  v5 = failures - 6;
  if (v4)
  {
    if (v5 > 4)
    {
      v7 = 3600;
    }

    else
    {
      v7 = qword_17648[v5];
    }

    v6 = [NSNumber numberWithUnsignedInteger:sub_12D8() + v7];
  }

  else
  {
    v6 = 0;
  }

  retryUptime = self->_retryUptime;
  self->_retryUptime = v6;

  _objc_release_x1();
}

- (BOOL)_validateBackoff
{
  v3 = sub_13BC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    failures = self->_failures;
    v5 = [(BackoffCounter *)self _retryTime];
    v11 = 136315906;
    v12 = "[BackoffCounter _validateBackoff]";
    v13 = 1024;
    *v14 = failures;
    *&v14[4] = 2114;
    *&v14[6] = v5;
    *&v14[14] = 2112;
    *&v14[16] = self;
    _os_log_impl(&def_13158, v3, OS_LOG_TYPE_DEFAULT, "%s failures: %d, retryTime: %{public}@ on %@", &v11, 0x26u);
  }

  if (self->_retryUptime)
  {
    v6 = sub_12D8();
    if (v6 > [(NSNumber *)self->_retryUptime longValue])
    {
      retryUptime = self->_retryUptime;
      self->_retryUptime = 0;

      [(BackoffCounter *)self _saveDefaults];
    }
  }

  v8 = sub_13BC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [NSNumber numberWithInt:self->_retryUptime != 0];
    v11 = 136315650;
    v12 = "[BackoffCounter _validateBackoff]";
    v13 = 2114;
    *v14 = v9;
    *&v14[8] = 2112;
    *&v14[10] = self;
    _os_log_impl(&def_13158, v8, OS_LOG_TYPE_DEFAULT, "%s -> %{public}@ on %@", &v11, 0x20u);
  }

  return self->_retryUptime != 0;
}

- (NSError)errorAuthenticationFailedWithBackoff
{
  p_sepLockInfo = &self->_sepLockInfo;
  if (self->_sepLockInfo)
  {
    v4 = MKBGetDeviceLockStateInfo();
    v5 = v4;
    if (!v4)
    {
      v5 = *p_sepLockInfo;
    }

    objc_storeStrong(p_sepLockInfo, v5);
    v6 = [*p_sepLockInfo objectForKey:kMKBInfoBackOff];
    v7 = v6;
    if (v6 && ([v6 doubleValue], v8 > 0.0))
    {
      [v7 doubleValue];
      v9 = [NSDate dateWithTimeIntervalSinceNow:?];
    }

    else
    {
      v9 = 0;
    }

    if (!v9)
    {
      goto LABEL_14;
    }

LABEL_12:
    v20[0] = NSDebugDescriptionErrorKey;
    v20[1] = LAPasswordRetryTime;
    v21[0] = @"Passcode backoff";
    v21[1] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
    v11 = [LAErrorHelper errorWithCode:-1 userInfo:v10];

    goto LABEL_15;
  }

  if ([(BackoffCounter *)self _validateBackoff])
  {
    v9 = [(BackoffCounter *)self _retryTime];
    if (v9)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_14:
  v11 = 0;
LABEL_15:
  v12 = sub_13BC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = "[BackoffCounter errorAuthenticationFailedWithBackoff]";
    v16 = 2114;
    v17 = v11;
    v18 = 2112;
    v19 = self;
    _os_log_impl(&def_13158, v12, OS_LOG_TYPE_DEFAULT, "%s -> %{public}@ on %@", &v14, 0x20u);
  }

  return v11;
}

- (void)_saveDefault:(id)a3 forKey:(id)a4
{
  defaults = self->_defaults;
  if (a3)
  {
    [(NSUserDefaults *)defaults setObject:a3 forKey:a4];
  }

  else
  {
    [(NSUserDefaults *)defaults removeObjectForKey:a4];
  }
}

- (void)_saveDefaults
{
  v3 = sub_13BC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    failures = self->_failures;
    v5 = [(BackoffCounter *)self _retryTime];
    v10 = 136315906;
    v11 = "[BackoffCounter _saveDefaults]";
    v12 = 1024;
    v13 = failures;
    v14 = 2114;
    v15 = v5;
    v16 = 2112;
    v17 = self;
    _os_log_impl(&def_13158, v3, OS_LOG_TYPE_DEFAULT, "%s failures: %d, retryTime: %{public}@ on %@", &v10, 0x26u);
  }

  defaults = self->_defaults;
  if (self->_failures)
  {
    v7 = [NSNumber numberWithUnsignedInteger:?];
    [(NSUserDefaults *)defaults setObject:v7 forKey:@"failures"];
  }

  else
  {
    [(NSUserDefaults *)self->_defaults setObject:0 forKey:@"failures"];
  }

  v8 = self->_defaults;
  v9 = [(BackoffCounter *)self _retryTime];
  [(NSUserDefaults *)v8 setObject:v9 forKey:@"retryTime"];

  [(NSUserDefaults *)self->_defaults synchronize];
}

@end