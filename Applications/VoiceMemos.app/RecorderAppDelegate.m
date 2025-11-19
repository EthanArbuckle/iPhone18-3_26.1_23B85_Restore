@interface RecorderAppDelegate
+ (RecorderAppDelegate)sharedAppDelegate;
- (BOOL)_selectFirstVoiceMemoInCollectionViewController:(id)a3 errorString:(id *)a4;
- (BOOL)accessibilityPerformMagicTap;
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5;
- (NSArray)connectedPlatterSceneDelegates;
- (RCDefaultSceneDelegate)defaultSceneDelegate;
- (RCPlatterSceneDelegate)dynamicIslandSceneDelegate;
- (UIWindow)window;
- (id)_mainViewController;
- (id)_recordingViewController;
- (id)_recordingsCollectionView;
- (id)_splitViewController;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
- (id)currentSelectedRecordingCell;
- (id)defaultScene;
- (void)_closeEditCardAndFinishTest;
- (void)_finishExpandCollapseRecordingCard;
- (void)_finishGlitchRecording;
- (void)_openRecordingCardForCurrentSelection;
- (void)_performTest:(id)a3 options:(id)a4;
- (void)_scrollPlaybackCardWaveform;
- (void)_scrollRecordingCardWaveform;
- (void)_selectFirstVoiceMemoInActiveRecordingsCollectionViewControllerWithCompletionBlock:(id)a3;
- (void)_startCapture;
- (void)_startPagingWaveformViewScroll:(id)a3;
- (void)applicationWillTerminate:(id)a3;
- (void)buildMenuWithBuilder:(id)a3;
- (void)defaultSceneDidBecomeActive;
- (void)defaultSceneWillResignActive;
- (void)openCloseEditCardTest:(id)a3;
- (void)performCornobbleScrollTestForCollectionView:(id)a3 withOptions:(id)a4;
- (void)performDeferredInitialization;
- (void)performLegacyScrollTestForCollectionView:(id)a3 withOptions:(id)a4;
- (void)ppt_didEndCyclerRecording;
- (void)ppt_didFinishPostLaunchTasks:(id)a3;
- (void)ppt_didShowVoiceMemoEditor;
- (void)ppt_didShowVoiceMemosList;
- (void)ppt_didStartCyclerRecording;
- (void)ppt_didStartRecording;
- (void)ppt_didStartVoiceMemoPreviewPlayback;
- (void)reconcileApplicationState;
- (void)sceneDidEnterBackground;
- (void)startCornobbleScrollAllRecordingsTest:(id)a3;
- (void)startCyclerEndRecordingTest:(id)a3;
- (void)startCyclerRecordNewVoiceMemoTest:(id)a3;
- (void)startOpenFoldersSidebarTest:(id)a3;
- (void)startPagingScrollPlaybackCardWaveformTest:(id)a3;
- (void)startPlaySelectedVoiceMemoTest:(id)a3;
- (void)startScrollVoiceMemosEditListTest:(id)a3;
- (void)startScrollVoiceMemosListTest:(id)a3;
- (void)startSelectFirstVoiceMemoInRecordingsList:(id)a3;
@end

@implementation RecorderAppDelegate

- (RCDefaultSceneDelegate)defaultSceneDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_defaultSceneDelegate);

  if (!WeakRetained)
  {
    v4 = +[UIApplication sharedApplication];
    v5 = [v4 connectedScenes];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v15 + 1) + 8 * v9) delegate];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeWeak(&self->_defaultSceneDelegate, v10);
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  v3 = [v2 delegate];

  return v3;
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
  v2 = [(RecorderAppDelegate *)self defaultSceneDelegate];
  v3 = [v2 window];

  return v3;
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

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
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

- (void)applicationWillTerminate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_stateObserver);
  [WeakRetained applicationWillTerminateWithApplication:v4];

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

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v5 = a4;
  v6 = [UISceneConfiguration alloc];
  v7 = [v5 role];
  v8 = [v6 initWithName:0 sessionRole:v7];

  v9 = [v5 role];

  LODWORD(v5) = [v9 isEqualToString:UIWindowSceneSessionRoleApplication];
  if (v5)
  {
    [v8 setDelegateClass:objc_opt_class()];
  }

  return v8;
}

- (void)buildMenuWithBuilder:(id)a3
{
  v7 = a3;
  v3 = [v7 system];
  v4 = +[UIMenuSystem mainSystem];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v6 = +[RCMenuBarManager sharedMenuBarManager];
    [v6 buildMenuWithBuilder:v7];
  }
}

