@interface ATXInformationFilterGuardedData
- (ATXInformationFilterGuardedData)init;
@end

@implementation ATXInformationFilterGuardedData

- (ATXInformationFilterGuardedData)init
{
  v6.receiver = self;
  v6.super_class = ATXInformationFilterGuardedData;
  v2 = [(ATXInformationFilterGuardedData *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    dismissRecordsCache = v2->dismissRecordsCache;
    v2->dismissRecordsCache = v3;
  }

  return v2;
}

@end