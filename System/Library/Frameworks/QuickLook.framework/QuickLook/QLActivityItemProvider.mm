@interface QLActivityItemProvider
- (id)_pdfPreviewDataAtURL:(id)a3;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewControllerPlaceholderItems:(id)a3;
- (id)activityViewControllerSuggestionFileURL:(id)a3;
- (id)mainItem;
- (id)printInfo;
@end

@implementation QLActivityItemProvider

- (id)mainItem
{
  v3 = [(QLActivityItemProvider *)self activityPreviewItem];
  v4 = [v3 shareableURL];

  v5 = [(QLActivityItemProvider *)self activityPreviewItem];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 shareableURL];
  }

  else
  {
    v8 = [v5 fetcher];
    v7 = [v8 shareableItem];
  }

  return v7;
}

- (id)activityViewControllerPlaceholderItems:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v5 = [(QLActivityItemProvider *)self mainItem];

  v6 = MEMORY[0x277D43EF8];
  if (v5)
  {
    v7 = [(QLActivityItemProvider *)self mainItem];
    [v4 addObject:v7];
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

  v9 = [(QLActivityItemProvider *)self activityPreviewItem];
  v10 = [v9 previewItemURL];
  v11 = [(QLActivityItemProvider *)self _pdfPreviewDataAtURL:v10];

  if (v11)
  {
    [v4 addObject:v11];
  }

  else
  {
    v15 = [(QLActivityItemProvider *)self mainItem];

    if (v15)
    {
      v16 = [(QLActivityItemProvider *)self printer];

      if (v16)
      {
        v17 = [(QLActivityItemProvider *)self printer];
        [v4 addObject:v17];
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

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v30[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (([v7 isEqualToString:*MEMORY[0x277D54778]] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277D54740]))
  {
    v8 = [v6 activity];
    v9 = [(QLActivityItemProvider *)self printInfo];
    v10 = [v8 printInteractionController];
    [v10 setPrintInfo:v9];

    v11 = [(QLActivityItemProvider *)self activityPreviewItem];
    v12 = [v11 previewItemURL];
    v13 = [(QLActivityItemProvider *)self _pdfPreviewDataAtURL:v12];

    if (v13)
    {
      v14 = v13;
LABEL_5:
      v15 = v14;
LABEL_15:

      goto LABEL_16;
    }

    v16 = [(QLItem *)self->_activityPreviewItem previewItemContentType];
    v17 = [MEMORY[0x277D41248] printableUTIs];
    if ([v17 containsObject:v16])
    {
    }

    else
    {
      v20 = [(QLActivityItemProvider *)self printer];

      if (v20)
      {
        v15 = [(QLActivityItemProvider *)self printer];
LABEL_14:

        goto LABEL_15;
      }
    }

    v15 = 0;
    goto LABEL_14;
  }

  if ([v7 isEqualToString:*MEMORY[0x277D54720]])
  {
    v18 = [(QLActivityItemProvider *)self activityPreviewItem];
    v19 = [v18 previewItemURL];
    v8 = [(QLActivityItemProvider *)self _pdfPreviewDataAtURL:v19];

    if (!v8)
    {
      v15 = 0;
LABEL_16:

      if (v15)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v13 = [*MEMORY[0x277CE1E08] identifier];
    v29 = v13;
    v30[0] = v8;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    goto LABEL_5;
  }

LABEL_17:
  v15 = [(QLActivityItemProvider *)self mainItem];
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
    v26 = v7;
    v27 = 2112;
    v28 = v15;
    _os_log_impl(&dword_23A714000, v22, OS_LOG_TYPE_INFO, "Returning activity item for activity type %@ : %@ #Printing", &v25, 0x16u);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)printInfo
{
  v3 = [(QLActivityItemProvider *)self activityPreviewItem];
  v4 = [v3 previewItemContentType];

  if (v4)
  {
    v5 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x277D43F90] isIWorkDocumentType:v4];
  v7 = [MEMORY[0x277D43F90] isSpreadSheetDocumentType:v4];
  v8 = [v5 conformsToType:*MEMORY[0x277CE1E30]];
  v9 = [v5 conformsToType:*MEMORY[0x277CE1DB0]];
  v10 = [MEMORY[0x277D41240] printInfo];
  v11 = [(QLActivityItemProvider *)self activityPreviewItem];
  v12 = [v11 previewItemTitle];
  [v10 setJobName:v12];

  v13 = [(QLActivityItemProvider *)self activityPreviewItem];
  v14 = [v13 previewItemURL];
  v15 = [(QLActivityItemProvider *)self _pdfPreviewDataAtURL:v14];

  if (v15)
  {
    [v10 setScaleUp:v6];
  }

  if (v9)
  {
    [v10 setOutputType:1];
  }

  if ((v8 | v6 & v7))
  {
    [v10 setOrientation:1];
  }

  return v10;
}

- (id)_pdfPreviewDataAtURL:(id)a3
{
  v4 = a3;
  v5 = v4;
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

  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_3:
  v6 = [_pdfPreviewDataAtURL__sharedPDFPreviewCache objectForKey:v5];
  v7 = [MEMORY[0x277CBEB68] null];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    if (!v6)
    {
      v10 = [(QLActivityItemProvider *)self activityPreviewItem];
      v11 = [v10 previewItemContentType];

      if (v11 && ([MEMORY[0x277CE1CB8] typeWithIdentifier:v11], v12 = objc_claimAutoreleasedReturnValue(), QLPreviewCopyEmbeddedPDF(), v6 = objc_claimAutoreleasedReturnValue(), v12, v6))
      {
        [_pdfPreviewDataAtURL__sharedPDFPreviewCache setObject:v6 forKey:v5];
      }

      else
      {
        v13 = _pdfPreviewDataAtURL__sharedPDFPreviewCache;
        v14 = [MEMORY[0x277CBEB68] null];
        [v13 setObject:v14 forKey:v5];

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

- (id)activityViewControllerSuggestionFileURL:(id)a3
{
  v4 = [(QLActivityItemProvider *)self activityPreviewItem];
  v5 = [v4 previewItemType];

  if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v6 = [(QLActivityItemProvider *)self activityPreviewItem];
    v7 = [v6 shareableURL];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end