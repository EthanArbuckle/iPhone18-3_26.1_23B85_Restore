@interface MXMetricManager
+ (BOOL)extendLaunchMeasurementForTaskID:(MXLaunchTaskID)taskID error:(NSError *)error;
+ (BOOL)finishExtendedLaunchMeasurementForTaskID:(MXLaunchTaskID)taskID error:(NSError *)error;
+ (MXMetricManager)sharedManager;
+ (os_log_t)makeLogHandleWithCategory:(NSString *)category;
- (MXMetricManager)init;
- (id)_createXPCConnection;
- (id)mergeDiagnosticsAtLocation:(id)location;
- (void)_checkAndDeliverDiagnosticReports;
- (void)_checkAndDeliverMetricReports;
- (void)addSubscriber:(id)subscriber;
- (void)dealloc;
- (void)deliverDiagnosticPayload:(id)payload;
- (void)deliverMetricPayload:(id)payload;
- (void)removeSubscriber:(id)subscriber;
@end

@implementation MXMetricManager

- (MXMetricManager)init
{
  v25.receiver = self;
  v25.super_class = MXMetricManager;
  v2 = [(MXMetricManager *)&v25 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("com.apple.metrickit.manager.queue", v3);
    v5 = *(v2 + 4);
    *(v2 + 4) = v4;

    v6 = os_log_create("com.apple.metrickit.metricmanager", "");
    v7 = *(v2 + 5);
    *(v2 + 5) = v6;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v9 = *(v2 + 7);
    *(v2 + 7) = weakObjectsHashTable;

    v10 = objc_alloc_init(MEMORY[0x277CBEA60]);
    v11 = *(v2 + 2);
    *(v2 + 2) = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEA60]);
    v13 = *(v2 + 3);
    *(v2 + 3) = v12;

    *(v2 + 4) = 0;
    _createXPCConnection = [v2 _createXPCConnection];
    v15 = *(v2 + 6);
    *(v2 + 6) = _createXPCConnection;

    v16 = *(v2 + 6);
    if (v16)
    {
      remoteObjectProxy = [v16 remoteObjectProxy];
      [remoteObjectProxy registerClient];

      [*(v2 + 6) invalidate];
      v18 = *(v2 + 6);
      *(v2 + 6) = 0;
    }

    objc_initWeak(&location, v2);
    v19 = *(v2 + 4);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __23__MXMetricManager_init__block_invoke;
    handler[3] = &unk_278B3EDA0;
    v22 = v2;
    objc_copyWeak(&v23, &location);
    notify_register_dispatch("com.apple.metrickit.data", v2 + 3, v19, handler);
    objc_destroyWeak(&v23);

    objc_destroyWeak(&location);
  }

  return v2;
}

void __23__MXMetricManager_init__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerLogHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __23__MXMetricManager_init__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCheckedMetrics:0];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 setCheckedDiagnostics:0];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 _checkAndDeliverDiagnosticReports];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 _checkAndDeliverMetricReports];
}

- (void)dealloc
{
  notify_cancel(self->_metricToken);
  v3.receiver = self;
  v3.super_class = MXMetricManager;
  [(MXMetricManager *)&v3 dealloc];
}

+ (MXMetricManager)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__MXMetricManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_sharedManager;

  return v2;
}

uint64_t __32__MXMetricManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedManager = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

+ (os_log_t)makeLogHandleWithCategory:(NSString *)category
{
  v3 = os_log_create("com.apple.metrickit.log", [(NSString *)category UTF8String]);

  return v3;
}

- (void)addSubscriber:(id)subscriber
{
  v4 = subscriber;
  iVarQueue = self->_iVarQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__MXMetricManager_addSubscriber___block_invoke;
  v7[3] = &unk_278B3EDE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(iVarQueue, v7);
}

