@interface AMVMWaveformViewController
- ($F24F406B2B787EFB06265DBA3D28CBD5)allowedTimeRange;
- (NSHashTable)timeObservers;
- (RCTimeController)activeTimeController;
- (id)createNewWaveformViewControllerWithDataSource:(id)a3 isOverview:(BOOL)a4;
- (void)_configureWaveformViewWithDataSource:(id)a3;
- (void)_syncWaveformCompactness;
- (void)addTimeObserver:(id)a3;
- (void)removeTimeObserver:(id)a3;
- (void)reset;
- (void)setCurrentRate:(float)a3;
- (void)setCurrentTime:(double)a3;
- (void)setTargetTime:(double)a3;
- (void)setTimeControllerState:(int64_t)a3;
- (void)updatePowerLevel:(float)a3 startTime:(double)a4 endTime:(double)a5;
- (void)updatePowerLevels:(id)a3 startTime:(double)a4 endTime:(double)a5;
- (void)viewDidLoad;
- (void)willMoveToParentViewController:(id)a3;
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

- (void)updatePowerLevels:(id)a3 startTime:(double)a4 endTime:(double)a5
{
  v19 = a3;
  v8 = +[NSMutableData dataWithLength:](NSMutableData, "dataWithLength:", 4 * [v19 count]);
  v9 = [v8 mutableBytes];
  v10 = [v19 count];
  if (v10 >= 1)
  {
    v11 = v10;
    for (i = 0; i != v11; i = i + 1)
    {
      v13 = [v19 objectAtIndexedSubscript:i];
      [v13 floatValue];
      v9[i] = v14;
    }
  }

  v15 = RCTimeRangeMake(a4, a5);
  v17 = [[RCWaveformSegment alloc] initWithTimeRange:v8 averagePowerLevelData:v15, v16];
  v18 = [(AMVMWaveformViewController *)self waveformDataSource];
  [v18 appendAveragePowerLevelsByDigestingWaveformSegment:v17];

  [(AMVMWaveformViewController *)self setCurrentTime:0.0];
}

- (void)updatePowerLevel:(float)a3 startTime:(double)a4 endTime:(double)a5
{
  v14 = a3 + 3.0;
  v8 = +[NSMutableData data];
  v9 = 8;
  do
  {
    [v8 appendBytes:&v14 length:4];
    --v9;
  }

  while (v9);
  v10 = RCTimeRangeMake(a4, a5);
  v12 = [[RCWaveformSegment alloc] initWithTimeRange:v8 averagePowerLevelData:v10, v11];
  v13 = [(AMVMWaveformViewController *)self waveformDataSource];
  [v13 appendAveragePowerLevelsByDigestingWaveformSegment:v12];

  [(AMVMWaveformViewController *)self setCurrentTime:a5];
}

- (void)reset
{
  [(AMVMWaveformViewController *)self setCurrentTime:0.0];
  v4 = [(AMVMWaveformViewController *)self waveformViewController];
  v3 = [v4 waveformViewController];
  [v3 setDataSource:0];
}

