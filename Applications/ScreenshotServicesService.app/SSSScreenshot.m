@interface SSSScreenshot
+ (id)_sanitizedFilenameString:(id)a3;
+ (id)nameForScreenshot:(id)a3;
- (BOOL)_elementHasValidPDFData:(id)a3;
- (BOOL)_hasGeneratedPDF;
- (BOOL)_screenshotWasTakenFromScreenshots;
- (BOOL)canAutosaveToFiles;
- (BOOL)canRedoForViewState:(id)a3;
- (BOOL)canUndoForViewState:(id)a3;
- (BOOL)hasEverBeenEditedForMode:(int64_t)a3;
- (BOOL)isSavingForMode:(int64_t)a3;
- (BOOL)isWaitingForPDF;
- (BOOL)pdfCanBeConvertedToImage;
- (CGRect)visiblePDFRectWhenScreenshotted;
- (NSArray)snapUnitRects;
- (NSData)imageModificationData;
- (NSData)pdfData;
- (NSString)filename;
- (NSString)imageDescription;
- (NSString)userActivityTitle;
- (PDFDocument)PDFDocument;
- (SSSScreenshot)initWithEnvironmentDescription:(id)a3;
- (SSSScreenshotImageGenerator)imageGenerator;
- (SSSScreenshotPDFDocumentGenerator)documentGenerator;
- (SSSScreenshotRepresentation)representation;
- (SSScreenshotAssetManagerRegistrationOptions)registrationOptions;
- (id)_actionNameForDeletePDFPage;
- (id)_elementDocument;
- (id)_savePDFToTemporaryPathWithData:(id)a3;
- (id)editedPDFDataForShareSheet;
- (id)itemProviderForDragItems;
- (id)loggableDescription;
- (id)modelModificationInfoForState:(id)a3;
- (id)pdfAsImage;
- (id)temporaryPDFFile;
- (id)undoManagerForEditMode:(int64_t)a3;
- (id)viewModificationInfoForState:(id)a3;
- (int64_t)_elementIndexForDocument;
- (int64_t)visiblePDFPageWhenScreenshotted;
- (unint64_t)saveLocation;
- (void)_addPageInPDF:(id)a3;
- (void)_deletePageInPDF:(id)a3;
- (void)_harvestPDFIfNecessary;
- (void)_informRepresentationOfUndoStackChange;
- (void)_markAsBeingEditedForMode:(int64_t)a3;
- (void)_markImageAsBeingEdited;
- (void)_removeSecurityScopedURL:(id)a3;
- (void)_removeURL:(id)a3;
- (void)_setDocumentIsSaving:(BOOL)a3;
- (void)_setModelModificationDictionary:(id)a3 createUndoCommand:(BOOL)a4;
- (void)dealloc;
- (void)deletePDFPage:(id)a3;
- (void)didProcessDocumentUpdate;
- (void)insertIntoQuickNoteWithCompletion:(id)a3;
- (void)promoteViewValueToModelValueForKey:(unint64_t)a3 forState:(id)a4 createUndoCommand:(BOOL)a5;
- (void)q_saveEditedPDF;
- (void)redoForViewState:(id)a3;
- (void)removePDF;
- (void)requestImageInTransition:(BOOL)a3 withBlock:(id)a4;
- (void)revertForViewState:(id)a3;
- (void)savePDFWithBlock:(id)a3;
- (void)screenshotMutableModificationInfo:(id)a3 valueChangedForKey:(unint64_t)a4;
- (void)setModelModificationInfo:(id)a3 forState:(id)a4;
- (void)setViewModificationInfo:(id)a3 forState:(id)a4;
- (void)undoForViewState:(id)a3;
- (void)wasJustSavedForMode:(int64_t)a3;
@end

@implementation SSSScreenshot

- (SSSScreenshot)initWithEnvironmentDescription:(id)a3
{
  v4 = a3;
  v44.receiver = self;
  v44.super_class = SSSScreenshot;
  v5 = [(SSSScreenshot *)&v44 init];
  environmentDescription = v5->_environmentDescription;
  v5->_environmentDescription = v4;
  v7 = v4;

  v8 = [(SSEnvironmentDescription *)v7 imageSurface];
  v9 = [UIImage ss_imageFromImageSurface:v8];
  backingImage = v5->_backingImage;
  v5->_backingImage = v9;

  v11 = [[SSSScreenshotModificationInfo alloc] initForScreenshotWithEnvironmentDescription:v7];
  modelModificationInfo = v5->_modelModificationInfo;
  v5->_modelModificationInfo = v11;

  v13 = [(SSSScreenshotModificationInfo *)[SSSScreenshotMutableModificationInfo alloc] initForScreenshotWithEnvironmentDescription:v7];
  viewModificationInfo = v5->_viewModificationInfo;
  v5->_viewModificationInfo = v13;

  v15 = [(SSSScreenshot *)v5 viewModificationInfo];
  [v15 setChangeObserver:v5];

  v16 = [[SSSScreenshotItemProviderImage alloc] initWithScreenshot:v5];
  itemProviderImage = v5->_itemProviderImage;
  v5->_itemProviderImage = v16;

  v18 = [[SSSScreenshotItemProviderPDF alloc] initWithScreenshot:v5];
  itemProviderPDF = v5->_itemProviderPDF;
  v5->_itemProviderPDF = v18;

  v20 = [[SSSScreenshotItemProviderPDFAsImage alloc] initWithScreenshot:v5];
  itemProviderPDFAsImage = v5->_itemProviderPDFAsImage;
  v5->_itemProviderPDFAsImage = v20;

  v22 = [[SSSScreenshotImageProvider alloc] initWithScreenshot:v5];
  imageProvider = v5->_imageProvider;
  v5->_imageProvider = v22;

  [(SSSScreenshot *)v5 _harvestPDFIfNecessary];
  v24 = objc_alloc_init(NSUndoManager);
  [(NSUndoManager *)v24 setGroupsByEvent:1];
  imageUndoManager = v5->_imageUndoManager;
  v5->_imageUndoManager = v24;
  v26 = v24;

  v27 = objc_alloc_init(NSUndoManager);
  [(NSUndoManager *)v27 setGroupsByEvent:1];
  pdfUndoManager = v5->_pdfUndoManager;
  v5->_pdfUndoManager = v27;
  v29 = v27;

  v5->_lastViewEditMode = 0;
  v30 = objc_alloc_init(NSMutableDictionary);
  elementPDFValidationDictionary = v5->_elementPDFValidationDictionary;
  v5->_elementPDFValidationDictionary = v30;

  v32 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v33 = dispatch_queue_create("com.apple.screenshotservices.pdfSavingQueue", v32);
  pdfSavingQueue = v5->_pdfSavingQueue;
  v5->_pdfSavingQueue = v33;

  ct_green_tea_logger_create_static();
  v35 = [(SSSScreenshot *)v5 saveLocation];
  if (v35 > 1)
  {
    if (v35 == 2)
    {
      v41 = getCTGreenTeaOsLogHandle();
      v37 = v41;
      if (!v41 || !os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      v43[0] = 0;
      v38 = "Received game highlights image";
      goto LABEL_18;
    }

    if (v35 == 3)
    {
      v39 = getCTGreenTeaOsLogHandle();
      v37 = v39;
      if (!v39 || !os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      v43[0] = 0;
      v38 = "Received request to save screenshot to quick note";
      goto LABEL_18;
    }
  }

  else
  {
    if (!v35)
    {
      v40 = getCTGreenTeaOsLogHandle();
      v37 = v40;
      if (!v40 || !os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      v43[0] = 0;
      v38 = "Received screen image";
      goto LABEL_18;
    }

    if (v35 == 1)
    {
      v36 = getCTGreenTeaOsLogHandle();
      v37 = v36;
      if (!v36 || !os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      v43[0] = 0;
      v38 = "Received AR image";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, v38, v43, 2u);
LABEL_19:
    }
  }

  return v5;
}

- (void)dealloc
{
  v3 = os_log_create("com.apple.screenshotservices", "Screenshot");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    imageProvider = self->_imageProvider;
    *buf = 134218240;
    v9 = self;
    v10 = 2048;
    v11 = imageProvider;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "dealloc: %p, _imageProvider: %p", buf, 0x16u);
  }

  savedCropBoxes = self->_savedCropBoxes;
  if (savedCropBoxes)
  {
    free(savedCropBoxes);
  }

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self];

  v7.receiver = self;
  v7.super_class = SSSScreenshot;
  [(SSSScreenshot *)&v7 dealloc];
}

