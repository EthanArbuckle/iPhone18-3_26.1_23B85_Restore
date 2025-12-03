@interface RecorderAppDelegate
+ (RecorderAppDelegate)sharedAppDelegate;
- (BOOL)_selectFirstVoiceMemoInCollectionViewController:(id)controller errorString:(id *)string;
- (BOOL)accessibilityPerformMagicTap;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application runTest:(id)test options:(id)options;
- (NSArray)connectedPlatterSceneDelegates;
- (RCDefaultSceneDelegate)defaultSceneDelegate;
- (RCPlatterSceneDelegate)dynamicIslandSceneDelegate;
- (UIWindow)window;
- (id)_mainViewController;
- (id)_recordingViewController;
- (id)_recordingsCollectionView;
- (id)_splitViewController;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (id)currentSelectedRecordingCell;
- (id)defaultScene;
- (void)_closeEditCardAndFinishTest;
- (void)_finishExpandCollapseRecordingCard;
- (void)_finishGlitchRecording;
- (void)_openRecordingCardForCurrentSelection;
- (void)_performTest:(id)test options:(id)options;
- (void)_scrollPlaybackCardWaveform;
- (void)_scrollRecordingCardWaveform;
- (void)_selectFirstVoiceMemoInActiveRecordingsCollectionViewControllerWithCompletionBlock:(id)block;
- (void)_startCapture;
- (void)_startPagingWaveformViewScroll:(id)scroll;
- (void)applicationWillTerminate:(id)terminate;
- (void)buildMenuWithBuilder:(id)builder;
- (void)defaultSceneDidBecomeActive;
- (void)defaultSceneWillResignActive;
- (void)openCloseEditCardTest:(id)test;
- (void)performCornobbleScrollTestForCollectionView:(id)view withOptions:(id)options;
- (void)performDeferredInitialization;
- (void)performLegacyScrollTestForCollectionView:(id)view withOptions:(id)options;
- (void)ppt_didEndCyclerRecording;
- (void)ppt_didFinishPostLaunchTasks:(id)tasks;
- (void)ppt_didShowVoiceMemoEditor;
- (void)ppt_didShowVoiceMemosList;
- (void)ppt_didStartCyclerRecording;
- (void)ppt_didStartRecording;
- (void)ppt_didStartVoiceMemoPreviewPlayback;
- (void)reconcileApplicationState;
- (void)sceneDidEnterBackground;
- (void)startCornobbleScrollAllRecordingsTest:(id)test;
- (void)startCyclerEndRecordingTest:(id)test;
- (void)startCyclerRecordNewVoiceMemoTest:(id)test;
- (void)startOpenFoldersSidebarTest:(id)test;
- (void)startPagingScrollPlaybackCardWaveformTest:(id)test;
- (void)startPlaySelectedVoiceMemoTest:(id)test;
- (void)startScrollVoiceMemosEditListTest:(id)test;
- (void)startScrollVoiceMemosListTest:(id)test;
- (void)startSelectFirstVoiceMemoInRecordingsList:(id)list;
@end

@implementation RecorderAppDelegate

- (RCDefaultSceneDelegate)defaultSceneDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_defaultSceneDelegate);

  if (!WeakRetained)
  {
    v4 = +[UIApplication sharedApplication];
    connectedScenes = [v4 connectedScenes];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [connectedScenes countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(connectedScenes);
          }

          delegate = [*(*(&v15 + 1) + 8 * v9) delegate];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeWeak(&self->_defaultSceneDelegate, delegate);
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [connectedScenes countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v11 = objc_loadWeakRetained(&self->_defaultSceneDelegate);

    if (!v11)
    {
      v12 = OSLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100003EE8(v12);
      }
    }
  }

  v13 = objc_loadWeakRetained(&self->_defaultSceneDelegate);

  return v13;
}

+ (RecorderAppDelegate)sharedAppDelegate
{
  v2 = +[UIApplication sharedApplication];
  delegate = [v2 delegate];

  return delegate;
}

