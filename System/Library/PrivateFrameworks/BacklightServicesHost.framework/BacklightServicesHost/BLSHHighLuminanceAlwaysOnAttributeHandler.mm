@interface BLSHHighLuminanceAlwaysOnAttributeHandler
+ (id)attributeClasses;
- (void)activateForSceneEnvironment:(id)environment;
- (void)deactivateForSceneEnvironment:(id)environment;
@end

@implementation BLSHHighLuminanceAlwaysOnAttributeHandler

+ (id)attributeClasses
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)activateForSceneEnvironment:(id)environment
{
  environmentCopy = environment;
  v3 = environmentCopy;
  BSDispatchMain();
}

uint64_t __73__BLSHHighLuminanceAlwaysOnAttributeHandler_activateForSceneEnvironment___block_invoke(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    __73__BLSHHighLuminanceAlwaysOnAttributeHandler_activateForSceneEnvironment___block_invoke_cold_1(v3, a1);
  }

  v4 = *v3;

  return [v4 setHighLuminanceAlwaysOn:1];
}

- (void)deactivateForSceneEnvironment:(id)environment
{
  environmentCopy = environment;
  v3 = environmentCopy;
  BSDispatchMain();
}

void __73__BLSHHighLuminanceAlwaysOnAttributeHandler_activateForSceneEnvironment___block_invoke_cold_1(id *a1, uint64_t a2)
{
  v4 = MEMORY[0x277CCACA8];
  v5 = *a1;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [*a1 debugDescription];
  v9 = [v4 stringWithFormat:@"class %@ must respond to selector setHighLuminanceAlwaysOn: in order to acquire assertion with BLSHighLuminanceAlwaysOnAttribute : %@", v7, v8];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v10 = NSStringFromSelector(*(a2 + 48));
    v11 = *(a2 + 40);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = *(a2 + 40);
    *buf = 138544642;
    v16 = v10;
    v17 = 2114;
    v18 = v13;
    v19 = 2048;
    v20 = v14;
    v21 = 2114;
    v22 = @"BLSHHighLuminanceAlwaysOnAttributeHandler.m";
    v23 = 1024;
    v24 = 31;
    v25 = 2114;
    v26 = v9;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v9 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end