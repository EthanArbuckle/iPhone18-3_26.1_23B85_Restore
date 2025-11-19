void sub_100000E20(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v6 = @"pid";
    v2 = [NSNumber numberWithInt:getpid()];
    v7 = v2;
    v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    [v1 pidNotification:v3];

    v4 = +[NSRunLoop currentRunLoop];
    v5 = [NSDate dateWithTimeIntervalSinceNow:0.25];
    [v4 runUntilDate:v5];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100003B8C();
  }
}

void sub_100000F4C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    [v3 pauseResumeResponse:v4];
    v5 = +[NSRunLoop currentRunLoop];
    v6 = [NSDate dateWithTimeIntervalSinceNow:0.25];
    [v5 runUntilDate:v6];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100003BD4();
  }
}

void sub_1000011F8(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x1000011D4);
}

void sub_100001204(uint64_t a1)
{
  v1 = [*(a1 + 32) helperToolConnection];
  [v1 setInvalidationHandler:0];
}

void sub_10000124C(id a1, NSError *a2)
{
  v2 = a2;
  v4 = [(NSError *)v2 domain];
  v3 = [(NSError *)v2 code];

  NSLog(@"connect failed: %@ / %d", v4, v3);
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  objc_autoreleasePoolPop(v4);
  return v7;
}

void sub_100001F9C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "send result to server", v7, 2u);
  }

  [v3 termsAndConditionsResponse:v4];
  v5 = +[NSRunLoop currentRunLoop];
  v6 = [NSDate dateWithTimeIntervalSinceNow:0.25];
  [v5 runUntilDate:v6];
}

void sub_1000022E0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x100002298);
  }

  _Unwind_Resume(a1);
}

void sub_1000022F4(id a1)
{
  v3 = +[UIDevice currentDevice];
  v1 = [v3 model];
  v2 = [v1 rangeOfString:@"iPad"];

  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    byte_10000D2F0 = 1;
  }
}

void sub_100002378(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "xpc connection invalidated", v3, 2u);
  }

  v2 = [*(a1 + 32) helperToolConnection];
  [v2 setInvalidationHandler:0];
}

void sub_1000023FC(id a1, NSError *a2)
{
  v2 = a2;
  v4 = [(NSError *)v2 domain];
  v3 = [(NSError *)v2 code];

  NSLog(@"connect failed: %@ / %d", v4, v3);
}

void sub_100002920(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v1 = [*(a1 + 32) toolbar];
  v2 = [v1 items];

  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v7 title];
        v9 = [v8 length];

        if (v9)
        {
          v10 = [v7 title];
          v11 = +[NSBundle mainBundle];
          v12 = [v11 localizedStringForKey:@"3Linefeed" value:&stru_1000083F8 table:0];
          v13 = [v10 stringByAppendingString:v12];
          [v7 setTitle:v13];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

void sub_10000380C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = @"isAppleSupportRequest";
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 isAppleSupportRequest] ^ 1);
  v6[1] = @"isPaused";
  v7[0] = v3;
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) isPaused] ^ 1);
  v7[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
  [v2 setUserInfo:v5];
}