- (void)performDeferredInitialization
{
  v3 = objc_alloc_init(RCRecorderAppDelegateDependencyContainer);
  dependencyContainer = self->_dependencyContainer;
  self->_dependencyContainer = v3;

  v6 = self->_dependencyContainer;
  v5 = objc_storeWeak(&self->_stateObserver, v6);
  [(RCRecorderAppDelegateDependencyContainer *)v6 appDidFinishLaunching];
}

- (UIWindow)window
{
  defaultSceneDelegate = [(RecorderAppDelegate *)self defaultSceneDelegate];
  window = [defaultSceneDelegate window];

  return window;
}

- (void)defaultSceneDidBecomeActive
{
  WeakRetained = objc_loadWeakRetained(&self->_stateObserver);
  [WeakRetained defaultSceneDidBecomeActive];
}

- (void)ppt_didShowVoiceMemosList
{
  if ((byte_1002D6FC8 & 1) == 0 && (([qword_1002D6FB8 containsString:@"ShowVoiceMemosList"] & 1) != 0 || objc_msgSend(qword_1002D6FB8, "containsString:", @"WarmShowVoiceMemosList")))
  {
    v2 = UIApp;
    v3 = qword_1002D6FB8;

    [v2 finishedTest:v3];
  }
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  if ((RCIsBeingUnitTested() & 1) == 0)
  {
    v4 = +[_TtC10VoiceMemos33TranscriptionAvailabilityProvider shared];
    [v4 updateDeviceIsSupported];

    +[_TtC10VoiceMemos19RCAppIntentsManager setupIntentSceneConfigurator];
    +[_TtC10VoiceMemos19RCAppIntentsManager registerDependencies];
    +[_TtC10VoiceMemos13TipKitManager setupTips];
  }

  return 1;
}

- (void)applicationWillTerminate:(id)terminate
{
  terminateCopy = terminate;
  WeakRetained = objc_loadWeakRetained(&self->_stateObserver);
  [WeakRetained applicationWillTerminateWithApplication:terminateCopy];

  v6 = +[VMAudioService sharedInstance];
  v11 = 0;
  v7 = [v6 forceCloseActiveRecordingAssetWriter:&v11];
  v8 = v11;

  if ((v7 & 1) == 0)
  {
    v9 = OSLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1001B5734(v8, v9);
    }
  }

  v10 = +[RCSSavedRecordingService sharedService];
  [v10 closeServiceConnection];
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  v6 = [UISceneConfiguration alloc];
  role = [sessionCopy role];
  v8 = [v6 initWithName:0 sessionRole:role];

  role2 = [sessionCopy role];

  LODWORD(sessionCopy) = [role2 isEqualToString:UIWindowSceneSessionRoleApplication];
  if (sessionCopy)
  {
    [v8 setDelegateClass:objc_opt_class()];
  }

  return v8;
}

- (void)buildMenuWithBuilder:(id)builder
{
  builderCopy = builder;
  system = [builderCopy system];
  v4 = +[UIMenuSystem mainSystem];
  v5 = [system isEqual:v4];

  if (v5)
  {
    v6 = +[RCMenuBarManager sharedMenuBarManager];
    [v6 buildMenuWithBuilder:builderCopy];
  }
}

- (id)defaultScene
{
  defaultSceneDelegate = [(RecorderAppDelegate *)self defaultSceneDelegate];
  window = [defaultSceneDelegate window];
  windowScene = [window windowScene];

  return windowScene;
}

- (void)reconcileApplicationState
{
  defaultSceneDelegate = [(RecorderAppDelegate *)self defaultSceneDelegate];
  mainViewController = [defaultSceneDelegate mainViewController];
  mainControllerHelper = [mainViewController mainControllerHelper];
  [mainControllerHelper reconcileApplicationState];
}

