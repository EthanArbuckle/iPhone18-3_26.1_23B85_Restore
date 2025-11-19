@interface HMCameraSettingsControl
- (HMCameraSettingsControl)initWithSettingsControl:(id)a3;
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
  v2 = [(HMCameraSettingsControl *)self settingsControl];
  v3 = [v2 imageMirroring];

  return v3;
}

- (HMCharacteristic)imageRotation
{
  v2 = [(HMCameraSettingsControl *)self settingsControl];
  v3 = [v2 imageRotation];

  return v3;
}

- (HMCharacteristic)digitalZoom
{
  v2 = [(HMCameraSettingsControl *)self settingsControl];
  v3 = [v2 digitalZoom];

  return v3;
}

- (HMCharacteristic)opticalZoom
{
  v2 = [(HMCameraSettingsControl *)self settingsControl];
  v3 = [v2 opticalZoom];

  return v3;
}

- (HMCharacteristic)targetVerticalTilt
{
  v2 = [(HMCameraSettingsControl *)self settingsControl];
  v3 = [v2 targetVerticalTilt];

  return v3;
}

- (HMCharacteristic)currentVerticalTilt
{
  v2 = [(HMCameraSettingsControl *)self settingsControl];
  v3 = [v2 currentVerticalTilt];

  return v3;
}

- (HMCharacteristic)targetHorizontalTilt
{
  v2 = [(HMCameraSettingsControl *)self settingsControl];
  v3 = [v2 targetHorizontalTilt];

  return v3;
}

- (HMCharacteristic)currentHorizontalTilt
{
  v2 = [(HMCameraSettingsControl *)self settingsControl];
  v3 = [v2 currentHorizontalTilt];

  return v3;
}

- (HMCharacteristic)nightVision
{
  v2 = [(HMCameraSettingsControl *)self settingsControl];
  v3 = [v2 nightVision];

  return v3;
}

- (HMCameraSettingsControl)initWithSettingsControl:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = HMCameraSettingsControl;
    v6 = [(HMCameraControl *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_settingsControl, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end