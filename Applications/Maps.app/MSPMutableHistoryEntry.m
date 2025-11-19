@interface MSPMutableHistoryEntry
- (NSString)_maps_diffableDataSourceIdentifier;
- (double)timestamp;
@end

@implementation MSPMutableHistoryEntry

- (double)timestamp
{
  v2 = [(MSPMutableHistoryEntry *)self usageDate];
  [v2 timeIntervalSinceReferenceDate];
  v4 = v3;

  return v4;
}

- (NSString)_maps_diffableDataSourceIdentifier
{
  v2 = [(MSPMutableHistoryEntry *)self storageIdentifier];
  v3 = [v2 UUIDString];

  return v3;
}

@end