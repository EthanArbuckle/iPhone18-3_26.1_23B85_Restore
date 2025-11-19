@interface TKPowerMonitor
+ (id)defaultMonitor;
- (TKPowerMonitor)init;
- (void)init;
@end

@implementation TKPowerMonitor

- (TKPowerMonitor)init
{
  v8.receiver = self;
  v8.super_class = TKPowerMonitor;
  v2 = [(TKPowerMonitor *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_awaken = 1;
    v4 = dispatch_queue_create("com.apple.ctk.pmon", 0);
    queue = v3->_queue;
    v3->_queue = v4;

    v6 = TK_LOG_token_0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [TKPowerMonitor init];
    }
  }

  return v3;
}

+ (id)defaultMonitor
{
  if (defaultMonitor_onceToken != -1)
  {
    +[TKPowerMonitor defaultMonitor];
  }

  v3 = defaultMonitor_monitor;

  return v3;
}

uint64_t __32__TKPowerMonitor_defaultMonitor__block_invoke()
{
  defaultMonitor_monitor = objc_alloc_init(TKPowerMonitor);

  return MEMORY[0x1EEE66BB8]();
}

- (void)init
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end