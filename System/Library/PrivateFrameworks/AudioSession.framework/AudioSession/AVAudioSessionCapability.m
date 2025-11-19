@interface AVAudioSessionCapability
- (AVAudioSessionCapability)initWithIsSupported:(BOOL)a3 isEnabled:(BOOL)a4;
@end

@implementation AVAudioSessionCapability

- (AVAudioSessionCapability)initWithIsSupported:(BOOL)a3 isEnabled:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = AVAudioSessionCapability;
  result = [(AVAudioSessionCapability *)&v7 init];
  if (result)
  {
    result->_supported = a3;
    result->_enabled = a4;
  }

  return result;
}

@end