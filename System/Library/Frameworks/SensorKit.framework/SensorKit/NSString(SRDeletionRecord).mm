@interface NSString(SRDeletionRecord)
- (uint64_t)sr_sensorForDeletionRecordsFromSensor;
@end

@implementation NSString(SRDeletionRecord)

- (uint64_t)sr_sensorForDeletionRecordsFromSensor
{
  if ([self hasSuffix:@".tombstones"])
  {
    return 0;
  }

  return [self stringByAppendingString:@".tombstones"];
}

@end