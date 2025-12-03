@interface FRArticleNotificationService
- (BOOL)supportsHandling:(id)handling;
- (FRArticleNotificationService)init;
- (id)cachesDirectory;
- (id)notificationAttachmentsWithThumbnailFileURL:(id)l publisherLogoFileURL:(id)rL publisherLogoMaskFileURL:(id)uRL publisherLogoCompactFileURL:(id)fileURL isKettleDigestEnabled:(BOOL)enabled;
- (void)didReceive:(id)receive withContentHandler:(id)handler;
- (void)finalizeContent:(id)content;
- (void)processDidReceiveSingleArticleNotificationRequest:(id)request withContentHandler:(id)handler;
- (void)serviceExtensionTimeWillExpire;
@end

@implementation FRArticleNotificationService

- (FRArticleNotificationService)init
{
  v13.receiver = self;
  v13.super_class = FRArticleNotificationService;
  v2 = [(FRArticleNotificationService *)&v13 init];
  if (v2)
  {
    v3 = [[FRArticleNotificationFeedPersonalizerFactory alloc] initWithTranslationProvider:0];
    v4 = FCURLForAppConfigurationMirror();
    v5 = +[FCAppleAccount sharedAccount];
    supportedContentStoreFrontID = [v5 supportedContentStoreFrontID];

    v7 = [[FCFileCoordinatedAppConfigurationManager alloc] initWithFileURL:v4 storefrontID:supportedContentStoreFrontID];
    v8 = [[FRArticleNotificationPersonalizer alloc] initWithAppConfigurationManager:v7 feedPersonalizerFactory:v3];
    personalizer = v2->_personalizer;
    v2->_personalizer = v8;

    v10 = objc_alloc_init(FRArticleNotificationPostProcessingCoordinator);
    postProcessCoordinator = v2->_postProcessCoordinator;
    v2->_postProcessCoordinator = v10;
  }

  return v2;
}

- (BOOL)supportsHandling:(id)handling
{
  content = [handling content];
  userInfo = [content userInfo];
  v5 = [userInfo objectForKeyedSubscript:FCNotificationPayloadApsKey];

  v6 = [v5 objectForKeyedSubscript:FCNotificationPayloadCategoryKey];
  LOBYTE(userInfo) = [v6 isEqualToString:FCNotificationArticleCategory];

  return userInfo;
}

- (void)didReceive:(id)receive withContentHandler:(id)handler
{
  receiveCopy = receive;
  handlerCopy = handler;
  v8 = objc_alloc_init(FRArticleNotificationServiceArticleSource);
  [(FRArticleNotificationService *)self setArticleSource:v8];

  [(FRArticleNotificationService *)self setContentHandler:handlerCopy];
  content = [receiveCopy content];
  v10 = [content mutableCopy];
  [(FRArticleNotificationService *)self setBestAttemptContent:v10];

  content2 = [receiveCopy content];
  userInfo = [content2 userInfo];
  v13 = [userInfo mutableCopy];

  v14 = [v13 objectForKeyedSubscript:FCNotificationPayloadApsKey];
  v15 = [v14 mutableCopy];

  v16 = [v15 objectForKeyedSubscript:FCNotificationPayloadCategoryKey];
  v17 = [v16 isEqualToString:FCNotificationArticleCategory];
  v18 = FRArticleNotificationServiceSharedLog();
  v19 = v18;
  if (v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "extension-article category notification received.", &v20, 2u);
    }

    [(FRArticleNotificationService *)self processDidReceiveSingleArticleNotificationRequest:receiveCopy withContentHandler:handlerCopy];
  }

  else
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = 138412290;
      v21 = v16;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "FRArticleNotificationService cannot preprocess a notification of this category: %@", &v20, 0xCu);
    }
  }
}

