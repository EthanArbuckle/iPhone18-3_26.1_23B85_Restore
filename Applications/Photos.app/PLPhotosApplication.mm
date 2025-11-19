@interface PLPhotosApplication
- (BOOL)_purgeVariationsCaches;
- (BOOL)launchedToTest;
- (BOOL)runTest:(id)a3 options:(id)a4;
- (BOOL)shouldRecordExtendedLaunchTime;
- (id)_extendLaunchTest;
- (id)_oneUpViewControllerForViewController:(id)a3;
- (id)_scrollViewToTestForViewController:(id)a3;
- (id)_tungstenViewToTestForViewController:(id)a3;
- (id)rootViewController;
- (int)_iterationsFromTestOptions:(id)a3;
- (int)_scrollTestDelta:(id)a3 options:(id)a4;
- (int)_scrollTestLength:(id)a3 options:(id)a4;
- (int64_t)_zoomLevelFromTestDefinitionZoomLevelName:(id)a3;
- (unint64_t)_scrollAxisForTestWithOptions:(id)a3;
- (unint64_t)ppt_determineAxisForScrollView:(id)a3 withOptions:(id)a4;
- (void)_addTest:(id)a3 completionHandler:(id)a4;
- (void)_callCompletionHandlersForTest:(id)a3;
- (void)_computeFibonnaciNumbersForDuration:(double)a3;
- (void)_configureLibraryFilterModeWithTestOptions:(id)a3;
- (void)_convertAsset:(id)a3 toVariationType:(int64_t)a4 completionHandler:(id)a5;
- (void)_curatedLibraryVC:(id)a3 transitionToZoomLevel:(int64_t)a4 animationSubTestName:(id)a5 task:(id)a6 then:(id)a7;
- (void)_dismissStoryFeed:(id)a3 completion:(id)a4;
- (void)_endedTest:(id)a3;
- (void)_gridView:(id)a3 performBlockAfterAnimationsCompleted:(id)a4;
- (void)_installWillFinishTestHandler:(id)a3;
- (void)_navigateToAlbumForCurrentTest:(id)a3;
- (void)_navigateToAssetForCurrentTestInOneUp:(BOOL)a3 startFromEnd:(BOOL)a4 completion:(id)a5;
- (void)_navigateToAssetInOneUpPreferLocationAndFace:(BOOL)a3 forCurrentTest:(id)a4;
- (void)_navigateToCuratedLibraryTabForCurrentTest:(id)a3;
- (void)_navigateToDestination:(id)a3 completionHandler:(id)a4;
- (void)_navigateToLivePhotosForCurrentTest:(id)a3;
- (void)_navigateToPhotosDetailsForCurrentTestAnimated:(BOOL)a3 willTapHandler:(id)a4 willTransitionHandler:(id)a5 didTransitionHandler:(id)a6 completion:(id)a7;
- (void)_navigateToStoryFeedWithConfiguration:(id)a3 completion:(id)a4;
- (void)_navigateToStoryPlayerWithConfiguration:(id)a3 completion:(id)a4;
- (void)_oneUpDetailsTransitionWith:(id)a3 testOptions:(id)a4;
- (void)_performActionsWithCuratedLibraryVC:(id)a3 actionsTypesAndNames:(id)a4 completionHandler:(id)a5;
- (void)_runAssetViewTest:(id)a3 usingBlock:(id)a4;
- (void)_runHeadlessStoryTest:(id)a3 usingBlock:(id)a4;
- (void)_runImportTestCommonInit:(id)a3 navigateToImportTab:(BOOL)a4 completionHandler:(id)a5;
- (void)_runLoadOneUpDocumentMenuActionsSubTest:(id)a3;
- (void)_runPhotoEditTestWithOptions:(id)a3 afterEditOpenedBlock:(id)a4;
- (void)_runRequestImageWithTargetSize:(CGSize)a3 contentMode:(int64_t)a4 options:(id)a5;
- (void)_runRotationTestWithViewController:(id)a3;
- (void)_runScrollTestWithOneUpViewController:(id)a3 options:(id)a4;
- (void)_runScrubTestWithOneUpViewController:(id)a3 options:(id)a4;
- (void)_runSelectedSliderTestForViewController:(id)a3 withOptions:(id)a4;
- (void)_runSharingTest:(id)a3 withActivityType:(id)a4;
- (void)_runStoryFeedTest:(id)a3 usingBlock:(id)a4;
- (void)_runStoryPlayerTest:(id)a3 usingBlock:(id)a4;
- (void)_transitionCuratedLibraryVC:(id)a3 toZoomLevelsWithSubTestNames:(id)a4 taskHandler:(id)a5 completionHandler:(id)a6;
- (void)failedCurrentTestWithFailure:(id)a3;
- (void)failedTest:(id)a3 withFailureFormat:(id)a4;
- (void)finishedCurrentTest;
- (void)finishedCurrentTestWithExtraResults:(id)a3;
- (void)finishedTest:(id)a3 extraResults:(id)a4 waitForNotification:(id)a5 withTeardownBlock:(id)a6;
- (void)installNotificationObserverForNotificationName:(id)a3 notificationName:(id)a4 forOneNotification:(BOOL)a5 usingBlock:(id)a6;
- (void)launchUIImagePickerControllerWithPhotoLibrary:(id)a3;
- (void)launchUIImagePickerControllerWithSavedPhotosAlbum:(id)a3;
- (void)measureScrollingOfScrollView:(id)a3 completionHandler:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)ppt_beginPausingChanges;
- (void)ppt_endPausingChanges;
- (void)ppt_performScrollTest:(id)a3 withOptions:(id)a4 gridView:(id)a5 completionHandler:(id)a6;
- (void)ppt_performScrollTest:(id)a3 withOptions:(id)a4 scrollBounds:(CGRect)a5;
- (void)ppt_performScrollTest:(id)a3 withOptions:(id)a4 scrollView:(id)a5 scrollAxis:(unint64_t)a6 extraResultsBlock:(id)a7 completionHandler:(id)a8;
- (void)runAutoLoopGenerationTest:(id)a3;
- (void)runBaselineScrollTest:(id)a3;
- (void)runBaselineTransitionTest:(id)a3;
- (void)runCuratedLibraryFilterTest:(id)a3;
- (void)runCuratedLibraryRotationTest:(id)a3;
- (void)runCuratedLibraryZoomLevelTest:(id)a3;
- (void)runHyperionHardResetSyncTest:(id)a3;
- (void)runHyperionInitialSyncTest:(id)a3;
- (void)runHyperionSoftResetSyncTest:(id)a3;
- (void)runImagePicker:(id)a3;
- (void)runImportCycleImportSource:(id)a3;
- (void)runImportGridContentLoadingTest:(id)a3;
- (void)runImportGridDeleteAssets:(id)a3;
- (void)runImportGridImportAssetsToLibrary:(id)a3;
- (void)runImportGridThumbnailTests:(id)a3;
- (void)runLaunchAssetPickerTest:(id)a3;
- (void)runLivePhotoPlaybackInEditTest:(id)a3;
- (void)runLivePhotoPlaybackTest:(id)a3;
- (void)runLoadFullScreenSharingOneUpTest:(id)a3;
- (void)runLoadOneUpDocumentMenuTest:(id)a3;
- (void)runOneUpToggleDetailsTest:(id)a3;
- (void)runPageSwipeOneUpTest:(id)a3;
- (void)runPerformSearchPlainText:(id)a3;
- (void)runPrepareForSharingTest:(id)a3;
- (void)runRequestFullscreenTest:(id)a3;
- (void)runRequestGridSizeTest:(id)a3;
- (void)runRequestOriginalTest:(id)a3;
- (void)runScrollAlbumTest:(id)a3;
- (void)runScrollAssetPickerTest:(id)a3;
- (void)runScrollBWAdjustmentTest:(id)a3;
- (void)runScrollColorAdjustmentTest:(id)a3;
- (void)runScrollCuratedLibraryTabTest:(id)a3;
- (void)runScrollLightAdjustmentTest:(id)a3;
- (void)runScrollMessagesStackTest:(id)a3;
- (void)runScrollOneUpSpatialTest:(id)a3;
- (void)runScrollOneUpTest:(id)a3;
- (void)runScrollSearchResultsTest:(id)a3;
- (void)runScrollShareSheetTestNatural:(id)a3;
- (void)runScrollTestOnScrollView:(id)a3 withOptions:(id)a4 subTestName:(id)a5 completion:(id)a6;
- (void)runScrubOneUpTest:(id)a3;
- (void)runSelectPhotosTest:(id)a3;
- (void)runSelectPhotosVisualIntelligenceTest:(id)a3;
- (void)runShowOneUpDetailsTest:(id)a3;
- (void)runShowSearchHomeTest:(id)a3;
- (void)runSkimFullQualityOneUpPhotosTest:(id)a3;
- (void)runTungstenAnimationTest:(id)a3;
- (void)runTungstenEditorialLayoutGenerationTest:(id)a3;
- (void)runTungstenGridLayoutGenerationTest:(id)a3;
- (void)runTungstenRenderTextTest:(id)a3;
- (void)runTungstenScrollingTest:(id)a3;
- (void)runTungstenVideoPlaybackAndScrollingTest:(id)a3;
- (void)startSwitchTabTest:(id)a3;
- (void)startedCurrentTest;
- (void)startedTest:(id)a3;
- (void)tearDownSharingTest:(id)a3;
@end

@implementation PLPhotosApplication

- (BOOL)launchedToTest
{
  if (PFProcessIsLaunchedToExecuteTests())
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = PLPhotosApplication;
  return [(PLPhotosApplication *)&v4 launchedToTest];
}

- (id)_extendLaunchTest
{
  if ([(PLPhotosApplication *)self shouldRecordExtendedLaunchTime])
  {
    return @"PhotosApplicationLaunchExtended";
  }

  else
  {
    return 0;
  }
}

- (BOOL)shouldRecordExtendedLaunchTime
{
  v2 = +[PXLemonadeSettings sharedInstance];
  v3 = [v2 enableTabs];

  return v3 ^ 1;
}

- (void)runScrollOneUpSpatialTest:(id)a3
{
  v4 = a3;
  [(PLPhotosApplication *)self _configureLibraryFilterModeWithTestOptions:v4];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001EC9C;
  v6[3] = &unk_10005A8D0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PLPhotosApplication *)self _navigateToAssetInOneUpPreferLocationAndFace:1 forCurrentTest:v6];
}

- (void)runPrepareForSharingTest:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001EDF4;
  v3[3] = &unk_10005B718;
  v3[4] = self;
  [(PLPhotosApplication *)self _navigateToAlbumForCurrentTest:v3];
}

- (void)runImportCycleImportSource:(id)a3
{
  v4 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  [(PLPhotosApplication *)self startedCurrentTest];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10001F208;
  v19 = sub_10001F234;
  v20 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001F23C;
  v14[3] = &unk_10005BEF8;
  v14[5] = &v15;
  v14[6] = 20;
  v14[4] = self;
  v5 = objc_retainBlock(v14);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001F334;
  v10[3] = &unk_10005BF70;
  v10[4] = self;
  v6 = v4;
  v11 = v6;
  v7 = v5;
  v12 = v7;
  v13 = &v21;
  v8 = objc_retainBlock(v10);
  v9 = v16[5];
  v16[5] = v8;

  (v7[2])(v7, 1, v22[3]);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
}

- (void)runImportGridThumbnailTests:(id)a3
{
  v4 = a3;
  [(PLPhotosApplication *)self startedCurrentTest];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001F650;
  v6[3] = &unk_10005BEA8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(PLPhotosApplication *)self _runImportTestCommonInit:v5 navigateToImportTab:1 completionHandler:v6];
}

