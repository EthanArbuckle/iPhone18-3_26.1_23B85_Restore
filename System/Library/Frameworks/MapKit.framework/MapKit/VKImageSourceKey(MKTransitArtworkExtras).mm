@interface VKImageSourceKey(MKTransitArtworkExtras)
- (id)iconDataSource;
- (id)shieldColorString;
- (id)shieldDataSource;
- (uint64_t)artworkSourceType;
@end

@implementation VKImageSourceKey(MKTransitArtworkExtras)

- (id)shieldColorString
{
  [self transitLineColor];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2X", (v7 * 255.0)];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2X", (v2 * 255.0)];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2X", (v4 * 255.0)];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2X", (v6 * 255.0)];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@%@", v8, v9, v10, v11];

  return v12;
}

- (id)iconDataSource
{
  if ([self keyType] == 2)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)shieldDataSource
{
  if ([self keyType] == 1)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (uint64_t)artworkSourceType
{
  keyType = [self keyType];
  if (keyType == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (keyType == 2);
  }
}

@end