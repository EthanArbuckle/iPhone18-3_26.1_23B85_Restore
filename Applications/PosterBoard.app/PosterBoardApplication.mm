@interface PosterBoardApplication
- (BOOL)runTest:(id)test options:(id)options;
- (void)_runScrollPosterGalleryWithTestOptions:(id)options completion:(id)completion;
- (void)_runScrollPosterRackWithTestOptions:(id)options completion:(id)completion;
- (void)_runSwitchPosterWithTestOptions:(id)options completion:(id)completion;
@end

@implementation PosterBoardApplication

- (BOOL)runTest:(id)test options:(id)options
{
  testCopy = test;
  optionsCopy = options;
  v8 = +[PosterBoardTestingUtilities knownPPTTests];
  v9 = [v8 containsObject:testCopy];

  if (v9)
  {
    [(PosterBoardApplication *)self setRunningPPTTestName:testCopy];
    +[PosterBoardTestingUtilities posterRackViewController];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100001ED8;
    v10 = v30[3] = &unk_100010340;
    v31 = v10;
    v11 = objc_retainBlock(v30);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100001EE4;
    v28[3] = &unk_100010368;
    v12 = v10;
    v29 = v12;
    v13 = objc_retainBlock(v28);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100001FD0;
    v24[3] = &unk_1000103F8;
    v25 = &stru_1000103A8;
    v14 = v11;
    v26 = v14;
    v15 = v13;
    v27 = v15;
    v16 = objc_retainBlock(v24);
    if ([testCopy isEqualToString:@"scrollPosterRack"])
    {
      v17 = v23;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v18 = sub_100001FEC;
    }

    else if ([testCopy isEqualToString:@"scrollPosterGallery"])
    {
      v17 = v22;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v18 = sub_100001FFC;
    }

    else
    {
      if (![testCopy isEqualToString:@"switchPoster"])
      {
        v19 = 0;
        goto LABEL_10;
      }

      v17 = v21;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v18 = sub_10000200C;
    }

    v17[2] = v18;
    v17[3] = &unk_100010420;
    v17[4] = self;
    v17[5] = optionsCopy;
    (v16[2])(v16, v17);

    v19 = 1;
LABEL_10:

    goto LABEL_11;
  }

  v19 = 0;
LABEL_11:

  return v19;
}

- (void)_runScrollPosterRackWithTestOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  selfCopy = self;
  runningPPTTestName = [(PosterBoardApplication *)self runningPPTTestName];
  v6 = [optionsCopy objectForKey:@"minNumberOfPostersInSwitcher"];
  v7 = v6;
  if (!v6)
  {
    v6 = &off_100010E80;
  }

  unsignedIntegerValue = [v6 unsignedIntegerValue];

  v9 = [optionsCopy objectForKey:@"maxNumberOfPostersInSwitcher"];
  v10 = v9;
  if (!v9)
  {
    v9 = &off_100010E98;
  }

  unsignedIntegerValue2 = [v9 unsignedIntegerValue];

  v11 = +[PosterBoardTestingUtilities posterRackViewController];
  posterExtensionDataStore = [v11 posterExtensionDataStore];
  switcherConfiguration = [posterExtensionDataStore switcherConfiguration];
  configurations = [switcherConfiguration configurations];
  v15 = [configurations count];

  v37 = objc_opt_new();
  v16 = objc_opt_new();
  v17 = +[PBFPPTOperation operationToResetSwitcher];
  [v16 addObject:v17];

  v18 = +[PBFPPTOperation operationToPushInToPosterSwitcher];
  [v16 addObject:v18];

  v19 = [PBFPPTOperation operationToFetchDynamicDescriptorsForProvider:@"com.apple.PosterTester.SamplePoster"];
  [v16 addObject:v19];

  v32 = v15;
  if (unsignedIntegerValue >= v15)
  {
    v20 = unsignedIntegerValue - v15;
  }

  else
  {
    v20 = 0;
  }

  if (unsignedIntegerValue > v15)
  {
    v21 = 0;
    do
    {
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_100002468;
      v46[3] = &unk_100010448;
      v47 = v37;
      v22 = [PBFPPTOperation operationToAddPosterWithProvider:@"com.apple.PosterTester.SamplePoster" descriptorIdentifier:@"red" completion:v46];
      [v16 addObject:v22];

      ++v21;
    }

    while (v21 < v20);
  }

  v23 = [PBFPPTOperation operationToWaitForTimeInterval:5.0, v32];
  [v16 addObject:v23];

  v24 = [PBFPPTOperation operationToScrollToFirstPoster:0];
  [v16 addObject:v24];

  v25 = [PBFPPTOperation operationToStartTest:runningPPTTestName];
  [v16 addObject:v25];

  v26 = [PBFPPTOperation operationToWaitForTimeInterval:5.0];
  [v16 addObject:v26];

  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000024E8;
  v40[3] = &unk_100010498;
  v41 = runningPPTTestName;
  v42 = selfCopy;
  v27 = v37;
  v43 = v27;
  v44 = v33;
  v45 = unsignedIntegerValue2;
  v28 = runningPPTTestName;
  v29 = [PBFPPTBlockOperation operationWithName:@"scrollPosterRack" block:v40];
  [v16 addObject:v29];

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10000274C;
  v38[3] = &unk_1000104C0;
  v39 = v27;
  v30 = v27;
  v31 = [PBFPPTOperation operationToDeletePosters:v38];
  [v16 addObject:v31];

  [PBFPPTOperation enqueueOperations:v16];
}