- (id)defaultScene
{
  v2 = [(RecorderAppDelegate *)self defaultSceneDelegate];
  v3 = [v2 window];
  v4 = [v3 windowScene];

  return v4;
}

- (void)reconcileApplicationState
{
  v4 = [(RecorderAppDelegate *)self defaultSceneDelegate];
  v2 = [v4 mainViewController];
  v3 = [v2 mainControllerHelper];
  [v3 reconcileApplicationState];
}

- (BOOL)accessibilityPerformMagicTap
{
  v2 = [(RecorderAppDelegate *)self defaultSceneDelegate];
  v3 = [v2 performActionForMagicTap];

  return v3;
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

        v8 = [*(*(&v15 + 1) + 8 * i) delegate];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          v10 = [v9 platterViewController];
          v11 = [v10 presentationStyle];

          if (!v11)
          {
            v12 = [v9 platterViewController];
            v13 = [v12 activeLayoutMode];

            if (v13 != -1)
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
  v4 = [v3 connectedScenes];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) delegate];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v2 = [(RecorderAppDelegate *)self _mainViewController];
  v3 = [v2 splitViewController];

  return v3;
}

- (id)_mainViewController
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 delegate];

  v4 = [v3 defaultSceneDelegate];
  v5 = [v4 mainViewController];

  return v5;
}

- (id)_recordingViewController
{
  v2 = [(RecorderAppDelegate *)self _mainViewController];
  v3 = [v2 activeFolderViewController];
  v4 = [v3 recordingViewController];

  return v4;
}

- (id)currentSelectedRecordingCell
{
  v3 = [(RecorderAppDelegate *)self _recordingsCollectionView];
  v4 = [NSIndexPath indexPathForItem:0 inSection:0];
  v5 = [v3 cellForItemAtIndexPath:v4];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = 0;
  if (isKindOfClass)
  {
    v8 = [(RecorderAppDelegate *)self _recordingsCollectionView];
    v9 = [NSIndexPath indexPathForItem:0 inSection:0];
    v7 = [v8 cellForItemAtIndexPath:v9];
  }

  return v7;
}

- (id)_recordingsCollectionView
{
  v2 = [(RecorderAppDelegate *)self _mainViewController];
  v3 = [v2 activeFolderViewController];
  v4 = [v3 recordingsCollectionViewController];
  v5 = [v4 collectionView];

  return v5;
}

- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_storeStrong(&qword_1002D6FB8, a4);
  objc_storeStrong(&qword_1002D6FC0, a5);
  [v9 containsString:@"Landscape"];
  byte_1002D6FC8 = 0;
  objc_initWeak(&location, self);
  objc_copyWeak(&v18, &location);
  v11 = v9;
  v16 = v11;
  v12 = v10;
  v17 = v12;
  v13 = [(RecorderAppDelegate *)self _mainViewController:_NSConcreteStackBlock];
  [v13 setForegroundCompletionBlock:&v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return 1;
}

- (void)_performTest:(id)a3 options:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([v7 containsString:@"ScrollVoiceMemosList"])
  {
    [(RecorderAppDelegate *)self startScrollVoiceMemosListTest:v6];
  }

  else if ([v7 containsString:@"CornobbleScrollAllRecordings"])
  {
    [(RecorderAppDelegate *)self startCornobbleScrollAllRecordingsTest:v6];
  }

  else if ([v7 containsString:@"ScrollVoiceMemosEditList"])
  {
    [(RecorderAppDelegate *)self startScrollVoiceMemosEditListTest:v6];
  }

  else if ([v7 containsString:@"RecordNewVoiceMemo"])
  {
    [(RecorderAppDelegate *)self startRecordNewVoiceMemoTest:v6];
  }

  else if ([v7 containsString:@"GlitchRecordNewVoiceMemo"])
  {
    [(RecorderAppDelegate *)self glitchStartRecordNewVoiceMemoTest:v6];
  }

  else if ([v7 containsString:@"OpenCloseEditCard"])
  {
    [(RecorderAppDelegate *)self openCloseEditCardTest:v6];
  }

  else if ([v7 containsString:@"ExpandCollapseRecordingCard"])
  {
    [(RecorderAppDelegate *)self expandCollapseRecordingCardTest:v6];
  }

  else if ([v7 containsString:@"CyclerRecordNewVoiceMemo"])
  {
    [(RecorderAppDelegate *)self startCyclerRecordNewVoiceMemoTest:v6];
  }

  else if ([v7 containsString:@"CyclerStopRecordingVoiceMemo"])
  {
    [(RecorderAppDelegate *)self startCyclerEndRecordingTest:v6];
  }

  else if ([v7 containsString:@"PlaySelectedVoiceMemo"])
  {
    [(RecorderAppDelegate *)self startPlaySelectedVoiceMemoTest:v6];
  }

  else if ([v7 containsString:@"OpenFoldersSidebar"])
  {
    [(RecorderAppDelegate *)self startOpenFoldersSidebarTest:v6];
  }

  else if ([v7 containsString:@"PagingScrollPlaybackCardWaveform"])
  {
    [(RecorderAppDelegate *)self startPagingScrollPlaybackCardWaveformTest:v6];
  }
}

