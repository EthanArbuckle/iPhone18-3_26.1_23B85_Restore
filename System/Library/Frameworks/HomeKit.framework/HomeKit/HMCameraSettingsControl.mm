@interface HMCameraSettingsControl
- (HMCameraSettingsControl)initWithSettingsControl:(id)control;
- (HMCharacteristic)currentHorizontalTilt;
- (HMCharacteristic)currentVerticalTilt;
- (HMCharacteristic)digitalZoom;
- (HMCharacteristic)imageMirroring;
- (HMCharacteristic)imageRotation;
- (HMCharacteristic)nightVision;
- (HMCharacteristic)opticalZoom;
- (HMCharacteristic)targetHorizontalTilt;
- (HMCharacteristic)targetVerticalTilt;
@end

@implementation HMCameraSettingsControl

- (HMCharacteristic)imageMirroring
{
  settingsControl = [(HMCameraSettingsControl *)self settingsControl];
  imageMirroring = [settingsControl imageMirroring];

  return imageMirroring;
}

- (HMCharacteristic)imageRotation
{
  settingsControl = [(HMCameraSettingsControl *)self settingsControl];
  imageRotation = [settingsControl imageRotation];

  return imageRotation;
}

- (HMCharacteristic)digitalZoom
{
  settingsControl = [(HMCameraSettingsControl *)self settingsControl];
  digitalZoom = [settingsControl digitalZoom];

  return digitalZoom;
}

- (HMCharacteristic)opticalZoom
{
  settingsControl = [(HMCameraSettingsControl *)self settingsControl];
  opticalZoom = [settingsControl opticalZoom];

  return opticalZoom;
}

- (HMCharacteristic)targetVerticalTilt
{
  settingsControl = [(HMCameraSettingsControl *)self settingsControl];
  targetVerticalTilt = [settingsControl targetVerticalTilt];

  return targetVerticalTilt;
}

- (HMCharacteristic)currentVerticalTilt
{
  settingsControl = [(HMCameraSettingsControl *)self settingsControl];
  currentVerticalTilt = [settingsControl currentVerticalTilt];

  return currentVerticalTilt;
}

- (HMCharacteristic)targetHorizontalTilt
{
  settingsControl = [(HMCameraSettingsControl *)self settingsControl];
  targetHorizontalTilt = [settingsControl targetHorizontalTilt];

  return targetHorizontalTilt;
}

- (HMCharacteristic)currentHorizontalTilt
{
  settingsControl = [(HMCameraSettingsControl *)self settingsControl];
  currentHorizontalTilt = [settingsControl currentHorizontalTilt];

  return currentHorizontalTilt;
}

- (HMCharacteristic)nightVision
{
  settingsControl = [(HMCameraSettingsControl *)self settingsControl];
  nightVision = [settingsControl nightVision];

  return nightVision;
}

- (HMCameraSettingsControl)initWithSettingsControl:(id)control
{
  controlCopy = control;
  if (controlCopy)
  {
    v10.receiver = self;
    v10.super_class = HMCameraSettingsControl;
    v6 = [(HMCameraControl *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_settingsControl, control);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end