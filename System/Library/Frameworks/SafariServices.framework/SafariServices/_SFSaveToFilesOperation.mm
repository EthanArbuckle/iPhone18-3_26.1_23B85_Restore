@interface _SFSaveToFilesOperation
- (_SFSaveToFilesOperation)initWithActivityItemProviderCollection:(id)collection;
- (_SFSaveToFilesOperationDelegate)delegate;
- (id)_temporaryFileWithName:(id)name;
- (void)_copyFileData:(id)data;
- (void)_finishWithURL:(id)l;
- (void)_showDocumentPickerForFileURL:(id)l sourceURL:(id)rL willStartDownload:(BOOL)download;
- (void)dealloc;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)importPlaceholderForDownload:(id)download fromURL:(id)l completionHandler:(id)handler;
- (void)start;
@end

@implementation _SFSaveToFilesOperation

- (_SFSaveToFilesOperation)initWithActivityItemProviderCollection:(id)collection
{
  collectionCopy = collection;
  v6 = [(_SFSaveToFilesOperation *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collection, collection);
    v8 = v7;
  }

  return v7;
}

- (void)dealloc
{
  selfCopy = self;
  safari_privacyPreservingDescription = [OUTLINED_FUNCTION_2() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1D4644000, v4, v5, "Failed to delete temporary directory: %{public}@", v6, v7, v8, v9, v10);
}

- (void)start
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32___SFSaveToFilesOperation_start__block_invoke;
  block[3] = &unk_1E848F810;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_showDocumentPickerForFileURL:(id)l sourceURL:(id)rL willStartDownload:(BOOL)download
{
  downloadCopy = download;
  v7 = [MEMORY[0x1E69DC968] sf_documentPickerViewControllerWithURL:l inMode:2 sourceURL:rL];
  documentPickerViewController = self->_documentPickerViewController;
  self->_documentPickerViewController = v7;

  [(UIDocumentPickerViewController *)self->_documentPickerViewController setDelegate:self];
  [(UIDocumentPickerViewController *)self->_documentPickerViewController _setForPickingDownloadsFolder:downloadCopy];
  placeholderURLForDownloadsFolder = directoryURLOfLastSuccessfulSave;
  if (!placeholderURLForDownloadsFolder)
  {
    if (objc_opt_respondsToSelector())
    {
      placeholderURLForDownloadsFolder = [MEMORY[0x1E699A358] placeholderURLForDownloadsFolder];
    }

    else
    {
      placeholderURLForDownloadsFolder = 0;
    }
  }

  v11 = placeholderURLForDownloadsFolder;
  [(UIDocumentPickerViewController *)self->_documentPickerViewController setDirectoryURL:placeholderURLForDownloadsFolder];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    -[UIDocumentPickerViewController _setAutomaticallyDismissesAfterCompletion:](self->_documentPickerViewController, "_setAutomaticallyDismissesAfterCompletion:", [WeakRetained saveToFilesOperationShouldDismissViewControllerAfterCompletion:self]);
  }

  [WeakRetained saveToFilesOperation:self presentViewController:self->_documentPickerViewController];
}

