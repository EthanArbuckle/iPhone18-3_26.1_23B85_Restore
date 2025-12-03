@interface BaseManualSyncEvent
- (void)configureWithClient:(id)client;
@end

@implementation BaseManualSyncEvent

- (void)configureWithClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  sub_100174A00();
}

@end