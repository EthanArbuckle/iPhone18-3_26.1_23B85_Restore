@interface CCUIBluetoothModule
- (id)contentViewControllerForContext:(id)a3;
@end

@implementation CCUIBluetoothModule

- (id)contentViewControllerForContext:(id)a3
{
  v3 = [(CCUIBluetoothModule *)self contentModuleContext];
  v4 = [[CCUIBluetoothModuleViewController alloc] initWithContentModuleContext:v3];

  return v4;
}

@end