@interface ATXBackgroundSaver
- (ATXBackgroundSaver)initWithQueue:(id)a3 block:(id)a4;
- (void)_cancelSaveTimer;
- (void)_cancelSaveTimerWithLockWitness:(id)a3;
- (void)_saveImmediatelyOnSigterm;
- (void)dealloc;
- (void)handleSigterm;
- (void)scheduleSave;
- (void)scheduleSaveImmediately;
@end

@implementation ATXBackgroundSaver

id __34__ATXBackgroundSaver_scheduleSave__block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(*(a1 + 32) + 16) + 16))();
  [*(a1 + 32) _cancelSaveTimer];
  objc_autoreleasePoolPop(v2);
  v3 = *(a1 + 40);
  return objc_opt_self();
}

- (void)_cancelSaveTimer
{
  lock = self->_lock;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__ATXBackgroundSaver__cancelSaveTimer__block_invoke;
  v3[3] = &unk_27859F148;
  v3[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v3];
}

- (void)scheduleSave
{
  sel_getName(a2);
  v3 = os_transaction_create();
  lock = self->_lock;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__ATXBackgroundSaver_scheduleSave__block_invoke;
  v6[3] = &unk_27859F170;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  [(_PASLock *)lock runWithLockAcquired:v6];
}

void __34__ATXBackgroundSaver_scheduleSave__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _saveImmediatelyOnSigterm];
  [*(a1 + 32) _cancelSaveTimerWithLockWitness:v4];
  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(*(a1 + 32) + 8));
  v6 = v4[1];
  v4[1] = v5;

  v7 = v4[1];
  v8 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x12A05F200uLL);
  v9 = v4[1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __34__ATXBackgroundSaver_scheduleSave__block_invoke_2;
  v12[3] = &unk_278596C10;
  v10 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v10;
  dispatch_source_set_event_handler(v9, v12);
  v11 = v4[1];

  dispatch_resume(v11);
}

- (void)_saveImmediatelyOnSigterm
{
  if (!self->_sigtermListener)
  {
    v4 = [MEMORY[0x277CEBCD8] sharedInstance];
    sigtermListener = self->_sigtermListener;
    self->_sigtermListener = v4;

    v6 = self->_sigtermListener;

    [(ATXSigtermListener *)v6 registerObserver:self];
  }
}

- (ATXBackgroundSaver)initWithQueue:(id)a3 block:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = ATXBackgroundSaver;
  v9 = [(ATXBackgroundSaver *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    v11 = [v8 copy];
    block = v10->_block;
    v10->_block = v11;

    v13 = objc_alloc(MEMORY[0x277D425F8]);
    v14 = objc_opt_new();
    v15 = [v13 initWithGuardedData:v14];
    lock = v10->_lock;
    v10->_lock = v15;
  }

  return v10;
}

- (void)dealloc
{
  [(ATXBackgroundSaver *)self _cancelSaveTimer];
  [(ATXSigtermListener *)self->_sigtermListener unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = ATXBackgroundSaver;
  [(ATXBackgroundSaver *)&v3 dealloc];
}

- (void)handleSigterm
{
  lock = self->_lock;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __35__ATXBackgroundSaver_handleSigterm__block_invoke;
  v3[3] = &unk_27859F148;
  v3[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v3];
}

uint64_t __35__ATXBackgroundSaver_handleSigterm__block_invoke(uint64_t result, uint64_t a2)
{
  if (*(a2 + 8))
  {
    return [*(result + 32) scheduleSaveImmediately];
  }

  return result;
}

- (void)scheduleSaveImmediately
{
  sel_getName(a2);
  v3 = os_transaction_create();
  [(ATXBackgroundSaver *)self _cancelSaveTimer];
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__ATXBackgroundSaver_scheduleSaveImmediately__block_invoke;
  v6[3] = &unk_278596C10;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(queue, v6);
}

id __45__ATXBackgroundSaver_scheduleSaveImmediately__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(*(a1 + 32) + 16) + 16))();
  objc_autoreleasePoolPop(v2);
  v3 = *(a1 + 40);
  return objc_opt_self();
}

- (void)_cancelSaveTimerWithLockWitness:(id)a3
{
  v3 = *(a3 + 1);
  if (v3)
  {
    v5 = a3;
    dispatch_source_cancel(v3);
    v6 = *(a3 + 1);
    *(a3 + 1) = 0;
  }
}

@end