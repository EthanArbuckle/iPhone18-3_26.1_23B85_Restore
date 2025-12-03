@interface _SFPrintActivityItemProvider
- (NSItemProvider)pdfItemProvider;
- (_SFPrintActivityItemProvider)initWithPrintController:(id)controller webView:(id)view;
- (id)activityViewController:(id)controller itemsForActivityType:(id)type;
- (id)activityViewControllerLinkMetadata:(id)metadata;
- (id)activityViewControllerPlaceholderItems:(id)items;
- (id)item;
@end

@implementation _SFPrintActivityItemProvider

- (_SFPrintActivityItemProvider)initWithPrintController:(id)controller webView:(id)view
{
  controllerCopy = controller;
  viewCopy = view;
  v9 = objc_opt_new();
  v14.receiver = self;
  v14.super_class = _SFPrintActivityItemProvider;
  v10 = [(_SFActivityItemProvider *)&v14 initWithPlaceholderItem:v9 URL:0 pageTitle:0 webView:viewCopy];

  if (v10 && [controllerCopy setUpPrintController])
  {
    objc_storeStrong(&v10->_printController, controller);
    v11 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E69CDA90]];
    [(_SFActivityItemProvider *)v10 setExcludedActivityTypes:v11];

    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)item
{
  printPageRenderer = self->_printPageRenderer;
  if (!printPageRenderer)
  {
    [(_SFPrintController *)self->_printController updatePrintInfo];
    printRenderer = [(_SFPrintController *)self->_printController printRenderer];
    v5 = self->_printPageRenderer;
    self->_printPageRenderer = printRenderer;

    printPageRenderer = self->_printPageRenderer;
  }

  return printPageRenderer;
}

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (self->_canVendPDFRepresentation)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v5 = getLPLinkMetadataClass_softClass_0;
    v25 = getLPLinkMetadataClass_softClass_0;
    if (!getLPLinkMetadataClass_softClass_0)
    {
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __getLPLinkMetadataClass_block_invoke_0;
      v20 = &unk_1E848F710;
      v21 = &v22;
      __getLPLinkMetadataClass_block_invoke_0(&v17);
      v5 = v23[3];
    }

    v6 = v5;
    _Block_object_dispose(&v22, 8);
    v7 = objc_alloc_init(v5);
    if (v7)
    {
      v8 = [(_SFActivityItemProvider *)self url];
      [v7 setOriginalURL:v8];

      v22 = 0;
      v23 = &v22;
      v24 = 0x2050000000;
      v9 = getLPFileMetadataClass_softClass_0;
      v25 = getLPFileMetadataClass_softClass_0;
      if (!getLPFileMetadataClass_softClass_0)
      {
        v17 = MEMORY[0x1E69E9820];
        v18 = 3221225472;
        v19 = __getLPFileMetadataClass_block_invoke_0;
        v20 = &unk_1E848F710;
        v21 = &v22;
        __getLPFileMetadataClass_block_invoke_0(&v17);
        v9 = v23[3];
      }

      v10 = v9;
      _Block_object_dispose(&v22, 8);
      v11 = objc_alloc_init(v9);
      suggestedPDFFileName = [(_SFPrintController *)self->_printController suggestedPDFFileName];
      [v11 setName:suggestedPDFFileName];

      [v11 setType:*MEMORY[0x1E6963858]];
      [v7 setSpecialization:v11];
      specialization = [v7 specialization];
      linkPreviewFileMetadata = self->_linkPreviewFileMetadata;
      self->_linkPreviewFileMetadata = specialization;

      v15 = v7;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSItemProvider)pdfItemProvider
{
  if (self->_canVendPDFRepresentation)
  {
    v13[9] = v2;
    v14 = v3;
    pdfItemProvider = self->_pdfItemProvider;
    if (!pdfItemProvider)
    {
      v6 = objc_alloc_init(MEMORY[0x1E696ACA0]);
      v7 = self->_pdfItemProvider;
      self->_pdfItemProvider = v6;

      v8 = self->_pdfItemProvider;
      v9 = *MEMORY[0x1E6963858];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __47___SFPrintActivityItemProvider_pdfItemProvider__block_invoke;
      v13[3] = &unk_1E8494318;
      v13[4] = self;
      [(NSItemProvider *)v8 registerDataRepresentationForTypeIdentifier:v9 visibility:0 loadHandler:v13];
      suggestedPDFFileName = [(_SFPrintController *)self->_printController suggestedPDFFileName];
      [(NSItemProvider *)self->_pdfItemProvider setSuggestedName:suggestedPDFFileName];

      pdfItemProvider = self->_pdfItemProvider;
    }

    v11 = pdfItemProvider;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)activityViewControllerPlaceholderItems:(id)items
{
  v9[2] = *MEMORY[0x1E69E9840];
  if (self->_canVendPDFRepresentation)
  {
    pdfItemProvider = [(_SFPrintActivityItemProvider *)self pdfItemProvider];
    v9[0] = pdfItemProvider;
    item = [(_SFPrintActivityItemProvider *)self item];
    v9[1] = item;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  }

  else
  {
    pdfItemProvider = [(_SFPrintActivityItemProvider *)self item];
    v8 = pdfItemProvider;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  }

  return v6;
}

- (id)activityViewController:(id)controller itemsForActivityType:(id)type
{
  v18[2] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  excludedActivityTypes = [(_SFActivityItemProvider *)self excludedActivityTypes];
  v7 = [excludedActivityTypes containsObject:typeCopy];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = MEMORY[0x1E695DFD8];
    v10 = *MEMORY[0x1E69CDAB8];
    v18[0] = *MEMORY[0x1E69CDAF0];
    v18[1] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v12 = [v9 setWithArray:v11];

    if (self->_canVendPDFRepresentation && ([v12 containsObject:typeCopy] & 1) == 0)
    {
      pdfItemProvider = [(_SFPrintActivityItemProvider *)self pdfItemProvider];
      v17 = pdfItemProvider;
      v14 = &v17;
    }

    else
    {
      pdfItemProvider = [(_SFPrintActivityItemProvider *)self item];
      v16 = pdfItemProvider;
      v14 = &v16;
    }

    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  }

  return v8;
}

@end