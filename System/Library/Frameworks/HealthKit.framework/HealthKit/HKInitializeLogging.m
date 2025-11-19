@interface HKInitializeLogging
@end

@implementation HKInitializeLogging

os_log_t ___HKInitializeLogging_block_invoke()
{
  HKLogDefault = os_log_create("com.apple.HealthKit", "default");
  HKLogActivity = os_log_create("com.apple.HealthKit", "activity");
  HKLogActivityCache = os_log_create("com.apple.HealthKit", "activitycache");
  HKLogAttachment = os_log_create("com.apple.HealthKit", "attachment");
  HKLogBackgroundUpdates = os_log_create("com.apple.HealthKit", "background");
  HKLogCoaching = os_log_create("com.apple.HealthKit", "coaching");
  HKLogDatabase = os_log_create("com.apple.HealthKit", "database");
  HKLogDatabaseSQL = os_log_create("com.apple.HealthKit", "database_sql");
  HKLogDataCollection = os_log_create("com.apple.HealthKit", "data_collection");
  HKLogDeepBreathing = os_log_create("com.apple.HealthKit", "deep_breathing");
  HKLogDemoData = os_log_create("com.apple.HealthKit", "demodata");
  HKLogHealthRecords = os_log_create("com.apple.HealthKit", "health_records");
  HKLogHearing = os_log_create("com.apple.HealthKit", "hearing");
  HKLogHeartRate = os_log_create("com.apple.HealthKit", "heart_rate");
  HKLogHeartRhythm = os_log_create("com.apple.HealthKit", "cinnamon");
  HKLogMedicalID = os_log_create("com.apple.HealthKit", "medical_id");
  HKLogMenstrualCycles = os_log_create("com.apple.HealthKit", "menstrual_cycles");
  HKLogMentalHealth = os_log_create("com.apple.HealthKit", "mental_health");
  HKLogMobileAsset = os_log_create("com.apple.HealthKit", "mobile_asset");
  HKLogMobility = os_log_create("com.apple.HealthKit", "mobility");
  HKLogNotifications = os_log_create("com.apple.HealthKit", "notifications");
  HKLogQuery = os_log_create("com.apple.HealthKit", "query");
  HKLogRespiratory = os_log_create("com.apple.HealthKit", "respiratory");
  HKLogServices = os_log_create("com.apple.HealthKit", "services");
  HKLogSleep = os_log_create("com.apple.HealthKit", "sleep");
  HKLogSync = os_log_create("com.apple.HealthKit", "sync");
  result = os_log_create("com.apple.HealthKit", "workouts");
  HKLogWorkouts = result;
  return result;
}

@end