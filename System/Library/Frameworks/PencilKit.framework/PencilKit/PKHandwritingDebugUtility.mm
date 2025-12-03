@interface PKHandwritingDebugUtility
+ (id)lassoDrawingFromTiledView:(id)view;
+ (id)localeIdentifiersFromDrawings:(id)drawings;
+ (void)openAppleFeedbackAssistantWithAttachments:(id)attachments;
+ (void)openTapToRadarWithAttachments:(id)attachments title:(id)title;
+ (void)openURL:(id)l;
+ (void)presentHandwritingDebugViewFromViewController:(id)controller allDrawings:(id)drawings tiledView:(id)view;
+ (void)submitFeedbackWithAttachments:(id)attachments title:(id)title;
@end

@implementation PKHandwritingDebugUtility

+ (id)lassoDrawingFromTiledView:(id)view
{
  viewCopy = view;
  v4 = viewCopy;
  if (viewCopy)
  {
    selectionController = [viewCopy selectionController];
    if (!selectionController)
    {
      v8 = 0;
      v15 = 0;
LABEL_7:

      goto LABEL_9;
    }

    v6 = selectionController[16];

    if (v6)
    {
      selectionController2 = [v4 selectionController];
      v8 = selectionController2;
      if (selectionController2)
      {
        v9 = *(selectionController2 + 128);
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
      v11 = [PKDrawing alloc];
      strokes = [v10 strokes];
      array = [strokes array];
      drawing = [v10 drawing];
      v15 = [(PKDrawing *)v11 initWithStrokes:array fromDrawing:drawing];

      goto LABEL_7;
    }
  }

  v15 = 0;
LABEL_9:

  return v15;
}

+ (id)localeIdentifiersFromDrawings:(id)drawings
{
  v31 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  drawingsCopy = drawings;
  v4 = [drawingsCopy countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(drawingsCopy);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        recognitionSession = [v8 recognitionSession];

        if (recognitionSession)
        {
          recognitionSession2 = [v8 recognitionSession];
          preferredLocales = [recognitionSession2 preferredLocales];

          goto LABEL_11;
        }
      }

      v5 = [drawingsCopy countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  preferredLocales = 0;
LABEL_11:

  array = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = preferredLocales;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        localeIdentifier = [*(*(&v21 + 1) + 8 * j) localeIdentifier];
        [array addObject:localeIdentifier];
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:array];

  return v19;
}

+ (void)presentHandwritingDebugViewFromViewController:(id)controller allDrawings:(id)drawings tiledView:(id)view
{
  v54[2] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  drawingsCopy = drawings;
  viewCopy = view;
  [viewCopy frame];
  Width = CGRectGetWidth(v55);
  v12 = [self localeIdentifiersFromDrawings:drawingsCopy];
  v53[0] = @"viewWidth";
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:Width];
  v53[1] = @"localeIdentifiers";
  v54[0] = v13;
  v54[1] = v12;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:2];

  v15 = [self lassoDrawingFromTiledView:viewCopy];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__PKHandwritingDebugUtility_presentHandwritingDebugViewFromViewController_allDrawings_tiledView___block_invoke;
  aBlock[3] = &unk_1E82D7EC0;
  v16 = v14;
  v51 = v16;
  v17 = controllerCopy;
  v52 = v17;
  v18 = _Block_copy(aBlock);
  v19 = v18;
  if (v15)
  {
    v20 = MEMORY[0x1E69DC650];
    v21 = _PencilKitBundle();
    v22 = [v21 localizedStringForKey:@"Handwriting Feedback" value:@"Handwriting Feedback" table:@"Localizable"];
    _PencilKitBundle();
    v23 = v41 = v12;
    [v23 localizedStringForKey:@"Do you want to include only your current selection or all drawings from this note?" value:@"Do you want to include only your current selection or all drawings from this note?" table:@"Localizable"];
    v24 = v40 = v16;
    v25 = [v20 alertControllerWithTitle:v22 message:v24 preferredStyle:1];

    v26 = MEMORY[0x1E69DC648];
    v27 = _PencilKitBundle();
    v28 = [v27 localizedStringForKey:@"Include Selection Only" value:@"Include Selection Only" table:@"Localizable"];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __97__PKHandwritingDebugUtility_presentHandwritingDebugViewFromViewController_allDrawings_tiledView___block_invoke_2;
    v47[3] = &unk_1E82D7EE8;
    v29 = v19;
    v49 = v29;
    v48 = v15;
    v30 = [v26 actionWithTitle:v28 style:0 handler:v47];
    [v25 addAction:v30];

    v31 = MEMORY[0x1E69DC648];
    v32 = _PencilKitBundle();
    v33 = [v32 localizedStringForKey:@"Include All Drawings" value:@"Include All Drawings" table:@"Localizable"];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __97__PKHandwritingDebugUtility_presentHandwritingDebugViewFromViewController_allDrawings_tiledView___block_invoke_3;
    v44[3] = &unk_1E82D7EE8;
    v46 = v29;
    v45 = drawingsCopy;
    v34 = [v31 actionWithTitle:v33 style:0 handler:v44];
    [v25 addAction:v34];

    v35 = MEMORY[0x1E69DC648];
    v36 = _PencilKitBundle();
    v37 = [v36 localizedStringForKey:@"Cancel handwriting feedback" value:@"Cancel" table:@"Localizable"];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __97__PKHandwritingDebugUtility_presentHandwritingDebugViewFromViewController_allDrawings_tiledView___block_invoke_4;
    v42[3] = &unk_1E82D7F10;
    v43 = v25;
    v38 = v25;
    v39 = [v35 actionWithTitle:v37 style:1 handler:v42];
    [v38 addAction:v39];

    v12 = v41;
    v16 = v40;

    [v17 presentViewController:v38 animated:1 completion:0];
  }

  else
  {
    (*(v18 + 2))(v18, drawingsCopy);
  }
}

