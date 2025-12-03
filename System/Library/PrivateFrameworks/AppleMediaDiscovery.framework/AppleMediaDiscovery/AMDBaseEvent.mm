@interface AMDBaseEvent
+ (BOOL)validateInput:(id)input;
@end

@implementation AMDBaseEvent

+ (BOOL)validateInput:(id)input
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, input);
  v8 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v7 = 16;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    log = v8;
    type = v7;
    __os_log_helper_16_0_0(v6);
    _os_log_error_impl(&dword_240CB9000, log, type, "Method 'validateInput' not implemented in AMDBaseEvent", v6, 2u);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return 0;
}

@end