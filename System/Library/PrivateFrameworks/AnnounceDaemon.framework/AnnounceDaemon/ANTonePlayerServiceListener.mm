@interface ANTonePlayerServiceListener
- (ANTonePlayerServiceListener)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_fileURLForTone:(unint64_t)tone;
- (void)cleanForExit;
@end

@implementation ANTonePlayerServiceListener

- (ANTonePlayerServiceListener)init
{
  v12 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = ANTonePlayerServiceListener;
  v2 = [(ANTonePlayerServiceListener *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCAE98]);
    v4 = [v3 initWithMachServiceName:*MEMORY[0x277CEAA30]];
    listener = v2->_listener;
    v2->_listener = v4;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
    v6 = ANLogHandleTonePlayerServiceListener();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v6, OS_LOG_TYPE_DEFAULT, "%@Tone Player Service Listener Up!", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v29 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = ANLogHandleTonePlayerServiceListener();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(connectionCopy, "processIdentifier")}];
    serviceName = [connectionCopy serviceName];
    *buf = 138412802;
    v24 = &stru_2851BDB18;
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = serviceName;
    _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "%@New Connection Request From (PID = %@) For Service: (%@)", buf, 0x20u);
  }

  if (([MEMORY[0x277CEAB38] isAnnounceEnabled] & 1) == 0)
  {
    v14 = ANLogHandleTonePlayerServiceListener();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v14, OS_LOG_TYPE_ERROR, "%@Rejecting connection. Announce not enabled.", buf, 0xCu);
    }

    goto LABEL_13;
  }

  if (([connectionCopy hasAnnounceEntitlement] & 1) == 0)
  {
    v14 = ANLogHandleTonePlayerServiceListener();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *MEMORY[0x277CEAC10];
      *buf = 138412546;
      v24 = &stru_2851BDB18;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&dword_23F525000, v14, OS_LOG_TYPE_ERROR, "%@Missing Announce Entitlement: %@", buf, 0x16u);
    }

LABEL_13:

    v13 = 0;
    goto LABEL_14;
  }

  an_tonePlayerServiceInterface = [MEMORY[0x277CCAE90] an_tonePlayerServiceInterface];
  [connectionCopy setExportedInterface:an_tonePlayerServiceInterface];

  [connectionCopy setExportedObject:self];
  objc_initWeak(&location, connectionCopy);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __66__ANTonePlayerServiceListener_listener_shouldAcceptNewConnection___block_invoke;
  v20[3] = &unk_278C86580;
  objc_copyWeak(&v21, &location);
  [connectionCopy setInterruptionHandler:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __66__ANTonePlayerServiceListener_listener_shouldAcceptNewConnection___block_invoke_5;
  v18[3] = &unk_278C86580;
  objc_copyWeak(&v19, &location);
  [connectionCopy setInvalidationHandler:v18];
  [connectionCopy resume];
  v12 = ANLogHandleTonePlayerServiceListener();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = &stru_2851BDB18;
    v25 = 2112;
    v26 = connectionCopy;
    _os_log_impl(&dword_23F525000, v12, OS_LOG_TYPE_DEFAULT, "%@Connection Accepted: (%@)", buf, 0x16u);
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
  v13 = 1;
LABEL_14:

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

void __66__ANTonePlayerServiceListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandleTonePlayerServiceListener();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = 138412546;
    v6 = &stru_2851BDB18;
    v7 = 2112;
    v8 = WeakRetained;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "%@Connection Interrupted: (%@)", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __66__ANTonePlayerServiceListener_listener_shouldAcceptNewConnection___block_invoke_5(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandleTonePlayerServiceListener();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = 138412546;
    v6 = &stru_2851BDB18;
    v7 = 2112;
    v8 = WeakRetained;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "%@Connection Invalidated: (%@)", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)cleanForExit
{
  listener = [(ANTonePlayerServiceListener *)self listener];
  [listener invalidate];
}

- (id)_fileURLForTone:(unint64_t)tone
{
  if (tone)
  {
    v3 = 0;
  }

  else
  {
    v4 = MEMORY[0x277CBEBC0];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 pathForResource:@"AnnounceSent" ofType:@"wav"];
    v3 = [v4 fileURLWithPath:v6];
  }

  return v3;
}

@end