@interface LAPSPasscodeChangePreflightController
- (LAPSPasscodeChangePreflightController)initWithSystem:(id)system;
@end

@implementation LAPSPasscodeChangePreflightController

- (LAPSPasscodeChangePreflightController)initWithSystem:(id)system
{
  systemCopy = system;
  v9.receiver = self;
  v9.super_class = LAPSPasscodeChangePreflightController;
  v6 = [(LAPSPasscodeChangePreflightController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_system, system);
  }

  return v7;
}

@end