- (void)runImportGridImportAssetsToLibrary:(id)a3
{
  v4 = a3;
  [(PLPhotosApplication *)self startedCurrentTest];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001F7A0;
  v6[3] = &unk_10005BEA8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(PLPhotosApplication *)self _runImportTestCommonInit:v5 navigateToImportTab:1 completionHandler:v6];
}

- (void)runImportGridDeleteAssets:(id)a3
{
  v4 = a3;
  [(PLPhotosApplication *)self startedCurrentTest];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001F8F0;
  v6[3] = &unk_10005BEA8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(PLPhotosApplication *)self _runImportTestCommonInit:v5 navigateToImportTab:1 completionHandler:v6];
}

- (void)runImportGridContentLoadingTest:(id)a3
{
  v4 = a3;
  [(PLPhotosApplication *)self startedCurrentTest];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001FA30;
  v5[3] = &unk_10005BE80;
  v5[4] = self;
  [(PLPhotosApplication *)self _runImportTestCommonInit:v4 navigateToImportTab:1 completionHandler:v5];
}

- (void)_runImportTestCommonInit:(id)a3 navigateToImportTab:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [v9 mutableCopy];
  v11 = [v9 objectForKeyedSubscript:@"ImportWaitForAllAssets"];

  LODWORD(v9) = [v11 BOOLValue];
  v12 = &PUImportPPTDriverReplyWhenAllContentIsReadyKey;
  if (!v9)
  {
    v12 = &PUImportPPTDriverReplyWhenAnyContentIsReadyKey;
  }

  [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:*v12];
  if (v5)
  {
    [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:PUImportPPTDriverNavigateToImportTabKey];
  }

  v13 = +[PUImportPPTDriver sharedInstance];
  [v13 setTestOptions:v10];
  if ([(PLPhotosApplication *)self conformsToProtocol:&OBJC_PROTOCOL___PXImportViewControllerProvider])
  {
    [v13 setImportViewControllerProvider:self];
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001FC44;
  v16[3] = &unk_10005BE58;
  v17 = v13;
  v18 = v8;
  v16[4] = self;
  v14 = v13;
  v15 = v8;
  [v14 ppt_insertImportDataSourceWithOptions:v10 completionHandler:v16];
}

- (void)_runAssetViewTest:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(UIViewController);
  v9 = +[UIColor systemBackgroundColor];
  v10 = [v8 view];
  [v10 setBackgroundColor:v9];

  [v8 setModalPresentationStyle:5];
  v11 = +[PXDisplayAssetViewPPTConfiguration defaultConfigurations];
  v12 = [(PLPhotosApplication *)self rootViewController];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001FDF4;
  v17[3] = &unk_10005BE30;
  v18 = v8;
  v19 = self;
  v21 = v11;
  v22 = v7;
  v20 = v6;
  v13 = v11;
  v14 = v7;
  v15 = v6;
  v16 = v8;
  [v12 presentViewController:v16 animated:1 completion:v17];
}

- (void)_runStoryFeedTest:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = PLPPTGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Testing obsolete implementation, see rdar://134325003", buf, 2u);
  }

  v9 = [[PXStoryPPTPerformer alloc] initWithDelegate:self testOptions:v7];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000200FC;
  v12[3] = &unk_10005BD80;
  v13 = v9;
  v14 = v6;
  v12[4] = self;
  v10 = v9;
  v11 = v6;
  [v10 enumerateFeedConfigurationsUsingBlock:v12 completion:0];
}

- (void)_runHeadlessStoryTest:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[PXStoryPPTPerformer alloc] initWithDelegate:self testOptions:v7];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000204B0;
  v11[3] = &unk_10005BCF0;
  v12 = v8;
  v13 = v6;
  v9 = v8;
  v10 = v6;
  [v9 enumerateStoryConfigurationsUsingBlock:v11 completion:0];
}

- (void)_runStoryPlayerTest:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[PXStoryPPTPerformer alloc] initWithDelegate:self testOptions:v7];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000206C8;
  v11[3] = &unk_10005BCA0;
  v12 = v8;
  v13 = v6;
  v11[4] = self;
  v9 = v8;
  v10 = v6;
  [v9 enumerateStoryConfigurationsUsingBlock:v11 completion:0];
}

- (void)runTungstenVideoPlaybackAndScrollingTest:(id)a3
{
  v3 = a3;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2050000000;
  v4 = qword_100066660;
  v51 = qword_100066660;
  if (!qword_100066660)
  {
    v42 = _NSConcreteStackBlock;
    v43 = 3221225472;
    v44 = sub_100020EA8;
    v45 = &unk_10005BED0;
    v46 = &v48;
    sub_100020EA8(&v42);
    v4 = v49[3];
  }

  v27 = v3;
  v5 = v4;
  _Block_object_dispose(&v48, 8);
  v30 = objc_alloc_init(v4);
  v29 = objc_alloc_init(NSMutableDictionary);
  for (i = 0; i != 5; ++i)
  {
    v7 = dispatch_semaphore_create(0);
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = sub_100021094;
    v46 = sub_1000210A4;
    v47 = 0;
    v8 = [NSNumber numberWithUnsignedInteger:i];
    v9 = [v8 stringValue];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1000210AC;
    v39[3] = &unk_10005BAB0;
    v41 = &v42;
    v10 = v7;
    v40 = v10;
    [v30 generateVideoWithFileNameSuffix:v9 completionHandler:v39];

    dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    if (*(v43 + 40))
    {
      v11 = [PXFileBackedAssetDescription alloc];
      v12 = [v11 initWithURL:*(v43 + 40)];
      [v12 setObject:&off_10005F8F8 forKeyedSubscript:@"mediaType"];
      [v12 setObject:&off_10005F940 forKeyedSubscript:@"playbackStyle"];
      if (v12)
      {
        v52 = v12;
        v13 = [NSArray arrayWithObjects:&v52 count:1];
        v14 = [NSNumber numberWithUnsignedInteger:i];
        [v29 setObject:v13 forKeyedSubscript:v14];
      }
    }

    _Block_object_dispose(&v42, 8);
  }

  v15 = [[PXFileBackedAssetsDataSource alloc] initWithFileBackedAssetDescriptionsBySection:v29];
  v16 = [[PXGPPTVideoPlaybackViewController alloc] initWithAssetsDataSource:v15];
  v17 = [(PLPhotosApplication *)self rootViewController];
  v18 = +[PXPhotosGridSettings sharedInstance];
  v19 = +[PXCuratedLibrarySettings sharedInstance];
  v20 = [v19 enableInlinePlayback];
  v21 = [v18 maxNumberOfPlayingItems] != 0;
  [v19 setEnableInlinePlayback:1];
  [v18 setMaxNumberOfPlayingItems:0x7FFFFFFFFFFFFFFFLL];
  [(PLPhotosApplication *)self startedCurrentTest];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100020F70;
  v31[3] = &unk_10005BB28;
  v31[4] = self;
  v32 = v27;
  v33 = v16;
  v34 = v17;
  v37 = v20;
  v35 = v19;
  v36 = v18;
  v38 = v21;
  v22 = v18;
  v23 = v19;
  v24 = v17;
  v25 = v16;
  v26 = v27;
  [v24 presentViewController:v25 animated:1 completion:v31];
}

- (void)runTungstenScrollingTest:(id)a3
{
  v4 = a3;
  v5 = +[PXGPPTSettings scrollingPresetNames];
  v6 = [v4 objectForKeyedSubscript:@"preset"];
  v7 = [v6 isEqual:@"<currentSettings>"];

  if (v7)
  {

    v5 = &off_10005F8E0;
  }

  v8 = +[PXGPPTSettings sharedInstance];
  v9 = [(PLPhotosApplication *)self rootViewController];
  v10 = objc_alloc_init(NSMutableDictionary);
  [(PLPhotosApplication *)self startedCurrentTest];
  v11 = [(PLPhotosApplication *)self currentTestName];
  [v5 count];
  v19 = v5;
  v20 = v8;
  v21 = v9;
  v22 = v4;
  v18 = v10;
  v12 = v18;
  v13 = v4;
  v14 = v11;
  v15 = v9;
  v16 = v8;
  v17 = v5;
  PXIterateAsynchronously();
}

- (void)runTungstenAnimationTest:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"numberOfSprites"];
  v6 = [v5 px_integerValues];

  v7 = [v4 objectForKeyedSubscript:@"animationDuration"];
  [v7 doubleValue];
  v9 = v8;

  v10 = [v4 objectForKeyedSubscript:@"iterations"];

  v11 = [v10 integerValue];
  v12 = objc_alloc_init(PXGPPTAnimationLayout);
  v13 = [[PXGPPTViewController alloc] initWithLayout:v12];
  v14 = [(PLPhotosApplication *)self currentTestName];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100021F90;
  v31[3] = &unk_10005B920;
  v15 = v12;
  v32 = v15;
  v33 = self;
  v34 = v14;
  v16 = v13;
  v35 = v16;
  v36 = v9;
  v17 = v14;
  v18 = objc_retainBlock(v31);
  [(PLPhotosApplication *)self startedCurrentTest];
  v19 = [(PLPhotosApplication *)self rootViewController];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000220E4;
  v24[3] = &unk_10005B9C0;
  v25 = v6;
  v26 = v15;
  v29 = v18;
  v30 = v11;
  v27 = v16;
  v28 = self;
  v20 = v16;
  v21 = v18;
  v22 = v15;
  v23 = v6;
  [v19 presentViewController:v20 animated:1 completion:v24];
}

- (void)runTungstenEditorialLayoutGenerationTest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = objc_alloc_init(PXGPPTLayoutTester);
  [(PLPhotosApplication *)self startedCurrentTest];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100022744;
  v8[3] = &unk_10005B8D0;
  v9 = v5;
  v7 = v5;
  [v6 runEditorialLayoutTestWithOptions:v4 completionHandler:v8];

  [(PLPhotosApplication *)self finishedCurrentTestWithExtraResults:v7];
}

- (void)runTungstenGridLayoutGenerationTest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = objc_alloc_init(PXGPPTLayoutTester);
  [(PLPhotosApplication *)self startedCurrentTest];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000229E4;
  v8[3] = &unk_10005B8D0;
  v9 = v5;
  v7 = v5;
  [v6 runGridLayoutTestWithOptions:v4 completionHandler:v8];

  [(PLPhotosApplication *)self finishedCurrentTestWithExtraResults:v7];
}

- (void)runTungstenRenderTextTest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PXGPPTTextRenderingTester);
  [PXPPTLoadingLatencyMeter startMeasurementsForOutputType:@"Texture"];
  [(PLPhotosApplication *)self startedCurrentTest];
  +[PXPPTLoadingLatencyMeter sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100022CD0;
  v8[3] = &unk_10005C190;
  v9 = v8[4] = self;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100022D24;
  v7[3] = &unk_10005B8A8;
  v7[4] = self;
  v6 = v9;
  [v5 runRenderTextTestWithOptions:v4 latencyMeter:v6 completionHandler:v8 failureHandler:v7];
}

