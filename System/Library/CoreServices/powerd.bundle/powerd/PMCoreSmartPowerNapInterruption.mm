@interface PMCoreSmartPowerNapInterruption
- (PMCoreSmartPowerNapInterruption)initWithStart:(id)start;
@end

@implementation PMCoreSmartPowerNapInterruption

- (PMCoreSmartPowerNapInterruption)initWithStart:(id)start
{
  startCopy = start;
  v8.receiver = self;
  v8.super_class = PMCoreSmartPowerNapInterruption;
  v5 = [(PMCoreSmartPowerNapInterruption *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PMCoreSmartPowerNapInterruption *)v5 setStart:startCopy];
  }

  return v6;
}

@end