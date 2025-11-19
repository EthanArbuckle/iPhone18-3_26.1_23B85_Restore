@interface PDCountedFileSyncAgent
- (PDCountedFileSyncAgent)initWithAgent:(id)a3;
@end

@implementation PDCountedFileSyncAgent

- (PDCountedFileSyncAgent)initWithAgent:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PDCountedFileSyncAgent;
  v6 = [(PDCountedFileSyncAgent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_agent, a3);
    atomic_store(1u, &v7->_counter);
  }

  return v7;
}

@end