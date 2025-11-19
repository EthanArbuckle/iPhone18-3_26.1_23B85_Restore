@interface AVAudioSessionSpatialPreferences
- (AVAudioSessionSpatialPreferences)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVAudioSessionSpatialPreferences

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:self->prefersHeadTrackedSpatialization forKey:@"prefersHeadTrackedSpatialization"];
  [v4 encodeBool:self->prefersLossyAudioSources forKey:@"prefersLossyAudioSources"];
  [v4 encodeBool:self->alwaysSpatialize forKey:@"alwaysSpatialize"];
  [v4 encodeInteger:self->maximumSpatializableChannels forKey:@"maximumSpatializableChannels"];
  [v4 encodeObject:self->spatialAudioSources forKey:@"spatialAudioSources"];
}

- (AVAudioSessionSpatialPreferences)initWithCoder:(id)a3
{
  v4 = a3;
  self->prefersHeadTrackedSpatialization = [v4 decodeBoolForKey:@"prefersHeadTrackedSpatialization"];
  self->prefersLossyAudioSources = [v4 decodeBoolForKey:@"prefersLossyAudioSources"];
  self->alwaysSpatialize = [v4 decodeBoolForKey:@"alwaysSpatialize"];
  self->maximumSpatializableChannels = [v4 decodeIntegerForKey:@"maximumSpatializableChannels"];
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"spatialAudioSources"];
  spatialAudioSources = self->spatialAudioSources;
  self->spatialAudioSources = v5;

  return self;
}

@end