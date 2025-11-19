@interface CoreBluetoothBackedBluetoothStatusMonitor
- (void)centralManagerDidUpdateState:(id)a3;
@end

@implementation CoreBluetoothBackedBluetoothStatusMonitor

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100071D0C(v4);
}

@end