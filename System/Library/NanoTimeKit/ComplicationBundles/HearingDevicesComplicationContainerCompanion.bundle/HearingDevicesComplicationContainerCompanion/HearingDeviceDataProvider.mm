@interface HearingDeviceDataProvider
- (AXHearingAidMode)selectedMode;
- (BOOL)supportProperty:(unint64_t)property;
- (HearingDeviceDataProvider)init;
- (NSArray)modes;
- (NSString)deviceName;
- (NSString)displayName;
- (NSString)shortDeviceName;
- (NSString)shortDeviceNameColon;
- (double)batteryLevel;
- (double)micLevel;
- (double)volumeLevel;
- (int64_t)micSteps;
- (int64_t)volumeSteps;
- (void)setHearingDevice:(id)device;
- (void)setMicLevel:(double)level;
- (void)setSelectedMode:(id)mode;
- (void)setVolumeLevel:(double)level;
@end

@implementation HearingDeviceDataProvider

- (HearingDeviceDataProvider)init
{
  v9.receiver = self;
  v9.super_class = HearingDeviceDataProvider;
  v2 = [(HearingDeviceDataProvider *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSNumberFormatter);
    numberFormatter = v2->_numberFormatter;
    v2->_numberFormatter = v3;

    [(NSNumberFormatter *)v2->_numberFormatter setNumberStyle:3];
    [(NSNumberFormatter *)v2->_numberFormatter setMaximumFractionDigits:0];
    v5 = v2->_numberFormatter;
    v6 = [NSNumber numberWithInt:0];
    v7 = [(NSNumberFormatter *)v5 stringFromNumber:v6];
    [(NSNumberFormatter *)v5 setNotANumberSymbol:v7];
  }

  return v2;
}

- (void)setHearingDevice:(id)device
{
  objc_storeStrong(&self->_hearingDevice, device);
  deviceCopy = device;
  availableEars = [deviceCopy availableEars];

  [(HearingDeviceDataProvider *)self setHearingEar:availableEars];
}

- (NSString)displayName
{
  deviceName = [(HearingDeviceDataProvider *)self deviceName];
  shortDeviceName = [(HearingDeviceDataProvider *)self shortDeviceName];
  numberFormatter = self->_numberFormatter;
  [(HearingDeviceDataProvider *)self batteryLevel];
  v6 = [NSNumber numberWithDouble:?];
  v7 = [(NSNumberFormatter *)numberFormatter stringFromNumber:v6];
  v8 = [NSString stringWithFormat:@"%@\n%@\n%@ battery", deviceName, shortDeviceName, v7];

  return v8;
}

- (NSString)deviceName
{
  hearingEar = [(HearingDeviceDataProvider *)self hearingEar];
  if (hearingEar <= 6 && ((1 << hearingEar) & 0x55) != 0)
  {
    hearingDevice = [(HearingDeviceDataProvider *)self hearingDevice];
    name = [hearingDevice name];
  }

  return name;
}

