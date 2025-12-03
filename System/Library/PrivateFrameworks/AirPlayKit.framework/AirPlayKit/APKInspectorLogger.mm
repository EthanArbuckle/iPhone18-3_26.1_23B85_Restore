@interface APKInspectorLogger
+ (id)inspectorLogger;
+ (void)log:(id)log;
@end

@implementation APKInspectorLogger

+ (id)inspectorLogger
{
  predicate = 0;
  dispatch_once(&predicate, &__block_literal_global_0);
  v2 = inspectorLogger_logger;

  return v2;
}

uint64_t __37__APKInspectorLogger_inspectorLogger__block_invoke()
{
  inspectorLogger_logger = os_log_create([@"com.apple.AirPlayKit" cStringUsingEncoding:4], "inspector");

  return MEMORY[0x2821F96F8]();
}

+ (void)log:(id)log
{
  v8 = *MEMORY[0x277D85DE8];
  logCopy = log;
  inspectorLogger = [objc_opt_class() inspectorLogger];
  if (os_log_type_enabled(inspectorLogger, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = logCopy;
    _os_log_impl(&dword_23E879000, inspectorLogger, OS_LOG_TYPE_INFO, "%@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end