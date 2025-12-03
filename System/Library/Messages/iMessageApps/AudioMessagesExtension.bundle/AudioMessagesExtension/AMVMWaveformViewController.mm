@interface AMVMWaveformViewController
- ($F24F406B2B787EFB06265DBA3D28CBD5)allowedTimeRange;
- (NSHashTable)timeObservers;
- (RCTimeController)activeTimeController;
- (id)createNewWaveformViewControllerWithDataSource:(id)source isOverview:(BOOL)overview;
- (void)_configureWaveformViewWithDataSource:(id)source;
- (void)_syncWaveformCompactness;
- (void)addTimeObserver:(id)observer;
- (void)removeTimeObserver:(id)observer;
- (void)reset;
- (void)setCurrentRate:(float)rate;
- (void)setCurrentTime:(double)time;
- (void)setTargetTime:(double)time;
- (void)setTimeControllerState:(int64_t)state;
- (void)updatePowerLevel:(float)level startTime:(double)time endTime:(double)endTime;
- (void)updatePowerLevels:(id)levels startTime:(double)time endTime:(double)endTime;
- (void)viewDidLoad;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation AMVMWaveformViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = AMVMWaveformViewController;
  [(AMVMWaveformViewController *)&v6 viewDidLoad];
  v3 = [[RCWaveformGenerator alloc] initWithSegmentFlushInterval:30.0];
  v4 = [[AMWaveformDataSource alloc] initWithWaveformGenerator:v3];
  waveformDataSource = self->_waveformDataSource;
  self->_waveformDataSource = v4;

  [(AMVMWaveformViewController *)self _configureWaveformViewWithDataSource:self->_waveformDataSource];
}

- (void)updatePowerLevels:(id)levels startTime:(double)time endTime:(double)endTime
{
  levelsCopy = levels;
  v8 = +[NSMutableData dataWithLength:](NSMutableData, "dataWithLength:", 4 * [levelsCopy count]);
  mutableBytes = [v8 mutableBytes];
  v10 = [levelsCopy count];
  if (v10 >= 1)
  {
    v11 = v10;
    for (i = 0; i != v11; i = i + 1)
    {
      v13 = [levelsCopy objectAtIndexedSubscript:i];
      [v13 floatValue];
      mutableBytes[i] = v14;
    }
  }

  v15 = RCTimeRangeMake(time, endTime);
  v17 = [[RCWaveformSegment alloc] initWithTimeRange:v8 averagePowerLevelData:v15, v16];
  waveformDataSource = [(AMVMWaveformViewController *)self waveformDataSource];
  [waveformDataSource appendAveragePowerLevelsByDigestingWaveformSegment:v17];

  [(AMVMWaveformViewController *)self setCurrentTime:0.0];
}

- (void)updatePowerLevel:(float)level startTime:(double)time endTime:(double)endTime
{
  v14 = level + 3.0;
  v8 = +[NSMutableData data];
  v9 = 8;
  do
  {
    [v8 appendBytes:&v14 length:4];
    --v9;
  }

  while (v9);
  v10 = RCTimeRangeMake(time, endTime);
  v12 = [[RCWaveformSegment alloc] initWithTimeRange:v8 averagePowerLevelData:v10, v11];
  waveformDataSource = [(AMVMWaveformViewController *)self waveformDataSource];
  [waveformDataSource appendAveragePowerLevelsByDigestingWaveformSegment:v12];

  [(AMVMWaveformViewController *)self setCurrentTime:endTime];
}

- (void)reset
{
  [(AMVMWaveformViewController *)self setCurrentTime:0.0];
  waveformViewController = [(AMVMWaveformViewController *)self waveformViewController];
  v4WaveformViewController = [waveformViewController waveformViewController];
  [v4WaveformViewController setDataSource:0];
}

- (void)setTimeControllerState:(int64_t)state
{
  self->_timeControllerState = state;
  if (state == 2)
  {
    v4 = [[RCWaveformGenerator alloc] initWithSegmentFlushInterval:30.0];
    v5 = [[AMWaveformDataSource alloc] initWithWaveformGenerator:v4];
    [(AMVMWaveformViewController *)self setWaveformDataSource:v5];

    waveformDataSource = [(AMVMWaveformViewController *)self waveformDataSource];
    [waveformDataSource beginLoading];

    waveformViewController = [(AMVMWaveformViewController *)self waveformViewController];
    v7WaveformViewController = [waveformViewController waveformViewController];
    waveformDataSource2 = [(AMVMWaveformViewController *)self waveformDataSource];
    [v7WaveformViewController setDataSource:waveformDataSource2];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  allObjects = [(NSHashTable *)self->_timeObservers allObjects];
  v11 = [allObjects countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v17 + 1) + 8 * v14) timeController:self didChangeState:self->_timeControllerState];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [allObjects countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  if (self->_timeControllerState <= 1uLL)
  {
    waveformViewController2 = [(AMVMWaveformViewController *)self waveformViewController];
    v15WaveformViewController = [waveformViewController2 waveformViewController];
    [v15WaveformViewController setScrubbingEnabled:0];
  }
}

