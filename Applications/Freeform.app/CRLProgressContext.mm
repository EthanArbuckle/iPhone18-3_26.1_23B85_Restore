@interface CRLProgressContext
- (CRLProgressContext)init;
- (double)currentPosition;
- (double)overallProgress;
- (id)addProgressObserverBlock:(id)block;
- (id)description;
- (void)addProgressObserver:(id)observer selector:(SEL)selector;
- (void)advanceProgress:(double)progress;
- (void)createStageWithSteps:(double)steps;
- (void)createStageWithSteps:(double)steps takingSteps:(double)takingSteps;
- (void)dealloc;
- (void)endStage;
- (void)nextSubStageWillTakeThisManyOfMySteps:(double)steps;
- (void)removeProgressObserver:(id)observer;
- (void)reportProgress:(double)progress overallProgress:(double)overallProgress;
- (void)reset;
- (void)setMessage:(id)message;
- (void)setPercentageProgressFromTCProgressContext:(double)context;
- (void)setProgress:(double)progress;
@end

@implementation CRLProgressContext

- (void)reset
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [[CRLProgressStage alloc] initRootStageInContext:obj];
  m_currentStage = obj->m_currentStage;
  obj->m_currentStage = v2;

  obj->m_lastProgressReport = 0.0;
  obj->m_lastOverallProgress = 0.0;
  objc_sync_exit(obj);
}

- (void)addProgressObserver:(id)observer selector:(SEL)selector
{
  observerCopy = observer;
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:observerCopy selector:selector name:@"CRLProgressNotification" object:self];
}

- (id)addProgressObserverBlock:(id)block
{
  blockCopy = block;
  v5 = +[NSNotificationCenter defaultCenter];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100244524;
  v9[3] = &unk_10184BC10;
  v10 = blockCopy;
  v6 = blockCopy;
  v7 = [v5 crl_addObserverForName:@"CRLProgressNotification" object:self queue:0 usingBlock:v9];

  return v7;
}

- (void)removeProgressObserver:(id)observer
{
  observerCopy = observer;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:observerCopy name:@"CRLProgressNotification" object:self];
}

- (void)createStageWithSteps:(double)steps takingSteps:(double)takingSteps
{
  if (steps >= 0.0)
  {
    stepsCopy = steps;
  }

  else
  {
    stepsCopy = 1.0;
  }

  if (takingSteps <= 0.0)
  {
    if (qword_101AD5A08 != -1)
    {
      sub_101339340();
    }

    v7 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_101339354(v7, takingSteps);
    }
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [[CRLProgressStage alloc] initWithSteps:selfCopy takingSteps:stepsCopy inContext:takingSteps];
  m_currentStage = selfCopy->m_currentStage;
  selfCopy->m_currentStage = v9;

  objc_sync_exit(selfCopy);
}

- (void)createStageWithSteps:(double)steps
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = selfCopy->m_currentStage;
  v6 = v5;
  if (v5)
  {
    [(CRLProgressStage *)v5 nextSubStageParentSize];
    v8 = v7;
    [(CRLProgressStage *)v6 setNextSubStageParentSize:1.0];
  }

  else
  {
    v8 = 1.0;
  }

  objc_sync_exit(selfCopy);

  [(CRLProgressContext *)selfCopy createStageWithSteps:steps takingSteps:v8];
}

- (void)nextSubStageWillTakeThisManyOfMySteps:(double)steps
{
  obj = self;
  objc_sync_enter(obj);
  v4 = obj->m_currentStage;
  v5 = v4;
  if (v4)
  {
    [(CRLProgressStage *)v4 setNextSubStageParentSize:steps];
  }

  objc_sync_exit(obj);
}

- (void)endStage
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj->m_currentStage;
  [(CRLProgressStage *)v2 end];
  parentStage = [(CRLProgressStage *)v2 parentStage];
  m_currentStage = obj->m_currentStage;
  obj->m_currentStage = parentStage;

  objc_sync_exit(obj);
}

- (void)advanceProgress:(double)progress
{
  obj = self;
  objc_sync_enter(obj);
  currentStage = [(CRLProgressContext *)obj currentStage];
  [currentStage advanceProgress:progress];

  objc_sync_exit(obj);
}