- (void)setViewModificationInfo:(id)a3 forState:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v8 = a3;
  [v8 setChangeObserver:0];
  if (var0)
  {
    [(NSMutableArray *)self->_pdfViewModificationInfos setObject:v8 atIndexedSubscript:var1];
  }

  else
  {
    objc_storeStrong(&self->_viewModificationInfo, a3);
  }

  [v8 setChangeObserver:self];
}

- (void)setModelModificationInfo:(id)a3 forState:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v8 = a3;
  v9 = v8;
  if (var0)
  {
    [(NSMutableArray *)self->_pdfModelModificationInfos setObject:v8 atIndexedSubscript:var1];
  }

  else
  {
    objc_storeStrong(&self->_modelModificationInfo, a3);
  }
}

- (id)viewModificationInfoForState:(id)a3
{
  if (a3.var0 && (pdfViewModificationInfos = self->_pdfViewModificationInfos) != 0 && (var1 = a3.var1, [(NSMutableArray *)pdfViewModificationInfos count]> a3.var1))
  {
    v6 = [(NSMutableArray *)self->_pdfViewModificationInfos objectAtIndexedSubscript:var1];
  }

  else
  {
    v6 = self->_viewModificationInfo;
  }

  return v6;
}

- (id)modelModificationInfoForState:(id)a3
{
  if (a3.var0 && (pdfModelModificationInfos = self->_pdfModelModificationInfos) != 0 && (var1 = a3.var1, [(NSMutableArray *)pdfModelModificationInfos count]> a3.var1))
  {
    v6 = [(NSMutableArray *)self->_pdfModelModificationInfos objectAtIndexedSubscript:var1];
  }

  else
  {
    v6 = self->_modelModificationInfo;
  }

  return v6;
}

- (void)promoteViewValueToModelValueForKey:(unint64_t)a3 forState:(id)a4 createUndoCommand:(BOOL)a5
{
  v5 = a5;
  var1 = a4.var1;
  var0 = a4.var0;
  v10 = [(SSSScreenshot *)self modelModificationInfoForState:a4.var0, a4.var1];
  v11 = [v10 copy];

  v12 = [(SSSScreenshot *)self modelModificationInfoForState:var0, var1];
  v13 = [v12 mutableCopy];

  v14 = [(SSSScreenshot *)self viewModificationInfoForState:var0, var1];
  [v13 takeValueFromModificationInfo:v14 forKey:a3];

  if (([v13 isEqual:v11] & 1) == 0)
  {
    if (var0)
    {
      v17[0] = @"modelModificationInfo";
      v17[1] = @"previousModificationInfo";
      v18[0] = v13;
      v18[1] = v11;
      v17[2] = @"page";
      v15 = [NSNumber numberWithInteger:var1];
      v18[2] = v15;
      v16 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];
    }

    else
    {
      v19[0] = @"modelModificationInfo";
      v19[1] = @"previousModificationInfo";
      v20[0] = v13;
      v20[1] = v11;
      v16 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    }

    [(SSSScreenshot *)self _setModelModificationDictionary:v16 createUndoCommand:v5];
  }
}

- (void)_setModelModificationDictionary:(id)a3 createUndoCommand:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"modelModificationInfo"];
  v8 = [v6 objectForKeyedSubscript:@"previousModificationInfo"];
  v9 = [v6 objectForKey:@"page"];

  if (v9)
  {
    v10 = [v6 objectForKeyedSubscript:@"page"];
    v9 = [v10 intValue];

    v19[0] = @"modelModificationInfo";
    v19[1] = @"previousModificationInfo";
    v20[0] = v8;
    v20[1] = v7;
    v19[2] = @"page";
    v11 = [NSNumber numberWithInteger:v9];
    v20[2] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];

    v13 = 1;
  }

  else
  {
    v17[0] = @"modelModificationInfo";
    v17[1] = @"previousModificationInfo";
    v18[0] = v8;
    v18[1] = v7;
    v12 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
    v13 = 0;
  }

  v14 = [(SSSScreenshot *)self undoManagerForEditMode:v13];
  if (v4)
  {
    [(SSSScreenshot *)self _undoableModelChangePrequel:v14];
    [v14 registerUndoWithTarget:self selector:"_setModelModificationDictionary:" object:v12];
    [(SSSScreenshot *)self setModelModificationInfo:v7 forState:v13, v9];
    v15 = [v7 mutableCopy];
    [(SSSScreenshot *)self setViewModificationInfo:v15 forState:v13, v9];

    [(SSSScreenshot *)self _undoableModelChangeSequel:v14];
    [(SSSScreenshot *)self _markAsBeingEditedForMode:v13];
LABEL_8:
    [(SSSScreenshot *)self _informRepresentationOfUndoStackChange];
    goto LABEL_9;
  }

  [(SSSScreenshot *)self setModelModificationInfo:v7 forState:v13, v9];
  v16 = [v7 mutableCopy];
  [(SSSScreenshot *)self setViewModificationInfo:v16 forState:v13, v9];

  [(SSSScreenshot *)self _markAsBeingEditedForMode:v13];
  if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
  {
    goto LABEL_8;
  }

