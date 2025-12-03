@interface MPAssistantLoadQuickPlay
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantLoadQuickPlay

- (void)performWithCompletion:(id)completion
{
  v4 = MEMORY[0x277D47208];
  completionCopy = completion;
  v7 = objc_alloc_init(v4);
  dictionary = [v7 dictionary];
  (*(completion + 2))(completionCopy, dictionary);
}

@end