@interface _SFActivityViewController
+ (id)activeWebPageExtensionItemForURL:(id)l withPreviewImageHandler:(id)handler;
- (BOOL)_containsProviderForDownloadActivityAndGetMIMEType:(id *)type uti:(id *)uti;
- (_SFActivityViewController)initWithActivityItemProviderCollection:(id)collection applicationActivities:(id)activities sharingURL:(id)l sourceURL:(id)rL;
- (_SFActivityViewController)initWithActivityItems:(id)items applicationActivities:(id)activities sharingURL:(id)l sourceURL:(id)rL;
- (_SFActivityViewControllerDelegate)delegate;
- (_SFSafariSharingExtensionController)sharingExtensionController;
- (id)_extensionItemForExtensionActivity:(id)activity;
- (id)_javaScriptProcessingFileURLInExtension:(id)extension;
- (id)excludedActivityTypes;
- (void)_executeActivity;
- (void)_performActivity:(id)activity;
- (void)_prepareActivity:(id)activity completion:(id)completion;
- (void)_preparePrint:(id)print completion:(id)completion;
- (void)_processJavaScriptFinalizeReturnedItems:(id)items forExtension:(id)extension;
- (void)_updateActivityItems:(id)items;
- (void)_updateActivityItems:(id)items applicationActivities:(id)activities;
- (void)_updatePrintControllerWithActivityItems:(id)items;
- (void)activityDidComplete:(id)complete withReturnedItems:(id)items success:(BOOL)success;
- (void)customizationControllerCustomizationsDidChange:(id)change;
- (void)dealloc;
- (void)prepareJavaScriptExtensionItemForActivity:(id)activity;
- (void)setCustomizationController:(id)controller;
@end

@implementation _SFActivityViewController

+ (id)activeWebPageExtensionItemForURL:(id)l withPreviewImageHandler:(id)handler
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABE0];
  handlerCopy = handler;
  lCopy = l;
  v8 = objc_alloc_init(v5);
  [v8 setUserInfo:&unk_1F50241C0];
  v9 = objc_alloc(MEMORY[0x1E696ACA0]);
  v10 = [v9 initWithItem:lCopy typeIdentifier:*MEMORY[0x1E69638B8]];

  [v10 setPreviewImageHandler:handlerCopy];
  v13[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v8 setAttachments:v11];

  return v8;
}

- (_SFActivityViewController)initWithActivityItemProviderCollection:(id)collection applicationActivities:(id)activities sharingURL:(id)l sourceURL:(id)rL
{
  v51 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  activitiesCopy = activities;
  lCopy = l;
  rLCopy = rL;
  v15 = objc_alloc_init(_SFActivityItemCustomizationController);
  v16 = [collectionCopy activityItemProvidersWithCustomizationController:v15];
  v17 = [(_SFActivityViewController *)self initWithActivityItems:v16 applicationActivities:activitiesCopy sharingURL:lCopy sourceURL:rLCopy];
  v18 = v17;
  if (v17)
  {
    v35 = v15;
    v37 = rLCopy;
    v38 = lCopy;
    v39 = collectionCopy;
    v36 = v17;
    objc_storeStrong(&v17->_itemProviderCollection, collection);
    v45 = *MEMORY[0x1E69CDB10];
    v46 = @"SFSaveForLaterActivity";
    v47 = *MEMORY[0x1E69CDA70];
    v48 = @"SFToggleReaderActivity";
    v19 = *MEMORY[0x1E69CDA90];
    v49 = @"SFReloadActivity";
    v50 = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:6];
    v21 = [v20 mutableCopy];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v22 = activitiesCopy;
    v23 = [v22 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v41;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v41 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v40 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            activityType = [v27 activityType];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              activityType2 = [v27 activityType];
              [v21 addObject:activityType2];
            }
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v24);
    }

    v31 = *MEMORY[0x1E69CDAA8];
    v45 = *MEMORY[0x1E69CDB00];
    v46 = v31;
    v47 = *MEMORY[0x1E69CDAF0];
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:3];
    [v21 addObjectsFromArray:v32];

    v18 = v36;
    [(_SFActivityViewController *)v36 setActivityTypeOrder:v21];
    v33 = v36;

    collectionCopy = v39;
    rLCopy = v37;
    lCopy = v38;
    v15 = v35;
  }

  return v18;
}

