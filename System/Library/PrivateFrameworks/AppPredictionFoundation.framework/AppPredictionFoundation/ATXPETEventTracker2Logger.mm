@interface ATXPETEventTracker2Logger
- (void)logMessage:(id)message;
- (void)trackDistributionForMessage:(id)message value:(double)value;
- (void)trackScalarForMessage:(id)message;
@end

@implementation ATXPETEventTracker2Logger

- (void)logMessage:(id)message
{
  v3 = MEMORY[0x277D41DA8];
  messageCopy = message;
  sharedInstance = [v3 sharedInstance];
  [sharedInstance logMessage:messageCopy];
}

- (void)trackScalarForMessage:(id)message
{
  v3 = MEMORY[0x277D41DA8];
  messageCopy = message;
  sharedInstance = [v3 sharedInstance];
  [sharedInstance trackScalarForMessage:messageCopy];
}

- (void)trackDistributionForMessage:(id)message value:(double)value
{
  v5 = MEMORY[0x277D41DA8];
  messageCopy = message;
  sharedInstance = [v5 sharedInstance];
  [sharedInstance trackDistributionForMessage:messageCopy value:value];
}

@end