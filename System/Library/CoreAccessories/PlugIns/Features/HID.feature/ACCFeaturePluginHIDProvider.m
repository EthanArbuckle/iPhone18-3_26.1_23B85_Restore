@interface ACCFeaturePluginHIDProvider
+ (id)sharedHIDProvider;
- (ACCFeaturePluginHIDProvider)init;
- (BOOL)deleteHIDDescriptor:(id)a3;
- (BOOL)processGetReportResponse:(id)a3 reportType:(unsigned __int8)a4 reportID:(unsigned __int8)a5 forUUID:(id)a6;
- (BOOL)processInReport:(id)a3 forUUID:(id)a4;
- (id)createHIDDescriptor:(id)a3;
- (id)getDescriptor:(id)a3;
- (void)dealloc;
- (void)stopHIDProvider;
@end

@implementation ACCFeaturePluginHIDProvider

+ (id)sharedHIDProvider
{
  if (sharedHIDProvider_once != -1)
  {
    +[ACCFeaturePluginHIDProvider sharedHIDProvider];
  }

  v3 = sharedHIDProvider_sharedInstance;

  return v3;
}

uint64_t __48__ACCFeaturePluginHIDProvider_sharedHIDProvider__block_invoke()
{
  sharedHIDProvider_sharedInstance = objc_alloc_init(ACCFeaturePluginHIDProvider);

  return MEMORY[0x2821F96F8]();
}

- (ACCFeaturePluginHIDProvider)init
{
  v10.receiver = self;
  v10.super_class = ACCFeaturePluginHIDProvider;
  v2 = [(ACCFeaturePluginHIDProvider *)&v10 init];
  v3 = v2;
  if (v2)
  {
    descriptorUUIDs = v2->_descriptorUUIDs;
    v2->_descriptorUUIDs = 0;

    v5 = [objc_alloc(MEMORY[0x277CE8268]) initWithDelegate:v3];
    hidClient = v3->_hidClient;
    v3->_hidClient = v5;

    v7 = dispatch_queue_create("hidProviderSerialQueue", 0);
    hidProviderLock = v3->_hidProviderLock;
    v3->_hidProviderLock = v7;
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ACCFeaturePluginHIDProvider;
  [(ACCFeaturePluginHIDProvider *)&v2 dealloc];
}

- (void)stopHIDProvider
{
  v3 = [(ACCFeaturePluginHIDProvider *)self hidProviderLock];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ACCFeaturePluginHIDProvider_stopHIDProvider__block_invoke;
  block[3] = &unk_2789E2AE8;
  block[4] = self;
  dispatch_sync(v3, block);

  [(ACCFeaturePluginHIDProvider *)self setHidClient:0];
  [(ACCFeaturePluginHIDProvider *)self setHidProviderLock:0];
}

uint64_t __46__ACCFeaturePluginHIDProvider_stopHIDProvider__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) descriptorUUIDs];
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

        [*(*(&v9 + 1) + 8 * v6++) removeDescriptor];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 32) setDescriptorUUIDs:0];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)createHIDDescriptor:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v5 = [(ACCFeaturePluginHIDProvider *)self hidProviderLock];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__ACCFeaturePluginHIDProvider_createHIDDescriptor___block_invoke;
  block[3] = &unk_2789E2B88;
  v10 = v4;
  v11 = self;
  v12 = &v13;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

void __51__ACCFeaturePluginHIDProvider_createHIDDescriptor___block_invoke(uint64_t a1)
{
  v2 = [ACCFeaturePluginHIDDescriptor alloc];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__ACCFeaturePluginHIDProvider_createHIDDescriptor___block_invoke_2;
  v13[3] = &unk_2789E2B10;
  v3 = *(a1 + 32);
  v14 = *(a1 + 40);
  v11[4] = v14;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__ACCFeaturePluginHIDProvider_createHIDDescriptor___block_invoke_3;
  v12[3] = &unk_2789E2B38;
  v12[4] = v14;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__ACCFeaturePluginHIDProvider_createHIDDescriptor___block_invoke_4;
  v11[3] = &unk_2789E2B60;
  v4 = [(ACCFeaturePluginHIDDescriptor *)v2 initWithDecriptorInfo:v3 sendOutReport:v13 sendGetReport:v12 sendComponentUpdate:v11];
  if (v4)
  {
    v5 = [*(a1 + 40) descriptorUUIDs];

    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [*(a1 + 40) setDescriptorUUIDs:v6];
    }

    v7 = [*(a1 + 40) descriptorUUIDs];
    [v7 addObject:v4];

    v8 = [(ACCFeaturePluginHIDDescriptor *)v4 hidDeviceUUIDStr];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

void __51__ACCFeaturePluginHIDProvider_createHIDDescriptor___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 hidClient];
  [v7 sendOutReport:v5 fromUUID:v6];
}

