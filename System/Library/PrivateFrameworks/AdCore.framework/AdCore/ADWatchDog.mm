@interface ADWatchDog
- (ADWatchDog)initWithReason:(id)reason andDelay:(unint64_t)delay;
- (void)updateReason:(id)reason;
@end

@implementation ADWatchDog

- (ADWatchDog)initWithReason:(id)reason andDelay:(unint64_t)delay
{
  reasonCopy = reason;
  v11.receiver = self;
  v11.super_class = ADWatchDog;
  v8 = [(ADWatchDog *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_reason, reason);
    v9->_delayTime = delay;
  }

  return v9;
}

- (void)updateReason:(id)reason
{
  reasonCopy = reason;
  reasonCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Updating watchdog reason from '%@' to '%@'.", self->_reason, reasonCopy];
  _ADLog(@"ToroLogging", reasonCopy, 0);

  reason = self->_reason;
  self->_reason = reasonCopy;
}

@end