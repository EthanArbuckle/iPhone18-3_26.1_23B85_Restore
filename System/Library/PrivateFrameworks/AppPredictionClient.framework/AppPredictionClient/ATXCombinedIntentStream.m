@interface ATXCombinedIntentStream
- (ATXCombinedIntentStream)init;
- (ATXCombinedIntentStream)initWithIntentStream:(id)a3 activityStream:(id)a4;
- (ATXCombinedIntentStream)initWithIntentStream:(id)a3 activityStream:(id)a4 menuItemStream:(id)a5 toolKitActionStream:(id)a6;
- (id)getCombinedIntentEventsBetweenStartDate:(id)a3 endDate:(id)a4 ascending:(BOOL)a5;
- (id)getCombinedIntentEventsFromLastMonth;
- (id)getSortedCombinedIntentEventsBetweenStartDate:(id)a3 endDate:(id)a4 bundleIdFilter:(id)a5 comparator:(id)a6;
- (id)getSortedCombinedIntentEventsForTestingActionsBetweenStartDate:(id)a3 endDate:(id)a4;
@end

@implementation ATXCombinedIntentStream

- (ATXCombinedIntentStream)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(ATXCombinedIntentStream *)self initWithIntentStream:v3 activityStream:v4];

  return v5;
}

- (ATXCombinedIntentStream)initWithIntentStream:(id)a3 activityStream:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v10 = [(ATXCombinedIntentStream *)self initWithIntentStream:v7 activityStream:v6 menuItemStream:v8 toolKitActionStream:v9];

  return v10;
}

- (ATXCombinedIntentStream)initWithIntentStream:(id)a3 activityStream:(id)a4 menuItemStream:(id)a5 toolKitActionStream:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ATXCombinedIntentStream;
  v15 = [(ATXCombinedIntentStream *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_intentStream, a3);
    objc_storeStrong(&v16->_activityStream, a4);
    objc_storeStrong(&v16->_menuItemStream, a5);
    objc_storeStrong(&v16->_toolKitActionStream, a6);
  }

  return v16;
}

- (id)getSortedCombinedIntentEventsBetweenStartDate:(id)a3 endDate:(id)a4 bundleIdFilter:(id)a5 comparator:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  context = objc_autoreleasePoolPush();
  v14 = [(ATXIntentStream *)self->_intentStream getIntentEventsBetweenStartDate:v10 endDate:v11 forSource:1 bundleIdFilter:v12 allowMissingTitles:0];
  v15 = [(ATXUserActivityStream *)self->_activityStream getActivityIntentEventsBetweenStartDate:v10 endDate:v11 bundleIdFilter:v12];
  v16 = [(ATXMenuItemStream *)self->_menuItemStream getMenuItemEventsBetweenStartDate:v10 endDate:v11 bundleIdFilter:v12];
  v17 = [(ATXToolKitActionStream *)self->_toolKitActionStream getToolKitActionEventsBetweenStartDate:v10 endDate:v11 bundleIdFilter:v12];
  v18 = objc_opt_new();
  if ([v14 count])
  {
    [v18 addObjectsFromArray:v14];
  }

  if ([v15 count])
  {
    [v18 addObjectsFromArray:v15];
  }

  if ([v16 count])
  {
    [v18 addObjectsFromArray:v16];
  }

  if ([v17 count])
  {
    [v18 addObjectsFromArray:v17];
  }

  if (v13)
  {
    [v18 sortUsingComparator:v13];
  }

  v19 = [v18 copy];

  objc_autoreleasePoolPop(context);

  return v19;
}

- (id)getSortedCombinedIntentEventsForTestingActionsBetweenStartDate:(id)a3 endDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [(ATXIntentStream *)self->_intentStream getIntentEventsBetweenStartDate:v6 endDate:v7 forSource:4 bundleIdFilter:0 allowMissingTitles:0];
  v10 = [(ATXToolKitActionStream *)self->_toolKitActionStream getToolKitActionEventsBetweenStartDate:v6 endDate:v7 bundleIdFilter:0];
  v11 = objc_opt_new();
  if ([v9 count])
  {
    [v11 addObjectsFromArray:v9];
  }

  if ([v10 count])
  {
    [v11 addObjectsFromArray:v10];
  }

  [v11 sortUsingComparator:&__block_literal_global_62];
  v12 = [v11 copy];

  objc_autoreleasePoolPop(v8);

  return v12;
}

uint64_t __98__ATXCombinedIntentStream_getSortedCombinedIntentEventsForTestingActionsBetweenStartDate_endDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 dateInterval];
  v6 = [v4 dateInterval];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)getCombinedIntentEventsBetweenStartDate:(id)a3 endDate:(id)a4 ascending:(BOOL)a5
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__ATXCombinedIntentStream_getCombinedIntentEventsBetweenStartDate_endDate_ascending___block_invoke;
  v10[3] = &__block_descriptor_33_e43_q24__0__ATXIntentEvent_8__ATXIntentEvent_16l;
  v11 = a5;
  v5 = [(ATXCombinedIntentStream *)self getSortedCombinedIntentEventsBetweenStartDate:a3 endDate:a4 bundleIdFilter:0 comparator:v10];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = v7;

  return v7;
}

uint64_t __85__ATXCombinedIntentStream_getCombinedIntentEventsBetweenStartDate_endDate_ascending___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  if (v4)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (!v4)
  {
    v5 = v6;
  }

  v8 = [v7 dateInterval];

  v9 = [v5 dateInterval];

  v10 = [v8 compare:v9];
  return v10;
}

- (id)getCombinedIntentEventsFromLastMonth
{
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [v3 dateByAddingTimeInterval:-2419200.0];
  v5 = [(ATXCombinedIntentStream *)self getCombinedIntentEventsBetweenStartDate:v4 endDate:v3 ascending:1];

  return v5;
}

@end