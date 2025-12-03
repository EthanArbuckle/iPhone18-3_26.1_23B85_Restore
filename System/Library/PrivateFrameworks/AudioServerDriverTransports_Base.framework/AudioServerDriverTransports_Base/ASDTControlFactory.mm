@interface ASDTControlFactory
+ (id)controlForConfig:(id)config withDevice:(id)device;
@end

@implementation ASDTControlFactory

+ (id)controlForConfig:(id)config withDevice:(id)device
{
  configCopy = config;
  deviceCopy = device;
  asdtSubclass = [configCopy asdtSubclass];
  if ([(objc_class *)asdtSubclass isSubclassOfClass:objc_opt_class()]&& ([(objc_class *)asdtSubclass conformsToProtocol:&unk_28535C9D0]& 1) != 0)
  {
    v8 = [[asdtSubclass alloc] initWithConfig:configCopy withDevice:deviceCopy];
  }

  else
  {
    v9 = ASDTBaseLogType();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ASDTControlFactory controlForConfig:asdtSubclass withDevice:v9];
    }

    v8 = 0;
  }

  return v8;
}

+ (void)controlForConfig:(uint64_t)a1 withDevice:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_241659000, a2, OS_LOG_TYPE_ERROR, "Invalid subclass of ASDControl: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end