- (void)setTimeControllerState:(int64_t)a3
{
  self->_timeControllerState = a3;
  if (a3 == 2)
  {
    v4 = [[RCWaveformGenerator alloc] initWithSegmentFlushInterval:30.0];
    v5 = [[AMWaveformDataSource alloc] initWithWaveformGenerator:v4];
    [(AMVMWaveformViewController *)self setWaveformDataSource:v5];

    v6 = [(AMVMWaveformViewController *)self waveformDataSource];
    [v6 beginLoading];

    v7 = [(AMVMWaveformViewController *)self waveformViewController];
    v8 = [v7 waveformViewController];
    v9 = [(AMVMWaveformViewController *)self waveformDataSource];
    [v8 setDataSource:v9];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [(NSHashTable *)self->_timeObservers allObjects];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v10);
        }

        [*(*(&v17 + 1) + 8 * v14) timeController:self didChangeState:self->_timeControllerState];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  if (self->_timeControllerState <= 1uLL)
  {
    v15 = [(AMVMWaveformViewController *)self waveformViewController];
    v16 = [v15 waveformViewController];
    [v16 setScrubbingEnabled:0];
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

- (void)addTimeObserver:(id)a3
{
  v4 = a3;
  v5 = [(AMVMWaveformViewController *)self timeObservers];
  [v5 addObject:v4];
}

- (void)removeTimeObserver:(id)a3
{
  v4 = a3;
  v5 = [(AMVMWaveformViewController *)self timeObservers];
  [v5 removeObject:v4];
}

- (void)setCurrentTime:(double)a3
{
  self->_currentTime = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSHashTable *)self->_timeObservers allObjects];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) timeController:self didChangeCurrentTime:a3];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setCurrentRate:(float)a3
{
  self->_currentRate = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSHashTable *)self->_timeObservers allObjects];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        *&v7 = a3;
        [*(*(&v11 + 1) + 8 * v10) timeController:self didChangeRate:v7];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)setTargetTime:(double)a3
{
  self->_targetTime = a3;
  if ([(AMVMWaveformViewController *)self timeControllerState]!= &dword_0 + 2)
  {

    [(AMVMWaveformViewController *)self setCurrentTime:a3];
  }
}

- (id)createNewWaveformViewControllerWithDataSource:(id)a3 isOverview:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[RCAVWaveformViewController alloc] initWithWaveformDataSource:v6 isOverview:v4 isLockScreen:0 delegate:self];

  [(AMVMWaveformViewController *)self setCurrentTime:0.0];
  [(AMVMWaveformViewController *)self setCurrentDuration:600.0];
  [(AMVMWaveformViewController *)self setActiveTimeController:self];
  v8 = [(AMVMWaveformViewController *)self activeTimeController];
  [(RCAVWaveformViewController *)v7 setActiveTimeController:v8];

  v9 = [(RCAVWaveformViewController *)v7 waveformViewController];
  [v9 setIsPlayback:1];

  return v7;
}

- (void)_configureWaveformViewWithDataSource:(id)a3
{
  v11 = a3;
  waveformViewController = self->_waveformViewController;
  if (!waveformViewController)
  {
    v5 = [(AMVMWaveformViewController *)self createNewWaveformViewControllerWithDataSource:v11 isOverview:0];
    [(AMVMWaveformViewController *)self setWaveformViewController:v5];
    v6 = [(AMVMWaveformViewController *)self view];
    v7 = [v5 view];
    [v6 addSubview:v7];

    v8 = [v5 waveformViewController];
    [v8 setIsOverview:0];

    [(AMVMWaveformViewController *)self addChildViewController:v5];
    [(RCAVWaveformViewController *)self->_waveformViewController didMoveToParentViewController:self];

    waveformViewController = self->_waveformViewController;
  }

  WeakRetained = objc_loadWeakRetained(&self->_activeTimeController);
  [(RCAVWaveformViewController *)waveformViewController reloadWaveformDataSource:v11 withActiveTimeController:WeakRetained];

  v10 = [(RCAVWaveformViewController *)self->_waveformViewController waveformViewController];
  [v10 setIsOverview:0];

  [(AMVMWaveformViewController *)self _syncWaveformCompactness];
}

- (void)_syncWaveformCompactness
{
  v3 = [(AMVMWaveformViewController *)self waveformViewController];
  v4 = [v3 waveformViewController];
  [v4 setShowPlayBarOnly:0];

  v5 = [(AMVMWaveformViewController *)self waveformViewController];
  v6 = [v5 waveformViewController];
  [v6 setIsCompactView:0];

  v7 = [(AMVMWaveformViewController *)self waveformViewController];
  [v7 setUserInteractionEnabled:0];
}

- (void)willMoveToParentViewController:(id)a3
{
  v7.receiver = self;
  v7.super_class = AMVMWaveformViewController;
  [(AMVMWaveformViewController *)&v7 willMoveToParentViewController:?];
  if (!a3)
  {
    [(RCAVWaveformViewController *)self->_waveformViewController willMoveToParentViewController:0];
    v5 = [(RCAVWaveformViewController *)self->_waveformViewController view];
    [v5 removeFromSuperview];

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