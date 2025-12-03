@interface MPAssistantSetState
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantSetState

- (void)performWithCompletion:(id)completion
{
  v4 = MEMORY[0x277D47208];
  completionCopy = completion;
  v7 = [[v4 alloc] initWithReason:@"unsupported command"];
  dictionary = [v7 dictionary];
  (*(completion + 2))(completionCopy, dictionary);
}

@end