@interface NSUUID(SensorKitInternal)
+ (id)sr_UUIDWithUint32_t:()SensorKitInternal;
@end

@implementation NSUUID(SensorKitInternal)

+ (id)sr_UUIDWithUint32_t:()SensorKitInternal
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v6 = 0;
  v5 = a3;
  result = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v5];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

@end