void __33__MXMetricManager_addSubscriber___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) subscribers];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) subscribers];
    v5 = [v4 count];

    v6 = [*(a1 + 32) subscribers];
    [v6 addObject:*(a1 + 40)];

    if (v5)
    {
      v7 = *(a1 + 40);
      if (objc_opt_respondsToSelector())
      {
        v8 = [*(a1 + 32) pastPayloads];
        v9 = [v8 count];

        if (v9)
        {
          v10 = *(a1 + 40);
          v11 = [*(a1 + 32) pastPayloads];
          [v10 didReceiveMetricPayloads:v11];
        }
      }

      v12 = *(a1 + 40);
      if (objc_opt_respondsToSelector())
      {
        v13 = [*(a1 + 32) pastDiagnosticPayloads];
        v14 = [v13 count];

        if (v14)
        {
          v15 = *(a1 + 40);
          v17 = [*(a1 + 32) pastDiagnosticPayloads];
          [v15 didReceiveDiagnosticPayloads:v17];
        }
      }
    }

    else
    {
      [*(a1 + 32) _checkAndDeliverDiagnosticReports];
      v16 = *(a1 + 32);

      [v16 _checkAndDeliverMetricReports];
    }
  }
}

- (void)removeSubscriber:(id)subscriber
{
  v4 = subscriber;
  iVarQueue = self->_iVarQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__MXMetricManager_removeSubscriber___block_invoke;
  v7[3] = &unk_278B3EDE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(iVarQueue, v7);
}

void __36__MXMetricManager_removeSubscriber___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) subscribers];
  [v2 removeObject:*(a1 + 40)];
}

+ (BOOL)extendLaunchMeasurementForTaskID:(MXLaunchTaskID)taskID error:(NSError *)error
{
  started = alm_will_start_extended_launch_task();
  v6 = 0;
  if (started > 2)
  {
    if (started > 4)
    {
      if (started == 5)
      {
        v7 = 4;
      }

      else
      {
        if (started != 6)
        {
          goto LABEL_16;
        }

        v7 = 5;
      }
    }

    else if (started == 3)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    goto LABEL_15;
  }

  v7 = 1;
  switch(started)
  {
    case 0:
      goto LABEL_19;
    case 1:
      v7 = 0;
      goto LABEL_15;
    case 2:
LABEL_15:
      v6 = [MEMORY[0x277CCA9B8] errorWithMXErrorCode:v7];
      break;
  }

LABEL_16:
  if (error)
  {
    v6 = v6;
    LOBYTE(v7) = 0;
    *error = v6;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

LABEL_19:

  return v7;
}

+ (BOOL)finishExtendedLaunchMeasurementForTaskID:(MXLaunchTaskID)taskID error:(NSError *)error
{
  v5 = alm_did_finish_extended_launch_task();
  v6 = 0;
  if (v5 > 2)
  {
    if (v5 > 4)
    {
      if (v5 == 5)
      {
        v7 = 4;
      }

      else
      {
        if (v5 != 6)
        {
          goto LABEL_16;
        }

        v7 = 5;
      }
    }

    else if (v5 == 3)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    goto LABEL_15;
  }

  v7 = 1;
  switch(v5)
  {
    case 0:
      goto LABEL_19;
    case 1:
      v7 = 0;
      goto LABEL_15;
    case 2:
LABEL_15:
      v6 = [MEMORY[0x277CCA9B8] errorWithMXErrorCode:v7];
      break;
  }

LABEL_16:
  if (error)
  {
    v6 = v6;
    LOBYTE(v7) = 0;
    *error = v6;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

LABEL_19:

  return v7;
}

- (id)_createXPCConnection
{
  connection = self->_connection;
  if (connection)
  {
    v3 = connection;
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.metrickit.xpc" options:4096];
    if (v3)
    {
      v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284D19060];
      [(NSXPCConnection *)v3 setRemoteObjectInterface:v5];

      v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284D180A8];
      [(NSXPCConnection *)v3 setExportedInterface:v6];

      v7 = MEMORY[0x277CBEB98];
      v8 = objc_opt_class();
      v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
      v10 = MEMORY[0x277CBEB98];
      v11 = objc_opt_class();
      v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
      exportedInterface = [(NSXPCConnection *)v3 exportedInterface];
      [exportedInterface setClasses:v9 forSelector:sel_deliverMetricPayload_ argumentIndex:0 ofReply:0];

      exportedInterface2 = [(NSXPCConnection *)v3 exportedInterface];
      [exportedInterface2 setClasses:v12 forSelector:sel_deliverDiagnosticPayload_ argumentIndex:0 ofReply:0];

      [(NSXPCConnection *)v3 setExportedObject:self];
      [(NSXPCConnection *)v3 resume];
    }
  }

  return v3;
}

