@interface _ATXNotificationDuetEvent
- (_ATXNotificationDuetEvent)initWithBundleId:(id)a3 notificationId:(id)a4 eventTime:(id)a5 timeZone:(id)a6 eventType:(id)a7;
- (id)prettyRepresentation;
@end

@implementation _ATXNotificationDuetEvent

- (_ATXNotificationDuetEvent)initWithBundleId:(id)a3 notificationId:(id)a4 eventTime:(id)a5 timeZone:(id)a6 eventType:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = _ATXNotificationDuetEvent;
  v17 = [(_ATXNotificationDuetEvent *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_bundleId, a3);
    objc_storeStrong(&v18->_notificationId, a4);
    objc_storeStrong(&v18->_eventTime, a5);
    objc_storeStrong(&v18->_timeZone, a6);
    v18->_eventType = ATXNEventTypeFromString();
  }

  return v18;
}

- (id)prettyRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  v4 = MEMORY[0x277CCA968];
  v5 = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = [v4 dateFormatFromTemplate:@"EMMMd HH:mm ss ZZZZ" options:0 locale:v5];

  [v3 setDateFormat:v6];
  v7 = [v3 stringFromDate:self->_eventTime];
  v8 = MEMORY[0x277CCACA8];
  eventType = self->_eventType;
  v10 = ATXNEventTypeToString();
  v11 = [v8 stringWithFormat:@"%@: (%@, %@, %@)", v7, v10, self->_notificationId, self->_bundleId];

  return v11;
}

@end