- (void)_convertAsset:(id)a3 toVariationType:(int64_t)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = [PXPhotoKitAssetsDataSourceManager dataSourceManagerWithAsset:a3];
  v8 = [v7 dataSource];
  v17[0] = [v8 identifier];
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = 0x7FFFFFFFFFFFFFFFLL;
  v9 = [PXIndexPathSet indexPathSetWithIndexPath:v17];
  v10 = [[PXSectionedSelectionManager alloc] initWithDataSourceManager:v7];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100022ED8;
  v15[3] = &unk_10005B880;
  v16 = v9;
  v11 = v9;
  [v10 performChanges:v15];
  v12 = [[PXPhotoKitAssetActionManager alloc] initWithSelectionManager:v10];
  v13 = PXAssetActionTypeForSelectingAssetVariationType();
  v14 = [v12 actionPerformerForActionType:v13];

  [v14 performActionWithCompletionHandler:v6];
}

- (void)runAutoLoopGenerationTest:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"iterations"];
  v5 = [v4 integerValue];

  if ([(PLPhotosApplication *)self _purgeVariationsCaches])
  {
    v6 = +[PHPhotoLibrary px_deprecated_appPhotoLibrary];
    v7 = [v6 librarySpecificFetchOptions];
    v8 = [PHAssetCollection fetchAssetCollectionsWithType:2 subtype:213 options:v7];

    v9 = +[PHPhotoLibrary px_deprecated_appPhotoLibrary];
    v10 = [v9 librarySpecificFetchOptions];

    v26 = PHAssetPropertySetOriginalMetadata;
    v11 = [NSArray arrayWithObjects:&v26 count:1];
    [v10 setFetchPropertySets:v11];

    v12 = [v8 firstObject];
    v13 = [PHAsset fetchAssetsInAssetCollection:v12 options:v10];

    +[NSMutableArray array];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000231EC;
    v14 = v23[3] = &unk_10005B7E0;
    v24 = v14;
    v25 = v5;
    [v13 enumerateObjectsUsingBlock:v23];
    v15 = [v14 copy];
    v16 = [v15 mutableCopy];
    if ([v16 count] >= v5)
    {
      [(PLPhotosApplication *)self startedCurrentTest];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100023274;
      v20[3] = &unk_10005B858;
      v21 = v16;
      v22 = self;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000233A4;
      v17[3] = &unk_10005C190;
      v18 = v15;
      v19 = self;
      [(PLPhotosApplication *)self ppt_startIterationWithBlock:v20 completion:v17];
    }

    else
    {
      -[PLPhotosApplication failedCurrentTestWithFailure:](self, "failedCurrentTestWithFailure:", @"Library only contains %lu live photos that can be converted to autoloops, need %ld.", [v16 count], v5);
    }
  }
}

- (void)launchUIImagePickerControllerWithSavedPhotosAlbum:(id)a3
{
  v4 = a3;
  v5 = [UTTypeImage identifier];
  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [(PLPhotosApplication *)self _launchUIImagePickerControllerWithOptions:v4 sourceType:2 mediaTypes:v6];
}

- (void)launchUIImagePickerControllerWithPhotoLibrary:(id)a3
{
  v4 = a3;
  v5 = [UTTypeImage identifier];
  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [(PLPhotosApplication *)self _launchUIImagePickerControllerWithOptions:v4 sourceType:0 mediaTypes:v6];
}

- (void)runScrollAssetPickerTest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PHPickerConfiguration);
  v6 = [[PUPickerCoordinator alloc] initWithPHConfiguration:v5 coordinatorActionHandler:0 loadingStatusManager:0];
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000239E8;
  v9[3] = &unk_10005B7B8;
  v7 = v6;
  v10 = v7;
  objc_copyWeak(&v12, &location);
  v8 = v4;
  v11 = v8;
  [(PLPhotosApplication *)self _navigateToCuratedLibraryTabForCurrentTest:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)runLaunchAssetPickerTest:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100023D8C;
  v5[3] = &unk_10005B768;
  objc_copyWeak(&v6, &location);
  [(PLPhotosApplication *)self _navigateToCuratedLibraryTabForCurrentTest:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)runShowSearchHomeTest:(id)a3
{
  v4 = [PXProgrammaticNavigationDestination alloc];
  v5 = [NSURL URLWithString:@"photos-navigation://search"];
  v6 = [v4 initWithURL:v5];

  [(PLPhotosApplication *)self startedCurrentTest];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100024230;
  v7[3] = &unk_10005B718;
  v7[4] = self;
  [(PLPhotosApplication *)self _navigateToDestination:v6 completionHandler:v7];
}

- (void)runPerformSearchPlainText:(id)a3
{
  v4 = [PXProgrammaticNavigationDestination alloc];
  v5 = [NSURL URLWithString:@"photos-navigation://search?searchTerm=a"];
  v6 = [v4 initWithURL:v5];

  [(PLPhotosApplication *)self startedCurrentTest];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002430C;
  v7[3] = &unk_10005B718;
  v7[4] = self;
  [(PLPhotosApplication *)self _navigateToDestination:v6 completionHandler:v7];
}

- (void)installNotificationObserverForNotificationName:(id)a3 notificationName:(id)a4 forOneNotification:(BOOL)a5 usingBlock:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = +[NSOperationQueue mainQueue];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100021094;
  v26 = sub_1000210A4;
  v27 = 0;
  objc_initWeak(&location, v9);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000244C4;
  v16[3] = &unk_10005B6F0;
  v18 = &v22;
  v20 = a5;
  objc_copyWeak(&v19, &location);
  v13 = v11;
  v17 = v13;
  v14 = [v9 addObserverForName:v10 object:0 queue:v12 usingBlock:v16];
  v15 = v23[5];
  v23[5] = v14;

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v22, 8);
}

- (void)runImagePicker:(id)a3
{
  v5 = [a3 objectForKeyedSubscript:@"sourceType"];
  if ([v5 isEqualToString:@"SavedPhotosAlbum"])
  {
    v4 = 2;
  }

  else
  {
    [v5 isEqualToString:@"PhotoLibrary"];
    v4 = 0;
  }

  if ([UIImagePickerController isSourceTypeAvailable:v4])
  {
    [(PLPhotosApplication *)self failedCurrentTestWithFailure:@"rdar://133850282"];
  }

  else
  {
    [(PLPhotosApplication *)self failedCurrentTest];
  }
}

- (void)runHyperionHardResetSyncTest:(id)a3
{
  [(PLPhotosApplication *)self startedCurrentTest];
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000246B4;
  block[3] = &unk_10005C140;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)runHyperionSoftResetSyncTest:(id)a3
{
  [(PLPhotosApplication *)self startedCurrentTest];
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000247F8;
  block[3] = &unk_10005C140;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)runHyperionInitialSyncTest:(id)a3
{
  [(PLPhotosApplication *)self startedCurrentTest];
  v4 = [(PLPhotosApplication *)self currentTestName];
  [(PLPhotosApplication *)self startedSubTest:@"createMaster" forTest:v4];

  v5 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024964;
  block[3] = &unk_10005C140;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)_runRequestImageWithTargetSize:(CGSize)a3 contentMode:(int64_t)a4 options:(id)a5
{
  height = a3.height;
  width = a3.width;
  v42 = a5;
  v44 = [(PLPhotosApplication *)self currentTestOptions];
  v7 = [v44 objectForKeyedSubscript:@"speed"];
  v8 = [v7 isEqual:@"fast"];

  if (v8)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 1.0;
  }

  v10 = 10;
  if (v8)
  {
    v10 = 200;
  }

  v49 = v10;
  v43 = [v44 objectForKeyedSubscript:@"imageType"];
  if ([v43 isEqualToString:@"jpeg"])
  {
    v89 = UTTypeJPEG;
    v50 = [NSArray arrayWithObjects:&v89 count:1];
  }

  else if ([v43 isEqualToString:@"heif"])
  {
    v88[0] = UTTypeHEIC;
    v11 = [UTType typeWithIdentifier:@"public.avci"];
    v88[1] = v11;
    v88[2] = UTTypeHEIF;
    v50 = [NSArray arrayWithObjects:v88 count:3];
  }

  else
  {
    if (([v43 isEqualToString:@"*"] & 1) == 0)
    {
      [(PLPhotosApplication *)self failedCurrentTestWithFailure:@"Invalid image type:%@", v43];
      goto LABEL_40;
    }

    v50 = 0;
  }

  v12 = +[PHPhotoLibrary px_deprecated_appPhotoLibrary];
  v45 = [v12 librarySpecificFetchOptions];

  v13 = [NSSortDescriptor sortDescriptorWithKey:@"addedDate" ascending:0];
  v87 = v13;
  v14 = [NSArray arrayWithObjects:&v87 count:1];
  [v45 setInternalSortDescriptors:v14];

  [v45 setWantsIncrementalChangeDetails:0];
  [v45 setIncludeAssetSourceTypes:1];
  [v45 setIncludeHiddenAssets:1];
  v15 = [PHAsset fetchAssetsWithMediaType:1 options:v45];
  v51 = +[NSMutableArray array];
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = v15;
  v48 = [obj countByEnumeratingWithState:&v81 objects:v86 count:16];
  if (v48)
  {
    v47 = *v82;
LABEL_14:
    v16 = 0;
    while (1)
    {
      if (*v82 != v47)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v81 + 1) + 8 * v16);
      context = objc_autoreleasePoolPush();
      if (v50)
      {
        v18 = [PHAsset originalUniformTypeIdentifierForAsset:v17];
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v19 = v50;
        v20 = [v19 countByEnumeratingWithState:&v77 objects:v85 count:16];
        if (v20)
        {
          v21 = *v78;
          while (2)
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v78 != v21)
              {
                objc_enumerationMutation(v19);
              }

              if (v18)
              {
                v23 = *(*(&v77 + 1) + 8 * i);
                v24 = [UTType typeWithIdentifier:v18];
                LOBYTE(v23) = [v24 isEqual:v23];

                if (v23)
                {

                  goto LABEL_29;
                }
              }
            }

            v20 = [v19 countByEnumeratingWithState:&v77 objects:v85 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }
      }

      else
      {
LABEL_29:
        [v51 addObject:v17];
      }

      v25 = [v51 count] < v49;
      objc_autoreleasePoolPop(context);
      if (!v25)
      {
        break;
      }

      if (++v16 == v48)
      {
        v48 = [obj countByEnumeratingWithState:&v81 objects:v86 count:16];
        if (v48)
        {
          goto LABEL_14;
        }

        break;
      }
    }
  }

  if ([v51 count] >= v49)
  {
    v28 = [v44 objectForKeyedSubscript:@"preview"];
    v29 = [v28 isEqual:@"true"];

    if (v29)
    {
      v30 = +[UIApplication sharedApplication];
      v31 = [v30 windows];
      v32 = [v31 firstObject];

      v33 = [UIImageView alloc];
      [v32 bounds];
      PXRectGetCenter();
      v34 = [v32 screen];
      [v34 scale];
      PXSizeScale();
      PXRectWithCenterAndSize();
      v35 = [v33 initWithFrame:?];

      [v35 setContentMode:1];
      v36 = +[UIColor yellowColor];
      [v35 setBackgroundColor:v36];

      [v32 addSubview:v35];
    }

    else
    {
      v35 = 0;
    }

    v37 = +[PHImageManager defaultManager];
    v76[0] = 0;
    v76[1] = v76;
    v76[2] = 0x2020000000;
    v76[3] = 0;
    v75[0] = 0;
    v75[1] = v75;
    v75[2] = 0x2020000000;
    v75[3] = 0;
    v74[0] = 0;
    v74[1] = v74;
    v74[2] = 0x2020000000;
    v74[3] = 0;
    v73[0] = 0;
    v73[1] = v73;
    v73[2] = 0x2020000000;
    v73[3] = 0;
    [PXPPTLoadingLatencyMeter startMeasurementsForOutputType:@"Image"];
    [(PLPhotosApplication *)self startedCurrentTest];
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_100025E68;
    v58[3] = &unk_10005B5D0;
    v64 = v76;
    v68 = a2;
    v59 = v51;
    v60 = self;
    v69 = v9;
    v38 = v37;
    v61 = v38;
    v70 = width;
    v71 = height;
    v72 = a4;
    v62 = v42;
    v65 = v75;
    v66 = v74;
    v63 = v35;
    v67 = v73;
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_100026154;
    v53[3] = &unk_10005B5F8;
    v55 = v73;
    v56 = v74;
    v53[4] = self;
    v57 = v75;
    v27 = v63;
    v54 = v27;
    [(PLPhotosApplication *)self ppt_startIterationWithBlock:v58 completion:v53];

    _Block_object_dispose(v73, 8);
    _Block_object_dispose(v74, 8);
    _Block_object_dispose(v75, 8);
    _Block_object_dispose(v76, 8);
  }

  else
  {
    v26 = [v51 count];
    v27 = [v50 componentsJoinedByString:{@", "}];
    [(PLPhotosApplication *)self failedCurrentTestWithFailure:@"Need %lu but only found %lu assets of specified types:[%@]", v49, v26, v27];
  }

