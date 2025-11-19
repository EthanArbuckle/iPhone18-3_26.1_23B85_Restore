@interface RTAIDManagerCallStateReporter
- (RTAIDManagerCallStateReporter)init;
- (void)callObserver:(id)a3 callChanged:(id)a4;
- (void)postInit;
@end

@implementation RTAIDManagerCallStateReporter

- (void)callObserver:(id)a3 callChanged:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 calls];
  v7 = [v6 count];

  if (v7)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [v5 calls];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if ([v12 hasConnected] && (objc_msgSend(v12, "isOnHold") & 1) == 0)
          {
            atomic_store(1u, &self->_callConnected);

            goto LABEL_14;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  atomic_store(0, &self->_callConnected);
LABEL_14:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)postInit
{
  v3 = objc_alloc_init(MEMORY[0x277CBAF70]);
  [(CXCallObserver *)v3 setDelegate:self queue:0];
  callObserver = self->_callObserver;
  self->_callObserver = v3;
}

- (RTAIDManagerCallStateReporter)init
{
  v14 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = RTAIDManagerCallStateReporter;
  v2 = [(RTAIDManagerCallStateReporter *)&v9 init];
  if (v2)
  {
    v3 = dispatch_time(0, 10000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__RTAIDManagerCallStateReporter_init__block_invoke;
    block[3] = &unk_278CE0D58;
    v8 = v2;
    dispatch_after(v3, MEMORY[0x277D85CD0], block);
    {
      rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
    }

    v4 = rtaid::get_log(void)::rtaid_os_log;
    if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v11 = "ManagerCallState.mm";
      v12 = 1024;
      v13 = 39;
      _os_log_impl(&dword_241557000, v4, OS_LOG_TYPE_DEFAULT, "%s:%-5d initWithCallReporterBlock setup", buf, 0x12u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

@end