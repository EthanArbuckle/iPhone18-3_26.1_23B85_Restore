@interface APKInspectorLogger
+ (id)inspectorLogger;
+ (void)log:(id)a3;
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

+ (void)log:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_opt_class() inspectorLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_23E879000, v4, OS_LOG_TYPE_INFO, "%@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end