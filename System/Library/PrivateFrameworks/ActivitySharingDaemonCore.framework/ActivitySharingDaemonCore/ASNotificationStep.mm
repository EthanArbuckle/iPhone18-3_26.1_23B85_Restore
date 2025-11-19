@interface ASNotificationStep
- (id)objectsTransformedFromRecords:(id)a3 cloudKitManager:(id)a4;
@end

@implementation ASNotificationStep

- (id)objectsTransformedFromRecords:(id)a3 cloudKitManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ASNotificationStep *)self objectsTransformationBlock];

  if (v8)
  {
    v9 = [(ASNotificationStep *)self objectsTransformationBlock];
    v10 = (v9)[2](v9, v7, v6);
  }

  else
  {
    v11 = [(ASNotificationStep *)self objectTransformationBlock];

    if (v11)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __68__ASNotificationStep_objectsTransformedFromRecords_cloudKitManager___block_invoke;
      v13[3] = &unk_278C4C618;
      v13[4] = self;
      v14 = v7;
      v10 = [v6 hk_map:v13];
    }

    else
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
      {
        [ASNotificationStep objectsTransformedFromRecords:cloudKitManager:];
      }

      v10 = MEMORY[0x277CBEBF8];
    }
  }

  return v10;
}

id __68__ASNotificationStep_objectsTransformedFromRecords_cloudKitManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectTransformationBlock];
  v6 = (v5)[2](v5, *(a1 + 40), v4);

  return v6;
}

@end