void __51__ACCFeaturePluginHIDProvider_createHIDDescriptor___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [v6 hidClient];
  [v10 sendGetReportForType:v8 andID:v7 fromUUID:v9];
}

void __51__ACCFeaturePluginHIDProvider_createHIDDescriptor___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 hidClient];
  [v6 hidDescriptor:v5 active:a3];
}

- (BOOL)deleteHIDDescriptor:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (v4)
  {
    v5 = [(ACCFeaturePluginHIDProvider *)self hidProviderLock];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__ACCFeaturePluginHIDProvider_deleteHIDDescriptor___block_invoke;
    block[3] = &unk_2789E2B88;
    block[4] = self;
    v9 = v4;
    v10 = &v11;
    dispatch_sync(v5, block);

    v6 = *(v12 + 24);
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v6 & 1;
}

void __51__ACCFeaturePluginHIDProvider_deleteHIDDescriptor___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) descriptorUUIDs];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v14 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v13 + 1) + 8 * v6);
      v8 = [v7 hidDeviceUUIDStr];
      v9 = *(a1 + 40);

      if (v8 == v9)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v10 = v7;

    if (!v10)
    {
      goto LABEL_13;
    }

    [v10 removeDescriptor];
    v11 = [*(a1 + 32) descriptorUUIDs];
    [v11 removeObject:v10];

    *(*(*(a1 + 48) + 8) + 24) = 1;
    v2 = v10;
  }

LABEL_12:

LABEL_13:
  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)processInReport:(id)a3 forUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (v6 && v7)
  {
    v10 = [(ACCFeaturePluginHIDProvider *)self hidProviderLock];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__ACCFeaturePluginHIDProvider_processInReport_forUUID___block_invoke;
    v12[3] = &unk_2789E2BB0;
    v12[4] = self;
    v13 = v8;
    v15 = &v16;
    v14 = v6;
    dispatch_sync(v10, v12);

    v9 = *(v17 + 24);
  }

  _Block_object_dispose(&v16, 8);

  return v9 & 1;
}

void __55__ACCFeaturePluginHIDProvider_processInReport_forUUID___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) descriptorUUIDs];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 hidDeviceUUIDStr];
        v9 = *(a1 + 40);

        if (v8 == v9)
        {
          *(*(*(a1 + 56) + 8) + 24) = [v7 handleInReport:*(a1 + 48)];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)processGetReportResponse:(id)a3 reportType:(unsigned __int8)a4 reportID:(unsigned __int8)a5 forUUID:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = v11;
  v13 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if (v10 && v11)
  {
    v14 = [(ACCFeaturePluginHIDProvider *)self hidProviderLock];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__ACCFeaturePluginHIDProvider_processGetReportResponse_reportType_reportID_forUUID___block_invoke;
    block[3] = &unk_2789E2BD8;
    block[4] = self;
    v17 = v12;
    v19 = &v22;
    v20 = a4;
    v21 = a5;
    v18 = v10;
    dispatch_sync(v14, block);

    v13 = *(v23 + 24);
  }

  _Block_object_dispose(&v22, 8);

  return v13 & 1;
}

void __84__ACCFeaturePluginHIDProvider_processGetReportResponse_reportType_reportID_forUUID___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) descriptorUUIDs];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 hidDeviceUUIDStr];
        v9 = *(a1 + 40);

        if (v8 == v9)
        {
          *(*(*(a1 + 56) + 8) + 24) = [v7 handleGetReportResponse:*(a1 + 64) reportID:*(a1 + 65) report:*(a1 + 48)];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)getDescriptor:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  if (v4)
  {
    v5 = [(ACCFeaturePluginHIDProvider *)self hidProviderLock];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__ACCFeaturePluginHIDProvider_getDescriptor___block_invoke;
    block[3] = &unk_2789E2B88;
    block[4] = self;
    v10 = v4;
    v11 = &v12;
    dispatch_sync(v5, block);

    v6 = v13[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __45__ACCFeaturePluginHIDProvider_getDescriptor___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) descriptorUUIDs];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 hidDeviceUUIDStr];
        v9 = *(a1 + 40);

        if (v8 == v9)
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
}

@end