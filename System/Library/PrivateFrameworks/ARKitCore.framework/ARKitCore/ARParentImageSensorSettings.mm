@interface ARParentImageSensorSettings
- (ARParentImageSensorSettings)init;
- (BOOL)isEqual:(id)equal;
- (NSArray)settings;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setSettings:(id)settings;
@end

@implementation ARParentImageSensorSettings

- (ARParentImageSensorSettings)init
{
  v6.receiver = self;
  v6.super_class = ARParentImageSensorSettings;
  v2 = [(ARParentImageSensorSettings *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    settings = v2->_settings;
    v2->_settings = v3;
  }

  return v2;
}

- (NSArray)settings
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_settings copyItems:1];

  return v2;
}

- (void)setSettings:(id)settings
{
  v4 = MEMORY[0x1E695DEC8];
  settingsCopy = settings;
  v6 = [[v4 alloc] initWithArray:settingsCopy copyItems:1];

  settings = self->_settings;
  self->_settings = v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v7 = equalCopy;
    internalSettings = [(ARParentImageSensorSettings *)self internalSettings];
    internalSettings2 = [v7 internalSettings];
    if (internalSettings == internalSettings2 || (-[ARParentImageSensorSettings internalSettings](self, "internalSettings"), v3 = objc_claimAutoreleasedReturnValue(), [v7 internalSettings], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      allowCameraInMultipleForegroundAppLayout = [(ARParentImageSensorSettings *)self allowCameraInMultipleForegroundAppLayout];
      if (allowCameraInMultipleForegroundAppLayout == [v7 allowCameraInMultipleForegroundAppLayout])
      {
        audioCaptureEnabled = [(ARParentImageSensorSettings *)self audioCaptureEnabled];
        v10 = audioCaptureEnabled ^ [v7 audioCaptureEnabled] ^ 1;
      }

      else
      {
        LOBYTE(v10) = 0;
      }

      if (internalSettings == internalSettings2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }

LABEL_11:
    goto LABEL_12;
  }

  LOBYTE(v10) = 0;
LABEL_12:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setSettings:self->_settings];
  v4[8] = self->_audioCaptureEnabled;
  v4[9] = self->_allowCameraInMultipleForegroundAppLayout;
  return v4;
}

@end