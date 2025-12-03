@interface AudioAccessoryAssetManagementClientXPCConnection
- (BOOL)_entitledAndReturnError:(id *)error;
- (BOOL)_isLanguageSuggested:(id)suggested;
- (BOOL)_requestedAssetsDownloaded;
- (id)_averageOfArray:(id)array;
- (id)_getAAAssetManagementFBundle;
- (void)_invalidateAssetManagementNotification;
- (void)_monitorAssetsDownloadProgressWithObservations:(id)observations completion:(id)completion;
- (void)_postProgressUpdate:(unint64_t)update totalCount:(unint64_t)count;
- (void)_registerLaunchHandlerWithCompletion:(id)completion;
- (void)_showAssetManagementNotification;
- (void)_showProgressBanner:(id)banner totalCount:(id)count;
- (void)_submitBackgroundTask;
- (void)getTranslationAssets:(id)assets;
- (void)getTranslationAssetsDownloadSize:(id)size localeIdentifiers:(id)identifiers completion:(id)completion;
- (void)xpcConnectionInvalidated;
@end

@implementation AudioAccessoryAssetManagementClientXPCConnection

- (BOOL)_entitledAndReturnError:(id *)error
{
  if (self->_entitled)
  {
    return 1;
  }

  p_xpcCnx = &self->_xpcCnx;
  v7 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"com.apple.AudioAccessoryAssetManagement"];
  v8 = [v7 isEqual:&__kCFBooleanTrue];

  v9 = [(NSXPCConnection *)*p_xpcCnx cuValueForEntitlementNoCache:@"com.apple.developer.AudioAccessoryAssetManagement-access"];
  v10 = [v9 isEqual:&__kCFBooleanTrue];

  if ((v8 & 1) != 0 || v10)
  {
    result = 1;
    self->_entitled = 1;
  }

  else
  {
    if (dword_100010D38 > 90)
    {
      goto LABEL_11;
    }

    if (dword_100010D38 != -1 || _LogCategory_Initialize())
    {
      sub_1000041AC(p_xpcCnx);
    }

    if (dword_100010D38 <= 90 && (dword_100010D38 != -1 || _LogCategory_Initialize()))
    {
      sub_1000041FC(p_xpcCnx);
      if (error)
      {
        goto LABEL_12;
      }
    }

    else
    {
LABEL_11:
      if (error)
      {
LABEL_12:
        v11 = NSErrorF();
        v12 = v11;
        result = 0;
        *error = v11;
        return result;
      }
    }

    return 0;
  }

  return result;
}

- (void)xpcConnectionInvalidated
{
  languageStatus = self->_languageStatus;
  self->_languageStatus = 0;

  prevLocalesRequestedForDownload = self->_prevLocalesRequestedForDownload;
  self->_prevLocalesRequestedForDownload = 0;

  localesRequestedForDownload = self->_localesRequestedForDownload;
  self->_localesRequestedForDownload = 0;

  localesDownloadStatus = self->_localesDownloadStatus;
  self->_localesDownloadStatus = 0;

  artificialUpdateTimer = self->_artificialUpdateTimer;
  if (artificialUpdateTimer)
  {
    v8 = artificialUpdateTimer;
    dispatch_source_cancel(v8);
    v9 = self->_artificialUpdateTimer;
    self->_artificialUpdateTimer = 0;
  }

  self->_backgroundTaskAlreadyRunning = 0;
  processingTask = self->_processingTask;
  self->_processingTask = 0;

  progress = self->_progress;
  self->_progress = 0;

  *&self->_registeredLaunchHandler = 0;
  v15 = self->_audioAccessoryAssetManagementClient;
  audioAccessoryAssetManagementClient = self->_audioAccessoryAssetManagementClient;
  self->_audioAccessoryAssetManagementClient = 0;

  v13 = v15;
  if (v15)
  {
    if (dword_100010D38 <= 30)
    {
      if (dword_100010D38 != -1 || (v14 = _LogCategory_Initialize(), v13 = v15, v14))
      {
        sub_10000424C();
        v13 = v15;
      }
    }

    [(AudioAccessoryAssetManagementClient *)v13 invalidate];
  }

  _objc_release_x1();
}

