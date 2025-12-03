@interface _LABKLog
+ (OS_os_log)log;
+ (void)logClass:(Class)class selector:(SEL)selector message:(id)message;
@end

@implementation _LABKLog

+ (OS_os_log)log
{
  if (log_onceToken_0 != -1)
  {
    +[_LABKLog log];
  }

  v3 = log_log_0;

  return v3;
}

+ (void)logClass:(Class)class selector:(SEL)selector message:(id)message
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E696AEC0];
  messageCopy = message;
  v10 = [[v8 alloc] initWithFormat:messageCopy arguments:&v22];

  v11 = [self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = NSStringFromClass(class);
    v13 = NSStringFromSelector(selector);
    *buf = 138412802;
    v16 = v12;
    v17 = 2112;
    v18 = v13;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_1A784E000, v11, OS_LOG_TYPE_INFO, "%@:%@: %@", buf, 0x20u);
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end