LABEL_40:
}

- (void)runRequestGridSizeTest:(id)a3
{
  v22 = objc_alloc_init(PHImageRequestOptions);
  [v22 setDeliveryMode:0];
  [v22 setNetworkAccessAllowed:1];
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 windows];
  v6 = [v5 firstObject];

  v7 = +[UIDevice currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v9 = PUPhotosGridViewControllerPadSpec_ptr;
  if ((v8 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v9 = PUPhotosGridViewControllerPhoneSpec_ptr;
  }

  v10 = objc_alloc_init(*v9);
  v11 = objc_alloc_init(PUSectionedGridLayout);
  [v6 bounds];
  Width = CGRectGetWidth(v24);
  [v6 safeAreaInsets];
  [v10 configureCollectionViewGridLayout:v11 forWidth:Width safeAreaInsets:{v13, v14, v15, v16}];
  [v11 itemSize];
  v17 = [v6 screen];
  [v17 scale];
  PXSizeScale();
  v19 = v18;
  v21 = v20;

  [(PLPhotosApplication *)self _runRequestImageWithTargetSize:1 contentMode:v22 options:v19, v21];
}

- (void)runRequestFullscreenTest:(id)a3
{
  v10 = objc_alloc_init(PHImageRequestOptions);
  [v10 setDeliveryMode:0];
  [v10 setNetworkAccessAllowed:1];
  [v10 setAllowSecondaryDegradedImage:1];
  v4 = +[UIScreen px_mainScreen];
  [v4 bounds];
  v5 = +[UIScreen px_mainScreen];
  [v5 scale];
  PXSizeScale();
  v7 = v6;
  v9 = v8;

  [(PLPhotosApplication *)self _runRequestImageWithTargetSize:0 contentMode:v10 options:v7, v9];
}

- (void)runRequestOriginalTest:(id)a3
{
  v4 = objc_alloc_init(PHImageRequestOptions);
  [v4 setVersion:2];
  [v4 setDeliveryMode:1];
  [v4 setResizeMode:0];
  [v4 setNetworkAccessAllowed:1];
  [(PLPhotosApplication *)self _runRequestImageWithTargetSize:0 contentMode:v4 options:PHImageManagerMaximumSize.width, PHImageManagerMaximumSize.height];
}

- (void)_dismissStoryFeed:(id)a3 completion:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100026A78;
  v6[3] = &unk_10005C078;
  v7 = a4;
  v5 = v7;
  [a3 dismissViewControllerAnimated:0 completion:v6];
}

- (void)_navigateToStoryFeedWithConfiguration:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [PXStoryUIFactory feedViewControllerWithConfiguration:a3];
  [v7 setModalPresentationStyle:0];
  v8 = [(PLPhotosApplication *)self rootViewController];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100026B80;
  v11[3] = &unk_10005B350;
  v12 = v7;
  v13 = v6;
  v9 = v7;
  v10 = v6;
  [v8 presentViewController:v9 animated:0 completion:v11];
}

- (void)_navigateToStoryPlayerWithConfiguration:(id)a3 completion:(id)a4
{
  v6 = a4;
  v15 = 0;
  v7 = [PXStoryUIFactory viewControllerWithConfiguration:a3 contentViewController:&v15];
  v8 = v15;
  v9 = [(PLPhotosApplication *)self rootViewController];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100026D50;
  v12[3] = &unk_10005B350;
  v13 = v8;
  v14 = v6;
  v10 = v8;
  v11 = v6;
  [v9 presentViewController:v7 animated:0 completion:v12];
}

- (void)_navigateToPhotosDetailsForCurrentTestAnimated:(BOOL)a3 willTapHandler:(id)a4 willTransitionHandler:(id)a5 didTransitionHandler:(id)a6 completion:(id)a7
{
  if (a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = &stru_10005B3E8;
  }

  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = objc_retainBlock(v11);
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &stru_10005B408;
  }

  v17 = objc_retainBlock(v16);

  if (v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = &stru_10005B428;
  }

  v19 = objc_retainBlock(v18);

  if (v12)
  {
    v20 = v12;
  }

  else
  {
    v20 = &stru_10005B468;
  }

  v21 = objc_retainBlock(v20);

  [(PLPhotosApplication *)self currentTestOptions];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100026FB0;
  v37[3] = &unk_10005B4B8;
  v42 = a3;
  v37[4] = self;
  v39 = v17;
  v22 = v40 = v19;
  v38 = v22;
  v41 = v21;
  v23 = v21;
  v24 = v19;
  v25 = v17;
  v26 = objc_retainBlock(v37);
  v27 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002726C;
  block[3] = &unk_10005B508;
  v32 = v22;
  v33 = self;
  v36 = a3;
  v34 = v15;
  v35 = v26;
  v28 = v26;
  v29 = v15;
  v30 = v22;
  dispatch_after(v27, &_dispatch_main_q, block);
}

- (void)_navigateToCuratedLibraryTabForCurrentTest:(id)a3
{
  v4 = a3;
  v5 = [[PXProgrammaticNavigationDestination alloc] initWithType:1 revealMode:3];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100027778;
  v7[3] = &unk_10005B3C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(PLPhotosApplication *)self _navigateToDestination:v5 completionHandler:v7];
}

- (void)_navigateToAlbumForCurrentTest:(id)a3
{
  v4 = a3;
  v5 = [(PLPhotosApplication *)self currentTestOptions];
  v6 = [v5 valueForKey:@"album"];
  v7 = [v6 lowercaseString];
  if (([(__CFString *)v7 isEqualToString:@"all photos"]& 1) != 0 || ([(__CFString *)v7 isEqualToString:@"recents"]& 1) != 0 || (v8 = v7, [(__CFString *)v7 isEqualToString:@"camera roll"]))
  {

    v8 = @"camera-roll";
  }

  if ([(__CFString *)v7 isEqualToString:@"import history"])
  {
    v9 = PXProgrammaticNavigationWellKnownNameImportHistory;

    v8 = v9;
  }

  if (v7)
  {
    v10 = @"album";
    if (v8)
    {
LABEL_9:
      v11 = [[NSString alloc] initWithFormat:@"photos://%@?name=%@", v10, v8];
      v12 = [PXProgrammaticNavigationDestination alloc];
      v13 = [NSURL URLWithString:v11];
      v14 = [v12 initWithURL:v13];

      [(PLPhotosApplication *)self _navigateToDestination:v14 completionHandler:v4];
      goto LABEL_17;
    }
  }

  else
  {
    v15 = [v5 valueForKey:@"userAlbum"];
    v16 = v15;
    if (v15)
    {
      v17 = v15;

      v10 = @"userAlbum";
      v8 = v17;
    }

    else
    {
      v10 = @"album";
    }

    if (v8)
    {
      goto LABEL_9;
    }
  }

  v18 = PLPPTGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to navigate to album %@", buf, 0xCu);
  }

  [(PLPhotosApplication *)self failedCurrentTest];
LABEL_17:
}

- (void)_navigateToAssetForCurrentTestInOneUp:(BOOL)a3 startFromEnd:(BOOL)a4 completion:(id)a5
{
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100027CA0;
  v19[3] = &unk_10005B328;
  v21 = a3;
  v19[4] = self;
  v8 = a5;
  v20 = v8;
  v22 = a4;
  v9 = objc_retainBlock(v19);
  [(PLPhotosApplication *)self currentTestOptions];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100027DC0;
  v12[3] = &unk_10005B3A0;
  v10 = v16 = v23;
  v13 = v10;
  v14 = self;
  v11 = v9;
  v15 = v11;
  v17 = a4;
  v18 = a3;
  [(PLPhotosApplication *)self _navigateToAlbumForCurrentTest:v12];

  _Block_object_dispose(v23, 8);
}

- (void)_navigateToAssetInOneUpPreferLocationAndFace:(BOOL)a3 forCurrentTest:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100028900;
  v5[3] = &unk_10005B300;
  v8 = a3;
  v6 = self;
  v7 = a4;
  v4 = v7;
  [(PLPhotosApplication *)v6 _navigateToAssetForCurrentTestInOneUp:1 startFromEnd:0 completion:v5];
}

- (void)runCuratedLibraryRotationTest:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100028E84;
  v3[3] = &unk_10005B288;
  v3[4] = self;
  [(PLPhotosApplication *)self _navigateToCuratedLibraryTabForCurrentTest:v3];
}

- (void)_runRotationTestWithViewController:(id)a3
{
  v4 = a3;
  v5 = [(PLPhotosApplication *)self currentTestOptions];
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v6 = [v5 objectForKeyedSubscript:@"iterations"];
  v7 = [v6 integerValue];

  v10[3] = v7;
  [(PLPhotosApplication *)self startedCurrentTest];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100028FF0;
  v9[3] = &unk_10005B260;
  v9[4] = self;
  v9[5] = v10;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000290A4;
  v8[3] = &unk_10005C140;
  v8[4] = self;
  [(PLPhotosApplication *)self ppt_startIterationWithBlock:v9 completion:v8];
  _Block_object_dispose(v10, 8);
}

- (void)_curatedLibraryVC:(id)a3 transitionToZoomLevel:(int64_t)a4 animationSubTestName:(id)a5 task:(id)a6 then:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(PLPhotosApplication *)self currentTestName];
  v17 = [v12 viewProvider];
  v18 = [v17 gridView];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10002949C;
  v26[3] = &unk_10005B1E8;
  v19 = v13;
  v27 = v19;
  v28 = self;
  v20 = v16;
  v29 = v20;
  v30 = v14;
  v31 = v15;
  v32 = a4;
  v21 = v15;
  v22 = v14;
  [(PLPhotosApplication *)self _gridView:v18 performBlockAfterAnimationsCompleted:v26];
  if ([v19 length])
  {
    [(PLPhotosApplication *)self pu_startedAnimationSubTest:v19 forTest:v20];
  }

  v23 = [v12 viewProvider];
  v24 = [v23 viewModel];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10002955C;
  v25[3] = &unk_10005A7F8;
  v25[4] = a4;
  [v24 performChanges:v25];
}