- (id)_averageOfArray:(id)array
{
  arrayCopy = array;
  v4 = 0.0;
  v5 = [NSNumber numberWithDouble:0.0];
  if ([arrayCopy count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = arrayCopy;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v15 + 1) + 8 * v10) doubleValue];
          v4 = v4 + v11 * 100.0;
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v12 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v4 / [v6 count]);

    v5 = v12;
  }

  v13 = v5;

  return v5;
}

- (void)getTranslationAssetsDownloadSize:(id)size localeIdentifiers:(id)identifiers completion:(id)completion
{
  sizeCopy = size;
  identifiersCopy = identifiers;
  completionCopy = completion;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  if (identifiersCopy)
  {
    v11 = [_LTLanguageStatus alloc];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100001DB4;
    v15[3] = &unk_10000C380;
    v16 = identifiersCopy;
    v18 = &v19;
    v17 = completionCopy;
    v12 = [v11 initWithTaskHint:1 useDedicatedMachPort:0 observations:v15];
    languageStatus = self->_languageStatus;
    self->_languageStatus = v12;

    v14 = v16;
  }

  else
  {
    v14 = NSErrorF();
    (*(completionCopy + 2))(completionCopy, v14, v20[3]);
  }

  _Block_object_dispose(&v19, 8);
}

