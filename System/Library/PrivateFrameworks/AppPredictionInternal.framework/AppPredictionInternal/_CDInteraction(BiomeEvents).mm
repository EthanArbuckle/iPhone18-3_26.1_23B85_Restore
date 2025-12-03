@interface _CDInteraction(BiomeEvents)
+ (id)eventWithData:()BiomeEvents dataVersion:;
- (id)serialize;
- (void)serialize;
@end

@implementation _CDInteraction(BiomeEvents)

+ (id)eventWithData:()BiomeEvents dataVersion:
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v10 = 0;
  v5 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v10];
  v6 = v10;
  objc_autoreleasePoolPop(v4);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [_CDInteraction(BiomeEvents) eventWithData:v6 dataVersion:v8];
    }
  }

  return v5;
}

- (id)serialize
{
  v2 = objc_autoreleasePoolPush();
  v8 = 0;
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v8];
  v4 = v8;
  objc_autoreleasePoolPop(v2);
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v6 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(_CDInteraction(BiomeEvents) *)v4 serialize];
    }
  }

  return v3;
}

+ (void)eventWithData:()BiomeEvents dataVersion:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Failed to initialize CDInteraction from NSData in ATXInteractionEventProvider with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)serialize
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Failed to serialize CDInteraction data in ATXInteractionEventProvider with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end