- (void)_transitionCuratedLibraryVC:(id)a3 toZoomLevelsWithSubTestNames:(id)a4 taskHandler:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v12 count];
  if (!v15)
  {
    v24 = +[NSAssertionHandler currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PhotosApplication-Testing.m" lineNumber:2309 description:{@"Invalid parameter not satisfying: %@", @"count > 0"}];
  }

  v16 = [v12 firstObject];
  v17 = [v16 first];
  v18 = [v17 integerValue];

  v19 = [v16 second];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100029820;
  v25[3] = &unk_10005B1E8;
  v26 = v12;
  v27 = self;
  v28 = v11;
  v29 = v14;
  v30 = v13;
  v31 = v15;
  v20 = v13;
  v21 = v11;
  v22 = v12;
  v23 = v14;
  [(PLPhotosApplication *)self _curatedLibraryVC:v21 transitionToZoomLevel:v18 animationSubTestName:v19 task:v20 then:v25];
}

- (void)_gridView:(id)a3 performBlockAfterAnimationsCompleted:(id)a4
{
  v13 = a3;
  v7 = a4;
  v8 = objc_getAssociatedObject(self, &off_100065590);

  if (v8)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PhotosApplication-Testing.m" lineNumber:2296 description:@"Completion block already exists!"];
  }

  v9 = [v13 engine];
  v10 = [v9 ppt_animator];

  [v10 addObserver:self forKeyPath:@"animating" options:3 context:off_100065588];
  v11 = objc_retainBlock(v7);

  objc_setAssociatedObject(self, &off_100065590, v11, 0x303);
}

- (void)_performActionsWithCuratedLibraryVC:(id)a3 actionsTypesAndNames:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 viewProvider];
  v12 = [v11 viewModel];

  v13 = [v12 actionManager];
  v14 = [v9 firstObject];
  v15 = [v14 first];
  if ([v13 canPerformActionType:v15])
  {
    v16 = [(PLPhotosApplication *)self currentTestName];
    [v12 zoomLevel];
    v17 = PXCuratedLibraryZoomLevelDescription();
    [v17 stringByReplacingOccurrencesOfString:@" " withString:&stru_10005C9B8];
    v18 = v24 = v8;

    [v14 second];
    v19 = v25 = v10;
    v20 = [NSString stringWithFormat:@"Filter%@%@-Latency", v18, v19];

    [(PLPhotosApplication *)self startedSubTest:@"Latency" forTest:v16];
    [(PLPhotosApplication *)self startedSubTest:v20 forTest:v16];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100029CC0;
    v28[3] = &unk_10005B170;
    v28[4] = self;
    v29 = v16;
    v30 = v20;
    v31 = v9;
    v33 = v25;
    v32 = v24;
    v21 = v20;
    v22 = v16;
    [(PLPhotosApplication *)self installCACommitCompletionBlock:v28];
    v23 = [v13 actionPerformerForActionType:v15];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100029DB8;
    v26[3] = &unk_10005B198;
    v26[4] = self;
    v27 = v15;
    [v23 performActionWithCompletionHandler:v26];

    v10 = v25;
    v8 = v24;
  }

  else
  {
    [(PLPhotosApplication *)self failedCurrentTestWithFailure:@"Unable to perform action %@", v15];
  }
}

- (void)runCuratedLibraryFilterTest:(id)a3
{
  v4 = a3;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v5 = [v4 objectForKeyedSubscript:@"iterations"];
  v6 = [v5 integerValue];

  v8[3] = v6;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100029F94;
  v7[3] = &unk_10005B0D0;
  v7[4] = self;
  v7[5] = v8;
  [(PLPhotosApplication *)self _navigateToCuratedLibraryTabForCurrentTest:v7];
  _Block_object_dispose(v8, 8);
}

- (void)runCuratedLibraryZoomLevelTest:(id)a3
{
  v4 = a3;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v5 = [v4 objectForKeyedSubscript:@"iterations"];
  v6 = [v5 integerValue];

  v8[3] = v6;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002A4C4;
  v7[3] = &unk_10005B0D0;
  v7[4] = self;
  v7[5] = v8;
  [(PLPhotosApplication *)self _navigateToCuratedLibraryTabForCurrentTest:v7];
  _Block_object_dispose(v8, 8);
}

- (void)runSelectPhotosVisualIntelligenceTest:(id)a3
{
  v4 = a3;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v5 = [v4 objectForKeyedSubscript:@"iterations"];
  v6 = [v5 integerValue];

  v10[3] = v6;
  v7 = [v4 objectForKeyedSubscript:@"maxPhotosCount"];
  v8 = [v7 integerValue];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002AA70;
  v9[3] = &unk_10005B080;
  v9[4] = self;
  v9[5] = v10;
  v9[6] = v8;
  [(PLPhotosApplication *)self _navigateToAlbumForCurrentTest:v9];
  _Block_object_dispose(v10, 8);
}

- (void)runSelectPhotosTest:(id)a3
{
  v4 = a3;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v5 = [v4 objectForKeyedSubscript:@"iterations"];
  v6 = [v5 integerValue];

  v10[3] = v6;
  v7 = [v4 objectForKeyedSubscript:@"maxPhotosCount"];
  v8 = [v7 integerValue];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002B7EC;
  v9[3] = &unk_10005B080;
  v9[4] = self;
  v9[5] = v10;
  v9[6] = v8;
  [(PLPhotosApplication *)self _navigateToAlbumForCurrentTest:v9];
  _Block_object_dispose(v10, 8);
}

- (void)runBaselineTransitionTest:(id)a3
{
  v5 = a3;
  v6 = objc_alloc_init(sub_10002D934());
  if (v6)
  {
    v7 = [[PUNavigationController alloc] initWithRootViewController:v6];
    v8 = [(PLPhotosApplication *)self rootViewController];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002DA14;
    v10[3] = &unk_10005AEA0;
    v10[4] = self;
    v11 = v5;
    v13 = v7;
    v14 = a2;
    v12 = v6;
    v9 = v7;
    [v8 presentViewController:v9 animated:1 completion:v10];
  }

  else
  {
    [(PLPhotosApplication *)self failedCurrentTest];
  }
}

- (void)_navigateToLivePhotosForCurrentTest:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002E63C;
  v4[3] = &unk_10005ADD8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(PLPhotosApplication *)v5 _navigateToAssetForCurrentTestInOneUp:1 startFromEnd:1 completion:v4];
}

- (BOOL)_purgeVariationsCaches
{
  v3 = +[PHPhotoLibrary px_deprecated_appPhotoLibrary];
  v4 = [v3 variationCache];

  [v4 purgeAll];
  objc_opt_class();
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v5 = qword_100066650;
  v23 = qword_100066650;
  if (!qword_100066650)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10002F02C;
    v19[3] = &unk_10005BED0;
    v19[4] = &v20;
    sub_10002F02C(v19);
    v5 = v21[3];
  }

  v6 = v5;
  _Block_object_dispose(&v20, 8);
  [v5 clearCacheDirectory];
  v7 = +[PHPhotoLibrary px_deprecated_appPhotoLibrary];
  v8 = [v7 librarySpecificFetchOptions];

  v9 = [NSPredicate predicateWithFormat:@"additionalAttributes.variationSuggestionStates != 0"];
  [v8 setInternalPredicate:v9];

  v10 = [PHAsset fetchAssetsWithOptions:v8];
  if ([v10 count])
  {
    v11 = [v10 photoLibrary];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10002F218;
    v17[3] = &unk_10005C140;
    v12 = v10;
    v18 = v12;
    v16 = 0;
    v13 = [v11 performChangesAndWait:v17 error:&v16];
    v14 = v16;
    if ((v13 & 1) == 0)
    {
      -[PLPhotosApplication failedCurrentTestWithFailure:](self, "failedCurrentTestWithFailure:", @"Unable to reset autoloop suggestion state error:%@ assets:%ld %@", v14, [v12 count], v12);
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (void)runLivePhotoPlaybackTest:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002F42C;
  v3[3] = &unk_10005AD38;
  v3[4] = self;
  [(PLPhotosApplication *)self _navigateToLivePhotosForCurrentTest:v3];
}

- (void)runLivePhotoPlaybackInEditTest:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002F5FC;
  v3[3] = &unk_10005AD10;
  v3[4] = self;
  [(PLPhotosApplication *)self _runPhotoEditTestWithOptions:a3 afterEditOpenedBlock:v3];
}

- (void)runScrollBWAdjustmentTest:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002F8B8;
  v4[3] = &unk_10005ACE8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(PLPhotosApplication *)v5 _runPhotoEditTestWithOptions:v3 afterEditOpenedBlock:v4];
}

- (void)runScrollColorAdjustmentTest:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002FB60;
  v4[3] = &unk_10005ACE8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(PLPhotosApplication *)v5 _runPhotoEditTestWithOptions:v3 afterEditOpenedBlock:v4];
}

- (void)runScrollLightAdjustmentTest:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002FE08;
  v4[3] = &unk_10005ACE8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(PLPhotosApplication *)v5 _runPhotoEditTestWithOptions:v3 afterEditOpenedBlock:v4];
}

- (void)_runSelectedSliderTestForViewController:(id)a3 withOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:@"scrollSteps"];
  v9 = [v8 integerValue];

  v10 = [v7 objectForKeyedSubscript:@"scrollIterations"];
  v11 = [v10 integerValue];

  v12 = [v7 objectForKeyedSubscript:@"targetRate"];
  v13 = [v12 integerValue];

  [v6 ppt_configureSelectedSliderWithSteps:v9];
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v32[3] = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100021094;
  v30 = sub_1000210A4;
  v31 = 0;
  v14 = [NSTimer alloc];
  v15 = v11 * v9;
  v16 = v27[5];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100030264;
  v20[3] = &unk_10005ACC0;
  v23 = &v26;
  v17 = v6;
  v24 = v32;
  v25 = v15;
  v21 = v17;
  v22 = self;
  v18 = [v14 initWithFireDate:v16 interval:1 repeats:v20 block:1.0 / v13];
  v19 = +[NSRunLoop currentRunLoop];
  [v19 addTimer:v18 forMode:kCFRunLoopDefaultMode];

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(v32, 8);
}

- (void)_runPhotoEditTestWithOptions:(id)a3 afterEditOpenedBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v8 = [v6 objectForKeyedSubscript:@"iterations"];
  v9 = [v8 integerValue];

  v14[3] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100030D10;
  v11[3] = &unk_10005AB78;
  v11[4] = self;
  v10 = v7;
  v12 = v10;
  v13 = v14;
  [(PLPhotosApplication *)self _navigateToAssetInOneUpForCurrentTest:v11];

  _Block_object_dispose(v14, 8);
}

- (void)_runLoadOneUpDocumentMenuActionsSubTest:(id)a3
{
  v4 = a3;
  v5 = [(PLPhotosApplication *)self currentTestName];
  [(PLPhotosApplication *)self startedSubTest:@"LoadOneUpDocumentMenuActionsSubTest" forTest:v5];

  v8 = [v4 ppt_barsController];

  v6 = [v8 ppt_documentMenuActions];
  v7 = [(PLPhotosApplication *)self currentTestName];
  [(PLPhotosApplication *)self finishedSubTest:@"LoadOneUpDocumentMenuActionsSubTest" forTest:v7];
}

- (void)runLoadOneUpDocumentMenuTest:(id)a3
{
  v4 = a3;
  [(PLPhotosApplication *)self startedCurrentTest];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000312A8;
  v6[3] = &unk_10005A8D0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(PLPhotosApplication *)self _navigateToAssetInOneUpForCurrentTest:v6];
}

- (void)runScrollShareSheetTestNatural:(id)a3
{
  v4 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100031754;
  block[3] = &unk_10005C140;
  block[4] = self;
  dispatch_after(v4, &_dispatch_main_q, block);
}

