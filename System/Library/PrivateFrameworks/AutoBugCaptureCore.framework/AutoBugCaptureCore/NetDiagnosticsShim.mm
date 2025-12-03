@interface NetDiagnosticsShim
- (BOOL)netDiagnosticTaskStatusWithReply:(id)reply;
- (BOOL)startNetDiagnosticTaskWithOptions:(id)options reply:(id)reply;
- (BOOL)stopNetDiagnosticTaskWithReply:(id)reply;
- (NetDiagnosticsShim)initWithTaskName:(id)name queue:(id)queue;
- (id)_connectionForServiceNamed:(const char *)named queue:(id)queue connectionInvalidHandler:(id)handler;
- (id)createNotificationListener;
- (void)connectToNetDiagnosticsd;
- (void)dealloc;
- (void)invalidateConnections;
- (void)sendNotificationListener;
@end

@implementation NetDiagnosticsShim

- (NetDiagnosticsShim)initWithTaskName:(id)name queue:(id)queue
{
  v29 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  queueCopy = queue;
  v26.receiver = self;
  v26.super_class = NetDiagnosticsShim;
  v9 = [(NetDiagnosticsShim *)&v26 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_24;
  }

  objc_storeStrong(&v9->_taskName, name);
  if (!queueCopy)
  {
    v13 = symptomsLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_ERROR, "Passing in a nil queue to NetDiagnosticsShim is NOT recommended!!!", buf, 2u);
    }

    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.symptoms.%@.netdiag.msg.queue", nameCopy];
    nameCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.symptoms.%@.netdiag.msg.queue", nameCopy];
    v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v16 = dispatch_queue_create([nameCopy UTF8String], v15);
    netDiagMsgQueue = v10->_netDiagMsgQueue;
    v10->_netDiagMsgQueue = v16;

    if (v10->_netDiagMsgQueue)
    {
      v18 = dispatch_queue_create([nameCopy2 UTF8String], v15);
      netDiagConnQueue = v10->_netDiagConnQueue;
      v10->_netDiagConnQueue = v18;

      if (v10->_netDiagConnQueue)
      {

LABEL_23:
        goto LABEL_24;
      }

      v20 = symptomsLogHandle();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      uTF8String = [nameCopy2 UTF8String];
      *buf = 136315138;
      v28 = uTF8String;
      v22 = "Couldn't create _netDiagConnQueue %s";
    }

    else
    {
      v20 = symptomsLogHandle();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
LABEL_21:

        goto LABEL_22;
      }

      uTF8String2 = [nameCopy UTF8String];
      *buf = 136315138;
      v28 = uTF8String2;
      v22 = "Couldn't create _netDiagMsgQueue for %s";
    }

    _os_log_impl(&dword_241804000, v20, OS_LOG_TYPE_ERROR, v22, buf, 0xCu);
    goto LABEL_21;
  }

  objc_storeStrong(&v10->_netDiagMsgQueue, queue);
  if (!v10->_netDiagMsgQueue)
  {
    nameCopy2 = symptomsLogHandle();
    if (os_log_type_enabled(nameCopy2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v12 = "require non-nil _netDiagMsgQueue";
      goto LABEL_14;
    }

LABEL_15:
    nameCopy = v10;
LABEL_22:
    v10 = 0;
    goto LABEL_23;
  }

  objc_storeStrong(&v10->_netDiagConnQueue, queue);
  if (!v10->_netDiagConnQueue)
  {
    nameCopy2 = symptomsLogHandle();
    if (os_log_type_enabled(nameCopy2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v12 = "require non-nil _netDiagConnQueue";
LABEL_14:
      _os_log_impl(&dword_241804000, nameCopy2, OS_LOG_TYPE_ERROR, v12, buf, 2u);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

LABEL_24:

  v24 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)connectToNetDiagnosticsd
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self->_netDiagServiceConnection)
  {
    if (self->_netDiagMsgQueue)
    {
      netDiagConnQueue = self->_netDiagConnQueue;
      if (netDiagConnQueue)
      {
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __46__NetDiagnosticsShim_connectToNetDiagnosticsd__block_invoke;
        v12[3] = &unk_278CEFE88;
        v12[4] = self;
        v5 = [(NetDiagnosticsShim *)self _connectionForServiceNamed:kNetDiagXPCService[0] queue:netDiagConnQueue connectionInvalidHandler:v12];
        netDiagServiceConnection = self->_netDiagServiceConnection;
        self->_netDiagServiceConnection = v5;

        if (self->_netDiagServiceConnection)
        {
          createNotificationListener = [(NetDiagnosticsShim *)self createNotificationListener];
          netDiagNotificationListener = self->_netDiagNotificationListener;
          self->_netDiagNotificationListener = createNotificationListener;

          if (self->_netDiagNotificationListener)
          {
            [(NetDiagnosticsShim *)self sendNotificationListener];
            goto LABEL_2;
          }

          v9 = symptomsLogHandle();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            taskName = [(NetDiagnosticsShim *)self taskName];
            *buf = 138412290;
            v14 = taskName;
            v11 = "Can't create a listener for notifications for %@";
            goto LABEL_12;
          }
        }

        else
        {
          v9 = symptomsLogHandle();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            taskName = [(NetDiagnosticsShim *)self taskName];
            *buf = 138412290;
            v14 = taskName;
            v11 = "Can't connect to XPC service for %@";
LABEL_12:
            _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);
          }
        }
      }
    }
  }

