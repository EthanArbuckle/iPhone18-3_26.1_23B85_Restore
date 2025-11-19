@interface _SFSaveToFilesOperation
- (_SFSaveToFilesOperation)initWithActivityItemProviderCollection:(id)a3;
- (_SFSaveToFilesOperationDelegate)delegate;
- (id)_temporaryFileWithName:(id)a3;
- (void)_copyFileData:(id)a3;
- (void)_finishWithURL:(id)a3;
- (void)_showDocumentPickerForFileURL:(id)a3 sourceURL:(id)a4 willStartDownload:(BOOL)a5;
- (void)dealloc;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)importPlaceholderForDownload:(id)a3 fromURL:(id)a4 completionHandler:(id)a5;
- (void)start;
@end

@implementation _SFSaveToFilesOperation

- (_SFSaveToFilesOperation)initWithActivityItemProviderCollection:(id)a3
{
  v5 = a3;
  v6 = [(_SFSaveToFilesOperation *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collection, a3);
    v8 = v7;
  }

  return v7;
}

- (void)dealloc
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2() safari_privacyPreservingDescription];
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

- (void)_showDocumentPickerForFileURL:(id)a3 sourceURL:(id)a4 willStartDownload:(BOOL)a5
{
  v5 = a5;
  v7 = [MEMORY[0x1E69DC968] sf_documentPickerViewControllerWithURL:a3 inMode:2 sourceURL:a4];
  documentPickerViewController = self->_documentPickerViewController;
  self->_documentPickerViewController = v7;

  [(UIDocumentPickerViewController *)self->_documentPickerViewController setDelegate:self];
  [(UIDocumentPickerViewController *)self->_documentPickerViewController _setForPickingDownloadsFolder:v5];
  v9 = directoryURLOfLastSuccessfulSave;
  if (!v9)
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [MEMORY[0x1E699A358] placeholderURLForDownloadsFolder];
    }

    else
    {
      v9 = 0;
    }
  }

  v11 = v9;
  [(UIDocumentPickerViewController *)self->_documentPickerViewController setDirectoryURL:v9];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    -[UIDocumentPickerViewController _setAutomaticallyDismissesAfterCompletion:](self->_documentPickerViewController, "_setAutomaticallyDismissesAfterCompletion:", [WeakRetained saveToFilesOperationShouldDismissViewControllerAfterCompletion:self]);
  }

  [WeakRetained saveToFilesOperation:self presentViewController:self->_documentPickerViewController];
}

- (void)_finishWithURL:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  downloadPlaceholderCompletionHandler = self->_downloadPlaceholderCompletionHandler;
  if (!downloadPlaceholderCompletionHandler)
  {
    download = self->_download;
    self->_download = 0;

    if (v4)
    {
      goto LABEL_5;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  downloadPlaceholderCompletionHandler[2](downloadPlaceholderCompletionHandler, v4);
  v6 = self->_downloadPlaceholderCompletionHandler;
  self->_downloadPlaceholderCompletionHandler = 0;

  if (!v4)
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
  v9 = [v4 URLByDeletingLastPathComponent];
  v10 = directoryURLOfLastSuccessfulSave;
  directoryURLOfLastSuccessfulSave = v9;

  v11 = 1;
LABEL_8:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained saveToFilesOperation:self didFinishWithSuccess:v11];
}

- (id)_temporaryFileWithName:(id)a3
{
  v4 = MEMORY[0x1E696AC08];
  v5 = a3;
  v6 = [v4 defaultManager];
  v7 = [v6 safari_createTemporaryDirectoryWithTemplatePrefix:@"File"];
  containerDirectoryPath = self->_containerDirectoryPath;
  self->_containerDirectoryPath = v7;

  v9 = [(NSString *)self->_containerDirectoryPath stringByAppendingPathComponent:v5];

  v10 = MEMORY[0x1E695DFF8];
  v11 = [v6 _web_pathWithUniqueFilenameForPath:v9];
  v12 = [v10 fileURLWithPath:v11];

  return v12;
}

- (void)_copyFileData:(id)a3
{
  v4 = a3;
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
    v21 = [v7 canShareAsDownload];
    v20 = 0;
    goto LABEL_13;
  }

  v8 = 0;
LABEL_7:
  v9 = [(_SFActivityItemProviderCollection *)self->_collection standaloneImageProvider];

  if (v9)
  {
    v10 = [(_SFActivityItemProviderCollection *)self->_collection standaloneImageProvider];
    v11 = [v10 item];

    v12 = [(_SFActivityItemProviderCollection *)self->_collection webView];
    v13 = [v12 _sf_suggestedFilename];
    v14 = [v12 _committedURL];
    v15 = MEMORY[0x1E69B1B68];
    v16 = [v12 _MIMEType];
    v17 = [v15 properFilenameForOriginalFilename:v13 typeIdentifier:0 mimeType:v16 sourceURL:v14];
    v18 = [(_SFSaveToFilesOperation *)self _temporaryFileWithName:v17];

    v55[0] = 0;
    LODWORD(v16) = [v11 writeToURL:v18 options:0 error:v55];
    v19 = v55[0];
    if (v16)
    {
      v4[2](v4, v18, v14, 0);
    }

    else
    {
      v26 = WBS_LOG_CHANNEL_PREFIXDownloads();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [_SFSaveToFilesOperation _copyFileData:v26];
      }

      v4[2](v4, 0, 0, 0);
    }

    goto LABEL_21;
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_12;
  }

  v20 = 1;
  v21 = 1;