- (void)_runSharingTest:(id)a3 withActivityType:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100031858;
  v7[3] = &unk_10005AAB0;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(PLPhotosApplication *)v8 _navigateToAssetInOneUpForCurrentTest:v7];
}

- (void)tearDownSharingTest:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100031F80;
  v5[3] = &unk_10005C190;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [(PLPhotosApplication *)self installCACommitCompletionBlock:v5];
}

- (void)runLoadFullScreenSharingOneUpTest:(id)a3
{
  v4 = a3;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v5 = [v4 objectForKeyedSubscript:@"iterations"];
  v6 = [v5 integerValue];

  v8[3] = v6;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100032194;
  v7[3] = &unk_10005AA10;
  v7[4] = self;
  v7[5] = v8;
  [(PLPhotosApplication *)self _navigateToAssetInOneUpForCurrentTest:v7];
  _Block_object_dispose(v8, 8);
}

- (void)runSkimFullQualityOneUpPhotosTest:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10003248C;
  v3[3] = &unk_10005A888;
  v3[4] = self;
  [(PLPhotosApplication *)self _navigateToAssetInOneUpForCurrentTest:v3];
}

- (void)runScrubOneUpTest:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100032DBC;
  v4[3] = &unk_10005A8D0;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(PLPhotosApplication *)v5 _navigateToAssetInOneUpForCurrentTest:v4];
}

- (void)_runScrubTestWithOneUpViewController:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = [a3 ppt_scrubberView];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 subviews];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v9 delegate];
    [v13 scrollViewWillBeginDragging:v9];

    v14 = [(PLPhotosApplication *)self currentTestName];
    [(PLPhotosApplication *)self ppt_performScrollTest:v14 withOptions:v6 scrollView:v9 scrollAxis:1 completionHandler:0];
  }

  else
  {
    [(PLPhotosApplication *)self failedCurrentTest];
  }
}

- (void)runPageSwipeOneUpTest:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003301C;
  v4[3] = &unk_10005A8D0;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(PLPhotosApplication *)v5 _navigateToAssetInOneUpForCurrentTest:v4];
}

- (void)runScrollOneUpTest:(id)a3
{
  v4 = a3;
  [(PLPhotosApplication *)self _configureLibraryFilterModeWithTestOptions:v4];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000331CC;
  v6[3] = &unk_10005A8D0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(PLPhotosApplication *)self _navigateToAssetInOneUpForCurrentTest:v6];
}

- (void)_runScrollTestWithOneUpViewController:(id)a3 options:(id)a4
{
  v9 = a4;
  v6 = [a3 ppt_mainScrollView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 delegate];
    [v7 scrollViewWillBeginDragging:v6];

    v8 = [(PLPhotosApplication *)self currentTestName];
    [(PLPhotosApplication *)self ppt_performScrollTest:v8 withOptions:v9 scrollView:v6 scrollAxis:1 completionHandler:0];
  }

  else
  {
    [(PLPhotosApplication *)self failedCurrentTest];
  }
}

- (void)_oneUpDetailsTransitionWith:(id)a3 testOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PLPhotosApplication *)self currentTestName];
  if ([PhotosTestingRPTHelper shouldUseRPTScrollingForRPTOptions:v7])
  {
    [v6 ppt_scrollableBoundsForTesting];
    [(PLPhotosApplication *)self ppt_performScrollTest:v8 withOptions:v7 scrollBounds:UIEdgeInsetsZero.left + v9, v10 + 50.0, v11 - (UIEdgeInsetsZero.left + UIEdgeInsetsZero.right), v12 + -220.0];
  }

  else
  {
    v13 = [v7 objectForKeyedSubscript:@"iterations"];
    v14 = [v13 integerValue];

    v15 = [v7 objectForKeyedSubscript:@"iterationDelta"];
    v16 = [v15 integerValue];
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = 750;
    }

    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x2020000000;
    v29[3] = v14;
    v18 = [v6 browsingSession];
    v19 = [v18 viewModel];
    v20 = [v19 assetsDataSource];
    v21 = [v20 isEmpty];

    if (v21)
    {
      [(PLPhotosApplication *)self failedCurrentTest];
    }

    else
    {
      [v6 ppt_toggleAccessoryView];
      v22 = dispatch_time(0, 1000000 * v17);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100033588;
      block[3] = &unk_10005A948;
      v28 = v17;
      v24 = v6;
      v25 = self;
      v26 = v8;
      v27 = v29;
      dispatch_after(v22, &_dispatch_main_q, block);
    }

    _Block_object_dispose(v29, 8);
  }
}

- (void)runOneUpToggleDetailsTest:(id)a3
{
  v4 = a3;
  [(PLPhotosApplication *)self _configureLibraryFilterModeWithTestOptions:v4];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100033AD0;
  v6[3] = &unk_10005A8D0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PLPhotosApplication *)self _navigateToAssetInOneUpPreferLocationAndFace:1 forCurrentTest:v6];
}

- (void)_configureLibraryFilterModeWithTestOptions:(id)a3
{
  v4 = [a3 objectForKey:@"libraryFilterMode"];
  v5 = v4;
  if (v4)
  {
    if ([v4 isEqualToString:@"shared"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"personal") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"all"))
    {
      LibraryFilterViewModeWithSharedLibraryOrPreview = PXPreferencesGetLibraryFilterViewModeWithSharedLibraryOrPreview();
      v7 = [(PLPhotosApplication *)self currentTestName];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100033C28;
      v8[3] = &unk_10005A8A8;
      v8[4] = LibraryFilterViewModeWithSharedLibraryOrPreview;
      [(PLPhotosApplication *)self _addTest:v7 completionHandler:v8];

      PXPreferencesSetLibraryFilterViewModeWithSharedLibraryOrPreview();
    }

    else
    {
      [(PLPhotosApplication *)self failedCurrentTestWithFailure:@"sharedLibraryMode option is invalid: %@", v5];
    }
  }
}

- (void)runShowOneUpDetailsTest:(id)a3
{
  v4 = a3;
  v5 = dispatch_time(0, 1000000000);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100033CFC;
  v7[3] = &unk_10005C190;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_after(v5, &_dispatch_main_q, v7);
}

- (void)startSwitchTabTest:(id)a3
{
  v7 = a3;
  v4 = [(PLPhotosApplication *)self rootViewController];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;

    if (v5)
    {
      v6 = [(PLPhotosApplication *)self currentTestName];
      [v5 ppt_runTabSwitchingTestWithName:v6 options:v7 delegate:self completionHandler:0];

      goto LABEL_7;
    }
  }

  else
  {
  }

  [(PLPhotosApplication *)self failedCurrentTestWithFailure:@"No tab bar controller found"];
  v5 = 0;
LABEL_7:
}

- (id)_oneUpViewControllerForViewController:(id)a3
{
  v3 = [a3 navigationController];
  v4 = [v3 topViewController];

  v5 = [v4 presentedViewController];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 topViewController];
    }

    else
    {
      v6 = v5;
    }

    v7 = v6;

    v4 = v7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)_zoomLevelFromTestDefinitionZoomLevelName:(id)a3
{
  v3 = [a3 lowercaseString];
  v4 = [v3 stringByReplacingOccurrencesOfString:@" " withString:&stru_10005C9B8];

  if ([v4 isEqualToString:@"years"])
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:@"months"])
  {
    v5 = 2;
  }

  else if ([v4 isEqualToString:@"days"])
  {
    v5 = 3;
  }

  else if ([v4 isEqualToString:@"allphotos"])
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)runScrollCuratedLibraryTabTest:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"zoomLevel"];
  v6 = [(PLPhotosApplication *)self _zoomLevelFromTestDefinitionZoomLevelName:v5];
  if (v6)
  {
    v7 = v6;
    [(PLPhotosApplication *)self currentTestName];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100034268;
    v9[3] = &unk_10005A860;
    v12 = v7;
    v10 = v9[4] = self;
    v11 = v4;
    v8 = v10;
    [(PLPhotosApplication *)self _navigateToCuratedLibraryTabForCurrentTest:v9];
  }

  else
  {
    [(PLPhotosApplication *)self failedCurrentTestWithFailure:@"invalid zoomLevel specified in test definition: ”%@”", v5];
  }
}

- (void)runScrollSearchResultsTest:(id)a3
{
  v4 = a3;
  v5 = [PXProgrammaticNavigationDestination alloc];
  v6 = [NSURL URLWithString:@"photos-navigation://search?searchTerm=a"];
  v7 = [v5 initWithURL:v6];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100034558;
  v9[3] = &unk_10005A7D8;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [(PLPhotosApplication *)self _navigateToDestination:v7 completionHandler:v9];
}

- (void)runScrollMessagesStackTest:(id)a3
{
  v4 = a3;
  v5 = +[PHPhotoLibrary px_deprecated_appPhotoLibrary];
  v6 = [v5 librarySpecificFetchOptions];

  v7 = [PHAssetCollection fetchAssetCollectionsWithType:2 subtype:203 options:v6];
  v8 = [v7 firstObject];

  v9 = [PHAsset fetchAssetsInAssetCollection:v8 options:v6];
  v10 = v9;
  if (v8 && [v9 count] >= 0xA)
  {
    LOBYTE(v18) = 0;
    v11 = [PXPhotoKitAssetsDataSourceManager dataSourceManagerForAssetCollection:v8 existingAssetsFetchResult:v10 existingKeyAssetsFetchResult:0 fetchPropertySets:0 basePredicate:0 options:0 ignoreSharedLibraryFilters:v18];
    v12 = [v8 photoLibrary];
    v13 = [PXPhotoKitUIMediaProvider mediaProviderWithLibrary:v12];

    v14 = [[PXMessagesStackBalloonViewController alloc] initWithDataSourceManager:v11 mediaProvider:v13];
    v15 = [(PLPhotosApplication *)self rootViewController];
    v16 = [v15 presentedViewController];

    if (v16)
    {
      [(PLPhotosApplication *)self failedCurrentTestWithFailure:@"There is already a presented view controller in photos"];
    }

    else
    {
      v17 = [(PLPhotosApplication *)self rootViewController];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100034990;
      v19[3] = &unk_10005A698;
      v19[4] = self;
      v20 = v14;
      v21 = v4;
      [v17 presentViewController:v20 animated:1 completion:v19];
    }
  }

  else
  {
    [(PLPhotosApplication *)self failedCurrentTestWithFailure:@"The favorites album must have at least 10 assets"];
  }
}

- (void)runScrollAlbumTest:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100034B34;
  v4[3] = &unk_10005A7D8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(PLPhotosApplication *)v5 _navigateToAlbumForCurrentTest:v4];
}

- (void)runBaselineScrollTest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(sub_10002D934());
  if (v5)
  {
    v6 = [[UINavigationController alloc] initWithRootViewController:v5];
    v7 = [(PLPhotosApplication *)self rootViewController];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100034D40;
    v9[3] = &unk_10005A7B0;
    v9[4] = self;
    v10 = v5;
    v11 = v4;
    v12 = v6;
    v8 = v6;
    [v7 presentViewController:v8 animated:1 completion:v9];
  }

  else
  {
    [(PLPhotosApplication *)self failedCurrentTest];
  }
}

- (void)measureScrollingOfScrollView:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PLPhotosApplication *)self currentTestName];
  v9 = [(PLPhotosApplication *)self currentTestOptions];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100034FD0;
  v12[3] = &unk_10005A738;
  v13 = v8;
  v14 = v6;
  v10 = v6;
  v11 = v8;
  [(PLPhotosApplication *)self ppt_performScrollTest:v11 withOptions:v9 scrollView:v7 completionHandler:v12];
}

