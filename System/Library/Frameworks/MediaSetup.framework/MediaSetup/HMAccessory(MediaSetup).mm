@interface HMAccessory(MediaSetup)
- (BOOL)isEndpoint;
- (uint64_t)isHomePod;
- (uint64_t)isPartOfHome:()MediaSetup;
@end

@implementation HMAccessory(MediaSetup)

- (uint64_t)isHomePod
{
  category = [self category];
  categoryType = [category categoryType];

  v3 = [categoryType isEqualToString:*MEMORY[0x277CCE8B0]];
  return v3;
}

- (uint64_t)isPartOfHome:()MediaSetup
{
  v4 = a3;
  home = [self home];
  uniqueIdentifier = [home uniqueIdentifier];
  uniqueIdentifier2 = [v4 uniqueIdentifier];

  v8 = [uniqueIdentifier isEqual:uniqueIdentifier2];
  return v8;
}

- (BOOL)isEndpoint
{
  siriEndpointProfile = [self siriEndpointProfile];
  v2 = siriEndpointProfile != 0;

  return v2;
}

@end