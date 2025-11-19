@interface BLSHBacklightOSTimerProvider
- (id)scheduledTimerWithIdentifier:(id)a3 interval:(double)a4 leewayInterval:(double)a5 handler:(id)a6;
- (id)scheduledWakingTimerWithIdentifier:(id)a3 interval:(double)a4 leewayInterval:(double)a5 handler:(id)a6;
- (void)dispatchToMainQueueAfterSecondsDelay:(double)a3 identifier:(id)a4 block:(id)a5;
@end

@implementation BLSHBacklightOSTimerProvider

- (id)scheduledTimerWithIdentifier:(id)a3 interval:(double)a4 leewayInterval:(double)a5 handler:(id)a6
{
  v9 = MEMORY[0x277CF0BD8];
  v10 = a6;
  v11 = a3;
  v12 = [[v9 alloc] initWithIdentifier:v11];

  [v12 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v10 queue:a4 handler:a5];

  return v12;
}

- (id)scheduledWakingTimerWithIdentifier:(id)a3 interval:(double)a4 leewayInterval:(double)a5 handler:(id)a6
{
  v9 = MEMORY[0x277D6C0A8];
  v10 = a6;
  v11 = a3;
  v12 = [[v9 alloc] initWithIdentifier:v11];

  [v12 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v10 queue:a4 handler:a5];

  return v12;
}

- (void)dispatchToMainQueueAfterSecondsDelay:(double)a3 identifier:(id)a4 block:(id)a5
{
  v5 = (a3 * 1000000000.0);
  block = a5;
  v6 = dispatch_time(0, v5);
  dispatch_after(v6, MEMORY[0x277D85CD0], block);
}

@end