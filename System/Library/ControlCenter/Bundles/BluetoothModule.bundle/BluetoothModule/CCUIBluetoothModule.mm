@interface CCUIBluetoothModule
- (id)contentViewControllerForContext:(id)context;
@end

@implementation CCUIBluetoothModule

- (id)contentViewControllerForContext:(id)context
{
  contentModuleContext = [(CCUIBluetoothModule *)self contentModuleContext];
  v4 = [[CCUIBluetoothModuleViewController alloc] initWithContentModuleContext:contentModuleContext];

  return v4;
}

@end