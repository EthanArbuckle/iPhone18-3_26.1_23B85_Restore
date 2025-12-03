@interface AVAudioSessionSpatialPreferences
- (AVAudioSessionSpatialPreferences)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVAudioSessionSpatialPreferences

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:self->prefersHeadTrackedSpatialization forKey:@"prefersHeadTrackedSpatialization"];
  [coderCopy encodeBool:self->prefersLossyAudioSources forKey:@"prefersLossyAudioSources"];
  [coderCopy encodeBool:self->alwaysSpatialize forKey:@"alwaysSpatialize"];
  [coderCopy encodeInteger:self->maximumSpatializableChannels forKey:@"maximumSpatializableChannels"];
  [coderCopy encodeObject:self->spatialAudioSources forKey:@"spatialAudioSources"];
}

- (AVAudioSessionSpatialPreferences)initWithCoder:(id)coder
{
  coderCopy = coder;
  self->prefersHeadTrackedSpatialization = [coderCopy decodeBoolForKey:@"prefersHeadTrackedSpatialization"];
  self->prefersLossyAudioSources = [coderCopy decodeBoolForKey:@"prefersLossyAudioSources"];
  self->alwaysSpatialize = [coderCopy decodeBoolForKey:@"alwaysSpatialize"];
  self->maximumSpatializableChannels = [coderCopy decodeIntegerForKey:@"maximumSpatializableChannels"];
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"spatialAudioSources"];
  spatialAudioSources = self->spatialAudioSources;
  self->spatialAudioSources = v5;

  return self;
}

@end