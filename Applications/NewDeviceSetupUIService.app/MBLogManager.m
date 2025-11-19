@interface MBLogManager
+ (id)sharedManager;
- (MBLogManager)init;
- (id)safeErrorFromError:(id)a3;
- (void)logFaultInFunction:(const char *)a3 atLine:(int)a4 withString:(id)a5;
- (void)logType:(int)a3 inFunction:(const char *)a4 atLine:(int)a5 withString:(id)a6;
@end

@implementation MBLogManager

+ (id)sharedManager
{
  v2 = qword_1000270F0;
  if (!qword_1000270F0)
  {
    v3 = objc_alloc_init(MBLogManager);
    v4 = qword_1000270F0;
    qword_1000270F0 = v3;

    v2 = qword_1000270F0;
  }

  return v2;
}

- (MBLogManager)init
{
  v6.receiver = self;
  v6.super_class = MBLogManager;
  v2 = [(MBLogManager *)&v6 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.newdevicesetup", "MacBuddyX");
    [(MBLogManager *)v2 setConnObj:v3];

    v4 = [(MBLogManager *)v2 connObj];

    if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100013830();
    }

    [(MBLogManager *)v2 setLegacyLoggingEnabled:0];
    [(MBLogManager *)v2 setIsInternalBuild:os_variant_has_internal_content()];
  }

  return v2;
}

- (void)logFaultInFunction:(const char *)a3 atLine:(int)a4 withString:(id)a5
{
  v8 = a5;
  v9 = [(MBLogManager *)self connObj];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    v10 = 136315650;
    v11 = a3;
    v12 = 1024;
    v13 = a4;
    v14 = 2082;
    v15 = [v8 UTF8String];
    _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "Log fault in function: %s, at line: %i. %{public}s", &v10, 0x1Cu);
  }
}

- (void)logType:(int)a3 inFunction:(const char *)a4 atLine:(int)a5 withString:(id)a6
{
  v8 = a6;
  if ([(MBLogManager *)self legacyLoggingEnabled])
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_7;
      }

      v9 = 115;
    }

    else
    {
      v9 = 119;
    }

    syslog(v9, "%s", [v8 UTF8String]);
  }

LABEL_7:
  v10 = [(MBLogManager *)self connObj];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v12 = [v8 UTF8String];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }
}

- (id)safeErrorFromError:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(MBLogManager *)self isInternalBuild])
    {
      v5 = [v4 description];
    }

    else
    {
      v6 = [v4 domain];
      v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v6, [v4 code]);
    }
  }

  else
  {
    v5 = @"nil";
  }

  return v5;
}

@end