- (void)_checkAndDeliverMetricReports
{
  subscribers = [(MXMetricManager *)self subscribers];
  v4 = [subscribers count];

  if (!v4)
  {
    managerLogHandle = [(MXMetricManager *)self managerLogHandle];
    if (os_log_type_enabled(managerLogHandle, OS_LOG_TYPE_DEBUG))
    {
      [MXMetricManager _checkAndDeliverMetricReports];
    }

    goto LABEL_7;
  }

  if ([(MXMetricManager *)self checkedMetrics])
  {
    managerLogHandle = [(MXMetricManager *)self managerLogHandle];
    if (os_log_type_enabled(managerLogHandle, OS_LOG_TYPE_DEBUG))
    {
      [MXMetricManager _checkAndDeliverMetricReports];
    }

LABEL_7:

    return;
  }

  _createXPCConnection = [(MXMetricManager *)self _createXPCConnection];
  [(MXMetricManager *)self setConnection:_createXPCConnection];

  connection = [(MXMetricManager *)self connection];

  if (connection)
  {
    managerLogHandle2 = [(MXMetricManager *)self managerLogHandle];
    if (os_log_type_enabled(managerLogHandle2, OS_LOG_TYPE_DEBUG))
    {
      [MXMetricManager _checkAndDeliverMetricReports];
    }

    connection2 = [(MXMetricManager *)self connection];
    remoteObjectProxy = [connection2 remoteObjectProxy];
    [remoteObjectProxy retrieveMetrics];

    [(MXMetricManager *)self setCheckedMetrics:1];
  }
}

- (void)_checkAndDeliverDiagnosticReports
{
  subscribers = [(MXMetricManager *)self subscribers];
  v4 = [subscribers count];

  if (!v4)
  {
    managerLogHandle = [(MXMetricManager *)self managerLogHandle];
    if (os_log_type_enabled(managerLogHandle, OS_LOG_TYPE_DEBUG))
    {
      [MXMetricManager _checkAndDeliverDiagnosticReports];
    }

    goto LABEL_7;
  }

  if ([(MXMetricManager *)self checkedDiagnostics])
  {
    managerLogHandle = [(MXMetricManager *)self managerLogHandle];
    if (os_log_type_enabled(managerLogHandle, OS_LOG_TYPE_DEBUG))
    {
      [MXMetricManager _checkAndDeliverDiagnosticReports];
    }

LABEL_7:

    return;
  }

  _createXPCConnection = [(MXMetricManager *)self _createXPCConnection];
  [(MXMetricManager *)self setConnection:_createXPCConnection];

  connection = [(MXMetricManager *)self connection];

  if (connection)
  {
    managerLogHandle2 = [(MXMetricManager *)self managerLogHandle];
    if (os_log_type_enabled(managerLogHandle2, OS_LOG_TYPE_DEBUG))
    {
      [MXMetricManager _checkAndDeliverDiagnosticReports];
    }

    connection2 = [(MXMetricManager *)self connection];
    remoteObjectProxy = [connection2 remoteObjectProxy];
    [remoteObjectProxy retrieveDiagnostics];

    [(MXMetricManager *)self setCheckedDiagnostics:1];
  }
}