- (void)_finishWithURL:(id)l
{
  v16[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  downloadPlaceholderCompletionHandler = self->_downloadPlaceholderCompletionHandler;
  if (!downloadPlaceholderCompletionHandler)
  {
    download = self->_download;
    self->_download = 0;

    if (lCopy)
    {
      goto LABEL_5;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  downloadPlaceholderCompletionHandler[2](downloadPlaceholderCompletionHandler, lCopy);
  v6 = self->_downloadPlaceholderCompletionHandler;
  self->_downloadPlaceholderCompletionHandler = 0;

  if (!lCopy)
  {
    v12 = +[_SFDownloadManager sharedManager];
    v16[0] = self->_download;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [v12 removeDownloads:v13];

    v14 = self->_download;
    self->_download = 0;

    goto LABEL_7;
  }

  v7 = self->_download;
  self->_download = 0;

LABEL_5:
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  v10 = directoryURLOfLastSuccessfulSave;
  directoryURLOfLastSuccessfulSave = uRLByDeletingLastPathComponent;

  v11 = 1;
LABEL_8:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained saveToFilesOperation:self didFinishWithSuccess:v11];
}

- (id)_temporaryFileWithName:(id)name
{
  v4 = MEMORY[0x1E696AC08];
  nameCopy = name;
  defaultManager = [v4 defaultManager];
  v7 = [defaultManager safari_createTemporaryDirectoryWithTemplatePrefix:@"File"];
  containerDirectoryPath = self->_containerDirectoryPath;
  self->_containerDirectoryPath = v7;

  v9 = [(NSString *)self->_containerDirectoryPath stringByAppendingPathComponent:nameCopy];

  v10 = MEMORY[0x1E695DFF8];
  v11 = [defaultManager _web_pathWithUniqueFilenameForPath:v9];
  v12 = [v10 fileURLWithPath:v11];

  return v12;
}

- (void)_copyFileData:(id)data
{
  dataCopy = data;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = 0;
    goto LABEL_6;
  }

  v6 = [WeakRetained customizationControllerForSaveToFilesOperation:self];
  v7 = v6;
  if (!v6)
  {
LABEL_6:
    v8 = 1;
    goto LABEL_7;
  }

  if (![v6 canShareAsStandaloneImage])
  {
LABEL_12:
    canShareAsDownload = [v7 canShareAsDownload];
    v20 = 0;
    goto LABEL_13;
  }

  v8 = 0;
LABEL_7:
  standaloneImageProvider = [(_SFActivityItemProviderCollection *)self->_collection standaloneImageProvider];

  if (standaloneImageProvider)
  {
    standaloneImageProvider2 = [(_SFActivityItemProviderCollection *)self->_collection standaloneImageProvider];
    item = [standaloneImageProvider2 item];

    webView = [(_SFActivityItemProviderCollection *)self->_collection webView];
    _sf_suggestedFilename = [webView _sf_suggestedFilename];
    _committedURL = [webView _committedURL];
    v15 = MEMORY[0x1E69B1B68];
    _MIMEType = [webView _MIMEType];
    v17 = [v15 properFilenameForOriginalFilename:_sf_suggestedFilename typeIdentifier:0 mimeType:_MIMEType sourceURL:_committedURL];
    v18 = [(_SFSaveToFilesOperation *)self _temporaryFileWithName:v17];

    v55[0] = 0;
    LODWORD(_MIMEType) = [item writeToURL:v18 options:0 error:v55];
    v19 = v55[0];
    if (_MIMEType)
    {
      dataCopy[2](dataCopy, v18, _committedURL, 0);
    }

    else
    {
      v26 = WBS_LOG_CHANNEL_PREFIXDownloads();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [_SFSaveToFilesOperation _copyFileData:v26];
      }

      dataCopy[2](dataCopy, 0, 0, 0);
    }

    goto LABEL_21;
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_12;
  }

  v20 = 1;
  canShareAsDownload = 1;
LABEL_13:
  downloadProvider = [(_SFActivityItemProviderCollection *)self->_collection downloadProvider];
  item = downloadProvider;
  if (canShareAsDownload && downloadProvider)
  {
    item2 = [downloadProvider item];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      quickLookDocument = [item quickLookDocument];
      sourceURL = [quickLookDocument sourceURL];
      dataCopy[2](dataCopy, item2, sourceURL, 0);
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        dataCopy[2](dataCopy, 0, 0, 0);
        goto LABEL_41;
      }

      quickLookDocument = item2;
      quickLookDocument2 = [item quickLookDocument];
      inferredUTI = [quickLookDocument2 inferredUTI];
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __41___SFSaveToFilesOperation__copyFileData___block_invoke;
      v52[3] = &unk_1E84959B0;
      v54 = dataCopy;
      v53 = item;
      v32 = [quickLookDocument loadInPlaceFileRepresentationForTypeIdentifier:inferredUTI completionHandler:v52];
    }

