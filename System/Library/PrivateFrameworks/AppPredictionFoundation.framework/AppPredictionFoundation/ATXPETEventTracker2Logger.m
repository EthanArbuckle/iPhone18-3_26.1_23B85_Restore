@interface ATXPETEventTracker2Logger
- (void)logMessage:(id)a3;
- (void)trackDistributionForMessage:(id)a3 value:(double)a4;
- (void)trackScalarForMessage:(id)a3;
@end

@implementation ATXPETEventTracker2Logger

- (void)logMessage:(id)a3
{
  v3 = MEMORY[0x277D41DA8];
  v4 = a3;
  v5 = [v3 sharedInstance];
  [v5 logMessage:v4];
}

- (void)trackScalarForMessage:(id)a3
{
  v3 = MEMORY[0x277D41DA8];
  v4 = a3;
  v5 = [v3 sharedInstance];
  [v5 trackScalarForMessage:v4];
}

- (void)trackDistributionForMessage:(id)a3 value:(double)a4
{
  v5 = MEMORY[0x277D41DA8];
  v6 = a3;
  v7 = [v5 sharedInstance];
  [v7 trackDistributionForMessage:v6 value:a4];
}

@end