@interface HMCameraAudioControl
- (HMCameraAudioControl)initWithAudioControl:(id)a3;
- (HMCharacteristic)mute;
- (HMCharacteristic)volume;
@end

@implementation HMCameraAudioControl

- (HMCharacteristic)volume
{
  v2 = [(HMCameraAudioControl *)self audioControl];
  v3 = [v2 volume];

  return v3;
}

- (HMCharacteristic)mute
{
  v2 = [(HMCameraAudioControl *)self audioControl];
  v3 = [v2 mute];

  return v3;
}

- (HMCameraAudioControl)initWithAudioControl:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMCameraAudioControl;
  v6 = [(HMCameraControl *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_audioControl, a3);
  }

  return v7;
}

@end