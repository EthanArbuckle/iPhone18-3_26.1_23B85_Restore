@interface HMCameraAudioControl
- (HMCameraAudioControl)initWithAudioControl:(id)control;
- (HMCharacteristic)mute;
- (HMCharacteristic)volume;
@end

@implementation HMCameraAudioControl

- (HMCharacteristic)volume
{
  audioControl = [(HMCameraAudioControl *)self audioControl];
  volume = [audioControl volume];

  return volume;
}

- (HMCharacteristic)mute
{
  audioControl = [(HMCameraAudioControl *)self audioControl];
  mute = [audioControl mute];

  return mute;
}

- (HMCameraAudioControl)initWithAudioControl:(id)control
{
  controlCopy = control;
  v9.receiver = self;
  v9.super_class = HMCameraAudioControl;
  v6 = [(HMCameraControl *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_audioControl, control);
  }

  return v7;
}

@end