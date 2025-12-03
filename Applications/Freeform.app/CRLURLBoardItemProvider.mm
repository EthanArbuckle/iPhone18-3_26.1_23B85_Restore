@interface CRLURLBoardItemProvider
+ (BOOL)canInitWithURL:(id)l;
- (CRLURLBoardItemProvider)initWithURL:(id)l fallbackBoardItemProvider:(id)provider isDetectedURL:(BOOL)rL suggestedName:(id)name;
- (NSError)error;
- (_TtC8Freeform12CRLBoardItem)boardItem;
- (id)newBoardItemWithFactory:(id)factory bakedSize:(BOOL)size;
- (unint64_t)embeddedDataLength;
- (unint64_t)uploadDataLength;
- (void)boardItemImporter:(id)importer needsMediaCompatibilityFeedbackWithReasons:(int64_t)reasons forMediaType:(int64_t)type usingBlock:(id)block;
- (void)boardItemImporterWillIgnoreMediaCompatibilityOnAllDevicesRequirement:(id)requirement;
- (void)p_provideBoardItemWithFinalURL:(id)l factory:(id)factory completionHandler:(id)handler;
- (void)p_provideBoardItemWithURL:(id)l factory:(id)factory completionHandler:(id)handler;
- (void)provideBoardItemWithFactory:(id)factory completionHandler:(id)handler;
@end

@implementation CRLURLBoardItemProvider

