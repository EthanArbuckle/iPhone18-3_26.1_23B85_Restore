@interface PMSmartPowerNapInterruption
- (PMSmartPowerNapInterruption)initWithStart:(id)a3;
@end

@implementation PMSmartPowerNapInterruption

- (PMSmartPowerNapInterruption)initWithStart:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PMSmartPowerNapInterruption;
  v5 = [(PMSmartPowerNapInterruption *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PMSmartPowerNapInterruption *)v5 setStart:v4];
  }

  return v6;
}

@end