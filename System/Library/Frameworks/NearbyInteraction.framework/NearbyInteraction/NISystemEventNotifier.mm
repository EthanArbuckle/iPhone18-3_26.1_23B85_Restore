@interface NISystemEventNotifier
- (NISystemEventNotifier)initWithParentSession:(id)a3;
@end

@implementation NISystemEventNotifier

- (NISystemEventNotifier)initWithParentSession:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NISystemEventNotifier;
  v5 = [(NISystemEventNotifier *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->parentSession, v4);
  }

  return v6;
}

void __51__NISystemEventNotifier_notifyPassiveAccessIntent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 _processSystemEvent:*(a1 + 40) reply:&__block_literal_global_1673];
}

void __87__NISystemEventNotifier__notifyResourceUsageLimitExceeded_forSessionConfigurationType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 _processSystemEvent:*(a1 + 40) reply:&__block_literal_global_1675];
}

@end