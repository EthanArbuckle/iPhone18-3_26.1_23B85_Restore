@interface ATXContextualActionCountCache
- (ATXContextualActionCountCache)init;
- (BOOL)isHeadingHomeActionTime:(id)time;
- (BOOL)isHeadingToWorkActionTime:(id)time;
- (BOOL)isOtherActionTime:(id)time;
- (id)getAllCounts;
- (id)getCountsForContext:(id)context;
- (void)addMinimalActionParameter:(id)parameter;
@end

@implementation ATXContextualActionCountCache

- (ATXContextualActionCountCache)init
{
  v18.receiver = self;
  v18.super_class = ATXContextualActionCountCache;
  v2 = [(ATXContextualActionCountCache *)&v18 init];
  if (v2)
  {
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    oldestAction = v2->_oldestAction;
    v2->_oldestAction = distantFuture;

    v5 = objc_opt_new();
    headingToWorkActions = v2->headingToWorkActions;
    v2->headingToWorkActions = v5;

    v7 = objc_opt_new();
    headingHomeActions = v2->headingHomeActions;
    v2->headingHomeActions = v7;

    v9 = objc_opt_new();
    unspecifiedActions = v2->unspecifiedActions;
    v2->unspecifiedActions = v9;

    objc_storeStrong(&v2->allActions, v2->unspecifiedActions);
    v11 = [MEMORY[0x277CEB428] defaultTimeWindowForContextType:2];
    headingToWorkDateInterval = v2->headingToWorkDateInterval;
    v2->headingToWorkDateInterval = v11;

    v13 = [MEMORY[0x277CEB428] defaultTimeWindowForContextType:1];
    headingHomeDateInterval = v2->headingHomeDateInterval;
    v2->headingHomeDateInterval = v13;

    v15 = [MEMORY[0x277CEB428] defaultTimeWindowForContextType:0];
    otherDateInterval = v2->otherDateInterval;
    v2->otherDateInterval = v15;
  }

  return v2;
}

- (void)addMinimalActionParameter:(id)parameter
{
  parameterCopy = parameter;
  actionTime = [parameterCopy actionTime];

  if (actionTime)
  {
    actionTime2 = [parameterCopy actionTime];
    [parameterCopy setActionTime:0];
    v7 = [(NSDate *)self->_oldestAction earlierDate:actionTime2];
    oldestAction = self->_oldestAction;
    self->_oldestAction = v7;

    v9 = [(ATXContextualActionCountCache *)self isHeadingToWorkActionTime:actionTime2];
    v10 = [(ATXContextualActionCountCache *)self isHeadingHomeActionTime:actionTime2];
    v11 = [(ATXContextualActionCountCache *)self isOtherActionTime:actionTime2];
    if (v9)
    {
      [(NSCountedSet *)self->headingToWorkActions addObject:parameterCopy];
      if (!v10)
      {
LABEL_4:
        if (!v11)
        {
LABEL_6:

          goto LABEL_10;
        }

LABEL_5:
        [(NSCountedSet *)self->unspecifiedActions addObject:parameterCopy];
        goto LABEL_6;
      }
    }

    else if (!v10)
    {
      goto LABEL_4;
    }

    [(NSCountedSet *)self->headingHomeActions addObject:parameterCopy];
    if (!v11)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v12 = __atxlog_handle_dailyroutines();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [(ATXContextualActionCountCache *)parameterCopy addMinimalActionParameter:v12];
  }

LABEL_10:
}

- (BOOL)isHeadingToWorkActionTime:(id)time
{
  headingToWorkDateInterval = self->headingToWorkDateInterval;
  if (!headingToWorkDateInterval)
  {
    return 1;
  }

  timeCopy = time;
  startDate = [(NSDateInterval *)headingToWorkDateInterval startDate];
  endDate = [(NSDateInterval *)self->headingToWorkDateInterval endDate];
  v8 = [ATXTimeUtil time:timeCopy isBetweenStartTime:startDate andEndTime:endDate];

  return v8;
}

- (BOOL)isHeadingHomeActionTime:(id)time
{
  headingHomeDateInterval = self->headingHomeDateInterval;
  if (!headingHomeDateInterval)
  {
    return 1;
  }

  timeCopy = time;
  startDate = [(NSDateInterval *)headingHomeDateInterval startDate];
  endDate = [(NSDateInterval *)self->headingHomeDateInterval endDate];
  v8 = [ATXTimeUtil time:timeCopy isBetweenStartTime:startDate andEndTime:endDate];

  return v8;
}

- (BOOL)isOtherActionTime:(id)time
{
  otherDateInterval = self->otherDateInterval;
  if (!otherDateInterval)
  {
    return 1;
  }

  timeCopy = time;
  startDate = [(NSDateInterval *)otherDateInterval startDate];
  endDate = [(NSDateInterval *)self->otherDateInterval endDate];
  v8 = [ATXTimeUtil time:timeCopy isBetweenStartTime:startDate andEndTime:endDate];

  return v8;
}

- (id)getCountsForContext:(id)context
{
  contextCopy = context;
  contextType = [contextCopy contextType];
  switch(contextType)
  {
    case 0:
      unspecifiedActions = self->unspecifiedActions;
      goto LABEL_7;
    case 1:
      unspecifiedActions = self->headingHomeActions;
      goto LABEL_7;
    case 2:
      unspecifiedActions = self->headingToWorkActions;
LABEL_7:
      v7 = [(NSCountedSet *)unspecifiedActions copy];
      goto LABEL_11;
  }

  v8 = __atxlog_handle_default();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(ATXContextualActionCountCache *)contextCopy getCountsForContext:v8];
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Unsupported context type was given: %lu", objc_msgSend(contextCopy, "contextType")}];
  v7 = objc_opt_new();
LABEL_11:
  v9 = v7;

  return v9;
}

- (id)getAllCounts
{
  v2 = [(NSCountedSet *)self->allActions copy];

  return v2;
}

- (void)addMinimalActionParameter:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [a1 bundleId];
  v5 = [a1 actionType];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Cannot process action %@:%@ without valid actionTime", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)getCountsForContext:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 134217984;
  v5 = [a1 contextType];
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Unsupported context type was given: %lu", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end