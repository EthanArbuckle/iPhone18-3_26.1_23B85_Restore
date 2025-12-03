@interface CSKappaConnection
- (CSKappaConnection)init;
- (void)bringupFeedbackAssistantWithUUID:(id)d;
- (void)defaultMessageHandler:(shared_ptr<CLConnectionMessage>)handler;
- (void)interruptionHandler;
- (void)sendTestAOI:(id)i;
- (void)sendTestPowerAssertion:(double)assertion;
- (void)sendTestSMSignal:(double)signal;
- (void)sendTestSOS;
- (void)sendTestTTR;
- (void)sendTestTrigger;
- (void)testSensorAccessQueryWithReply:(id)reply;
@end

@implementation CSKappaConnection

- (CSKappaConnection)init
{
  v6.receiver = self;
  v6.super_class = CSKappaConnection;
  v2 = [(CSKappaConnection *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSKappaConnectionQueue", 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v3;

    operator new();
  }

  return 0;
}

void __25__CSKappaConnection_init__block_invoke(uint64_t a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  v5 = a2[1];
  v6 = *a2;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [WeakRetained defaultMessageHandler:&v6];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void __25__CSKappaConnection_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained interruptionHandler];
}

- (void)defaultMessageHandler:(shared_ptr<CLConnectionMessage>)handler
{
  var0 = handler.var0;
  v19 = *MEMORY[0x277D85DE8];
  if (onceToken_CSConnection_Default != -1)
  {
    [CSKappaConnection defaultMessageHandler:];
  }

  v4 = logObject_CSConnection_Default;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = CLConnectionMessage::name(*var0);
    v6 = *(v5 + 23);
    v7 = *v5;
    v8 = CLConnectionMessage::getDictionary(*var0);
    v9 = v8;
    if (v6 >= 0)
    {
      v10 = v5;
    }

    else
    {
      v10 = v7;
    }

    v12[0] = 68289538;
    v12[1] = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = v10;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&dword_23AA4D000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:defaultMessageHandler, name:%{public, location:escape_only}s, value:%{public, location:escape_only}@}", v12, 0x26u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)interruptionHandler
{
  if (onceToken_CSConnection_Default != -1)
  {
    [CSKappaConnection defaultMessageHandler:];
  }

  v2 = logObject_CSConnection_Default;
  if (os_log_type_enabled(logObject_CSConnection_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_23AA4D000, v2, OS_LOG_TYPE_DEFAULT, "Connection Interrupted", v3, 2u);
  }
}

- (void)sendTestAOI:(id)i
{
  __p[5] = *MEMORY[0x277D85DE8];
  i;
  std::string::basic_string[abi:ne200100]<0>(__p, [@"com.apple.anomalydetectiond.kappa.aoi.test" UTF8String]);
  std::allocate_shared[abi:ne200100]<CLConnectionMessage,std::allocator<CLConnectionMessage>,std::string,NSDictionary<NSString *,objc_object *> * {__strong}&,0>();
}

- (void)sendTestTrigger
{
  __p[5] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, [@"com.apple.anomalydetectiond.kappa.trigger.test" UTF8String]);
  std::allocate_shared[abi:ne200100]<CLConnectionMessage,std::allocator<CLConnectionMessage>,std::string,0>();
}

- (void)sendTestSOS
{
  __p[5] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, [@"com.apple.anomalydetectiond.kappa.sos.test" UTF8String]);
  std::allocate_shared[abi:ne200100]<CLConnectionMessage,std::allocator<CLConnectionMessage>,std::string,0>();
}

- (void)sendTestTTR
{
  __p[5] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, [@"com.apple.anomalydetectiond.kappa.ttr.test" UTF8String]);
  std::allocate_shared[abi:ne200100]<CLConnectionMessage,std::allocator<CLConnectionMessage>,std::string,0>();
}