- (void)processDidReceiveSingleArticleNotificationRequest:(id)request withContentHandler:(id)handler
{
  requestCopy = request;
  content = [requestCopy content];
  userInfo = [content userInfo];

  v42 = userInfo;
  v7 = [userInfo objectForKeyedSubscript:FCNotificationPayloadNewsKey];
  v41 = +[UNUserNotificationCenter currentNotificationCenter];
  notificationSettings = [v41 notificationSettings];
  scheduledDeliverySetting = [notificationSettings scheduledDeliverySetting];
  v40 = scheduledDeliverySetting == 2;
  v10 = [v7 objectForKeyedSubscript:FCNotificationPayloadNotificationBehaviorFlagsKey];
  intValue = [v10 intValue];

  v12 = NewsCoreUserDefaults();
  v13 = [v12 BOOLForKey:@"notificationEnableAssetPrefetching"];
  v14 = [v12 BOOLForKey:@"notificationAssetPrefetchingRequiresWatch"];
  v15 = +[NRPairedDeviceRegistry sharedInstance];
  isPaired = [v15 isPaired];

  v17 = intValue & 1;
  v18 = FRArticleNotificationServiceSharedLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 67110144;
    *v53 = v13;
    *&v53[4] = 1024;
    *&v53[6] = v14;
    LOWORD(v54) = 1024;
    *(&v54 + 2) = scheduledDeliverySetting == 2;
    HIWORD(v54) = 1024;
    *v55 = v17;
    *&v55[4] = 1024;
    *&v55[6] = isPaired;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "isAssetPrefetchingEnabled=%d, doesAssetPrefetchingRequireWatch=%d, isKettleDigestEnabled=%d, isBehaviorFlagSetToDisableFetchingKettleImage=%d, doesDeviceHaveWatchPaired=%d", buf, 0x20u);
  }

  v19 = FRArticleNotificationServiceSharedLog();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
  if (scheduledDeliverySetting != 2)
  {
    if (v20)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Running Kettle-disabled logic to determine whether to fetch assets.", buf, 2u);
    }

    if ((v13 & 1) == 0)
    {
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_100004680;
      v49[3] = &unk_100024D08;
      v49[4] = self;
      sub_100004680(v49);
      goto LABEL_40;
    }

    if (!(isPaired & 1 | ((v14 & 1) == 0)))
    {
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_100004710;
      v48[3] = &unk_100024D08;
      v48[4] = self;
      sub_100004710(v48);
      goto LABEL_40;
    }

    v23 = FRArticleNotificationServiceSharedLog();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v24 = "Continuing with prefetch since device does have watch paired or that check is not required by config";
    goto LABEL_26;
  }

  if (v20)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Running Kettle-enabled logic to determine whether to fetch assets.", buf, 2u);
  }

  if (v17)
  {
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100004560;
    v51[3] = &unk_100024D08;
    v51[4] = self;
    sub_100004560(v51);
    goto LABEL_40;
  }

  if ([notificationSettings timeSensitiveSetting] == 2)
  {
    content2 = [requestCopy content];
    v22 = [content2 interruptionLevel] == 2;
  }

  else
  {
    v22 = 0;
  }

  if ([notificationSettings criticalAlertSetting] == 2)
  {
    content3 = [requestCopy content];
    v26 = [content3 interruptionLevel] == 3;
  }

  else
  {
    v26 = 0;
  }

  if (v26 || v22)
  {
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_1000045F0;
    v50[3] = &unk_100024D08;
    v50[4] = self;
    sub_1000045F0(v50);
    goto LABEL_40;
  }

  v23 = FRArticleNotificationServiceSharedLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v24 = "Continuing with kettle image prefetch";
LABEL_26:
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, v24, buf, 2u);
  }

