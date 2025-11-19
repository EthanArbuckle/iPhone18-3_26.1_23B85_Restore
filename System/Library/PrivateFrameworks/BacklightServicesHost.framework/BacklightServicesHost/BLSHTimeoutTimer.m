@interface BLSHTimeoutTimer
- (BOOL)reactivateIfPossible;
- (void)reactivateIfPossible;
- (void)restartTimer;
- (void)timerFired;
@end

@implementation BLSHTimeoutTimer

- (BOOL)reactivateIfPossible
{
  v3 = bls_assertions_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(BLSHTimeoutTimer *)self reactivateIfPossible];
  }

  [(BLSHTimeoutTimer *)self restartTimer];
  return 1;
}

- (void)timerFired
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [(BLSHAssertionAttributeTimer *)self service];
  v4 = [(BLSHAssertionAttributeTimer *)self assertion];
  v5 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277CF0828];
  v10 = *MEMORY[0x277CCA450];
  v11[0] = @"timeout duration expired";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v5 errorWithDomain:v6 code:11 userInfo:v7];
  [v3 cancelAssertion:v4 withError:v8];

  [(BLSHAssertionAttributeTimer *)self cancel];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)restartTimer
{
  [(BLSHAssertionAttributeTimer *)self cancel];

  [(BLSHAssertionAttributeTimer *)self startTimer];
}

- (void)reactivateIfPossible
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [a1 attribute];
  v5 = [a1 assertion];
  v7 = 134218754;
  v8 = a1;
  v9 = 2114;
  v10 = a1;
  v11 = 2112;
  v12 = v4;
  v13 = 2112;
  v14 = v5;
  _os_log_debug_impl(&dword_21FD11000, a2, OS_LOG_TYPE_DEBUG, "%p will restart timer:%{public}@ for attribute:%{pubic}@ assertion:%{pubic}@", &v7, 0x2Au);

  v6 = *MEMORY[0x277D85DE8];
}

@end