- (void)getTranslationAssets:(id)assets
{
  assetsCopy = assets;
  if (dword_100010D38 <= 30 && (dword_100010D38 != -1 || _LogCategory_Initialize()))
  {
    sub_100004430();
  }

  languageStatus = self->_languageStatus;
  if (languageStatus)
  {
    self->_languageStatus = 0;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100002068;
  v8[3] = &unk_10000C3E8;
  v8[4] = self;
  v6 = [[_LTLanguageStatus alloc] initWithTaskHint:10 useDedicatedMachPort:0 observations:v8];
  v7 = self->_languageStatus;
  self->_languageStatus = v6;
}

- (BOOL)_isLanguageSuggested:(id)suggested
{
  v3 = [suggested stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
  +[NSLocale preferredLanguages];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([v3 isEqualToString:{*(*(&v9 + 1) + 8 * i), v9}])
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (id)_getAAAssetManagementFBundle
{
  v2 = [NSURL fileURLWithPath:@"/System/Library/PrivateFrameworks/AudioAccessoryAssetManagement.framework"];
  v3 = [NSBundle bundleWithURL:v2];

  return v3;
}

- (void)_invalidateAssetManagementNotification
{
  uiNotificationAssetManagement = self->_uiNotificationAssetManagement;
  if (uiNotificationAssetManagement)
  {
    [(CUUserNotificationSession *)uiNotificationAssetManagement invalidate];
    v4 = self->_uiNotificationAssetManagement;
    self->_uiNotificationAssetManagement = 0;
  }
}

- (void)_monitorAssetsDownloadProgressWithObservations:(id)observations completion:(id)completion
{
  observationsCopy = observations;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000026B8;
  block[3] = &unk_10000C438;
  v12 = observationsCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = observationsCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_registerLaunchHandlerWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[BGTaskScheduler sharedScheduler];
  taskIdentifier = self->_taskIdentifier;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100002BDC;
  v9[3] = &unk_10000C4B0;
  v9[4] = self;
  v7 = completionCopy;
  v10 = v7;
  LOBYTE(completionCopy) = [v5 registerForTaskWithIdentifier:taskIdentifier usingQueue:0 launchHandler:v9];

  if ((completionCopy & 1) == 0)
  {
    v8 = NSErrorF();
    (*(v7 + 2))(v7, v8);
  }
}

- (BOOL)_requestedAssetsDownloaded
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  localesRequestedForDownload = self->_localesRequestedForDownload;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000335C;
  v7[3] = &unk_10000C4D8;
  v7[4] = self;
  v7[5] = &v8;
  [(NSMutableArray *)localesRequestedForDownload enumerateObjectsUsingBlock:v7];
  if (*(v9 + 24) == 1)
  {
    v4 = self->_localesRequestedForDownload;
    self->_localesRequestedForDownload = 0;

    v5 = *(v9 + 24);
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v5 & 1;
}

- (void)_showAssetManagementNotification
{
  if (self->_uiNotificationAssetManagement)
  {
    [(AudioAccessoryAssetManagementClientXPCConnection *)self _invalidateAssetManagementNotification];
  }

  _getAAAssetManagementFBundle = [(AudioAccessoryAssetManagementClientXPCConnection *)self _getAAAssetManagementFBundle];
  v4 = objc_alloc_init(CUUserNotificationSession);
  uiNotificationAssetManagement = self->_uiNotificationAssetManagement;
  self->_uiNotificationAssetManagement = v4;

  [(CUUserNotificationSession *)v4 setBundleID:@"com.apple.AssetManagementUserNotification"];
  [(CUUserNotificationSession *)v4 setCategoryID:@"AssetManagementUserNotification"];
  [(CUUserNotificationSession *)v4 setDispatchQueue:self->_dispatchQueue];
  [(CUUserNotificationSession *)v4 setFlags:17];
  [(CUUserNotificationSession *)v4 setLabel:@"AssetManagement"];
  if (dword_100010D38 <= 30 && (dword_100010D38 != -1 || _LogCategory_Initialize()))
  {
    sub_100004714(self);
  }

  v6 = CULocalizedStringEx();
  [(CUUserNotificationSession *)v4 setBodyKey:v6];

  v7 = CULocalizedStringEx();
  [(CUUserNotificationSession *)v4 setTitleKey:v7];

  [(CUUserNotificationSession *)v4 setIconAppIdentifier:@"com.apple.Translate"];
  [(CUUserNotificationSession *)v4 removeAllActions];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000359C;
  v8[3] = &unk_10000C500;
  v8[4] = v4;
  v8[5] = self;
  [(CUUserNotificationSession *)v4 setActionHandler:v8];
  [(CUUserNotificationSession *)v4 activate];
}

- (void)_postProgressUpdate:(unint64_t)update totalCount:(unint64_t)count
{
  if (dword_100010D38 <= 30 && (dword_100010D38 != -1 || _LogCategory_Initialize()))
  {
    sub_1000047B8();
  }

  artificialUpdateTimer = self->_artificialUpdateTimer;
  if (artificialUpdateTimer)
  {
    v8 = artificialUpdateTimer;
    dispatch_source_cancel(v8);
    v9 = self->_artificialUpdateTimer;
    self->_artificialUpdateTimer = 0;
  }

  maxCompleteDownloadUnits = self->_maxCompleteDownloadUnits;
  if (maxCompleteDownloadUnits >= update)
  {
    v12 = maxCompleteDownloadUnits + 1;
    self->_maxCompleteDownloadUnits = v12;
    if (dword_100010D38 > 30)
    {
      goto LABEL_17;
    }

    if (dword_100010D38 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_17;
      }

      v12 = self->_maxCompleteDownloadUnits;
    }

    updateCopy3 = update;
    v19 = v12;
    goto LABEL_13;
  }

  self->_maxCompleteDownloadUnits = update;
  if (dword_100010D38 > 30)
  {
    goto LABEL_17;
  }

  updateCopy2 = update;
  if (dword_100010D38 != -1)
  {
    goto LABEL_9;
  }

  if (_LogCategory_Initialize())
  {
    updateCopy2 = self->_maxCompleteDownloadUnits;
LABEL_9:
    updateCopy3 = update;
    v19 = updateCopy2;
LABEL_13:
    LogPrintF();
  }

LABEL_17:
  [(NSProgress *)self->_progress setCompletedUnitCount:self->_maxCompleteDownloadUnits, updateCopy3, v19];
  [(NSProgress *)self->_progress setUserInfoObject:0 forKey:@"HideProgressCircleInUI"];
  [(_BGContinuedProcessingTask *)self->_processingTask updateProgress:self->_progress];
  if (count != update)
  {
    v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    v14 = self->_artificialUpdateTimer;
    self->_artificialUpdateTimer = v13;

    v15 = self->_artificialUpdateTimer;
    v16 = dispatch_time(0, 25000000000);
    dispatch_source_set_timer(v15, v16, 0xFFFFFFFFFFFFFFFFLL, 0);
    v17 = self->_artificialUpdateTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000038E4;
    handler[3] = &unk_10000C528;
    handler[4] = self;
    handler[5] = update;
    handler[6] = count;
    dispatch_source_set_event_handler(v17, handler);
    dispatch_resume(self->_artificialUpdateTimer);
  }
}

- (void)_showProgressBanner:(id)banner totalCount:(id)count
{
  countCopy = count;
  bannerCopy = banner;
  integerValue = [countCopy integerValue];
  integerValue2 = [bannerCopy integerValue];

  v9 = integerValue2 / 100.0;
  _getAAAssetManagementFBundle = [(AudioAccessoryAssetManagementClientXPCConnection *)self _getAAAssetManagementFBundle];
  if (self->_downloadRequestedLanguagesCount <= 1u)
  {
    v13 = CULocalizedStringEx();
    v11 = [NSString stringWithFormat:v13, self->_downloadRequestedLanguages];
  }

  else
  {
    v11 = CULocalizedStringEx();
  }

  *&v12 = v9 * integerValue;
  v14 = [NSNumber numberWithFloat:v12];
  v15 = objc_alloc_init(NSByteCountFormatter);
  v16 = [v15 stringFromByteCount:{objc_msgSend(v14, "longLongValue")}];
  v17 = [v15 stringFromByteCount:{objc_msgSend(countCopy, "longLongValue")}];
  v18 = CULocalizedStringEx();
  v19 = [NSString stringWithFormat:v18, v16, v17];

  objc_storeStrong(&self->_bannerTitle, v11);
  objc_storeStrong(&self->_bannerSubtitle, v19);
  if (self->_processingTask && self->_shouldRunProcessingTask)
  {
    p_progress = &self->_progress;
    progress = self->_progress;
    if (progress)
    {
      [(NSProgress *)progress setTotalUnitCount:integerValue];
    }

    else
    {
      v22 = [NSProgress progressWithTotalUnitCount:integerValue];
      v23 = *p_progress;
      *p_progress = v22;
    }

    [*p_progress setCompletedUnitCount:{objc_msgSend(v14, "integerValue")}];
    [*p_progress setUserInfoObject:0 forKey:@"HideProgressCircleInUI"];
    if (dword_100010D38 <= 30 && (dword_100010D38 != -1 || _LogCategory_Initialize()))
    {
      sub_100004814(&self->_bannerTitle, &self->_bannerSubtitle, &self->_progress);
    }

    [(_BGContinuedProcessingTask *)self->_processingTask updateTitle:self->_bannerTitle withReason:self->_bannerSubtitle];
    -[AudioAccessoryAssetManagementClientXPCConnection _postProgressUpdate:totalCount:](self, "_postProgressUpdate:totalCount:", [v14 integerValue], objc_msgSend(countCopy, "integerValue"));
  }
}

- (void)_submitBackgroundTask
{
  if (dword_100010D38 <= 90 && (dword_100010D38 != -1 || _LogCategory_Initialize()))
  {
    sub_1000048A0(self);
  }

  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v4 = [v3 applicationIsInstalled:@"com.apple.Translate"];

  if (v4)
  {
    v5 = @"com.apple.Translate";
  }

  else
  {
    v5 = @"com.apple.Preferences";
  }

  if (dword_100010D38 <= 30 && (dword_100010D38 != -1 || _LogCategory_Initialize()))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v14 = v5;
    LogPrintF();
  }

  v6 = [[_BGContinuedProcessingTaskRequest alloc] initWithIdentifier:self->_taskIdentifier iconBundleIdentifier:@"com.apple.Translate" onBehalfOf:self->_bundleIdentifier linkToBundleIdentifier:v5];
  _getAAAssetManagementFBundle = [(AudioAccessoryAssetManagementClientXPCConnection *)self _getAAAssetManagementFBundle];
  if (self->_downloadRequestedLanguagesCount > 1u)
  {
    v9 = CULocalizedStringEx();
  }

  else
  {
    v8 = CULocalizedStringEx();
    v9 = [NSString stringWithFormat:v8, self->_downloadRequestedLanguages];
  }

  [v6 setTitle:{v9, bundleIdentifier, v14}];
  [v6 setReason:&stru_10000C898];
  v10 = +[BGTaskScheduler sharedScheduler];
  v15 = 0;
  v11 = [v10 submitTaskRequest:v6 error:&v15];
  v12 = v15;

  if (v11)
  {
    if (dword_100010D38 <= 30 && (dword_100010D38 != -1 || _LogCategory_Initialize()))
    {
      sub_10000493C();
    }
  }

  else if (dword_100010D38 <= 90 && (dword_100010D38 != -1 || _LogCategory_Initialize()))
  {
    sub_1000048E4(v12);
  }
}

@end