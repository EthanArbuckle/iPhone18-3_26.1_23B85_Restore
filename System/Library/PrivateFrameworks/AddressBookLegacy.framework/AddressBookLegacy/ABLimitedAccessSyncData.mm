@interface ABLimitedAccessSyncData
- (NSEnumerator)syncEvents;
@end

@implementation ABLimitedAccessSyncData

- (NSEnumerator)syncEvents
{
  syncEventsArray = [(ABLimitedAccessSyncData *)self syncEventsArray];
  objectEnumerator = [syncEventsArray objectEnumerator];

  return objectEnumerator;
}

@end