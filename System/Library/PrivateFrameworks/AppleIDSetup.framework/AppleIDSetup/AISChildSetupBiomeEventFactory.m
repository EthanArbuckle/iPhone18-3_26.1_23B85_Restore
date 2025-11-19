@interface AISChildSetupBiomeEventFactory
+ (id)biomeEventWithIsNewChildAccount:(id)a3 startDate:(id)a4 endDate:(id)a5 completedSetup:(id)a6 lastViewedScreen:(int64_t)a7 appUsage:(id)a8 askToBuy:(id)a9 commSafety:(id)a10 screenDistance:(id)a11 age:(id)a12 flowType:(int64_t)a13;
+ (id)log;
@end

@implementation AISChildSetupBiomeEventFactory

+ (id)log
{
  if (log_onceToken[0] != -1)
  {
    +[AISChildSetupBiomeEventFactory log];
  }

  v3 = log_log;

  return v3;
}

uint64_t __37__AISChildSetupBiomeEventFactory_log__block_invoke()
{
  log_log = os_log_create("com.apple.appleidsetup", "biome");

  return MEMORY[0x2821F96F8]();
}

+ (id)biomeEventWithIsNewChildAccount:(id)a3 startDate:(id)a4 endDate:(id)a5 completedSetup:(id)a6 lastViewedScreen:(int64_t)a7 appUsage:(id)a8 askToBuy:(id)a9 commSafety:(id)a10 screenDistance:(id)a11 age:(id)a12 flowType:(int64_t)a13
{
  v30 = a12;
  v18 = a11;
  v19 = a10;
  v20 = a9;
  v21 = a8;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  v26 = +[AISChildSetupBiomeEventFactory log];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [AISChildSetupBiomeEventFactory biomeEventWithIsNewChildAccount:v26 startDate:? endDate:? completedSetup:? lastViewedScreen:? appUsage:? askToBuy:? commSafety:? screenDistance:? age:? flowType:?];
  }

  LODWORD(v29) = a13;
  v27 = [objc_alloc(MEMORY[0x277CF1018]) initWithIsNewChildAccount:v25 startDate:v24 endDate:v23 completedSetup:v22 lastViewedScreen:a7 appUsage:v21 askToBuy:v20 commSafety:v19 screenDistance:v18 age:v30 flowType:v29];

  return v27;
}

@end