@interface MPAssistantLoadQuickPlay
- (void)performWithCompletion:(id)a3;
@end

@implementation MPAssistantLoadQuickPlay

- (void)performWithCompletion:(id)a3
{
  v4 = MEMORY[0x277D47208];
  v5 = a3;
  v7 = objc_alloc_init(v4);
  v6 = [v7 dictionary];
  (*(a3 + 2))(v5, v6);
}

@end