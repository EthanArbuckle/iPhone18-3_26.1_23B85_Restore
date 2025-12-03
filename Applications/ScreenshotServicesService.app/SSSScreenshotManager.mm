@interface SSSScreenshotManager
+ (id)sharedScreenshotManager;
+ (void)_createTemporarySavingQueue;
- (BOOL)_areAnyScreenshotsActive;
- (BOOL)_screenshotIsBeingRemoved:(id)removed;
- (BOOL)_screenshotIsBeingSaved:(id)saved;
- (BOOL)_screenshotIsGoingAway:(id)away;
- (BOOL)processEnvironmentElementMetadataUpdate:(id)update;
- (BOOL)shouldCaptureDocumentForMetadataUpdate:(id)update;
- (NSArray)environmentDescriptionIdentifiersBeingTracked;
- (SSSScreenshotManager)init;
- (id)_screenshotWithEnvironmentDescriptionIdentifier:(id)identifier;
- (id)_screenshotWithEnvironmentElementWithIdentifier:(id)identifier;
- (id)createScreenshotWithEnvironmentDescription:(id)description;
- (id)description;
- (void)_reevaluateTrackingForScreenshotWithEnvironmentDescriptionIdentifier:(id)identifier;
- (void)_trackingChanged;
- (void)addImageIdentifierUpdateObserver:(id)observer;
- (void)beginVIAnalysisForEnvironmentDescription:(id)description;
- (void)dealloc;
- (void)performIfNoScreenshotsAreActive:(id)active;
- (void)processEnvironmentElementDocumentUpdate:(id)update;
- (void)processImageIdentifierUpdate:(id)update;
- (void)removeScreenshot:(id)screenshot deleteOptions:(unint64_t)options;
- (void)removeTemporaryScreenshotLocation:(id)location deleteOptions:(unint64_t)options;
- (void)saveEditsToScreenshotIfNecessary:(id)necessary inTransition:(BOOL)transition;
- (void)saveScreenshotsToTemporaryLocation:(id)location completion:(id)completion;
- (void)screenshotEnteredDragSession:(id)session;
- (void)screenshotLeftDragSession:(id)session;
- (void)userInterfaceBecameInterestedInScreenshot:(id)screenshot;
- (void)userInterfaceStoppedBeingInterestedInScreenshot:(id)screenshot;
- (void)userInterfaceWillStopBeingInterestedInScreenshot:(id)screenshot;
@end

@implementation SSSScreenshotManager

- (id)createScreenshotWithEnvironmentDescription:(id)description
{
  descriptionCopy = description;
  v5 = [(NSMutableArray *)self->_screenshots count];
  if (!v5)
  {
    +[VKCImageAnalyzer prewarmSoftLinkingIfNecessary];
    if (_SSVisualIntelligenceV2Enabled())
    {
      [(SSSScreenshotManager *)self beginVIAnalysisForEnvironmentDescription:descriptionCopy];
    }
  }

  v6 = [[SSSScreenshot alloc] initWithEnvironmentDescription:descriptionCopy];
  [(SSSScreenshot *)v6 setIsInitialScreenshot:v5 == 0];
  [(NSMutableArray *)self->_screenshots addObject:v6];

  return v6;
}

- (void)beginVIAnalysisForEnvironmentDescription:(id)description
{
  descriptionCopy = description;
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

  imageSurface = [descriptionCopy imageSurface];
  backingSurface = [imageSurface backingSurface];
  *buf = 0;
  CVPixelBufferCreateWithIOSurface(0, backingSurface, 0, buf);
  if (*buf)
  {
    v9 = objc_alloc_init(VKCImageAnalyzer);
    +[VKCImageAnalyzer prewarmSoftLinkingIfNecessary];
    v10 = [VKCImageAnalyzerRequest alloc];
    v11 = [v10 initWithCVPixelBuffer:*buf orientation:0 requestType:64];
    v12 = objc_alloc_init(VKCImageAnalyzerRequestVIConfiguration);
    v13 = [NSNumber numberWithBool:_SSVisualLookUpInScreenshotsEnabled()];
    [v12 setIsScreenshotsVLUAuthorized:v13];

    currentApplicationBundleID = [descriptionCopy currentApplicationBundleID];
    [v12 setEnvironmentBundleIdentifier:currentApplicationBundleID];

    [v11 setViConfiguration:v12];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100013170;
    v16[3] = &unk_1000BA3C0;
    v17 = descriptionCopy;
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

- (id)_screenshotWithEnvironmentDescriptionIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
        environmentDescription = [v9 environmentDescription];
        identifier = [environmentDescription identifier];
        v12 = [identifier isEqualToString:identifierCopy];

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

- (id)_screenshotWithEnvironmentElementWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
        environmentDescription = [v8 environmentDescription];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        elements = [environmentDescription elements];
        v11 = [elements countByEnumeratingWithState:&v22 objects:v30 count:16];
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
                objc_enumerationMutation(elements);
              }

              identifier = [*(*(&v22 + 1) + 8 * j) identifier];
              v16 = [identifier isEqualToString:identifierCopy];

              if (v16)
              {
                v17 = v8;

                v5 = v21;
                goto LABEL_19;
              }
            }

            v12 = [elements countByEnumeratingWithState:&v22 objects:v30 count:16];
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

