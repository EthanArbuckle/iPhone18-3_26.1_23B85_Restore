@interface BLSHLocalHostSceneEnvironmentUpdaterTimelinesCalculator
- (id)initWithDateInterval:(void *)interval previousPresentationDate:(void *)date localHostEnvironment:(void *)environment subHostedHostEnvironments:(char)environments shouldReset:(void *)reset osTimerProvider:;
- (void)calculateWithCompletion:(id)completion;
- (void)callCompletionIfDone;
- (void)lock_completeAllTimelineEntries;
- (void)requestDatesOperation:(id)operation didTimeoutPendingEnvironments:(id)environments;
- (void)requestDatesOperation:(id)operation environment:(id)environment didProvideSpecifiers:(id)specifiers forPresentationInterval:(id)interval isComplete:(BOOL)complete;
@end

@implementation BLSHLocalHostSceneEnvironmentUpdaterTimelinesCalculator

- (void)calculateWithCompletion:(id)completion
{
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  v6 = [MEMORY[0x277CBEB58] set];
  lock_timelines = self->_lock_timelines;
  self->_lock_timelines = v6;

  if (self->_lock_completion)
  {
    [BLSHLocalHostSceneEnvironmentUpdaterTimelinesCalculator calculateWithCompletion:a2];
  }

  v8 = MEMORY[0x223D70730](completionCopy);
  lock_completion = self->_lock_completion;
  self->_lock_completion = v8;

  v10 = [(NSArray *)self->_subHostedHostEnvironments count];
  if (!v10)
  {
    self->_lock_requestDatesOperationComplete = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  delegate = [(BLSBacklightSceneEnvironment *)self->_localHostEnvironment delegate];
  localHostEnvironment = self->_localHostEnvironment;
  dateInterval = self->_dateInterval;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __83__BLSHLocalHostSceneEnvironmentUpdaterTimelinesCalculator_calculateWithCompletion___block_invoke;
  v20[3] = &unk_278420568;
  v20[4] = self;
  [delegate environment:localHostEnvironment timelinesForDateInterval:dateInterval previousSpecifier:0 completion:v20];

  if (v10)
  {
    subHostedHostEnvironments = self->_subHostedHostEnvironments;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __83__BLSHLocalHostSceneEnvironmentUpdaterTimelinesCalculator_calculateWithCompletion___block_invoke_2;
    v19[3] = &unk_278420590;
    v19[4] = self;
    v15 = [(NSArray *)subHostedHostEnvironments bs_map:v19];
    v16 = [[BLSHEngineRequestDatesOperation alloc] initWithRequestInterval:self->_dateInterval delegate:self osTimerProvider:self->_osTimerProvider];
    os_unfair_lock_lock(&self->_lock);
    lock_requestDatesOperation = self->_lock_requestDatesOperation;
    self->_lock_requestDatesOperation = v16;
    v18 = v16;

    os_unfair_lock_unlock(&self->_lock);
    [(BLSHEngineRequestDatesOperation *)v18 beginOperationWithIntervals:v15 shouldReset:self->_shouldReset];
  }
}

uint64_t __83__BLSHLocalHostSceneEnvironmentUpdaterTimelinesCalculator_calculateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_lock(v3 + 2);
  [*(*(a1 + 32) + 16) addObjectsFromArray:v4];

  *(*(a1 + 32) + 41) = 1;
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v5 = *(a1 + 32);

  return [v5 callCompletionIfDone];
}

id __83__BLSHLocalHostSceneEnvironmentUpdaterTimelinesCalculator_calculateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 64);
  v4 = a2;
  v5 = [v3 alwaysOnSession];
  v6 = [v5 specifierForPresentationDate:*(*(a1 + 32) + 56)];

  v7 = [*(*(a1 + 32) + 64) identifier];
  v8 = [v6 entrySpecifierForTimelineIdentifier:v7];

  v9 = *(*(a1 + 32) + 48);
  v10 = [v8 timelineEntry];
  v11 = [v10 presentationTime];
  v12 = [BLSHEnvironmentDateInterval intervalWithPresentationInterval:v9 previousPresentationDate:v11 shouldReset:*(*(a1 + 32) + 88) environment:v4];

  return v12;
}