- (void)ppt_didFinishPostLaunchTasks:(id)a3
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

- (void)startScrollVoiceMemosListTest:(id)a3
{
  v4 = a3;
  v5 = [(RecorderAppDelegate *)self _mainViewController];
  v6 = [v5 activeFolderViewController];
  v7 = [v6 recordingsCollectionViewController];

  v9 = 0;
  if ([(RecorderAppDelegate *)self _selectFirstVoiceMemoInCollectionViewController:v7 errorString:&v9])
  {
    v8 = [v7 collectionView];
    [(RecorderAppDelegate *)self performLegacyScrollTestForCollectionView:v8 withOptions:v4];
  }
}

- (void)startCornobbleScrollAllRecordingsTest:(id)a3
{
  v4 = a3;
  v5 = [(RecorderAppDelegate *)self _mainViewController];
  v6 = [v5 activeFolderViewController];
  v7 = [v6 recordingsCollectionViewController];

  v9 = 0;
  if ([(RecorderAppDelegate *)self _selectFirstVoiceMemoInCollectionViewController:v7 errorString:&v9])
  {
    v8 = [v7 collectionView];
    [(RecorderAppDelegate *)self performCornobbleScrollTestForCollectionView:v8 withOptions:v4];
  }
}

- (void)_startCapture
{
  v2 = [(RecorderAppDelegate *)self _recordingViewController];
  v3 = v2;
  if (v2)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000362F8;
    v4[3] = &unk_10028A3B8;
    v5 = v2;
    sub_100035764(v4, 3.0);
  }
}