void __97__PKHandwritingDebugUtility_presentHandwritingDebugViewFromViewController_allDrawings_tiledView___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [[PKHandwritingDataCollectionViewController alloc] initWithDrawings:v3 metadata:*(a1 + 32)];

  v4 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];
  [v4 setModalPresentationStyle:2];
  [*(a1 + 40) presentViewController:v4 animated:1 completion:0];
}

void __97__PKHandwritingDebugUtility_presentHandwritingDebugViewFromViewController_allDrawings_tiledView___block_invoke_2(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v3[0] = *(a1 + 32);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  (*(v1 + 16))(v1, v2);
}

+ (void)submitFeedbackWithAttachments:(id)attachments title:(id)title
{
  attachmentsCopy = attachments;
  titleCopy = title;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v8 = [standardUserDefaults BOOLForKey:@"PKShouldForceFeedbackAssistant"];

  if (v8 & 1) == 0 && (os_variant_has_internal_diagnostics())
  {
    [self openTapToRadarWithAttachments:attachmentsCopy title:titleCopy];
  }

  else
  {
    [self openAppleFeedbackAssistantWithAttachments:attachmentsCopy];
  }
}

+ (void)openTapToRadarWithAttachments:(id)attachments title:(id)title
{
  attachmentsCopy = attachments;
  titleCopy = title;
  v6 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v6 setScheme:@"tap-to-radar"];
  [v6 setHost:@"new"];
  array = [MEMORY[0x1E695DF70] array];
  v8 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"ComponentName" value:@"Handwriting"];
  [array addObject:v8];

  v9 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"ComponentVersion" value:@"iOS"];
  [array addObject:v9];

  v10 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"ComponentID" value:@"391023"];
  [array addObject:v10];

  v11 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"AutoDiagnostics" value:@"1"];
  [array addObject:v11];

  v30 = titleCopy;
  v12 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Title" value:titleCopy];
  [array addObject:v12];

  v13 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Keywords" value:@"852187"];
  [array addObject:v13];

  v14 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Classification" value:@"Other Bug"];
  [array addObject:v14];

  v15 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Reproducibility" value:@"Not Applicable"];
  [array addObject:v15];

  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  if ([attachmentsCopy count])
  {
    v18 = 0;
    do
    {
      v19 = [attachmentsCopy objectAtIndexedSubscript:v18];
      path = [v19 path];

      pathExtension = [path pathExtension];
      v22 = [pathExtension compare:@"png" options:1];

      if (v22)
      {
        v23 = array2;
      }

      else
      {
        v23 = array3;
      }

      [v23 addObject:path];

      ++v18;
    }

    while ([attachmentsCopy count] > v18);
  }

  if ([array3 count])
  {
    v24 = [array3 componentsJoinedByString:{@", "}];
    v25 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Screenshot" value:v24];
    [array addObject:v25];
  }

  if ([array2 count])
  {
    v26 = [array2 componentsJoinedByString:{@", "}];
    v27 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Attachments" value:v26];
    [array addObject:v27];
  }

  [v6 setQueryItems:array];
  v28 = [v6 URL];
  [self openURL:v28];
}

+ (void)openAppleFeedbackAssistantWithAttachments:(id)attachments
{
  v28 = *MEMORY[0x1E69E9840];
  attachmentsCopy = attachments;
  array = [MEMORY[0x1E695DF70] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = attachmentsCopy;
  v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        pathComponents = [v9 pathComponents];
        lastObject = [pathComponents lastObject];

        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attach[%@]", lastObject];
        v13 = MEMORY[0x1E696AEC0];
        path = [v9 path];
        v15 = [v13 stringWithFormat:@"%@", path];

        v16 = [MEMORY[0x1E696AF60] queryItemWithName:v12 value:v15];
        [array addObject:v16];
      }

      v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  v17 = [MEMORY[0x1E696AF60] queryItemWithName:@"answers[:area]" value:@"seedios:notes"];
  [array addObject:v17];

  v18 = [MEMORY[0x1E696AF60] queryItemWithName:@"answers[:handwriting_sample]" value:@"Yes"];
  [array addObject:v18];

  v19 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v19 setScheme:@"applefeedback"];
  [v19 setHost:@"new"];
  [v19 setQueryItems:array];
  v20 = [v19 URL];
  [self openURL:v20];
}

+ (void)openURL:(id)l
{
  lCopy = l;
  nSClassFromString(&cfstr_Uiapplication.isa) = [NSClassFromString(&cfstr_Uiapplication.isa) sharedApplication];
  v4 = nSClassFromString(&cfstr_Uiapplication.isa);
  if (nSClassFromString(&cfstr_Uiapplication.isa))
  {
    v5 = MEMORY[0x1E695DF50];
    v6 = [nSClassFromString(&cfstr_Uiapplication.isa) methodSignatureForSelector:sel_openURL_options_completionHandler_];
    v7 = [v5 invocationWithMethodSignature:v6];

    [v7 setSelector:sel_openURL_options_completionHandler_];
    [v7 setArgument:&lCopy atIndex:2];
    [v7 invokeWithTarget:v4];
  }
}

@end