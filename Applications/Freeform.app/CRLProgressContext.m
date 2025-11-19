@interface CRLProgressContext
- (CRLProgressContext)init;
- (double)currentPosition;
- (double)overallProgress;
- (id)addProgressObserverBlock:(id)a3;
- (id)description;
- (void)addProgressObserver:(id)a3 selector:(SEL)a4;
- (void)advanceProgress:(double)a3;
- (void)createStageWithSteps:(double)a3;
- (void)createStageWithSteps:(double)a3 takingSteps:(double)a4;
- (void)dealloc;
- (void)endStage;
- (void)nextSubStageWillTakeThisManyOfMySteps:(double)a3;
- (void)removeProgressObserver:(id)a3;
- (void)reportProgress:(double)a3 overallProgress:(double)a4;
- (void)reset;
- (void)setMessage:(id)a3;
- (void)setPercentageProgressFromTCProgressContext:(double)a3;
- (void)setProgress:(double)a3;
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

- (void)addProgressObserver:(id)a3 selector:(SEL)a4
{
  v6 = a3;
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:v6 selector:a4 name:@"CRLProgressNotification" object:self];
}

- (id)addProgressObserverBlock:(id)a3
{
  v4 = a3;
  v5 = +[NSNotificationCenter defaultCenter];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100244524;
  v9[3] = &unk_10184BC10;
  v10 = v4;
  v6 = v4;
  v7 = [v5 crl_addObserverForName:@"CRLProgressNotification" object:self queue:0 usingBlock:v9];

  return v7;
}

- (void)removeProgressObserver:(id)a3
{
  v4 = a3;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:v4 name:@"CRLProgressNotification" object:self];
}

- (void)createStageWithSteps:(double)a3 takingSteps:(double)a4
{
  if (a3 >= 0.0)
  {
    v6 = a3;
  }

  else
  {
    v6 = 1.0;
  }

  if (a4 <= 0.0)
  {
    if (qword_101AD5A08 != -1)
    {
      sub_101339340();
    }

    v7 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_101339354(v7, a4);
    }
  }

  v8 = self;
  objc_sync_enter(v8);
  v9 = [[CRLProgressStage alloc] initWithSteps:v8 takingSteps:v6 inContext:a4];
  m_currentStage = v8->m_currentStage;
  v8->m_currentStage = v9;

  objc_sync_exit(v8);
}

- (void)createStageWithSteps:(double)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v5 = v4->m_currentStage;
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

  objc_sync_exit(v4);

  [(CRLProgressContext *)v4 createStageWithSteps:a3 takingSteps:v8];
}

- (void)nextSubStageWillTakeThisManyOfMySteps:(double)a3
{
  obj = self;
  objc_sync_enter(obj);
  v4 = obj->m_currentStage;
  v5 = v4;
  if (v4)
  {
    [(CRLProgressStage *)v4 setNextSubStageParentSize:a3];
  }

  objc_sync_exit(obj);
}

- (void)endStage
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj->m_currentStage;
  [(CRLProgressStage *)v2 end];
  v3 = [(CRLProgressStage *)v2 parentStage];
  m_currentStage = obj->m_currentStage;
  obj->m_currentStage = v3;

  objc_sync_exit(obj);
}

- (void)advanceProgress:(double)a3
{
  obj = self;
  objc_sync_enter(obj);
  v4 = [(CRLProgressContext *)obj currentStage];
  [v4 advanceProgress:a3];

  objc_sync_exit(obj);
}

- (void)setProgress:(double)a3
{
  obj = self;
  objc_sync_enter(obj);
  v4 = [(CRLProgressContext *)obj currentStage];
  [v4 setProgress:a3];

  objc_sync_exit(obj);
}

- (void)setPercentageProgressFromTCProgressContext:(double)a3
{
  obj = self;
  objc_sync_enter(obj);
  v4 = [(CRLProgressContext *)obj currentStage];
  [v4 setProgressPercentage:a3];

  objc_sync_exit(obj);
}

- (void)setMessage:(id)a3
{
  if (!a3)
  {
    a3 = &stru_1018BCA28;
  }

  v5 = [NSDictionary dictionaryWithObject:a3 forKey:@"CRLProgressMessage"];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"CRLProgressNotification" object:self userInfo:v5];
}

- (double)currentPosition
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(CRLProgressContext *)v2 currentStage];
  v4 = v3;
  if (v3)
  {
    [v3 currentPosition];
    m_lastProgressReport = v5;
  }

  else
  {
    m_lastProgressReport = v2->m_lastProgressReport;
  }

  objc_sync_exit(v2);
  return m_lastProgressReport;
}

- (double)overallProgress
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(CRLProgressContext *)v2 currentStage];
  v4 = v3;
  if (v3)
  {
    [v3 overallProgress];
    m_lastOverallProgress = v5;
  }

  else
  {
    m_lastOverallProgress = v2->m_lastOverallProgress;
  }

  objc_sync_exit(v2);
  return m_lastOverallProgress;
}

- (id)description
{
  [(CRLProgressContext *)self currentPosition];
  v4 = v3;
  [(CRLProgressContext *)self overallProgress];
  v6 = [NSMutableString stringWithFormat:@"CRLProgressContext %p: currentPosition = %g, overallProgress = %g", self, v4, v5];
  v7 = [(CRLProgressContext *)self currentStage];
  v8 = [NSString stringWithFormat:@"\ncurrentStage: %@", v7];
  [v6 appendString:v8];

  v9 = +[NSMutableString string];
  v10 = [v7 parentStage];

  if (v10)
  {
    do
    {
      [v9 appendString:@"    "];
      v11 = [NSString stringWithFormat:@"\n%@parent: %@", v9, v10];
      [v6 appendString:v11];

      v12 = [v10 parentStage];

      v10 = v12;
    }

    while (v12);
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

- (void)reportProgress:(double)a3 overallProgress:(double)a4
{
  obj = self;
  objc_sync_enter(obj);
  obj->m_lastOverallProgress = a4;
  m_lastReportTime = obj->m_lastReportTime;
  if (!m_lastReportTime || ([(NSDate *)m_lastReportTime timeIntervalSinceNow], a3 >= 100.0) || v7 < -0.1 || a3 - obj->m_lastProgressReport >= 5.0)
  {
    v8 = [NSNumber numberWithDouble:a3];
    v9 = [NSNumber numberWithDouble:a4];
    v10 = [NSDictionary dictionaryWithObjectsAndKeys:v8, @"CRLProgressCurrentPosition", v9, @"CRLProgressOverallProgress", 0];
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 postNotificationName:@"CRLProgressNotification" object:obj userInfo:v10];

    v12 = +[NSDate date];
    v13 = obj->m_lastReportTime;
    obj->m_lastReportTime = v12;

    obj->m_lastProgressReport = a3;
  }

  objc_sync_exit(obj);
}

@end