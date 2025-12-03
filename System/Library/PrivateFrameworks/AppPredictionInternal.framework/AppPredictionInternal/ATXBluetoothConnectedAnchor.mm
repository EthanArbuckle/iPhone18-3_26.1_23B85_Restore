@interface ATXBluetoothConnectedAnchor
+ (BOOL)isActive;
+ (BOOL)shouldProcessContextStoreNotification;
+ (id)fetchAnchorOccurrencesBetweenStartDate:(id)date endDate:(id)endDate;
+ (id)sampleEvent;
@end

@implementation ATXBluetoothConnectedAnchor

BOOL __42__ATXBluetoothConnectedAnchor_filterBlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 endTime];
    v4 = [v2 startTime];
    [v3 timeIntervalSinceDate:v4];
    v6 = v5;

    v7 = v6 >= 60.0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)fetchAnchorOccurrencesBetweenStartDate:(id)date endDate:(id)endDate
{
  v5 = MEMORY[0x277CEBC10];
  endDateCopy = endDate;
  dateCopy = date;
  v8 = objc_alloc_init(v5);
  v9 = objc_opt_new();
  filterBlock = [objc_opt_class() filterBlock];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__ATXBluetoothConnectedAnchor_fetchAnchorOccurrencesBetweenStartDate_endDate___block_invoke;
  v13[3] = &unk_2785991A0;
  v11 = v9;
  v14 = v11;
  [v8 enumerateConnectedEventsFromStartDate:dateCopy endDate:endDateCopy filterBlock:filterBlock limit:1000000 ascending:1 block:v13];

  return v11;
}

void __78__ATXBluetoothConnectedAnchor_fetchAnchorOccurrencesBetweenStartDate_endDate___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[ATXBluetoothDuetEvent alloc] initWithATXEvent:v3];

  [v2 addObject:v4];
}

+ (BOOL)shouldProcessContextStoreNotification
{
  v2 = objc_opt_class();

  return [v2 shouldProcessContextStoreNotificationForDict];
}

+ (BOOL)isActive
{
  v2 = [objc_alloc(objc_msgSend(objc_msgSend(objc_opt_class() "supportedDuetDataProviderClass")];
  v3 = [v2 bluetoothState] == 1;

  return v3;
}

+ (id)sampleEvent
{
  v2 = [ATXBluetoothDuetEvent alloc];
  v3 = objc_opt_new();
  v4 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:20.0];
  v5 = [(ATXBluetoothDuetEvent *)v2 initWithBluetoothState:1 deviceType:1 deviceName:@"Sample BT Device" hardwareAddress:@"1:1:1:1:1" startDate:v3 endDate:v4];

  return v5;
}

@end