@interface BCUIAvocadoViewController(SubclassOverrides)
@end

@implementation BCUIAvocadoViewController(SubclassOverrides)

- (void)_configureBatteryDeviceView:()SubclassOverrides withBatteryDevice:transitionCoordinator:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BCUIAvocadoViewController.m" lineNumber:209 description:{@"Invalid parameter not satisfying: %@", @"batteryDeviceView"}];
}

@end