@interface BLSHCriticalAssertTester
- (BLSHCriticalAssertTester)initWithNotificationName:(id)name;
- (void)_triggerTestCriticalAssert:(id)assert;
@end

@implementation BLSHCriticalAssertTester

- (BLSHCriticalAssertTester)initWithNotificationName:(id)name
{
  nameCopy = name;
  v8.receiver = self;
  v8.super_class = BLSHCriticalAssertTester;
  v5 = [(BLSHCriticalAssertTester *)&v8 init];
  if (v5)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, _triggerTestCriticalAssert, nameCopy, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v5;
}

- (void)_triggerTestCriticalAssert:(id)assert
{
  assertCopy = assert;
  assertCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Test Critical Assert did fail: %@", assertCopy];
  BLSHRecordCriticalAssertFailure(assertCopy, 1, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__BLSHCriticalAssertTester__triggerTestCriticalAssert___block_invoke;
  v10[3] = &unk_27841E510;
  selfCopy = self;
  v13 = a2;
  v11 = assertCopy;
  v7 = assertCopy;
  v8 = MEMORY[0x223D70730](v10);
  if (BLSHIsUnitTestRunning())
  {
    v8[2](v8);
  }

  else
  {
    v9 = dispatch_time(0, 1000000000);
    dispatch_after(v9, MEMORY[0x277D85CD0], v8);
  }
}

void __55__BLSHCriticalAssertTester__triggerTestCriticalAssert___block_invoke(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"BLSHCriticalAssertDidFailNotification", 0, 0, 4u);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Test Critical Assert did fail: %@", *(a1 + 32)];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(*(a1 + 48));
    v5 = *(a1 + 40);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = *(a1 + 40);
    *buf = 138544642;
    v10 = v4;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = v8;
    v15 = 2114;
    v16 = @"BLSHCriticalAssertTester.m";
    v17 = 1024;
    v18 = 27;
    v19 = 2114;
    v20 = v3;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end