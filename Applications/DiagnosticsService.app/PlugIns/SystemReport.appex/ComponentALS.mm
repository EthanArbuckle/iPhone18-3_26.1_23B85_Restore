@interface ComponentALS
- (BOOL)isPresent;
- (id)sensorSerialNumber;
- (id)serialNumber;
- (void)populateAttributes:(id)a3;
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

- (void)populateAttributes:(id)a3
{
  v7 = a3;
  v4 = [(ComponentALS *)self serialNumber];
  if ([v4 length])
  {
    [v7 setObject:v4 forKeyedSubscript:@"serialNumber"];
  }

  v5 = [(ComponentALS *)self sensorSerialNumber];
  if ([v5 length])
  {
    v6 = [(ComponentALS *)self sensorSerialNumber];
    [v7 setObject:v6 forKeyedSubscript:@"sensorSerialNumber"];
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