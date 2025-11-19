@interface AudioTier
- (AudioTier)init;
- (AudioTier)initWithMode:(unsigned int)a3 tier:(unsigned int)a4 duplication:(unsigned int)a5 bundling:(unsigned int)a6 codecPayload:(unsigned int)a7 codecBitrate:(unsigned int)a8;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
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

- (AudioTier)initWithMode:(unsigned int)a3 tier:(unsigned int)a4 duplication:(unsigned int)a5 bundling:(unsigned int)a6 codecPayload:(unsigned int)a7 codecBitrate:(unsigned int)a8
{
  v15.receiver = self;
  v15.super_class = AudioTier;
  result = [(AudioTier *)&v15 init];
  if (result)
  {
    result->mode = a3;
    result->tier = a4;
    result->duplication = a5;
    result->bundling = a6;
    result->codecPayload = a7;
    result->codecBitrate = a8;
    result->duration = 0.0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AudioTier allocWithZone:a3];
  mode = self->mode;
  tier = self->tier;
  duplication = self->duplication;
  bundling = self->bundling;
  codecPayload = self->codecPayload;
  codecBitrate = self->codecBitrate;

  return [(AudioTier *)v4 initWithMode:mode tier:tier duplication:duplication bundling:bundling codecPayload:codecPayload codecBitrate:codecBitrate];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(AudioTier *)self mode];
  if (v5 != [a3 mode])
  {
    return 0;
  }

  v6 = [(AudioTier *)self tier];
  if (v6 != [a3 tier])
  {
    return 0;
  }

  v7 = [(AudioTier *)self duplication];
  if (v7 != [a3 duplication])
  {
    return 0;
  }

  v8 = [(AudioTier *)self bundling];
  if (v8 != [a3 bundling])
  {
    return 0;
  }

  v9 = [(AudioTier *)self codecPayload];
  if (v9 != [a3 codecPayload])
  {
    return 0;
  }

  v10 = [(AudioTier *)self codecBitrate];
  return v10 == [a3 codecBitrate];
}

@end