- (NSHashTable)timeObservers
{
  timeObservers = self->_timeObservers;
  if (!timeObservers)
  {
    v4 = +[NSHashTable weakObjectsHashTable];
    v5 = self->_timeObservers;
    self->_timeObservers = v4;

    timeObservers = self->_timeObservers;
  }

  return timeObservers;
}

- (void)addTimeObserver:(id)observer
{
  observerCopy = observer;
  timeObservers = [(AMVMWaveformViewController *)self timeObservers];
  [timeObservers addObject:observerCopy];
}

- (void)removeTimeObserver:(id)observer
{
  observerCopy = observer;
  timeObservers = [(AMVMWaveformViewController *)self timeObservers];
  [timeObservers removeObject:observerCopy];
}

- (void)setCurrentTime:(double)time
{
  self->_currentTime = time;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allObjects = [(NSHashTable *)self->_timeObservers allObjects];
  v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v10 + 1) + 8 * v9) timeController:self didChangeCurrentTime:time];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setCurrentRate:(float)rate
{
  self->_currentRate = rate;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allObjects = [(NSHashTable *)self->_timeObservers allObjects];
  v6 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(allObjects);
        }

        *&v7 = rate;
        [*(*(&v11 + 1) + 8 * v10) timeController:self didChangeRate:v7];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)setTargetTime:(double)time
{
  self->_targetTime = time;
  if ([(AMVMWaveformViewController *)self timeControllerState]!= &dword_0 + 2)
  {

    [(AMVMWaveformViewController *)self setCurrentTime:time];
  }
}

- (id)createNewWaveformViewControllerWithDataSource:(id)source isOverview:(BOOL)overview
{
  overviewCopy = overview;
  sourceCopy = source;
  v7 = [[RCAVWaveformViewController alloc] initWithWaveformDataSource:sourceCopy isOverview:overviewCopy isLockScreen:0 delegate:self];

  [(AMVMWaveformViewController *)self setCurrentTime:0.0];
  [(AMVMWaveformViewController *)self setCurrentDuration:600.0];
  [(AMVMWaveformViewController *)self setActiveTimeController:self];
  activeTimeController = [(AMVMWaveformViewController *)self activeTimeController];
  [(RCAVWaveformViewController *)v7 setActiveTimeController:activeTimeController];

  waveformViewController = [(RCAVWaveformViewController *)v7 waveformViewController];
  [waveformViewController setIsPlayback:1];

  return v7;
}

- (void)_configureWaveformViewWithDataSource:(id)source
{
  sourceCopy = source;
  waveformViewController = self->_waveformViewController;
  if (!waveformViewController)
  {
    v5 = [(AMVMWaveformViewController *)self createNewWaveformViewControllerWithDataSource:sourceCopy isOverview:0];
    [(AMVMWaveformViewController *)self setWaveformViewController:v5];
    view = [(AMVMWaveformViewController *)self view];
    view2 = [v5 view];
    [view addSubview:view2];

    waveformViewController = [v5 waveformViewController];
    [waveformViewController setIsOverview:0];

    [(AMVMWaveformViewController *)self addChildViewController:v5];
    [(RCAVWaveformViewController *)self->_waveformViewController didMoveToParentViewController:self];

    waveformViewController = self->_waveformViewController;
  }

  WeakRetained = objc_loadWeakRetained(&self->_activeTimeController);
  [(RCAVWaveformViewController *)waveformViewController reloadWaveformDataSource:sourceCopy withActiveTimeController:WeakRetained];

  waveformViewController2 = [(RCAVWaveformViewController *)self->_waveformViewController waveformViewController];
  [waveformViewController2 setIsOverview:0];

  [(AMVMWaveformViewController *)self _syncWaveformCompactness];
}

- (void)_syncWaveformCompactness
{
  waveformViewController = [(AMVMWaveformViewController *)self waveformViewController];
  v3WaveformViewController = [waveformViewController waveformViewController];
  [v3WaveformViewController setShowPlayBarOnly:0];

  waveformViewController2 = [(AMVMWaveformViewController *)self waveformViewController];
  v5WaveformViewController = [waveformViewController2 waveformViewController];
  [v5WaveformViewController setIsCompactView:0];

  waveformViewController3 = [(AMVMWaveformViewController *)self waveformViewController];
  [waveformViewController3 setUserInteractionEnabled:0];
}

- (void)willMoveToParentViewController:(id)controller
{
  v7.receiver = self;
  v7.super_class = AMVMWaveformViewController;
  [(AMVMWaveformViewController *)&v7 willMoveToParentViewController:?];
  if (!controller)
  {
    [(RCAVWaveformViewController *)self->_waveformViewController willMoveToParentViewController:0];
    view = [(RCAVWaveformViewController *)self->_waveformViewController view];
    [view removeFromSuperview];

    [(RCAVWaveformViewController *)self->_waveformViewController removeFromParentViewController];
    waveformViewController = self->_waveformViewController;
    self->_waveformViewController = 0;
  }
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)allowedTimeRange
{
  beginTime = self->_allowedTimeRange.beginTime;
  endTime = self->_allowedTimeRange.endTime;
  result.var1 = endTime;
  result.var0 = beginTime;
  return result;
}

- (RCTimeController)activeTimeController
{
  WeakRetained = objc_loadWeakRetained(&self->_activeTimeController);

  return WeakRetained;
}

@end