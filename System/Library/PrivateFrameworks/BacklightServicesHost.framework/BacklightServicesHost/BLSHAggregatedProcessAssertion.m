@interface BLSHAggregatedProcessAssertion
- (BLSHAggregatedProcessAssertion)initWithExplanation:(id)a3 processIdentity:(id)a4 duration:(double)a5;
- (NSString)description;
- (id)createRBSAssertion;
- (void)createRBSAssertion;
- (void)dealloc;
@end

@implementation BLSHAggregatedProcessAssertion

- (id)createRBSAssertion
{
  v15[4] = *MEMORY[0x277D85DE8];
  v3 = bls_scenes_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(BLSHAggregatedProcessAssertion *)self createRBSAssertion];
  }

  v4 = [MEMORY[0x277D47008] targetWithProcessIdentity:self->_processIdentity];
  duration = self->_duration;
  if (duration == 1.79769313e308)
  {
    v6 = [MEMORY[0x277D46E70] grant];
    v7 = [MEMORY[0x277D46DF0] grantUserInitiated];
    v14[1] = v7;
    v8 = [MEMORY[0x277D46EA8] grantWithBackgroundPriority];
    v14[2] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  }

  else
  {
    v6 = [MEMORY[0x277D46E48] attributeWithDuration:1 warningDuration:1 startPolicy:duration endPolicy:0.0];
    v15[0] = v6;
    v7 = [MEMORY[0x277D46E70] grant];
    v15[1] = v7;
    v8 = [MEMORY[0x277D46DF0] grantUserInitiated];
    v15[2] = v8;
    v9 = [MEMORY[0x277D46EA8] grantWithBackgroundPriority];
    v15[3] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
  }

  v11 = [objc_alloc(MEMORY[0x277D46DB8]) initWithExplanation:self->_explanation target:v4 attributes:v10];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)dealloc
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_invalidated", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (BLSHAggregatedProcessAssertion)initWithExplanation:(id)a3 processIdentity:(id)a4 duration:(double)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = BLSHAggregatedProcessAssertion;
  v11 = [(BLSHAggregatedProcessAssertion *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_processIdentity, a4);
    objc_storeStrong(&v12->_explanation, a3);
    v12->_duration = a5;
  }

  return v12;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_explanation withName:@"explanation"];
  v4 = [v3 appendObject:self->_processIdentity withName:@"processIdentity"];
  if (self->_duration != 1.79769313e308)
  {
    v5 = [v3 appendDouble:@"duration" withName:3 decimalPrecision:?];
  }

  v6 = [v3 build];

  return v6;
}

- (void)createRBSAssertion
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 134218242;
  v5 = a1;
  v6 = 2114;
  v7 = v2;
  _os_log_debug_impl(&dword_21FD11000, a2, OS_LOG_TYPE_DEBUG, "%p:createRBSAssertion, creating new RBS assertion for %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end