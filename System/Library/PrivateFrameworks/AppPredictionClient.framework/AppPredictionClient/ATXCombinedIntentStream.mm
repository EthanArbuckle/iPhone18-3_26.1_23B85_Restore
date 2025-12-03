@interface ATXCombinedIntentStream
- (ATXCombinedIntentStream)init;
- (ATXCombinedIntentStream)initWithIntentStream:(id)stream activityStream:(id)activityStream;
- (ATXCombinedIntentStream)initWithIntentStream:(id)stream activityStream:(id)activityStream menuItemStream:(id)itemStream toolKitActionStream:(id)actionStream;
- (id)getCombinedIntentEventsBetweenStartDate:(id)date endDate:(id)endDate ascending:(BOOL)ascending;
- (id)getCombinedIntentEventsFromLastMonth;
- (id)getSortedCombinedIntentEventsBetweenStartDate:(id)date endDate:(id)endDate bundleIdFilter:(id)filter comparator:(id)comparator;
- (id)getSortedCombinedIntentEventsForTestingActionsBetweenStartDate:(id)date endDate:(id)endDate;
@end

@implementation ATXCombinedIntentStream

- (ATXCombinedIntentStream)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(ATXCombinedIntentStream *)self initWithIntentStream:v3 activityStream:v4];

  return v5;
}

- (ATXCombinedIntentStream)initWithIntentStream:(id)stream activityStream:(id)activityStream
{
  activityStreamCopy = activityStream;
  streamCopy = stream;
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v10 = [(ATXCombinedIntentStream *)self initWithIntentStream:streamCopy activityStream:activityStreamCopy menuItemStream:v8 toolKitActionStream:v9];

  return v10;
}

- (ATXCombinedIntentStream)initWithIntentStream:(id)stream activityStream:(id)activityStream menuItemStream:(id)itemStream toolKitActionStream:(id)actionStream
{
  streamCopy = stream;
  activityStreamCopy = activityStream;
  itemStreamCopy = itemStream;
  actionStreamCopy = actionStream;
  v18.receiver = self;
  v18.super_class = ATXCombinedIntentStream;
  v15 = [(ATXCombinedIntentStream *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_intentStream, stream);
    objc_storeStrong(&v16->_activityStream, activityStream);
    objc_storeStrong(&v16->_menuItemStream, itemStream);
    objc_storeStrong(&v16->_toolKitActionStream, actionStream);
  }

  return v16;
}

- (id)getSortedCombinedIntentEventsBetweenStartDate:(id)date endDate:(id)endDate bundleIdFilter:(id)filter comparator:(id)comparator
{
  dateCopy = date;
  endDateCopy = endDate;
  filterCopy = filter;
  comparatorCopy = comparator;
  context = objc_autoreleasePoolPush();
  v14 = [(ATXIntentStream *)self->_intentStream getIntentEventsBetweenStartDate:dateCopy endDate:endDateCopy forSource:1 bundleIdFilter:filterCopy allowMissingTitles:0];
  v15 = [(ATXUserActivityStream *)self->_activityStream getActivityIntentEventsBetweenStartDate:dateCopy endDate:endDateCopy bundleIdFilter:filterCopy];
  v16 = [(ATXMenuItemStream *)self->_menuItemStream getMenuItemEventsBetweenStartDate:dateCopy endDate:endDateCopy bundleIdFilter:filterCopy];
  v17 = [(ATXToolKitActionStream *)self->_toolKitActionStream getToolKitActionEventsBetweenStartDate:dateCopy endDate:endDateCopy bundleIdFilter:filterCopy];
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

  if (comparatorCopy)
  {
    [v18 sortUsingComparator:comparatorCopy];
  }

  v19 = [v18 copy];

  objc_autoreleasePoolPop(context);

  return v19;
}

- (id)getSortedCombinedIntentEventsForTestingActionsBetweenStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v8 = objc_autoreleasePoolPush();
  v9 = [(ATXIntentStream *)self->_intentStream getIntentEventsBetweenStartDate:dateCopy endDate:endDateCopy forSource:4 bundleIdFilter:0 allowMissingTitles:0];
  v10 = [(ATXToolKitActionStream *)self->_toolKitActionStream getToolKitActionEventsBetweenStartDate:dateCopy endDate:endDateCopy bundleIdFilter:0];
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

- (id)getCombinedIntentEventsBetweenStartDate:(id)date endDate:(id)endDate ascending:(BOOL)ascending
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__ATXCombinedIntentStream_getCombinedIntentEventsBetweenStartDate_endDate_ascending___block_invoke;
  v10[3] = &__block_descriptor_33_e43_q24__0__ATXIntentEvent_8__ATXIntentEvent_16l;
  ascendingCopy = ascending;
  v5 = [(ATXCombinedIntentStream *)self getSortedCombinedIntentEventsBetweenStartDate:date endDate:endDate bundleIdFilter:0 comparator:v10];
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
  date = [MEMORY[0x1E695DF00] date];
  v4 = [date dateByAddingTimeInterval:-2419200.0];
  v5 = [(ATXCombinedIntentStream *)self getCombinedIntentEventsBetweenStartDate:v4 endDate:date ascending:1];

  return v5;
}

@end