- (void)processImageIdentifierUpdate:(id)update
{
  updateCopy = update;
  environmentDescriptionIdentifier = [updateCopy environmentDescriptionIdentifier];
  v6 = [(SSSScreenshotManager *)self _screenshotWithEnvironmentDescriptionIdentifier:environmentDescriptionIdentifier];

  if (v6)
  {
    if ([updateCopy success])
    {
      imageIdentifier = [updateCopy imageIdentifier];
      imageProvider = [v6 imageProvider];
      [imageProvider processImageIdentifier:imageIdentifier];
    }

    else
    {
      imageIdentifier = os_log_create("com.apple.screenshotservices", "XPC");
      if (os_log_type_enabled(imageIdentifier, OS_LOG_TYPE_ERROR))
      {
        sub_1000740D4(updateCopy);
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
      sub_100074158(updateCopy);
    }
  }
}

- (BOOL)shouldCaptureDocumentForMetadataUpdate:(id)update
{
  updateCopy = update;
  if (updateCopy)
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

    environmentElementIdentifier = [updateCopy environmentElementIdentifier];
    v13 = [(SSSScreenshotManager *)self _screenshotWithEnvironmentElementWithIdentifier:environmentElementIdentifier];

    v14 = [(SSSScreenshotManager *)self _screenshotIsBeingRemoved:v13];
    v15 = [v5 indexOfObject:v13];
    metadata = [updateCopy metadata];
    if (metadata)
    {
      metadata2 = [updateCopy metadata];
      canGenerateDocument = [metadata2 canGenerateDocument];
    }

    else
    {
      canGenerateDocument = 0;
    }

    v19 = (v15 == 0) & (v14 ^ 1) & canGenerateDocument;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)processEnvironmentElementMetadataUpdate:(id)update
{
  updateCopy = update;
  environmentElementIdentifier = [updateCopy environmentElementIdentifier];
  v6 = [(SSSScreenshotManager *)self _screenshotWithEnvironmentElementWithIdentifier:environmentElementIdentifier];

  if (v6)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    environmentDescription = [v6 environmentDescription];
    elements = [environmentDescription elements];

    v9 = [elements countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v9)
    {
      selfCopy = self;
      v10 = *v22;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(elements);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          identifier = [v12 identifier];
          environmentElementIdentifier2 = [updateCopy environmentElementIdentifier];
          v15 = [identifier isEqualToString:environmentElementIdentifier2];

          if (v15)
          {
            metadata = [updateCopy metadata];
            [v12 setMetadata:metadata];

            v9 = [(SSSScreenshotManager *)selfCopy shouldCaptureDocumentForMetadataUpdate:updateCopy];
            [v6 setIsPDFRequested:v9];
            v25 = @"screenshot";
            v26 = v6;
            v17 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
            v18 = +[NSNotificationCenter defaultCenter];
            [v18 postNotificationName:@"SSSScreenshotManagerDidProcessMetadataUpdate" object:selfCopy userInfo:v17];

            goto LABEL_15;
          }
        }

        v9 = [elements countByEnumeratingWithState:&v21 objects:v27 count:16];
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
      sub_1000741DC(updateCopy);
    }

    LOBYTE(v9) = 0;
    elements = v17;
LABEL_15:
  }

  return v9;
}