- (id)mergeDiagnosticsAtLocation:(id)location
{
  v78 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v72 = 0;
  v65 = defaultManager;
  v66 = locationCopy;
  v9 = [defaultManager contentsOfDirectoryAtPath:locationCopy error:&v72];
  v10 = v72;
  v63 = v7;
  if (v10)
  {
    v11 = v10;
    obj = [(MXMetricManager *)self managerLogHandle:v10];
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      [(MXMetricManager *)v66 mergeDiagnosticsAtLocation:v11, obj];
    }

    goto LABEL_4;
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = v9;
  v15 = [obj countByEnumeratingWithState:&v68 objects:v77 count:16, 0, v9];
  if (!v15)
  {
LABEL_4:
    v12 = 0;
    v13 = 0;
    v14 = v62;
    goto LABEL_37;
  }

  v16 = v15;
  selfCopy = self;
  v59 = v8;
  v60 = v6;
  v12 = 0;
  v13 = 0;
  v17 = *v69;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v69 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v68 + 1) + 8 * i);
      v20 = [v66 stringByAppendingPathComponent:v19];
      v21 = [v65 contentsAtPath:v20];

      v22 = MEMORY[0x277CCAAC8];
      v23 = objc_opt_class();
      v67 = 0;
      v24 = [v22 unarchivedObjectOfClass:v23 fromData:v21 error:&v67];
      v25 = v67;
      v26 = v25;
      if (v24)
      {
        v27 = v25 == 0;
      }

      else
      {
        v27 = 0;
      }

      if (!v27)
      {
        if (!v25)
        {
          goto LABEL_34;
        }

        managerLogHandle = [(MXMetricManager *)selfCopy managerLogHandle];
        if (os_log_type_enabled(managerLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v74 = v19;
          v75 = 2112;
          v76 = v26;
          _os_log_error_impl(&dword_239E37000, managerLogHandle, OS_LOG_TYPE_ERROR, "Error while reading Diagnostic Report :%@ with error: %@", buf, 0x16u);
        }

        goto LABEL_32;
      }

      hangDiagnostics = [v24 hangDiagnostics];

      if (hangDiagnostics)
      {
        hangDiagnostics2 = [v24 hangDiagnostics];
        [v60 addObjectsFromArray:hangDiagnostics2];
      }

      cpuExceptionDiagnostics = [v24 cpuExceptionDiagnostics];

      if (cpuExceptionDiagnostics)
      {
        cpuExceptionDiagnostics2 = [v24 cpuExceptionDiagnostics];
        [v62 addObjectsFromArray:cpuExceptionDiagnostics2];
      }

      diskWriteExceptionDiagnostics = [v24 diskWriteExceptionDiagnostics];

      if (diskWriteExceptionDiagnostics)
      {
        diskWriteExceptionDiagnostics2 = [v24 diskWriteExceptionDiagnostics];
        [v63 addObjectsFromArray:diskWriteExceptionDiagnostics2];
      }

      crashDiagnostics = [v24 crashDiagnostics];

      if (crashDiagnostics)
      {
        crashDiagnostics2 = [v24 crashDiagnostics];
        [v59 addObjectsFromArray:crashDiagnostics2];
      }

      appLaunchDiagnostics = [v24 appLaunchDiagnostics];

      if (appLaunchDiagnostics)
      {
        appLaunchDiagnostics2 = [v24 appLaunchDiagnostics];
        [v61 addObjectsFromArray:appLaunchDiagnostics2];
      }

      timeStampBegin = [v24 timeStampBegin];
      v40 = timeStampBegin;
      if (v13)
      {
        v41 = [timeStampBegin earlierDate:v13];

        v13 = v41;
      }

      else
      {
        v13 = timeStampBegin;
      }

      timeStampEnd = [v24 timeStampEnd];
      managerLogHandle = timeStampEnd;
      if (v12)
      {
        v43 = [timeStampEnd laterDate:v12];

        v12 = v43;
LABEL_32:

        goto LABEL_34;
      }

      v12 = timeStampEnd;
LABEL_34:
    }

    v16 = [obj countByEnumeratingWithState:&v68 objects:v77 count:16];
  }

  while (v16);
  v8 = v59;
  v6 = v60;
  v14 = v62;
  v7 = v63;
