@interface MapsAppTestVLF
+ (id)pptRecordingFileLocation;
- (BOOL)runTest;
- (MapsAppTestVLF)initWithApplication:(id)application testName:(id)name options:(id)options;
- (VLFSessionTask)task;
- (VLFSessionTileAvailabilityMonitor)tileAvailabilityMonitor;
- (void)_dismissVLFUI;
- (void)_runVLF;
- (void)_showVLFUI;
- (void)_start;
- (void)_waitForTileAvailability;
- (void)auxiliaryTasksManagerDidUpdateAuxiliaryTasksNotification:(id)notification;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setTask:(id)task;
@end

@implementation MapsAppTestVLF

- (VLFSessionTileAvailabilityMonitor)tileAvailabilityMonitor
{
  WeakRetained = objc_loadWeakRetained(&self->_tileAvailabilityMonitor);

  return WeakRetained;
}

- (VLFSessionTask)task
{
  WeakRetained = objc_loadWeakRetained(&self->_task);

  return WeakRetained;
}

- (void)auxiliaryTasksManagerDidUpdateAuxiliaryTasksNotification:(id)notification
{
  object = [notification object];
  v4 = [object auxilaryTaskForClass:objc_opt_class()];
  [(MapsAppTestVLF *)self setTask:v4];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  tileAvailabilityMonitor = [(MapsAppTestVLF *)self tileAvailabilityMonitor];
  v14 = tileAvailabilityMonitor;
  if (tileAvailabilityMonitor != objectCopy)
  {

LABEL_6:
    v19.receiver = self;
    v19.super_class = MapsAppTestVLF;
    [(MapsAppTestVLF *)&v19 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
    goto LABEL_7;
  }

  v15 = [pathCopy isEqualToString:@"state"];

  if (!v15)
  {
    goto LABEL_6;
  }

  tileAvailabilityMonitor2 = [(MapsAppTestVLF *)self tileAvailabilityMonitor];
  state = [tileAvailabilityMonitor2 state];

  if (state == 2)
  {
    tileAvailabilityMonitor3 = [(MapsAppTestVLF *)self tileAvailabilityMonitor];
    [tileAvailabilityMonitor3 removeObserver:self forKeyPath:@"state"];

    [(MapsAppTestVLF *)self setWaitingForTileAvailability:0];
    [(MapsAppTest *)self finishedSubTest:@"tileAvailability"];
    [(MapsAppTestVLF *)self _showVLFUI];
  }

LABEL_7:
}

- (void)_dismissVLFUI
{
  [(MapsAppTest *)self startedSubTest:@"dismissVLFUI"];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100893640;
  v3[3] = &unk_101650D20;
  v3[4] = self;
  [PPTNotificationCenter addOnceObserverForName:@"VLFContaineeViewControllerDidDisappearNotification" object:0 usingBlock:v3];
}

- (void)_runVLF
{
  [(MapsAppTest *)self startedSubTest:@"runVLF"];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10089371C;
  v3[3] = &unk_101650D20;
  v3[4] = self;
  [PPTNotificationCenter addOnceObserverForName:@"VLFSessionDidStopNotification" object:0 usingBlock:v3];
}

- (void)_showVLFUI
{
  [(MapsAppTest *)self startedSubTest:@"showVLFUI"];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100893910;
  v8[3] = &unk_101650D20;
  v8[4] = self;
  [PPTNotificationCenter addOnceObserverForName:@"VLFContaineeViewControllerDidAppearNotification" object:0 usingBlock:v8];
  v3 = +[NSFileManager defaultManager];
  pptRecordingFileLocation = [objc_opt_class() pptRecordingFileLocation];
  v5 = [v3 fileExistsAtPath:pptRecordingFileLocation];

  pptRecordingFileLocation2 = [objc_opt_class() pptRecordingFileLocation];
  if (v5)
  {
    GEOConfigSetString();

    pptRecordingFileLocation2 = [(MapsAppTestVLF *)self task];
    [pptRecordingFileLocation2 showVLFUI];
  }

  else
  {
    v7 = [NSString stringWithFormat:@"PPT recording file is not present at expected location: %@", pptRecordingFileLocation2];
    [(MapsAppTest *)self failedTestWithReason:v7];
  }
}

- (void)_waitForTileAvailability
{
  [(MapsAppTest *)self startedSubTest:@"tileAvailability"];
  tileAvailabilityMonitor = [(MapsAppTestVLF *)self tileAvailabilityMonitor];
  state = [tileAvailabilityMonitor state];

  if (state == 2)
  {
    [(MapsAppTest *)self finishedSubTest:@"tileAvailability"];

    [(MapsAppTestVLF *)self _showVLFUI];
  }

  else
  {
    [(MapsAppTestVLF *)self setWaitingForTileAvailability:1];
    tileAvailabilityMonitor2 = [(MapsAppTestVLF *)self tileAvailabilityMonitor];
    [tileAvailabilityMonitor2 addObserver:self forKeyPath:@"state" options:1 context:0];
  }
}

- (void)_start
{
  [(MapsAppTest *)self startedTest];

  [(MapsAppTestVLF *)self _waitForTileAvailability];
}

- (BOOL)runTest
{
  task = [(MapsAppTestVLF *)self task];

  if (task)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100893B14;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    [(MapsAppTestVLF *)self setWaitingForTask:1];
  }

  return 1;
}

