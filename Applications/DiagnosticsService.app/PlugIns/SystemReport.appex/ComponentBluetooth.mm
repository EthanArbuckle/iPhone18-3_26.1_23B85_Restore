@interface ComponentBluetooth
- (BOOL)isPresent;
- (id)bluetoothAddress;
- (void)populateAttributes:(id)attributes;
@end

@implementation ComponentBluetooth

- (BOOL)isPresent
{
  if (findDeviceWithName("bluetooth"))
  {
    return 1;
  }

  return findDeviceWithName("marconi-bt");
}

- (void)populateAttributes:(id)attributes
{
  attributesCopy = attributes;
  bluetoothAddress = [(ComponentBluetooth *)self bluetoothAddress];
  [attributesCopy setObject:bluetoothAddress forKeyedSubscript:@"bluetoothAddress"];
}

- (id)bluetoothAddress
{
  v2 = MGCopyAnswer();
  v3 = stringOrNull(v2);

  return v3;
}

@end