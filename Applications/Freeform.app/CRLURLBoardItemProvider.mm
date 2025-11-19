@interface CRLURLBoardItemProvider
+ (BOOL)canInitWithURL:(id)a3;
- (CRLURLBoardItemProvider)initWithURL:(id)a3 fallbackBoardItemProvider:(id)a4 isDetectedURL:(BOOL)a5 suggestedName:(id)a6;
- (NSError)error;
- (_TtC8Freeform12CRLBoardItem)boardItem;
- (id)newBoardItemWithFactory:(id)a3 bakedSize:(BOOL)a4;
- (unint64_t)embeddedDataLength;
- (unint64_t)uploadDataLength;
- (void)boardItemImporter:(id)a3 needsMediaCompatibilityFeedbackWithReasons:(int64_t)a4 forMediaType:(int64_t)a5 usingBlock:(id)a6;
- (void)boardItemImporterWillIgnoreMediaCompatibilityOnAllDevicesRequirement:(id)a3;
- (void)p_provideBoardItemWithFinalURL:(id)a3 factory:(id)a4 completionHandler:(id)a5;
- (void)p_provideBoardItemWithURL:(id)a3 factory:(id)a4 completionHandler:(id)a5;
- (void)provideBoardItemWithFactory:(id)a3 completionHandler:(id)a4;
@end

@implementation CRLURLBoardItemProvider

+ (BOOL)canInitWithURL:(id)a3
{
  v3 = a3;
  if ([v3 isFileURL])
  {
    v4 = [v3 crl_fileTypeIdentifierHandlingFileCoordinationPromises];
    if (v4)
    {
      +[CRLBoardItemImporter supportedFileUTTypes];
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v5 = v18 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v16;
        while (2)
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v5);
            }

            if ([v4 conformsToType:{*(*(&v15 + 1) + 8 * i), v15}])
            {
              v10 = +[CRLInfoImporterBoardItemProvider disallowedTypes];
              v11 = [v4 crl_conformsToAnyUTType:v10];

              if (!v11)
              {
                v13 = 1;
                v12 = v5;
                goto LABEL_16;
              }
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      v12 = [v4 identifier];
      v13 = [_TtC8Freeform19CRLFileItemImporter protected_canImportFileAtURL:v3 type:v12];
LABEL_16:
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = [CRLBoardItemImporter canImportRemoteURL:v3];
  }

  return v13;
}

- (CRLURLBoardItemProvider)initWithURL:(id)a3 fallbackBoardItemProvider:(id)a4 isDetectedURL:(BOOL)a5 suggestedName:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v29.receiver = self;
  v29.super_class = CRLURLBoardItemProvider;
  v14 = [(CRLURLBoardItemProvider *)&v29 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_initialURL, a3);
    objc_storeStrong(&v15->_suggestedName, a6);
    if ([v11 isFileURL])
    {
      v16 = [[CRLSandboxedURL alloc] initWithURL:v11];
      sandboxedURL = v15->_sandboxedURL;
      v15->_sandboxedURL = v16;
    }

    objc_storeStrong(&v15->_fallbackBoardItemProvider, a4);
    v18 = objc_alloc_init(CRLScaledProgress);
    importerProgress = v15->_importerProgress;
    v15->_importerProgress = v18;

    v20 = [[CRLBasicProgress alloc] initWithMaxValue:1.0];
    [(CRLScaledProgress *)v15->_importerProgress setProgress:v20];

    [(CRLScaledProgress *)v15->_importerProgress setMaxValue:50.0];
    v21 = [[CRLFakeProgress alloc] initWithMaxValue:1 numberOfStages:50.0];
    fileCoordinationProgress = v15->_fileCoordinationProgress;
    v15->_fileCoordinationProgress = v21;

    v23 = [CRLProgressGroup alloc];
    v24 = v15->_importerProgress;
    v30[0] = v15->_fileCoordinationProgress;
    v30[1] = v24;
    v25 = [NSArray arrayWithObjects:v30 count:2];
    v26 = [(CRLProgressGroup *)v23 initWithChildren:v25];
    progress = v15->_progress;
    v15->_progress = v26;

    v15->_isDetectedURL = a5;
  }

  return v15;
}

- (void)provideBoardItemWithFactory:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(CRLFakeProgress *)self->_fileCoordinationProgress start];
  if ([(NSURL *)self->_initialURL isFileURL])
  {
    initialURL = self->_initialURL;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10023FD80;
    v9[3] = &unk_10184B838;
    v9[4] = self;
    v10 = v6;
    v11 = v7;
    [CSCloudSharing existingShareForFileOrFolderURL:initialURL completionHandler:v9];
  }

  else
  {
    [(CRLURLBoardItemProvider *)self p_provideBoardItemWithURL:self->_initialURL factory:v6 completionHandler:v7];
  }
}