- (BOOL)accessibilityPerformMagicTap
{
  defaultSceneDelegate = [(RecorderAppDelegate *)self defaultSceneDelegate];
  performActionForMagicTap = [defaultSceneDelegate performActionForMagicTap];

  return performActionForMagicTap;
}

- (RCPlatterSceneDelegate)dynamicIslandSceneDelegate
{
  v2 = +[UIApplication sharedApplication];
  [v2 connectedScenes];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        delegate = [*(*(&v15 + 1) + 8 * i) delegate];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = delegate;
          platterViewController = [v9 platterViewController];
          presentationStyle = [platterViewController presentationStyle];

          if (!presentationStyle)
          {
            platterViewController2 = [v9 platterViewController];
            activeLayoutMode = [platterViewController2 activeLayoutMode];

            if (activeLayoutMode != -1)
            {

              goto LABEL_14;
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_14:

  return v9;
}

- (NSArray)connectedPlatterSceneDelegates
{
  v2 = +[NSMutableArray array];
  v3 = +[UIApplication sharedApplication];
  connectedScenes = [v3 connectedScenes];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [connectedScenes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(connectedScenes);
        }

        delegate = [*(*(&v11 + 1) + 8 * i) delegate];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:delegate];
        }
      }

      v6 = [connectedScenes countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v2;
}

- (void)sceneDidEnterBackground
{
  WeakRetained = objc_loadWeakRetained(&self->_stateObserver);
  [WeakRetained defaultSceneDidEnterBackground];
}

- (void)defaultSceneWillResignActive
{
  WeakRetained = objc_loadWeakRetained(&self->_stateObserver);
  [WeakRetained defaultSceneWillResignActive];
}

- (id)_splitViewController
{
  _mainViewController = [(RecorderAppDelegate *)self _mainViewController];
  splitViewController = [_mainViewController splitViewController];

  return splitViewController;
}

- (id)_mainViewController
{
  v2 = +[UIApplication sharedApplication];
  delegate = [v2 delegate];

  defaultSceneDelegate = [delegate defaultSceneDelegate];
  mainViewController = [defaultSceneDelegate mainViewController];

  return mainViewController;
}

- (id)_recordingViewController
{
  _mainViewController = [(RecorderAppDelegate *)self _mainViewController];
  activeFolderViewController = [_mainViewController activeFolderViewController];
  recordingViewController = [activeFolderViewController recordingViewController];

  return recordingViewController;
}

- (id)currentSelectedRecordingCell
{
  _recordingsCollectionView = [(RecorderAppDelegate *)self _recordingsCollectionView];
  v4 = [NSIndexPath indexPathForItem:0 inSection:0];
  v5 = [_recordingsCollectionView cellForItemAtIndexPath:v4];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = 0;
  if (isKindOfClass)
  {
    _recordingsCollectionView2 = [(RecorderAppDelegate *)self _recordingsCollectionView];
    v9 = [NSIndexPath indexPathForItem:0 inSection:0];
    v7 = [_recordingsCollectionView2 cellForItemAtIndexPath:v9];
  }

  return v7;
}

- (id)_recordingsCollectionView
{
  _mainViewController = [(RecorderAppDelegate *)self _mainViewController];
  activeFolderViewController = [_mainViewController activeFolderViewController];
  recordingsCollectionViewController = [activeFolderViewController recordingsCollectionViewController];
  collectionView = [recordingsCollectionViewController collectionView];

  return collectionView;
}

