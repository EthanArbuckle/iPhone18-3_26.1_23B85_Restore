@interface QLActivityItemProvider
- (id)_pdfPreviewDataAtURL:(id)l;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewControllerPlaceholderItems:(id)items;
- (id)activityViewControllerSuggestionFileURL:(id)l;
- (id)mainItem;
- (id)printInfo;
@end

@implementation QLActivityItemProvider

- (id)mainItem
{
  activityPreviewItem = [(QLActivityItemProvider *)self activityPreviewItem];
  shareableURL = [activityPreviewItem shareableURL];

  activityPreviewItem2 = [(QLActivityItemProvider *)self activityPreviewItem];
  v6 = activityPreviewItem2;
  if (shareableURL)
  {
    shareableURL2 = [activityPreviewItem2 shareableURL];
  }

  else
  {
    fetcher = [activityPreviewItem2 fetcher];
    shareableURL2 = [fetcher shareableItem];
  }

  return shareableURL2;
}

- (id)activityViewControllerPlaceholderItems:(id)items
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  mainItem = [(QLActivityItemProvider *)self mainItem];

  v6 = MEMORY[0x277D43EF8];
  if (mainItem)
  {
    mainItem2 = [(QLActivityItemProvider *)self mainItem];
    [v4 addObject:mainItem2];
  }

  else
  {
    v8 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v8 = *v6;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_23A714000, v8, OS_LOG_TYPE_ERROR, "No URL to pass to activityViewControllerPlaceholderItems. #Sharing", &v18, 2u);
    }
  }

  activityPreviewItem = [(QLActivityItemProvider *)self activityPreviewItem];
  previewItemURL = [activityPreviewItem previewItemURL];
  v11 = [(QLActivityItemProvider *)self _pdfPreviewDataAtURL:previewItemURL];

  if (v11)
  {
    [v4 addObject:v11];
  }

  else
  {
    mainItem3 = [(QLActivityItemProvider *)self mainItem];

    if (mainItem3)
    {
      printer = [(QLActivityItemProvider *)self printer];

      if (printer)
      {
        printer2 = [(QLActivityItemProvider *)self printer];
        [v4 addObject:printer2];
      }
    }
  }

  v12 = *v6;
  if (!*v6)
  {
    QLSInitLogging();
    v12 = *v6;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v4;
    _os_log_impl(&dword_23A714000, v12, OS_LOG_TYPE_DEFAULT, "Returning activity items %@ #Sharing", &v18, 0xCu);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  v30[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  typeCopy = type;
  if (([typeCopy isEqualToString:*MEMORY[0x277D54778]] & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277D54740]))
  {
    activity = [controllerCopy activity];
    printInfo = [(QLActivityItemProvider *)self printInfo];
    printInteractionController = [activity printInteractionController];
    [printInteractionController setPrintInfo:printInfo];

    activityPreviewItem = [(QLActivityItemProvider *)self activityPreviewItem];
    previewItemURL = [activityPreviewItem previewItemURL];
    identifier = [(QLActivityItemProvider *)self _pdfPreviewDataAtURL:previewItemURL];

    if (identifier)
    {
      v14 = identifier;
LABEL_5:
      printer2 = v14;
LABEL_15:

      goto LABEL_16;
    }

    previewItemContentType = [(QLItem *)self->_activityPreviewItem previewItemContentType];
    printableUTIs = [MEMORY[0x277D41248] printableUTIs];
    if ([printableUTIs containsObject:previewItemContentType])
    {
    }

    else
    {
      printer = [(QLActivityItemProvider *)self printer];

      if (printer)
      {
        printer2 = [(QLActivityItemProvider *)self printer];
LABEL_14:

        goto LABEL_15;
      }
    }

    printer2 = 0;
    goto LABEL_14;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x277D54720]])
  {
    activityPreviewItem2 = [(QLActivityItemProvider *)self activityPreviewItem];
    previewItemURL2 = [activityPreviewItem2 previewItemURL];
    activity = [(QLActivityItemProvider *)self _pdfPreviewDataAtURL:previewItemURL2];

    if (!activity)
    {
      printer2 = 0;
LABEL_16:

      if (printer2)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    identifier = [*MEMORY[0x277CE1E08] identifier];
    v29 = identifier;
    v30[0] = activity;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    goto LABEL_5;
  }

LABEL_17:
  printer2 = [(QLActivityItemProvider *)self mainItem];
LABEL_18:
  v21 = MEMORY[0x277D43EF8];
  v22 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v22 = *v21;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v25 = 138412546;
    v26 = typeCopy;
    v27 = 2112;
    v28 = printer2;
    _os_log_impl(&dword_23A714000, v22, OS_LOG_TYPE_INFO, "Returning activity item for activity type %@ : %@ #Printing", &v25, 0x16u);
  }

  v23 = *MEMORY[0x277D85DE8];

  return printer2;
}

