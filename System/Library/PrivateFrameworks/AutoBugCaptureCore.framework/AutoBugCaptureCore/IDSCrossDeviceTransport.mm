@interface IDSCrossDeviceTransport
+ (BOOL)isIDSEndpointEnabled;
- (IDSCrossDeviceTransport)initWithServiceName:(id)a3;
- (unint64_t)deliverMessage:(id)a3 toEndpoint:(id)a4;
- (void)addDelegate:(id)a3 endpoint:(id)a4;
- (void)dealloc;
- (void)registerIDSService;
- (void)removeDelegate:(id)a3 endpoint:(id)a4;
- (void)sendMessage:(id)a3 toIDSDevices:(id)a4 toEndpoint:(id)a5 validFor:(double)a6 reply:(id)a7;
- (void)sendMessage:(id)a3 toIDSDevicesMatching:(id)a4 toEndpoint:(id)a5 reply:(id)a6;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 hasBeenDeliveredWithContext:(id)a6;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)unregisterIDSService;
@end

@implementation IDSCrossDeviceTransport

+ (BOOL)isIDSEndpointEnabled
{
  v2 = +[SystemProperties sharedInstance];
  if ([v2 internalBuild])
  {
    v3 = [v2 factoryBuild] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)dealloc
{
  [(IDSService *)self->_idsService removeDelegate:self];
  v3.receiver = self;
  v3.super_class = IDSCrossDeviceTransport;
  [(IDSCrossDeviceTransport *)&v3 dealloc];
}

- (IDSCrossDeviceTransport)initWithServiceName:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = IDSCrossDeviceTransport;
  v6 = [(IDSCrossDeviceTransport *)&v11 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v8 = dispatch_queue_create("com.apple.symptoms.idsservice.queue", v7);
    idsServiceQueue = v6->_idsServiceQueue;
    v6->_idsServiceQueue = v8;

    objc_storeStrong(&v6->_serviceName, a3);
  }

  return v6;
}

