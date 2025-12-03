@interface ASNotificationStep
- (id)objectsTransformedFromRecords:(id)records cloudKitManager:(id)manager;
@end

@implementation ASNotificationStep

- (id)objectsTransformedFromRecords:(id)records cloudKitManager:(id)manager
{
  recordsCopy = records;
  managerCopy = manager;
  objectsTransformationBlock = [(ASNotificationStep *)self objectsTransformationBlock];

  if (objectsTransformationBlock)
  {
    objectsTransformationBlock2 = [(ASNotificationStep *)self objectsTransformationBlock];
    v10 = (objectsTransformationBlock2)[2](objectsTransformationBlock2, managerCopy, recordsCopy);
  }

  else
  {
    objectTransformationBlock = [(ASNotificationStep *)self objectTransformationBlock];

    if (objectTransformationBlock)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __68__ASNotificationStep_objectsTransformedFromRecords_cloudKitManager___block_invoke;
      v13[3] = &unk_278C4C618;
      v13[4] = self;
      v14 = managerCopy;
      v10 = [recordsCopy hk_map:v13];
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