LABEL_9:
}

- (void)screenshotMutableModificationInfo:(id)a3 valueChangedForKey:(unint64_t)a4
{
  v5 = [(SSSScreenshot *)self representation:a3];
  [v5 screenshotDidHaveViewModificationInfoChanged:self];
}

- (NSData)imageModificationData
{
  v2 = [(SSSScreenshot *)self modelModificationInfo];
  v3 = [NSKeyedArchiver archivedDataWithRootObject:v2 requiringSecureCoding:0 error:0];

  return v3;
}

- (unint64_t)saveLocation
{
  v2 = [(SSSScreenshot *)self environmentDescription];
  v3 = [v2 serviceOptions];
  v4 = [v3 saveLocation];

  return v4;
}

- (int64_t)_elementIndexForDocument
{
  if (![(SSSScreenshot *)self _screenshotWasTakenFromScreenshots])
  {
    v3 = [(SSEnvironmentDescription *)self->_environmentDescription elements];
    v4 = [v3 count];

    if (v4)
    {
      v5 = 0;
      v6 = 0.0;
      v7 = 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v8 = [(SSEnvironmentDescription *)self->_environmentDescription elements];
        v9 = [v8 objectAtIndexedSubscript:v5];

        if (self->_didFinishReceivingDocumentUpdates)
        {
          if (![(SSSScreenshot *)self _elementHasValidPDFData:v9])
          {
            goto LABEL_14;
          }
        }

        else
        {
          v10 = [v9 metadata];
          v11 = [v10 canGenerateDocument];

          if (!v11)
          {
            goto LABEL_14;
          }
        }

        [v9 rect];
        v13 = v12;
        [v9 rect];
        v15 = v14;
        v16 = v5;
        if (v13 <= v6)
        {
          if (v14 == v6)
          {
            if ([v9 hasKeyboardFocus])
            {
              v16 = v5;
            }

            else
            {
              v16 = v7;
            }

            v15 = v6;
            goto LABEL_15;
          }

LABEL_14:
          v15 = v6;
          v16 = v7;
        }

LABEL_15:

        ++v5;
        v17 = [(SSEnvironmentDescription *)self->_environmentDescription elements];
        v18 = [v17 count];

        v7 = v16;
        v6 = v15;
        if (v5 >= v18)
        {
          return v16;
        }
      }
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)_elementHasValidPDFData:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 document];
  v7 = [v6 PDFData];

  if (v7)
  {
    v8 = [(NSMutableDictionary *)v5->_elementPDFValidationDictionary allKeys];
    v9 = [v8 containsObject:v4];

    if (v9)
    {
      v10 = [(NSMutableDictionary *)v5->_elementPDFValidationDictionary objectForKeyedSubscript:v4];
      LOBYTE(v7) = [v10 BOOLValue];
    }

    else
    {
      v11 = [PDFDocument alloc];
      v12 = [v4 document];
      v13 = [v12 PDFData];
      v10 = [v11 initWithData:v13];

      if ([v10 pageCount])
      {
        v14 = [v10 pageAtIndex:0];
        [v14 boundsForBox:1];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;

        v26.origin.x = v16;
        v26.origin.y = v18;
        v26.size.width = v20;
        v26.size.height = v22;
        v7 = !CGRectIsEmpty(v26);
      }

      else
      {
        v7 = 0;
      }

      elementPDFValidationDictionary = v5->_elementPDFValidationDictionary;
      v24 = [NSNumber numberWithBool:v7];
      [(NSMutableDictionary *)elementPDFValidationDictionary setObject:v24 forKey:v4];
    }
  }

  objc_sync_exit(v5);

  return v7;
}

- (id)_elementDocument
{
  v3 = [(SSSScreenshot *)self _elementIndexForDocument];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v5 = v3;
    v6 = [(SSEnvironmentDescription *)self->_environmentDescription elements];
    v7 = [v6 objectAtIndexedSubscript:v5];
    v4 = [v7 document];
  }

  return v4;
}

- (BOOL)_hasGeneratedPDF
{
  v2 = [(SSSScreenshot *)self _elementDocument];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isWaitingForPDF
{
  v3 = [(SSSScreenshot *)self _canProvidePDF];
  v4 = [(SSEnvironmentDescription *)self->_environmentDescription elements];
  if ([v4 count])
  {
    v5 = [(SSSScreenshot *)self _elementDocument];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
  if (v3 && !v6)
  {
    return self->_isPDFRequested;
  }

  return v7;
}

- (void)didProcessDocumentUpdate
{
  p_documentUpdateCount = &self->_documentUpdateCount;
  ++self->_documentUpdateCount;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(SSEnvironmentDescription *)self->_environmentDescription elements];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) metadata];
        v11 = [v10 canGenerateDocument];

        v7 += v11;
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if (*p_documentUpdateCount == v7)
  {
    self->_didFinishReceivingDocumentUpdates = 1;
  }

  else if (*p_documentUpdateCount > v7)
  {
    self->_didFinishReceivingDocumentUpdates = 1;
    v12 = os_log_create("com.apple.screenshotservices", "PDF");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_10007445C(p_documentUpdateCount, v7, v12);
    }
  }
}