- (void)registerIDSService
{
  v17 = *MEMORY[0x277D85DE8];
  if (+[IDSCrossDeviceTransport isIDSEndpointEnabled]&& !self->_idsService)
  {
    v5 = [objc_alloc(MEMORY[0x277D18778]) initWithService:self->_serviceName];
    idsService = self->_idsService;
    self->_idsService = v5;

    v7 = self->_idsService;
    v8 = crossdeviceLogHandle();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        serviceName = self->_serviceName;
        v15 = 138412290;
        v16 = serviceName;
        _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_INFO, "Registering for IDSService %@", &v15, 0xCu);
      }

      v11 = [MEMORY[0x277CBEB38] dictionary];
      endpointsRegistry = self->_endpointsRegistry;
      self->_endpointsRegistry = v11;

      v13 = [MEMORY[0x277CBEB58] set];
      delegateRegistry = self->_delegateRegistry;
      self->_delegateRegistry = v13;

      [(IDSService *)self->_idsService addDelegate:self queue:self->_idsServiceQueue];
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_ERROR, "Failed to allocate IDSService object", &v15, 2u);
      }
    }
  }

  else
  {
    v3 = crossdeviceLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_DEBUG, "IDSService is already registered.", &v15, 2u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)unregisterIDSService
{
  v10 = *MEMORY[0x277D85DE8];
  idsService = self->_idsService;
  v4 = crossdeviceLogHandle();
  v5 = v4;
  if (idsService)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      serviceName = self->_serviceName;
      v8 = 138412290;
      v9 = serviceName;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_INFO, "Unregistering from IDSService %@", &v8, 0xCu);
    }

    [(IDSService *)self->_idsService removeDelegate:self];
    v5 = self->_idsService;
    self->_idsService = 0;
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, "IDSService is not registered.", &v8, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)sendMessage:(id)a3 toIDSDevicesMatching:(id)a4 toEndpoint:(id)a5 reply:(id)a6
{
  v60 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x277CBEB58] set];
  v15 = [(IDSService *)self->_idsService devices];
  v16 = v15;
  if (v11)
  {
    v17 = [v15 filteredArrayUsingPredicate:v11];

    v18 = crossdeviceLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 134218498;
      v55 = [v17 count];
      v56 = 2112;
      v57 = v11;
      v58 = 2112;
      v59 = v17;
      _os_log_impl(&dword_241804000, v18, OS_LOG_TYPE_INFO, "%ld IDSDevices matched with %@: %@", buf, 0x20u);
    }
  }

  else
  {
    v18 = crossdeviceLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v55 = v16;
      _os_log_impl(&dword_241804000, v18, OS_LOG_TYPE_INFO, "No predicate given, sending to all IDSDevices: %@", buf, 0xCu);
    }

    v17 = v16;
  }

  if ([v17 count])
  {
    v36 = self;
    v37 = v17;
    v38 = v13;
    v39 = v12;
    v40 = v11;
    v41 = v10;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v46;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v46 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v45 + 1) + 8 * i);
          v25 = IDSCopyIDForDevice();
          if ([v25 length])
          {
            [v14 addObject:v25];
          }

          else
          {
            v26 = crossdeviceLogHandle();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v55 = v24;
              _os_log_impl(&dword_241804000, v26, OS_LOG_TYPE_ERROR, "Failed to copy ID for IDS device %@", buf, 0xCu);
            }
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v21);
    }

    if ([v14 count])
    {
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __77__IDSCrossDeviceTransport_sendMessage_toIDSDevicesMatching_toEndpoint_reply___block_invoke;
      v42[3] = &unk_278CF1F58;
      v43 = v14;
      v13 = v38;
      v44 = v38;
      v10 = v41;
      v12 = v39;
      [(IDSCrossDeviceTransport *)v36 sendMessage:v41 toIDSDevices:v43 toEndpoint:v39 reply:v42];

      v27 = v43;
      v11 = v40;
      v17 = v37;
LABEL_31:

      goto LABEL_32;
    }

    v33 = crossdeviceLogHandle();
    v11 = v40;
    v10 = v41;
    v12 = v39;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [v19 count];
      *buf = 134217984;
      v55 = v34;
      _os_log_impl(&dword_241804000, v33, OS_LOG_TYPE_DEFAULT, "No IDS destinations identifiers copied from %lu devices", buf, 0xCu);
    }

    v17 = v37;
    v13 = v38;
    if (v38)
    {
      v49 = @"count";
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
      v50 = v29;
      v30 = MEMORY[0x277CBEAC0];
      v31 = &v50;
      v32 = &v49;
      goto LABEL_30;
    }
  }

  else
  {
    v28 = crossdeviceLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = v11;
      _os_log_impl(&dword_241804000, v28, OS_LOG_TYPE_DEFAULT, "Did not find IDS devices that match %@", buf, 0xCu);
    }

    if (v13)
    {
      v52 = @"count";
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "count")}];
      v53 = v29;
      v30 = MEMORY[0x277CBEAC0];
      v31 = &v53;
      v32 = &v52;
LABEL_30:
      v27 = [v30 dictionaryWithObjects:v31 forKeys:v32 count:{1, v36}];

      (*(v13 + 2))(v13, 0, v27, 0);
      goto LABEL_31;
    }
  }

LABEL_32:

  v35 = *MEMORY[0x277D85DE8];
}

