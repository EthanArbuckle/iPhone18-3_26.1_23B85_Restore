@interface NSJSONSerialization(HealthKit)
+ (__CFString)hk_stringForDisplayFromFHIRData:()HealthKit;
+ (__CFString)hk_stringForDisplayFromFHIRJSONObject:()HealthKit;
+ (id)hk_JSONObjectSecureCodingClasses;
@end

@implementation NSJSONSerialization(HealthKit)

+ (__CFString)hk_stringForDisplayFromFHIRData:()HealthKit
{
  v9 = 0;
  v4 = [a1 hk_JSONObjectFromFHIRData:a3 options:0 error:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = [a1 hk_stringForDisplayFromFHIRJSONObject:v4];
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      [(NSJSONSerialization(HealthKit) *)v5 hk_stringForDisplayFromFHIRData:v7];
    }

    v6 = &stru_1F05FF230;
  }

  return v6;
}

+ (__CFString)hk_stringForDisplayFromFHIRJSONObject:()HealthKit
{
  v9 = 0;
  v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:a3 options:1 error:&v9];
  v4 = v9;
  if (v3)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:4];
    v6 = [v5 hk_stringByUnescapingJSONCharactersForDisplay];
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      [(NSJSONSerialization(HealthKit) *)v4 hk_stringForDisplayFromFHIRJSONObject:v7];
    }

    v6 = &stru_1F05FF230;
  }

  return v6;
}

+ (id)hk_JSONObjectSecureCodingClasses
{
  if (hk_JSONObjectSecureCodingClasses_onceToken != -1)
  {
    +[NSJSONSerialization(HealthKit) hk_JSONObjectSecureCodingClasses];
  }

  v1 = hk_JSONObjectSecureCodingClasses_classes;

  return v1;
}

+ (void)hk_stringForDisplayFromFHIRData:()HealthKit .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Failed to create JSON object from FHIR data: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)hk_stringForDisplayFromFHIRJSONObject:()HealthKit .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Failed to create data for display string from FHIR object: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end