- (NSData)pdfData
{
  if ([(SSSScreenshot *)self _hasGeneratedPDF])
  {
    v3 = [(SSSScreenshot *)self _elementDocument];
    v4 = [v3 PDFData];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)visiblePDFPageWhenScreenshotted
{
  if (![(SSSScreenshot *)self _hasGeneratedPDF])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = [(SSSScreenshot *)self _elementDocument];
  v4 = [v3 PDFPage];

  return v4;
}

- (CGRect)visiblePDFRectWhenScreenshotted
{
  if ([(SSSScreenshot *)self _hasGeneratedPDF])
  {
    v3 = [(SSSScreenshot *)self _elementDocument];
    [v3 PDFVisibleRect];
    x = v4;
    y = v6;
    width = v8;
    height = v10;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)_screenshotWasTakenFromScreenshots
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(SSEnvironmentDescription *)self->_environmentDescription elements];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        v7 = [v6 bundleIdentifier];
        if (!v7 && ![v6 isAppLauncher])
        {
          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (void)_markImageAsBeingEdited
{
  self->_imageHasEverBeenEdited = 1;
  self->_imageHasUnsavedEdits = 1;
  v3 = [(SSSScreenshot *)self imageGenerator];
  [v3 imageGeneratorImageMarkedAsBeingEdited:self];
}

- (void)_markAsBeingEditedForMode:(int64_t)a3
{
  if (a3)
  {

    [(SSSScreenshot *)self _markPDFAsBeingEdited];
  }

  else
  {
    v4 = +[NSUserActivity _currentUserActivityUUID];
    v5 = v4;
    if (v4 && !self->_imageHasEverBeenEdited)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10001C114;
      v6[3] = &unk_1000BA690;
      v7 = v4;
      v8 = self;
      [NSUserActivity _fetchUserActivityWithUUID:v7 completionHandler:v6];
    }

    else
    {
      [(SSSScreenshot *)self _markImageAsBeingEdited];
    }
  }
}

- (BOOL)hasEverBeenEditedForMode:(int64_t)a3
{
  v3 = 42;
  if (a3)
  {
    v3 = 43;
  }

  return *(&self->super.isa + v3);
}

- (BOOL)isSavingForMode:(int64_t)a3
{
  v3 = 44;
  if (a3)
  {
    v3 = 45;
  }

  return *(&self->super.isa + v3);
}

- (void)wasJustSavedForMode:(int64_t)a3
{
  v3 = 40;
  if (a3)
  {
    v3 = 41;
  }

  *(&self->super.isa + v3) = 0;
}

- (void)_informRepresentationOfUndoStackChange
{
  v3 = [(SSSScreenshot *)self representation];
  [v3 screenshotDidHaveUndoStackChanged:self];
}

- (BOOL)canUndoForViewState:(id)a3
{
  v3 = [(SSSScreenshot *)self undoManagerForEditMode:a3.var0, a3.var1];
  v4 = [v3 canUndo];

  return v4;
}

- (BOOL)canRedoForViewState:(id)a3
{
  v3 = [(SSSScreenshot *)self undoManagerForEditMode:a3.var0, a3.var1];
  v4 = [v3 canRedo];

  return v4;
}

- (void)undoForViewState:(id)a3
{
  v4 = [(SSSScreenshot *)self undoManagerForEditMode:a3.var0, a3.var1];
  [v4 undo];

  [(SSSScreenshot *)self _informRepresentationOfUndoStackChange];
}

- (void)revertForViewState:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = [SSSScreenshotModificationInfo alloc];
  v7 = [(SSSScreenshot *)self environmentDescription];
  v8 = [(SSSScreenshotModificationInfo *)v6 initForScreenshotWithEnvironmentDescription:v7];
  [(SSSScreenshot *)self setModelModificationInfo:v8 forState:var0, var1];

  v9 = [SSSScreenshotMutableModificationInfo alloc];
  v10 = [(SSSScreenshot *)self environmentDescription];
  v11 = [(SSSScreenshotModificationInfo *)v9 initForScreenshotWithEnvironmentDescription:v10];
  [(SSSScreenshot *)self setViewModificationInfo:v11 forState:var0, var1];

  v12 = [(SSSScreenshot *)self undoManagerForEditMode:var0];
  [v12 removeAllActions];

  v13 = [(SSSScreenshot *)self representation];
  [v13 screenshotDidRevert:self];
}

- (void)redoForViewState:(id)a3
{
  v4 = [(SSSScreenshot *)self undoManagerForEditMode:a3.var0, a3.var1];
  [v4 redo];

  [(SSSScreenshot *)self _informRepresentationOfUndoStackChange];
}

- (id)undoManagerForEditMode:(int64_t)a3
{
  v3 = 56;
  if (!a3)
  {
    v3 = 48;
  }

  return *(&self->super.isa + v3);
}

- (void)requestImageInTransition:(BOOL)a3 withBlock:(id)a4
{
  v4 = a3;
  v6 = a4;
  self->_imageIsSaving = 1;
  v7 = [(SSSScreenshot *)self imageGenerator];
  v8 = [v7 isGeneratedImageHDR:self];

  v9 = &UTTypeHEIC;
  if (!v8)
  {
    v9 = &UTTypeJPEG;
  }

  v10 = *v9;
  objc_initWeak(&location, self);
  v11 = [(SSSScreenshot *)self imageProvider];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10001C6D8;
  v19[3] = &unk_1000BA6B8;
  objc_copyWeak(&v21, &location);
  v12 = v6;
  v20 = v12;
  v13 = [v11 requestOutputImageDataInTransition:v4 imageType:v10 forSaving:v19];

  if ((v13 & 1) == 0)
  {
    v14 = [(SSSScreenshot *)self imageProvider];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001C7E0;
    v15[3] = &unk_1000BA6E0;
    v15[4] = self;
    v16 = v10;
    v17 = v12;
    v18 = v8;
    [v14 requestOutputImageInTransition:v4 forSaving:v15];
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (SSScreenshotAssetManagerRegistrationOptions)registrationOptions
{
  v3 = objc_alloc_init(SSScreenshotAssetManagerRegistrationOptions);
  v4 = [(SSSScreenshot *)self environmentDescription];
  v5 = [v4 serviceOptions];
  [v3 setSaveLocation:{objc_msgSend(v5, "saveLocation")}];

  v6 = [(SSSScreenshot *)self environmentDescription];
  v7 = [v6 serviceOptions];
  v8 = [v7 assetMetadata];
  [v3 setAssetMetadata:v8];

  v9 = [(SSSScreenshot *)self environmentDescription];
  v10 = [v9 harvestedMetadata];
  [v3 setHarvestedMetadata:v10];

  return v3;
}

- (NSString)imageDescription
{
  v2 = [(SSSScreenshot *)self modelModificationInfo];
  v3 = [v2 imageDescription];

  return v3;
}

+ (id)nameForScreenshot:(id)a3
{
  v3 = a3;
  v22 = [NSDateFormatter dateFormatFromTemplate:@"yyyy-MM-dd" options:0 locale:0];
  v21 = objc_alloc_init(NSDateFormatter);
  [v21 setDateFormat:v22];
  v4 = [v3 environmentDescription];

  v5 = [v4 date];

  v6 = [v21 stringFromDate:v5];
  v7 = [NSDateFormatter localizedStringFromDate:v5 dateStyle:0 timeStyle:2];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"SCREENSHOT_SAVE_FILE_NAME" value:@"Screenshot" table:0];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"SCREENSHOT_SAVE_FILE_DATE_DELIMITER" value:@"-" table:0];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"SCREENSHOT_SAVE_FILE_TIME_DELIMITER" value:@"." table:0];

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"SCREENSHOT_SAVE_FILE_FORMAT" value:@"%@ %@ at %@" table:0];

  v16 = [NSString stringWithFormat:v15, v9, v6, v7];
  v17 = [v16 stringByReplacingOccurrencesOfString:@"/" withString:@"-"];

  v18 = [v17 stringByReplacingOccurrencesOfString:@"-" withString:v11];

  v19 = [v18 stringByReplacingOccurrencesOfString:@":" withString:v13];

  return v19;
}

