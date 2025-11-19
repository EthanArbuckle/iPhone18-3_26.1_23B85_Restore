@interface ABLimitedAccessSyncData
- (NSEnumerator)syncEvents;
@end

@implementation ABLimitedAccessSyncData

- (NSEnumerator)syncEvents
{
  v2 = [(ABLimitedAccessSyncData *)self syncEventsArray];
  v3 = [v2 objectEnumerator];

  return v3;
}

@end