- (id)printInfo
{
  activityPreviewItem = [(QLActivityItemProvider *)self activityPreviewItem];
  previewItemContentType = [activityPreviewItem previewItemContentType];

  if (previewItemContentType)
  {
    v5 = [MEMORY[0x277CE1CB8] typeWithIdentifier:previewItemContentType];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x277D43F90] isIWorkDocumentType:previewItemContentType];
  v7 = [MEMORY[0x277D43F90] isSpreadSheetDocumentType:previewItemContentType];
  v8 = [v5 conformsToType:*MEMORY[0x277CE1E30]];
  v9 = [v5 conformsToType:*MEMORY[0x277CE1DB0]];
  printInfo = [MEMORY[0x277D41240] printInfo];
  activityPreviewItem2 = [(QLActivityItemProvider *)self activityPreviewItem];
  previewItemTitle = [activityPreviewItem2 previewItemTitle];
  [printInfo setJobName:previewItemTitle];

  activityPreviewItem3 = [(QLActivityItemProvider *)self activityPreviewItem];
  previewItemURL = [activityPreviewItem3 previewItemURL];
  v15 = [(QLActivityItemProvider *)self _pdfPreviewDataAtURL:previewItemURL];

  if (v15)
  {
    [printInfo setScaleUp:v6];
  }

  if (v9)
  {
    [printInfo setOutputType:1];
  }

  if ((v8 | v6 & v7))
  {
    [printInfo setOrientation:1];
  }

  return printInfo;
}

- (id)_pdfPreviewDataAtURL:(id)l
{
  lCopy = l;
  v5 = lCopy;
  if (_pdfPreviewDataAtURL__onceToken != -1)
  {
    [QLActivityItemProvider _pdfPreviewDataAtURL:];
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  if (!lCopy)
  {
    goto LABEL_14;
  }

LABEL_3:
  v6 = [_pdfPreviewDataAtURL__sharedPDFPreviewCache objectForKey:v5];
  null = [MEMORY[0x277CBEB68] null];
  v8 = [v6 isEqual:null];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    if (!v6)
    {
      activityPreviewItem = [(QLActivityItemProvider *)self activityPreviewItem];
      previewItemContentType = [activityPreviewItem previewItemContentType];

      if (previewItemContentType && ([MEMORY[0x277CE1CB8] typeWithIdentifier:previewItemContentType], v12 = objc_claimAutoreleasedReturnValue(), QLPreviewCopyEmbeddedPDF(), v6 = objc_claimAutoreleasedReturnValue(), v12, v6))
      {
        [_pdfPreviewDataAtURL__sharedPDFPreviewCache setObject:v6 forKey:v5];
      }

      else
      {
        v13 = _pdfPreviewDataAtURL__sharedPDFPreviewCache;
        null2 = [MEMORY[0x277CBEB68] null];
        [v13 setObject:null2 forKey:v5];

        v6 = 0;
      }
    }

    v6 = v6;
    v9 = v6;
  }

LABEL_15:

  return v9;
}

uint64_t __47__QLActivityItemProvider__pdfPreviewDataAtURL___block_invoke()
{
  _pdfPreviewDataAtURL__sharedPDFPreviewCache = objc_alloc_init(MEMORY[0x277CBEA78]);

  return MEMORY[0x2821F96F8]();
}

- (id)activityViewControllerSuggestionFileURL:(id)l
{
  activityPreviewItem = [(QLActivityItemProvider *)self activityPreviewItem];
  previewItemType = [activityPreviewItem previewItemType];

  if ((previewItemType & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    activityPreviewItem2 = [(QLActivityItemProvider *)self activityPreviewItem];
    shareableURL = [activityPreviewItem2 shareableURL];
  }

  else
  {
    shareableURL = 0;
  }

  return shareableURL;
}

@end