@interface AISChildSetupBiomeEventFactory
+ (id)biomeEventWithIsNewChildAccount:(id)account startDate:(id)date endDate:(id)endDate completedSetup:(id)setup lastViewedScreen:(int64_t)screen appUsage:(id)usage askToBuy:(id)buy commSafety:(id)self0 screenDistance:(id)self1 age:(id)self2 flowType:(int64_t)self3;
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

+ (id)biomeEventWithIsNewChildAccount:(id)account startDate:(id)date endDate:(id)endDate completedSetup:(id)setup lastViewedScreen:(int64_t)screen appUsage:(id)usage askToBuy:(id)buy commSafety:(id)self0 screenDistance:(id)self1 age:(id)self2 flowType:(int64_t)self3
{
  ageCopy = age;
  distanceCopy = distance;
  safetyCopy = safety;
  buyCopy = buy;
  usageCopy = usage;
  setupCopy = setup;
  endDateCopy = endDate;
  dateCopy = date;
  accountCopy = account;
  v26 = +[AISChildSetupBiomeEventFactory log];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [AISChildSetupBiomeEventFactory biomeEventWithIsNewChildAccount:v26 startDate:? endDate:? completedSetup:? lastViewedScreen:? appUsage:? askToBuy:? commSafety:? screenDistance:? age:? flowType:?];
  }

  LODWORD(v29) = type;
  v27 = [objc_alloc(MEMORY[0x277CF1018]) initWithIsNewChildAccount:accountCopy startDate:dateCopy endDate:endDateCopy completedSetup:setupCopy lastViewedScreen:screen appUsage:usageCopy askToBuy:buyCopy commSafety:safetyCopy screenDistance:distanceCopy age:ageCopy flowType:v29];

  return v27;
}

@end