LABEL_2:
  v2 = *MEMORY[0x277D85DE8];
}

void __46__NetDiagnosticsShim_connectToNetDiagnosticsd__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

- (void)dealloc
{
  [(NetDiagnosticsShim *)self invalidateConnections];
  v3.receiver = self;
  v3.super_class = NetDiagnosticsShim;
  [(NetDiagnosticsShim *)&v3 dealloc];
}

- (void)invalidateConnections
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = symptomsLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    taskName = [(NetDiagnosticsShim *)self taskName];
    v12 = 138412290;
    v13 = taskName;
    _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_INFO, "Invalidating connections (%@)", &v12, 0xCu);
  }

  netDiagServiceConnection = self->_netDiagServiceConnection;
  if (netDiagServiceConnection)
  {
    xpc_connection_cancel(netDiagServiceConnection);
    v6 = self->_netDiagServiceConnection;
    self->_netDiagServiceConnection = 0;
  }

  netDiagNotificationConnection = self->_netDiagNotificationConnection;
  if (netDiagNotificationConnection)
  {
    xpc_connection_cancel(netDiagNotificationConnection);
    v8 = self->_netDiagNotificationConnection;
    self->_netDiagNotificationConnection = 0;
  }

  netDiagNotificationListener = self->_netDiagNotificationListener;
  if (netDiagNotificationListener)
  {
    xpc_connection_cancel(netDiagNotificationListener);
    v10 = self->_netDiagNotificationListener;
    self->_netDiagNotificationListener = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)startNetDiagnosticTaskWithOptions:(id)options reply:(id)reply
{
  optionsCopy = options;
  replyCopy = reply;
  v8 = xpc_dictionary_create(0, 0, 0);
  if (v8)
  {
    v9 = [optionsCopy objectForKeyedSubscript:@"taskName"];
    if ([v9 UTF8String] && *objc_msgSend(v9, "UTF8String"))
    {
      xpc_dictionary_set_string(v8, kNetDiagCommand[0], kNetDiagCmdTaskRun[0]);
      xpc_dictionary_set_string(v8, kNetDiagKey[0], [v9 UTF8String]);
      v10 = [optionsCopy objectForKeyedSubscript:@"taskFileAge"];
      v11 = v10;
      if (v10)
      {
        xpc_dictionary_set_uint64(v8, kNetDiagTaskFileAge[0], [v10 unsignedLongLongValue]);
      }

      v43 = v11;
      v12 = [optionsCopy objectForKeyedSubscript:@"filename"];
      if ([v12 UTF8String] && *objc_msgSend(v12, "UTF8String"))
      {
        xpc_dictionary_set_string(v8, kNetDiagTaskFilePath[0], [v12 UTF8String]);
      }

      v13 = [optionsCopy objectForKeyedSubscript:@"taskFileUserID"];
      v14 = v13;
      if (v13)
      {
        xpc_dictionary_set_int64(v8, kNetDiagTaskFileUserID[0], [v13 longLongValue]);
      }

      v15 = [optionsCopy objectForKeyedSubscript:@"taskFileGroupID"];
      v16 = v15;
      if (v15)
      {
        xpc_dictionary_set_int64(v8, kNetDiagTaskFileGroupID[0], [v15 longLongValue]);
      }

      v17 = [optionsCopy objectForKeyedSubscript:@"taskFileMode"];
      v18 = v17;
      if (v17)
      {
        xpc_dictionary_set_int64(v8, kNetDiagTaskFileMode[0], [v17 longLongValue]);
      }

      v19 = [optionsCopy objectForKeyedSubscript:@"taskFileDicts"];
      v39 = v19;
      if (v19 && [v19 count])
      {
        v20 = _CFXPCCreateXPCObjectFromCFObject();
        if (v20)
        {
          xpc_dictionary_set_value(v8, kNetDiagTaskFilePaths[0], v20);
        }
      }

      v41 = v16;
      v21 = [optionsCopy objectForKeyedSubscript:@"taskGNISensitive"];
      v22 = v21;
      if (v21)
      {
        xpc_dictionary_set_BOOL(v8, kNetDiagTaskGNISensitive[0], [v21 BOOLValue]);
      }

      v40 = v18;
      v23 = [optionsCopy objectForKeyedSubscript:{@"taskGNISysConfig", v22}];
      v24 = v23;
      if (v23)
      {
        xpc_dictionary_set_BOOL(v8, kNetDiagTaskGNISysConfig[0], [v23 BOOLValue]);
      }

      v42 = v14;
      v25 = [optionsCopy objectForKeyedSubscript:@"taskGNINDFInfo"];
      v26 = v25;
      if (v25)
      {
        xpc_dictionary_set_BOOL(v8, kNetDiagTaskGNINDFInfo[0], [v25 BOOLValue]);
      }

      v27 = [optionsCopy objectForKeyedSubscript:@"taskArchiveBaseSize"];
      v28 = v27;
      if (v27)
      {
        xpc_dictionary_set_uint64(v8, kNetDiagTaskLogArchiveBaseSize[0], [v27 unsignedIntegerValue]);
      }

      v29 = [optionsCopy objectForKeyedSubscript:@"taskArchiveBaseDuration"];

      if (v29)
      {
        xpc_dictionary_set_uint64(v8, kNetDiagTaskLogArchiveBaseDuration[0], [v29 unsignedIntegerValue]);
      }

      v30 = [optionsCopy objectForKeyedSubscript:@"taskArchiveTTLSize"];

      if (v30)
      {
        xpc_dictionary_set_uint64(v8, kNetDiagTaskLogArchiveTTLSize[0], [v30 unsignedIntegerValue]);
      }

      v31 = [optionsCopy objectForKeyedSubscript:@"taskArchiveTTLDuration"];

      if (v31)
      {
        xpc_dictionary_set_uint64(v8, kNetDiagTaskLogArchiveTTLDuration[0], [v31 unsignedIntegerValue]);
      }

      v32 = [optionsCopy objectForKeyedSubscript:@"taskArchiveHVSize"];

      if (v32)
      {
        xpc_dictionary_set_uint64(v8, kNetDiagTaskLogArchiveHVSize[0], [v32 unsignedIntegerValue]);
      }

      v33 = [optionsCopy objectForKeyedSubscript:@"taskArchiveHVDuration"];

      if (v33)
      {
        xpc_dictionary_set_uint64(v8, kNetDiagTaskLogArchiveHVDuration[0], [v33 integerValue]);
      }

      [(NetDiagnosticsShim *)self connectToNetDiagnosticsd];
      netDiagServiceConnection = self->_netDiagServiceConnection;
      netDiagMsgQueue = self->_netDiagMsgQueue;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __62__NetDiagnosticsShim_startNetDiagnosticTaskWithOptions_reply___block_invoke;
      handler[3] = &unk_278CF1488;
      v46 = replyCopy;
      v45 = v9;
      xpc_connection_send_message_with_reply(netDiagServiceConnection, v8, netDiagMsgQueue, handler);

      v36 = 1;
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

void __62__NetDiagnosticsShim_startNetDiagnosticTaskWithOptions_reply___block_invoke(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x245CF1660]();
  if (v4 == MEMORY[0x277D86480])
  {
    v6 = symptomsLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_INFO, "kNetDiagCmdTaskRun failed!", buf, 2u);
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = *MEMORY[0x277CCA5B8];
      v15 = @"error";
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"An XPC error occurred while processing task: %@. (kNetDiagCmdTaskRun failure)", *(a1 + 32)];
      v16[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v12 = [v8 errorWithDomain:v9 code:5 userInfo:v11];
      (*(v7 + 16))(v7, 0, v12);
    }
  }

  else if (v4 == MEMORY[0x277D86468] && *(a1 + 40))
  {
    v5 = _CFXPCCreateCFObjectFromXPCObject();
    (*(*(a1 + 40) + 16))();
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)stopNetDiagnosticTaskWithReply:(id)reply
{
  replyCopy = reply;
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (v5)
  {
    xpc_dictionary_set_string(v5, kNetDiagCommand[0], kNetDiagCmdTaskStop[0]);
    xpc_dictionary_set_string(v6, kNetDiagKey[0], [(NSString *)self->_taskName UTF8String]);
    [(NetDiagnosticsShim *)self connectToNetDiagnosticsd];
    netDiagServiceConnection = self->_netDiagServiceConnection;
    netDiagMsgQueue = self->_netDiagMsgQueue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__NetDiagnosticsShim_stopNetDiagnosticTaskWithReply___block_invoke;
    v10[3] = &unk_278CF1488;
    v10[4] = self;
    v11 = replyCopy;
    xpc_connection_send_message_with_reply(netDiagServiceConnection, v6, netDiagMsgQueue, v10);
  }

  return v6 != 0;
}

void __53__NetDiagnosticsShim_stopNetDiagnosticTaskWithReply___block_invoke(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x245CF1660]();
  if (v4 == MEMORY[0x277D86480])
  {
    v6 = symptomsLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_INFO, "kNetDiagCmdTaskStop failed!", buf, 2u);
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = *MEMORY[0x277CCA5B8];
      v15 = @"error";
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Stopping %@ failed!", *(*(a1 + 32) + 56)];
      v16[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v12 = [v8 errorWithDomain:v9 code:5 userInfo:v11];
      (*(v7 + 16))(v7, 0, v12);
    }
  }

  else if (v4 == MEMORY[0x277D86468] && *(a1 + 40))
  {
    v5 = _CFXPCCreateCFObjectFromXPCObject();
    (*(*(a1 + 40) + 16))();
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)netDiagnosticTaskStatusWithReply:(id)reply
{
  replyCopy = reply;
  v5 = xpc_dictionary_create(0, 0, 0);
  if (v5)
  {
    v6 = xpc_array_create(0, 0);
    if (v6)
    {
      v7 = xpc_string_create([(NSString *)self->_taskName UTF8String]);
      v8 = v7 != 0;
      if (v7)
      {
        xpc_array_append_value(v6, v7);
        xpc_dictionary_set_value(v5, kNetDiagKeyArray[0], v6);
        xpc_dictionary_set_string(v5, kNetDiagCommand[0], kNetDiagCmdTasksStatus[0]);
        [(NetDiagnosticsShim *)self connectToNetDiagnosticsd];
        netDiagServiceConnection = self->_netDiagServiceConnection;
        netDiagMsgQueue = self->_netDiagMsgQueue;
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __55__NetDiagnosticsShim_netDiagnosticTaskStatusWithReply___block_invoke;
        v12[3] = &unk_278CF1488;
        v12[4] = self;
        v13 = replyCopy;
        xpc_connection_send_message_with_reply(netDiagServiceConnection, v5, netDiagMsgQueue, v12);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __55__NetDiagnosticsShim_netDiagnosticTaskStatusWithReply___block_invoke(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x245CF1660]();
  if (v4 == MEMORY[0x277D86480])
  {
    v6 = symptomsLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_INFO, "kNetDiagCmdTasksStatus failed!", buf, 2u);
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = *MEMORY[0x277CCA5B8];
      v15 = @"error";
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Stopping %@ failed!", *(*(a1 + 32) + 56)];
      v16[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v12 = [v8 errorWithDomain:v9 code:5 userInfo:v11];
      (*(v7 + 16))(v7, 0, v12);
    }
  }

  else if (v4 == MEMORY[0x277D86468] && *(a1 + 40))
  {
    v5 = _CFXPCCreateCFObjectFromXPCObject();
    (*(*(a1 + 40) + 16))();
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)createNotificationListener
{
  v3 = xpc_connection_create(0, self->_netDiagConnQueue);
  v4 = v3;
  if (v3)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __48__NetDiagnosticsShim_createNotificationListener__block_invoke;
    handler[3] = &unk_278CF14B0;
    handler[4] = self;
    xpc_connection_set_event_handler(v3, handler);
    xpc_connection_resume(v4);
    v5 = v4;
  }

  else
  {
    v6 = symptomsLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_ERROR, "Couldn't create progress connection", buf, 2u);
    }
  }

  return v4;
}