- (_SFActivityViewController)initWithActivityItems:(id)items applicationActivities:(id)activities sharingURL:(id)l sourceURL:(id)rL
{
  itemsCopy = items;
  activitiesCopy = activities;
  lCopy = l;
  rLCopy = rL;
  v27.receiver = self;
  v27.super_class = _SFActivityViewController;
  v15 = [(_SFActivityViewController *)&v27 initWithActivityItems:itemsCopy applicationActivities:activitiesCopy];
  if (v15)
  {
    objc_initWeak(&location, v15);
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    safari_URLByNormalizingBlobURL = [rLCopy safari_URLByNormalizingBlobURL];
    -[_SFActivityViewController setSourceIsManaged:](v15, "setSourceIsManaged:", [mEMORY[0x1E69ADFB8] isURLManaged:safari_URLByNormalizingBlobURL]);

    objc_storeStrong(&v15->_sharingURL, l);
    [(_SFActivityViewController *)v15 _updatePrintControllerWithActivityItems:itemsCopy];
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __94___SFActivityViewController_initWithActivityItems_applicationActivities_sharingURL_sourceURL___block_invoke;
    v24 = &unk_1E8490C18;
    objc_copyWeak(&v25, &location);
    [(_SFActivityViewController *)v15 setCompletionWithItemsHandler:&v21];
    objc_storeStrong(&v15->_activityItemProviders, items);
    v18 = objc_alloc_init(_SFActivityItemCustomizationController);
    [(_SFActivityViewController *)v15 setCustomizationController:v18, v21, v22, v23, v24];

    objc_storeStrong(&v15->_initialApplicationActivities, activities);
    v19 = v15;
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v15;
}

- (void)dealloc
{
  [(_SFPrintController *)self->_printController printInteractionControllerDidFinish];
  v3.receiver = self;
  v3.super_class = _SFActivityViewController;
  [(_SFActivityViewController *)&v3 dealloc];
}

- (void)_updatePrintControllerWithActivityItems:(id)items
{
  v18 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  objc_opt_class();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          printController = [v10 printController];
          printController = self->_printController;
          if (printController != printController)
          {
            [(_SFPrintController *)printController printInteractionControllerDidFinish];
            objc_storeStrong(&self->_printController, printController);
          }

          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)activityDidComplete:(id)complete withReturnedItems:(id)items success:(BOOL)success
{
  successCopy = success;
  completeCopy = complete;
  itemsCopy = items;
  currentExtensionIdentifier = [(_SFActivityViewController *)self currentExtensionIdentifier];
  [(_SFActivityViewController *)self _processJavaScriptFinalizeReturnedItems:itemsCopy forExtension:currentExtensionIdentifier];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained activityViewController:self didCompleteActivity:completeCopy success:successCopy];
  }

  if (successCopy && [completeCopy isEqualToString:*MEMORY[0x1E69CDB00]])
  {
    v17 = 0;
    v18 = 0;
    v12 = [(_SFActivityViewController *)self _containsProviderForDownloadActivityAndGetMIMEType:&v18 uti:&v17];
    v13 = v18;
    v14 = v17;
    if (v12)
    {
      if (objc_opt_respondsToSelector())
      {
        v15 = [WeakRetained browserPersonaForActivityViewController:self];
      }

      else
      {
        v15 = 0;
      }

      mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
      [mEMORY[0x1E69C8810] _sf_didBeginDownloadWithMIMEType:v13 uti:v14 downloadType:2 promptType:0 browserPersona:v15];
    }
  }
}

