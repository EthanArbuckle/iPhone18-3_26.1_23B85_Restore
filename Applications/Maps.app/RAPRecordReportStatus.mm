@interface RAPRecordReportStatus
+ (signed)typeFromMapsSyncStatus:(signed __int16)a3;
@end

@implementation RAPRecordReportStatus

+ (signed)typeFromMapsSyncStatus:(signed __int16)a3
{
  if (a3 >= 3)
  {
    return -1;
  }

  else
  {
    return a3;
  }
}

@end