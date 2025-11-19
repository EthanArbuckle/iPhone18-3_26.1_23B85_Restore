@interface ATXSmartPauseDatabaseQueryResult
+ (id)groupByBundleId:(id)a3;
- (ATXSmartPauseDatabaseQueryResult)initWithBundleId:(id)a3 threadId:(id)a4;
- (void)mergeWithOther:(id)a3;
@end

@implementation ATXSmartPauseDatabaseQueryResult

- (ATXSmartPauseDatabaseQueryResult)initWithBundleId:(id)a3 threadId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ATXSmartPauseDatabaseQueryResult;
  v8 = [(ATXSmartPauseDatabaseQueryResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(ATXSmartPauseDatabaseQueryResult *)v8 setBundleId:v6];
    [(ATXSmartPauseDatabaseQueryResult *)v9 setThreadId:v7];
  }

  return v9;
}

- (void)mergeWithOther:(id)a3
{
  v4 = a3;
  -[ATXSmartPauseDatabaseQueryResult setCountLastFiveMinutesNotifications:](self, "setCountLastFiveMinutesNotifications:", -[ATXSmartPauseDatabaseQueryResult countLastFiveMinutesNotifications](self, "countLastFiveMinutesNotifications") + [v4 countLastFiveMinutesNotifications]);
  -[ATXSmartPauseDatabaseQueryResult setCountLastFiveMinutesPositiveEngagements:](self, "setCountLastFiveMinutesPositiveEngagements:", -[ATXSmartPauseDatabaseQueryResult countLastFiveMinutesPositiveEngagements](self, "countLastFiveMinutesPositiveEngagements") + [v4 countLastFiveMinutesPositiveEngagements]);
  -[ATXSmartPauseDatabaseQueryResult setCountLastHourNotifications:](self, "setCountLastHourNotifications:", -[ATXSmartPauseDatabaseQueryResult countLastHourNotifications](self, "countLastHourNotifications") + [v4 countLastHourNotifications]);
  -[ATXSmartPauseDatabaseQueryResult setCountLastHourPositiveEngagements:](self, "setCountLastHourPositiveEngagements:", -[ATXSmartPauseDatabaseQueryResult countLastHourPositiveEngagements](self, "countLastHourPositiveEngagements") + [v4 countLastHourPositiveEngagements]);
  -[ATXSmartPauseDatabaseQueryResult setCountLastDayNotifications:](self, "setCountLastDayNotifications:", -[ATXSmartPauseDatabaseQueryResult countLastDayNotifications](self, "countLastDayNotifications") + [v4 countLastDayNotifications]);
  -[ATXSmartPauseDatabaseQueryResult setCountLastDayPositiveEngagements:](self, "setCountLastDayPositiveEngagements:", -[ATXSmartPauseDatabaseQueryResult countLastDayPositiveEngagements](self, "countLastDayPositiveEngagements") + [v4 countLastDayPositiveEngagements]);
  -[ATXSmartPauseDatabaseQueryResult setCountLastWeekNotifications:](self, "setCountLastWeekNotifications:", -[ATXSmartPauseDatabaseQueryResult countLastWeekNotifications](self, "countLastWeekNotifications") + [v4 countLastWeekNotifications]);
  -[ATXSmartPauseDatabaseQueryResult setCountLastWeekPositiveEngagements:](self, "setCountLastWeekPositiveEngagements:", -[ATXSmartPauseDatabaseQueryResult countLastWeekPositiveEngagements](self, "countLastWeekPositiveEngagements") + [v4 countLastWeekPositiveEngagements]);
  -[ATXSmartPauseDatabaseQueryResult setCountNotifications:](self, "setCountNotifications:", -[ATXSmartPauseDatabaseQueryResult countNotifications](self, "countNotifications") + [v4 countNotifications]);
  v5 = [v4 countPositiveEngagements];

  v6 = [(ATXSmartPauseDatabaseQueryResult *)self countPositiveEngagements]+ v5;

  [(ATXSmartPauseDatabaseQueryResult *)self setCountPositiveEngagements:v6];
}

+ (id)groupByBundleId:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v3;
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
        v11 = [v10 bundleId];

        if (v11)
        {
          v12 = [v10 bundleId];
          v13 = [v4 objectForKeyedSubscript:v12];

          if (!v13)
          {
            v14 = [ATXSmartPauseDatabaseQueryResult alloc];
            v15 = [v10 bundleId];
            v16 = [(ATXSmartPauseDatabaseQueryResult *)v14 initWithBundleId:v15 threadId:0];
            v17 = [v10 bundleId];
            [v4 setObject:v16 forKeyedSubscript:v17];
          }

          v18 = [v10 bundleId];
          v19 = [v4 objectForKeyedSubscript:v18];

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