- (void)callCompletionIfDone
{
  os_unfair_lock_lock(&self->_lock);
  if (__PAIR64__(self->_lock_localHostEnvTimelinesComplete, self->_lock_requestDatesOperationComplete) == 0x100000001)
  {
    allObjects = [(NSMutableSet *)self->_lock_timelines allObjects];
    v6 = MEMORY[0x223D70730](self->_lock_completion);
    [(BLSHEngineRequestDatesOperation *)self->_lock_requestDatesOperation invalidate];
    lock_requestDatesOperation = self->_lock_requestDatesOperation;
    self->_lock_requestDatesOperation = 0;

    lock_completion = self->_lock_completion;
    self->_lock_completion = 0;

    os_unfair_lock_unlock(&self->_lock);
    v6[2](v6, self, allObjects);
  }

  else
  {
    v6 = MEMORY[0x223D70730](self->_lock_completion);
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)lock_completeAllTimelineEntries
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_lock_incompleteTimelineEntriesForDateInterval;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_lock_incompleteTimelineEntriesForDateInterval objectForKeyedSubscript:v8, v12];
        v10 = [MEMORY[0x277CF0858] timelineWithEntries:v9 identifier:v8 configure:0];
        [(NSMutableSet *)self->_lock_timelines addObject:v10];
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)requestDatesOperation:(id)operation environment:(id)environment didProvideSpecifiers:(id)specifiers forPresentationInterval:(id)interval isComplete:(BOOL)complete
{
  completeCopy = complete;
  environmentCopy = environment;
  v19 = [specifiers bs_map:&__block_literal_global_22];
  v11 = BLSHSubhostedEnvironmentIdentifierForEnvironment(environmentCopy);

  os_unfair_lock_lock(&self->_lock);
  v12 = [(NSMutableDictionary *)self->_lock_incompleteTimelineEntriesForDateInterval objectForKey:v11];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 arrayByAddingObjectsFromArray:v19];

    v15 = v14;
  }

  else
  {
    v15 = v19;
  }

  lock_incompleteTimelineEntriesForDateInterval = self->_lock_incompleteTimelineEntriesForDateInterval;
  v20 = v15;
  if (!lock_incompleteTimelineEntriesForDateInterval)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v18 = self->_lock_incompleteTimelineEntriesForDateInterval;
    self->_lock_incompleteTimelineEntriesForDateInterval = dictionary;

    lock_incompleteTimelineEntriesForDateInterval = self->_lock_incompleteTimelineEntriesForDateInterval;
  }

  [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];
  if (completeCopy)
  {
    self->_lock_requestDatesOperationComplete = 1;
    [(BLSHLocalHostSceneEnvironmentUpdaterTimelinesCalculator *)self lock_completeAllTimelineEntries];
    os_unfair_lock_unlock(&self->_lock);
    [(BLSHLocalHostSceneEnvironmentUpdaterTimelinesCalculator *)self callCompletionIfDone];
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }
}

id __149__BLSHLocalHostSceneEnvironmentUpdaterTimelinesCalculator_requestDatesOperation_environment_didProvideSpecifiers_forPresentationInterval_isComplete___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CF0860];
  v3 = a2;
  v4 = [v3 date];
  v5 = [v3 fidelity];

  v6 = [v2 entryForPresentationTime:v4 withRequestedFidelity:v5 animated:0 userObject:0];

  return v6;
}

- (void)requestDatesOperation:(id)operation didTimeoutPendingEnvironments:(id)environments
{
  if ([operation isComplete])
  {
    os_unfair_lock_lock(&self->_lock);
    self->_lock_requestDatesOperationComplete = 1;
    [(BLSHLocalHostSceneEnvironmentUpdaterTimelinesCalculator *)self lock_completeAllTimelineEntries];
    os_unfair_lock_unlock(&self->_lock);

    [(BLSHLocalHostSceneEnvironmentUpdaterTimelinesCalculator *)self callCompletionIfDone];
  }
}

- (id)initWithDateInterval:(void *)interval previousPresentationDate:(void *)date localHostEnvironment:(void *)environment subHostedHostEnvironments:(char)environments shouldReset:(void *)reset osTimerProvider:
{
  v13 = a2;
  intervalCopy = interval;
  dateCopy = date;
  environmentCopy = environment;
  resetCopy = reset;
  if (self)
  {
    v26.receiver = self;
    v26.super_class = BLSHLocalHostSceneEnvironmentUpdaterTimelinesCalculator;
    v18 = objc_msgSendSuper2(&v26, sel_init);
    self = v18;
    if (v18)
    {
      *(v18 + 2) = 0;
      v19 = [v13 copy];
      v20 = self[6];
      self[6] = v19;

      v21 = [intervalCopy copy];
      v22 = self[7];
      self[7] = v21;

      objc_storeStrong(self + 8, date);
      v23 = [environmentCopy copy];
      v24 = self[9];
      self[9] = v23;

      *(self + 88) = environments;
      objc_storeStrong(self + 10, reset);
    }
  }

  return self;
}

- (void)calculateWithCompletion:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"we only support one calculation in-flight at a time"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2_2(&dword_21FD11000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end