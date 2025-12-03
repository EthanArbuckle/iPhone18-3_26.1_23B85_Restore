@interface ACHDataStoreSyncEntity
+ (unint64_t)supportedNanoSyncDirectionsForProtocolVersion:(int)version;
+ (void)didReceiveValuesForKeys:(id)keys profile:(id)profile;
@end

@implementation ACHDataStoreSyncEntity

+ (void)didReceiveValuesForKeys:(id)keys profile:(id)profile
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"ACHDataStoreSyncEntityDidReceiveValuesNotification" object:self];
}

+ (unint64_t)supportedNanoSyncDirectionsForProtocolVersion:(int)version
{
  if (version >= 8)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

@end