- (NSString)filename
{
  v3 = [(SSSScreenshot *)self userActivityTitle];
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  v5 = [SSSScreenshot _sanitizedFilenameString:v3];

  if (![v5 length] || (+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", v5), v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {

LABEL_5:
    v5 = 0;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [(SSSScreenshot *)self environmentDescription];
  v8 = [v7 elements];

  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v18 + 1) + 8 * i) bundleIdentifier];
        v14 = [v13 isEqual:@"com.apple.MobileSMS"];

        if (v14)
        {

          goto LABEL_17;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if (v5)
  {
    v15 = v5;
  }

  else
  {
LABEL_17:
    v15 = [SSSScreenshot nameForScreenshot:self];
  }

  v16 = v15;

  return v16;
}

+ (id)_sanitizedFilenameString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if ([v3 length])
  {
    v5 = v3;
    if ([v3 length] >= 0x81)
    {
      v5 = [v3 substringToIndex:128];
    }

    v6 = [NSCharacterSet characterSetWithCharactersInString:@"///\\?%*|<>:"];
    v7 = v5;
    v8 = [v7 rangeOfCharacterFromSet:v6];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
    }

    else
    {
      v11 = v8;
      v12 = v9;
      v10 = 0;
      do
      {
        if (!v10)
        {
          v10 = [v7 mutableCopy];
        }

        [v10 replaceCharactersInRange:v11 withString:{v12, &stru_1000BC350}];
        v11 = [v10 rangeOfCharacterFromSet:v6 options:2 range:{v11, objc_msgSend(v10, "length") - v11}];
        v12 = v13;
      }

      while (v11 != 0x7FFFFFFFFFFFFFFFLL);
    }

    if (v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = v7;
    }

    v15 = v14;

    v16 = [NSCharacterSet characterSetWithCharactersInString:@"."];
    v17 = [v16 mutableCopy];

    v18 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    [v17 formUnionWithCharacterSet:v18];

    v4 = [v15 stringByTrimmingCharactersInSet:v17];
  }

  return v4;
}

- (NSString)userActivityTitle
{
  v3 = [(SSSScreenshot *)self environmentDescription];
  v4 = [v3 elements];

  v5 = [(SSSScreenshot *)self _elementIndexForDocument];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * v10) metadata];
        v12 = [v11 userActivityTitle];

        if (v12)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v12 = 0;
    }
  }

  else
  {
    v6 = [v4 objectAtIndexedSubscript:v5];
    v13 = [v6 metadata];
    v12 = [v13 userActivityTitle];
  }

  return v12;
}

- (NSArray)snapUnitRects
{
  v3 = +[NSMutableArray array];
  v4 = [(SSSScreenshot *)self environmentDescription];
  [v4 imagePointSize];
  v6 = v5;
  v8 = v7;

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v9 = [(SSSScreenshot *)self environmentDescription];
  v10 = [v9 elements];

  obj = v10;
  v35 = [v10 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v35)
  {
    v34 = *v42;
    do
    {
      for (i = 0; i != v35; i = i + 1)
      {
        if (*v42 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v41 + 1) + 8 * i);
        [v12 rect];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_10001D55C;
        v40[3] = &unk_1000BA700;
        v40[4] = v6;
        v40[5] = v8;
        v21 = objc_retainBlock(v40);
        (v21[2])(v14, v16, v18, v20);
        v22 = [NSValue valueWithCGRect:?];
        [v3 addObject:v22];

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v23 = [v12 metadata];
        v24 = [v23 contentRects];

        v25 = [v24 countByEnumeratingWithState:&v36 objects:v45 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v37;
          do
          {
            for (j = 0; j != v26; j = j + 1)
            {
              if (*v37 != v27)
              {
                objc_enumerationMutation(v24);
              }

              [*(*(&v36 + 1) + 8 * j) CGRectValue];
              (v21[2])(v21, v14 + v29, v16 + v30);
              v31 = [NSValue valueWithCGRect:?];
              [v3 addObject:v31];
            }

            v26 = [v24 countByEnumeratingWithState:&v36 objects:v45 count:16];
          }

          while (v26);
        }
      }

      v35 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v35);
  }

  return v3;
}

- (PDFDocument)PDFDocument
{
  v3 = [(SSSScreenshot *)self documentGenerator];

  if (!v3 || (-[SSSScreenshot documentGenerator](self, "documentGenerator"), v4 = objc_claimAutoreleasedReturnValue(), -[SSSScreenshot pdfData](self, "pdfData"), v5 = objc_claimAutoreleasedReturnValue(), [v4 documentFromPDFData:v5], v6 = objc_claimAutoreleasedReturnValue(), v5, v4, !v6))
  {
    pdfDocument = self->_pdfDocument;
    if (!pdfDocument)
    {
      v8 = [PDFDocument alloc];
      v9 = [(SSSScreenshot *)self pdfData];
      v10 = [v8 initWithData:v9];

      [(PDFDocument *)v10 setDelegate:self];
      v11 = self->_pdfDocument;
      self->_pdfDocument = v10;

      pdfDocument = self->_pdfDocument;
    }

    v6 = pdfDocument;
  }

  return v6;
}

