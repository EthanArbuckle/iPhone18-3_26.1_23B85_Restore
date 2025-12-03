@interface HDBatteryService
+ (id)implementedProperties;
- (void)peripheral:(id)peripheral didDiscoverCharacteristic:(id)characteristic;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic updateTime:(id)time error:(id)error;
- (void)readProperty:(id)property;
@end

@implementation HDBatteryService

+ (id)implementedProperties
{
  v4 = @"batteryLevelPercent";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)readProperty:(id)property
{
  propertyCopy = property;
  if ([propertyCopy isEqual:@"batteryLevelPercent"] && (batteryCharacteristic = self->_batteryCharacteristic) != 0 && (-[CBCharacteristic service](batteryCharacteristic, "service"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "peripheral"), healthPeripheral = objc_claimAutoreleasedReturnValue(), v5, healthPeripheral))
  {
    [healthPeripheral readValueForCharacteristic:self->_batteryCharacteristic];
  }

  else
  {
    if (![(HDHealthService *)self characteristicsDiscovered])
    {
      goto LABEL_8;
    }

    healthPeripheral = [(HDHealthService *)self healthPeripheral];
    v7 = [NSError hk_error:310 description:@"Battery level not supported"];
    [healthPeripheral service:self didReadProperty:propertyCopy value:0 error:v7];
  }

LABEL_8:
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  uUID = [characteristicCopy UUID];
  uUIDString = [uUID UUIDString];
  v8 = [uUIDString isEqual:@"2A19"];

  if (v8)
  {
    objc_storeStrong(&self->_batteryCharacteristic, characteristic);
  }
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic updateTime:(id)time error:(id)error
{
  characteristicCopy = characteristic;
  errorCopy = error;
  uUID = [characteristicCopy UUID];
  uUIDString = [uUID UUIDString];
  v11 = [uUIDString isEqual:@"2A19"];

  if (v11)
  {
    if (!errorCopy && ([characteristicCopy value], errorCopy = objc_claimAutoreleasedReturnValue(), errorCopy, errorCopy))
    {
      value = [characteristicCopy value];
      v12 = sub_28C9C(self, value);

      if (v12)
      {
        errorCopy = 0;
      }

      else
      {
        errorCopy = [NSError hk_error:311 description:@"Invalid property value format"];
      }
    }

    else
    {
      v12 = 0;
    }

    healthPeripheral = [(HDHealthService *)self healthPeripheral];
    [healthPeripheral service:self didReadProperty:@"batteryLevelPercent" value:v12 error:errorCopy];
  }
}

@end