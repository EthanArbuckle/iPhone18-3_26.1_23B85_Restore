@interface ATXContextualActionCountCache
- (ATXContextualActionCountCache)init;
- (BOOL)isHeadingHomeActionTime:(id)a3;
- (BOOL)isHeadingToWorkActionTime:(id)a3;
- (BOOL)isOtherActionTime:(id)a3;
- (id)getAllCounts;
- (id)getCountsForContext:(id)a3;
- (void)addMinimalActionParameter:(id)a3;
@end

@implementation ATXContextualActionCountCache

- (ATXContextualActionCountCache)init
{
  v18.receiver = self;
  v18.super_class = ATXContextualActionCountCache;
  v2 = [(ATXContextualActionCountCache *)&v18 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] distantFuture];
    oldestAction = v2->_oldestAction;
    v2->_oldestAction = v3;

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

- (void)addMinimalActionParameter:(id)a3
{
  v4 = a3;
  v5 = [v4 actionTime];

  if (v5)
  {
    v6 = [v4 actionTime];
    [v4 setActionTime:0];
    v7 = [(NSDate *)self->_oldestAction earlierDate:v6];
    oldestAction = self->_oldestAction;
    self->_oldestAction = v7;

    v9 = [(ATXContextualActionCountCache *)self isHeadingToWorkActionTime:v6];
    v10 = [(ATXContextualActionCountCache *)self isHeadingHomeActionTime:v6];
    v11 = [(ATXContextualActionCountCache *)self isOtherActionTime:v6];
    if (v9)
    {
      [(NSCountedSet *)self->headingToWorkActions addObject:v4];
      if (!v10)
      {
LABEL_4:
        if (!v11)
        {
LABEL_6:

          goto LABEL_10;
        }

LABEL_5:
        [(NSCountedSet *)self->unspecifiedActions addObject:v4];
        goto LABEL_6;
      }
    }

    else if (!v10)
    {
      goto LABEL_4;
    }

    [(NSCountedSet *)self->headingHomeActions addObject:v4];
    if (!v11)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v12 = __atxlog_handle_dailyroutines();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [(ATXContextualActionCountCache *)v4 addMinimalActionParameter:v12];
  }

LABEL_10:
}

- (BOOL)isHeadingToWorkActionTime:(id)a3
{
  headingToWorkDateInterval = self->headingToWorkDateInterval;
  if (!headingToWorkDateInterval)
  {
    return 1;
  }

  v5 = a3;
  v6 = [(NSDateInterval *)headingToWorkDateInterval startDate];
  v7 = [(NSDateInterval *)self->headingToWorkDateInterval endDate];
  v8 = [ATXTimeUtil time:v5 isBetweenStartTime:v6 andEndTime:v7];

  return v8;
}

- (BOOL)isHeadingHomeActionTime:(id)a3
{
  headingHomeDateInterval = self->headingHomeDateInterval;
  if (!headingHomeDateInterval)
  {
    return 1;
  }

  v5 = a3;
  v6 = [(NSDateInterval *)headingHomeDateInterval startDate];
  v7 = [(NSDateInterval *)self->headingHomeDateInterval endDate];
  v8 = [ATXTimeUtil time:v5 isBetweenStartTime:v6 andEndTime:v7];

  return v8;
}

- (BOOL)isOtherActionTime:(id)a3
{
  otherDateInterval = self->otherDateInterval;
  if (!otherDateInterval)
  {
    return 1;
  }

  v5 = a3;
  v6 = [(NSDateInterval *)otherDateInterval startDate];
  v7 = [(NSDateInterval *)self->otherDateInterval endDate];
  v8 = [ATXTimeUtil time:v5 isBetweenStartTime:v6 andEndTime:v7];

  return v8;
}

- (id)getCountsForContext:(id)a3
{
  v4 = a3;
  v5 = [v4 contextType];
  switch(v5)
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
    [(ATXContextualActionCountCache *)v4 getCountsForContext:v8];
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Unsupported context type was given: %lu", objc_msgSend(v4, "contextType")}];
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