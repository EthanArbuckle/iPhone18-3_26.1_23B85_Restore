@interface BluetoothUtility
- (void)handleBluetoothManagerStateChangeWithNotification:(id)a3;
@end

@implementation BluetoothUtility

- (void)handleBluetoothManagerStateChangeWithNotification:(id)a3
{
  v3 = sub_2239B2E58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2239B2E48();

  sub_223977B3C();

  (*(v4 + 8))(v7, v3);
}

@end