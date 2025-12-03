@interface DDDevicePickerDismissSceneAction
+ (id)actionWithResult:(int64_t)result;
- (int64_t)dismissSceneActionContext;
@end

@implementation DDDevicePickerDismissSceneAction

+ (id)actionWithResult:(int64_t)result
{
  v5 = objc_alloc_init(MEMORY[0x277CF0C80]);
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:result];
  [v5 setObject:v6 forSetting:1];

  v7 = [[self alloc] initWithInfo:v5 responder:0];

  return v7;
}

- (int64_t)dismissSceneActionContext
{
  info = [(DDDevicePickerDismissSceneAction *)self info];
  v3 = [info objectForSetting:1];
  integerValue = [v3 integerValue];

  return integerValue;
}

@end