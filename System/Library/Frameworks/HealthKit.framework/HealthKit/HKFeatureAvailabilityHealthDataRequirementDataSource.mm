@interface HKFeatureAvailabilityHealthDataRequirementDataSource
- (HKFeatureAvailabilityHealthDataRequirementDataSource)initWithEvaluationProvider:(id)provider;
- (id)isRequirementSatisfied:(id)satisfied error:(id *)error;
- (id)withPrewarmedEvaluationOfRequirementSet:(id)set error:(id *)error handler:(id)handler;
- (void)registerObserver:(id)observer forRequirementSet:(id)set queue:(id)queue;
@end

@implementation HKFeatureAvailabilityHealthDataRequirementDataSource

- (HKFeatureAvailabilityHealthDataRequirementDataSource)initWithEvaluationProvider:(id)provider
{
  providerCopy = provider;
  v11.receiver = self;
  v11.super_class = HKFeatureAvailabilityHealthDataRequirementDataSource;
  v6 = [(HKFeatureAvailabilityHealthDataRequirementDataSource *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_evaluationProvider, provider);
    v7->_lock._os_unfair_lock_opaque = 0;
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    lock_prewarmedSatisfactionByRequirementStack = v7->_lock_prewarmedSatisfactionByRequirementStack;
    v7->_lock_prewarmedSatisfactionByRequirementStack = v8;
  }

  return v7;
}

- (id)withPrewarmedEvaluationOfRequirementSet:(id)set error:(id *)error handler:(id)handler
{
  handlerCopy = handler;
  allHealthDataRequirements = [(HKFeatureAvailabilityRequirementSet *)set allHealthDataRequirements];
  v10 = [(HKFeatureAvailabilityHealthDataRequirementEvaluationProviding *)self->_evaluationProvider evaluationOfRequirements:allHealthDataRequirements error:error];
  v11 = v10;
  if (v10)
  {
    if ([v10 count])
    {
      os_unfair_lock_lock(&self->_lock);
      [(NSMutableArray *)self->_lock_prewarmedSatisfactionByRequirementStack addObject:v11];
      os_unfair_lock_unlock(&self->_lock);
      v12 = handlerCopy[2](handlerCopy, error);
      os_unfair_lock_lock(&self->_lock);
      [(NSMutableArray *)self->_lock_prewarmedSatisfactionByRequirementStack removeLastObject];
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      v12 = handlerCopy[2](handlerCopy, error);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)isRequirementSatisfied:(id)satisfied error:(id *)error
{
  lock_prewarmedSatisfactionByRequirementStack = self->_lock_prewarmedSatisfactionByRequirementStack;
  satisfiedCopy = satisfied;
  lastObject = [(NSMutableArray *)lock_prewarmedSatisfactionByRequirementStack lastObject];
  v7 = [lastObject objectForKeyedSubscript:satisfiedCopy];

  return v7;
}

- (void)registerObserver:(id)observer forRequirementSet:(id)set queue:(id)queue
{
  queueCopy = queue;
  observerCopy = observer;
  allHealthDataRequirements = [(HKFeatureAvailabilityRequirementSet *)set allHealthDataRequirements];
  [(HKFeatureAvailabilityHealthDataRequirementEvaluationProviding *)self->_evaluationProvider registerObserver:observerCopy forRequirements:allHealthDataRequirements queue:queueCopy];
}

@end