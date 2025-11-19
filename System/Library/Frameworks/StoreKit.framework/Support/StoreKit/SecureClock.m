@interface SecureClock
+ (id)_dateFormatter;
+ (id)_dateFromHeaderValue:(id)a3;
+ (id)_global;
+ (id)_hashForServerDate:(double)a3 systemUptime:(double)a4;
+ (id)_persistentStatePath;
+ (id)now;
+ (void)synchronizeWithURLResult:(id)a3;
- (double)_timeIntervalSinceLastServerResponse;
- (id)_currentTime;
- (id)_currentTimeSynchronized;
- (id)_init;
- (void)_logState;
- (void)_readState;
- (void)_synchronizeWithURLResult:(id)a3;
- (void)_writeState;
@end

@implementation SecureClock

+ (id)now
{
  v2 = [a1 _global];
  v3 = [v2 _currentTimeSynchronized];

  return v3;
}

+ (void)synchronizeWithURLResult:(id)a3
{
  v4 = a3;
  v5 = [a1 _global];
  [v5 _synchronizeWithURLResult:v4];
}

+ (id)_global
{
  if (qword_1003D40E8 != -1)
  {
    sub_1002CB150();
  }

  v3 = qword_1003D40E0;

  return v3;
}

+ (id)_dateFormatter
{
  if (qword_1003D40F8 != -1)
  {
    sub_1002CB1B8();
  }

  v3 = qword_1003D40F0;

  return v3;
}

+ (id)_dateFromHeaderValue:(id)a3
{
  v4 = a3;
  v5 = [a1 _dateFormatter];
  v6 = [v5 dateFromString:v4];

  return v6;
}

+ (id)_hashForServerDate:(double)a3 systemUptime:(double)a4
{
  v10[0] = 0;
  v10[1] = 0;
  *data = a3;
  *&data[1] = a4;
  v4 = +[AMSDevice sk_bootSession];
  v5 = v4;
  if (v4)
  {
    [v4 getUUIDBytes:v10];
    memset(v8, 0, sizeof(v8));
    CC_SHA256(data, 0x20u, v8);
    v6 = [NSData dataWithBytes:v8 length:32];
  }

  else
  {
    if (qword_1003D4148 != -1)
    {
      sub_1002CB164();
    }

    if (os_log_type_enabled(qword_1003D4100, OS_LOG_TYPE_ERROR))
    {
      sub_1002CB1CC();
    }

    v6 = 0;
  }

  return v6;
}

+ (id)_persistentStatePath
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 sk_persistedDataURL];
  v4 = [v3 URLByAppendingPathComponent:@"sc" isDirectory:0];

  return v4;
}

