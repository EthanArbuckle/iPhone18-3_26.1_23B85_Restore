@interface _SFActivityViewController
+ (id)activeWebPageExtensionItemForURL:(id)a3 withPreviewImageHandler:(id)a4;
- (BOOL)_containsProviderForDownloadActivityAndGetMIMEType:(id *)a3 uti:(id *)a4;
- (_SFActivityViewController)initWithActivityItemProviderCollection:(id)a3 applicationActivities:(id)a4 sharingURL:(id)a5 sourceURL:(id)a6;
- (_SFActivityViewController)initWithActivityItems:(id)a3 applicationActivities:(id)a4 sharingURL:(id)a5 sourceURL:(id)a6;
- (_SFActivityViewControllerDelegate)delegate;
- (_SFSafariSharingExtensionController)sharingExtensionController;
- (id)_extensionItemForExtensionActivity:(id)a3;
- (id)_javaScriptProcessingFileURLInExtension:(id)a3;
- (id)excludedActivityTypes;
- (void)_executeActivity;
- (void)_performActivity:(id)a3;
- (void)_prepareActivity:(id)a3 completion:(id)a4;
- (void)_preparePrint:(id)a3 completion:(id)a4;
- (void)_processJavaScriptFinalizeReturnedItems:(id)a3 forExtension:(id)a4;
- (void)_updateActivityItems:(id)a3;
- (void)_updateActivityItems:(id)a3 applicationActivities:(id)a4;
- (void)_updatePrintControllerWithActivityItems:(id)a3;
- (void)activityDidComplete:(id)a3 withReturnedItems:(id)a4 success:(BOOL)a5;
- (void)customizationControllerCustomizationsDidChange:(id)a3;
- (void)dealloc;
- (void)prepareJavaScriptExtensionItemForActivity:(id)a3;
- (void)setCustomizationController:(id)a3;
@end

@implementation _SFActivityViewController

+ (id)activeWebPageExtensionItemForURL:(id)a3 withPreviewImageHandler:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABE0];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 setUserInfo:&unk_1F50241C0];
  v9 = objc_alloc(MEMORY[0x1E696ACA0]);
  v10 = [v9 initWithItem:v7 typeIdentifier:*MEMORY[0x1E69638B8]];

  [v10 setPreviewImageHandler:v6];
  v13[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v8 setAttachments:v11];

  return v8;
}

- (_SFActivityViewController)initWithActivityItemProviderCollection:(id)a3 applicationActivities:(id)a4 sharingURL:(id)a5 sourceURL:(id)a6
{
  v51 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = objc_alloc_init(_SFActivityItemCustomizationController);
  v16 = [v11 activityItemProvidersWithCustomizationController:v15];
  v17 = [(_SFActivityViewController *)self initWithActivityItems:v16 applicationActivities:v12 sharingURL:v13 sourceURL:v14];
  v18 = v17;
  if (v17)
  {
    v35 = v15;
    v37 = v14;
    v38 = v13;
    v39 = v11;
    v36 = v17;
    objc_storeStrong(&v17->_itemProviderCollection, a3);
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
    v22 = v12;
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
            v28 = [v27 activityType];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v30 = [v27 activityType];
              [v21 addObject:v30];
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

    v11 = v39;
    v14 = v37;
    v13 = v38;
    v15 = v35;
  }

  return v18;
}

- (_SFActivityViewController)initWithActivityItems:(id)a3 applicationActivities:(id)a4 sharingURL:(id)a5 sourceURL:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v27.receiver = self;
  v27.super_class = _SFActivityViewController;
  v15 = [(_SFActivityViewController *)&v27 initWithActivityItems:v11 applicationActivities:v12];
  if (v15)
  {
    objc_initWeak(&location, v15);
    v16 = [MEMORY[0x1E69ADFB8] sharedConnection];
    v17 = [v14 safari_URLByNormalizingBlobURL];
    -[_SFActivityViewController setSourceIsManaged:](v15, "setSourceIsManaged:", [v16 isURLManaged:v17]);

    objc_storeStrong(&v15->_sharingURL, a5);
    [(_SFActivityViewController *)v15 _updatePrintControllerWithActivityItems:v11];
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __94___SFActivityViewController_initWithActivityItems_applicationActivities_sharingURL_sourceURL___block_invoke;
    v24 = &unk_1E8490C18;
    objc_copyWeak(&v25, &location);
    [(_SFActivityViewController *)v15 setCompletionWithItemsHandler:&v21];
    objc_storeStrong(&v15->_activityItemProviders, a3);
    v18 = objc_alloc_init(_SFActivityItemCustomizationController);
    [(_SFActivityViewController *)v15 setCustomizationController:v18, v21, v22, v23, v24];

    objc_storeStrong(&v15->_initialApplicationActivities, a4);
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

- (void)_updatePrintControllerWithActivityItems:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
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
          v11 = [v10 printController];
          printController = self->_printController;
          if (printController != v11)
          {
            [(_SFPrintController *)printController printInteractionControllerDidFinish];
            objc_storeStrong(&self->_printController, v11);
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

- (void)activityDidComplete:(id)a3 withReturnedItems:(id)a4 success:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(_SFActivityViewController *)self currentExtensionIdentifier];
  [(_SFActivityViewController *)self _processJavaScriptFinalizeReturnedItems:v9 forExtension:v10];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained activityViewController:self didCompleteActivity:v8 success:v5];
  }

  if (v5 && [v8 isEqualToString:*MEMORY[0x1E69CDB00]])
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

      v16 = [MEMORY[0x1E69C8810] sharedLogger];
      [v16 _sf_didBeginDownloadWithMIMEType:v13 uti:v14 downloadType:2 promptType:0 browserPersona:v15];
    }
  }
}

