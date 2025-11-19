@interface BLSHTTRWatchdogConfiguration
- (void)setIdentifier:(id)a3;
@end

@implementation BLSHTTRWatchdogConfiguration

- (void)setIdentifier:(id)a3
{
  objc_storeStrong(&self->_identifier, a3);
  v7 = a3;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"blsh_ttr_watchdog_", v7];
  timerIdentifier = self->_timerIdentifier;
  self->_timerIdentifier = v5;
}

@end