@interface RCPlaybackSettings
- (BOOL)hasCustomizedPlaybackSettings;
- (RCPlaybackSettings)initWithUUID:(id)a3 enhanced:(BOOL)a4 silenceRemoved:(BOOL)a5 playbackSpeed:(float)a6 layerMix:(float)a7 hasMultipleTracks:(BOOL)a8 isSpatialRecording:(BOOL)a9 speechIsolatorEnabled:(BOOL)a10 speechIsolatorValue:(float)a11;
@end

@implementation RCPlaybackSettings

- (RCPlaybackSettings)initWithUUID:(id)a3 enhanced:(BOOL)a4 silenceRemoved:(BOOL)a5 playbackSpeed:(float)a6 layerMix:(float)a7 hasMultipleTracks:(BOOL)a8 isSpatialRecording:(BOOL)a9 speechIsolatorEnabled:(BOOL)a10 speechIsolatorValue:(float)a11
{
  v21 = a3;
  v25.receiver = self;
  v25.super_class = RCPlaybackSettings;
  v22 = [(RCPlaybackSettings *)&v25 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_uuid, a3);
    v23->_enhanced = a4;
    v23->_silenceRemoved = a5;
    v23->_playbackSpeed = a6;
    v23->_layerMix = a7;
    v23->_hasMultipleTracks = a8;
    v23->_isSpatialRecording = a9;
    v23->_speechIsolatorEnabled = a10;
    v23->_speechIsolatorValue = a11;
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