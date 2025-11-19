@interface ATXLocationManager
@end

@implementation ATXLocationManager

void __47__ATXLocationManager_Singleton__sharedInstance__block_invoke()
{
  v8 = [MEMORY[0x277D41C00] sharedInstance];
  v0 = objc_opt_new();
  v1 = objc_alloc(MEMORY[0x277D41C10]);
  v2 = [MEMORY[0x277CEB6B8] sharedInstance];
  v3 = [v1 initWithLocationParameters:v2];

  v4 = objc_alloc(MEMORY[0x277D41BF8]);
  v5 = [MEMORY[0x277CEB6B8] sharedInstance];
  v6 = [v4 initWithGPS:v8 routine:v0 stateStore:v3 now:0 modeGlobals:v5];
  v7 = sharedInstance_instance_1;
  sharedInstance_instance_1 = v6;
}

@end