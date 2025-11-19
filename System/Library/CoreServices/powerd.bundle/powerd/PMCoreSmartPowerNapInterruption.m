@interface PMCoreSmartPowerNapInterruption
- (PMCoreSmartPowerNapInterruption)initWithStart:(id)a3;
@end

@implementation PMCoreSmartPowerNapInterruption

- (PMCoreSmartPowerNapInterruption)initWithStart:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PMCoreSmartPowerNapInterruption;
  v5 = [(PMCoreSmartPowerNapInterruption *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PMCoreSmartPowerNapInterruption *)v5 setStart:v4];
  }

  return v6;
}

@end