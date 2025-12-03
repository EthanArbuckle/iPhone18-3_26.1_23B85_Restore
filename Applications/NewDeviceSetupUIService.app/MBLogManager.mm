@interface MBLogManager
+ (id)sharedManager;
- (MBLogManager)init;
- (id)safeErrorFromError:(id)error;
- (void)logFaultInFunction:(const char *)function atLine:(int)line withString:(id)string;
- (void)logType:(int)type inFunction:(const char *)function atLine:(int)line withString:(id)string;
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

    connObj = [(MBLogManager *)v2 connObj];

    if (!connObj && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100013830();
    }

    [(MBLogManager *)v2 setLegacyLoggingEnabled:0];
    [(MBLogManager *)v2 setIsInternalBuild:os_variant_has_internal_content()];
  }

  return v2;
}

- (void)logFaultInFunction:(const char *)function atLine:(int)line withString:(id)string
{
  stringCopy = string;
  connObj = [(MBLogManager *)self connObj];
  if (os_log_type_enabled(connObj, OS_LOG_TYPE_FAULT))
  {
    v10 = 136315650;
    functionCopy = function;
    v12 = 1024;
    lineCopy = line;
    v14 = 2082;
    uTF8String = [stringCopy UTF8String];
    _os_log_fault_impl(&_mh_execute_header, connObj, OS_LOG_TYPE_FAULT, "Log fault in function: %s, at line: %i. %{public}s", &v10, 0x1Cu);
  }
}

- (void)logType:(int)type inFunction:(const char *)function atLine:(int)line withString:(id)string
{
  stringCopy = string;
  if ([(MBLogManager *)self legacyLoggingEnabled])
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_7;
      }

      v9 = 115;
    }

    else
    {
      v9 = 119;
    }

    syslog(v9, "%s", [stringCopy UTF8String]);
  }

LABEL_7:
  connObj = [(MBLogManager *)self connObj];
  if (os_log_type_enabled(connObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    uTF8String = [stringCopy UTF8String];
    _os_log_impl(&_mh_execute_header, connObj, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }
}

- (id)safeErrorFromError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    if ([(MBLogManager *)self isInternalBuild])
    {
      v5 = [errorCopy description];
    }

    else
    {
      domain = [errorCopy domain];
      v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [errorCopy code]);
    }
  }

  else
  {
    v5 = @"nil";
  }

  return v5;
}

@end