LABEL_13:
  v22 = [(_SFActivityItemProviderCollection *)self->_collection downloadProvider];
  v11 = v22;
  if (v21 && v22)
  {
    v23 = [v22 item];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [v11 quickLookDocument];
      v25 = [v24 sourceURL];
      v4[2](v4, v23, v25, 0);
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v4[2](v4, 0, 0, 0);
        goto LABEL_41;
      }

      v24 = v23;
      v30 = [v11 quickLookDocument];
      v31 = [v30 inferredUTI];
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __41___SFSaveToFilesOperation__copyFileData___block_invoke;
      v52[3] = &unk_1E84959B0;
      v54 = v4;
      v53 = v11;
      v32 = [v24 loadInPlaceFileRepresentationForTypeIdentifier:v31 completionHandler:v52];
    }

LABEL_41:
    goto LABEL_47;
  }

  if ((v20 & 1) != 0 || [v7 canShareAsWebArchive])
  {
    v27 = [(_SFActivityItemProviderCollection *)self->_collection webArchiveProvider];

    if (v27)
    {
      v28 = [(_SFActivityItemProviderCollection *)self->_collection webArchiveProvider];
      v12 = [v28 item];

      if (v12)
      {
        v29 = *MEMORY[0x1E69638F0];
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __41___SFSaveToFilesOperation__copyFileData___block_invoke_2;
        v50[3] = &unk_1E84959D8;
        v50[4] = self;
        v51 = v4;
        [v12 loadItemForTypeIdentifier:v29 options:0 completionHandler:v50];
      }

      else
      {
        v4[2](v4, 0, 0, 0);
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
    v33 = [(_SFActivityItemProviderCollection *)self->_collection printProvider];

    if (v33)
    {
      v12 = [(_SFActivityItemProviderCollection *)self->_collection printProvider];
      v34 = [v12 pdfItemProvider];
      v13 = v34;
      if (v34)
      {
        v35 = *MEMORY[0x1E6963858];
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __41___SFSaveToFilesOperation__copyFileData___block_invoke_4;
        v46[3] = &unk_1E8495A00;
        v47 = v34;
        v48 = self;
        v49 = v4;
        v36 = [v47 loadDataRepresentationForTypeIdentifier:v35 completionHandler:v46];
      }

      else
      {
        v4[2](v4, 0, 0, 0);
      }

LABEL_21:

LABEL_22:
      goto LABEL_47;
    }
  }

  if ([(_SFActivityItemProviderCollection *)self->_collection displayingStandaloneMedia])
  {
    v37 = self;
    v38 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v39 = [v38 saveToFilesOperationSupportsDownloads:v37];

      if (v39)
      {
        v23 = [(_SFActivityItemProviderCollection *)self->_collection webView];
        v40 = +[_SFDownloadDispatcher sharedDownloadDispatcher];
        v41 = [v40 startDownloadForCurrentURLFromWebView:v23];

        [v41 setExplicitlySaved:1];
        v42 = +[_SFDownloadManager sharedManager];
        [v41 setDelegate:v42];

        [v41 setPlaceholderImporter:v37];
        v43 = _Block_copy(v4);
        prepareDownloadPlaceholderHandler = v37->_prepareDownloadPlaceholderHandler;
        v37->_prepareDownloadPlaceholderHandler = v43;

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

  v4[2](v4, 0, 0, 0);
LABEL_47:
}

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  v5 = [a4 firstObject];
  [(_SFSaveToFilesOperation *)self _finishWithURL:v5];
}

- (void)importPlaceholderForDownload:(id)a3 fromURL:(id)a4 completionHandler:(id)a5
{
  v17 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _Block_copy(v10);
  downloadPlaceholderCompletionHandler = self->_downloadPlaceholderCompletionHandler;
  self->_downloadPlaceholderCompletionHandler = v11;

  [v17 setPlaceholderImporter:0];
  p_prepareDownloadPlaceholderHandler = &self->_prepareDownloadPlaceholderHandler;
  if (self->_prepareDownloadPlaceholderHandler)
  {
    objc_storeStrong(&self->_download, a3);
    prepareDownloadPlaceholderHandler = self->_prepareDownloadPlaceholderHandler;
    v15 = [v17 sourceURL];
    prepareDownloadPlaceholderHandler[2](prepareDownloadPlaceholderHandler, v9, v15, 1);
  }

  else
  {
    (*(v10 + 2))(v10, 0);
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