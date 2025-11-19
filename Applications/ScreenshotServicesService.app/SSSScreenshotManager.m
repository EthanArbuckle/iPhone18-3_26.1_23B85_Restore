@interface SSSScreenshotManager
+ (id)sharedScreenshotManager;
+ (void)_createTemporarySavingQueue;
- (BOOL)_areAnyScreenshotsActive;
- (BOOL)_screenshotIsBeingRemoved:(id)a3;
- (BOOL)_screenshotIsBeingSaved:(id)a3;
- (BOOL)_screenshotIsGoingAway:(id)a3;
- (BOOL)processEnvironmentElementMetadataUpdate:(id)a3;
- (BOOL)shouldCaptureDocumentForMetadataUpdate:(id)a3;
- (NSArray)environmentDescriptionIdentifiersBeingTracked;
- (SSSScreenshotManager)init;
- (id)_screenshotWithEnvironmentDescriptionIdentifier:(id)a3;
- (id)_screenshotWithEnvironmentElementWithIdentifier:(id)a3;
- (id)createScreenshotWithEnvironmentDescription:(id)a3;
- (id)description;
- (void)_reevaluateTrackingForScreenshotWithEnvironmentDescriptionIdentifier:(id)a3;
- (void)_trackingChanged;
- (void)addImageIdentifierUpdateObserver:(id)a3;
- (void)beginVIAnalysisForEnvironmentDescription:(id)a3;
- (void)dealloc;
- (void)performIfNoScreenshotsAreActive:(id)a3;
- (void)processEnvironmentElementDocumentUpdate:(id)a3;
- (void)processImageIdentifierUpdate:(id)a3;
- (void)removeScreenshot:(id)a3 deleteOptions:(unint64_t)a4;
- (void)removeTemporaryScreenshotLocation:(id)a3 deleteOptions:(unint64_t)a4;
- (void)saveEditsToScreenshotIfNecessary:(id)a3 inTransition:(BOOL)a4;
- (void)saveScreenshotsToTemporaryLocation:(id)a3 completion:(id)a4;
- (void)screenshotEnteredDragSession:(id)a3;
- (void)screenshotLeftDragSession:(id)a3;
- (void)userInterfaceBecameInterestedInScreenshot:(id)a3;
- (void)userInterfaceStoppedBeingInterestedInScreenshot:(id)a3;
- (void)userInterfaceWillStopBeingInterestedInScreenshot:(id)a3;
@end

@implementation SSSScreenshotManager

- (id)createScreenshotWithEnvironmentDescription:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->_screenshots count];
  if (!v5)
  {
    +[VKCImageAnalyzer prewarmSoftLinkingIfNecessary];
    if (_SSVisualIntelligenceV2Enabled())
    {
      [(SSSScreenshotManager *)self beginVIAnalysisForEnvironmentDescription:v4];
    }
  }

  v6 = [[SSSScreenshot alloc] initWithEnvironmentDescription:v4];
  [(SSSScreenshot *)v6 setIsInitialScreenshot:v5 == 0];
  [(NSMutableArray *)self->_screenshots addObject:v6];

  return v6;
}

- (void)beginVIAnalysisForEnvironmentDescription:(id)a3
{
  v3 = a3;
  v4 = _SSSignpostLog();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyzeScreenshot", "", buf, 2u);
  }

  v5 = os_log_create("com.apple.screenshotservices", "Performance");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "BEGIN AnalyzeScreenshot", buf, 2u);
  }

  v6 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Beginning Environment VI Analysis", buf, 2u);
  }

  v7 = [v3 imageSurface];
  v8 = [v7 backingSurface];
  *buf = 0;
  CVPixelBufferCreateWithIOSurface(0, v8, 0, buf);
  if (*buf)
  {
    v9 = objc_alloc_init(VKCImageAnalyzer);
    +[VKCImageAnalyzer prewarmSoftLinkingIfNecessary];
    v10 = [VKCImageAnalyzerRequest alloc];
    v11 = [v10 initWithCVPixelBuffer:*buf orientation:0 requestType:64];
    v12 = objc_alloc_init(VKCImageAnalyzerRequestVIConfiguration);
    v13 = [NSNumber numberWithBool:_SSVisualLookUpInScreenshotsEnabled()];
    [v12 setIsScreenshotsVLUAuthorized:v13];

    v14 = [v3 currentApplicationBundleID];
    [v12 setEnvironmentBundleIdentifier:v14];

    [v11 setViConfiguration:v12];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100013170;
    v16[3] = &unk_1000BA3C0;
    v17 = v3;
    v18 = v9;
    v15 = v9;
    [v15 processRequest:v11 progressHandler:0 completionHandler:v16];
  }

  else
  {
    v11 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100074090(v11);
    }
  }
}