- (void)_finishGlitchRecording
{
  v2 = [(RecorderAppDelegate *)self _recordingViewController];
  if (v2)
  {
    v3 = dispatch_time(0, 5000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003642C;
    block[3] = &unk_10028A3B8;
    v5 = v2;
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

- (void)openCloseEditCardTest:(id)a3
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

- (void)startCyclerRecordNewVoiceMemoTest:(id)a3
{
  v3 = [(RecorderAppDelegate *)self _recordingViewController];
  v4 = v3;
  if (v3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100036A58;
    block[3] = &unk_10028A3B8;
    v6 = v3;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)startCyclerEndRecordingTest:(id)a3
{
  v3 = [(RecorderAppDelegate *)self _recordingViewController];
  if (v3)
  {
    v4 = dispatch_time(0, 3000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100036B88;
    block[3] = &unk_10028A3B8;
    v6 = v3;
    dispatch_after(v4, &_dispatch_main_q, block);
  }
}

- (void)startSelectFirstVoiceMemoInRecordingsList:(id)a3
{
  v4 = [(RecorderAppDelegate *)self _mainViewController];
  v5 = [v4 activeFolderViewController];
  v6 = [v5 recordingsCollectionViewController];
  v7 = 0;
  [(RecorderAppDelegate *)self _selectFirstVoiceMemoInCollectionViewController:v6 errorString:&v7];
}

- (void)startPlaySelectedVoiceMemoTest:(id)a3
{
  v4 = [(RecorderAppDelegate *)self _mainViewController];
  v5 = [v4 activeFolderViewController];
  v6 = [v5 recordingsCollectionViewController];

  v7 = [NSIndexPath indexPathForRow:0 inSection:0];
  [v6 selectItemAtIndexPath:v7 animated:0 scroll:1];

  v8 = [(RecorderAppDelegate *)self currentSelectedRecordingCell];
  v9 = v8;
  if (v8)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100036D88;
    block[3] = &unk_10028A3B8;
    v11 = v8;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)startScrollVoiceMemosEditListTest:(id)a3
{
  v4 = a3;
  v5 = [(RecorderAppDelegate *)self _mainViewController];
  v6 = [v5 activeFolderViewController];
  v7 = [v6 recordingsCollectionViewController];

  v8 = [v7 collectionView];
  [v8 setEditing:1];
  v9 = 0;
  if ([(RecorderAppDelegate *)self _selectFirstVoiceMemoInCollectionViewController:v7 errorString:&v9])
  {
    [(RecorderAppDelegate *)self performScrollTestForCollectionView:v8 withOptions:v4];
  }
}

- (void)startOpenFoldersSidebarTest:(id)a3
{
  v4 = [(RecorderAppDelegate *)self _splitViewController];
  [UIApp startedTest:qword_1002D6FB8];
  [v4 showColumn:0];
  v5 = [v4 transitionCoordinator];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100036FA0;
  v6[3] = &unk_10028A488;
  v6[4] = self;
  [v5 animateAlongsideTransition:0 completion:v6];
}

- (void)startPagingScrollPlaybackCardWaveformTest:(id)a3
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
  v3 = [(RecorderAppDelegate *)self _mainViewController];
  v8 = [v3 playbackViewController];

  v4 = [v8 waveformContainerViewControllers];
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = [v5 waveformViewController];
  v7 = [v6 scrollView];

  if (v7)
  {
    [(RecorderAppDelegate *)self _startPagingWaveformViewScroll:v7];
  }

  else
  {
    [UIApp failedTest:qword_1002D6FB8 withFailure:@"Unable to find WaveformScrollView in the playback card"];
  }
}

- (void)_scrollRecordingCardWaveform
{
  v7 = [(RecorderAppDelegate *)self _recordingViewController];
  v3 = [v7 waveformContainerViewControllers];
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 waveformViewController];
  v6 = [v5 scrollView];

  if (v6)
  {
    [(RecorderAppDelegate *)self _startPagingWaveformViewScroll:v6];
  }

  else
  {
    [UIApp failedTest:qword_1002D6FB8 withFailure:@"Unable to find WaveformScrollView in the recording card"];
  }
}

- (void)_openRecordingCardForCurrentSelection
{
  v5 = [(RecorderAppDelegate *)self _mainViewController];
  v2 = [v5 activeFolderViewController];
  v3 = [v2 recordingsCollectionViewController];

  v4 = [v3 uuidOfSelectedRecording];
  [v5 performAction:22 atPosition:v4 forUUID:0 sourceController:0 source:0.0];
}

- (void)_startPagingWaveformViewScroll:(id)a3
{
  v3 = a3;
  RPTGetBoundsForView();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 bounds];
  v13 = v12;

  v14 = [RPTPagingScrollViewTestParameters alloc];
  v15 = [v14 initWithTestName:qword_1002D6FB8 scrollBounds:2 scrollContentLength:0 direction:v5 completionHandler:{v7, v9, v11, v13}];
  [RPTTestRunner runTestWithParameters:v15];
}

- (void)performLegacyScrollTestForCollectionView:(id)a3 withOptions:(id)a4
{
  v5 = a4;
  v10 = a3;
  v6 = [v5 objectForKey:@"iterations"];
  v7 = [v6 intValue];

  v8 = [v5 objectForKey:@"offset"];

  v9 = [v8 intValue];
  [v10 scrollToTop];
  [v10 _performScrollTest:qword_1002D6FB8 iterations:v7 delta:v9];
}

- (void)performCornobbleScrollTestForCollectionView:(id)a3 withOptions:(id)a4
{
  v4 = a3;
  [v4 scrollToTop];
  v5 = [RPTScrollViewTestParameters alloc];
  v6 = [v5 initWithTestName:qword_1002D6FB8 scrollView:v4 completionHandler:0];

  [RPTTestRunner runTestWithParameters:v6];
}

- (void)_selectFirstVoiceMemoInActiveRecordingsCollectionViewControllerWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(RecorderAppDelegate *)self _mainViewController];
  v6 = [v5 activeFolderViewController];
  v7 = [v6 recordingsCollectionViewController];

  if (v7)
  {
    v9 = 0;
    if ([(RecorderAppDelegate *)self _selectFirstVoiceMemoInCollectionViewController:v7 errorString:&v9])
    {
      v8 = +[UIApplication sharedApplication];
      [v8 installCACommitCompletionBlock:v4];
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

- (BOOL)_selectFirstVoiceMemoInCollectionViewController:(id)a3 errorString:(id *)a4
{
  v5 = a3;
  v6 = [v5 collectionView];
  v7 = [v6 numberOfItemsInSection:0];
  if (v7)
  {
    v8 = [NSIndexPath indexPathForItem:0 inSection:0];
    [v5 selectItemAtIndexPath:v8 animated:0 scroll:0];
    v9 = [v5 collectionView];
    v10 = [v9 delegate];
    [v10 collectionView:v6 didSelectItemAtIndexPath:v8];
  }

  else if (a4)
  {
    *a4 = @"No voice memos found.";
  }

  return v7 != 0;
}

@end