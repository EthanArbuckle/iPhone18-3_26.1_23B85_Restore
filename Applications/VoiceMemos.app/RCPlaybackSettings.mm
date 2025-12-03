@interface RCPlaybackSettings
- (BOOL)hasCustomizedPlaybackSettings;
- (RCPlaybackSettings)initWithUUID:(id)d enhanced:(BOOL)enhanced silenceRemoved:(BOOL)removed playbackSpeed:(float)speed layerMix:(float)mix hasMultipleTracks:(BOOL)tracks isSpatialRecording:(BOOL)recording speechIsolatorEnabled:(BOOL)self0 speechIsolatorValue:(float)self1;
@end

@implementation RCPlaybackSettings

- (RCPlaybackSettings)initWithUUID:(id)d enhanced:(BOOL)enhanced silenceRemoved:(BOOL)removed playbackSpeed:(float)speed layerMix:(float)mix hasMultipleTracks:(BOOL)tracks isSpatialRecording:(BOOL)recording speechIsolatorEnabled:(BOOL)self0 speechIsolatorValue:(float)self1
{
  dCopy = d;
  v25.receiver = self;
  v25.super_class = RCPlaybackSettings;
  v22 = [(RCPlaybackSettings *)&v25 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_uuid, d);
    v23->_enhanced = enhanced;
    v23->_silenceRemoved = removed;
    v23->_playbackSpeed = speed;
    v23->_layerMix = mix;
    v23->_hasMultipleTracks = tracks;
    v23->_isSpatialRecording = recording;
    v23->_speechIsolatorEnabled = enabled;
    v23->_speechIsolatorValue = value;
  }

  return v23;
}

- (BOOL)hasCustomizedPlaybackSettings
{
  [(RCPlaybackSettings *)self playbackSpeed];
  if (v3 != 1.0)
  {
    return 1;
  }

  [(RCPlaybackSettings *)self layerMix];
  if (v4 != 0.0)
  {
    return 1;
  }

  if (self->_isSpatialRecording)
  {

    return [(RCPlaybackSettings *)self speechIsolatorEnabled];
  }

  else
  {
    if ([(RCPlaybackSettings *)self enhanced])
    {
      return 1;
    }

    return [(RCPlaybackSettings *)self silenceRemoved];
  }
}

@end