- (id)_screenshotWithEnvironmentDescriptionIdentifier:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_screenshots;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 environmentDescription];
        v11 = [v10 identifier];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_screenshotWithEnvironmentElementWithIdentifier:(id)a3
{
  v4 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = self->_screenshots;
  v20 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v20)
  {
    v6 = *v27;
    v21 = v5;
    v19 = *v27;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v9 = [v8 environmentDescription];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v10 = [v9 elements];
        v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v23;
          while (2)
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v23 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [*(*(&v22 + 1) + 8 * j) identifier];
              v16 = [v15 isEqualToString:v4];

              if (v16)
              {
                v17 = v8;

                v5 = v21;
                goto LABEL_19;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v5 = v21;
        v6 = v19;
      }

      v17 = 0;
      v20 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v20);
  }

  else
  {
    v17 = 0;
  }

LABEL_19:

  return v17;
}

- (void)processImageIdentifierUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 environmentDescriptionIdentifier];
  v6 = [(SSSScreenshotManager *)self _screenshotWithEnvironmentDescriptionIdentifier:v5];

  if (v6)
  {
    if ([v4 success])
    {
      v7 = [v4 imageIdentifier];
      v8 = [v6 imageProvider];
      [v8 processImageIdentifier:v7];
    }

    else
    {
      v7 = os_log_create("com.apple.screenshotservices", "XPC");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000740D4(v4);
      }
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = self->_imageIdentifierUpdateObservers;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v14 + 1) + 8 * v13) screenshotReceivedImageIdentifierUpdate:{v6, v14}];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v9 = os_log_create("com.apple.screenshotservices", "XPC");
    if (os_log_type_enabled(&v9->super.super, OS_LOG_TYPE_ERROR))
    {
      sub_100074158(v4);
    }
  }
}

- (BOOL)shouldCaptureDocumentForMetadataUpdate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[NSMutableArray array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = self->_screenshots;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          if (![(SSSScreenshotManager *)self _screenshotIsGoingAway:v11, v21])
          {
            [v5 addObject:v11];
          }
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    v12 = [v4 environmentElementIdentifier];
    v13 = [(SSSScreenshotManager *)self _screenshotWithEnvironmentElementWithIdentifier:v12];

    v14 = [(SSSScreenshotManager *)self _screenshotIsBeingRemoved:v13];
    v15 = [v5 indexOfObject:v13];
    v16 = [v4 metadata];
    if (v16)
    {
      v17 = [v4 metadata];
      v18 = [v17 canGenerateDocument];
    }

    else
    {
      v18 = 0;
    }

    v19 = (v15 == 0) & (v14 ^ 1) & v18;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)processEnvironmentElementMetadataUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 environmentElementIdentifier];
  v6 = [(SSSScreenshotManager *)self _screenshotWithEnvironmentElementWithIdentifier:v5];

  if (v6)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [v6 environmentDescription];
    v8 = [v7 elements];

    v9 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v9)
    {
      v20 = self;
      v10 = *v22;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = [v12 identifier];
          v14 = [v4 environmentElementIdentifier];
          v15 = [v13 isEqualToString:v14];

          if (v15)
          {
            v16 = [v4 metadata];
            [v12 setMetadata:v16];

            v9 = [(SSSScreenshotManager *)v20 shouldCaptureDocumentForMetadataUpdate:v4];
            [v6 setIsPDFRequested:v9];
            v25 = @"screenshot";
            v26 = v6;
            v17 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
            v18 = +[NSNotificationCenter defaultCenter];
            [v18 postNotificationName:@"SSSScreenshotManagerDidProcessMetadataUpdate" object:v20 userInfo:v17];

            goto LABEL_15;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v17 = os_log_create("com.apple.screenshotservices", "XPC");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000741DC(v4);
    }

    LOBYTE(v9) = 0;
    v8 = v17;
LABEL_15:
  }

  return v9;
}

- (void)processEnvironmentElementDocumentUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 environmentElementIdentifier];
  v6 = [(SSSScreenshotManager *)self _screenshotWithEnvironmentElementWithIdentifier:v5];

  if (v6)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [v6 environmentDescription];
    v8 = [v7 elements];

    v9 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v20 = self;
      v11 = *v22;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = [v13 identifier];
          v15 = [v4 environmentElementIdentifier];
          v16 = [v14 isEqualToString:v15];

          if (v16)
          {
            v17 = [v4 document];
            [v13 setDocument:v17];

            [v6 _harvestPDFIfNecessary];
            v25 = @"screenshot";
            v26 = v6;
            v18 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
            v19 = +[NSNotificationCenter defaultCenter];
            [v19 postNotificationName:@"SSSScreenshotManagerDidProcessDocumentUpdate" object:v20 userInfo:v18];

            goto LABEL_15;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v18 = os_log_create("com.apple.screenshotservices", "XPC");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100074260(v4);
    }

    v8 = v18;
LABEL_15:
  }
}

- (void)addImageIdentifierUpdateObserver:(id)a3
{
  v4 = a3;
  [(NSMutableArray *)self->_imageIdentifierUpdateObservers addObject:v4];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_screenshots;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [v10 identifier];

        if (v11)
        {
          [v4 screenshotReceivedImageIdentifierUpdate:v10];
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)saveEditsToScreenshotIfNecessary:(id)a3 inTransition:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 hasUnsavedImageEdits])
  {
    v7 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 environmentDescription];
      v9 = [v8 loggableDescription];
      *buf = 138412290;
      v32 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Saving edits to screenshot image with environment description %@", buf, 0xCu);
    }

    v10 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 loggableDescription];
      *buf = 138412290;
      v32 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Screenshot edits saved: %@", buf, 0xCu);
    }

    environmentDescriptionIdentifiersBeingSaved = self->_environmentDescriptionIdentifiersBeingSaved;
    v13 = [v6 environmentDescription];
    v14 = [v13 identifier];
    [(NSMutableArray *)environmentDescriptionIdentifiersBeingSaved addObject:v14];

    [(SSSScreenshotManager *)self _trackingChanged];
    v15 = +[SSScreenshotAssetManager sharedAssetManager];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000143B8;
    v28[3] = &unk_1000BA3E8;
    v29 = v6;
    v30 = self;
    [v15 recordEditsToPersistable:v29 inTransition:v4 withCompletionBlock:v28];
  }

  if ([v6 hasUnsavedPDFEdits])
  {
    v16 = [v6 pdfData];
    if (!v16 || ![v6 canAutosaveToFiles])
    {
LABEL_14:

      goto LABEL_15;
    }

    v17 = [v6 isSavingForMode:1];

    if ((v17 & 1) == 0)
    {
      v18 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v6 environmentDescription];
        v20 = [v19 loggableDescription];
        *buf = 138412290;
        v32 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Saving edits to screenshot pdf with environment description %@", buf, 0xCu);
      }

      v21 = self->_environmentDescriptionIdentifiersBeingSaved;
      v22 = [v6 environmentDescription];
      v23 = [v22 identifier];
      [(NSMutableArray *)v21 addObject:v23];

      [(SSSScreenshotManager *)self _trackingChanged];
      v24 = +[SSScreenshotAssetManager sharedAssetManager];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100014614;
      v25[3] = &unk_1000BA3E8;
      v26 = v6;
      v27 = self;
      [v24 recordEditsToPersistableForPDF:v26 withCompletionBlock:v25];

      v16 = v26;
      goto LABEL_14;
    }
  }

LABEL_15:
}

- (BOOL)_screenshotIsBeingSaved:(id)a3
{
  environmentDescriptionIdentifiersBeingSaved = self->_environmentDescriptionIdentifiersBeingSaved;
  v4 = [a3 environmentDescription];
  v5 = [v4 identifier];
  LOBYTE(environmentDescriptionIdentifiersBeingSaved) = [(NSMutableArray *)environmentDescriptionIdentifiersBeingSaved containsObject:v5];

  return environmentDescriptionIdentifiersBeingSaved;
}

+ (void)_createTemporarySavingQueue
{
  if (qword_1000D49F8 != -1)
  {
    sub_100074384();
  }
}

- (void)saveScreenshotsToTemporaryLocation:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  [objc_opt_class() _createTemporarySavingQueue];
  v7 = qword_1000D49F0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100014A14;
  v10[3] = &unk_1000BA0F8;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

