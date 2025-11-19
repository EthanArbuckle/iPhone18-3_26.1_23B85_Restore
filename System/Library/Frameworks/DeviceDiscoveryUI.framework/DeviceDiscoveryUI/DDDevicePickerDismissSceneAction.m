@interface DDDevicePickerDismissSceneAction
+ (id)actionWithResult:(int64_t)a3;
- (int64_t)dismissSceneActionContext;
@end

@implementation DDDevicePickerDismissSceneAction

+ (id)actionWithResult:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CF0C80]);
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v5 setObject:v6 forSetting:1];

  v7 = [[a1 alloc] initWithInfo:v5 responder:0];

  return v7;
}

- (int64_t)dismissSceneActionContext
{
  v2 = [(DDDevicePickerDismissSceneAction *)self info];
  v3 = [v2 objectForSetting:1];
  v4 = [v3 integerValue];

  return v4;
}

@end