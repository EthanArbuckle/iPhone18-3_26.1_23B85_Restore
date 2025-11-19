@interface AXRemoteReceiver
- (AXRemoteReceiver)initWithEventID:(id)a3 delegate:(id)a4;
- (AXRemoteReceiverDelegate)delegate;
@end

@implementation AXRemoteReceiver

- (AXRemoteReceiver)initWithEventID:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v32.receiver = self;
  v32.super_class = AXRemoteReceiver;
  v8 = [(AXRemoteReceiver *)&v32 init];
  v9 = v8;
  if (v8)
  {
    [(AXRemoteReceiver *)v8 setDelegate:v7];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_USER_INTERACTIVE, 0);

    v12 = dispatch_queue_create("com.apple.AXRemoteServices.ReceiverQueue", v11);
    queue = v9->_queue;
    v9->_queue = v12;

    objc_initWeak(&location, v9);
    v14 = objc_alloc_init(MEMORY[0x277D44160]);
    [(AXRemoteReceiver *)v9 setCompanionLinkClient:v14];

    v15 = [(AXRemoteReceiver *)v9 companionLinkClient];
    [v15 setAppID:@"com.apple.AXRemoteServices.Receiver"];

    v16 = v9->_queue;
    v17 = [(AXRemoteReceiver *)v9 companionLinkClient];
    [v17 setDispatchQueue:v16];

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __45__AXRemoteReceiver_initWithEventID_delegate___block_invoke;
    v29[3] = &unk_2786658D0;
    objc_copyWeak(&v30, &location);
    v18 = [(AXRemoteReceiver *)v9 companionLinkClient];
    [v18 setDisconnectHandler:v29];

    v19 = [(AXRemoteReceiver *)v9 companionLinkClient];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __45__AXRemoteReceiver_initWithEventID_delegate___block_invoke_3;
    v27[3] = &unk_278665B68;
    objc_copyWeak(&v28, &location);
    [v19 activateWithCompletion:v27];

    v20 = [(AXRemoteReceiver *)v9 companionLinkClient];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __45__AXRemoteReceiver_initWithEventID_delegate___block_invoke_5;
    v25[3] = &unk_278665B90;
    objc_copyWeak(&v26, &location);
    [v20 registerEventID:v6 options:0 handler:v25];

    v21 = [(AXRemoteReceiver *)v9 companionLinkClient];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __45__AXRemoteReceiver_initWithEventID_delegate___block_invoke_7;
    v23[3] = &unk_278665BB8;
    objc_copyWeak(&v24, &location);
    [v21 registerRequestID:@"com.apple.AXRemoteServices.ConnectionSetup" options:0 handler:v23];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __45__AXRemoteReceiver_initWithEventID_delegate___block_invoke(uint64_t a1)
{
  v2 = ax_remote_connection_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_22952F000, v2, OS_LOG_TYPE_INFO, "link client disconnected", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];
  v5 = objc_loadWeakRetained((a1 + 32));
  [v4 remoteReceiverDidDisconnect:v5];
}

void __45__AXRemoteReceiver_initWithEventID_delegate___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ax_remote_connection_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_22952F000, v4, OS_LOG_TYPE_INFO, "Activating companion link client with error: %@", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained delegate];
  v7 = objc_loadWeakRetained((a1 + 32));
  [v6 remoteReceiver:v7 didActivateWithError:v3];

  v8 = *MEMORY[0x277D85DE8];
}

void __45__AXRemoteReceiver_initWithEventID_delegate___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ax_remote_connection_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __45__AXRemoteReceiver_initWithEventID_delegate___block_invoke_5_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained delegate];
  v10 = objc_loadWeakRetained((a1 + 32));
  [v9 remoteReceiver:v10 didReceivePayload:v5 withOptions:v6];
}

void __45__AXRemoteReceiver_initWithEventID_delegate___block_invoke_7(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = ax_remote_connection_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __45__AXRemoteReceiver_initWithEventID_delegate___block_invoke_7_cold_1();
  }

  v11 = [v7 objectForKeyedSubscript:@"isConnecting"];
  v12 = [v11 BOOLValue];

  v13 = [v7 objectForKeyedSubscript:@"connectingDeviceName"];
  v14 = [v7 objectForKeyedSubscript:@"connectingDeviceOptions"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v16 = [WeakRetained delegate];
  v17 = objc_loadWeakRetained((a1 + 32));
  v18 = [v16 remoteReceiver:v17 connectingDevice:v13 setupConnection:v12 withOptions:v14];

  (*(v9 + 2))(v9, v18, 0, 0);
}

- (AXRemoteReceiverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __45__AXRemoteReceiver_initWithEventID_delegate___block_invoke_5_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_22952F000, v0, v1, "Handling inEvent: %@, inOptions: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __45__AXRemoteReceiver_initWithEventID_delegate___block_invoke_7_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_22952F000, v0, v1, "Handling request: %@, inOptions: %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end