- (void)_harvestPDFIfNecessary
{
  v3 = [(SSEnvironmentDescription *)self->_environmentDescription elements];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(SSSScreenshot *)self pdfData];
    if (!v5)
    {
      goto LABEL_9;
    }

    v21 = v5;
    v6 = +[NSMutableArray array];
    v7 = +[NSMutableArray array];
    v8 = [(SSSScreenshot *)self PDFDocument];
    v9 = [v8 pageCount];
    if (v9 >= 1)
    {
      v10 = v9;
      do
      {
        v11 = [[SSSScreenshotModificationInfo alloc] initForScreenshotWithEnvironmentDescription:self->_environmentDescription];
        v12 = [(SSSScreenshotModificationInfo *)[SSSScreenshotMutableModificationInfo alloc] initForScreenshotWithEnvironmentDescription:self->_environmentDescription];
        [v12 setChangeObserver:self];
        [(NSMutableArray *)v6 addObject:v11];
        [(NSMutableArray *)v7 addObject:v12];

        --v10;
      }

      while (v10);
    }

    pdfModelModificationInfos = self->_pdfModelModificationInfos;
    self->_pdfModelModificationInfos = v6;
    v14 = v6;

    pdfViewModificationInfos = self->_pdfViewModificationInfos;
    self->_pdfViewModificationInfos = v7;

    v16 = [(SSSScreenshot *)self representation];
    [v16 screenshotDidReceivePDFData];
  }

  else
  {
    v17 = [[SSSScreenshotModificationInfo alloc] initForScreenshotWithEnvironmentDescription:self->_environmentDescription];
    v18 = [NSMutableArray arrayWithObject:v17];
    v19 = self->_pdfModelModificationInfos;
    self->_pdfModelModificationInfos = v18;

    v21 = [(SSSScreenshotModificationInfo *)[SSSScreenshotMutableModificationInfo alloc] initForScreenshotWithEnvironmentDescription:self->_environmentDescription];
    v20 = [NSMutableArray arrayWithObject:?];
    v8 = self->_pdfViewModificationInfos;
    self->_pdfViewModificationInfos = v20;
  }

  v5 = v21;
LABEL_9:
}

- (void)removePDF
{
  v3 = [(SSSScreenshot *)self PDFURL];

  if (v3)
  {
    v4 = [(SSSScreenshot *)self PDFURL];
    [(SSSScreenshot *)self _removeSecurityScopedURL:v4];

    [(SSSScreenshot *)self setPDFURL:0];
  }

  v5 = [(SSSScreenshot *)self temporaryPDFURL];

  if (v5)
  {
    v6 = [(SSSScreenshot *)self temporaryPDFURL];
    [(SSSScreenshot *)self _removeURL:v6];

    [(SSSScreenshot *)self setTemporaryPDFURL:0];
  }
}

- (void)_removeURL:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v12 = 0;
  v5 = [v4 removeItemAtURL:v3 error:&v12];
  v6 = v12;
  v7 = v6;
  if (v6 || (v5 & 1) == 0)
  {
    v8 = [v6 domain];
    v9 = v8;
    if (v8 == NSCocoaErrorDomain)
    {
      v10 = [v7 code];

      if (v10 == 4)
      {
        v11 = os_log_create("com.apple.screenshotservices", "PDF");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          sub_100074600();
        }

        goto LABEL_10;
      }
    }

    else
    {
    }

    v11 = os_log_create("com.apple.screenshotservices", "PDF");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10007457C();
    }

LABEL_10:
  }
}

- (void)_removeSecurityScopedURL:(id)a3
{
  v5 = a3;
  v4 = [v5 startAccessingSecurityScopedResource];
  [(SSSScreenshot *)self _removeURL:v5];
  if (v4)
  {
    [v5 stopAccessingSecurityScopedResource];
  }
}

- (void)savePDFWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(SSSScreenshot *)self PDFDocument];
  if (v5 && (v6 = v5, v7 = [(SSSScreenshot *)self isDeleted], v6, (v7 & 1) == 0))
  {
    self->_pdfIsSaving = 1;
    objc_initWeak(&location, self);
    pdfSavingQueue = self->_pdfSavingQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001DBB8;
    block[3] = &unk_1000BA728;
    objc_copyWeak(&v11, &location);
    v10 = v4;
    dispatch_async(pdfSavingQueue, block);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else if (v4)
  {
    v4[2](v4);
  }
}

- (id)editedPDFDataForShareSheet
{
  v3 = [(SSSScreenshot *)self PDFDocument];

  if (v3)
  {
    [(SSSScreenshot *)self _setDocumentIsSaving:1];
    v4 = [(SSSScreenshot *)self PDFDocument];
    v3 = [v4 dataRepresentation];

    [(SSSScreenshot *)self _setDocumentIsSaving:0];
  }

  return v3;
}

- (id)temporaryPDFFile
{
  v3 = [(SSSScreenshot *)self editedPDFDataForShareSheet];
  if (v3)
  {
    v4 = [(SSSScreenshot *)self _savePDFToTemporaryPathWithData:v3];
    [(SSSScreenshot *)self setTemporaryPDFURL:v4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_savePDFToTemporaryPathWithData:(id)a3
{
  v4 = a3;
  v5 = [(SSSScreenshot *)self filename];
  v6 = [v5 stringByAppendingPathExtension:@"pdf"];

  if (!v6)
  {
    v7 = os_log_create("com.apple.screenshotservices", "Saving");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100074674(self);
    }

    v8 = [SSSScreenshot nameForScreenshot:self];
    v6 = [v8 stringByAppendingPathExtension:@"pdf"];
  }

  v9 = NSTemporaryDirectory();
  v10 = [NSURL fileURLWithPath:v9];
  v11 = [v10 URLByAppendingPathComponent:v6];

  v19 = 0;
  v12 = [v4 writeToURL:v11 options:1 error:&v19];

  v13 = v19;
  v14 = os_log_create("com.apple.screenshotservices", "PDF");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v18 = @"Could not save";
    *buf = 138412802;
    if (v12)
    {
      v18 = @"Saved";
    }

    v21 = v18;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v13;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%@ PDF to %@ (%@)", buf, 0x20u);
  }

  if (v12)
  {
    v15 = v11;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

- (void)q_saveEditedPDF
{
  v3 = [(SSSScreenshot *)self PDFDocument];

  if (v3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001E3F0;
    block[3] = &unk_1000BA068;
    block[4] = self;
    dispatch_sync(&_dispatch_main_q, block);
    v4 = [(SSSScreenshot *)self PDFDocument];
    v5 = [v4 dataRepresentation];

    v6 = os_log_create("com.apple.screenshotservices", "PDF");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100074714(v5);
    }

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10001E3FC;
    v37[3] = &unk_1000BA068;
    v37[4] = self;
    dispatch_sync(&_dispatch_main_q, v37);

    if (v5)
    {
      v33 = 0;
      v34 = &v33;
      v35 = 0x2020000000;
      v36 = 0;
      v7 = [(SSSScreenshot *)self PDFURL];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 startAccessingSecurityScopedResource];
        v10 = [[NSFileCoordinator alloc] initWithFilePresenter:0];
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_10001E408;
        v29[3] = &unk_1000BA750;
        v31 = &v33;
        v32 = 0;
        v30 = v5;
        [v10 coordinateWritingItemAtURL:v8 options:0 error:&v32 byAccessor:v29];
        v11 = v32;
        if (v9)
        {
          [v8 stopAccessingSecurityScopedResource];
        }

        v12 = os_log_create("com.apple.screenshotservices", "PDF");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          sub_1000747CC();
        }
      }

      if (v34[3])
      {
        v13 = v8;
      }

      else
      {
        v13 = [(SSSScreenshot *)self _savePDFToTemporaryPathWithData:v5];

        if (v13)
        {
          v14 = +[NSFileManager defaultManager];
          v28 = 0;
          v15 = [v14 _doc_importItemAtURL:v13 toDestination:1 error:&v28];
          v16 = v28;

          objc_initWeak(&location, self);
          v20 = _NSConcreteStackBlock;
          v21 = 3221225472;
          v22 = sub_10001E540;
          v23 = &unk_1000BA778;
          objc_copyWeak(&v26, &location);
          v17 = v15;
          v24 = v17;
          v18 = v16;
          v25 = v18;
          dispatch_async(&_dispatch_main_q, &v20);

          v19 = [NSFileManager defaultManager:v20];
          [v19 removeItemAtURL:v13 error:0];

          objc_destroyWeak(&v26);
          objc_destroyWeak(&location);
        }
      }

      _Block_object_dispose(&v33, 8);
    }
  }
}

