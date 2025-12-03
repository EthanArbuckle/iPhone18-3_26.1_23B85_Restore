@interface FMDMagSafeAccessory
- (BOOL)isValid;
- (FMDMagSafeAccessory)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDMagSafeAccessory

- (BOOL)isValid
{
  findMyEnabled = [(FMDMagSafeAccessory *)self findMyEnabled];
  if (findMyEnabled && ([(FMDMagSafeAccessory *)self name], (v2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v10 = 1;
  }

  else
  {
    serialNumbers = [(FMDMagSafeAccessory *)self serialNumbers];
    if (serialNumbers)
    {
      v6 = serialNumbers;
      accessoryIdentifier = [(FMDMagSafeAccessory *)self accessoryIdentifier];
      if (accessoryIdentifier)
      {
        v8 = accessoryIdentifier;
        accessoryType = [(FMDMagSafeAccessory *)self accessoryType];
        v10 = accessoryType == 0;

        if ((findMyEnabled & 1) == 0)
        {
          return !v10;
        }
      }

      else
      {

        v10 = 1;
        if ((findMyEnabled & 1) == 0)
        {
          return !v10;
        }
      }
    }

    else
    {
      v10 = 1;
      if (!findMyEnabled)
      {
        return !v10;
      }
    }
  }

  return !v10;
}

- (id)description
{
  accessoryIdentifier = [(FMDMagSafeAccessory *)self accessoryIdentifier];
  serialNumbers = [(FMDMagSafeAccessory *)self serialNumbers];
  firmwareVersion = [(FMDMagSafeAccessory *)self firmwareVersion];
  style = [(FMDMagSafeAccessory *)self style];
  v7 = [NSString stringWithFormat:@"%@ %@ %@ %@", accessoryIdentifier, serialNumbers, firmwareVersion, style];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessoryIdentifier = [(FMDMagSafeAccessory *)self accessoryIdentifier];
  [coderCopy encodeObject:accessoryIdentifier forKey:@"accessoryIdentifier"];

  accessoryType = [(FMDMagSafeAccessory *)self accessoryType];
  [coderCopy encodeObject:accessoryType forKey:@"accessoryType"];

  serialNumbers = [(FMDMagSafeAccessory *)self serialNumbers];
  [coderCopy encodeObject:serialNumbers forKey:@"serialNumbers"];

  firmwareVersion = [(FMDMagSafeAccessory *)self firmwareVersion];
  [coderCopy encodeObject:firmwareVersion forKey:@"firmwareVersion"];

  name = [(FMDMagSafeAccessory *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  style = [(FMDMagSafeAccessory *)self style];
  [coderCopy encodeObject:style forKey:@"style"];

  additionalInfo = [(FMDMagSafeAccessory *)self additionalInfo];
  [coderCopy encodeObject:additionalInfo forKey:@"additionalInfo"];

  deviceDiscoveryId = [(FMDMagSafeAccessory *)self deviceDiscoveryId];
  [coderCopy encodeObject:deviceDiscoveryId forKey:@"deviceDiscoveryId"];

  [coderCopy encodeBool:-[FMDMagSafeAccessory findMyEnabled](self forKey:{"findMyEnabled"), @"findMyEnabled"}];
  lastLostModeKeyRollTime = [(FMDMagSafeAccessory *)self lastLostModeKeyRollTime];
  [coderCopy encodeObject:lastLostModeKeyRollTime forKey:@"lastLostModeKeyRollTime"];
}

- (FMDMagSafeAccessory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = FMDMagSafeAccessory;
  v5 = [(FMDMagSafeAccessory *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryIdentifier"];
    [(FMDMagSafeAccessory *)v5 setAccessoryIdentifier:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryType"];
    [(FMDMagSafeAccessory *)v5 setAccessoryType:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firmwareVersion"];
    [(FMDMagSafeAccessory *)v5 setFirmwareVersion:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(FMDMagSafeAccessory *)v5 setName:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"style"];
    [(FMDMagSafeAccessory *)v5 setStyle:v10];

    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v11, v12, objc_opt_class(), 0];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"serialNumbers"];
    [(FMDMagSafeAccessory *)v5 setSerialNumbers:v14];

    v15 = [coderCopy decodeObjectOfClasses:v13 forKey:@"additionalInfo"];
    [(FMDMagSafeAccessory *)v5 setAdditionalInfo:v15];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceDiscoveryId"];
    [(FMDMagSafeAccessory *)v5 setDeviceDiscoveryId:v16];

    -[FMDMagSafeAccessory setFindMyEnabled:](v5, "setFindMyEnabled:", [coderCopy decodeBoolForKey:@"findMyEnabled"]);
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastLostModeKeyRollTime"];
    [(FMDMagSafeAccessory *)v5 setLastLostModeKeyRollTime:v17];
  }

  return v5;
}

@end