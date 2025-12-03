@interface BKHIDEventProcessorRegistry
+ (id)sharedInstance;
- (BKHIDEventProcessorRegistry)init;
- (id)eventProcessorOfClass:(Class)class;
- (void)addEventProcessor:(id)processor;
@end

@implementation BKHIDEventProcessorRegistry

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__BKHIDEventProcessorRegistry_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_shared;

  return v2;
}

- (id)eventProcessorOfClass:(Class)class
{
  v4 = NSStringFromClass(class);
  v5 = [(NSMutableDictionary *)self->_eventProcessorsByClassName objectForKeyedSubscript:v4];

  return v5;
}

- (void)addEventProcessor:(id)processor
{
  v31 = *MEMORY[0x277D85DE8];
  processorCopy = processor;
  if (!processorCopy)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"eventProcessor"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138544642;
      v20 = v11;
      v21 = 2114;
      v22 = v13;
      v23 = 2048;
      selfCopy2 = self;
      v25 = 2114;
      v26 = @"BKHIDEventProcessorRegistry.m";
      v27 = 1024;
      v28 = 36;
      v29 = 2114;
      v30 = v10;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CE55A4);
  }

  v18 = processorCopy;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [(NSMutableDictionary *)self->_eventProcessorsByClassName objectForKeyedSubscript:v7];

  if (v8)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot replace an existing event processor"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138544642;
      v20 = v15;
      v21 = 2114;
      v22 = v17;
      v23 = 2048;
      selfCopy2 = self;
      v25 = 2114;
      v26 = @"BKHIDEventProcessorRegistry.m";
      v27 = 1024;
      v28 = 39;
      v29 = 2114;
      v30 = v14;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CE5690);
  }

  [(NSMutableDictionary *)self->_eventProcessorsByClassName setObject:v18 forKeyedSubscript:v7];

  v9 = *MEMORY[0x277D85DE8];
}

- (BKHIDEventProcessorRegistry)init
{
  v6.receiver = self;
  v6.super_class = BKHIDEventProcessorRegistry;
  v2 = [(BKHIDEventProcessorRegistry *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    eventProcessorsByClassName = v2->_eventProcessorsByClassName;
    v2->_eventProcessorsByClassName = dictionary;
  }

  return v2;
}

uint64_t __45__BKHIDEventProcessorRegistry_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_shared = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

@end