void __77__IDSCrossDeviceTransport_sendMessage_toIDSDevicesMatching_toEndpoint_reply___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = crossdeviceLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"failed";
    v11 = *(a1 + 32);
    if (a2)
    {
      v10 = @"successful";
    }

    v16 = 138412546;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEFAULT, "IDS message sending %@, destinations: %@", &v16, 0x16u);
  }

  if (v8)
  {
    v12 = crossdeviceLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEFAULT, "   Error: %@", &v16, 0xCu);
    }
  }

  if (*(a1 + 40))
  {
    v13 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v7];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
    [v13 setObject:v14 forKeyedSubscript:@"count"];

    (*(*(a1 + 40) + 16))();
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)sendMessage:(id)a3 toIDSDevices:(id)a4 toEndpoint:(id)a5 validFor:(double)a6 reply:(id)a7
{
  v44[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = COERCE_DOUBLE(a4);
  v14 = a5;
  v15 = a7;
  if ([*&v13 count])
  {
    v16 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{v14, @"endpoint", v12, @"message", 0}];
    v17 = 0;
    if (a6 > 0.0)
    {
      v18 = [MEMORY[0x277CBEAA8] date];
      [v18 timeIntervalSince1970];
      v20 = v19 + a6;

      v21 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
      [v16 setObject:v21 forKey:@"ttl"];

      v22 = crossdeviceLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v38 = a6;
        v39 = 2048;
        v40 = v20;
        _os_log_impl(&dword_241804000, v22, OS_LOG_TYPE_DEBUG, "IDS message will expire in %.0lf seconds at %{time_t}ld", buf, 0x16u);
      }

      v17 = [MEMORY[0x277CBEB38] dictionary];
      v23 = [MEMORY[0x277CCABB0] numberWithDouble:a6 + 30.0];
      [v17 setObject:v23 forKeyedSubscript:*MEMORY[0x277D18650]];

      [v17 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D18678]];
    }

    v24 = crossdeviceLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v38 = v13;
      _os_log_impl(&dword_241804000, v24, OS_LOG_TYPE_DEBUG, "Ready to send to IDS destinations with identifiers: %@", buf, 0xCu);
    }

    v35 = 0.0;
    v36 = 0;
    v25 = [(IDSService *)self->_idsService sendMessage:v16 toDestinations:*&v13 priority:300 options:v17 identifier:&v35 error:&v36];
    v26 = crossdeviceLogHandle();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (v25)
    {
      if (v27)
      {
        v28 = v35;
        v29 = [*&v13 count];
        *buf = 138412546;
        v38 = v28;
        v39 = 2048;
        v40 = v29;
        _os_log_impl(&dword_241804000, v26, OS_LOG_TYPE_DEFAULT, "Request to send IDS message %@ to %ld destinations was successful.", buf, 0x16u);
      }

      if (v15)
      {
        v43 = @"IDSMessageIdentifier";
        *v44 = v35;
        v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
        v15[2](v15, 1, v30, 0);
      }
    }

    else
    {
      if (v27)
      {
        v32 = v35;
        v33 = [*&v13 count];
        *buf = 138412802;
        v38 = v32;
        v39 = 2048;
        v40 = v33;
        v41 = 2112;
        v42 = v36;
        _os_log_impl(&dword_241804000, v26, OS_LOG_TYPE_DEFAULT, "Request to send IDS message %@ to %ld destinations failed. %@", buf, 0x20u);
      }

      if (v15)
      {
        v15[2](v15, 0, 0, v36);
      }
    }
  }

  else
  {
    v31 = crossdeviceLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v13;
      _os_log_impl(&dword_241804000, v31, OS_LOG_TYPE_DEFAULT, "Invalid IDS destinations: %@", buf, 0xCu);
    }

    if (v15)
    {
      v15[2](v15, 0, 0, 0);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)addDelegate:(id)a3 endpoint:(id)a4
{
  v10 = a4;
  endpointsRegistry = self->_endpointsRegistry;
  v7 = a3;
  v8 = [(NSMutableDictionary *)endpointsRegistry objectForKeyedSubscript:v10];
  if (v8)
  {
    v9 = v8;
    [v8 addObject:v7];
  }

  else
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithObject:v7];
    [(NSMutableDictionary *)self->_endpointsRegistry setObject:v9 forKeyedSubscript:v10];
  }

  [(NSMutableSet *)self->_delegateRegistry addObject:v7];
}

