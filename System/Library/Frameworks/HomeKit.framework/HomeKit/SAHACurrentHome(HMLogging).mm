@interface SAHACurrentHome(HMLogging)
- (id)hm_shortDescription;
@end

@implementation SAHACurrentHome(HMLogging)

- (id)hm_shortDescription
{
  v2 = MEMORY[0x1E696AEC0];
  currentHomeName = [self currentHomeName];
  currentHomeIdentifier = [self currentHomeIdentifier];
  v5 = [v2 stringWithFormat:@"Siri Current home name: %@, identifier: %@", currentHomeName, currentHomeIdentifier];

  return v5;
}

@end