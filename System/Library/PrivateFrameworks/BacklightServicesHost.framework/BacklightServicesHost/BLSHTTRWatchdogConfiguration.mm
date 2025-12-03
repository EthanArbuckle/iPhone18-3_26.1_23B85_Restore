@interface BLSHTTRWatchdogConfiguration
- (void)setIdentifier:(id)identifier;
@end

@implementation BLSHTTRWatchdogConfiguration

- (void)setIdentifier:(id)identifier
{
  objc_storeStrong(&self->_identifier, identifier);
  identifierCopy = identifier;
  identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"blsh_ttr_watchdog_", identifierCopy];
  timerIdentifier = self->_timerIdentifier;
  self->_timerIdentifier = identifierCopy;
}

@end