@interface AudioTier
- (AudioTier)init;
- (AudioTier)initWithMode:(unsigned int)mode tier:(unsigned int)tier duplication:(unsigned int)duplication bundling:(unsigned int)bundling codecPayload:(unsigned int)payload codecBitrate:(unsigned int)bitrate;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation AudioTier

- (AudioTier)init
{
  v3.receiver = self;
  v3.super_class = AudioTier;
  result = [(AudioTier *)&v3 init];
  if (result)
  {
    *&result->codecPayload = 0u;
    *&result->mode = 0u;
  }

  return result;
}

- (AudioTier)initWithMode:(unsigned int)mode tier:(unsigned int)tier duplication:(unsigned int)duplication bundling:(unsigned int)bundling codecPayload:(unsigned int)payload codecBitrate:(unsigned int)bitrate
{
  v15.receiver = self;
  v15.super_class = AudioTier;
  result = [(AudioTier *)&v15 init];
  if (result)
  {
    result->mode = mode;
    result->tier = tier;
    result->duplication = duplication;
    result->bundling = bundling;
    result->codecPayload = payload;
    result->codecBitrate = bitrate;
    result->duration = 0.0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AudioTier allocWithZone:zone];
  mode = self->mode;
  tier = self->tier;
  duplication = self->duplication;
  bundling = self->bundling;
  codecPayload = self->codecPayload;
  codecBitrate = self->codecBitrate;

  return [(AudioTier *)v4 initWithMode:mode tier:tier duplication:duplication bundling:bundling codecPayload:codecPayload codecBitrate:codecBitrate];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  mode = [(AudioTier *)self mode];
  if (mode != [equal mode])
  {
    return 0;
  }

  tier = [(AudioTier *)self tier];
  if (tier != [equal tier])
  {
    return 0;
  }

  duplication = [(AudioTier *)self duplication];
  if (duplication != [equal duplication])
  {
    return 0;
  }

  bundling = [(AudioTier *)self bundling];
  if (bundling != [equal bundling])
  {
    return 0;
  }

  codecPayload = [(AudioTier *)self codecPayload];
  if (codecPayload != [equal codecPayload])
  {
    return 0;
  }

  codecBitrate = [(AudioTier *)self codecBitrate];
  return codecBitrate == [equal codecBitrate];
}

@end