- (void)_setDocumentIsSaving:(BOOL)a3
{
  v3 = a3;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v5 = [(SSSScreenshot *)self PDFDocument];

    if (v5)
    {
      if (v3 && !self->_savedCropBoxes)
      {
        v6 = [(SSSScreenshot *)self PDFDocument];
        self->_savedCropBoxes = malloc_type_calloc([v6 pageCount], 0x20uLL, 0x1000040E0EAB150uLL);
      }

      v7 = [(SSSScreenshot *)self PDFDocument];
      v8 = [v7 pageCount];

      if (v8)
      {
        v9 = 0;
        v10 = 0;
        do
        {
          v11 = [(SSSScreenshot *)self PDFDocument:v36];
          v12 = [v11 pageAtIndex:v10];

          v13 = v12;
          if (objc_opt_respondsToSelector())
          {
            [v13 setIsSaving:v3];
          }

          savedCropBoxes = self->_savedCropBoxes;
          if (v3)
          {
            [v13 boundsForBox:1];
            p_x = &savedCropBoxes[v9].origin.x;
            *p_x = v16;
            p_x[1] = v17;
            p_x[2] = v18;
            p_x[3] = v19;
            [v13 boundsForBox:0];
            v21 = v20;
            v23 = v22;
            v24 = [(NSMutableArray *)self->_pdfModelModificationInfos objectAtIndexedSubscript:v10];
            v25 = v24;
            if (v24)
            {
              [v24 cropInfo];
              v27 = *(&v40 + 1);
              v26 = *&v40;
              v28 = *(&v41 + 1);
              v29 = *&v41;
              [v25 cropInfo];
              v30 = *(&v36 + 1);
              v31 = *&v36;
            }

            else
            {
              v40 = 0u;
              v41 = 0u;
              v30 = 0.0;
              v38 = 0u;
              v39 = 0u;
              v31 = 0.0;
              v28 = 0.0;
              v29 = 0.0;
              v36 = 0u;
              v37 = 0u;
              v27 = 0.0;
              v26 = 0.0;
            }

            v42.origin.y = v23 * v27 / v30;
            v32 = v23 * v28 / v30;
            v42.origin.x = v21 * v26 / v31;
            v42.size.width = v21 * v29 / v31;
            v42.size.height = v32;
            [v13 setBounds:1 forBox:{v42.origin.x, v23 - CGRectGetMaxY(v42), v42.size.width, v32}];
          }

          else
          {
            [v13 setBounds:1 forBox:{savedCropBoxes[v9].origin.x, savedCropBoxes[v9].origin.y, savedCropBoxes[v9].size.width, savedCropBoxes[v9].size.height}];
          }

          ++v10;
          v33 = [(SSSScreenshot *)self PDFDocument];
          v34 = [v33 pageCount];

          ++v9;
        }

        while (v34 > v10);
      }

      if (!v3)
      {
        v35 = self->_savedCropBoxes;
        if (v35)
        {
          free(v35);
          self->_savedCropBoxes = 0;
        }
      }
    }
  }
}

- (BOOL)canAutosaveToFiles
{
  v2 = [(SSSScreenshot *)self environmentDescription];
  v3 = [v2 canAutosaveToFiles];

  return v3;
}

- (BOOL)pdfCanBeConvertedToImage
{
  v2 = [(SSSScreenshot *)self PDFDocument];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 pageCount];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = 0.0;
      v8 = 0.0;
      while (1)
      {
        v9 = [v3 pageAtIndex:v6];
        [v9 boundsForBox:1];
        v11 = v10;
        v13 = v12;
        v14 = +[UIScreen mainScreen];
        [v14 scale];
        v16 = v11 * v15;
        v17 = +[UIScreen mainScreen];
        [v17 scale];
        v19 = v13 * v18;

        v7 = v7 + v19;
        v8 = fmax(v8, v16);
        v20 = v8 * v7;
        if (v8 * v7 > 50000000.0)
        {
          break;
        }

        if (v5 == ++v6)
        {
          goto LABEL_9;
        }
      }

      v22 = os_log_create("com.apple.screenshotservices", "Screenshot");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v24 = 67110144;
        v25 = 0;
        v26 = 2048;
        v27 = v7;
        v28 = 2048;
        v29 = v8;
        v30 = 2048;
        v31 = v8 * v7;
        v32 = 2048;
        v33 = 0x4187D78400000000;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "PDF to Image: canBeConverted: %u, partialHeight: %f, maxWidth: %f, size: %f, limit: %f", &v24, 0x30u);
      }

      v21 = 0;
    }

    else
    {
      v20 = 0.0;
      v8 = 0.0;
      v7 = 0.0;
LABEL_9:
      v9 = os_log_create("com.apple.screenshotservices", "Screenshot");
      v21 = 1;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v24 = 67110144;
        v25 = 1;
        v26 = 2048;
        v27 = v7;
        v28 = 2048;
        v29 = v8;
        v30 = 2048;
        v31 = v20;
        v32 = 2048;
        v33 = 0x4187D78400000000;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "PDF to Image: canBeConverted: %u, totalHeight: %f, maxWidth: %f, size: %f, limit: %f", &v24, 0x30u);
      }
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)pdfAsImage
{
  v2 = [(SSSScreenshot *)self PDFDocument];
  v3 = [v2 asImage];

  return v3;
}

