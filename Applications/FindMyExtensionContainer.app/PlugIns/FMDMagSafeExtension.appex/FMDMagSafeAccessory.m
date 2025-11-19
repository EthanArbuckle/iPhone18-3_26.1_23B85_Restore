@interface FMDMagSafeAccessory
- (BOOL)isValid;
- (FMDMagSafeAccessory)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDMagSafeAccessory

- (BOOL)isValid
{
  v4 = [(FMDMagSafeAccessory *)self findMyEnabled];
  if (v4 && ([(FMDMagSafeAccessory *)self name], (v2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v10 = 1;
  }

  else
  {
    v5 = [(FMDMagSafeAccessory *)self serialNumbers];
    if (v5)
    {
      v6 = v5;
      v7 = [(FMDMagSafeAccessory *)self accessoryIdentifier];
      if (v7)
      {
        v8 = v7;
        v9 = [(FMDMagSafeAccessory *)self accessoryType];
        v10 = v9 == 0;

        if ((v4 & 1) == 0)
        {
          return !v10;
        }
      }

      else
      {

        v10 = 1;
        if ((v4 & 1) == 0)
        {
          return !v10;
        }
      }
    }

    else
    {
      v10 = 1;
      if (!v4)
      {
        return !v10;
      }
    }
  }

  return !v10;
}

- (id)description
{
  v3 = [(FMDMagSafeAccessory *)self accessoryIdentifier];
  v4 = [(FMDMagSafeAccessory *)self serialNumbers];
  v5 = [(FMDMagSafeAccessory *)self firmwareVersion];
  v6 = [(FMDMagSafeAccessory *)self style];
  v7 = [NSString stringWithFormat:@"%@ %@ %@ %@", v3, v4, v5, v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDMagSafeAccessory *)self accessoryIdentifier];
  [v4 encodeObject:v5 forKey:@"accessoryIdentifier"];

  v6 = [(FMDMagSafeAccessory *)self accessoryType];
  [v4 encodeObject:v6 forKey:@"accessoryType"];

  v7 = [(FMDMagSafeAccessory *)self serialNumbers];
  [v4 encodeObject:v7 forKey:@"serialNumbers"];

  v8 = [(FMDMagSafeAccessory *)self firmwareVersion];
  [v4 encodeObject:v8 forKey:@"firmwareVersion"];

  v9 = [(FMDMagSafeAccessory *)self name];
  [v4 encodeObject:v9 forKey:@"name"];

  v10 = [(FMDMagSafeAccessory *)self style];
  [v4 encodeObject:v10 forKey:@"style"];

  v11 = [(FMDMagSafeAccessory *)self additionalInfo];
  [v4 encodeObject:v11 forKey:@"additionalInfo"];

  v12 = [(FMDMagSafeAccessory *)self deviceDiscoveryId];
  [v4 encodeObject:v12 forKey:@"deviceDiscoveryId"];

  [v4 encodeBool:-[FMDMagSafeAccessory findMyEnabled](self forKey:{"findMyEnabled"), @"findMyEnabled"}];
  v13 = [(FMDMagSafeAccessory *)self lastLostModeKeyRollTime];
  [v4 encodeObject:v13 forKey:@"lastLostModeKeyRollTime"];
}

- (FMDMagSafeAccessory)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = FMDMagSafeAccessory;
  v5 = [(FMDMagSafeAccessory *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryIdentifier"];
    [(FMDMagSafeAccessory *)v5 setAccessoryIdentifier:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryType"];
    [(FMDMagSafeAccessory *)v5 setAccessoryType:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firmwareVersion"];
    [(FMDMagSafeAccessory *)v5 setFirmwareVersion:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(FMDMagSafeAccessory *)v5 setName:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"style"];
    [(FMDMagSafeAccessory *)v5 setStyle:v10];

    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v11, v12, objc_opt_class(), 0];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"serialNumbers"];
    [(FMDMagSafeAccessory *)v5 setSerialNumbers:v14];

    v15 = [v4 decodeObjectOfClasses:v13 forKey:@"additionalInfo"];
    [(FMDMagSafeAccessory *)v5 setAdditionalInfo:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceDiscoveryId"];
    [(FMDMagSafeAccessory *)v5 setDeviceDiscoveryId:v16];

    -[FMDMagSafeAccessory setFindMyEnabled:](v5, "setFindMyEnabled:", [v4 decodeBoolForKey:@"findMyEnabled"]);
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastLostModeKeyRollTime"];
    [(FMDMagSafeAccessory *)v5 setLastLostModeKeyRollTime:v17];
  }

  return v5;
}

@end