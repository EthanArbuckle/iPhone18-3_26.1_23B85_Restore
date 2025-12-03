@interface ComponentALS
- (BOOL)isPresent;
- (id)sensorSerialNumber;
- (id)serialNumber;
- (void)populateAttributes:(id)attributes;
@end

@implementation ComponentALS

- (BOOL)isPresent
{
  if ([DAComponentUtil IORegistryNameExists:@"als" optionalKey:0]|| findDeviceWithName("als"))
  {
    return 1;
  }

  return findDeviceWithName("als-i2c3");
}

- (void)populateAttributes:(id)attributes
{
  attributesCopy = attributes;
  serialNumber = [(ComponentALS *)self serialNumber];
  if ([serialNumber length])
  {
    [attributesCopy setObject:serialNumber forKeyedSubscript:@"serialNumber"];
  }

  sensorSerialNumber = [(ComponentALS *)self sensorSerialNumber];
  if ([sensorSerialNumber length])
  {
    sensorSerialNumber2 = [(ComponentALS *)self sensorSerialNumber];
    [attributesCopy setObject:sensorSerialNumber2 forKeyedSubscript:@"sensorSerialNumber"];
  }
}

- (id)serialNumber
{
  v2 = [DAComponentUtil getIORegistryName:@"product" property:@"ambient-light-sensor-serial-num" optionalKey:0];
  if (v2)
  {
    v3 = [[NSString alloc] initWithData:v2 encoding:4];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)sensorSerialNumber
{
  v2 = [DAComponentUtil getIORegistryName:@"product" property:@"rosaline-serial-num" optionalKey:0];
  if (v2)
  {
    v3 = [[NSString alloc] initWithData:v2 encoding:4];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end