@interface ADWatchDog
- (ADWatchDog)initWithReason:(id)a3 andDelay:(unint64_t)a4;
- (void)updateReason:(id)a3;
@end

@implementation ADWatchDog

- (ADWatchDog)initWithReason:(id)a3 andDelay:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = ADWatchDog;
  v8 = [(ADWatchDog *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_reason, a3);
    v9->_delayTime = a4;
  }

  return v9;
}

- (void)updateReason:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Updating watchdog reason from '%@' to '%@'.", self->_reason, v4];
  _ADLog(@"ToroLogging", v5, 0);

  reason = self->_reason;
  self->_reason = v4;
}

@end