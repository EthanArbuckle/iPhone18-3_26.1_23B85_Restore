@interface AVPlayerSetRateOptions
- (AVPlayerSetRateOptions)init;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[AVPlayerSetRateOptions allocWithZone:?]];
  [(AVPlayerSetRateOptions *)v4 setPreferCoordinatedPlaybackBehavior:[(AVPlayerSetRateOptions *)self preferCoordinatedPlaybackBehavior]];
  [(AVPlayerSetRateOptions *)v4 setOverrideAutowaitRestriction:[(AVPlayerSetRateOptions *)self overrideAutowaitRestriction]];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  preferCoordinatedPlaybackBehavior = [(AVPlayerSetRateOptions *)self preferCoordinatedPlaybackBehavior];
  if (preferCoordinatedPlaybackBehavior != [equal preferCoordinatedPlaybackBehavior])
  {
    return 0;
  }

  overrideAutowaitRestriction = [(AVPlayerSetRateOptions *)self overrideAutowaitRestriction];
  return overrideAutowaitRestriction ^ [equal overrideAutowaitRestriction] ^ 1;
}

@end