LABEL_27:

  v27 = [v7 objectForKeyedSubscript:FCNotificationPayloadThumbnailURLKey];
  v28 = [v7 objectForKeyedSubscript:FCNotificationPayloadPublisherLogoURLKey];
  v39 = [v7 objectForKeyedSubscript:FCNotificationPayloadPublisherLogoMaskURLKey];
  v29 = [v7 objectForKeyedSubscript:FCNotificationPayloadPublisherLogoCompactURLKey];
  v38 = [v7 objectForKeyedSubscript:FCNotificationPayloadFlintDocumentAssetURLKey];
  cachesDirectory = [(FRArticleNotificationService *)self cachesDirectory];
  v31 = FRArticleNotificationServiceSharedLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    absoluteString = [cachesDirectory absoluteString];
    *buf = 138413314;
    *v53 = v27;
    *&v53[8] = 2112;
    v54 = v28;
    *v55 = 2112;
    *&v55[2] = v39;
    v56 = 2112;
    v57 = v29;
    v58 = 2112;
    v59 = absoluteString;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Fetching the thumbnail and publisherLogo using the provided URLs, thumbnailURL: %@, publisherLogoURL: %@, publisherLogoMaskURLString: %@, publisherLogoCompactURL: %@, cachesDirectory: %@", buf, 0x34u);
  }

  if (cachesDirectory && (v27 || v28 || v29))
  {
    v35 = FRArticleNotificationServiceSharedLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      articleSource = [(FRArticleNotificationService *)self articleSource];
      *buf = 138412290;
      *v53 = articleSource;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Using article source %@", buf, 0xCu);
    }

    articleSource2 = [(FRArticleNotificationService *)self articleSource];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1000047A0;
    v44[3] = &unk_100024D30;
    v44[4] = self;
    v47 = v40;
    v45 = v7;
    v46 = v42;
    [articleSource2 fetchAssetsWithCachesDirectory:cachesDirectory thumbnailURLString:v27 publisherLogoURLString:v28 publisherLogoMaskURLString:v39 publisherLogoCompactURLString:v29 flintDocumentURLString:v38 completion:v44];
  }

  else
  {
    v33 = FRArticleNotificationServiceSharedLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Skipping prefetch since thumbnailURLString, publisherLogoURLString & publisherLogoCompactURLString are all nil.", buf, 2u);
    }

    bestAttemptContent = [(FRArticleNotificationService *)self bestAttemptContent];
    [(FRArticleNotificationService *)self finalizeContent:bestAttemptContent];
  }

LABEL_40:
}

- (id)notificationAttachmentsWithThumbnailFileURL:(id)l publisherLogoFileURL:(id)rL publisherLogoMaskFileURL:(id)uRL publisherLogoCompactFileURL:(id)fileURL isKettleDigestEnabled:(BOOL)enabled
{
  lCopy = l;
  rLCopy = rL;
  fileURLCopy = fileURL;
  v13 = +[NSMutableArray array];
  v14 = &_s13NewsAnalytics24NotificationSettingsDataV6tagIDsSaySSGvg_ptr;
  if (lCopy)
  {
    v35 = UNNotificationAttachmentOptionsTypeHintKey;
    v36 = kUTTypeJPEG;
    v15 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    if (!enabled)
    {
      v33[0] = UNNotificationAttachmentOptionsTypeHintKey;
      v33[1] = UNNotificationAttachmentOptionsThumbnailHiddenKey;
      v34[0] = kUTTypeJPEG;
      v34[1] = &__kCFBooleanTrue;
      v16 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];

      v15 = v16;
    }

    v14 = &_s13NewsAnalytics24NotificationSettingsDataV6tagIDsSaySSGvg_ptr;
    v28 = 0;
    v17 = [UNNotificationAttachment attachmentWithIdentifier:@"thumbnail-attachment" URL:lCopy options:v15 error:&v28];
    v18 = v28;
    if (v17)
    {
      [v13 addObject:v17];
      v19 = FRArticleNotificationServiceSharedLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v32 = lCopy;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Added an attachment for the thumbnail. %@", buf, 0xCu);
      }

      v14 = &_s13NewsAnalytics24NotificationSettingsDataV6tagIDsSaySSGvg_ptr;
    }
  }

  if (fileURLCopy)
  {
    v29[0] = UNNotificationAttachmentOptionsTypeHintKey;
    v29[1] = UNNotificationAttachmentOptionsThumbnailHiddenKey;
    v30[0] = kUTTypePNG;
    v30[1] = &__kCFBooleanTrue;
    v20 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
    v21 = v14[294];
    v27 = 0;
    v22 = [v21 attachmentWithIdentifier:@"publisherLogoCompact-attachment" URL:fileURLCopy options:v20 error:&v27];
    v23 = v27;
    if (v22)
    {
      [v13 addObject:v22];
      v24 = FRArticleNotificationServiceSharedLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v32 = rLCopy;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Added an attachment for the publisher COMPACT logo. %@", buf, 0xCu);
      }
    }
  }

  v25 = [v13 copy];

  return v25;
}

