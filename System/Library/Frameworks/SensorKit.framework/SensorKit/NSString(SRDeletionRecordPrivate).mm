@interface NSString(SRDeletionRecordPrivate)
- (uint64_t)sr_sensorByDeletingDeletionRecord;
@end

@implementation NSString(SRDeletionRecordPrivate)

- (uint64_t)sr_sensorByDeletingDeletionRecord
{
  if (![a1 hasSuffix:@".tombstones"])
  {
    return a1;
  }

  return [a1 stringByDeletingPathExtension];
}

@end