- (void)runScrollTestOnScrollView:(id)a3 withOptions:(id)a4 subTestName:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = [(PLPhotosApplication *)self ppt_determineAxisForScrollView:v10 withOptions:v13];
  PXPPTWillBeginScrollTestOnScrollView();
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100035170;
  v17[3] = &unk_10005A738;
  v18 = v10;
  v19 = v11;
  v15 = v11;
  v16 = v10;
  [(PLPhotosApplication *)self ppt_performScrollTest:v12 withOptions:v13 scrollView:v16 scrollAxis:v14 extraResultsBlock:0 completionHandler:v17];
}

- (id)_tungstenViewToTestForViewController:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100021094;
  v14 = sub_1000210A4;
  v15 = 0;
  if ([v4 isViewLoaded])
  {
    v5 = [v4 view];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100035338;
    v9[3] = &unk_10005A710;
    v9[4] = &v10;
    [v5 px_enumerateDescendantSubviewsUsingBlock:v9];
  }

  v6 = v11[5];
  if (!v6)
  {
    [(PLPhotosApplication *)self failedCurrentTestWithFailure:@"Couldn't find a PXGView for view controller %@", v4];
    v6 = v11[5];
  }

  v7 = v6;
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)_scrollViewToTestForViewController:(id)a3
{
  v5 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100021094;
  v25 = sub_1000210A4;
  v26 = [v5 contentScrollView];
  if (!v22[5] && [v5 isViewLoaded])
  {
    v6 = [v5 view];
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    [v6 bounds];
    PXSizeGetArea();
    *&v20[3] = v7 * 0.5;
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v19[3] = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000355E8;
    v12[3] = &unk_10005A6E8;
    v8 = v6;
    v15 = v19;
    v16 = &v21;
    v13 = v8;
    v14 = self;
    v17 = v20;
    v18 = a2;
    [v8 px_enumerateDescendantSubviewsUsingBlock:v12];

    _Block_object_dispose(v19, 8);
    _Block_object_dispose(v20, 8);
  }

  v9 = v22[5];
  if (!v9)
  {
    [(PLPhotosApplication *)self failedCurrentTestWithFailure:@"Couldn't find scroll view for view controller %@", v5];
    v9 = v22[5];
  }

  v10 = v9;
  _Block_object_dispose(&v21, 8);

  return v10;
}

- (void)_navigateToDestination:(id)a3 completionHandler:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000358A8;
  v6[3] = &unk_10005A6C0;
  v6[4] = self;
  v7 = a4;
  v5 = v7;
  [PXPPTNavigationHelper navigateToDestination:a3 options:0 completionHandler:v6];
}

- (unint64_t)_scrollAxisForTestWithOptions:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"scrollAxis"];
  v4 = [v3 isEqualToString:@"horizontal"];

  if (v4)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (int)_scrollTestDelta:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 objectForKey:@"fullScreen"];
  v8 = [v7 intValue];

  if (v8 == 1)
  {
    [v5 frame];
    v10 = v9;
    [v5 frame];
    if (v10 < v11)
    {
      v10 = v11;
    }
  }

  else
  {
    v12 = [v6 objectForKey:@"offset"];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 intValue];
    }

    else
    {
      v14 = 50.0;
    }

    v15 = +[CADisplay mainDisplay];
    [v15 refreshRate];
    v17 = v16;

    v10 = round(v14 * (v17 / 0.0166666667));
  }

  return v10;
}

- (int)_scrollTestLength:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 contentSize];
  v9 = v8;
  [v6 contentSize];
  if (v9 >= v10)
  {
    v10 = v9;
  }

  v11 = v10;
  v12 = [v7 objectForKeyedSubscript:@"fullLength"];
  v13 = [v12 intValue];

  if (v13 != 1)
  {
    v14 = [v7 objectForKeyedSubscript:@"scrollLength"];

    if (v14)
    {
      v15 = [v7 objectForKeyedSubscript:@"scrollLength"];
      v16 = [v15 intValue];
    }

    else
    {
      v16 = fmax([(PLPhotosApplication *)self _scrollTestDelta:v6 options:v7]* 120.0, 10000.0);
    }

    if (v16 < v11)
    {
      v11 = v16;
    }
  }

  return v11;
}

- (int)_iterationsFromTestOptions:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"iterations"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 intValue];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)failedCurrentTestWithFailure:(id)a3
{
  v4 = a3;
  v5 = [[NSString alloc] initWithFormat:v4 arguments:&v7];

  v6 = [(PLPhotosApplication *)self currentTestName];
  [(PLPhotosApplication *)self failedTest:v6 withFailure:v5];
}

- (void)finishedCurrentTestWithExtraResults:(id)a3
{
  v4 = a3;
  v5 = [(PLPhotosApplication *)self currentTestName];
  [(PLPhotosApplication *)self finishedTest:v5 extraResults:v4];
}

- (void)finishedCurrentTest
{
  if (!+[NSThread isMainThread])
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PhotosApplication-Testing.m" lineNumber:662 description:{@"%s must be called on the main thread", "-[PLPhotosApplication(Testing) finishedCurrentTest]"}];
  }

  v4 = [(PLPhotosApplication *)self currentTestName];
  v5 = [PhotosTestingRPTHelper isRPTStyleTestName:v4];

  if ((v5 & 1) == 0)
  {

    [(PLPhotosApplication *)self finishedCurrentTestWithExtraResults:0];
  }
}

- (void)startedCurrentTest
{
  v3 = [(PLPhotosApplication *)self currentTestName];
  if (![PhotosTestingRPTHelper isRPTStyleTestName:?])
  {
    [(PLPhotosApplication *)self startedTest:v3];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (off_100065588 != a6)
  {
    v25.receiver = self;
    v25.super_class = PLPhotosApplication;
    [(PLPhotosApplication *)&v25 observeValueForKeyPath:v11 ofObject:v12 change:v13 context:a6];
    goto LABEL_11;
  }

  v14 = v12;
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }

    v20 = +[NSAssertionHandler currentHandler];
    v23 = objc_opt_class();
    v22 = NSStringFromClass(v23);
    v24 = [v14 px_descriptionForAssertionMessage];
    [v20 handleFailureInMethod:a2 object:self file:@"PhotosApplication-Testing.m" lineNumber:629 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"object", v22, v24}];
  }

  else
  {
    v20 = +[NSAssertionHandler currentHandler];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    [v20 handleFailureInMethod:a2 object:self file:@"PhotosApplication-Testing.m" lineNumber:629 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"object", v22}];
  }

LABEL_5:
  v15 = [v13 objectForKeyedSubscript:NSKeyValueChangeOldKey];
  v16 = [v15 BOOLValue];

  v17 = [v13 objectForKeyedSubscript:NSKeyValueChangeNewKey];
  v18 = [v17 BOOLValue];

  if (v16 && (v18 & 1) == 0)
  {
    [v14 removeObserver:self forKeyPath:@"animating"];
    v19 = objc_getAssociatedObject(self, &off_100065590);
    if (v19)
    {
      objc_setAssociatedObject(self, &off_100065590, 0, 0x303);
      v19[2](v19);
    }
  }

LABEL_11:
}

- (void)failedTest:(id)a3 withFailureFormat:(id)a4
{
  v10 = &v11;
  v6 = a4;
  v7 = a3;
  v8 = [[NSString alloc] initWithFormat:v6 arguments:&v11];

  v9.receiver = self;
  v9.super_class = PLPhotosApplication;
  [(PLPhotosApplication *)&v9 failedTest:v7 withFailure:v8];
  [(PLPhotosApplication *)self _endedTest:v7];
}

- (void)finishedTest:(id)a3 extraResults:(id)a4 waitForNotification:(id)a5 withTeardownBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (qword_100066628)
  {
    (*(qword_100066628 + 16))();
    v14 = qword_100066628;
    qword_100066628 = 0;
  }

  v15 = PLPPTGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(PLPhotosApplication *)self px_firstKeyWindow];
    v17 = [v16 windowScene];
    v18 = sub_100003D58([v17 interfaceOrientation]);
    *buf = 138412546;
    v21 = v10;
    v22 = 2112;
    v23 = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Finished Test:%@ Device Orientation:%@", buf, 0x16u);
  }

  v19.receiver = self;
  v19.super_class = PLPhotosApplication;
  [(PLPhotosApplication *)&v19 finishedTest:v10 extraResults:v11 waitForNotification:v12 withTeardownBlock:v13];
  [(PLPhotosApplication *)self _endedTest:v10];
}

- (void)_endedTest:(id)a3
{
  v6 = a3;
  v4 = [(PLPhotosApplication *)self currentTestName];
  v5 = [v6 isEqualToString:v4];

  if (v5)
  {
    [(PLPhotosApplication *)self setCurrentTestName:0];
    [(PLPhotosApplication *)self setCurrentTestOptions:0];
    [(PLPhotosApplication *)self ppt_endPausingChanges];
    PXPPTDidEndTest();
  }

  [(PLPhotosApplication *)self _callCompletionHandlersForTest:v6];
}

- (void)startedTest:(id)a3
{
  v4 = a3;
  v5 = PLPPTGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PLPhotosApplication *)self px_firstKeyWindow];
    v7 = [v6 windowScene];
    v8 = sub_100003D58([v7 interfaceOrientation]);
    *buf = 138412546;
    v13 = v4;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Started Test:%@ Device Orientation:%@", buf, 0x16u);
  }

  v9 = [v4 lowercaseString];
  v10 = [v9 containsString:@"scroll"];

  if (v10)
  {
    [(PLPhotosApplication *)self ppt_beginPausingChanges];
  }

  PXPPTWillStartTest();
  v11.receiver = self;
  v11.super_class = PLPhotosApplication;
  [(PLPhotosApplication *)&v11 startedTest:v4];
}

