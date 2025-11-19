@interface ACHDataStoreSyncEntity
+ (unint64_t)supportedNanoSyncDirectionsForProtocolVersion:(int)a3;
+ (void)didReceiveValuesForKeys:(id)a3 profile:(id)a4;
@end

@implementation ACHDataStoreSyncEntity

+ (void)didReceiveValuesForKeys:(id)a3 profile:(id)a4
{
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"ACHDataStoreSyncEntityDidReceiveValuesNotification" object:a1];
}

+ (unint64_t)supportedNanoSyncDirectionsForProtocolVersion:(int)a3
{
  if (a3 >= 8)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

@end