@interface _LTLanguageStatus
- (_LTLanguageStatus)initWithTaskHint:(int64_t)hint useDedicatedMachPort:(BOOL)port observations:(id)observations;
- (void)_start;
- (void)cancel;
- (void)dealloc;
@end

@implementation _LTLanguageStatus

- (void)_start
{
  v3 = +[_LTLanguageStatusMulticaster shared];
  [v3 addObserver:self];
}

- (void)cancel
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _LTOSLogAssets();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    *buf = 138412290;
    v9 = identifier;
    _os_log_impl(&dword_23AAF5000, v3, OS_LOG_TYPE_DEFAULT, "LTLanguageStatus %@ cancel", buf, 0xCu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __27___LTLanguageStatus_cancel__block_invoke;
  v7[3] = &unk_278B6CEE8;
  v7[4] = self;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  __27___LTLanguageStatus_cancel__block_invoke(v7);
  os_unfair_lock_unlock(&self->_lock);
  v5 = +[_LTLanguageStatusMulticaster shared];
  [v5 removeObserver:self];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _LTOSLogAssets();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    *buf = 138412290;
    v8 = identifier;
    _os_log_impl(&dword_23AAF5000, v3, OS_LOG_TYPE_DEFAULT, "LTLanguageStatus %@ dealloc", buf, 0xCu);
  }

  [(_LTLanguageStatus *)self cancel];
  v6.receiver = self;
  v6.super_class = _LTLanguageStatus;
  [(_LTLanguageStatus *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (_LTLanguageStatus)initWithTaskHint:(int64_t)hint useDedicatedMachPort:(BOOL)port observations:(id)observations
{
  portCopy = port;
  v30 = *MEMORY[0x277D85DE8];
  observationsCopy = observations;
  v23.receiver = self;
  v23.super_class = _LTLanguageStatus;
  v9 = [(_LTLanguageStatus *)&v23 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    uUID = [MEMORY[0x277CCAD78] UUID];
    objc_storeStrong(&v10->_identifier, uUID);
    v12 = _LTOSLogAssets();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v25 = uUID;
      v26 = 2048;
      hintCopy = hint;
      v28 = 1024;
      v29 = portCopy;
      _os_log_impl(&dword_23AAF5000, v12, OS_LOG_TYPE_DEFAULT, "LTLanguageStatus %@ alloc task:%zd dedicated:%{BOOL}i", buf, 0x1Cu);
    }

    v10->_taskHint = hint;
    v10->_useDedicatedMachPort = portCopy;
    objc_initWeak(buf, v10);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __72___LTLanguageStatus_initWithTaskHint_useDedicatedMachPort_observations___block_invoke;
    aBlock[3] = &unk_278B6D0B8;
    objc_copyWeak(&v22, buf);
    v13 = uUID;
    v20 = v13;
    v21 = observationsCopy;
    v14 = _Block_copy(aBlock);
    observations = v10->_observations;
    v10->_observations = v14;

    [(_LTLanguageStatus *)v10 _start];
    v16 = v10;

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v10;
}

@end