- (void)removeScreenshot:(id)a3 deleteOptions:(unint64_t)a4
{
  v6 = a3;
  if (([(NSMutableArray *)self->_screenshots containsObject:v6]& 1) == 0)
  {
    v7 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100074398(v6);
    }
  }

  v8 = [v6 environmentDescription];
  v9 = [v8 identifier];

  [(NSMutableArray *)self->_environmentDescriptionIdentifiersBeingRemoved addObject:v9];
  [(SSSScreenshotManager *)self _trackingChanged];
  v10 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v6 environmentDescription];
    v12 = [v11 loggableDescription];
    *buf = 134218242;
    v39 = v6;
    v40 = 2112;
    v41 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Removing screenshot: %p, with environment description %@", buf, 0x16u);
  }

  [v6 setIsDeleted:1];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100015414;
  v35[3] = &unk_1000BA4D0;
  v35[4] = self;
  v13 = v9;
  v36 = v13;
  v14 = v6;
  v37 = v14;
  v15 = objc_retainBlock(v35);
  v16 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000155B4;
  block[3] = &unk_1000BA4F8;
  block[4] = self;
  v32 = v13;
  v17 = v14;
  v33 = v17;
  v18 = v15;
  v34 = v18;
  v19 = v13;
  dispatch_after(v16, &_dispatch_main_q, block);
  v20 = [v17 imageProvider];
  v21 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v39 = v20;
    v40 = 2048;
    v41 = v17;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Retain image provider: %p, for screenshot: %p", buf, 0x16u);
  }

  [(NSMutableSet *)self->_imageProvidersPerformingDeletion addObject:v20];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100015694;
  v25[3] = &unk_1000BA570;
  v29 = v18;
  v30 = a4;
  v26 = v17;
  v27 = v20;
  v28 = self;
  v22 = v20;
  v23 = v18;
  v24 = v17;
  [v22 scheduleDeletionBlock:v25];
}

- (void)removeTemporaryScreenshotLocation:(id)a3 deleteOptions:(unint64_t)a4
{
  v6 = a3;
  if (([(NSMutableArray *)self->_screenshots containsObject:v6]& 1) == 0)
  {
    v7 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100074398(v6);
    }
  }

  v8 = [v6 imageProvider];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100015B18;
  v10[3] = &unk_1000BA1B8;
  v11 = v6;
  v12 = a4;
  v9 = v6;
  [v8 scheduleDeletionBlock:v10];
}

- (BOOL)_screenshotIsGoingAway:(id)a3
{
  environmentDescriptionIdentifiersGoingAway = self->_environmentDescriptionIdentifiersGoingAway;
  v4 = [a3 environmentDescription];
  v5 = [v4 identifier];
  LOBYTE(environmentDescriptionIdentifiersGoingAway) = [(NSMutableArray *)environmentDescriptionIdentifiersGoingAway containsObject:v5];

  return environmentDescriptionIdentifiersGoingAway;
}

- (BOOL)_screenshotIsBeingRemoved:(id)a3
{
  environmentDescriptionIdentifiersBeingRemoved = self->_environmentDescriptionIdentifiersBeingRemoved;
  v4 = [a3 environmentDescription];
  v5 = [v4 identifier];
  LOBYTE(environmentDescriptionIdentifiersBeingRemoved) = [(NSMutableArray *)environmentDescriptionIdentifiersBeingRemoved containsObject:v5];

  return environmentDescriptionIdentifiersBeingRemoved;
}

- (BOOL)_areAnyScreenshotsActive
{
  v3 = [(NSMutableArray *)self->_screenshots count];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_screenshots;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v3 -= [(SSSScreenshotManager *)self _screenshotIsBeingRemoved:*(*(&v10 + 1) + 8 * v8), v10];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3 > 0;
}

- (void)userInterfaceBecameInterestedInScreenshot:(id)a3
{
  v4 = [a3 environmentDescription];
  v5 = [v4 identifier];

  [(NSMutableArray *)self->_environmentDescriptionIdentifiersUIIsInterestedIn addObject:v5];
  [(SSSScreenshotManager *)self _trackingChanged];
}

- (void)userInterfaceWillStopBeingInterestedInScreenshot:(id)a3
{
  v4 = [a3 environmentDescription];
  v5 = [v4 identifier];

  [(NSMutableArray *)self->_environmentDescriptionIdentifiersGoingAway addObject:v5];
}

