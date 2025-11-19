@interface ComponentBluetooth
- (BOOL)isPresent;
- (id)bluetoothAddress;
- (void)populateAttributes:(id)a3;
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

- (void)populateAttributes:(id)a3
{
  v4 = a3;
  v5 = [(ComponentBluetooth *)self bluetoothAddress];
  [v4 setObject:v5 forKeyedSubscript:@"bluetoothAddress"];
}

- (id)bluetoothAddress
{
  v2 = MGCopyAnswer();
  v3 = stringOrNull(v2);

  return v3;
}

@end