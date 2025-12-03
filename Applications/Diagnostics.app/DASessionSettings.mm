@interface DASessionSettings
+ (DASessionSettings)sessionSettingsWithDictionary:(id)dictionary;
+ (id)acceptableValueClasses;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSessionSettings:(id)settings;
- (DASessionSettings)initWithDictionary:(id)dictionary;
- (id)description;
- (id)dictionary;
@end

@implementation DASessionSettings

+ (DASessionSettings)sessionSettingsWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [[self alloc] initWithDictionary:dictionaryCopy];

  return v5;
}

- (DASessionSettings)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = DASessionSettings;
  v5 = [(DASessionSettings *)&v23 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_36;
  }

  p_deviceIdentifier = &v5->_deviceIdentifier;
  deviceIdentifier = v5->_deviceIdentifier;
  v5->_displayDeviceIdentifier = 0;
  v5->_deviceIdentifier = &stru_1001C9EA8;

  *&v6->_fullscreenPromptsEnabled = 1;
  v6->_allowCellularSizeThreshold = 0x100000;
  v6->_requestedDisplayBrightness = 0.0;
  if (!dictionaryCopy)
  {
    goto LABEL_36;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"displayDeviceIdentifier"];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6->_displayDeviceIdentifier = [v9 BOOLValue];
    }
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"deviceIdentifier"];
  if (!v10)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&v6->_deviceIdentifier, v10);
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = [v10 stringValue];
    v12 = *p_deviceIdentifier;
    *p_deviceIdentifier = stringValue;
  }

  else
  {
LABEL_11:
    v6->_displayDeviceIdentifier = 0;
  }

LABEL_12:
  v13 = [dictionaryCopy objectForKeyedSubscript:@"fullscreenPromptsEnabled"];
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6->_fullscreenPromptsEnabled = [v13 BOOLValue];
    }
  }

  v14 = [dictionaryCopy objectForKeyedSubscript:@"allowCellularSizeThreshold"];
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue = [v14 integerValue];
      if (integerValue < 0)
      {
        v16 = -1;
      }

      else
      {
        v16 = integerValue;
      }

      v6->_allowCellularSizeThreshold = v16;
    }
  }

  v17 = [dictionaryCopy objectForKeyedSubscript:@"overrideDisplayBrightness"];
  if (v17)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6->_overrideDisplayBrightness = [v17 BOOLValue];
    }
  }

  v18 = [dictionaryCopy objectForKeyedSubscript:@"requestedDisplayBrightness"];
  if (v18)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v18 floatValue];
      if (v19 < 0.0)
      {
        v19 = 0.0;
      }

      v6->_requestedDisplayBrightness = v19;
    }
  }

  v20 = [dictionaryCopy objectForKeyedSubscript:@"overrideTrueToneSettings"];
  if (v20)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6->_overrideTrueToneSettings = [v20 BOOLValue];
    }
  }

  v21 = [dictionaryCopy objectForKeyedSubscript:@"requestedTrueToneSetting"];
  if (v21)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6->_requestedTrueToneSetting = [v21 BOOLValue];
    }
  }

LABEL_36:
  return v6;
}

- (id)dictionary
{
  v13[0] = @"displayDeviceIdentifier";
  v3 = [NSNumber numberWithBool:[(DASessionSettings *)self displayDeviceIdentifier]];
  v14[0] = v3;
  v13[1] = @"deviceIdentifier";
  deviceIdentifier = [(DASessionSettings *)self deviceIdentifier];
  v14[1] = deviceIdentifier;
  v13[2] = @"fullscreenPromptsEnabled";
  v5 = [NSNumber numberWithBool:[(DASessionSettings *)self fullscreenPromptsEnabled]];
  v14[2] = v5;
  v13[3] = @"allowCellularSizeThreshold";
  v6 = [NSNumber numberWithUnsignedInteger:[(DASessionSettings *)self allowCellularSizeThreshold]];
  v14[3] = v6;
  v13[4] = @"overrideDisplayBrightness";
  v7 = [NSNumber numberWithBool:[(DASessionSettings *)self overrideDisplayBrightness]];
  v14[4] = v7;
  v13[5] = @"requestedDisplayBrightness";
  [(DASessionSettings *)self requestedDisplayBrightness];
  v8 = [NSNumber numberWithFloat:?];
  v14[5] = v8;
  v13[6] = @"overrideTrueToneSettings";
  v9 = [NSNumber numberWithBool:[(DASessionSettings *)self overrideTrueToneSettings]];
  v14[6] = v9;
  v13[7] = @"requestedTrueToneSetting";
  v10 = [NSNumber numberWithBool:[(DASessionSettings *)self requestedTrueToneSetting]];
  v14[7] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:8];

  return v11;
}

