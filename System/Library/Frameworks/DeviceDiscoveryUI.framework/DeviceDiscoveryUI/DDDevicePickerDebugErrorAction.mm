@interface DDDevicePickerDebugErrorAction
+ (id)actionWithDebugError:(int64_t)error;
- (int64_t)debugErrorActionContext;
@end

@implementation DDDevicePickerDebugErrorAction

+ (id)actionWithDebugError:(int64_t)error
{
  v5 = objc_alloc_init(MEMORY[0x277CF0C80]);
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:error];
  [v5 setObject:v6 forSetting:1];

  v7 = [[self alloc] initWithInfo:v5 responder:0];

  return v7;
}

- (int64_t)debugErrorActionContext
{
  info = [(DDDevicePickerDebugErrorAction *)self info];
  v3 = [info objectForSetting:1];
  integerValue = [v3 integerValue];

  return integerValue;
}

@end