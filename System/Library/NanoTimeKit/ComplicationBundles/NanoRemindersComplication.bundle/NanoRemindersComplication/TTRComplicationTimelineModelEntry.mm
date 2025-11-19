@interface TTRComplicationTimelineModelEntry
- (TTRComplicationTimelineModelEntry)initWithStartDate:(id)a3 overdueCount:(int64_t)a4 remainingDueTodayCount:(int64_t)a5 representativeReminder:(id)a6;
- (id)description;
@end

@implementation TTRComplicationTimelineModelEntry

- (TTRComplicationTimelineModelEntry)initWithStartDate:(id)a3 overdueCount:(int64_t)a4 remainingDueTodayCount:(int64_t)a5 representativeReminder:(id)a6
{
  v10 = a3;
  v11 = a6;
  v16.receiver = self;
  v16.super_class = TTRComplicationTimelineModelEntry;
  v12 = [(TTRComplicationTimelineModelEntry *)&v16 init];
  if (v12)
  {
    v13 = [v10 copy];
    startDate = v12->_startDate;
    v12->_startDate = v13;

    v12->_overdueCount = a4;
    v12->_remainingDueTodayCount = a5;
    objc_storeStrong(&v12->_representativeReminder, a6);
  }

  return v12;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(TTRComplicationTimelineModelEntry *)self startDate];
  v5 = [(TTRComplicationTimelineModelEntry *)self overdueCount];
  v6 = [(TTRComplicationTimelineModelEntry *)self remainingDueTodayCount];
  v7 = [(TTRComplicationTimelineModelEntry *)self representativeReminder];
  v8 = [NSString stringWithFormat:@"<%@ %p: startDate=%@, overdueCount=%ld, remainingDueTodayCount=%ld, representativeReminder=%@>", v3, self, v4, v5, v6, v7];

  return v8;
}

@end