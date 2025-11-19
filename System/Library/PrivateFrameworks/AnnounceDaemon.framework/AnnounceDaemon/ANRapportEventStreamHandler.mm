@interface ANRapportEventStreamHandler
- (ANRapportEventStreamHandler)init;
- (void)addAnnounceRapportServiceType;
- (void)addRapportServiceType:(id)a3 activationBlock:(id)a4;
- (void)setEventStreamHandler;
@end

@implementation ANRapportEventStreamHandler

- (ANRapportEventStreamHandler)init
{
  v6.receiver = self;
  v6.super_class = ANRapportEventStreamHandler;
  v2 = [(ANRapportEventStreamHandler *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    rapportActivationHandlers = v2->_rapportActivationHandlers;
    v2->_rapportActivationHandlers = v3;
  }

  return v2;
}

- (void)addRapportServiceType:(id)a3 activationBlock:(id)a4
{
  v6 = a3;
  v8 = _Block_copy(a4);
  v7 = [(ANRapportEventStreamHandler *)self rapportActivationHandlers];
  [v7 setObject:v8 forKeyedSubscript:v6];
}

- (void)addAnnounceRapportServiceType
{
  if ([MEMORY[0x277CEAB38] isAnnounceEnabled])
  {
    v3 = [(ANRapportEventStreamHandler *)self rapportActivationHandlers];
    [v3 setObject:&__block_literal_global_7 forKeyedSubscript:*MEMORY[0x277CEA758]];
  }
}

void __60__ANRapportEventStreamHandler_addAnnounceRapportServiceType__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[ANRapportConnection sharedConnection];
  [v3 activateLinkWithOptions:1 completion:v2];
}

- (void)setEventStreamHandler
{
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __52__ANRapportEventStreamHandler_setEventStreamHandler__block_invoke;
  handler[3] = &unk_278C86728;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.rapport.matching", MEMORY[0x277D85CD0], handler);
}

void __52__ANRapportEventStreamHandler_setEventStreamHandler__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  string = xpc_dictionary_get_string(v3, *MEMORY[0x277D86430]);
  v5 = ANLogHandleRapportEventStreamHandler();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = &stru_2851BDB18;
    v16 = 2080;
    v17 = string;
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "%@XPC Event Stream Name: %s", buf, 0x16u);
  }

  if (string && xpc_dictionary_expects_reply())
  {
    reply = xpc_dictionary_create_reply(v3);
    if (reply)
    {
      v7 = [*(a1 + 32) rapportActivationHandlers];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
      v9 = [v7 objectForKeyedSubscript:v8];

      if (v9)
      {
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __52__ANRapportEventStreamHandler_setEventStreamHandler__block_invoke_6;
        v12[3] = &unk_278C86700;
        v13 = reply;
        (v9)[2](v9, v12);
        v10 = v13;
      }

      else
      {
        v10 = ANLogHandleRapportEventStreamHandler();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v15 = &stru_2851BDB18;
          v16 = 2080;
          v17 = string;
          _os_log_impl(&dword_23F525000, v10, OS_LOG_TYPE_ERROR, "%@Unsupported XPC Event Stream Name: %s", buf, 0x16u);
        }
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __52__ANRapportEventStreamHandler_setEventStreamHandler__block_invoke_6(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    CUXPCEncodeNSError();
  }

  v5 = ANLogHandleRapportEventStreamHandler();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v9 = 138412546;
    v10 = &stru_2851BDB18;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "%@Sending Reply %@", &v9, 0x16u);
  }

  v7 = *(a1 + 32);
  xpc_dictionary_send_reply();

  v8 = *MEMORY[0x277D85DE8];
}

@end