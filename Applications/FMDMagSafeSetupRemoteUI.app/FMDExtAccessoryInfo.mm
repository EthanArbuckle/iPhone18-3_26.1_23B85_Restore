@interface FMDExtAccessoryInfo
- (FMDExtAccessoryInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDExtAccessoryInfo

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

  additionalInfo = [(FMDExtAccessoryInfo *)self additionalInfo];
  [coderCopy encodeObject:additionalInfo forKey:@"additionalInfo"];

  deviceDiscoveryId = [(FMDExtAccessoryInfo *)self deviceDiscoveryId];
  [coderCopy encodeObject:deviceDiscoveryId forKey:@"deviceDiscoveryId"];
}

- (FMDExtAccessoryInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = FMDExtAccessoryInfo;
  v5 = [(FMDExtAccessoryInfo *)&v17 init];
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

    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [NSSet setWithObjects:v10, v11, objc_opt_class(), 0];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"serialNumbers"];
    [(FMDExtAccessoryInfo *)v5 setSerialNumbers:v13];

    v14 = [coderCopy decodeObjectOfClasses:v12 forKey:@"additionalInfo"];
    [(FMDExtAccessoryInfo *)v5 setAdditionalInfo:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceDiscoveryId"];
    [(FMDExtAccessoryInfo *)v5 setDeviceDiscoveryId:v15];
  }

  return v5;
}

- (id)description
{
  accessoryIdentifier = [(FMDExtAccessoryInfo *)self accessoryIdentifier];
  accessoryType = [(FMDExtAccessoryInfo *)self accessoryType];
  serialNumbers = [(FMDExtAccessoryInfo *)self serialNumbers];
  firmwareVersion = [(FMDExtAccessoryInfo *)self firmwareVersion];
  name = [(FMDExtAccessoryInfo *)self name];
  additionalInfo = [(FMDExtAccessoryInfo *)self additionalInfo];
  deviceDiscoveryId = [(FMDExtAccessoryInfo *)self deviceDiscoveryId];
  v10 = [NSString stringWithFormat:@"accessory Info = (0x%lx)\n    accessoryIdentifier = %@\n    accessoryType = %@\n    serialNumbers = %@\n    firmwareVersion = %@\n    name = %@\n    additionalInfo = %@\n deviceDiscoveryId = %@\n", self, accessoryIdentifier, accessoryType, serialNumbers, firmwareVersion, name, additionalInfo, deviceDiscoveryId];

  return v10;
}

@end