- (void)processEnvironmentElementDocumentUpdate:(id)update
{
  updateCopy = update;
  environmentElementIdentifier = [updateCopy environmentElementIdentifier];
  v6 = [(SSSScreenshotManager *)self _screenshotWithEnvironmentElementWithIdentifier:environmentElementIdentifier];

  if (v6)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    environmentDescription = [v6 environmentDescription];
    elements = [environmentDescription elements];

    v9 = [elements countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      selfCopy = self;
      v11 = *v22;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(elements);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          identifier = [v13 identifier];
          environmentElementIdentifier2 = [updateCopy environmentElementIdentifier];
          v16 = [identifier isEqualToString:environmentElementIdentifier2];

          if (v16)
          {
            document = [updateCopy document];
            [v13 setDocument:document];

            [v6 _harvestPDFIfNecessary];
            v25 = @"screenshot";
            v26 = v6;
            v18 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
            v19 = +[NSNotificationCenter defaultCenter];
            [v19 postNotificationName:@"SSSScreenshotManagerDidProcessDocumentUpdate" object:selfCopy userInfo:v18];

            goto LABEL_15;
          }
        }

        v10 = [elements countByEnumeratingWithState:&v21 objects:v27 count:16];
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
      sub_100074260(updateCopy);
    }

    elements = v18;
LABEL_15:
  }
}

- (void)addImageIdentifierUpdateObserver:(id)observer
{
  observerCopy = observer;
  [(NSMutableArray *)self->_imageIdentifierUpdateObservers addObject:observerCopy];
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
        identifier = [v10 identifier];

        if (identifier)
        {
          [observerCopy screenshotReceivedImageIdentifierUpdate:v10];
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)saveEditsToScreenshotIfNecessary:(id)necessary inTransition:(BOOL)transition
{
  transitionCopy = transition;
  necessaryCopy = necessary;
  if ([necessaryCopy hasUnsavedImageEdits])
  {
    v7 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      environmentDescription = [necessaryCopy environmentDescription];
      loggableDescription = [environmentDescription loggableDescription];
      *buf = 138412290;
      v32 = loggableDescription;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Saving edits to screenshot image with environment description %@", buf, 0xCu);
    }

    v10 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      loggableDescription2 = [necessaryCopy loggableDescription];
      *buf = 138412290;
      v32 = loggableDescription2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Screenshot edits saved: %@", buf, 0xCu);
    }

    environmentDescriptionIdentifiersBeingSaved = self->_environmentDescriptionIdentifiersBeingSaved;
    environmentDescription2 = [necessaryCopy environmentDescription];
    identifier = [environmentDescription2 identifier];
    [(NSMutableArray *)environmentDescriptionIdentifiersBeingSaved addObject:identifier];

    [(SSSScreenshotManager *)self _trackingChanged];
    v15 = +[SSScreenshotAssetManager sharedAssetManager];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000143B8;
    v28[3] = &unk_1000BA3E8;
    v29 = necessaryCopy;
    selfCopy = self;
    [v15 recordEditsToPersistable:v29 inTransition:transitionCopy withCompletionBlock:v28];
  }

  if ([necessaryCopy hasUnsavedPDFEdits])
  {
    pdfData = [necessaryCopy pdfData];
    if (!pdfData || ![necessaryCopy canAutosaveToFiles])
    {
LABEL_14:

      goto LABEL_15;
    }

    v17 = [necessaryCopy isSavingForMode:1];

    if ((v17 & 1) == 0)
    {
      v18 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        environmentDescription3 = [necessaryCopy environmentDescription];
        loggableDescription3 = [environmentDescription3 loggableDescription];
        *buf = 138412290;
        v32 = loggableDescription3;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Saving edits to screenshot pdf with environment description %@", buf, 0xCu);
      }

      v21 = self->_environmentDescriptionIdentifiersBeingSaved;
      environmentDescription4 = [necessaryCopy environmentDescription];
      identifier2 = [environmentDescription4 identifier];
      [(NSMutableArray *)v21 addObject:identifier2];

      [(SSSScreenshotManager *)self _trackingChanged];
      v24 = +[SSScreenshotAssetManager sharedAssetManager];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100014614;
      v25[3] = &unk_1000BA3E8;
      v26 = necessaryCopy;
      selfCopy2 = self;
      [v24 recordEditsToPersistableForPDF:v26 withCompletionBlock:v25];

      pdfData = v26;
      goto LABEL_14;
    }
  }

LABEL_15:
}