- (void)setProgress:(double)progress
{
  obj = self;
  objc_sync_enter(obj);
  currentStage = [(CRLProgressContext *)obj currentStage];
  [currentStage setProgress:progress];

  objc_sync_exit(obj);
}

- (void)setPercentageProgressFromTCProgressContext:(double)context
{
  obj = self;
  objc_sync_enter(obj);
  currentStage = [(CRLProgressContext *)obj currentStage];
  [currentStage setProgressPercentage:context];

  objc_sync_exit(obj);
}

- (void)setMessage:(id)message
{
  if (!message)
  {
    message = &stru_1018BCA28;
  }

  v5 = [NSDictionary dictionaryWithObject:message forKey:@"CRLProgressMessage"];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"CRLProgressNotification" object:self userInfo:v5];
}

- (double)currentPosition
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  currentStage = [(CRLProgressContext *)selfCopy currentStage];
  v4 = currentStage;
  if (currentStage)
  {
    [currentStage currentPosition];
    m_lastProgressReport = v5;
  }

  else
  {
    m_lastProgressReport = selfCopy->m_lastProgressReport;
  }

  objc_sync_exit(selfCopy);
  return m_lastProgressReport;
}

- (double)overallProgress
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  currentStage = [(CRLProgressContext *)selfCopy currentStage];
  v4 = currentStage;
  if (currentStage)
  {
    [currentStage overallProgress];
    m_lastOverallProgress = v5;
  }

  else
  {
    m_lastOverallProgress = selfCopy->m_lastOverallProgress;
  }

  objc_sync_exit(selfCopy);
  return m_lastOverallProgress;
}

- (id)description
{
  [(CRLProgressContext *)self currentPosition];
  v4 = v3;
  [(CRLProgressContext *)self overallProgress];
  v6 = [NSMutableString stringWithFormat:@"CRLProgressContext %p: currentPosition = %g, overallProgress = %g", self, v4, v5];
  currentStage = [(CRLProgressContext *)self currentStage];
  v8 = [NSString stringWithFormat:@"\ncurrentStage: %@", currentStage];
  [v6 appendString:v8];

  v9 = +[NSMutableString string];
  parentStage = [currentStage parentStage];

  if (parentStage)
  {
    do
    {
      [v9 appendString:@"    "];
      v11 = [NSString stringWithFormat:@"\n%@parent: %@", v9, parentStage];
      [v6 appendString:v11];

      v10ParentStage = [parentStage parentStage];

      parentStage = v10ParentStage;
    }

    while (v10ParentStage);
  }

  return v6;
}

- (CRLProgressContext)init
{
  v5.receiver = self;
  v5.super_class = CRLProgressContext;
  v2 = [(CRLProgressContext *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CRLProgressContext *)v2 reset];
  }

  return v3;
}

- (void)dealloc
{
  m_currentStage = self->m_currentStage;
  self->m_currentStage = 0;

  m_lastReportTime = self->m_lastReportTime;
  self->m_lastReportTime = 0;

  v5.receiver = self;
  v5.super_class = CRLProgressContext;
  [(CRLProgressContext *)&v5 dealloc];
}

- (void)reportProgress:(double)progress overallProgress:(double)overallProgress
{
  obj = self;
  objc_sync_enter(obj);
  obj->m_lastOverallProgress = overallProgress;
  m_lastReportTime = obj->m_lastReportTime;
  if (!m_lastReportTime || ([(NSDate *)m_lastReportTime timeIntervalSinceNow], progress >= 100.0) || v7 < -0.1 || progress - obj->m_lastProgressReport >= 5.0)
  {
    v8 = [NSNumber numberWithDouble:progress];
    v9 = [NSNumber numberWithDouble:overallProgress];
    v10 = [NSDictionary dictionaryWithObjectsAndKeys:v8, @"CRLProgressCurrentPosition", v9, @"CRLProgressOverallProgress", 0];
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 postNotificationName:@"CRLProgressNotification" object:obj userInfo:v10];

    v12 = +[NSDate date];
    v13 = obj->m_lastReportTime;
    obj->m_lastReportTime = v12;

    obj->m_lastProgressReport = progress;
  }

  objc_sync_exit(obj);
}

@end