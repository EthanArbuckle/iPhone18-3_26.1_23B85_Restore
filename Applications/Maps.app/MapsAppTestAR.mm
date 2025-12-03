@interface MapsAppTestAR
+ (id)pptRecordingFileLocation;
- (BOOL)runTest;
- (MapsAppTestAR)initWithApplication:(id)application testName:(id)name options:(id)options;
- (PedestrianARSessionTask)task;
- (PedestrianARSessionTileAvailabilityMonitor)tileAvailabilityMonitor;
- (void)_dismissARUI;
- (void)_displayARElement;
- (void)_runARLocalization;
- (void)_showARUI;
- (void)_waitForTileAvailability;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  tileAvailabilityMonitor = [(MapsAppTestAR *)self tileAvailabilityMonitor];
  v14 = tileAvailabilityMonitor;
  if (tileAvailabilityMonitor != objectCopy)
  {

LABEL_6:
    v20.receiver = self;
    v20.super_class = MapsAppTestAR;
    [(MapsAppTestAR *)&v20 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
    goto LABEL_7;
  }

  v15 = [pathCopy isEqualToString:@"tileObserver"];

  if (!v15)
  {
    goto LABEL_6;
  }

  tileAvailabilityMonitor2 = [(MapsAppTestAR *)self tileAvailabilityMonitor];
  tileObserver = [tileAvailabilityMonitor2 tileObserver];
  areTilesAvailable = [tileObserver areTilesAvailable];

  if (areTilesAvailable)
  {
    tileAvailabilityMonitor3 = [(MapsAppTestAR *)self tileAvailabilityMonitor];
    [tileAvailabilityMonitor3 removeObserver:self forKeyPath:@"tileObserver"];

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
  pptRecordingFileLocation = [objc_opt_class() pptRecordingFileLocation];
  v5 = [v3 fileExistsAtPath:pptRecordingFileLocation];

  pptRecordingFileLocation2 = [objc_opt_class() pptRecordingFileLocation];
  if (v5)
  {
    GEOConfigSetString();

    v7 = +[NSUserDefaults standardUserDefaults];
    [v7 setInteger:1 forKey:@"MapsARSessionPlaybackModeKey"];

    v8 = +[NSUserDefaults standardUserDefaults];
    [v8 setBool:0 forKey:@"MapsARSessionRecordingEnabledKey"];

    pptRecordingFileLocation2 = [(MapsAppTest *)self testCoordinator];
    [pptRecordingFileLocation2 pptTestEnterAR];
  }

  else
  {
    v9 = [NSString stringWithFormat:@"PPT recording file is not present at expected location: %@", pptRecordingFileLocation2];
    [(MapsAppTest *)self failedTestWithReason:v9];
  }
}

- (void)_waitForTileAvailability
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"MapsRoutePlanningShowingRoutesNotification" object:0];

  [(MapsAppTest *)self startedTest];
  [(MapsAppTest *)self startedSubTest:@"tileAvailability"];
  tileAvailabilityMonitor = [(MapsAppTestAR *)self tileAvailabilityMonitor];
  tileObserver = [tileAvailabilityMonitor tileObserver];
  areTilesAvailable = [tileObserver areTilesAvailable];

  if (areTilesAvailable)
  {
    [(MapsAppTest *)self finishedSubTest:@"tileAvailability"];

    [(MapsAppTestAR *)self _showARUI];
  }

  else
  {
    [(MapsAppTestAR *)self setWaitingForTileAvailability:1];
    tileAvailabilityMonitor2 = [(MapsAppTestAR *)self tileAvailabilityMonitor];
    [tileAvailabilityMonitor2 addObserver:self forKeyPath:@"state" options:1 context:0];
  }
}

- (BOOL)runTest
{
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestResetForLaunchURL];

  options = [(MapsAppTest *)self options];
  _mapstest_directionsPlan = [options _mapstest_directionsPlan];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_waitForTileAvailability" name:@"MapsRoutePlanningShowingRoutesNotification" object:0];

  testCoordinator2 = [(MapsAppTest *)self testCoordinator];
  [testCoordinator2 setPPTTestDirectionsPlan:_mapstest_directionsPlan];

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

- (MapsAppTestAR)initWithApplication:(id)application testName:(id)name options:(id)options
{
  v23.receiver = self;
  v23.super_class = MapsAppTestAR;
  v5 = [(MapsAppTest *)&v23 initWithApplication:application testName:name options:options];
  if (v5)
  {
    v6 = +[UIApplication _maps_keyMapsSceneDelegate];
    platformController = [v6 platformController];
    auxiliaryTasksManager = [platformController auxiliaryTasksManager];
    v9 = [auxiliaryTasksManager auxilaryTaskForClass:objc_opt_class()];
    objc_storeWeak(&v5->_task, v9);

    WeakRetained = objc_loadWeakRetained(&v5->_task);
    stateManager = [WeakRetained stateManager];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    monitors = [stateManager monitors];
    v13 = [monitors countByEnumeratingWithState:&v19 objects:v24 count:16];
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
            objc_enumerationMutation(monitors);
          }

          v17 = *(*(&v19 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeWeak(&v5->_tileAvailabilityMonitor, v17);
            goto LABEL_12;
          }
        }

        v14 = [monitors countByEnumeratingWithState:&v19 objects:v24 count:16];
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