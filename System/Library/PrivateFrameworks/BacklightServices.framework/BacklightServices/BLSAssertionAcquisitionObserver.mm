@interface BLSAssertionAcquisitionObserver
+ (BLSAssertionAcquisitionObserver)observerWithCompletion:(id)completion;
- (void)completeForAssertion:(uint64_t)assertion success:(void *)success error:;
- (void)initWithCompletion:(void *)completion;
@end

@implementation BLSAssertionAcquisitionObserver

+ (BLSAssertionAcquisitionObserver)observerWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(BLSAssertionAcquisitionObserver *)[self alloc] initWithCompletion:completionCopy];

  return v5;
}

- (void)initWithCompletion:(void *)completion
{
  v3 = a2;
  if (completion)
  {
    v8.receiver = completion;
    v8.super_class = BLSAssertionAcquisitionObserver;
    v4 = objc_msgSendSuper2(&v8, sel_init);
    completion = v4;
    if (v4)
    {
      *(v4 + 2) = 0;
      v5 = MEMORY[0x223D716E0](v3);
      v6 = completion[2];
      completion[2] = v5;
    }
  }

  return completion;
}

- (void)completeForAssertion:(uint64_t)assertion success:(void *)success error:
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  successCopy = success;
  if (self)
  {
    [v7 removeObserver:self];
    os_unfair_lock_lock((self + 8));
    v9 = MEMORY[0x223D716E0](*(self + 16));
    v10 = *(self + 16);
    *(self + 16) = 0;

    os_unfair_lock_unlock((self + 8));
    v11 = bls_assertions_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      explanation = [v7 explanation];
      bls_loggingString = [successCopy bls_loggingString];
      v15 = 134219010;
      selfCopy = self;
      v17 = 2048;
      v18 = v7;
      v19 = 2114;
      v20 = explanation;
      v21 = 1024;
      assertionCopy = assertion;
      v23 = 2114;
      v24 = bls_loggingString;
      _os_log_debug_impl(&dword_21FE25000, v11, OS_LOG_TYPE_DEBUG, "%p completed acquisition for assertion:%p:%{public}@ with success:%{BOOL}u error:%{public}@", &v15, 0x30u);
    }

    (v9)[2](v9, assertion, successCopy);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end