- (BOOL)runTest:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:@"parentTestName"];
  if (v8)
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v9 = [(PLPhotosApplication *)self ppt_testDefinitions];
    v10 = [v9 countByEnumeratingWithState:&v61 objects:v65 count:16];
    if (v10)
    {
      v11 = v10;
      v44 = self;
      v45 = v6;
      v12 = *v62;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v62 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v61 + 1) + 8 * i);
          v15 = [v14 objectForKeyedSubscript:{@"testName", v44, v45}];
          v16 = [v15 isEqualToString:v8];

          if (v16)
          {
            v17 = [v14 mutableCopy];
            [v17 addEntriesFromDictionary:v7];

            v7 = v17;
            goto LABEL_12;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v61 objects:v65 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

LABEL_12:
      self = v44;
      v6 = v45;
    }
  }

  v18 = [v7 objectForKeyedSubscript:@"ImageManager"];
  v19 = [v18 isEqualToString:@"neutered"];

  if (v19)
  {
    v20 = +[PHImageManagerSettings sharedSettings];
    v21 = [v20 allowImageRequests];
    v22 = [v20 allowCaching];
    [v20 setAllowImageRequests:0];
    [v20 setAllowCaching:0];
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_100036B08;
    v57[3] = &unk_10005A648;
    v58 = v20;
    v59 = v21;
    v60 = v22;
    v23 = v20;
    [(PLPhotosApplication *)self _addTest:v6 completionHandler:v57];
  }

  v24 = [v7 objectForKeyedSubscript:@"ImageModulation"];
  v25 = [v24 isEqualToString:@"all"];

  if (v25)
  {
    v26 = +[PXImageModulationSettings sharedInstance];
    v27 = [v26 isEnabled];
    v28 = [v26 HDRConsideration];
    [v26 setEnabled:1];
    [v26 setHDRConsideration:1];
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_100036B4C;
    v53[3] = &unk_10005A670;
    v56 = v27;
    v54 = v26;
    v55 = v28;
    v29 = v26;
    [(PLPhotosApplication *)self _addTest:v6 completionHandler:v53];
  }

  v30 = [v6 copy];
  [(PLPhotosApplication *)self setCurrentTestName:v30];

  v31 = [v7 copy];
  [(PLPhotosApplication *)self setCurrentTestOptions:v31];

  v32 = [v7 objectForKeyedSubscript:@"selector"];
  v33 = v32;
  if (v32 && ([v32 isEqualToString:&stru_10005C9B8] & 1) == 0)
  {
    v37 = self;
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100036B8C;
    v49[3] = &unk_10005A698;
    v50 = v33;
    v38 = v37;
    v51 = v38;
    v39 = v7;
    v52 = v39;
    v40 = objc_retainBlock(v49);
    v41 = [v39 objectForKeyedSubscript:@"RequiresImportSource"];
    v42 = [v41 BOOLValue];

    if (v42)
    {
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_100036C4C;
      v47[3] = &unk_10005B350;
      v47[4] = v38;
      v48 = v40;
      [(PLPhotosApplication *)v38 _performBlockWhenImportSourceIsReady:v47];
    }

    else
    {
      [(PLPhotosApplication *)v38 _performTestWithBlock:v40];
    }

    goto LABEL_26;
  }

  v34 = [PhotosTestingRPTHelper gesturePerformerForTestWithName:v6 options:v7];
  v35 = PXPhotosApplicationTryRunningSwiftPPTTest();

  if (v35)
  {
LABEL_26:
    v36 = 1;
    goto LABEL_27;
  }

  v46.receiver = self;
  v46.super_class = PLPhotosApplication;
  v36 = [(PLPhotosApplication *)&v46 runTest:v6 options:v7];
LABEL_27:

  return v36;
}

- (void)_computeFibonnaciNumbersForDuration:(double)a3
{
  v4 = [NSDate dateWithTimeIntervalSinceNow:a3];
  do
  {
    [v4 timeIntervalSinceNow];
  }

  while (v3 > 0.0);
}

- (void)ppt_performScrollTest:(id)a3 withOptions:(id)a4 scrollView:(id)a5 scrollAxis:(unint64_t)a6 extraResultsBlock:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  if (v16)
  {
    if ([PhotosTestingRPTHelper shouldUseRPTScrollingForRPTOptions:v15])
    {
      v71[0] = _NSConcreteStackBlock;
      v71[1] = 3221225472;
      v71[2] = sub_10003720C;
      v71[3] = &unk_10005A580;
      v71[4] = self;
      v19 = v14;
      v72 = v19;
      v20 = v18;
      v73 = v20;
      v21 = objc_retainBlock(v71);
      if (+[PhotosTestingRPTHelper isRPTAvailable])
      {
        v22 = [v16 superview];
        [v16 frame];
        [v22 convertRect:0 toView:?];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;

        [v16 adjustedContentInset];
        v32 = v31 + 60.0;
        v35 = v34 + 20.0;
        v37 = v24 + v35;
        v38 = v26 + v32;
        v39 = v28 - (v35 + v36 + 20.0);
        v40 = v30 - (v32 + v33 + 35.0);
        v69[0] = _NSConcreteStackBlock;
        v69[1] = 3221225472;
        v69[2] = sub_10003726C;
        v69[3] = &unk_10005A5A8;
        v70 = v20;
        [PhotosTestingRPTHelper runTestWithName:v19 RPTOptions:v15 scrollBounds:v69 completionHandler:v37, v38, v39, v40];
      }

      else
      {
        (v21[2])(v21);
      }
    }

    else
    {
      v41 = +[PUPerformanceDiagnosticsSettings sharedInstance];
      [v41 scrollTestCPUWarmupDuration];
      v43 = v42;

      v44 = +[PUPerformanceDiagnosticsSettings sharedInstance];
      [v44 scrollTestCPUSustainDuration];
      v46 = v45;

      if (v43 > 0.0 || v46 > 0.0)
      {
        if (v46 > 0.0)
        {
          v47 = dispatch_get_global_queue(2, 0);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100037288;
          block[3] = &unk_10005A5D0;
          block[4] = self;
          *&block[5] = v43;
          *&block[6] = v46;
          dispatch_async(v47, block);
        }

        [(PLPhotosApplication *)self _computeFibonnaciNumbersForDuration:v43];
      }

      v67[0] = 0;
      v67[1] = v67;
      v67[2] = 0x2020000000;
      v67[3] = 0;
      v48 = +[PUPerformanceDiagnosticsSettings sharedInstance];
      [v48 scrollTestRampUpDuration];
      v50 = v49;

      v51 = dispatch_time(0, (v50 * 1000000000.0));
      v63[0] = _NSConcreteStackBlock;
      v63[1] = 3221225472;
      v63[2] = sub_10003729C;
      v63[3] = &unk_10005A5F8;
      v66 = v67;
      v63[4] = self;
      v64 = @"steady";
      v52 = v14;
      v65 = v52;
      dispatch_after(v51, &_dispatch_main_q, v63);
      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_100037368;
      v59[3] = &unk_10005A5F8;
      v62 = v67;
      v59[4] = self;
      v60 = @"steady";
      v53 = v52;
      v61 = v53;
      [(PLPhotosApplication *)self _installWillFinishTestHandler:v59];
      v54 = [(PLPhotosApplication *)self _iterationsFromTestOptions:v15];
      v55 = [(PLPhotosApplication *)self _scrollTestDelta:v16 options:v15];
      v56 = [(PLPhotosApplication *)self _scrollTestLength:v16 options:v15];
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_1000373B8;
      v57[3] = &unk_10005A620;
      v58 = v18;
      [v16 _performScrollTest:v53 iterations:v54 delta:v55 length:v56 scrollAxis:a6 extraResultsBlock:v17 completionBlock:v57];

      _Block_object_dispose(v67, 8);
    }
  }

  else
  {
    [(PLPhotosApplication *)self failedTest:v14];
    if (v18)
    {
      (*(v18 + 2))(v18, 0, 0);
    }
  }
}

- (void)ppt_performScrollTest:(id)a3 withOptions:(id)a4 scrollBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a3;
  v12 = a4;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100037564;
  v18 = &unk_10005C190;
  v19 = self;
  v13 = v11;
  v20 = v13;
  v14 = objc_retainBlock(&v15);
  if (+[PhotosTestingRPTHelper shouldUseRPTScrollingForRPTOptions:](PhotosTestingRPTHelper, "shouldUseRPTScrollingForRPTOptions:", v12, v15, v16, v17, v18, v19) && +[PhotosTestingRPTHelper isRPTAvailable])
  {
    [PhotosTestingRPTHelper runTestWithName:v13 RPTOptions:v12 scrollBounds:0 completionHandler:x, y, width, height];
  }

  else
  {
    (v14[2])(v14);
  }
}

- (unint64_t)ppt_determineAxisForScrollView:(id)a3 withOptions:(id)a4
{
  v5 = a3;
  v6 = [a4 objectForKeyedSubscript:@"scrollAxis"];
  if ([v6 isEqualToString:@"horizontal"])
  {
    goto LABEL_2;
  }

  if ([v6 isEqualToString:@"vertical"])
  {
    v7 = 2;
    goto LABEL_5;
  }

  if (([v5 alwaysBounceHorizontal] & 1) != 0 || !objc_msgSend(v5, "px_isScrolledAtEdge:", 0))
  {
LABEL_2:
    v7 = 1;
  }

  else if ([v5 px_isScrolledAtEdge:2])
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

LABEL_5:

  return v7;
}

- (void)ppt_performScrollTest:(id)a3 withOptions:(id)a4 gridView:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v12 scrollViewController];
  v15 = [v14 scrollView];

  v16 = +[PXGPPTSettings sharedInstance];
  v17 = [v16 shouldTestNestedScrollView];

  if (v17)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = sub_100021094;
    v33 = sub_1000210A4;
    v34 = 0;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000378A0;
    v26[3] = &unk_10005A530;
    v15 = v15;
    v27 = v15;
    v28 = &v29;
    [v15 px_enumerateDescendantSubviewsUsingBlock:v26];
    v18 = v30[5];
    if (v18)
    {
      v19 = v18;

      v15 = v19;
    }

    else
    {
      [(PLPhotosApplication *)self failedCurrentTestWithFailure:@"No nested scroll view found in %@", v15];
    }

    _Block_object_dispose(&v29, 8);
  }

  v20 = [(PLPhotosApplication *)self ppt_determineAxisForScrollView:v15 withOptions:v11];
  [v12 ppt_prepareForTest:v10 withOptions:v11 isScrollTest:1];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10003799C;
  v23[3] = &unk_10005A558;
  v24 = v12;
  v25 = v10;
  v21 = v12;
  v22 = v10;
  [(PLPhotosApplication *)self ppt_performScrollTest:v22 withOptions:v11 scrollView:v15 scrollAxis:v20 extraResultsBlock:v23 completionHandler:v13];
}

- (void)ppt_endPausingChanges
{
  v3 = objc_getAssociatedObject(self, &unk_100066638);
  if (v3)
  {
    v5 = v3;
    v4 = +[PHPhotoLibrary px_deprecated_appPhotoLibrary];
    [v4 px_endPausingChanges:v5];

    objc_setAssociatedObject(self, &unk_100066638, 0, 0x301);
    v3 = v5;
  }
}

- (void)ppt_beginPausingChanges
{
  v6 = objc_getAssociatedObject(self, &unk_100066638);
  v3 = +[PHPhotoLibrary px_deprecated_appPhotoLibrary];
  v4 = [v3 px_beginPausingChangesWithTimeout:@"PLPhotosApplication (Testing)" identifier:60.0];

  objc_setAssociatedObject(self, &unk_100066638, v4, 0x301);
  if (v6)
  {
    v5 = +[PHPhotoLibrary px_deprecated_appPhotoLibrary];
    [v5 px_endPausingChanges:v6];
  }
}

- (void)_callCompletionHandlersForTest:(id)a3
{
  v3 = a3;
  v4 = [qword_100066630 objectForKeyedSubscript:v3];
  v5 = [v4 copy];

  v6 = [qword_100066630 objectForKeyedSubscript:v3];
  [v6 removeAllObjects];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v12 + 1) + 8 * v11) + 16))(*(*(&v12 + 1) + 8 * v11));
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_addTest:(id)a3 completionHandler:(id)a4
{
  v12 = a3;
  v5 = a4;
  v6 = qword_100066630;
  if (!qword_100066630)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = qword_100066630;
    qword_100066630 = v7;

    v6 = qword_100066630;
  }

  v9 = [v6 objectForKeyedSubscript:v12];
  if (!v9)
  {
    v9 = +[NSMutableArray array];
    [qword_100066630 setObject:v9 forKeyedSubscript:v12];
  }

  v10 = [v5 copy];
  v11 = objc_retainBlock(v10);
  [v9 addObject:v11];
}

- (void)_installWillFinishTestHandler:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100037E3C;
    v7[3] = &unk_10005A508;
    v8 = objc_retainBlock(qword_100066628);
    v9 = v3;
    v4 = v8;
    v5 = [v7 copy];
    v6 = qword_100066628;
    qword_100066628 = v5;
  }
}

- (id)rootViewController
{
  v2 = [(PLPhotosApplication *)self px_firstKeyWindow];
  v3 = [v2 rootViewController];

  return v3;
}

@end