- (id)cachesDirectory
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.news"];

  v4 = [v3 URLByAppendingPathComponent:@"Notifications"];
  path = [v4 path];
  v6 = FRArticleNotificationServiceSharedLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v20 = path;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Using cache directory at %@", buf, 0xCu);
  }

  v7 = +[NSFileManager defaultManager];
  v8 = [v7 fileExistsAtPath:path];

  if ((v8 & 1) == 0)
  {
    v9 = +[NSFileManager defaultManager];
    v18 = 0;
    v10 = [v9 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v18];
    v11 = v18;

    v12 = FRArticleNotificationServiceSharedLog();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v10)
    {
      if (v13)
      {
        *buf = 138412290;
        v20 = path;
        v14 = "Created cache directory at %@";
        v15 = v12;
        v16 = 12;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, v14, buf, v16);
      }
    }

    else if (v13)
    {
      *buf = 138412546;
      v20 = path;
      v21 = 2112;
      v22 = v11;
      v14 = "Failed to create directory at %@ due to %@";
      v15 = v12;
      v16 = 22;
      goto LABEL_9;
    }
  }

  return v4;
}

- (void)serviceExtensionTimeWillExpire
{
  v3 = FRArticleNotificationServiceSharedLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "The operation took too long, serviceExtensionTimeWillExpire was called", v6, 2u);
  }

  contentHandler = [(FRArticleNotificationService *)self contentHandler];
  bestAttemptContent = [(FRArticleNotificationService *)self bestAttemptContent];
  (contentHandler)[2](contentHandler, bestAttemptContent);
}

- (void)finalizeContent:(id)content
{
  contentCopy = content;
  v5 = [contentCopy mutableCopy];
  [(FRArticleNotificationService *)self setBestAttemptContent:v5];

  userInfo = [contentCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:FCNotificationPayloadNewsKey];

  v8 = [[FCNotificationArticleHeadline alloc] initWithArticlePayload:v7 sourceChannel:0 assetManager:0];
  if (!v8)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10000529C;
    v23[3] = &unk_100024D58;
    v23[4] = self;
    v24 = contentCopy;
    sub_10000529C(v23);
    v13 = v24;
    goto LABEL_5;
  }

  v9 = [v7 objectForKeyedSubscript:FCNotificationPayloadNotificationBehaviorFlagsKey];
  intValue = [v9 intValue];

  if ((intValue & 2) == 0)
  {
    personalizer = [(FRArticleNotificationService *)self personalizer];
    v25 = v8;
    v12 = [NSArray arrayWithObjects:&v25 count:1];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100005418;
    v18[3] = &unk_100024D80;
    v19 = v8;
    selfCopy = self;
    [personalizer sortItems:v12 completion:v18];

    v13 = v19;
LABEL_5:

    goto LABEL_9;
  }

  v14 = FRArticleNotificationServiceSharedLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Skipping personalizer to assign highest score.", buf, 2u);
  }

  bestAttemptContent = [(FRArticleNotificationService *)self bestAttemptContent];
  [bestAttemptContent setRelevanceScore:1.0];

  postProcessCoordinator = [(FRArticleNotificationService *)self postProcessCoordinator];
  bestAttemptContent2 = [(FRArticleNotificationService *)self bestAttemptContent];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000532C;
  v21[3] = &unk_100024D08;
  v21[4] = self;
  [postProcessCoordinator notificationArrived:bestAttemptContent2 completionHandler:v21];

LABEL_9:
}

@end