- (void)deletePDFPage:(id)a3
{
  v9 = a3;
  v4 = [(SSSScreenshot *)self PDFDocument];

  if (v4)
  {
    v5 = [(SSSScreenshot *)self representation];
    v6 = [v5 screenshotPDFPageIndex:v9];

    v7 = [(SSSScreenshot *)self modelModificationInfoForState:1, v6];
    v8 = [SSSPDFPageUndoObject newPageUndoObjectWithPDFPage:v9 index:v6 modificationInfo:v7];
    [(SSSScreenshot *)self _deletePageInPDF:v8];
  }
}

- (id)_actionNameForDeletePDFPage
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"DELETE_PDF_PAGE" value:@"Delete Page" table:0];

  return v3;
}

- (void)_deletePageInPDF:(id)a3
{
  v4 = a3;
  v5 = [v4 index];
  v6 = [(SSSScreenshot *)self representation];
  [v6 screenshotDeletePDFPage:v5];

  v10 = [(SSSScreenshot *)self undoManagerForEditMode:1];
  v7 = [(SSSScreenshot *)self _actionNameForDeletePDFPage];
  [v10 setActionName:v7];

  [v10 registerUndoWithTarget:self selector:"_addPageInPDF:" object:v4];
  [(NSMutableArray *)self->_pdfModelModificationInfos removeObjectAtIndex:v5];
  [(NSMutableArray *)self->_pdfViewModificationInfos removeObjectAtIndex:v5];
  if (v5)
  {
    v8 = v5 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(SSSScreenshot *)self representation];
  [v9 screenshotShouldJumpToPDFPageIndex:v8];
}

- (void)_addPageInPDF:(id)a3
{
  v4 = a3;
  v5 = [v4 index];
  v13 = [v4 modificationInfo];
  v6 = [(SSSScreenshot *)self representation];
  v7 = [v4 page];
  [v6 screenshotInsertPDFPage:v7 pageIndex:{objc_msgSend(v4, "index")}];

  v8 = [(SSSScreenshot *)self undoManagerForEditMode:1];
  v9 = [(SSSScreenshot *)self _actionNameForDeletePDFPage];
  [v8 setActionName:v9];

  [v8 registerUndoWithTarget:self selector:"_deletePageInPDF:" object:v4];
  [(NSMutableArray *)self->_pdfModelModificationInfos insertObject:v13 atIndex:v5];
  pdfViewModificationInfos = self->_pdfViewModificationInfos;
  v11 = [v13 mutableCopy];
  [(NSMutableArray *)pdfViewModificationInfos insertObject:v11 atIndex:v5];

  v12 = [(SSSScreenshot *)self representation];
  [v12 screenshotShouldJumpToPDFPageIndex:v5];
}

- (id)itemProviderForDragItems
{
  v3 = objc_alloc_init(NSItemProvider);
  if ([(SSSScreenshot *)self lastViewEditMode])
  {
    v4 = [UTTypePDF identifier];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10001F154;
    v13[3] = &unk_1000BA7C8;
    v13[4] = self;
    [v3 registerDataRepresentationForTypeIdentifier:v4 visibility:0 loadHandler:v13];
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10001F090;
    v14[3] = &unk_1000BA7A0;
    v14[4] = self;
    [v3 registerObjectOfClass:objc_opt_class() visibility:0 loadHandler:v14];
  }

  v5 = [(SSSScreenshot *)self filename];
  [v3 setSuggestedName:v5];

  v6 = [(SSSScreenshot *)self modelModificationInfo];
  v7 = v6;
  if (v6)
  {
    [v6 cropInfo];
    v8 = v12;
    v9 = v11;
  }

  else
  {
    v8 = 0.0;
    v9 = 0.0;
  }

  [v3 setPreferredPresentationSize:{v9, v8}];

  return v3;
}

- (id)loggableDescription
{
  v3 = +[NSMutableString string];
  v4 = [(SSSScreenshot *)self modelModificationInfo];
  v5 = v4;
  if (v4)
  {
    [v4 cropInfo];
    v7 = v24;
    v6 = v23;
    v9 = v26;
    v8 = v25;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
  }

  v10 = NSStringFromCGRect(*&v6);
  v11 = [NSString stringWithFormat:@"image crop: %@ ", v10];
  [v3 appendString:v11];

  v12 = [(SSSScreenshot *)self modelModificationInfo];
  v13 = [v12 annotations];
  v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"image # of annotations: %lu ", [v13 count]);
  [v3 appendString:v14];

  v15 = [(SSSScreenshot *)self modelModificationInfo];
  [v15 vellumOpacity];
  v17 = [NSString stringWithFormat:@"image vellum opacity: %f ", v16];
  [v3 appendString:v17];

  v18 = [(SSSScreenshot *)self pdfData];

  if (v18)
  {
    v19 = [(SSSScreenshot *)self PDFDocument];
    v20 = [(SSSScreenshot *)self PDFDocument];
    v21 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"PDF %@ available with %lu pages", v19, [v20 pageCount]);
    [v3 appendString:v21];
  }

  else
  {
    [v3 appendString:@"No PDFData available"];
  }

  return v3;
}

- (void)insertIntoQuickNoteWithCompletion:(id)a3
{
  v4 = a3;
  if (!self->_linkContextClient)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v5 = qword_1000D4A20;
    v18 = qword_1000D4A20;
    if (!qword_1000D4A20)
    {
      location[0] = _NSConcreteStackBlock;
      location[1] = 3221225472;
      location[2] = sub_10001FA4C;
      location[3] = &unk_1000B9FA8;
      location[4] = &v15;
      sub_10001FA4C(location);
      v5 = v16[3];
    }

    v6 = v5;
    _Block_object_dispose(&v15, 8);
    v7 = objc_alloc_init(v5);
    linkContextClient = self->_linkContextClient;
    self->_linkContextClient = v7;
  }

  objc_initWeak(location, self);
  pdfSavingQueue = self->_pdfSavingQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001F55C;
  v11[3] = &unk_1000BA320;
  objc_copyWeak(&v13, location);
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  dispatch_async(pdfSavingQueue, v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(location);
}

- (SSSScreenshotRepresentation)representation
{
  WeakRetained = objc_loadWeakRetained(&self->_representation);

  return WeakRetained;
}

- (SSSScreenshotImageGenerator)imageGenerator
{
  WeakRetained = objc_loadWeakRetained(&self->_imageGenerator);

  return WeakRetained;
}

- (SSSScreenshotPDFDocumentGenerator)documentGenerator
{
  WeakRetained = objc_loadWeakRetained(&self->_documentGenerator);

  return WeakRetained;
}

@end