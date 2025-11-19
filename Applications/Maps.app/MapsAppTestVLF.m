@interface MapsAppTestVLF
+ (id)pptRecordingFileLocation;
- (BOOL)runTest;
- (MapsAppTestVLF)initWithApplication:(id)a3 testName:(id)a4 options:(id)a5;
- (VLFSessionTask)task;
- (VLFSessionTileAvailabilityMonitor)tileAvailabilityMonitor;
- (void)_dismissVLFUI;
- (void)_runVLF;
- (void)_showVLFUI;
- (void)_start;
- (void)_waitForTileAvailability;
- (void)auxiliaryTasksManagerDidUpdateAuxiliaryTasksNotification:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setTask:(id)a3;
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

- (void)auxiliaryTasksManagerDidUpdateAuxiliaryTasksNotification:(id)a3
{
  v5 = [a3 object];
  v4 = [v5 auxilaryTaskForClass:objc_opt_class()];
  [(MapsAppTestVLF *)self setTask:v4];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(MapsAppTestVLF *)self tileAvailabilityMonitor];
  v14 = v13;
  if (v13 != v11)
  {

LABEL_6:
    v19.receiver = self;
    v19.super_class = MapsAppTestVLF;
    [(MapsAppTestVLF *)&v19 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
    goto LABEL_7;
  }

  v15 = [v10 isEqualToString:@"state"];

  if (!v15)
  {
    goto LABEL_6;
  }

  v16 = [(MapsAppTestVLF *)self tileAvailabilityMonitor];
  v17 = [v16 state];

  if (v17 == 2)
  {
    v18 = [(MapsAppTestVLF *)self tileAvailabilityMonitor];
    [v18 removeObserver:self forKeyPath:@"state"];

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
  v4 = [objc_opt_class() pptRecordingFileLocation];
  v5 = [v3 fileExistsAtPath:v4];

  v6 = [objc_opt_class() pptRecordingFileLocation];
  if (v5)
  {
    GEOConfigSetString();

    v6 = [(MapsAppTestVLF *)self task];
    [v6 showVLFUI];
  }

  else
  {
    v7 = [NSString stringWithFormat:@"PPT recording file is not present at expected location: %@", v6];
    [(MapsAppTest *)self failedTestWithReason:v7];
  }
}

- (void)_waitForTileAvailability
{
  [(MapsAppTest *)self startedSubTest:@"tileAvailability"];
  v3 = [(MapsAppTestVLF *)self tileAvailabilityMonitor];
  v4 = [v3 state];

  if (v4 == 2)
  {
    [(MapsAppTest *)self finishedSubTest:@"tileAvailability"];

    [(MapsAppTestVLF *)self _showVLFUI];
  }

  else
  {
    [(MapsAppTestVLF *)self setWaitingForTileAvailability:1];
    v5 = [(MapsAppTestVLF *)self tileAvailabilityMonitor];
    [v5 addObserver:self forKeyPath:@"state" options:1 context:0];
  }
}

- (void)_start
{
  [(MapsAppTest *)self startedTest];

  [(MapsAppTestVLF *)self _waitForTileAvailability];
}

- (BOOL)runTest
{
  v3 = [(MapsAppTestVLF *)self task];

  if (v3)
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

- (void)setTask:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_task);

  if (WeakRetained != v4)
  {
    v6 = objc_storeWeak(&self->_task, v4);

    if (v4)
    {
      v7 = +[NSNotificationCenter defaultCenter];
      [v7 removeObserver:self name:@"AuxiliaryTasksManagerDidUpdateAuxiliaryTasksNotification" object:0];

      v8 = objc_loadWeakRetained(&self->_task);
      v9 = [v8 stateManager];

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v10 = [v9 allMonitors];
      v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v17 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_storeWeak(&self->_tileAvailabilityMonitor, v15);
              goto LABEL_13;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (MapsAppTestVLF)initWithApplication:(id)a3 testName:(id)a4 options:(id)a5
{
  v12.receiver = self;
  v12.super_class = MapsAppTestVLF;
  v5 = [(MapsAppTest *)&v12 initWithApplication:a3 testName:a4 options:a5];
  if (v5)
  {
    v6 = +[UIApplication _maps_keyMapsSceneDelegate];
    v7 = [v6 platformController];
    v8 = [v7 auxiliaryTasksManager];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v5 selector:"auxiliaryTasksManagerDidUpdateAuxiliaryTasksNotification:" name:@"AuxiliaryTasksManagerDidUpdateAuxiliaryTasksNotification" object:v8];

    v10 = [v8 auxilaryTaskForClass:objc_opt_class()];
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