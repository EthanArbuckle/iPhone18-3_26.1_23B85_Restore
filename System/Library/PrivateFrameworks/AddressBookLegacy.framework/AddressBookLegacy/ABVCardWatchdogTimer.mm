@interface ABVCardWatchdogTimer
+ (ABVCardWatchdogTimer)timerWithTimeProvider:(id)a3;
- (ABVCardWatchdogTimer)initWithTimeProvider:(id)a3;
- (BOOL)isValid;
- (void)checkValidity;
- (void)dealloc;
- (void)start;
@end

@implementation ABVCardWatchdogTimer

+ (ABVCardWatchdogTimer)timerWithTimeProvider:(id)a3
{
  if (![a1 shouldCheckTime])
  {
    return 0;
  }

  v5 = [[a1 alloc] initWithTimeProvider:a3];

  return v5;
}

- (ABVCardWatchdogTimer)initWithTimeProvider:(id)a3
{
  v6.receiver = self;
  v6.super_class = ABVCardWatchdogTimer;
  v4 = [(ABVCardWatchdogTimer *)&v6 init];
  if (v4)
  {
    v4->_timeProvider = a3;
    v4->_valid = 1;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ABVCardWatchdogTimer;
  [(ABVCardWatchdogTimer *)&v3 dealloc];
}

- (void)start
{
  v3 = [(ABVCardTimeProvider *)[(ABVCardWatchdogTimer *)self timeProvider] now];

  [(ABVCardWatchdogTimer *)self setStartTime:v3];
}

- (void)checkValidity
{
  [-[ABVCardTimeProvider now](-[ABVCardWatchdogTimer timeProvider](self "timeProvider")];
  if (v3 > 9.0)
  {

    [(ABVCardWatchdogTimer *)self setValid:0];
  }
}

- (BOOL)isValid
{
  if (![(ABVCardWatchdogTimer *)self isStarted])
  {
    return 1;
  }

  [(ABVCardWatchdogTimer *)self setTicks:([(ABVCardWatchdogTimer *)self ticks]+ 1) % 0xC8];
  if (![(ABVCardWatchdogTimer *)self ticks])
  {
    [(ABVCardWatchdogTimer *)self checkValidity];
  }

  return [(ABVCardWatchdogTimer *)self valid];
}

@end