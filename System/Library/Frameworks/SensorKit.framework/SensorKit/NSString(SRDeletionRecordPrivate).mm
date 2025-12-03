@interface NSString(SRDeletionRecordPrivate)
- (uint64_t)sr_sensorByDeletingDeletionRecord;
@end

@implementation NSString(SRDeletionRecordPrivate)

- (uint64_t)sr_sensorByDeletingDeletionRecord
{
  if (![self hasSuffix:@".tombstones"])
  {
    return self;
  }

  return [self stringByDeletingPathExtension];
}

@end