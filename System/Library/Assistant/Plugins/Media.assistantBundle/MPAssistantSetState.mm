@interface MPAssistantSetState
- (void)performWithCompletion:(id)a3;
@end

@implementation MPAssistantSetState

- (void)performWithCompletion:(id)a3
{
  v4 = MEMORY[0x277D47208];
  v5 = a3;
  v7 = [[v4 alloc] initWithReason:@"unsupported command"];
  v6 = [v7 dictionary];
  (*(a3 + 2))(v5, v6);
}

@end