@interface ATXChargerConnectedAnchor
+ (BOOL)isActive;
+ (BOOL)shouldProcessContextStoreNotification;
+ (id)fetchAnchorOccurrencesBetweenStartDate:(id)date endDate:(id)endDate;
+ (id)sampleEvent;
@end

@implementation ATXChargerConnectedAnchor

BOOL __40__ATXChargerConnectedAnchor_filterBlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    if ([v3 connected])
    {
      v4 = [v3 endTime];
      v5 = [v3 startTime];
      [v4 timeIntervalSinceDate:v5];
      v7 = v6;

      v8 = v7 >= 60.0;
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

+ (id)fetchAnchorOccurrencesBetweenStartDate:(id)date endDate:(id)endDate
{
  v5 = MEMORY[0x277CEBC30];
  endDateCopy = endDate;
  dateCopy = date;
  v8 = objc_alloc_init(v5);
  v9 = objc_opt_new();
  filterBlock = [objc_opt_class() filterBlock];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__ATXChargerConnectedAnchor_fetchAnchorOccurrencesBetweenStartDate_endDate___block_invoke;
  v13[3] = &unk_2785A0208;
  v11 = v9;
  v14 = v11;
  [v8 enumeratePluggedInEventsFromStartDate:dateCopy endDate:endDateCopy filterBlock:filterBlock limit:1000000 block:v13];

  return v11;
}

void __76__ATXChargerConnectedAnchor_fetchAnchorOccurrencesBetweenStartDate_endDate___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[ATXChargerPluggedInDuetEvent alloc] initWithATXEvent:v3];

  [v2 addObject:v4];
}

+ (BOOL)shouldProcessContextStoreNotification
{
  v2 = objc_opt_class();

  return [v2 shouldProcessContextStoreNotificationForNumber];
}

+ (BOOL)isActive
{
  v2 = [objc_alloc(objc_msgSend(objc_msgSend(objc_opt_class() "supportedDuetDataProviderClass")];
  v3 = [v2 chargerPluggedInState] == 1;

  return v3;
}

+ (id)sampleEvent
{
  v2 = [ATXChargerPluggedInDuetEvent alloc];
  v3 = objc_opt_new();
  v4 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:20.0];
  v5 = [(ATXChargerPluggedInDuetEvent *)v2 initWithChargerPluggedInState:1 adapterType:&unk_283A572C0 startDate:v3 endDate:v4];

  return v5;
}

@end