- (void)_runScrollPosterGalleryWithTestOptions:(id)options completion:(id)completion
{
  v4 = [(PosterBoardApplication *)self runningPPTTestName:options];
  v5 = objc_opt_new();
  v6 = +[PBFPPTOperation operationToResetSwitcher];
  [v5 addObject:v6];

  v7 = +[PBFPPTOperation operationToPushInToPosterSwitcher];
  [v5 addObject:v7];

  v8 = [PBFPPTOperation operationToScrollToFirstPoster:0];
  [v5 addObject:v8];

  v9 = [PBFPPTOperation operationToWaitForTimeInterval:5.0];
  [v5 addObject:v9];

  v10 = [PBFPPTOperation operationToStartTest:v4];
  [v5 addObject:v10];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100002954;
  v13[3] = &unk_100010538;
  v14 = v4;
  v11 = v4;
  v12 = [PBFPPTBlockOperation operationWithName:@"presentAndScrollPosterGallery" block:v13];
  [v5 addObject:v12];

  [PBFPPTOperation enqueueOperations:v5];
}

- (void)_runSwitchPosterWithTestOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  runningPPTTestName = [(PosterBoardApplication *)self runningPPTTestName];
  v7 = objc_opt_new();
  v8 = [optionsCopy objectForKeyedSubscript:@"testPosterProvider"];
  v9 = v8;
  v10 = @"com.apple.PosterTester.SamplePoster";
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = [optionsCopy objectForKeyedSubscript:@"testPosterProviderDescriptorIdentifier"];

  v13 = @"red";
  if (v12)
  {
    v13 = v12;
  }

  v14 = v13;

  v15 = objc_opt_new();
  v16 = [PBFPPTBlockOperation operationWithName:@"selectLastPoster" block:&stru_100010578];
  [v15 addObject:v16];

  v17 = [PBFPPTOperation operationToFetchDynamicDescriptorsForProvider:v11];
  [v15 addObject:v17];

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10000313C;
  v38[3] = &unk_100010448;
  v18 = v7;
  v39 = v18;
  v19 = [PBFPPTOperation operationToAddPosterWithProvider:v11 descriptorIdentifier:v14 completion:v38];

  [v15 addObject:v19];
  v20 = +[PBFPPTOperation operationToResetSwitcher];
  [v15 addObject:v20];

  v21 = [PBFPPTOperation operationToWaitForTimeInterval:5.0];
  [v15 addObject:v21];

  v22 = +[PBFPPTOperation operationToPushInToPosterSwitcher];
  [v15 addObject:v22];

  v23 = [PBFPPTOperation operationToWaitForTimeInterval:1.0];
  [v15 addObject:v23];

  v24 = [PBFPPTOperation operationToStartTest:runningPPTTestName];
  [v15 addObject:v24];

  v25 = PBFPPTEventActionsToSwipeLeftInMiddleOfInterface();
  v26 = [PBFPPTOperation operationToSynthesizeEventsForEventActions:v25];
  [v15 addObject:v26];

  v27 = [PBFPPTOperation operationToWaitForTimeInterval:1.0];
  [v15 addObject:v27];

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000031BC;
  v36[3] = &unk_100010538;
  v37 = runningPPTTestName;
  v28 = runningPPTTestName;
  v29 = [PBFPPTBlockOperation operationWithName:@"selectedPoster" block:v36];
  [v15 addObject:v29];

  v30 = [PBFPPTOperation operationToWaitForTimeInterval:2.0];
  [v15 addObject:v30];

  v31 = [PBFPPTOperation operationToFinishTest:v28];
  [v15 addObject:v31];

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100003320;
  v34[3] = &unk_1000104C0;
  v35 = v18;
  v32 = v18;
  v33 = [PBFPPTOperation operationToDeletePosters:v34];
  [v15 addObject:v33];

  [PBFPPTOperation enqueueOperations:v15];
}

@end