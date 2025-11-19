@interface ADLog
@end

@implementation ADLog

void ___ADLog_block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [_ADLog_logHandles objectForKey:*(a1 + 32)];
  if (!v2)
  {
    v2 = os_log_create("com.apple.iad", [*(a1 + 32) UTF8String]);
    [_ADLog_logHandles setObject:v2 forKey:*(a1 + 32)];
  }

  v3 = *(a1 + 48);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(a1 + 40);
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_23E6D4000, v2, v3, "%{public}@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t ___ADLog_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:1282 capacity:8];
  v1 = _ADLog_logHandles;
  _ADLog_logHandles = v0;

  result = MGGetBoolAnswer();
  _ADLog_internalBuild = result;
  return result;
}

@end