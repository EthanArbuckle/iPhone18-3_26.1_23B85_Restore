@interface ATXNudgeRegistrar
+ (void)registerForNearbyAppNudgeWithBlock:(id)a3;
@end

@implementation ATXNudgeRegistrar

+ (void)registerForNearbyAppNudgeWithBlock:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D77BA8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__ATXNudgeRegistrar_registerForNearbyAppNudgeWithBlock___block_invoke;
  v7[3] = &unk_27859ACB8;
  v8 = v3;
  v5 = v3;
  v6 = [v4 registerForSuggestedActionNudgeOfType:5 withOptions:0 block:v7];
}

@end