+ (BOOL)canInitWithURL:(id)l
{
  lCopy = l;
  if ([lCopy isFileURL])
  {
    crl_fileTypeIdentifierHandlingFileCoordinationPromises = [lCopy crl_fileTypeIdentifierHandlingFileCoordinationPromises];
    if (crl_fileTypeIdentifierHandlingFileCoordinationPromises)
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

            if ([crl_fileTypeIdentifierHandlingFileCoordinationPromises conformsToType:{*(*(&v15 + 1) + 8 * i), v15}])
            {
              v10 = +[CRLInfoImporterBoardItemProvider disallowedTypes];
              v11 = [crl_fileTypeIdentifierHandlingFileCoordinationPromises crl_conformsToAnyUTType:v10];

              if (!v11)
              {
                v13 = 1;
                identifier = v5;
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

      identifier = [crl_fileTypeIdentifierHandlingFileCoordinationPromises identifier];
      v13 = [_TtC8Freeform19CRLFileItemImporter protected_canImportFileAtURL:lCopy type:identifier];
LABEL_16:
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = [CRLBoardItemImporter canImportRemoteURL:lCopy];
  }

  return v13;
}

- (CRLURLBoardItemProvider)initWithURL:(id)l fallbackBoardItemProvider:(id)provider isDetectedURL:(BOOL)rL suggestedName:(id)name
{
  lCopy = l;
  providerCopy = provider;
  nameCopy = name;
  v29.receiver = self;
  v29.super_class = CRLURLBoardItemProvider;
  v14 = [(CRLURLBoardItemProvider *)&v29 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_initialURL, l);
    objc_storeStrong(&v15->_suggestedName, name);
    if ([lCopy isFileURL])
    {
      v16 = [[CRLSandboxedURL alloc] initWithURL:lCopy];
      sandboxedURL = v15->_sandboxedURL;
      v15->_sandboxedURL = v16;
    }

    objc_storeStrong(&v15->_fallbackBoardItemProvider, provider);
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

    v15->_isDetectedURL = rL;
  }

  return v15;
}

- (void)provideBoardItemWithFactory:(id)factory completionHandler:(id)handler
{
  factoryCopy = factory;
  handlerCopy = handler;
  [(CRLFakeProgress *)self->_fileCoordinationProgress start];
  if ([(NSURL *)self->_initialURL isFileURL])
  {
    initialURL = self->_initialURL;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10023FD80;
    v9[3] = &unk_10184B838;
    v9[4] = self;
    v10 = factoryCopy;
    v11 = handlerCopy;
    [CSCloudSharing existingShareForFileOrFolderURL:initialURL completionHandler:v9];
  }

  else
  {
    [(CRLURLBoardItemProvider *)self p_provideBoardItemWithURL:self->_initialURL factory:factoryCopy completionHandler:handlerCopy];
  }
}

- (void)p_provideBoardItemWithURL:(id)l factory:(id)factory completionHandler:(id)handler
{
  factoryCopy = factory;
  handlerCopy = handler;
  lCopy = l;
  if ([lCopy isFileURL])
  {
    v11 = objc_alloc_init(NSFileCoordinator);
    v12 = [NSFileAccessIntent readingIntentWithURL:lCopy options:0];

    v18 = v12;
    v13 = [NSArray arrayWithObjects:&v18 count:1];
    v14 = +[NSOperationQueue mainQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10023FF50;
    v15[3] = &unk_101847198;
    v15[4] = self;
    v15[5] = v12;
    v16 = factoryCopy;
    v17 = handlerCopy;
    [v11 coordinateAccessWithIntents:v13 queue:v14 byAccessor:v15];

    lCopy = v11;
  }

  else
  {
    [(CRLFakeProgress *)self->_fileCoordinationProgress advanceToStage:1];
    [(CRLURLBoardItemProvider *)self p_provideBoardItemWithFinalURL:lCopy factory:factoryCopy completionHandler:handlerCopy];
  }
}

- (void)p_provideBoardItemWithFinalURL:(id)l factory:(id)factory completionHandler:(id)handler
{
  handlerCopy = handler;
  factoryCopy = factory;
  lCopy = l;
  v11 = [[CRLBoardItemImporter alloc] initWithURL:lCopy boardItemFactory:factoryCopy];

  itemImporter = self->_itemImporter;
  self->_itemImporter = v11;

  if (self->_itemImporter)
  {
    suggestedName = [(CRLURLBoardItemProvider *)self suggestedName];
    [(CRLBoardItemImporter *)self->_itemImporter setSuggestedName:suggestedName];

    progress = [(CRLBoardItemImporter *)self->_itemImporter progress];
    [(CRLScaledProgress *)self->_importerProgress setProgress:progress];
    [(CRLBoardItemImporter *)self->_itemImporter setDelegate:self];
    v15 = self->_itemImporter;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100240280;
    v16[3] = &unk_10183FC10;
    v16[4] = self;
    v17 = handlerCopy;
    [(CRLBoardItemImporter *)v15 importBoardItemWithCompletionHandler:v16];
  }

  else
  {
    progress = [(CRLURLBoardItemProvider *)self delegate];
    if (progress && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [progress importableBoardItemProviderWillIgnoreMediaCompatibilityOnAllDevicesRequirement:self];
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }
}

- (_TtC8Freeform12CRLBoardItem)boardItem
{
  fallbackBoardItem = self->_fallbackBoardItem;
  if (fallbackBoardItem)
  {
    boardItem = fallbackBoardItem;
  }

  else
  {
    boardItem = [(CRLBoardItemImporter *)self->_itemImporter boardItem];
  }

  return boardItem;
}

- (NSError)error
{
  if (self->_fallbackBoardItem)
  {
    error = 0;
  }

  else
  {
    error = [(CRLBoardItemImporter *)self->_itemImporter error];
  }

  return error;
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

- (void)boardItemImporter:(id)importer needsMediaCompatibilityFeedbackWithReasons:(int64_t)reasons forMediaType:(int64_t)type usingBlock:(id)block
{
  blockCopy = block;
  delegate = [(CRLURLBoardItemProvider *)self delegate];
  v11 = delegate;
  if (delegate)
  {
    [delegate importableBoardItemProvider:self needsMediaCompatibilityFeedbackWithReasons:reasons forMediaType:type usingBlock:blockCopy];
  }

  else
  {
    blockCopy[2](blockCopy, 0, 1);
  }
}

- (void)boardItemImporterWillIgnoreMediaCompatibilityOnAllDevicesRequirement:(id)requirement
{
  delegate = [(CRLURLBoardItemProvider *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    if (objc_opt_respondsToSelector())
    {
      [v5 importableBoardItemProviderWillIgnoreMediaCompatibilityOnAllDevicesRequirement:self];
    }
  }

  _objc_release_x2();
}

- (id)newBoardItemWithFactory:(id)factory bakedSize:(BOOL)size
{
  factoryCopy = factory;
  boardItem = [(CRLURLBoardItemProvider *)self boardItem];
  if (!boardItem)
  {
    v7 = dispatch_semaphore_create(0);
    initialURL = self->_initialURL;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1002405B8;
    v12[3] = &unk_10183AB38;
    v9 = v7;
    v13 = v9;
    [(CRLURLBoardItemProvider *)self p_provideBoardItemWithURL:initialURL factory:factoryCopy completionHandler:v12];
    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  }

  boardItem2 = [(CRLURLBoardItemProvider *)self boardItem];

  return boardItem2;
}

@end