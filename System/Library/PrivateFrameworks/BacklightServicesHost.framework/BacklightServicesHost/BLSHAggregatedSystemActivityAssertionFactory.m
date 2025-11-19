@interface BLSHAggregatedSystemActivityAssertionFactory
- (BLSHAggregatedSystemActivityAssertionFactory)init;
- (id)createAggregatedSystemActivityAssertionWithIdentifier:(id)a3 configurator:(id)a4;
@end

@implementation BLSHAggregatedSystemActivityAssertionFactory

- (BLSHAggregatedSystemActivityAssertionFactory)init
{
  v6.receiver = self;
  v6.super_class = BLSHAggregatedSystemActivityAssertionFactory;
  v2 = [(BLSHAggregatedSystemActivityAssertionFactory *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    lock_aggregateAssertions = v2->_lock_aggregateAssertions;
    v2->_lock_aggregateAssertions = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (id)createAggregatedSystemActivityAssertionWithIdentifier:(id)a3 configurator:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  v8 = objc_opt_new();
  v6[2](v6, v8);
  v9 = MEMORY[0x277CCABB0];
  if ([v8 acquireWaitsToAbortSleepRequested])
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v9 numberWithInt:{v10 | objc_msgSend(v8, "acquireWaitsToAbortSleepRequested")}];
  v12 = [(NSMapTable *)self->_lock_aggregateAssertions objectForKey:v11];
  if (!v12)
  {
    v12 = [[BLSHAggregateSystemActivityAssertion alloc] initWithConfigurator:v6];
    [(NSMapTable *)self->_lock_aggregateAssertions setObject:v12 forKey:v11];
  }

  v13 = [[BLSHIndividualSystemActivityAssertion alloc] initWithWithIdentifier:v7 aggregator:v12];

  os_unfair_lock_unlock(&self->_lock);

  return v13;
}

@end