- (BOOL)application:(id)application runTest:(id)test options:(id)options
{
  applicationCopy = application;
  testCopy = test;
  optionsCopy = options;
  objc_storeStrong(&qword_1002D6FB8, test);
  objc_storeStrong(&qword_1002D6FC0, options);
  [testCopy containsString:@"Landscape"];
  byte_1002D6FC8 = 0;
  objc_initWeak(&location, self);
  objc_copyWeak(&v18, &location);
  v11 = testCopy;
  v16 = v11;
  v12 = optionsCopy;
  v17 = v12;
  v13 = [(RecorderAppDelegate *)self _mainViewController:_NSConcreteStackBlock];
  [v13 setForegroundCompletionBlock:&v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return 1;
}

- (void)_performTest:(id)test options:(id)options
{
  testCopy = test;
  optionsCopy = options;
  if ([testCopy containsString:@"ScrollVoiceMemosList"])
  {
    [(RecorderAppDelegate *)self startScrollVoiceMemosListTest:optionsCopy];
  }

  else if ([testCopy containsString:@"CornobbleScrollAllRecordings"])
  {
    [(RecorderAppDelegate *)self startCornobbleScrollAllRecordingsTest:optionsCopy];
  }

  else if ([testCopy containsString:@"ScrollVoiceMemosEditList"])
  {
    [(RecorderAppDelegate *)self startScrollVoiceMemosEditListTest:optionsCopy];
  }

  else if ([testCopy containsString:@"RecordNewVoiceMemo"])
  {
    [(RecorderAppDelegate *)self startRecordNewVoiceMemoTest:optionsCopy];
  }

  else if ([testCopy containsString:@"GlitchRecordNewVoiceMemo"])
  {
    [(RecorderAppDelegate *)self glitchStartRecordNewVoiceMemoTest:optionsCopy];
  }

  else if ([testCopy containsString:@"OpenCloseEditCard"])
  {
    [(RecorderAppDelegate *)self openCloseEditCardTest:optionsCopy];
  }

  else if ([testCopy containsString:@"ExpandCollapseRecordingCard"])
  {
    [(RecorderAppDelegate *)self expandCollapseRecordingCardTest:optionsCopy];
  }

  else if ([testCopy containsString:@"CyclerRecordNewVoiceMemo"])
  {
    [(RecorderAppDelegate *)self startCyclerRecordNewVoiceMemoTest:optionsCopy];
  }

  else if ([testCopy containsString:@"CyclerStopRecordingVoiceMemo"])
  {
    [(RecorderAppDelegate *)self startCyclerEndRecordingTest:optionsCopy];
  }

  else if ([testCopy containsString:@"PlaySelectedVoiceMemo"])
  {
    [(RecorderAppDelegate *)self startPlaySelectedVoiceMemoTest:optionsCopy];
  }

  else if ([testCopy containsString:@"OpenFoldersSidebar"])
  {
    [(RecorderAppDelegate *)self startOpenFoldersSidebarTest:optionsCopy];
  }

  else if ([testCopy containsString:@"PagingScrollPlaybackCardWaveform"])
  {
    [(RecorderAppDelegate *)self startPagingScrollPlaybackCardWaveformTest:optionsCopy];
  }
}

- (void)ppt_didFinishPostLaunchTasks:(id)tasks
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"VoiceMemosLaunchPostTasksCompleted" object:self];
}

- (void)ppt_didShowVoiceMemoEditor
{
  if ([qword_1002D6FB8 isEqualToString:@"OpenCloseEditCard"])
  {

    [(RecorderAppDelegate *)self _closeEditCardAndFinishTest];
  }
}

- (void)ppt_didStartRecording
{
  if ([qword_1002D6FB8 isEqualToString:@"RecordNewVoiceMemo"])
  {
    v3 = UIApp;

    [v3 finishedTest:?];
  }

  else if ([qword_1002D6FB8 isEqualToString:@"GlitchRecordNewVoiceMemo"])
  {

    [(RecorderAppDelegate *)self _finishGlitchRecording];
  }

  else if ([qword_1002D6FB8 isEqualToString:@"ExpandCollapseRecordingCard"])
  {

    [(RecorderAppDelegate *)self _finishExpandCollapseRecordingCard];
  }
}

- (void)ppt_didStartCyclerRecording
{
  if ([qword_1002D6FB8 isEqualToString:@"CyclerRecordNewVoiceMemo"])
  {
    v2 = UIApp;
    v3 = qword_1002D6FB8;

    [v2 finishedTest:v3];
  }
}