void __48__NetDiagnosticsShim_createNotificationListener__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = MEMORY[0x245CF1660]();
  v6 = MEMORY[0x245CF15A0](v4);
  if (v6)
  {
    free(v6);
  }

  if (v5 == MEMORY[0x277D86480])
  {
    if (v4 == MEMORY[0x277D86420])
    {
      v7 = symptomsLogHandle();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_18;
      }

      v8 = [*(a1 + 32) taskName];
      *buf = 138412290;
      v21 = v8;
      v9 = "received XPC_ERROR_TERMINATION_IMMINENT for %@";
    }

    else
    {
      if (v4 != MEMORY[0x277D863F8])
      {
        goto LABEL_19;
      }

      v7 = symptomsLogHandle();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_18;
      }

      v8 = [*(a1 + 32) taskName];
      *buf = 138412290;
      v21 = v8;
      v9 = "progress connection is closed for %@";
    }

    v10 = v7;
    v11 = OS_LOG_TYPE_DEBUG;
    goto LABEL_17;
  }

  if (v5 != MEMORY[0x277D86450])
  {
    v7 = symptomsLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) taskName];
      *buf = 138412290;
      v21 = v8;
      v9 = "unknown xpc_type_t for %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_INFO;
LABEL_17:
      _os_log_impl(&dword_241804000, v10, v11, v9, buf, 0xCu);
    }

