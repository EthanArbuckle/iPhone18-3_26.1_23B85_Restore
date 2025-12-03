@interface NSDate(SensorKit)
+ (uint64_t)dateWithSRAbsoluteTime:()SensorKit;
- (double)srAbsoluteTime;
- (uint64_t)initWithSRAbsoluteTime:()SensorKit;
@end

@implementation NSDate(SensorKit)

+ (uint64_t)dateWithSRAbsoluteTime:()SensorKit
{
  v1 = MEMORY[0x1E695DF00];
  v2 = SRAbsoluteTimeToCFAbsoluteTime(self);

  return [v1 dateWithTimeIntervalSinceReferenceDate:v2];
}

- (uint64_t)initWithSRAbsoluteTime:()SensorKit
{
  v3 = SRAbsoluteTimeToCFAbsoluteTime(a2);

  return [self initWithTimeIntervalSinceReferenceDate:v3];
}

- (double)srAbsoluteTime
{
  [self timeIntervalSinceReferenceDate];

  return SRAbsoluteTimeFromCFAbsoluteTime(v1);
}

@end