- (BOOL)_containsProviderForDownloadActivityAndGetMIMEType:(id *)a3 uti:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [(_SFActivityViewController *)self activityItemProviders];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v20 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v11 quickLookDocument];
        *a3 = [v13 mimeType];
        *a4 = [v13 uti];

LABEL_17:
        v12 = 1;
        goto LABEL_18;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [v11 webView];
        *a3 = [v14 _MIMEType];

        v15 = *MEMORY[0x1E6963718];
        v16 = *a3;
LABEL_16:
        *a4 = UTTypeCreatePreferredIdentifierForTag(v15, v16, 0);
        goto LABEL_17;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = *MEMORY[0x1E69B1F80];
        v18 = *MEMORY[0x1E69B1F80];
        *a3 = v17;
        v15 = *MEMORY[0x1E6963718];
        v16 = v17;
        goto LABEL_16;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
  v3 = [(_SFActivityViewController *)self activity];
  v4 = [v3 activityType];
  if ([v3 _isExecutedInProcess])
  {
    [(_SFActivityViewController *)self prepareJavaScriptExtensionItemForActivity:v3];
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69CDAA8]])
  {
    printController = self->_printController;
    if (printController)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __45___SFActivityViewController__executeActivity__block_invoke;
      v7[3] = &unk_1E848FCC0;
      v8 = v3;
      v9 = self;
      [(_SFPrintController *)printController preparePrintInteractionControllerForUsage:2 completion:v7];
    }

    else
    {
      [v3 activityDidFinish:0];
    }
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _SFActivityViewController;
    [(_SFActivityViewController *)&v6 _executeActivity];
  }
}

- (void)_performActivity:(id)a3
{
  v4 = a3;
  v5 = [(SFSaveToFilesActivity *)v4 activityType];
  v6 = [v5 isEqualToString:*MEMORY[0x1E69CDB00]];

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
    v8 = v4;
  }

  v10.receiver = self;
  v10.super_class = _SFActivityViewController;
  [(_SFActivityViewController *)&v10 _performActivity:v8];
}

- (void)_prepareActivity:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v9 activityType];
  if (([v7 isEqualToString:*MEMORY[0x1E69CDAF0]] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E69CDAB8]))
  {
    [(_SFActivityViewController *)self _preparePrint:v9 completion:v6];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained activityViewController:self prepareActivity:v9 completion:v6];
    }

    else if (v6)
    {
      v6[2](v6);
    }
  }
}

- (void)_preparePrint:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = 1;
  }

  else
  {
    v9 = [(_SFPrintController *)self->_printController printInteractionController];
    [v6 setPrintInteractionController:v9];

    v8 = 0;
  }

  printController = self->_printController;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54___SFActivityViewController__preparePrint_completion___block_invoke;
  v13[3] = &unk_1E8490C40;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  [(_SFPrintController *)printController preparePrintInteractionControllerForUsage:v8 completion:v13];
}

- (void)_updateActivityItems:(id)a3
{
  v4 = a3;
  v5 = [(_SFActivityViewController *)self customizationController];
  v6 = [v5 selectedContentType];

  if (v6)
  {
    initialApplicationActivities = 0;
  }

  else
  {
    initialApplicationActivities = self->_initialApplicationActivities;
  }

  v8 = initialApplicationActivities;
  [(_SFActivityViewController *)self _updateActivityItems:v4 applicationActivities:v8];
  activityItemProviders = self->_activityItemProviders;
  self->_activityItemProviders = v4;
  v10 = v4;
}

- (void)_updateActivityItems:(id)a3 applicationActivities:(id)a4
{
  v7.receiver = self;
  v7.super_class = _SFActivityViewController;
  v6 = a3;
  [(_SFActivityViewController *)&v7 _updateActivityItems:v6 applicationActivities:a4];
  [(_SFActivityViewController *)self _updatePrintControllerWithActivityItems:v6, v7.receiver, v7.super_class];
}