LABEL_18:

    goto LABEL_19;
  }

  v12 = *(a1 + 32);
  v13 = *(v12 + 24);
  if (v13)
  {
    xpc_connection_cancel(v13);
    v14 = *(a1 + 32);
    v15 = *(v14 + 24);
    *(v14 + 24) = 0;

    v12 = *(a1 + 32);
  }

  objc_storeStrong((v12 + 24), a2);
  xpc_connection_set_target_queue(*(*(a1 + 32) + 24), *(*(a1 + 32) + 40));
  v16 = *(a1 + 32);
  v17 = *(v16 + 24);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __48__NetDiagnosticsShim_createNotificationListener__block_invoke_64;
  handler[3] = &unk_278CF14B0;
  handler[4] = v16;
  xpc_connection_set_event_handler(v17, handler);
  xpc_connection_resume(*(*(a1 + 32) + 24));
LABEL_19:

  v18 = *MEMORY[0x277D85DE8];
}

void __48__NetDiagnosticsShim_createNotificationListener__block_invoke_64(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x245CF1660]();
  if (v4 == MEMORY[0x277D86468])
  {
    string = xpc_dictionary_get_string(v3, kNetDiagNotifTaskStatusChanged[0]);
    int64 = xpc_dictionary_get_int64(v3, kNetDiagValue[0]);
    if (!string)
    {
      v11 = MEMORY[0x245CF15A0](v3);
      if (v11)
      {
        v12 = v11;
        v13 = symptomsLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v15 = 136315138;
          v16 = v12;
          _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_INFO, "task_name seems to be NULL. dict: %s", &v15, 0xCu);
        }

        free(v12);
      }

      v5 = *(*(a1 + 32) + 48);
      goto LABEL_22;
    }

    v8 = int64;
    v5 = *(*(a1 + 32) + 48);
    if (objc_opt_respondsToSelector())
    {
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
      [v5 netDiagnosticTaskStatusChangedFor:v9 toStatus:v8];
LABEL_21:

      goto LABEL_22;
    }

    goto LABEL_22;
  }

  if (v4 != MEMORY[0x277D86480])
  {
    v5 = symptomsLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_INFO, "unknown message type", &v15, 2u);
    }

    goto LABEL_22;
  }

  if (*(*(a1 + 32) + 24))
  {
    if (v3 == MEMORY[0x277D863F0])
    {
      v5 = symptomsLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v9 = [*(a1 + 32) taskName];
        v15 = 138412290;
        v16 = v9;
        v10 = "Interrupted connection to XPC service (%@)";
        goto LABEL_20;
      }

LABEL_22:

      goto LABEL_23;
    }

    if (v3 == MEMORY[0x277D863F8])
    {
      v5 = symptomsLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v9 = [*(a1 + 32) taskName];
        v15 = 138412290;
        v16 = v9;
        v10 = "Connection Invalid error for XPC service (%@)";
LABEL_20:
        _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, v10, &v15, 0xCu);
        goto LABEL_21;
      }

      goto LABEL_22;
    }
  }

