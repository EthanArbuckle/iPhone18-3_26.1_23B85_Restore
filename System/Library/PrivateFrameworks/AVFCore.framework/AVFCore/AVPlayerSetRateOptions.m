@interface AVPlayerSetRateOptions
- (AVPlayerSetRateOptions)init;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation AVPlayerSetRateOptions

- (AVPlayerSetRateOptions)init
{
  v3.receiver = self;
  v3.super_class = AVPlayerSetRateOptions;
  result = [(AVPlayerSetRateOptions *)&v3 init];
  *&result->_preferCoordinatedPlaybackBehavior = 0;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[AVPlayerSetRateOptions allocWithZone:?]];
  [(AVPlayerSetRateOptions *)v4 setPreferCoordinatedPlaybackBehavior:[(AVPlayerSetRateOptions *)self preferCoordinatedPlaybackBehavior]];
  [(AVPlayerSetRateOptions *)v4 setOverrideAutowaitRestriction:[(AVPlayerSetRateOptions *)self overrideAutowaitRestriction]];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(AVPlayerSetRateOptions *)self preferCoordinatedPlaybackBehavior];
  if (v5 != [a3 preferCoordinatedPlaybackBehavior])
  {
    return 0;
  }

  v7 = [(AVPlayerSetRateOptions *)self overrideAutowaitRestriction];
  return v7 ^ [a3 overrideAutowaitRestriction] ^ 1;
}

@end