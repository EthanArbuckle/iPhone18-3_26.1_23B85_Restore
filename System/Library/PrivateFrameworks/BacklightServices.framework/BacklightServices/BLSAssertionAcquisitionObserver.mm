@interface BLSAssertionAcquisitionObserver
+ (BLSAssertionAcquisitionObserver)observerWithCompletion:(id)a3;
- (void)completeForAssertion:(uint64_t)a3 success:(void *)a4 error:;
- (void)initWithCompletion:(void *)a1;
@end

@implementation BLSAssertionAcquisitionObserver

+ (BLSAssertionAcquisitionObserver)observerWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BLSAssertionAcquisitionObserver *)[a1 alloc] initWithCompletion:v4];

  return v5;
}

- (void)initWithCompletion:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v8.receiver = a1;
    v8.super_class = BLSAssertionAcquisitionObserver;
    v4 = objc_msgSendSuper2(&v8, sel_init);
    a1 = v4;
    if (v4)
    {
      *(v4 + 2) = 0;
      v5 = MEMORY[0x223D716E0](v3);
      v6 = a1[2];
      a1[2] = v5;
    }
  }

  return a1;
}

- (void)completeForAssertion:(uint64_t)a3 success:(void *)a4 error:
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    [v7 removeObserver:a1];
    os_unfair_lock_lock((a1 + 8));
    v9 = MEMORY[0x223D716E0](*(a1 + 16));
    v10 = *(a1 + 16);
    *(a1 + 16) = 0;

    os_unfair_lock_unlock((a1 + 8));
    v11 = bls_assertions_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = [v7 explanation];
      v14 = [v8 bls_loggingString];
      v15 = 134219010;
      v16 = a1;
      v17 = 2048;
      v18 = v7;
      v19 = 2114;
      v20 = v13;
      v21 = 1024;
      v22 = a3;
      v23 = 2114;
      v24 = v14;
      _os_log_debug_impl(&dword_21FE25000, v11, OS_LOG_TYPE_DEBUG, "%p completed acquisition for assertion:%p:%{public}@ with success:%{BOOL}u error:%{public}@", &v15, 0x30u);
    }

    (v9)[2](v9, a3, v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end