LABEL_37:

  v44 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([v7 count])
  {
    v45 = [MEMORY[0x277CBEA60] arrayWithArray:v7];
    [v44 setObject:v45 forKey:@"diskWriteExceptionDiagnostics"];
  }

  if ([v6 count])
  {
    v46 = [MEMORY[0x277CBEA60] arrayWithArray:v6];
    [v44 setObject:v46 forKey:@"hangDiagnostics"];
  }

  if ([v14 count])
  {
    v47 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
    [v44 setObject:v47 forKey:@"cpuExceptionDiagnostics"];
  }

  if ([v8 count])
  {
    v48 = [MEMORY[0x277CBEA60] arrayWithArray:v8];
    [v44 setObject:v48 forKey:@"crashDiagnostics"];
  }

  v49 = v8;
  if ([v61 count])
  {
    v50 = [MEMORY[0x277CBEA60] arrayWithArray:v61];
    [v44 setObject:v50 forKey:@"appLaunchDiagnostics"];
  }

  v51 = [MXDiagnosticPayload alloc];
  v52 = [v44 copy];
  v53 = [(MXDiagnosticPayload *)v51 initWithTimeStampBegin:v13 withTimeStampEnd:v12 withDiagnostics:v52];

  v54 = *MEMORY[0x277D85DE8];

  return v53;
}

- (void)deliverMetricPayload:(id)payload
{
  v15 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  if ([payloadCopy count])
  {
    managerLogHandle = [(MXMetricManager *)self managerLogHandle];
    if (os_log_type_enabled(managerLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = payloadCopy;
      _os_log_impl(&dword_239E37000, managerLogHandle, OS_LOG_TYPE_DEFAULT, "Delivering metric reports: %@", buf, 0xCu);
    }

    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pastPayloads = [(MXMetricManager *)self pastPayloads];
    [v6 addObjectsFromArray:pastPayloads];

    [v6 addObjectsFromArray:payloadCopy];
    v8 = [v6 copy];
    [(MXMetricManager *)self setPastPayloads:v8];

    iVarQueue = self->_iVarQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __40__MXMetricManager_deliverMetricPayload___block_invoke;
    v11[3] = &unk_278B3EDE8;
    v11[4] = self;
    v12 = payloadCopy;
    dispatch_async(iVarQueue, v11);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __40__MXMetricManager_deliverMetricPayload___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) subscribers];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 didReceiveMetricPayloads:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)deliverDiagnosticPayload:(id)payload
{
  v15 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  if ([payloadCopy count])
  {
    managerLogHandle = [(MXMetricManager *)self managerLogHandle];
    if (os_log_type_enabled(managerLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = payloadCopy;
      _os_log_impl(&dword_239E37000, managerLogHandle, OS_LOG_TYPE_DEFAULT, "Delivering diagnostic reports: %@", buf, 0xCu);
    }

    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pastDiagnosticPayloads = [(MXMetricManager *)self pastDiagnosticPayloads];
    [v6 addObjectsFromArray:pastDiagnosticPayloads];

    [v6 addObjectsFromArray:payloadCopy];
    v8 = [v6 copy];
    [(MXMetricManager *)self setPastDiagnosticPayloads:v8];

    iVarQueue = self->_iVarQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __44__MXMetricManager_deliverDiagnosticPayload___block_invoke;
    v11[3] = &unk_278B3EDE8;
    v11[4] = self;
    v12 = payloadCopy;
    dispatch_async(iVarQueue, v11);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __44__MXMetricManager_deliverDiagnosticPayload___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) subscribers];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 didReceiveDiagnosticPayloads:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)mergeDiagnosticsAtLocation:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_239E37000, log, OS_LOG_TYPE_ERROR, "Failed to retrieve contents of directory %@ data on disk: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end