LABEL_41:
    goto LABEL_47;
  }

  if ((v20 & 1) != 0 || [v7 canShareAsWebArchive])
  {
    webArchiveProvider = [(_SFActivityItemProviderCollection *)self->_collection webArchiveProvider];

    if (webArchiveProvider)
    {
      webArchiveProvider2 = [(_SFActivityItemProviderCollection *)self->_collection webArchiveProvider];
      webView = [webArchiveProvider2 item];

      if (webView)
      {
        v29 = *MEMORY[0x1E69638F0];
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __41___SFSaveToFilesOperation__copyFileData___block_invoke_2;
        v50[3] = &unk_1E84959D8;
        v50[4] = self;
        v51 = dataCopy;
        [webView loadItemForTypeIdentifier:v29 options:0 completionHandler:v50];
      }

      else
      {
        dataCopy[2](dataCopy, 0, 0, 0);
      }

      goto LABEL_22;
    }

    if (v20)
    {
      goto LABEL_51;
    }
  }

  if ([v7 canShareAsPDF])
  {
LABEL_51:
    printProvider = [(_SFActivityItemProviderCollection *)self->_collection printProvider];

    if (printProvider)
    {
      webView = [(_SFActivityItemProviderCollection *)self->_collection printProvider];
      pdfItemProvider = [webView pdfItemProvider];
      _sf_suggestedFilename = pdfItemProvider;
      if (pdfItemProvider)
      {
        v35 = *MEMORY[0x1E6963858];
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __41___SFSaveToFilesOperation__copyFileData___block_invoke_4;
        v46[3] = &unk_1E8495A00;
        v47 = pdfItemProvider;
        selfCopy = self;
        v49 = dataCopy;
        v36 = [v47 loadDataRepresentationForTypeIdentifier:v35 completionHandler:v46];
      }

      else
      {
        dataCopy[2](dataCopy, 0, 0, 0);
      }

LABEL_21:

LABEL_22:
      goto LABEL_47;
    }
  }

  if ([(_SFActivityItemProviderCollection *)self->_collection displayingStandaloneMedia])
  {
    selfCopy2 = self;
    v38 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v39 = [v38 saveToFilesOperationSupportsDownloads:selfCopy2];

      if (v39)
      {
        item2 = [(_SFActivityItemProviderCollection *)self->_collection webView];
        v40 = +[_SFDownloadDispatcher sharedDownloadDispatcher];
        v41 = [v40 startDownloadForCurrentURLFromWebView:item2];

        [v41 setExplicitlySaved:1];
        v42 = +[_SFDownloadManager sharedManager];
        [v41 setDelegate:v42];

        [v41 setPlaceholderImporter:selfCopy2];
        v43 = _Block_copy(dataCopy);
        prepareDownloadPlaceholderHandler = selfCopy2->_prepareDownloadPlaceholderHandler;
        selfCopy2->_prepareDownloadPlaceholderHandler = v43;

        goto LABEL_41;
      }
    }

    else
    {
    }
  }

  v45 = WBS_LOG_CHANNEL_PREFIXDownloads();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    [_SFSaveToFilesOperation _copyFileData:v45];
  }

  dataCopy[2](dataCopy, 0, 0, 0);
LABEL_47:
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  firstObject = [ls firstObject];
  [(_SFSaveToFilesOperation *)self _finishWithURL:firstObject];
}

- (void)importPlaceholderForDownload:(id)download fromURL:(id)l completionHandler:(id)handler
{
  downloadCopy = download;
  lCopy = l;
  handlerCopy = handler;
  v11 = _Block_copy(handlerCopy);
  downloadPlaceholderCompletionHandler = self->_downloadPlaceholderCompletionHandler;
  self->_downloadPlaceholderCompletionHandler = v11;

  [downloadCopy setPlaceholderImporter:0];
  p_prepareDownloadPlaceholderHandler = &self->_prepareDownloadPlaceholderHandler;
  if (self->_prepareDownloadPlaceholderHandler)
  {
    objc_storeStrong(&self->_download, download);
    prepareDownloadPlaceholderHandler = self->_prepareDownloadPlaceholderHandler;
    sourceURL = [downloadCopy sourceURL];
    prepareDownloadPlaceholderHandler[2](prepareDownloadPlaceholderHandler, lCopy, sourceURL, 1);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
    p_prepareDownloadPlaceholderHandler = &self->_downloadPlaceholderCompletionHandler;
  }

  v16 = *p_prepareDownloadPlaceholderHandler;
  *p_prepareDownloadPlaceholderHandler = 0;
}

- (_SFSaveToFilesOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_copyFileData:(void *)a1 .cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1D4644000, v4, v5, "Failed to save standalone image data: %{public}@", v6, v7, v8, v9, v10);
}

@end