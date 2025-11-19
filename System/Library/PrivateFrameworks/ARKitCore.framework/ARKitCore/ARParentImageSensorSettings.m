@interface ARParentImageSensorSettings
- (ARParentImageSensorSettings)init;
- (BOOL)isEqual:(id)a3;
- (NSArray)settings;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setSettings:(id)a3;
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

- (void)setSettings:(id)a3
{
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [[v4 alloc] initWithArray:v5 copyItems:1];

  settings = self->_settings;
  self->_settings = v6;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if ([v6 isMemberOfClass:objc_opt_class()])
  {
    v7 = v6;
    v8 = [(ARParentImageSensorSettings *)self internalSettings];
    v9 = [v7 internalSettings];
    if (v8 == v9 || (-[ARParentImageSensorSettings internalSettings](self, "internalSettings"), v3 = objc_claimAutoreleasedReturnValue(), [v7 internalSettings], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      v11 = [(ARParentImageSensorSettings *)self allowCameraInMultipleForegroundAppLayout];
      if (v11 == [v7 allowCameraInMultipleForegroundAppLayout])
      {
        v12 = [(ARParentImageSensorSettings *)self audioCaptureEnabled];
        v10 = v12 ^ [v7 audioCaptureEnabled] ^ 1;
      }

      else
      {
        LOBYTE(v10) = 0;
      }

      if (v8 == v9)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setSettings:self->_settings];
  v4[8] = self->_audioCaptureEnabled;
  v4[9] = self->_allowCameraInMultipleForegroundAppLayout;
  return v4;
}

@end