- (id)_init
{
  v7.receiver = self;
  v7.super_class = SecureClock;
  v2 = [(SecureClock *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    lock = v2->_lock;
    v2->_lock = v3;

    lastServerDate = v2->_lastServerDate;
    v2->_lastServerDate = 0;

    v2->_uptimeAtLastServerResponse = INFINITY;
  }

  return v2;
}

- (void)_synchronizeWithURLResult:(id)a3
{
  v4 = a3;
  v5 = +[NSProcessInfo processInfo];
  [v5 systemUptime];
  v7 = v6;

  v8 = [v4 responseHeaders];
  v9 = [v8 tcr_stringForKey:@"date"];

  if (v9 && ([v4 response], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "URL"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "scheme"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", @"https"), v12, v11, v10, v13))
  {
    v14 = [SecureClock _dateFromHeaderValue:v9];
    v15 = v14;
    if (v14)
    {
      lock = self->_lock;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10003AB54;
      v19[3] = &unk_100381888;
      v19[4] = self;
      v21 = v7;
      v20 = v14;
      sub_10004D3C0(lock, v19);
    }

    else
    {
      if (qword_1003D4148 != -1)
      {
        sub_1002CB164();
      }

      v18 = qword_1003D4100;
      if (os_log_type_enabled(qword_1003D4100, OS_LOG_TYPE_ERROR))
      {
        sub_1002CB200(v18, v4, v9);
      }
    }
  }

  else
  {
    if (qword_1003D4148 != -1)
    {
      sub_1002CB164();
    }

    v17 = qword_1003D4100;
    if (os_log_type_enabled(qword_1003D4100, OS_LOG_TYPE_ERROR))
    {
      sub_1002CB2BC(v17, v4);
    }
  }

  [(SecureClock *)self _logState];
}

- (void)_writeState
{
  [(NSDate *)self->_lastServerDate timeIntervalSinceReferenceDate];
  v3 = [SecureClock _hashForServerDate:"_hashForServerDate:systemUptime:" systemUptime:?];
  if (v3)
  {
    memset(v11, 0, sizeof(v11));
    [(NSDate *)self->_lastServerDate timeIntervalSinceReferenceDate];
    uptimeAtLastServerResponse = self->_uptimeAtLastServerResponse;
    v10[0] = v5;
    *&v10[1] = uptimeAtLastServerResponse;
    [v3 getBytes:v11 length:32];
    v6 = [NSData dataWithBytes:v10 length:48];
    v7 = +[SecureClock _persistentStatePath];
    v9 = 0;
    [v6 writeToURL:v7 options:1 error:&v9];
    v8 = v9;

    if (v8)
    {
      if (qword_1003D4148 != -1)
      {
        sub_1002CB360();
      }

      if (os_log_type_enabled(qword_1003D4100, OS_LOG_TYPE_ERROR))
      {
        sub_1002CB388();
      }
    }

    else
    {
      [(SecureClock *)self _logState];
    }
  }

  else
  {
    if (qword_1003D4148 != -1)
    {
      sub_1002CB164();
    }

    if (os_log_type_enabled(qword_1003D4100, OS_LOG_TYPE_ERROR))
    {
      sub_1002CB3FC();
    }
  }
}

- (void)_readState
{
  v3 = +[SecureClock _persistentStatePath];
  v14 = 0;
  v4 = [NSData dataWithContentsOfURL:v3 options:0 error:&v14];
  v5 = v14;

  if (v5)
  {
    if (qword_1003D4148 != -1)
    {
      sub_1002CB360();
    }

    if (os_log_type_enabled(qword_1003D4100, OS_LOG_TYPE_ERROR))
    {
      sub_1002CB430();
    }

    goto LABEL_26;
  }

  if (v4 && [v4 length] == 48)
  {
    memset(v16, 0, sizeof(v16));
    v15 = 0u;
    [v4 getBytes:&v15 length:48];
    v6 = [SecureClock _hashForServerDate:v15 systemUptime:?];
    if (!v6)
    {
      if (qword_1003D4148 != -1)
      {
        sub_1002CB360();
      }

      if (os_log_type_enabled(qword_1003D4100, OS_LOG_TYPE_ERROR))
      {
        sub_1002CB4D8();
      }

      goto LABEL_25;
    }

    v7 = [NSData dataWithBytes:v16 length:32];
    if ([v6 isEqualToData:v7])
    {
      v8 = *(&v15 + 1);
      v9 = +[NSProcessInfo processInfo];
      [v9 systemUptime];
      v11 = v10;

      if (v8 < v11)
      {
        v12 = [NSDate dateWithTimeIntervalSinceReferenceDate:*&v15];
        lastServerDate = self->_lastServerDate;
        self->_lastServerDate = v12;

        self->_uptimeAtLastServerResponse = *(&v15 + 1);
        [(SecureClock *)self _logState];
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
    }

    if (qword_1003D4148 != -1)
    {
      sub_1002CB360();
    }

    if (os_log_type_enabled(qword_1003D4100, OS_LOG_TYPE_ERROR))
    {
      sub_1002CB4A4();
    }

    goto LABEL_25;
  }

  if (qword_1003D4148 != -1)
  {
    sub_1002CB360();
  }

  if (os_log_type_enabled(qword_1003D4100, OS_LOG_TYPE_ERROR))
  {
    sub_1002CB4D8();
  }

LABEL_26:
}

- (id)_currentTime
{
  [(SecureClock *)self _timeIntervalSinceLastServerResponse];
  lastServerDate = self->_lastServerDate;

  return [(NSDate *)lastServerDate dateByAddingTimeInterval:?];
}

- (id)_currentTimeSynchronized
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003B124;
  v10 = sub_10003B134;
  v11 = 0;
  lock = self->_lock;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003B13C;
  v5[3] = &unk_10037F7D0;
  v5[4] = self;
  v5[5] = &v6;
  sub_10004D3C0(lock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (double)_timeIntervalSinceLastServerResponse
{
  v3 = +[NSProcessInfo processInfo];
  [v3 systemUptime];
  v5 = v4 - self->_uptimeAtLastServerResponse;

  return v5;
}

- (void)_logState
{
  if (os_variant_has_internal_content())
  {
    if (qword_1003D4148 != -1)
    {
      sub_1002CB164();
    }

    v3 = qword_1003D4100;
    if (os_log_type_enabled(qword_1003D4100, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = [(SecureClock *)self _currentTime];
      v6 = +[NSDate date];
      [(SecureClock *)self _timeIntervalSinceLastServerResponse];
      v8 = v7;
      v9 = +[NSProcessInfo processInfo];
      [v9 systemUptime];
      v11 = 138544130;
      v12 = v5;
      v13 = 2114;
      v14 = v6;
      v15 = 2050;
      v16 = v8;
      v17 = 2050;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[SC] Secure Clock State: SecureClock(%{public}@) SystemClock(%{public}@) SecondsSinceLastResponse(%{public}f) Uptime(%{public}f)", &v11, 0x2Au);
    }
  }
}

@end