- (void)ppt_didEndCyclerRecording
{
  if ([qword_1002D6FB8 isEqualToString:@"CyclerStopRecordingVoiceMemo"])
  {
    v2 = UIApp;
    v3 = qword_1002D6FB8;

    [v2 finishedTest:v3];
  }
}

- (void)ppt_didStartVoiceMemoPreviewPlayback
{
  if ([qword_1002D6FB8 isEqualToString:@"PlaySelectedVoiceMemo"])
  {
    v2 = UIApp;
    v3 = qword_1002D6FB8;

    [v2 finishedTest:v3];
  }
}

- (void)startScrollVoiceMemosListTest:(id)test
{
  testCopy = test;
  _mainViewController = [(RecorderAppDelegate *)self _mainViewController];
  activeFolderViewController = [_mainViewController activeFolderViewController];
  recordingsCollectionViewController = [activeFolderViewController recordingsCollectionViewController];

  v9 = 0;
  if ([(RecorderAppDelegate *)self _selectFirstVoiceMemoInCollectionViewController:recordingsCollectionViewController errorString:&v9])
  {
    collectionView = [recordingsCollectionViewController collectionView];
    [(RecorderAppDelegate *)self performLegacyScrollTestForCollectionView:collectionView withOptions:testCopy];
  }
}

- (void)startCornobbleScrollAllRecordingsTest:(id)test
{
  testCopy = test;
  _mainViewController = [(RecorderAppDelegate *)self _mainViewController];
  activeFolderViewController = [_mainViewController activeFolderViewController];
  recordingsCollectionViewController = [activeFolderViewController recordingsCollectionViewController];

  v9 = 0;
  if ([(RecorderAppDelegate *)self _selectFirstVoiceMemoInCollectionViewController:recordingsCollectionViewController errorString:&v9])
  {
    collectionView = [recordingsCollectionViewController collectionView];
    [(RecorderAppDelegate *)self performCornobbleScrollTestForCollectionView:collectionView withOptions:testCopy];
  }
}

- (void)_startCapture
{
  _recordingViewController = [(RecorderAppDelegate *)self _recordingViewController];
  v3 = _recordingViewController;
  if (_recordingViewController)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000362F8;
    v4[3] = &unk_10028A3B8;
    v5 = _recordingViewController;
    sub_100035764(v4, 3.0);
  }
}

- (void)_finishGlitchRecording
{
  _recordingViewController = [(RecorderAppDelegate *)self _recordingViewController];
  if (_recordingViewController)
  {
    v3 = dispatch_time(0, 5000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003642C;
    block[3] = &unk_10028A3B8;
    v5 = _recordingViewController;
    dispatch_after(v3, &_dispatch_main_q, block);
  }
}

- (void)_finishExpandCollapseRecordingCard
{
  [(RecorderAppDelegate *)self _recordingViewController];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100036554;
  v4 = v3[3] = &unk_10028A420;
  v5 = 0x4008000000000000;
  v2 = v4;
  sub_100035764(v3, 3.0);
}

- (void)openCloseEditCardTest:(id)test
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000367A4;
  v3[3] = &unk_10028A3B8;
  v3[4] = self;
  [(RecorderAppDelegate *)self _selectFirstVoiceMemoInActiveRecordingsCollectionViewControllerWithCompletionBlock:v3];
}

