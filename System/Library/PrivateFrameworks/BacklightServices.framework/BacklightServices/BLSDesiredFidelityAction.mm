@interface BLSDesiredFidelityAction
- (BLSDesiredFidelityAction)initWithCompletion:(id)a3;
@end

@implementation BLSDesiredFidelityAction

- (BLSDesiredFidelityAction)initWithCompletion:(id)a3
{
  v4 = [MEMORY[0x277CF0B60] responderWithHandler:a3];
  [v4 setQueue:MEMORY[0x277D85CD0]];
  [v4 setTimeout:{dispatch_time(0, 1000000000)}];
  v7.receiver = self;
  v7.super_class = BLSDesiredFidelityAction;
  v5 = [(BLSDesiredFidelityAction *)&v7 initWithInfo:0 responder:v4];

  return v5;
}

@end