- (void)userInterfaceStoppedBeingInterestedInScreenshot:(id)a3
{
  v4 = [a3 environmentDescription];
  v5 = [v4 identifier];

  [(NSMutableArray *)self->_environmentDescriptionIdentifiersUIIsInterestedIn removeObject:v5];
  [(SSSScreenshotManager *)self _reevaluateTrackingForScreenshotWithEnvironmentDescriptionIdentifier:v5];
}

- (void)screenshotEnteredDragSession:(id)a3
{
  v4 = [a3 environmentDescription];
  v5 = [v4 identifier];

  [(NSMutableArray *)self->_environmentDescriptionIdentifiersInActiveDragSession addObject:v5];
  [(SSSScreenshotManager *)self _trackingChanged];
}

- (void)screenshotLeftDragSession:(id)a3
{
  v4 = [a3 environmentDescription];
  v5 = [v4 identifier];

  [(NSMutableArray *)self->_environmentDescriptionIdentifiersInActiveDragSession removeObject:v5];
  [(SSSScreenshotManager *)self _reevaluateTrackingForScreenshotWithEnvironmentDescriptionIdentifier:v5];
}

- (void)performIfNoScreenshotsAreActive:(id)a3
{
  v4 = a3;
  if (![(SSSScreenshotManager *)self _areAnyScreenshotsActive])
  {
    v4[2]();
  }
}

- (void)_reevaluateTrackingForScreenshotWithEnvironmentDescriptionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SSSScreenshotManager *)self _screenshotWithEnvironmentDescriptionIdentifier:v4];
  v6 = [(NSMutableArray *)self->_environmentDescriptionIdentifiersUIIsInterestedIn containsObject:v4];
  v7 = [(NSMutableArray *)self->_environmentDescriptionIdentifiersInActiveDragSession containsObject:v4];
  v8 = [(NSMutableArray *)self->_environmentDescriptionIdentifiersBeingSaved containsObject:v4];
  v9 = [(NSMutableArray *)self->_environmentDescriptionIdentifiersBeingRemoved containsObject:v4];
  v10 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v5 loggableDescription];
    v18 = 138413314;
    v19 = v11;
    v20 = 1024;
    *v21 = v6;
    *&v21[4] = 1024;
    *&v21[6] = v7;
    v22 = 1024;
    v23 = v8;
    v24 = 1024;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Revaluate tracking screenshot with environment description %@, hasEnvironmentDescriptionIdentifiersUIIsInterestedIn: %{BOOL}d, hasEnvironmentDescriptionIdentifiersInActiveDragSession: %{BOOL}d, hasEnvironmentDescriptionIdentifiersBeingSaved: %{BOOL}d, hasEnvironmentDescriptionIdentifiersBeingRemoved: %{BOOL}d", &v18, 0x24u);
  }

  if (([(NSMutableArray *)self->_environmentDescriptionIdentifiersUIIsInterestedIn containsObject:v4]& 1) == 0 && ([(NSMutableArray *)self->_environmentDescriptionIdentifiersInActiveDragSession containsObject:v4]& 1) == 0 && ([(NSMutableArray *)self->_environmentDescriptionIdentifiersBeingSaved containsObject:v4]& 1) == 0 && ([(NSMutableArray *)self->_environmentDescriptionIdentifiersBeingRemoved containsObject:v4]& 1) == 0)
  {
    v12 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v5 loggableDescription];
      v14 = [(NSMutableArray *)self->_screenshots count];
      v18 = 138412546;
      v19 = v13;
      v20 = 2048;
      *v21 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Stop tracking screenshot with environment description %@, screenshots count: %ld", &v18, 0x16u);
    }

    v15 = [v5 identifier];
    [(NSMutableArray *)self->_environmentDescriptionIdentifiersGoingAway removeObject:v15];
    [(NSMutableArray *)self->_environmentDescriptionIdentifiersBeingRemoved removeObject:v15];
    [(NSMutableArray *)self->_environmentDescriptionIdentifiersBeingSaved removeObject:v15];
    [(NSMutableArray *)self->_screenshots removeObject:v5];
    if (![(NSMutableArray *)self->_screenshots count])
    {
      v16 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "No longer tracking any screenshots - posting notification", &v18, 2u);
      }

      v17 = +[NSNotificationCenter defaultCenter];
      [v17 postNotificationName:@"SSSScreenshotManagerStoppedTrackingScreenshots" object:self];
    }
  }

  [(SSSScreenshotManager *)self _trackingChanged];
}

