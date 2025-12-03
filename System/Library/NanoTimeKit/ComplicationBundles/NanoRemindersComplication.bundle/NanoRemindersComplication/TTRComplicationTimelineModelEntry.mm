@interface TTRComplicationTimelineModelEntry
- (TTRComplicationTimelineModelEntry)initWithStartDate:(id)date overdueCount:(int64_t)count remainingDueTodayCount:(int64_t)todayCount representativeReminder:(id)reminder;
- (id)description;
@end

@implementation TTRComplicationTimelineModelEntry

- (TTRComplicationTimelineModelEntry)initWithStartDate:(id)date overdueCount:(int64_t)count remainingDueTodayCount:(int64_t)todayCount representativeReminder:(id)reminder
{
  dateCopy = date;
  reminderCopy = reminder;
  v16.receiver = self;
  v16.super_class = TTRComplicationTimelineModelEntry;
  v12 = [(TTRComplicationTimelineModelEntry *)&v16 init];
  if (v12)
  {
    v13 = [dateCopy copy];
    startDate = v12->_startDate;
    v12->_startDate = v13;

    v12->_overdueCount = count;
    v12->_remainingDueTodayCount = todayCount;
    objc_storeStrong(&v12->_representativeReminder, reminder);
  }

  return v12;
}

- (id)description
{
  v3 = objc_opt_class();
  startDate = [(TTRComplicationTimelineModelEntry *)self startDate];
  overdueCount = [(TTRComplicationTimelineModelEntry *)self overdueCount];
  remainingDueTodayCount = [(TTRComplicationTimelineModelEntry *)self remainingDueTodayCount];
  representativeReminder = [(TTRComplicationTimelineModelEntry *)self representativeReminder];
  v8 = [NSString stringWithFormat:@"<%@ %p: startDate=%@, overdueCount=%ld, remainingDueTodayCount=%ld, representativeReminder=%@>", v3, self, startDate, overdueCount, remainingDueTodayCount, representativeReminder];

  return v8;
}

@end