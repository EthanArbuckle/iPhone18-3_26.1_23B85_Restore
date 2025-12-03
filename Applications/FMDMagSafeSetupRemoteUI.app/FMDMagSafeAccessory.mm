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
  if (findMyEnabled && ([(FMDExtAccessoryInfo *)self name], (v2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v10 = 1;
  }

  else
  {
    serialNumbers = [(FMDExtAccessoryInfo *)self serialNumbers];
    if (serialNumbers)
    {
      v6 = serialNumbers;
      accessoryIdentifier = [(FMDExtAccessoryInfo *)self accessoryIdentifier];
      if (accessoryIdentifier)
      {
        v8 = accessoryIdentifier;
        accessoryType = [(FMDExtAccessoryInfo *)self accessoryType];
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
  accessoryIdentifier = [(FMDExtAccessoryInfo *)self accessoryIdentifier];
  serialNumbers = [(FMDExtAccessoryInfo *)self serialNumbers];
  firmwareVersion = [(FMDExtAccessoryInfo *)self firmwareVersion];
  style = [(FMDMagSafeAccessory *)self style];
  v7 = [NSString stringWithFormat:@"%@ %@ %@ %@", accessoryIdentifier, serialNumbers, firmwareVersion, style];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessoryIdentifier = [(FMDExtAccessoryInfo *)self accessoryIdentifier];
  [coderCopy encodeObject:accessoryIdentifier forKey:@"accessoryIdentifier"];

  accessoryType = [(FMDExtAccessoryInfo *)self accessoryType];
  [coderCopy encodeObject:accessoryType forKey:@"accessoryType"];

  serialNumbers = [(FMDExtAccessoryInfo *)self serialNumbers];
  [coderCopy encodeObject:serialNumbers forKey:@"serialNumbers"];

  firmwareVersion = [(FMDExtAccessoryInfo *)self firmwareVersion];
  [coderCopy encodeObject:firmwareVersion forKey:@"firmwareVersion"];

  name = [(FMDExtAccessoryInfo *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  style = [(FMDMagSafeAccessory *)self style];
  [coderCopy encodeObject:style forKey:@"style"];

  additionalInfo = [(FMDExtAccessoryInfo *)self additionalInfo];
  [coderCopy encodeObject:additionalInfo forKey:@"additionalInfo"];

  deviceDiscoveryId = [(FMDExtAccessoryInfo *)self deviceDiscoveryId];
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
    [(FMDExtAccessoryInfo *)v5 setAccessoryIdentifier:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryType"];
    [(FMDExtAccessoryInfo *)v5 setAccessoryType:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firmwareVersion"];
    [(FMDExtAccessoryInfo *)v5 setFirmwareVersion:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(FMDExtAccessoryInfo *)v5 setName:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"style"];
    [(FMDMagSafeAccessory *)v5 setStyle:v10];

    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v11, v12, objc_opt_class(), 0];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"serialNumbers"];
    [(FMDExtAccessoryInfo *)v5 setSerialNumbers:v14];

    v15 = [coderCopy decodeObjectOfClasses:v13 forKey:@"additionalInfo"];
    [(FMDExtAccessoryInfo *)v5 setAdditionalInfo:v15];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceDiscoveryId"];
    [(FMDExtAccessoryInfo *)v5 setDeviceDiscoveryId:v16];

    -[FMDMagSafeAccessory setFindMyEnabled:](v5, "setFindMyEnabled:", [coderCopy decodeBoolForKey:@"findMyEnabled"]);
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastLostModeKeyRollTime"];
    [(FMDMagSafeAccessory *)v5 setLastLostModeKeyRollTime:v17];
  }

  return v5;
}

@end