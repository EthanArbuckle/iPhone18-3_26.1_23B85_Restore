@interface EKDataProtectionObserver
- (BOOL)dataIsAccessible;
- (EKDataProtectionObserver)init;
- (void)_dataProtectionStateChanged;
@end

@implementation EKDataProtectionObserver

- (EKDataProtectionObserver)init
{
  v9.receiver = self;
  v9.super_class = EKDataProtectionObserver;
  v2 = [(EKDataProtectionObserver *)&v9 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = objc_alloc_init(MEMORY[0x1E6992DE8]);
    [(EKDataProtectionObserver *)v2 setDataProtectionObserver:v3];

    v6 = MEMORY[0x1E69E9820];
    objc_copyWeak(&v7, &location);
    v4 = [(EKDataProtectionObserver *)v2 dataProtectionObserver:v6];
    [v4 setStateChangedCallback:&v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __32__EKDataProtectionObserver_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dataProtectionStateChanged];
}

- (void)_dataProtectionStateChanged
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD98];
  selfCopy = self;
  v5 = [v3 numberWithBool:{objc_msgSend(a2, "dataIsAccessible")}];
  v7 = 138412290;
  v8 = v5;
  _os_log_debug_impl(&dword_1A805E000, selfCopy, OS_LOG_TYPE_DEBUG, "Data protection state changed.  New 'dataIsAccessible' state: [%@].", &v7, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)dataIsAccessible
{
  dataProtectionObserver = [(EKDataProtectionObserver *)self dataProtectionObserver];
  dataIsAccessible = [dataProtectionObserver dataIsAccessible];

  return dataIsAccessible;
}

@end