- (id)excludedActivityTypes
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = _SFActivityViewController;
  v2 = [(_SFActivityViewController *)&v9 excludedActivityTypes];
  v3 = v2;
  v4 = MEMORY[0x1E695E0F0];
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v10[0] = *MEMORY[0x1E69CDA68];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v7 = [v5 safari_arrayByAddingObjectsFromArrayIfNotDuplicates:v6];

  return v7;
}

- (void)prepareJavaScriptExtensionItemForActivity:(id)a3
{
  v7 = a3;
  [(_SFActivityViewController *)self setCurrentExtensionIdentifier:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = [(_SFActivityViewController *)self _extensionItemForExtensionActivity:v7];
    if (v4)
    {
      [v7 _injectedJavaScriptResult:v4];
      v5 = [v7 applicationExtension];
      v6 = [v5 identifier];

      [(_SFActivityViewController *)self setCurrentExtensionIdentifier:v6];
    }
  }
}

- (id)_javaScriptProcessingFileURLInExtension:(id)a3
{
  v3 = a3;
  v4 = [v3 attributes];
  v5 = [v4 safari_stringForKey:@"NSExtensionJavaScriptPreprocessingFile"];
  if (v5)
  {
    v6 = [v3 _extensionBundle];
    v7 = [v6 URLForResource:v5 withExtension:@"js"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_extensionItemForExtensionActivity:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = [a3 applicationExtension];
  v5 = [(_SFActivityViewController *)self _javaScriptProcessingFileURLInExtension:v4];
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
      v11 = [v4 identifier];
      [WeakRetained prepareJavaScriptWorldForSharingExtension:v11 javaScript:v6];

      v12 = *MEMORY[0x1E6963878];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __64___SFActivityViewController__extensionItemForExtensionActivity___block_invoke;
      v14[3] = &unk_1E8490230;
      v15 = v4;
      v16 = self;
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

- (void)_processJavaScriptFinalizeReturnedItems:(id)a3 forExtension:(id)a4
{
  val = self;
  v41 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  v26 = v6;
  if (v6 && v7)
  {
    objc_initWeak(&location, val);
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v5;
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

          v11 = [*(*(&v34 + 1) + 8 * i) attachments];
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v12 = v11;
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
                v17 = [v10 identifier];
                v18 = [v16 hasItemConformingToTypeIdentifier:v17];

                if (v18)
                {
                  v19 = [v10 identifier];
                  v27[0] = MEMORY[0x1E69E9820];
                  v27[1] = 3221225472;
                  v27[2] = __82___SFActivityViewController__processJavaScriptFinalizeReturnedItems_forExtension___block_invoke;
                  v27[3] = &unk_1E8490C90;
                  objc_copyWeak(&v29, &location);
                  v28 = v26;
                  [v16 loadItemForTypeIdentifier:v19 options:0 completionHandler:v27];

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

- (void)setCustomizationController:(id)a3
{
  objc_storeStrong(&self->_customizationController, a3);
  v5 = a3;
  [(_SFActivityViewController *)self setObjectManipulationDelegate:v5];
}

- (void)customizationControllerCustomizationsDidChange:(id)a3
{
  itemProviderCollection = self->_itemProviderCollection;
  v5 = [(_SFActivityViewController *)self customizationController];
  v25 = [(_SFActivityItemProviderCollection *)itemProviderCollection activityItemProvidersWithCustomizationController:v5];

  v6 = MEMORY[0x1E695DFA8];
  v7 = [(_SFActivityViewController *)self excludedActivityTypes];
  v8 = [v6 setWithArray:v7];

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
  v12 = [v8 allObjects];
  [(_SFActivityViewController *)self setExcludedActivityTypes:v12];

  [(NSMutableSet *)self->_activityTypesExcludedDueToSelectedCustomization removeAllObjects];
  if ([v25 count] == 1)
  {
    v13 = [v25 firstObject];
    v14 = [(_SFActivityViewController *)self excludedActivityTypes];
    v15 = v14;
    v16 = MEMORY[0x1E695E0F0];
    if (v14)
    {
      v16 = v14;
    }

    v17 = v16;

    v18 = [v13 excludedActivityTypes];
    v19 = [v18 mutableCopy];
    v20 = self->_activityTypesExcludedDueToSelectedCustomization;
    self->_activityTypesExcludedDueToSelectedCustomization = v19;

    v21 = self->_activityTypesExcludedDueToSelectedCustomization;
    v22 = [MEMORY[0x1E695DFD8] setWithArray:v17];
    [(NSMutableSet *)v21 minusSet:v22];

    v23 = [(NSMutableSet *)self->_activityTypesExcludedDueToSelectedCustomization allObjects];
    v24 = [v17 safari_arrayByAddingObjectsFromArrayIfNotDuplicates:v23];

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