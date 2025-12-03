@interface PDCountedFileSyncAgent
- (PDCountedFileSyncAgent)initWithAgent:(id)agent;
@end

@implementation PDCountedFileSyncAgent

- (PDCountedFileSyncAgent)initWithAgent:(id)agent
{
  agentCopy = agent;
  v9.receiver = self;
  v9.super_class = PDCountedFileSyncAgent;
  v6 = [(PDCountedFileSyncAgent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_agent, agent);
    atomic_store(1u, &v7->_counter);
  }

  return v7;
}

@end