- (void)removeDelegate:(id)a3 endpoint:(id)a4
{
  v8 = a3;
  v6 = [(NSMutableDictionary *)self->_endpointsRegistry objectForKeyedSubscript:a4];
  v7 = v6;
  if (v6)
  {
    [v6 removeObject:v8];
  }

  [(NSMutableSet *)self->_delegateRegistry removeObject:v8];
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 hasBeenDeliveredWithContext:(id)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v21 = a4;
  v10 = a5;
  v11 = a6;
  if (v11)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@" (context: %@)", v11];
  }

  else
  {
    v12 = &stru_285368168;
  }

  v13 = crossdeviceLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v29 = v10;
    v30 = 2112;
    v31 = v12;
    _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_INFO, "Delivered message via IDS with identifier: %@%@", buf, 0x16u);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = [(NSMutableSet *)self->_delegateRegistry allObjects];
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v19 messageWithIdentifierHasBeenDelivered:v10];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v42 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v16)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@" (context: %@)", v16];
  }

  else
  {
    v17 = &stru_285368168;
  }

  v18 = crossdeviceLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v37 = v15;
    v38 = 2112;
    v39 = v14;
    v40 = 2112;
    v41 = v17;
    _os_log_impl(&dword_241804000, v18, OS_LOG_TYPE_DEFAULT, "Received incoming message via IDS from %@, message %@%@", buf, 0x20u);
  }

  v19 = [v12 deviceForFromID:v15];

  if (v19)
  {
    v35 = self;
    v20 = [v14 objectForKeyedSubscript:@"endpoint"];
    v21 = [v14 objectForKeyedSubscript:@"ttl"];
    v22 = [v14 objectForKeyedSubscript:@"message"];
    if (v21)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = v13;
        v23 = [v21 longValue];
        v24 = crossdeviceLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v37 = v23;
          _os_log_impl(&dword_241804000, v24, OS_LOG_TYPE_INFO, "Message is valid until %{time_t}ld", buf, 0xCu);
        }

        v32 = v23;
        v25 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v23];
        [v25 timeIntervalSinceNow];
        if (v26 < 0.0)
        {
          v27 = crossdeviceLogHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v37 = v32;
            _os_log_impl(&dword_241804000, v27, OS_LOG_TYPE_DEFAULT, "Received message expired at %{time_t}ld. Will NOT deliver to endpoint.", buf, 0xCu);
          }

          v13 = v33;
LABEL_25:

          goto LABEL_26;
        }

        v13 = v33;
      }
    }

    if (v20 && v22)
    {
      v34 = v12;
      v28 = v17;
      v29 = v13;
      v30 = [(IDSCrossDeviceTransport *)v35 deliverMessage:v22 toEndpoint:v20];
      v25 = crossdeviceLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v37 = v30;
        _os_log_impl(&dword_241804000, v25, OS_LOG_TYPE_INFO, "Delivered message to %ld receivers", buf, 0xCu);
      }

      v13 = v29;
      v17 = v28;
      v12 = v34;
    }

    else
    {
      v25 = crossdeviceLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v37 = v20;
        v38 = 2112;
        v39 = v14;
        _os_log_impl(&dword_241804000, v25, OS_LOG_TYPE_ERROR, "Invalid endpoint (%@) or failed to unwrap correctly. Dropping message %@", buf, 0x16u);
      }
    }

    goto LABEL_25;
  }

  v20 = crossdeviceLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v20, OS_LOG_TYPE_ERROR, "Incoming message is not from a local account - dropping", buf, 2u);
  }

LABEL_26:

  v31 = *MEMORY[0x277D85DE8];
}

- (unint64_t)deliverMessage:(id)a3 toEndpoint:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v8 = [(NSMutableDictionary *)self->_endpointsRegistry objectForKeyedSubscript:v7];
  if (v8)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __53__IDSCrossDeviceTransport_deliverMessage_toEndpoint___block_invoke;
    v13[3] = &unk_278CF1F80;
    v14 = v6;
    v15 = &v16;
    [v8 enumerateObjectsUsingBlock:v13];
    v9 = v14;
  }

  else
  {
    v9 = crossdeviceLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v7;
      _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_ERROR, "Unknown endpoint received: %@", buf, 0xCu);
    }
  }

  v10 = v17[3];
  _Block_object_dispose(&v16, 8);

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void __53__IDSCrossDeviceTransport_deliverMessage_toEndpoint___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = crossdeviceLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_DEBUG, "Delivery to %@ with message %@", &v8, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 messageReceivedFromIDS:*(a1 + 32)];
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v6 = crossdeviceLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "Delegatee does not respond to messageReceived:, skipping.", &v8, 2u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end