- (void)bringupFeedbackAssistantWithUUID:(id)d
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"CSKappaFeedbackAssistantUUIDKey";
  v5[0] = d;
  __p[5] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  std::string::basic_string[abi:ne200100]<0>(__p, [@"CSKappaConnectionBringupFeedbackAssistantMessage" UTF8String]);
  std::allocate_shared[abi:ne200100]<CLConnectionMessage,std::allocator<CLConnectionMessage>,std::string,NSDictionary * {__strong}&,0>();
}

- (void)testSensorAccessQueryWithReply:(id)reply
{
  __p[5] = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  std::string::basic_string[abi:ne200100]<0>(__p, [@"CSKappaConnectionTestSensorAccessQuery" UTF8String]);
  std::allocate_shared[abi:ne200100]<CLConnectionMessage,std::allocator<CLConnectionMessage>,std::string,0>();
}

void __52__CSKappaConnection_testSensorAccessQueryWithReply___block_invoke(uint64_t a1, CLConnectionMessage **a2)
{
  if (onceToken_CSConnection_Default != -1)
  {
    [CSKappaConnection defaultMessageHandler:];
  }

  v4 = logObject_CSConnection_Default;
  if (os_log_type_enabled(logObject_CSConnection_Default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23AA4D000, v4, OS_LOG_TYPE_INFO, "response", buf, 2u);
  }

  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  if (*a2 && (CLConnectionMessage::getDictionaryOfClasses(*a2, v8), v9 = objc_claimAutoreleasedReturnValue(), (v10 = v9) != 0))
  {
    v11 = *(a1 + 32);
    v12 = [v9 objectForKeyedSubscript:@"SensorAccess"];
    (*(v11 + 16))(v11, [v12 BOOLValue]);
  }

  else
  {
    if (onceToken_CSConnection_Default != -1)
    {
      [CSKappaConnection sendTestMessage:];
    }

    v13 = logObject_CSConnection_Default;
    if (os_log_type_enabled(logObject_CSConnection_Default, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_23AA4D000, v13, OS_LOG_TYPE_INFO, "response is nil", v14, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __43__CSKappaConnection_sendCommand_withValue___block_invoke(uint64_t a1, CLConnectionMessage **a2)
{
  if (onceToken_CSConnection_Default != -1)
  {
    [CSKappaConnection defaultMessageHandler:];
  }

  v3 = logObject_CSConnection_Default;
  if (os_log_type_enabled(logObject_CSConnection_Default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23AA4D000, v3, OS_LOG_TYPE_INFO, "response", buf, 2u);
  }

  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v5, v6, v7, objc_opt_class(), 0}];
  if (!*a2 || (CLConnectionMessage::getDictionaryOfClasses(*a2, v8), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (onceToken_CSConnection_Default != -1)
    {
      [CSKappaConnection sendTestMessage:];
    }

    v10 = logObject_CSConnection_Default;
    if (os_log_type_enabled(logObject_CSConnection_Default, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_23AA4D000, v10, OS_LOG_TYPE_INFO, "response is nil", v11, 2u);
    }

    v9 = 0;
  }
}

- (void)sendTestSMSignal:(double)signal
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"testSMSignal";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:signal];
  v6[0] = v3;
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  objc_claimAutoreleasedReturnValue();

  std::string::basic_string[abi:ne200100]<0>(&__p, [@"com.apple.anomalydetectiond.kappa.signal.test" UTF8String]);
  std::allocate_shared[abi:ne200100]<CLConnectionMessage,std::allocator<CLConnectionMessage>,std::string,NSDictionary * {__strong}&,0>();
}

- (void)sendTestPowerAssertion:(double)assertion
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"testPowerAssertionCmd";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:assertion];
  v6[0] = v3;
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  objc_claimAutoreleasedReturnValue();

  std::string::basic_string[abi:ne200100]<0>(&__p, [@"com.apple.anomalydetectiond.kappa.powerassertion.test" UTF8String]);
  std::allocate_shared[abi:ne200100]<CLConnectionMessage,std::allocator<CLConnectionMessage>,std::string,NSDictionary * {__strong}&,0>();
}

@end