- (void)_closeEditCardAndFinishTest
{
  v3 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000368E8;
  block[3] = &unk_10028A3B8;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)startCyclerRecordNewVoiceMemoTest:(id)test
{
  _recordingViewController = [(RecorderAppDelegate *)self _recordingViewController];
  v4 = _recordingViewController;
  if (_recordingViewController)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100036A58;
    block[3] = &unk_10028A3B8;
    v6 = _recordingViewController;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)startCyclerEndRecordingTest:(id)test
{
  _recordingViewController = [(RecorderAppDelegate *)self _recordingViewController];
  if (_recordingViewController)
  {
    v4 = dispatch_time(0, 3000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100036B88;
    block[3] = &unk_10028A3B8;
    v6 = _recordingViewController;
    dispatch_after(v4, &_dispatch_main_q, block);
  }
}

- (void)startSelectFirstVoiceMemoInRecordingsList:(id)list
{
  _mainViewController = [(RecorderAppDelegate *)self _mainViewController];
  activeFolderViewController = [_mainViewController activeFolderViewController];
  recordingsCollectionViewController = [activeFolderViewController recordingsCollectionViewController];
  v7 = 0;
  [(RecorderAppDelegate *)self _selectFirstVoiceMemoInCollectionViewController:recordingsCollectionViewController errorString:&v7];
}

- (void)startPlaySelectedVoiceMemoTest:(id)test
{
  _mainViewController = [(RecorderAppDelegate *)self _mainViewController];
  activeFolderViewController = [_mainViewController activeFolderViewController];
  recordingsCollectionViewController = [activeFolderViewController recordingsCollectionViewController];

  v7 = [NSIndexPath indexPathForRow:0 inSection:0];
  [recordingsCollectionViewController selectItemAtIndexPath:v7 animated:0 scroll:1];

  currentSelectedRecordingCell = [(RecorderAppDelegate *)self currentSelectedRecordingCell];
  v9 = currentSelectedRecordingCell;
  if (currentSelectedRecordingCell)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100036D88;
    block[3] = &unk_10028A3B8;
    v11 = currentSelectedRecordingCell;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)startScrollVoiceMemosEditListTest:(id)test
{
  testCopy = test;
  _mainViewController = [(RecorderAppDelegate *)self _mainViewController];
  activeFolderViewController = [_mainViewController activeFolderViewController];
  recordingsCollectionViewController = [activeFolderViewController recordingsCollectionViewController];

  collectionView = [recordingsCollectionViewController collectionView];
  [collectionView setEditing:1];
  v9 = 0;
  if ([(RecorderAppDelegate *)self _selectFirstVoiceMemoInCollectionViewController:recordingsCollectionViewController errorString:&v9])
  {
    [(RecorderAppDelegate *)self performScrollTestForCollectionView:collectionView withOptions:testCopy];
  }
}

- (void)startOpenFoldersSidebarTest:(id)test
{
  _splitViewController = [(RecorderAppDelegate *)self _splitViewController];
  [UIApp startedTest:qword_1002D6FB8];
  [_splitViewController showColumn:0];
  transitionCoordinator = [_splitViewController transitionCoordinator];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100036FA0;
  v6[3] = &unk_10028A488;
  v6[4] = self;
  [transitionCoordinator animateAlongsideTransition:0 completion:v6];
}

- (void)startPagingScrollPlaybackCardWaveformTest:(id)test
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000370E8;
  v3[3] = &unk_10028A3B8;
  v3[4] = self;
  [(RecorderAppDelegate *)self _selectFirstVoiceMemoInActiveRecordingsCollectionViewControllerWithCompletionBlock:v3];
}

- (void)_scrollPlaybackCardWaveform
{
  _mainViewController = [(RecorderAppDelegate *)self _mainViewController];
  playbackViewController = [_mainViewController playbackViewController];

  waveformContainerViewControllers = [playbackViewController waveformContainerViewControllers];
  v5 = [waveformContainerViewControllers objectAtIndexedSubscript:0];
  waveformViewController = [v5 waveformViewController];
  scrollView = [waveformViewController scrollView];

  if (scrollView)
  {
    [(RecorderAppDelegate *)self _startPagingWaveformViewScroll:scrollView];
  }

  else
  {
    [UIApp failedTest:qword_1002D6FB8 withFailure:@"Unable to find WaveformScrollView in the playback card"];
  }
}

