@interface _ATXNotificationDuetEvent
- (_ATXNotificationDuetEvent)initWithBundleId:(id)id notificationId:(id)notificationId eventTime:(id)time timeZone:(id)zone eventType:(id)type;
- (id)prettyRepresentation;
@end

@implementation _ATXNotificationDuetEvent

- (_ATXNotificationDuetEvent)initWithBundleId:(id)id notificationId:(id)notificationId eventTime:(id)time timeZone:(id)zone eventType:(id)type
{
  idCopy = id;
  notificationIdCopy = notificationId;
  timeCopy = time;
  zoneCopy = zone;
  typeCopy = type;
  v21.receiver = self;
  v21.super_class = _ATXNotificationDuetEvent;
  v17 = [(_ATXNotificationDuetEvent *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_bundleId, id);
    objc_storeStrong(&v18->_notificationId, notificationId);
    objc_storeStrong(&v18->_eventTime, time);
    objc_storeStrong(&v18->_timeZone, zone);
    v18->_eventType = ATXNEventTypeFromString();
  }

  return v18;
}

- (id)prettyRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  v4 = MEMORY[0x277CCA968];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = [v4 dateFormatFromTemplate:@"EMMMd HH:mm ss ZZZZ" options:0 locale:currentLocale];

  [v3 setDateFormat:v6];
  v7 = [v3 stringFromDate:self->_eventTime];
  v8 = MEMORY[0x277CCACA8];
  eventType = self->_eventType;
  v10 = ATXNEventTypeToString();
  v11 = [v8 stringWithFormat:@"%@: (%@, %@, %@)", v7, v10, self->_notificationId, self->_bundleId];

  return v11;
}

@end