- (BOOL)_screenshotIsBeingSaved:(id)saved
{
  environmentDescriptionIdentifiersBeingSaved = self->_environmentDescriptionIdentifiersBeingSaved;
  environmentDescription = [saved environmentDescription];
  identifier = [environmentDescription identifier];
  LOBYTE(environmentDescriptionIdentifiersBeingSaved) = [(NSMutableArray *)environmentDescriptionIdentifiersBeingSaved containsObject:identifier];

  return environmentDescriptionIdentifiersBeingSaved;
}

+ (void)_createTemporarySavingQueue
{
  if (qword_1000D49F8 != -1)
  {
    sub_100074384();
  }
}

- (void)saveScreenshotsToTemporaryLocation:(id)location completion:(id)completion
{
  locationCopy = location;
  completionCopy = completion;
  [objc_opt_class() _createTemporarySavingQueue];
  v7 = qword_1000D49F0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100014A14;
  v10[3] = &unk_1000BA0F8;
  v11 = locationCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = locationCopy;
  dispatch_async(v7, v10);
}

- (void)removeScreenshot:(id)screenshot deleteOptions:(unint64_t)options
{
  screenshotCopy = screenshot;
  if (([(NSMutableArray *)self->_screenshots containsObject:screenshotCopy]& 1) == 0)
  {
    v7 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100074398(screenshotCopy);
    }
  }

  environmentDescription = [screenshotCopy environmentDescription];
  identifier = [environmentDescription identifier];

  [(NSMutableArray *)self->_environmentDescriptionIdentifiersBeingRemoved addObject:identifier];
  [(SSSScreenshotManager *)self _trackingChanged];
  v10 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    environmentDescription2 = [screenshotCopy environmentDescription];
    loggableDescription = [environmentDescription2 loggableDescription];
    *buf = 134218242;
    v39 = screenshotCopy;
    v40 = 2112;
    v41 = loggableDescription;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Removing screenshot: %p, with environment description %@", buf, 0x16u);
  }

  [screenshotCopy setIsDeleted:1];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100015414;
  v35[3] = &unk_1000BA4D0;
  v35[4] = self;
  v13 = identifier;
  v36 = v13;
  v14 = screenshotCopy;
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
  imageProvider = [v17 imageProvider];
  v21 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v39 = imageProvider;
    v40 = 2048;
    v41 = v17;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Retain image provider: %p, for screenshot: %p", buf, 0x16u);
  }

  [(NSMutableSet *)self->_imageProvidersPerformingDeletion addObject:imageProvider];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100015694;
  v25[3] = &unk_1000BA570;
  v29 = v18;
  optionsCopy = options;
  v26 = v17;
  v27 = imageProvider;
  selfCopy = self;
  v22 = imageProvider;
  v23 = v18;
  v24 = v17;
  [v22 scheduleDeletionBlock:v25];
}

- (void)removeTemporaryScreenshotLocation:(id)location deleteOptions:(unint64_t)options
{
  locationCopy = location;
  if (([(NSMutableArray *)self->_screenshots containsObject:locationCopy]& 1) == 0)
  {
    v7 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100074398(locationCopy);
    }
  }

  imageProvider = [locationCopy imageProvider];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100015B18;
  v10[3] = &unk_1000BA1B8;
  v11 = locationCopy;
  optionsCopy = options;
  v9 = locationCopy;
  [imageProvider scheduleDeletionBlock:v10];
}

- (BOOL)_screenshotIsGoingAway:(id)away
{
  environmentDescriptionIdentifiersGoingAway = self->_environmentDescriptionIdentifiersGoingAway;
  environmentDescription = [away environmentDescription];
  identifier = [environmentDescription identifier];
  LOBYTE(environmentDescriptionIdentifiersGoingAway) = [(NSMutableArray *)environmentDescriptionIdentifiersGoingAway containsObject:identifier];

  return environmentDescriptionIdentifiersGoingAway;
}