- (BOOL)_containsProviderForDownloadActivityAndGetMIMEType:(id *)type uti:(id *)uti
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  activityItemProviders = [(_SFActivityViewController *)self activityItemProviders];
  v7 = [activityItemProviders countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v7)
  {
    v12 = 0;
    goto LABEL_18;
  }

  v8 = v7;
  v9 = *v21;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v21 != v9)
      {
        objc_enumerationMutation(activityItemProviders);
      }

      v11 = *(*(&v20 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        quickLookDocument = [v11 quickLookDocument];
        *type = [quickLookDocument mimeType];
        *uti = [quickLookDocument uti];

LABEL_17:
        v12 = 1;
        goto LABEL_18;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        webView = [v11 webView];
        *type = [webView _MIMEType];

        v15 = *MEMORY[0x1E6963718];
        v16 = *type;
LABEL_16:
        *uti = UTTypeCreatePreferredIdentifierForTag(v15, v16, 0);
        goto LABEL_17;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = *MEMORY[0x1E69B1F80];
        v18 = *MEMORY[0x1E69B1F80];
        *type = v17;
        v15 = *MEMORY[0x1E6963718];
        v16 = v17;
        goto LABEL_16;
      }
    }

    v8 = [activityItemProviders countByEnumeratingWithState:&v20 objects:v24 count:16];
    v12 = 0;
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_18:

  return v12;
}

- (void)_executeActivity
{
  activity = [(_SFActivityViewController *)self activity];
  activityType = [activity activityType];
  if ([activity _isExecutedInProcess])
  {
    [(_SFActivityViewController *)self prepareJavaScriptExtensionItemForActivity:activity];
  }

  if ([activityType isEqualToString:*MEMORY[0x1E69CDAA8]])
  {
    printController = self->_printController;
    if (printController)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __45___SFActivityViewController__executeActivity__block_invoke;
      v7[3] = &unk_1E848FCC0;
      v8 = activity;
      selfCopy = self;
      [(_SFPrintController *)printController preparePrintInteractionControllerForUsage:2 completion:v7];
    }

    else
    {
      [activity activityDidFinish:0];
    }
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _SFActivityViewController;
    [(_SFActivityViewController *)&v6 _executeActivity];
  }
}

- (void)_performActivity:(id)activity
{
  activityCopy = activity;
  activityType = [(SFSaveToFilesActivity *)activityCopy activityType];
  v6 = [activityType isEqualToString:*MEMORY[0x1E69CDB00]];

  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXDownloads();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D4644000, v7, OS_LOG_TYPE_INFO, "Performing SFSaveToFilesActivity", buf, 2u);
    }

    v8 = [[SFSaveToFilesActivity alloc] initWithActivityItemProviderCollection:self->_itemProviderCollection customizationController:self->_customizationController];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      -[SFSaveToFilesActivity setSupportsDownloads:](v8, "setSupportsDownloads:", [WeakRetained activityViewControllerSupportsDownloads:self]);
    }
  }

  else
  {
    v8 = activityCopy;
  }

  v10.receiver = self;
  v10.super_class = _SFActivityViewController;
  [(_SFActivityViewController *)&v10 _performActivity:v8];
}

- (void)_prepareActivity:(id)activity completion:(id)completion
{
  activityCopy = activity;
  completionCopy = completion;
  activityType = [activityCopy activityType];
  if (([activityType isEqualToString:*MEMORY[0x1E69CDAF0]] & 1) != 0 || objc_msgSend(activityType, "isEqualToString:", *MEMORY[0x1E69CDAB8]))
  {
    [(_SFActivityViewController *)self _preparePrint:activityCopy completion:completionCopy];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained activityViewController:self prepareActivity:activityCopy completion:completionCopy];
    }

    else if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (void)_preparePrint:(id)print completion:(id)completion
{
  printCopy = print;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = 1;
  }

  else
  {
    printInteractionController = [(_SFPrintController *)self->_printController printInteractionController];
    [printCopy setPrintInteractionController:printInteractionController];

    v8 = 0;
  }

  printController = self->_printController;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54___SFActivityViewController__preparePrint_completion___block_invoke;
  v13[3] = &unk_1E8490C40;
  v14 = printCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = printCopy;
  [(_SFPrintController *)printController preparePrintInteractionControllerForUsage:v8 completion:v13];
}

- (void)_updateActivityItems:(id)items
{
  itemsCopy = items;
  customizationController = [(_SFActivityViewController *)self customizationController];
  selectedContentType = [customizationController selectedContentType];

  if (selectedContentType)
  {
    initialApplicationActivities = 0;
  }

  else
  {
    initialApplicationActivities = self->_initialApplicationActivities;
  }

  v8 = initialApplicationActivities;
  [(_SFActivityViewController *)self _updateActivityItems:itemsCopy applicationActivities:v8];
  activityItemProviders = self->_activityItemProviders;
  self->_activityItemProviders = itemsCopy;
  v10 = itemsCopy;
}

