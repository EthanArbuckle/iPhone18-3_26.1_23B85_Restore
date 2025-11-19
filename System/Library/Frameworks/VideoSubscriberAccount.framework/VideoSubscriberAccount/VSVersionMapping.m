@interface VSVersionMapping
+ (id)sharedInstance;
+ (id)systemVersion;
- (VSVersionMapping)init;
@end

@implementation VSVersionMapping

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__VSVersionMapping_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance___vs_lazy_init_predicate_0 != -1)
  {
    dispatch_once(&sharedInstance___vs_lazy_init_predicate_0, block);
  }

  v2 = sharedInstance___vs_lazy_init_variable_0;

  return v2;
}

uint64_t __34__VSVersionMapping_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance___vs_lazy_init_variable_0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

+ (id)systemVersion
{
  v2 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/CoreServices/SystemVersion.plist"];
  v3 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v2];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAC58] propertyListWithData:v3 options:0 format:0 error:0];
  }

  else
  {
    v5 = VSErrorLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[(VSVersionMapping *)v5];
    }

    v4 = 0;
  }

  return v4;
}

- (VSVersionMapping)init
{
  v7.receiver = self;
  v7.super_class = VSVersionMapping;
  v2 = [(VSVersionMapping *)&v7 init];
  if (v2)
  {
    v3 = [objc_opt_class() systemVersion];
    v4 = [v3 objectForKeyedSubscript:@"iOSSupportVersion"];
    iOSSupportVersion = v2->_iOSSupportVersion;
    v2->_iOSSupportVersion = v4;
  }

  return v2;
}

@end