- (void)_trackingChanged
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"SSSScreenshotManagerTrackingChanged" object:self];
}

- (SSSScreenshotManager)init
{
  v20.receiver = self;
  v20.super_class = SSSScreenshotManager;
  v2 = [(SSSScreenshotManager *)&v20 init];
  v3 = +[NSMutableArray array];
  screenshots = v2->_screenshots;
  v2->_screenshots = v3;

  v5 = +[NSMutableArray array];
  environmentDescriptionIdentifiersUIIsInterestedIn = v2->_environmentDescriptionIdentifiersUIIsInterestedIn;
  v2->_environmentDescriptionIdentifiersUIIsInterestedIn = v5;

  v7 = +[NSMutableArray array];
  environmentDescriptionIdentifiersGoingAway = v2->_environmentDescriptionIdentifiersGoingAway;
  v2->_environmentDescriptionIdentifiersGoingAway = v7;

  v9 = +[NSMutableArray array];
  environmentDescriptionIdentifiersInActiveDragSession = v2->_environmentDescriptionIdentifiersInActiveDragSession;
  v2->_environmentDescriptionIdentifiersInActiveDragSession = v9;

  v11 = +[NSMutableArray array];
  environmentDescriptionIdentifiersBeingRemoved = v2->_environmentDescriptionIdentifiersBeingRemoved;
  v2->_environmentDescriptionIdentifiersBeingRemoved = v11;

  v13 = +[NSMutableArray array];
  environmentDescriptionIdentifiersBeingSaved = v2->_environmentDescriptionIdentifiersBeingSaved;
  v2->_environmentDescriptionIdentifiersBeingSaved = v13;

  v15 = +[NSMutableArray array];
  imageIdentifierUpdateObservers = v2->_imageIdentifierUpdateObservers;
  v2->_imageIdentifierUpdateObservers = v15;

  v17 = +[NSMutableSet set];
  imageProvidersPerformingDeletion = v2->_imageProvidersPerformingDeletion;
  v2->_imageProvidersPerformingDeletion = v17;

  return v2;
}

- (id)description
{
  v3 = +[NSMutableString string];
  v16.receiver = self;
  v16.super_class = SSSScreenshotManager;
  v4 = [(SSSScreenshotManager *)&v16 description];
  [v3 appendString:v4];

  v5 = [(NSMutableArray *)self->_screenshots description];
  v6 = [NSString stringWithFormat:@" screenshots: %@", v5];
  [v3 appendString:v6];

  v7 = [(NSMutableArray *)self->_environmentDescriptionIdentifiersUIIsInterestedIn description];
  v8 = [NSString stringWithFormat:@" environment description identiifers in UI: %@", v7];
  [v3 appendString:v8];

  v9 = [(NSMutableArray *)self->_environmentDescriptionIdentifiersGoingAway description];
  v10 = [NSString stringWithFormat:@" environment description identiifers going away: %@", v9];
  [v3 appendString:v10];

  v11 = [(NSMutableArray *)self->_environmentDescriptionIdentifiersBeingSaved description];
  v12 = [NSString stringWithFormat:@" environment description identiifers being saved: %@", v11];
  [v3 appendString:v12];

  v13 = [(NSMutableArray *)self->_environmentDescriptionIdentifiersBeingRemoved description];
  v14 = [NSString stringWithFormat:@" environment description identiifers being removed: %@", v13];
  [v3 appendString:v14];

  return v3;
}

- (NSArray)environmentDescriptionIdentifiersBeingTracked
{
  v3 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_screenshots;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) environmentDescription];
        v10 = [v9 identifier];
        [v3 addObject:v10];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (id)sharedScreenshotManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016864;
  block[3] = &unk_1000B9FE0;
  block[4] = a1;
  if (qword_1000D4A08 != -1)
  {
    dispatch_once(&qword_1000D4A08, block);
  }

  v2 = qword_1000D4A00;

  return v2;
}

- (void)dealloc
{
  v3 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "dealloc - SSSScreenshotManager: %p", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = SSSScreenshotManager;
  [(SSSScreenshotManager *)&v4 dealloc];
}

@end