- (void)_updateActivityItems:(id)items applicationActivities:(id)activities
{
  v7.receiver = self;
  v7.super_class = _SFActivityViewController;
  itemsCopy = items;
  [(_SFActivityViewController *)&v7 _updateActivityItems:itemsCopy applicationActivities:activities];
  [(_SFActivityViewController *)self _updatePrintControllerWithActivityItems:itemsCopy, v7.receiver, v7.super_class];
}

- (id)excludedActivityTypes
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = _SFActivityViewController;
  excludedActivityTypes = [(_SFActivityViewController *)&v9 excludedActivityTypes];
  v3 = excludedActivityTypes;
  v4 = MEMORY[0x1E695E0F0];
  if (excludedActivityTypes)
  {
    v4 = excludedActivityTypes;
  }

  v5 = v4;

  v10[0] = *MEMORY[0x1E69CDA68];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v7 = [v5 safari_arrayByAddingObjectsFromArrayIfNotDuplicates:v6];

  return v7;
}

- (void)prepareJavaScriptExtensionItemForActivity:(id)activity
{
  activityCopy = activity;
  [(_SFActivityViewController *)self setCurrentExtensionIdentifier:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = [(_SFActivityViewController *)self _extensionItemForExtensionActivity:activityCopy];
    if (v4)
    {
      [activityCopy _injectedJavaScriptResult:v4];
      applicationExtension = [activityCopy applicationExtension];
      identifier = [applicationExtension identifier];

      [(_SFActivityViewController *)self setCurrentExtensionIdentifier:identifier];
    }
  }
}