+ (id)acceptableValueClasses
{
  if (qword_100202DE8 != -1)
  {
    sub_100159448();
  }

  v3 = qword_100202DE0;

  return v3;
}

- (BOOL)isEqualToSessionSettings:(id)settings
{
  settingsCopy = settings;
  deviceIdentifier = [(DASessionSettings *)self deviceIdentifier];
  deviceIdentifier2 = [settingsCopy deviceIdentifier];
  v7 = [deviceIdentifier isEqual:deviceIdentifier2];

  if (v7 && (v8 = -[DASessionSettings displayDeviceIdentifier](self, "displayDeviceIdentifier"), v8 == [settingsCopy displayDeviceIdentifier]) && (v9 = -[DASessionSettings fullscreenPromptsEnabled](self, "fullscreenPromptsEnabled"), v9 == objc_msgSend(settingsCopy, "fullscreenPromptsEnabled")) && (v10 = -[DASessionSettings allowCellularSizeThreshold](self, "allowCellularSizeThreshold"), v10 == objc_msgSend(settingsCopy, "allowCellularSizeThreshold")) && (v11 = -[DASessionSettings overrideDisplayBrightness](self, "overrideDisplayBrightness"), v11 == objc_msgSend(settingsCopy, "overrideDisplayBrightness")) && (-[DASessionSettings requestedDisplayBrightness](self, "requestedDisplayBrightness"), v13 = v12, objc_msgSend(settingsCopy, "requestedDisplayBrightness"), v13 == v14) && (v15 = -[DASessionSettings overrideTrueToneSettings](self, "overrideTrueToneSettings"), v15 == objc_msgSend(settingsCopy, "overrideTrueToneSettings")))
  {
    requestedTrueToneSetting = [(DASessionSettings *)self requestedTrueToneSetting];
    v16 = requestedTrueToneSetting ^ [settingsCopy requestedTrueToneSetting] ^ 1;
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = self == equalCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(DASessionSettings *)self isEqualToSessionSettings:equalCopy];
  }

  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  displayDeviceIdentifier = [(DASessionSettings *)self displayDeviceIdentifier];
  deviceIdentifier = [(DASessionSettings *)self deviceIdentifier];
  fullscreenPromptsEnabled = [(DASessionSettings *)self fullscreenPromptsEnabled];
  allowCellularSizeThreshold = [(DASessionSettings *)self allowCellularSizeThreshold];
  overrideDisplayBrightness = [(DASessionSettings *)self overrideDisplayBrightness];
  [(DASessionSettings *)self requestedDisplayBrightness];
  v11 = [NSString stringWithFormat:@"<%@: %p displayDeviceIdentifier: %d; deviceIdentifier: %@; fullscreenPromptsEnabled: %d; allowCellularSizeThreshold: %lu; overrideDisplayBrightness: %d; requestedDisplayBrightness: %f; overrideTrueToneSettings: %d; requestedTrueToneSetting: %d;>", v4, self, displayDeviceIdentifier, deviceIdentifier, fullscreenPromptsEnabled, allowCellularSizeThreshold, overrideDisplayBrightness, v10, [(DASessionSettings *)self overrideTrueToneSettings], [(DASessionSettings *)self requestedTrueToneSetting]];;

  return v11;
}

@end