LABEL_23:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)sendNotificationListener
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    xpc_dictionary_set_string(v3, kNetDiagCommand[0], kNetDiagCmdNotifier[0]);
    xpc_dictionary_set_connection(v4, kNetDiagConnection[0], self->_netDiagNotificationListener);
    xpc_connection_send_message_with_reply(self->_netDiagServiceConnection, v4, self->_netDiagMsgQueue, &__block_literal_global_14);
  }

  else
  {
    v5 = symptomsLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_ERROR, "xpc_dictionary_create", v6, 2u);
    }
  }
}

uint64_t __46__NetDiagnosticsShim_sendNotificationListener__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x245CF15A0](a3);
  if (v3)
  {
    free(v3);
  }

  return 1;
}

- (id)_connectionForServiceNamed:(const char *)named queue:(id)queue connectionInvalidHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  mach_service = xpc_connection_create_mach_service(named, queue, 2uLL);
  if (mach_service)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __80__NetDiagnosticsShim__connectionForServiceNamed_queue_connectionInvalidHandler___block_invoke;
    handler[3] = &unk_278CF1518;
    handler[4] = self;
    namedCopy = named;
    v15 = handlerCopy;
    xpc_connection_set_event_handler(mach_service, handler);
    xpc_connection_resume(mach_service);
    v10 = mach_service;
  }

  else
  {
    v11 = symptomsLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      namedCopy2 = named;
      _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_ERROR, "Can't connect to XPC service: %s", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return mach_service;
}

