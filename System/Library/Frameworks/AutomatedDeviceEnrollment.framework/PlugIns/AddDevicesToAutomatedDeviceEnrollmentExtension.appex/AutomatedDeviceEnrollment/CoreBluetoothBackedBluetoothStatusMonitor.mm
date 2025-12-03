@interface CoreBluetoothBackedBluetoothStatusMonitor
- (void)centralManagerDidUpdateState:(id)state;
@end

@implementation CoreBluetoothBackedBluetoothStatusMonitor

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_100071D0C(stateCopy);
}

@end