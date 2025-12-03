@interface ATXSmartPauseDatabaseQueryResult
+ (id)groupByBundleId:(id)id;
- (ATXSmartPauseDatabaseQueryResult)initWithBundleId:(id)id threadId:(id)threadId;
- (void)mergeWithOther:(id)other;
@end

@implementation ATXSmartPauseDatabaseQueryResult

- (ATXSmartPauseDatabaseQueryResult)initWithBundleId:(id)id threadId:(id)threadId
{
  idCopy = id;
  threadIdCopy = threadId;
  v11.receiver = self;
  v11.super_class = ATXSmartPauseDatabaseQueryResult;
  v8 = [(ATXSmartPauseDatabaseQueryResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(ATXSmartPauseDatabaseQueryResult *)v8 setBundleId:idCopy];
    [(ATXSmartPauseDatabaseQueryResult *)v9 setThreadId:threadIdCopy];
  }

  return v9;
}

- (void)mergeWithOther:(id)other
{
  otherCopy = other;
  -[ATXSmartPauseDatabaseQueryResult setCountLastFiveMinutesNotifications:](self, "setCountLastFiveMinutesNotifications:", -[ATXSmartPauseDatabaseQueryResult countLastFiveMinutesNotifications](self, "countLastFiveMinutesNotifications") + [otherCopy countLastFiveMinutesNotifications]);
  -[ATXSmartPauseDatabaseQueryResult setCountLastFiveMinutesPositiveEngagements:](self, "setCountLastFiveMinutesPositiveEngagements:", -[ATXSmartPauseDatabaseQueryResult countLastFiveMinutesPositiveEngagements](self, "countLastFiveMinutesPositiveEngagements") + [otherCopy countLastFiveMinutesPositiveEngagements]);
  -[ATXSmartPauseDatabaseQueryResult setCountLastHourNotifications:](self, "setCountLastHourNotifications:", -[ATXSmartPauseDatabaseQueryResult countLastHourNotifications](self, "countLastHourNotifications") + [otherCopy countLastHourNotifications]);
  -[ATXSmartPauseDatabaseQueryResult setCountLastHourPositiveEngagements:](self, "setCountLastHourPositiveEngagements:", -[ATXSmartPauseDatabaseQueryResult countLastHourPositiveEngagements](self, "countLastHourPositiveEngagements") + [otherCopy countLastHourPositiveEngagements]);
  -[ATXSmartPauseDatabaseQueryResult setCountLastDayNotifications:](self, "setCountLastDayNotifications:", -[ATXSmartPauseDatabaseQueryResult countLastDayNotifications](self, "countLastDayNotifications") + [otherCopy countLastDayNotifications]);
  -[ATXSmartPauseDatabaseQueryResult setCountLastDayPositiveEngagements:](self, "setCountLastDayPositiveEngagements:", -[ATXSmartPauseDatabaseQueryResult countLastDayPositiveEngagements](self, "countLastDayPositiveEngagements") + [otherCopy countLastDayPositiveEngagements]);
  -[ATXSmartPauseDatabaseQueryResult setCountLastWeekNotifications:](self, "setCountLastWeekNotifications:", -[ATXSmartPauseDatabaseQueryResult countLastWeekNotifications](self, "countLastWeekNotifications") + [otherCopy countLastWeekNotifications]);
  -[ATXSmartPauseDatabaseQueryResult setCountLastWeekPositiveEngagements:](self, "setCountLastWeekPositiveEngagements:", -[ATXSmartPauseDatabaseQueryResult countLastWeekPositiveEngagements](self, "countLastWeekPositiveEngagements") + [otherCopy countLastWeekPositiveEngagements]);
  -[ATXSmartPauseDatabaseQueryResult setCountNotifications:](self, "setCountNotifications:", -[ATXSmartPauseDatabaseQueryResult countNotifications](self, "countNotifications") + [otherCopy countNotifications]);
  countPositiveEngagements = [otherCopy countPositiveEngagements];

  v6 = [(ATXSmartPauseDatabaseQueryResult *)self countPositiveEngagements]+ countPositiveEngagements;

  [(ATXSmartPauseDatabaseQueryResult *)self setCountPositiveEngagements:v6];
}

+ (id)groupByBundleId:(id)id
{
  v27 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v4 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = idCopy;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        bundleId = [v10 bundleId];

        if (bundleId)
        {
          bundleId2 = [v10 bundleId];
          v13 = [v4 objectForKeyedSubscript:bundleId2];

          if (!v13)
          {
            v14 = [ATXSmartPauseDatabaseQueryResult alloc];
            bundleId3 = [v10 bundleId];
            v16 = [(ATXSmartPauseDatabaseQueryResult *)v14 initWithBundleId:bundleId3 threadId:0];
            bundleId4 = [v10 bundleId];
            [v4 setObject:v16 forKeyedSubscript:bundleId4];
          }

          bundleId5 = [v10 bundleId];
          v19 = [v4 objectForKeyedSubscript:bundleId5];

          [v19 mergeWithOther:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v4;
}

@end