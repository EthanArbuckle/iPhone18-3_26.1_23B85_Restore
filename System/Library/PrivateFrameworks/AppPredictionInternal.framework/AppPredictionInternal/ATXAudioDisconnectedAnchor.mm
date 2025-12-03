@interface ATXAudioDisconnectedAnchor
+ (BOOL)isActive;
+ (BOOL)shouldProcessContextStoreNotification;
+ (id)fetchAnchorOccurrencesBetweenStartDate:(id)date endDate:(id)endDate;
+ (id)invalidationPredicateForContextStoreRegistration;
+ (id)predicateForContextStoreRegistration;
+ (id)sampleEvent;
@end

@implementation ATXAudioDisconnectedAnchor

BOOL __41__ATXAudioDisconnectedAnchor_filterBlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v2 type] == 2 && (objc_msgSend(v2, "portType"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqualToString:", @"Headphones"), v3, v4))
  {
    v5 = [v2 endTime];
    v6 = [v2 startTime];
    [v5 timeIntervalSinceDate:v6];
    v8 = v7;

    v9 = v8 >= 60.0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)fetchAnchorOccurrencesBetweenStartDate:(id)date endDate:(id)endDate
{
  v5 = MEMORY[0x277CEBBF0];
  endDateCopy = endDate;
  dateCopy = date;
  v8 = objc_alloc_init(v5);
  v9 = objc_opt_new();
  filterBlock = [objc_opt_class() filterBlock];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__ATXAudioDisconnectedAnchor_fetchAnchorOccurrencesBetweenStartDate_endDate___block_invoke;
  v13[3] = &unk_278599150;
  v11 = v9;
  v14 = v11;
  [v8 enumerateConnectedEventsFromStartDate:dateCopy endDate:endDateCopy filterBlock:filterBlock limit:1000000 ascending:1 block:v13];

  return v11;
}

void __77__ATXAudioDisconnectedAnchor_fetchAnchorOccurrencesBetweenStartDate_endDate___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[ATXAudioDuetEvent alloc] initWithATXEvent:v3];

  [v2 addObject:v4];
}

+ (id)predicateForContextStoreRegistration
{
  v13[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CFE338] predicateForAudioOutputStatus:0];
  v3 = MEMORY[0x277CFE360];
  keyPathForContextStore = [objc_opt_class() keyPathForContextStore];
  keyPathForContextStore2 = [objc_opt_class() keyPathForContextStore];
  audioPortTypeKey = [MEMORY[0x277CFE338] audioPortTypeKey];
  v7 = [v3 predicateForKeyPath:keyPathForContextStore withFormat:@"SELF.%@.value.%K = %@", keyPathForContextStore2, audioPortTypeKey, @"Headphones"];

  v8 = MEMORY[0x277CFE360];
  v13[0] = v2;
  v13[1] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v10 = [v8 andPredicateWithSubpredicates:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)invalidationPredicateForContextStoreRegistration
{
  v13[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CFE338] predicateForAudioOutputStatus:1];
  v3 = MEMORY[0x277CFE360];
  keyPathForContextStore = [objc_opt_class() keyPathForContextStore];
  keyPathForContextStore2 = [objc_opt_class() keyPathForContextStore];
  audioPortTypeKey = [MEMORY[0x277CFE338] audioPortTypeKey];
  v7 = [v3 predicateForKeyPath:keyPathForContextStore withFormat:@"SELF.%@.value.%K = %@", keyPathForContextStore2, audioPortTypeKey, @"Headphones"];

  v8 = MEMORY[0x277CFE360];
  v13[0] = v2;
  v13[1] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v10 = [v8 andPredicateWithSubpredicates:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (BOOL)shouldProcessContextStoreNotification
{
  v2 = objc_opt_class();

  return [v2 shouldProcessContextStoreNotificationForDict];
}

+ (BOOL)isActive
{
  v2 = [objc_alloc(objc_msgSend(objc_msgSend(objc_opt_class() "supportedDuetDataProviderClass")];
  v3 = [v2 audioState] == 0;

  return v3;
}

+ (id)sampleEvent
{
  v2 = [ATXAudioDuetEvent alloc];
  v3 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-20.0];
  v4 = objc_opt_new();
  v5 = [(ATXAudioDuetEvent *)v2 initWithAudioState:0 deviceIdentifier:@"Headphones" portType:@"Headphones" portName:@"Headphones" routeChangeReason:&unk_283A572A8 startDate:v3 endDate:v4];

  return v5;
}

@end