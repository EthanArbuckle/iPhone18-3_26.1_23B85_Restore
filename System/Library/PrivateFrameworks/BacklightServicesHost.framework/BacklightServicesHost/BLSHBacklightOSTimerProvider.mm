@interface BLSHBacklightOSTimerProvider
- (id)scheduledTimerWithIdentifier:(id)identifier interval:(double)interval leewayInterval:(double)leewayInterval handler:(id)handler;
- (id)scheduledWakingTimerWithIdentifier:(id)identifier interval:(double)interval leewayInterval:(double)leewayInterval handler:(id)handler;
- (void)dispatchToMainQueueAfterSecondsDelay:(double)delay identifier:(id)identifier block:(id)block;
@end

@implementation BLSHBacklightOSTimerProvider

- (id)scheduledTimerWithIdentifier:(id)identifier interval:(double)interval leewayInterval:(double)leewayInterval handler:(id)handler
{
  v9 = MEMORY[0x277CF0BD8];
  handlerCopy = handler;
  identifierCopy = identifier;
  v12 = [[v9 alloc] initWithIdentifier:identifierCopy];

  [v12 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:handlerCopy queue:interval handler:leewayInterval];

  return v12;
}

- (id)scheduledWakingTimerWithIdentifier:(id)identifier interval:(double)interval leewayInterval:(double)leewayInterval handler:(id)handler
{
  v9 = MEMORY[0x277D6C0A8];
  handlerCopy = handler;
  identifierCopy = identifier;
  v12 = [[v9 alloc] initWithIdentifier:identifierCopy];

  [v12 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:handlerCopy queue:interval handler:leewayInterval];

  return v12;
}

- (void)dispatchToMainQueueAfterSecondsDelay:(double)delay identifier:(id)identifier block:(id)block
{
  v5 = (delay * 1000000000.0);
  block = block;
  v6 = dispatch_time(0, v5);
  dispatch_after(v6, MEMORY[0x277D85CD0], block);
}

@end