- (BOOL)_screenshotIsBeingRemoved:(id)removed
{
  environmentDescriptionIdentifiersBeingRemoved = self->_environmentDescriptionIdentifiersBeingRemoved;
  environmentDescription = [removed environmentDescription];
  identifier = [environmentDescription identifier];
  LOBYTE(environmentDescriptionIdentifiersBeingRemoved) = [(NSMutableArray *)environmentDescriptionIdentifiersBeingRemoved containsObject:identifier];

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

- (void)userInterfaceBecameInterestedInScreenshot:(id)screenshot
{
  environmentDescription = [screenshot environmentDescription];
  identifier = [environmentDescription identifier];

  [(NSMutableArray *)self->_environmentDescriptionIdentifiersUIIsInterestedIn addObject:identifier];
  [(SSSScreenshotManager *)self _trackingChanged];
}

- (void)userInterfaceWillStopBeingInterestedInScreenshot:(id)screenshot
{
  environmentDescription = [screenshot environmentDescription];
  identifier = [environmentDescription identifier];

  [(NSMutableArray *)self->_environmentDescriptionIdentifiersGoingAway addObject:identifier];
}

- (void)userInterfaceStoppedBeingInterestedInScreenshot:(id)screenshot
{
  environmentDescription = [screenshot environmentDescription];
  identifier = [environmentDescription identifier];

  [(NSMutableArray *)self->_environmentDescriptionIdentifiersUIIsInterestedIn removeObject:identifier];
  [(SSSScreenshotManager *)self _reevaluateTrackingForScreenshotWithEnvironmentDescriptionIdentifier:identifier];
}

- (void)screenshotEnteredDragSession:(id)session
{
  environmentDescription = [session environmentDescription];
  identifier = [environmentDescription identifier];

  [(NSMutableArray *)self->_environmentDescriptionIdentifiersInActiveDragSession addObject:identifier];
  [(SSSScreenshotManager *)self _trackingChanged];
}

- (void)screenshotLeftDragSession:(id)session
{
  environmentDescription = [session environmentDescription];
  identifier = [environmentDescription identifier];

  [(NSMutableArray *)self->_environmentDescriptionIdentifiersInActiveDragSession removeObject:identifier];
  [(SSSScreenshotManager *)self _reevaluateTrackingForScreenshotWithEnvironmentDescriptionIdentifier:identifier];
}

- (void)performIfNoScreenshotsAreActive:(id)active
{
  activeCopy = active;
  if (![(SSSScreenshotManager *)self _areAnyScreenshotsActive])
  {
    activeCopy[2]();
  }
}

- (void)_reevaluateTrackingForScreenshotWithEnvironmentDescriptionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(SSSScreenshotManager *)self _screenshotWithEnvironmentDescriptionIdentifier:identifierCopy];
  v6 = [(NSMutableArray *)self->_environmentDescriptionIdentifiersUIIsInterestedIn containsObject:identifierCopy];
  v7 = [(NSMutableArray *)self->_environmentDescriptionIdentifiersInActiveDragSession containsObject:identifierCopy];
  v8 = [(NSMutableArray *)self->_environmentDescriptionIdentifiersBeingSaved containsObject:identifierCopy];
  v9 = [(NSMutableArray *)self->_environmentDescriptionIdentifiersBeingRemoved containsObject:identifierCopy];
  v10 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    loggableDescription = [v5 loggableDescription];
    v18 = 138413314;
    v19 = loggableDescription;
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

  if (([(NSMutableArray *)self->_environmentDescriptionIdentifiersUIIsInterestedIn containsObject:identifierCopy]& 1) == 0 && ([(NSMutableArray *)self->_environmentDescriptionIdentifiersInActiveDragSession containsObject:identifierCopy]& 1) == 0 && ([(NSMutableArray *)self->_environmentDescriptionIdentifiersBeingSaved containsObject:identifierCopy]& 1) == 0 && ([(NSMutableArray *)self->_environmentDescriptionIdentifiersBeingRemoved containsObject:identifierCopy]& 1) == 0)
  {
    v12 = os_log_create("com.apple.screenshotservices", "ScreenshotManager");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      loggableDescription2 = [v5 loggableDescription];
      v14 = [(NSMutableArray *)self->_screenshots count];
      v18 = 138412546;
      v19 = loggableDescription2;
      v20 = 2048;
      *v21 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Stop tracking screenshot with environment description %@, screenshots count: %ld", &v18, 0x16u);
    }

    identifier = [v5 identifier];
    [(NSMutableArray *)self->_environmentDescriptionIdentifiersGoingAway removeObject:identifier];
    [(NSMutableArray *)self->_environmentDescriptionIdentifiersBeingRemoved removeObject:identifier];
    [(NSMutableArray *)self->_environmentDescriptionIdentifiersBeingSaved removeObject:identifier];
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

        environmentDescription = [*(*(&v12 + 1) + 8 * i) environmentDescription];
        identifier = [environmentDescription identifier];
        [v3 addObject:identifier];
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
  block[4] = self;
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "dealloc - SSSScreenshotManager: %p", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = SSSScreenshotManager;
  [(SSSScreenshotManager *)&v4 dealloc];
}

@end