- (void)_scrollRecordingCardWaveform
{
  _recordingViewController = [(RecorderAppDelegate *)self _recordingViewController];
  waveformContainerViewControllers = [_recordingViewController waveformContainerViewControllers];
  v4 = [waveformContainerViewControllers objectAtIndexedSubscript:0];
  waveformViewController = [v4 waveformViewController];
  scrollView = [waveformViewController scrollView];

  if (scrollView)
  {
    [(RecorderAppDelegate *)self _startPagingWaveformViewScroll:scrollView];
  }

  else
  {
    [UIApp failedTest:qword_1002D6FB8 withFailure:@"Unable to find WaveformScrollView in the recording card"];
  }
}

- (void)_openRecordingCardForCurrentSelection
{
  _mainViewController = [(RecorderAppDelegate *)self _mainViewController];
  activeFolderViewController = [_mainViewController activeFolderViewController];
  recordingsCollectionViewController = [activeFolderViewController recordingsCollectionViewController];

  uuidOfSelectedRecording = [recordingsCollectionViewController uuidOfSelectedRecording];
  [_mainViewController performAction:22 atPosition:uuidOfSelectedRecording forUUID:0 sourceController:0 source:0.0];
}

- (void)_startPagingWaveformViewScroll:(id)scroll
{
  scrollCopy = scroll;
  RPTGetBoundsForView();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [scrollCopy bounds];
  v13 = v12;

  v14 = [RPTPagingScrollViewTestParameters alloc];
  v15 = [v14 initWithTestName:qword_1002D6FB8 scrollBounds:2 scrollContentLength:0 direction:v5 completionHandler:{v7, v9, v11, v13}];
  [RPTTestRunner runTestWithParameters:v15];
}

- (void)performLegacyScrollTestForCollectionView:(id)view withOptions:(id)options
{
  optionsCopy = options;
  viewCopy = view;
  v6 = [optionsCopy objectForKey:@"iterations"];
  intValue = [v6 intValue];

  v8 = [optionsCopy objectForKey:@"offset"];

  intValue2 = [v8 intValue];
  [viewCopy scrollToTop];
  [viewCopy _performScrollTest:qword_1002D6FB8 iterations:intValue delta:intValue2];
}

- (void)performCornobbleScrollTestForCollectionView:(id)view withOptions:(id)options
{
  viewCopy = view;
  [viewCopy scrollToTop];
  v5 = [RPTScrollViewTestParameters alloc];
  v6 = [v5 initWithTestName:qword_1002D6FB8 scrollView:viewCopy completionHandler:0];

  [RPTTestRunner runTestWithParameters:v6];
}

- (void)_selectFirstVoiceMemoInActiveRecordingsCollectionViewControllerWithCompletionBlock:(id)block
{
  blockCopy = block;
  _mainViewController = [(RecorderAppDelegate *)self _mainViewController];
  activeFolderViewController = [_mainViewController activeFolderViewController];
  recordingsCollectionViewController = [activeFolderViewController recordingsCollectionViewController];

  if (recordingsCollectionViewController)
  {
    v9 = 0;
    if ([(RecorderAppDelegate *)self _selectFirstVoiceMemoInCollectionViewController:recordingsCollectionViewController errorString:&v9])
    {
      v8 = +[UIApplication sharedApplication];
      [v8 installCACommitCompletionBlock:blockCopy];
    }

    else
    {
      v8 = OSLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_1001B57C0(v8);
      }
    }
  }
}

- (BOOL)_selectFirstVoiceMemoInCollectionViewController:(id)controller errorString:(id *)string
{
  controllerCopy = controller;
  collectionView = [controllerCopy collectionView];
  v7 = [collectionView numberOfItemsInSection:0];
  if (v7)
  {
    v8 = [NSIndexPath indexPathForItem:0 inSection:0];
    [controllerCopy selectItemAtIndexPath:v8 animated:0 scroll:0];
    collectionView2 = [controllerCopy collectionView];
    delegate = [collectionView2 delegate];
    [delegate collectionView:collectionView didSelectItemAtIndexPath:v8];
  }

  else if (string)
  {
    *string = @"No voice memos found.";
  }

  return v7 != 0;
}

@end