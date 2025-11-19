@interface HearingDeviceDataProvider
- (AXHearingAidMode)selectedMode;
- (BOOL)supportProperty:(unint64_t)a3;
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
- (void)setHearingDevice:(id)a3;
- (void)setMicLevel:(double)a3;
- (void)setSelectedMode:(id)a3;
- (void)setVolumeLevel:(double)a3;
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

- (void)setHearingDevice:(id)a3
{
  objc_storeStrong(&self->_hearingDevice, a3);
  v5 = a3;
  v6 = [v5 availableEars];

  [(HearingDeviceDataProvider *)self setHearingEar:v6];
}

- (NSString)displayName
{
  v3 = [(HearingDeviceDataProvider *)self deviceName];
  v4 = [(HearingDeviceDataProvider *)self shortDeviceName];
  numberFormatter = self->_numberFormatter;
  [(HearingDeviceDataProvider *)self batteryLevel];
  v6 = [NSNumber numberWithDouble:?];
  v7 = [(NSNumberFormatter *)numberFormatter stringFromNumber:v6];
  v8 = [NSString stringWithFormat:@"%@\n%@\n%@ battery", v3, v4, v7];

  return v8;
}

- (NSString)deviceName
{
  v4 = [(HearingDeviceDataProvider *)self hearingEar];
  if (v4 <= 6 && ((1 << v4) & 0x55) != 0)
  {
    v5 = [(HearingDeviceDataProvider *)self hearingDevice];
    v2 = [v5 name];
  }

  return v2;
}

- (NSString)shortDeviceName
{
  v2 = [(HearingDeviceDataProvider *)self hearingEar];
  if (v2 == 2 || v2 == 6 || v2 == 4)
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
  v2 = [(HearingDeviceDataProvider *)self hearingEar];
  if (v2 == 2 || v2 == 6 || v2 == 4)
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
  v3 = [(HearingDeviceDataProvider *)self hearingEar];
  if (v3 == 4)
  {
    v5 = [(HearingDeviceDataProvider *)self hearingDevice];
    [v5 rightBatteryLevel];
    goto LABEL_5;
  }

  v4 = 0.0;
  if (v3 == 2)
  {
    v5 = [(HearingDeviceDataProvider *)self hearingDevice];
    [v5 leftBatteryLevel];
LABEL_5:
    v4 = v6;
  }

  return v4;
}

- (double)volumeLevel
{
  v3 = [(HearingDeviceDataProvider *)self hearingEar];
  if (v3 == 4)
  {
    v5 = [(HearingDeviceDataProvider *)self hearingDevice];
    [v5 rightMixedVolume];
    goto LABEL_5;
  }

  v4 = 0.0;
  if (v3 == 2)
  {
    v5 = [(HearingDeviceDataProvider *)self hearingDevice];
    [v5 leftMixedVolume];
LABEL_5:
    v4 = v6;
  }

  return v4;
}

- (void)setVolumeLevel:(double)a3
{
  v5 = [(HearingDeviceDataProvider *)self hearingEar];
  if (v5 == 4)
  {
    v6 = [(HearingDeviceDataProvider *)self hearingDevice];
    [v6 setRightMixedVolume:a3];
  }

  else
  {
    if (v5 != 2)
    {
      return;
    }

    v6 = [(HearingDeviceDataProvider *)self hearingDevice];
    [v6 setLeftMixedVolume:a3];
  }
}

- (double)micLevel
{
  v3 = [(HearingDeviceDataProvider *)self hearingEar];
  v4 = 0.0;
  switch(v3)
  {
    case 6u:
      v7 = [(HearingDeviceDataProvider *)self hearingDevice];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v5 = [(HearingDeviceDataProvider *)self hearingDevice];
        [v5 combinedVolumeForProperty:64];
        goto LABEL_8;
      }

      break;
    case 4u:
      v5 = [(HearingDeviceDataProvider *)self hearingDevice];
      [v5 rightMicrophoneVolume];
      goto LABEL_8;
    case 2u:
      v5 = [(HearingDeviceDataProvider *)self hearingDevice];
      [v5 leftMicrophoneVolume];
LABEL_8:
      v4 = v6;

      break;
  }

  return v4;
}

- (void)setMicLevel:(double)a3
{
  v5 = [(HearingDeviceDataProvider *)self hearingEar];
  if (v5 == 4)
  {
    v6 = [(HearingDeviceDataProvider *)self hearingDevice];
    [v6 setRightMicrophoneVolume:a3];
  }

  else
  {
    if (v5 != 2)
    {
      return;
    }

    v6 = [(HearingDeviceDataProvider *)self hearingDevice];
    [v6 setLeftMicrophoneVolume:a3];
  }
}

- (NSArray)modes
{
  v3 = [(HearingDeviceDataProvider *)self hearingEar];
  switch(v3)
  {
    case 6u:
      goto LABEL_4;
    case 4u:
      v4 = [(HearingDeviceDataProvider *)self hearingDevice];
      v5 = [v4 rightPrograms];
      goto LABEL_6;
    case 2u:
LABEL_4:
      v4 = [(HearingDeviceDataProvider *)self hearingDevice];
      v5 = [v4 leftPrograms];
LABEL_6:
      v6 = v5;

      goto LABEL_8;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (AXHearingAidMode)selectedMode
{
  v3 = [(HearingDeviceDataProvider *)self hearingEar];
  switch(v3)
  {
    case 6u:
      goto LABEL_4;
    case 4u:
      v4 = [(HearingDeviceDataProvider *)self hearingDevice];
      v5 = [v4 rightSelectedProgram];
      goto LABEL_6;
    case 2u:
LABEL_4:
      v4 = [(HearingDeviceDataProvider *)self hearingDevice];
      v5 = [v4 leftSelectedProgram];
LABEL_6:
      v6 = v5;

      goto LABEL_8;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (void)setSelectedMode:(id)a3
{
  v4 = a3;
  v5 = [(HearingDeviceDataProvider *)self hearingDevice];
  [v5 selectProgram:v4 forEar:{-[HearingDeviceDataProvider hearingEar](self, "hearingEar")}];
}

- (int64_t)volumeSteps
{
  v3 = [(HearingDeviceDataProvider *)self hearingEar];
  if (v3 == 4)
  {
    v4 = [(HearingDeviceDataProvider *)self hearingDevice];
    v5 = [v4 rightMixedVolumeSteps];
  }

  else
  {
    if (v3 != 2)
    {
      return 0;
    }

    v4 = [(HearingDeviceDataProvider *)self hearingDevice];
    v5 = [v4 leftMixedVolumeSteps];
  }

  v6 = v5;

  return v6;
}

- (int64_t)micSteps
{
  v3 = [(HearingDeviceDataProvider *)self hearingEar];
  if (v3 == 4)
  {
    v4 = [(HearingDeviceDataProvider *)self hearingDevice];
    v5 = [v4 rightMicrophoneVolumeSteps];
  }

  else
  {
    if (v3 != 2)
    {
      return 0;
    }

    v4 = [(HearingDeviceDataProvider *)self hearingDevice];
    v5 = [v4 leftMicrophoneVolumeSteps];
  }

  v6 = v5;

  return v6;
}

- (BOOL)supportProperty:(unint64_t)a3
{
  v5 = [(HearingDeviceDataProvider *)self hearingDevice];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  v7 = [(HearingDeviceDataProvider *)self hearingDevice];
  v8 = [v7 propertyIsAvailable:a3 forEar:{-[HearingDeviceDataProvider hearingEar](self, "hearingEar")}];

  return v8;
}

@end