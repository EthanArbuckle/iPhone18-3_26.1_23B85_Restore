@interface BLSHInvalidationTimer
- (void)timerFired;
@end

@implementation BLSHInvalidationTimer

- (void)timerFired
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [(BLSHAssertionAttributeTimer *)self service];
  v4 = [(BLSHAssertionAttributeTimer *)self assertion];
  v5 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277CF0828];
  v10 = *MEMORY[0x277CCA450];
  v11[0] = @"invalidation duration expired";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v5 errorWithDomain:v6 code:10 userInfo:v7];
  [v3 cancelAssertion:v4 withError:v8];

  [(BLSHAssertionAttributeTimer *)self invalidate];
  v9 = *MEMORY[0x277D85DE8];
}

@end