- (NSString)shortDeviceName
{
  hearingEar = [(HearingDeviceDataProvider *)self hearingEar];
  if (hearingEar == 2 || hearingEar == 6 || hearingEar == 4)
  {
    v3 = hearingLocString();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)shortDeviceNameColon
{
  hearingEar = [(HearingDeviceDataProvider *)self hearingEar];
  if (hearingEar == 2 || hearingEar == 6 || hearingEar == 4)
  {
    v3 = hearingLocString();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (double)batteryLevel
{
  hearingEar = [(HearingDeviceDataProvider *)self hearingEar];
  if (hearingEar == 4)
  {
    hearingDevice = [(HearingDeviceDataProvider *)self hearingDevice];
    [hearingDevice rightBatteryLevel];
    goto LABEL_5;
  }

  v4 = 0.0;
  if (hearingEar == 2)
  {
    hearingDevice = [(HearingDeviceDataProvider *)self hearingDevice];
    [hearingDevice leftBatteryLevel];
LABEL_5:
    v4 = v6;
  }

  return v4;
}

- (double)volumeLevel
{
  hearingEar = [(HearingDeviceDataProvider *)self hearingEar];
  if (hearingEar == 4)
  {
    hearingDevice = [(HearingDeviceDataProvider *)self hearingDevice];
    [hearingDevice rightMixedVolume];
    goto LABEL_5;
  }

  v4 = 0.0;
  if (hearingEar == 2)
  {
    hearingDevice = [(HearingDeviceDataProvider *)self hearingDevice];
    [hearingDevice leftMixedVolume];
LABEL_5:
    v4 = v6;
  }

  return v4;
}

- (void)setVolumeLevel:(double)level
{
  hearingEar = [(HearingDeviceDataProvider *)self hearingEar];
  if (hearingEar == 4)
  {
    hearingDevice = [(HearingDeviceDataProvider *)self hearingDevice];
    [hearingDevice setRightMixedVolume:level];
  }

  else
  {
    if (hearingEar != 2)
    {
      return;
    }

    hearingDevice = [(HearingDeviceDataProvider *)self hearingDevice];
    [hearingDevice setLeftMixedVolume:level];
  }
}

- (double)micLevel
{
  hearingEar = [(HearingDeviceDataProvider *)self hearingEar];
  v4 = 0.0;
  switch(hearingEar)
  {
    case 6u:
      hearingDevice = [(HearingDeviceDataProvider *)self hearingDevice];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        hearingDevice2 = [(HearingDeviceDataProvider *)self hearingDevice];
        [hearingDevice2 combinedVolumeForProperty:64];
        goto LABEL_8;
      }

      break;
    case 4u:
      hearingDevice2 = [(HearingDeviceDataProvider *)self hearingDevice];
      [hearingDevice2 rightMicrophoneVolume];
      goto LABEL_8;
    case 2u:
      hearingDevice2 = [(HearingDeviceDataProvider *)self hearingDevice];
      [hearingDevice2 leftMicrophoneVolume];
LABEL_8:
      v4 = v6;

      break;
  }

  return v4;
}

- (void)setMicLevel:(double)level
{
  hearingEar = [(HearingDeviceDataProvider *)self hearingEar];
  if (hearingEar == 4)
  {
    hearingDevice = [(HearingDeviceDataProvider *)self hearingDevice];
    [hearingDevice setRightMicrophoneVolume:level];
  }

  else
  {
    if (hearingEar != 2)
    {
      return;
    }

    hearingDevice = [(HearingDeviceDataProvider *)self hearingDevice];
    [hearingDevice setLeftMicrophoneVolume:level];
  }
}

- (NSArray)modes
{
  hearingEar = [(HearingDeviceDataProvider *)self hearingEar];
  switch(hearingEar)
  {
    case 6u:
      goto LABEL_4;
    case 4u:
      hearingDevice = [(HearingDeviceDataProvider *)self hearingDevice];
      rightPrograms = [hearingDevice rightPrograms];
      goto LABEL_6;
    case 2u:
LABEL_4:
      hearingDevice = [(HearingDeviceDataProvider *)self hearingDevice];
      rightPrograms = [hearingDevice leftPrograms];
LABEL_6:
      v6 = rightPrograms;

      goto LABEL_8;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (AXHearingAidMode)selectedMode
{
  hearingEar = [(HearingDeviceDataProvider *)self hearingEar];
  switch(hearingEar)
  {
    case 6u:
      goto LABEL_4;
    case 4u:
      hearingDevice = [(HearingDeviceDataProvider *)self hearingDevice];
      rightSelectedProgram = [hearingDevice rightSelectedProgram];
      goto LABEL_6;
    case 2u:
LABEL_4:
      hearingDevice = [(HearingDeviceDataProvider *)self hearingDevice];
      rightSelectedProgram = [hearingDevice leftSelectedProgram];
LABEL_6:
      v6 = rightSelectedProgram;

      goto LABEL_8;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (void)setSelectedMode:(id)mode
{
  modeCopy = mode;
  hearingDevice = [(HearingDeviceDataProvider *)self hearingDevice];
  [hearingDevice selectProgram:modeCopy forEar:{-[HearingDeviceDataProvider hearingEar](self, "hearingEar")}];
}

- (int64_t)volumeSteps
{
  hearingEar = [(HearingDeviceDataProvider *)self hearingEar];
  if (hearingEar == 4)
  {
    hearingDevice = [(HearingDeviceDataProvider *)self hearingDevice];
    rightMixedVolumeSteps = [hearingDevice rightMixedVolumeSteps];
  }

  else
  {
    if (hearingEar != 2)
    {
      return 0;
    }

    hearingDevice = [(HearingDeviceDataProvider *)self hearingDevice];
    rightMixedVolumeSteps = [hearingDevice leftMixedVolumeSteps];
  }

  v6 = rightMixedVolumeSteps;

  return v6;
}

- (int64_t)micSteps
{
  hearingEar = [(HearingDeviceDataProvider *)self hearingEar];
  if (hearingEar == 4)
  {
    hearingDevice = [(HearingDeviceDataProvider *)self hearingDevice];
    rightMicrophoneVolumeSteps = [hearingDevice rightMicrophoneVolumeSteps];
  }

  else
  {
    if (hearingEar != 2)
    {
      return 0;
    }

    hearingDevice = [(HearingDeviceDataProvider *)self hearingDevice];
    rightMicrophoneVolumeSteps = [hearingDevice leftMicrophoneVolumeSteps];
  }

  v6 = rightMicrophoneVolumeSteps;

  return v6;
}

- (BOOL)supportProperty:(unint64_t)property
{
  hearingDevice = [(HearingDeviceDataProvider *)self hearingDevice];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  hearingDevice2 = [(HearingDeviceDataProvider *)self hearingDevice];
  v8 = [hearingDevice2 propertyIsAvailable:property forEar:{-[HearingDeviceDataProvider hearingEar](self, "hearingEar")}];

  return v8;
}

@end