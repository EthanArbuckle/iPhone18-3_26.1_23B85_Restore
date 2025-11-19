@interface LAPSPasscodeChangePreflightController
- (LAPSPasscodeChangePreflightController)initWithSystem:(id)a3;
@end

@implementation LAPSPasscodeChangePreflightController

- (LAPSPasscodeChangePreflightController)initWithSystem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LAPSPasscodeChangePreflightController;
  v6 = [(LAPSPasscodeChangePreflightController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_system, a3);
  }

  return v7;
}

@end