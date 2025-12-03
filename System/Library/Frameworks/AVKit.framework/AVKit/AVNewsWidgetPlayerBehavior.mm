@interface AVNewsWidgetPlayerBehavior
- (AVNewsWidgetPlayerBehavior)init;
- (AVNewsWidgetPlayerBehaviorContext)behaviorContext;
- (void)dealloc;
@end

@implementation AVNewsWidgetPlayerBehavior

- (AVNewsWidgetPlayerBehaviorContext)behaviorContext
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorContext);

  return WeakRetained;
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v6 = "[AVNewsWidgetPlayerBehavior dealloc]";
    v7 = 1024;
    v8 = 40;
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  v4.receiver = self;
  v4.super_class = AVNewsWidgetPlayerBehavior;
  [(AVNewsWidgetPlayerBehavior *)&v4 dealloc];
}

- (AVNewsWidgetPlayerBehavior)init
{
  v12 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = AVNewsWidgetPlayerBehavior;
  v2 = [(AVNewsWidgetPlayerBehavior *)&v7 init];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 136315394;
    v9 = "[AVNewsWidgetPlayerBehavior init]";
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s subclass: %@", buf, 0x16u);
  }

  return v2;
}

@end