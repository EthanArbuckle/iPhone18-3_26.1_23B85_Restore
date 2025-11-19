@interface MapsAppTestAR
+ (id)pptRecordingFileLocation;
- (BOOL)runTest;
- (MapsAppTestAR)initWithApplication:(id)a3 testName:(id)a4 options:(id)a5;
- (PedestrianARSessionTask)task;
- (PedestrianARSessionTileAvailabilityMonitor)tileAvailabilityMonitor;
- (void)_dismissARUI;
- (void)_displayARElement;
- (void)_runARLocalization;
- (void)_showARUI;
- (void)_waitForTileAvailability;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation MapsAppTestAR

- (PedestrianARSessionTileAvailabilityMonitor)tileAvailabilityMonitor
{
  WeakRetained = objc_loadWeakRetained(&self->_tileAvailabilityMonitor);

  return WeakRetained;
}

- (PedestrianARSessionTask)task
{
  WeakRetained = objc_loadWeakRetained(&self->_task);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(MapsAppTestAR *)self tileAvailabilityMonitor];
  v14 = v13;
  if (v13 != v11)
  {

LABEL_6:
    v20.receiver = self;
    v20.super_class = MapsAppTestAR;
    [(MapsAppTestAR *)&v20 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
    goto LABEL_7;
  }

  v15 = [v10 isEqualToString:@"tileObserver"];

  if (!v15)
  {
    goto LABEL_6;
  }

  v16 = [(MapsAppTestAR *)self tileAvailabilityMonitor];
  v17 = [v16 tileObserver];
  v18 = [v17 areTilesAvailable];

  if (v18)
  {
    v19 = [(MapsAppTestAR *)self tileAvailabilityMonitor];
    [v19 removeObserver:self forKeyPath:@"tileObserver"];

    [(MapsAppTestAR *)self setWaitingForTileAvailability:0];
    [(MapsAppTest *)self finishedSubTest:@"tileAvailability"];
    [(MapsAppTestAR *)self _showARUI];
  }

LABEL_7:
}

- (void)_dismissARUI
{
  v3 = dispatch_time(0, 5000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100AB6264;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100AB62C4;
  v4[3] = &unk_101650D20;
  v4[4] = self;
  [PPTNotificationCenter addOnceObserverForName:@"PedestrianARViewControllerDidDisappearNotification" object:0 usingBlock:v4];
}

- (void)_displayARElement
{
  [(MapsAppTest *)self startedSubTest:@"displayARElement"];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100AB63A0;
  v3[3] = &unk_101650D20;
  v3[4] = self;
  [PPTNotificationCenter addOnceObserverForName:@"PedestrianARViewControllerARFeatureDidAppearNotification" object:0 usingBlock:v3];
}

- (void)_runARLocalization
{
  [(MapsAppTest *)self startedSubTest:@"runARLocalization"];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100AB647C;
  v3[3] = &unk_101650D20;
  v3[4] = self;
  [PPTNotificationCenter addOnceObserverForName:@"VLFSessionDidStopNotification" object:0 usingBlock:v3];
}

- (void)_showARUI
{
  [(MapsAppTest *)self startedSubTest:@"showARUI"];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100AB66BC;
  v10[3] = &unk_101650D20;
  v10[4] = self;
  [PPTNotificationCenter addOnceObserverForName:@"PedestrianARViewControllerDidAppearNotification" object:0 usingBlock:v10];
  v3 = +[NSFileManager defaultManager];
  v4 = [objc_opt_class() pptRecordingFileLocation];
  v5 = [v3 fileExistsAtPath:v4];

  v6 = [objc_opt_class() pptRecordingFileLocation];
  if (v5)
  {
    GEOConfigSetString();

    v7 = +[NSUserDefaults standardUserDefaults];
    [v7 setInteger:1 forKey:@"MapsARSessionPlaybackModeKey"];

    v8 = +[NSUserDefaults standardUserDefaults];
    [v8 setBool:0 forKey:@"MapsARSessionRecordingEnabledKey"];

    v6 = [(MapsAppTest *)self testCoordinator];
    [v6 pptTestEnterAR];
  }

  else
  {
    v9 = [NSString stringWithFormat:@"PPT recording file is not present at expected location: %@", v6];
    [(MapsAppTest *)self failedTestWithReason:v9];
  }
}

- (void)_waitForTileAvailability
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"MapsRoutePlanningShowingRoutesNotification" object:0];

  [(MapsAppTest *)self startedTest];
  [(MapsAppTest *)self startedSubTest:@"tileAvailability"];
  v4 = [(MapsAppTestAR *)self tileAvailabilityMonitor];
  v5 = [v4 tileObserver];
  v6 = [v5 areTilesAvailable];

  if (v6)
  {
    [(MapsAppTest *)self finishedSubTest:@"tileAvailability"];

    [(MapsAppTestAR *)self _showARUI];
  }

  else
  {
    [(MapsAppTestAR *)self setWaitingForTileAvailability:1];
    v7 = [(MapsAppTestAR *)self tileAvailabilityMonitor];
    [v7 addObserver:self forKeyPath:@"state" options:1 context:0];
  }
}

- (BOOL)runTest
{
  v3 = [(MapsAppTest *)self testCoordinator];
  [v3 pptTestResetForLaunchURL];

  v4 = [(MapsAppTest *)self options];
  v5 = [v4 _mapstest_directionsPlan];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_waitForTileAvailability" name:@"MapsRoutePlanningShowingRoutesNotification" object:0];

  v7 = [(MapsAppTest *)self testCoordinator];
  [v7 setPPTTestDirectionsPlan:v5];

  return 1;
}

- (void)dealloc
{
  if (self->_waitingForTileAvailability)
  {
    WeakRetained = objc_loadWeakRetained(&self->_tileAvailabilityMonitor);
    [WeakRetained removeObserver:self forKeyPath:@"state"];
  }

  v4.receiver = self;
  v4.super_class = MapsAppTestAR;
  [(MapsAppTestAR *)&v4 dealloc];
}

- (MapsAppTestAR)initWithApplication:(id)a3 testName:(id)a4 options:(id)a5
{
  v23.receiver = self;
  v23.super_class = MapsAppTestAR;
  v5 = [(MapsAppTest *)&v23 initWithApplication:a3 testName:a4 options:a5];
  if (v5)
  {
    v6 = +[UIApplication _maps_keyMapsSceneDelegate];
    v7 = [v6 platformController];
    v8 = [v7 auxiliaryTasksManager];
    v9 = [v8 auxilaryTaskForClass:objc_opt_class()];
    objc_storeWeak(&v5->_task, v9);

    WeakRetained = objc_loadWeakRetained(&v5->_task);
    v11 = [WeakRetained stateManager];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = [v11 monitors];
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v19 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeWeak(&v5->_tileAvailabilityMonitor, v17);
            goto LABEL_12;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return v5;
}

+ (id)pptRecordingFileLocation
{
  if (qword_10195E3B8 != -1)
  {
    dispatch_once(&qword_10195E3B8, &stru_101636DD0);
  }

  v3 = qword_10195E3B0;

  return v3;
}

@end