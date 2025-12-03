@interface RAPRecordReportStatus
+ (signed)typeFromMapsSyncStatus:(signed __int16)status;
@end

@implementation RAPRecordReportStatus

+ (signed)typeFromMapsSyncStatus:(signed __int16)status
{
  if (status >= 3)
  {
    return -1;
  }

  else
  {
    return status;
  }
}

@end