- (void)p_provideBoardItemWithURL:(id)a3 factory:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  if ([v10 isFileURL])
  {
    v11 = objc_alloc_init(NSFileCoordinator);
    v12 = [NSFileAccessIntent readingIntentWithURL:v10 options:0];

    v18 = v12;
    v13 = [NSArray arrayWithObjects:&v18 count:1];
    v14 = +[NSOperationQueue mainQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10023FF50;
    v15[3] = &unk_101847198;
    v15[4] = self;
    v15[5] = v12;
    v16 = v8;
    v17 = v9;
    [v11 coordinateAccessWithIntents:v13 queue:v14 byAccessor:v15];

    v10 = v11;
  }

  else
  {
    [(CRLFakeProgress *)self->_fileCoordinationProgress advanceToStage:1];
    [(CRLURLBoardItemProvider *)self p_provideBoardItemWithFinalURL:v10 factory:v8 completionHandler:v9];
  }
}

- (void)p_provideBoardItemWithFinalURL:(id)a3 factory:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[CRLBoardItemImporter alloc] initWithURL:v10 boardItemFactory:v9];

  itemImporter = self->_itemImporter;
  self->_itemImporter = v11;

  if (self->_itemImporter)
  {
    v13 = [(CRLURLBoardItemProvider *)self suggestedName];
    [(CRLBoardItemImporter *)self->_itemImporter setSuggestedName:v13];

    v14 = [(CRLBoardItemImporter *)self->_itemImporter progress];
    [(CRLScaledProgress *)self->_importerProgress setProgress:v14];
    [(CRLBoardItemImporter *)self->_itemImporter setDelegate:self];
    v15 = self->_itemImporter;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100240280;
    v16[3] = &unk_10183FC10;
    v16[4] = self;
    v17 = v8;
    [(CRLBoardItemImporter *)v15 importBoardItemWithCompletionHandler:v16];
  }

  else
  {
    v14 = [(CRLURLBoardItemProvider *)self delegate];
    if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v14 importableBoardItemProviderWillIgnoreMediaCompatibilityOnAllDevicesRequirement:self];
    }

    if (v8)
    {
      v8[2](v8);
    }
  }
}

- (_TtC8Freeform12CRLBoardItem)boardItem
{
  fallbackBoardItem = self->_fallbackBoardItem;
  if (fallbackBoardItem)
  {
    v3 = fallbackBoardItem;
  }

  else
  {
    v3 = [(CRLBoardItemImporter *)self->_itemImporter boardItem];
  }

  return v3;
}

- (NSError)error
{
  if (self->_fallbackBoardItem)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(CRLBoardItemImporter *)self->_itemImporter error];
  }

  return v4;
}

- (unint64_t)uploadDataLength
{
  if (self->_fallbackBoardItem)
  {
    return 0;
  }

  else
  {
    return [(CRLBoardItemImporter *)self->_itemImporter uploadDataLength];
  }
}

- (unint64_t)embeddedDataLength
{
  if (self->_fallbackBoardItem)
  {
    return 0;
  }

  else
  {
    return [(CRLBoardItemImporter *)self->_itemImporter embeddedDataLength];
  }
}

- (void)boardItemImporter:(id)a3 needsMediaCompatibilityFeedbackWithReasons:(int64_t)a4 forMediaType:(int64_t)a5 usingBlock:(id)a6
{
  v9 = a6;
  v10 = [(CRLURLBoardItemProvider *)self delegate];
  v11 = v10;
  if (v10)
  {
    [v10 importableBoardItemProvider:self needsMediaCompatibilityFeedbackWithReasons:a4 forMediaType:a5 usingBlock:v9];
  }

  else
  {
    v9[2](v9, 0, 1);
  }
}

- (void)boardItemImporterWillIgnoreMediaCompatibilityOnAllDevicesRequirement:(id)a3
{
  v4 = [(CRLURLBoardItemProvider *)self delegate];
  if (v4)
  {
    v5 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v5 importableBoardItemProviderWillIgnoreMediaCompatibilityOnAllDevicesRequirement:self];
    }
  }

  _objc_release_x2();
}

- (id)newBoardItemWithFactory:(id)a3 bakedSize:(BOOL)a4
{
  v5 = a3;
  v6 = [(CRLURLBoardItemProvider *)self boardItem];
  if (!v6)
  {
    v7 = dispatch_semaphore_create(0);
    initialURL = self->_initialURL;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1002405B8;
    v12[3] = &unk_10183AB38;
    v9 = v7;
    v13 = v9;
    [(CRLURLBoardItemProvider *)self p_provideBoardItemWithURL:initialURL factory:v5 completionHandler:v12];
    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  }

  v10 = [(CRLURLBoardItemProvider *)self boardItem];

  return v10;
}

@end