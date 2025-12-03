@interface PMSmartPowerNapInterruption
- (PMSmartPowerNapInterruption)initWithStart:(id)start;
@end

@implementation PMSmartPowerNapInterruption

- (PMSmartPowerNapInterruption)initWithStart:(id)start
{
  startCopy = start;
  v8.receiver = self;
  v8.super_class = PMSmartPowerNapInterruption;
  v5 = [(PMSmartPowerNapInterruption *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PMSmartPowerNapInterruption *)v5 setStart:startCopy];
  }

  return v6;
}

@end