@interface EKLogSubsystem
+ (OS_os_log)autocomplete;
+ (OS_os_log)availabilitySearch;
+ (OS_os_log)defaultCategory;
+ (OS_os_log)exchangeSync;
+ (OS_os_log)junk;
+ (OS_os_log)locationSearch;
+ (OS_os_log)predicateMonitor;
+ (OS_os_log)savingSignposts;
@end

@implementation EKLogSubsystem

+ (OS_os_log)predicateMonitor
{
  if (predicateMonitor_onceToken != -1)
  {
    +[EKLogSubsystem predicateMonitor];
  }

  v3 = predicateMonitor_logHandle;

  return v3;
}

uint64_t __34__EKLogSubsystem_predicateMonitor__block_invoke()
{
  predicateMonitor_logHandle = os_log_create("com.apple.calendar.ek", "EKPredicateMonitor");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)defaultCategory
{
  if (defaultCategory_onceToken != -1)
  {
    +[EKLogSubsystem defaultCategory];
  }

  v3 = defaultCategory_logHandle;

  return v3;
}

uint64_t __33__EKLogSubsystem_defaultCategory__block_invoke()
{
  defaultCategory_logHandle = os_log_create("com.apple.calendar.ek", "Default");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)autocomplete
{
  if (autocomplete_onceToken != -1)
  {
    +[EKLogSubsystem autocomplete];
  }

  v3 = autocomplete_logHandle;

  return v3;
}

uint64_t __30__EKLogSubsystem_autocomplete__block_invoke()
{
  autocomplete_logHandle = os_log_create("com.apple.calendar.ek", "Autocomplete");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)availabilitySearch
{
  if (availabilitySearch_onceToken != -1)
  {
    +[EKLogSubsystem availabilitySearch];
  }

  v3 = availabilitySearch_logHandle;

  return v3;
}

uint64_t __36__EKLogSubsystem_availabilitySearch__block_invoke()
{
  availabilitySearch_logHandle = os_log_create("com.apple.calendar.ek", "AvailabilitySearch");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)exchangeSync
{
  if (exchangeSync_onceToken != -1)
  {
    +[EKLogSubsystem exchangeSync];
  }

  v3 = exchangeSync_logHandle;

  return v3;
}

uint64_t __30__EKLogSubsystem_exchangeSync__block_invoke()
{
  exchangeSync_logHandle = os_log_create("com.apple.calendar.ek", "ExchangeSync");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)junk
{
  if (junk_onceToken != -1)
  {
    +[EKLogSubsystem junk];
  }

  v3 = junk_logHandle;

  return v3;
}

uint64_t __22__EKLogSubsystem_junk__block_invoke()
{
  junk_logHandle = os_log_create("com.apple.calendar.ek", "Junk");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)locationSearch
{
  if (locationSearch_onceToken != -1)
  {
    +[EKLogSubsystem locationSearch];
  }

  v3 = locationSearch_logHandle;

  return v3;
}

uint64_t __32__EKLogSubsystem_locationSearch__block_invoke()
{
  locationSearch_logHandle = os_log_create("com.apple.calendar.ek", "LocationSearch");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)savingSignposts
{
  if (savingSignposts_onceToken != -1)
  {
    +[EKLogSubsystem savingSignposts];
  }

  v3 = savingSignposts_logHandle;

  return v3;
}

uint64_t __33__EKLogSubsystem_savingSignposts__block_invoke()
{
  savingSignposts_logHandle = os_log_create("com.apple.calendar.ek", "SavingSignposts");

  return MEMORY[0x1EEE66BB8]();
}

@end