- (void)setTask:(id)task
{
  taskCopy = task;
  WeakRetained = objc_loadWeakRetained(&self->_task);

  if (WeakRetained != taskCopy)
  {
    v6 = objc_storeWeak(&self->_task, taskCopy);

    if (taskCopy)
    {
      v7 = +[NSNotificationCenter defaultCenter];
      [v7 removeObserver:self name:@"AuxiliaryTasksManagerDidUpdateAuxiliaryTasksNotification" object:0];

      v8 = objc_loadWeakRetained(&self->_task);
      stateManager = [v8 stateManager];

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      allMonitors = [stateManager allMonitors];
      v11 = [allMonitors countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v18;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v18 != v13)
            {
              objc_enumerationMutation(allMonitors);
            }

            v15 = *(*(&v17 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_storeWeak(&self->_tileAvailabilityMonitor, v15);
              goto LABEL_13;
            }
          }

          v12 = [allMonitors countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:

      if ([(MapsAppTestVLF *)self isWaitingForTask])
      {
        [(MapsAppTestVLF *)self setWaitingForTask:0];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100893D54;
        block[3] = &unk_101661B18;
        block[4] = self;
        dispatch_async(&_dispatch_main_q, block);
      }
    }
  }
}

- (void)dealloc
{
  if (self->_waitingForTileAvailability)
  {
    WeakRetained = objc_loadWeakRetained(&self->_tileAvailabilityMonitor);
    [WeakRetained removeObserver:self forKeyPath:@"state"];
  }

  v4.receiver = self;
  v4.super_class = MapsAppTestVLF;
  [(MapsAppTestVLF *)&v4 dealloc];
}

- (MapsAppTestVLF)initWithApplication:(id)application testName:(id)name options:(id)options
{
  v12.receiver = self;
  v12.super_class = MapsAppTestVLF;
  v5 = [(MapsAppTest *)&v12 initWithApplication:application testName:name options:options];
  if (v5)
  {
    v6 = +[UIApplication _maps_keyMapsSceneDelegate];
    platformController = [v6 platformController];
    auxiliaryTasksManager = [platformController auxiliaryTasksManager];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v5 selector:"auxiliaryTasksManagerDidUpdateAuxiliaryTasksNotification:" name:@"AuxiliaryTasksManagerDidUpdateAuxiliaryTasksNotification" object:auxiliaryTasksManager];

    v10 = [auxiliaryTasksManager auxilaryTaskForClass:objc_opt_class()];
    [(MapsAppTestVLF *)v5 setTask:v10];
  }

  return v5;
}

+ (id)pptRecordingFileLocation
{
  if (qword_10195DAF0 != -1)
  {
    dispatch_once(&qword_10195DAF0, &stru_10162CD68);
  }

  v3 = qword_10195DAE8;

  return v3;
}

@end