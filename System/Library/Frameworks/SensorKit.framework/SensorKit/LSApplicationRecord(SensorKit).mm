@interface LSApplicationRecord(SensorKit)
+ (uint64_t)sr_applicationRecordWithIdentifier:()SensorKit error:;
@end

@implementation LSApplicationRecord(SensorKit)

+ (uint64_t)sr_applicationRecordWithIdentifier:()SensorKit error:
{
  v0 = [MEMORY[0x1E69635F8] bundleRecordWithApplicationIdentifier:? error:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

@end