void __80__NetDiagnosticsShim__connectionForServiceNamed_queue_connectionInvalidHandler___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x245CF1660]();
  v5 = MEMORY[0x245CF15A0](v3);

  if (v5)
  {
    free(v5);
  }

  if (v4 != MEMORY[0x277D86480])
  {
    v6 = MEMORY[0x277D86468];
    v7 = symptomsLogHandle();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v4 == v6)
    {
      if (v8)
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_INFO, "Received XPC_TYPE_DICTIONARY", &v22, 2u);
      }

      goto LABEL_17;
    }

    if (!v8)
    {
LABEL_17:

      goto LABEL_18;
    }

    v9 = *(a1 + 48);
    v10 = [*(a1 + 32) taskName];
    v22 = 136315394;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    v11 = "Received unexpected event for XPC service %s (%@)";
    v12 = v7;
    v13 = OS_LOG_TYPE_INFO;
LABEL_7:
    _os_log_impl(&dword_241804000, v12, v13, v11, &v22, 0x16u);

    goto LABEL_17;
  }

  if (*(*(a1 + 32) + 8))
  {
    if (v3 == MEMORY[0x277D863F0])
    {
      v7 = symptomsLogHandle();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_17;
      }

      v17 = *(a1 + 48);
      v10 = [*(a1 + 32) taskName];
      v22 = 136315394;
      v23 = v17;
      v24 = 2112;
      v25 = v10;
      v11 = "Interrupted connection to XPC service %s (%@)";
      v12 = v7;
      v13 = OS_LOG_TYPE_DEBUG;
      goto LABEL_7;
    }

    v14 = MEMORY[0x277D863F8];
    v15 = symptomsLogHandle();
    v7 = v15;
    if (v3 != v14)
    {
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v16 = *(a1 + 48);
      v10 = [*(a1 + 32) taskName];
      v22 = 136315394;
      v23 = v16;
      v24 = 2112;
      v25 = v10;
      v11 = "Unexpected error for XPC service %s (%@)";
      v12 = v7;
      v13 = OS_LOG_TYPE_ERROR;
      goto LABEL_7;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a1 + 48);
      v20 = [*(a1 + 32) taskName];
      v22 = 136315394;
      v23 = v19;
      v24 = 2112;
      v25 = v20;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEBUG, "Connection Invalid error for XPC service %s (%@)", &v22, 0x16u);
    }

    v21 = *(a1 + 40);
    if (v21)
    {
      (*(v21 + 16))();
    }
  }

LABEL_18:
  v18 = *MEMORY[0x277D85DE8];
}

@end