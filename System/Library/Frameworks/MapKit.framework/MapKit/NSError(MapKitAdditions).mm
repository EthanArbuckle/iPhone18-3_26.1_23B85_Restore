@interface NSError(MapKitAdditions)
- (id)_mapkit_locationErrorSettingsURL;
- (uint64_t)_mapkit_isCLDenied;
- (uint64_t)_mapkit_isCLErrorNetwork;
- (uint64_t)_mapkit_isCLHeadingFailure;
- (uint64_t)_mapkit_isCLLocationUnknown;
@end

@implementation NSError(MapKitAdditions)

- (id)_mapkit_locationErrorSettingsURL
{
  domain = [self domain];
  v3 = [domain isEqualToString:MKLocationErrorDomain];

  if (v3 && (v4 = [self code], v4 <= 6) && ((0x5Fu >> v4) & 1) != 0)
  {
    v5 = [MEMORY[0x1E695DFF8] URLWithString:off_1E76C8BE8[v4]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)_mapkit_isCLErrorNetwork
{
  if ([self code] != 2)
  {
    return 0;
  }

  domain = [self domain];
  v3 = [domain isEqualToString:*MEMORY[0x1E695FC60]];

  return v3;
}

- (uint64_t)_mapkit_isCLHeadingFailure
{
  if ([self code] != 3)
  {
    return 0;
  }

  domain = [self domain];
  v3 = [domain isEqualToString:*MEMORY[0x1E695FC60]];

  return v3;
}

- (uint64_t)_mapkit_isCLLocationUnknown
{
  if ([self code])
  {
    return 0;
  }

  domain = [self domain];
  v4 = [domain isEqualToString:*MEMORY[0x1E695FC60]];

  return v4;
}

- (uint64_t)_mapkit_isCLDenied
{
  if ([self code] != 1)
  {
    return 0;
  }

  domain = [self domain];
  v3 = [domain isEqualToString:*MEMORY[0x1E695FC60]];

  return v3;
}

@end