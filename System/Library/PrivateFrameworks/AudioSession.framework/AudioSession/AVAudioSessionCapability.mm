@interface AVAudioSessionCapability
- (AVAudioSessionCapability)initWithIsSupported:(BOOL)supported isEnabled:(BOOL)enabled;
@end

@implementation AVAudioSessionCapability

- (AVAudioSessionCapability)initWithIsSupported:(BOOL)supported isEnabled:(BOOL)enabled
{
  v7.receiver = self;
  v7.super_class = AVAudioSessionCapability;
  result = [(AVAudioSessionCapability *)&v7 init];
  if (result)
  {
    result->_supported = supported;
    result->_enabled = enabled;
  }

  return result;
}

@end