- (id)_javaScriptProcessingFileURLInExtension:(id)extension
{
  extensionCopy = extension;
  attributes = [extensionCopy attributes];
  v5 = [attributes safari_stringForKey:@"NSExtensionJavaScriptPreprocessingFile"];
  if (v5)
  {
    _extensionBundle = [extensionCopy _extensionBundle];
    v7 = [_extensionBundle URLForResource:v5 withExtension:@"js"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_extensionItemForExtensionActivity:(id)activity
{
  v17[1] = *MEMORY[0x1E69E9840];
  applicationExtension = [activity applicationExtension];
  v5 = [(_SFActivityViewController *)self _javaScriptProcessingFileURLInExtension:applicationExtension];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:v5 encoding:4 error:0];
    if ([v6 length])
    {
      v7 = objc_alloc_init(MEMORY[0x1E696ABE0]);
      v8 = objc_alloc_init(MEMORY[0x1E696ACA0]);
      v17[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
      [v7 setAttachments:v9];

      WeakRetained = objc_loadWeakRetained(&self->_sharingExtensionController);
      identifier = [applicationExtension identifier];
      [WeakRetained prepareJavaScriptWorldForSharingExtension:identifier javaScript:v6];

      v12 = *MEMORY[0x1E6963878];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __64___SFActivityViewController__extensionItemForExtensionActivity___block_invoke;
      v14[3] = &unk_1E8490230;
      v15 = applicationExtension;
      selfCopy = self;
      [v8 registerItemForTypeIdentifier:v12 loadHandler:v14];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_processJavaScriptFinalizeReturnedItems:(id)items forExtension:(id)extension
{
  val = self;
  v41 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  extensionCopy = extension;
  v7 = [itemsCopy count];
  v26 = extensionCopy;
  if (extensionCopy && v7)
  {
    objc_initWeak(&location, val);
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = itemsCopy;
    v8 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v8)
    {
      v9 = 0;
      v23 = *v35;
      v24 = v8;
      v10 = *MEMORY[0x1E6982F68];
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v35 != v23)
          {
            objc_enumerationMutation(obj);
          }

          attachments = [*(*(&v34 + 1) + 8 * i) attachments];
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v12 = attachments;
          v13 = [v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
          if (v13)
          {
            v14 = *v31;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v31 != v14)
                {
                  objc_enumerationMutation(v12);
                }

                v16 = *(*(&v30 + 1) + 8 * j);
                identifier = [v10 identifier];
                v18 = [v16 hasItemConformingToTypeIdentifier:identifier];

                if (v18)
                {
                  identifier2 = [v10 identifier];
                  v27[0] = MEMORY[0x1E69E9820];
                  v27[1] = 3221225472;
                  v27[2] = __82___SFActivityViewController__processJavaScriptFinalizeReturnedItems_forExtension___block_invoke;
                  v27[3] = &unk_1E8490C90;
                  objc_copyWeak(&v29, &location);
                  v28 = v26;
                  [v16 loadItemForTypeIdentifier:identifier2 options:0 completionHandler:v27];

                  objc_destroyWeak(&v29);
                  v9 = 1;
                }
              }

              v13 = [v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
            }

            while (v13);
          }
        }

        v24 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v24);

      if (v9)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    WeakRetained = objc_loadWeakRetained(&val->_sharingExtensionController);
    [WeakRetained finalizeJavaScriptForSharingExtension:v26 arguments:MEMORY[0x1E695E0F8]];

LABEL_23:
    objc_destroyWeak(&location);
  }
}

- (void)setCustomizationController:(id)controller
{
  objc_storeStrong(&self->_customizationController, controller);
  controllerCopy = controller;
  [(_SFActivityViewController *)self setObjectManipulationDelegate:controllerCopy];
}

- (void)customizationControllerCustomizationsDidChange:(id)change
{
  itemProviderCollection = self->_itemProviderCollection;
  customizationController = [(_SFActivityViewController *)self customizationController];
  v25 = [(_SFActivityItemProviderCollection *)itemProviderCollection activityItemProvidersWithCustomizationController:customizationController];

  v6 = MEMORY[0x1E695DFA8];
  excludedActivityTypes = [(_SFActivityViewController *)self excludedActivityTypes];
  v8 = [v6 setWithArray:excludedActivityTypes];

  activityTypesExcludedDueToSelectedCustomization = self->_activityTypesExcludedDueToSelectedCustomization;
  if (activityTypesExcludedDueToSelectedCustomization)
  {
    v10 = activityTypesExcludedDueToSelectedCustomization;
  }

  else
  {
    v10 = [MEMORY[0x1E695DFA8] set];
  }

  v11 = self->_activityTypesExcludedDueToSelectedCustomization;
  self->_activityTypesExcludedDueToSelectedCustomization = v10;

  [v8 minusSet:self->_activityTypesExcludedDueToSelectedCustomization];
  allObjects = [v8 allObjects];
  [(_SFActivityViewController *)self setExcludedActivityTypes:allObjects];

  [(NSMutableSet *)self->_activityTypesExcludedDueToSelectedCustomization removeAllObjects];
  if ([v25 count] == 1)
  {
    firstObject = [v25 firstObject];
    excludedActivityTypes2 = [(_SFActivityViewController *)self excludedActivityTypes];
    v15 = excludedActivityTypes2;
    v16 = MEMORY[0x1E695E0F0];
    if (excludedActivityTypes2)
    {
      v16 = excludedActivityTypes2;
    }

    v17 = v16;

    excludedActivityTypes3 = [firstObject excludedActivityTypes];
    v19 = [excludedActivityTypes3 mutableCopy];
    v20 = self->_activityTypesExcludedDueToSelectedCustomization;
    self->_activityTypesExcludedDueToSelectedCustomization = v19;

    v21 = self->_activityTypesExcludedDueToSelectedCustomization;
    v22 = [MEMORY[0x1E695DFD8] setWithArray:v17];
    [(NSMutableSet *)v21 minusSet:v22];

    allObjects2 = [(NSMutableSet *)self->_activityTypesExcludedDueToSelectedCustomization allObjects];
    v24 = [v17 safari_arrayByAddingObjectsFromArrayIfNotDuplicates:allObjects2];

    [(_SFActivityViewController *)self setExcludedActivityTypes:v24];
  }

  [(_SFActivityViewController *)self _updateActivityItems:v25];
}

- (_SFSafariSharingExtensionController)sharingExtensionController
{
  WeakRetained = objc_loadWeakRetained(&self->_sharingExtensionController);

  return WeakRetained;
}

- (_SFActivityViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end