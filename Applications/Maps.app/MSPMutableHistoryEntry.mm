@interface MSPMutableHistoryEntry
- (NSString)_maps_diffableDataSourceIdentifier;
- (double)timestamp;
@end

@implementation MSPMutableHistoryEntry

- (double)timestamp
{
  usageDate = [(MSPMutableHistoryEntry *)self usageDate];
  [usageDate timeIntervalSinceReferenceDate];
  v4 = v3;

  return v4;
}

- (NSString)_maps_diffableDataSourceIdentifier
{
  storageIdentifier = [(MSPMutableHistoryEntry *)self storageIdentifier];
  uUIDString = [storageIdentifier UUIDString];

  return uUIDString;
}

@end