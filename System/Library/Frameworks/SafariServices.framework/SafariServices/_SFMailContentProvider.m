@interface _SFMailContentProvider
- (BOOL)_canProvideContentType:(int64_t)a3;
- (_SFMailContentProviderDataSource)dataSource;
- (id)_preferentiallyOrderedAvailableContentTypes;
- (id)_preferentiallyOrderedContentTypes;
- (int64_t)_bestContentTypeForPreferredContentType:(int64_t)a3;
- (int64_t)_defaultPreferredContentType;
- (void)_getPDFDataWithCompletionHandler:(id)a3;
- (void)_getReaderContentWithCompletionHandler:(id)a3;
- (void)_getWebArchiveDataWithCompletion:(id)a3;
- (void)getMailComposeViewControllerWithMailToURL:(id)a3 contentURL:(id)a4 preferredContentType:(int64_t)a5 completionHandler:(id)a6;
- (void)mailComposeController:(id)a3 didFinishWithResult:(int64_t)a4 error:(id)a5;
- (void)prepareMailComposeViewController:(id)a3 withMailToURL:(id)a4 contentURL:(id)a5 preferredContentType:(int64_t)a6 completionHandler:(id)a7;
@end

@implementation _SFMailContentProvider

- (void)prepareMailComposeViewController:(id)a3 withMailToURL:(id)a4 contentURL:(id)a5 preferredContentType:(int64_t)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = &__block_literal_global_48;
  }

  [v12 setKeyboardVisible:1];
  if (v13)
  {
    v16 = MEMORY[0x1E696AEC0];
    v17 = [v13 safari_userVisibleString];
    v18 = [v16 stringWithFormat:@"\n%@", v17];
    [v12 setMessageBody:v18 isHTML:0];
  }

  if (a4 || (v19 = [(_SFMailContentProvider *)self _bestContentTypeForPreferredContentType:a6], v19 < 2))
  {
    v15[2](v15);
  }

  else
  {
    if (v19 == 2)
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __123___SFMailContentProvider_prepareMailComposeViewController_withMailToURL_contentURL_preferredContentType_completionHandler___block_invoke_2;
      v24[3] = &unk_1E8493EC8;
      v25 = v12;
      v26 = v15;
      [(_SFMailContentProvider *)self _getReaderContentWithCompletionHandler:v24];

      v20 = v25;
      goto LABEL_14;
    }

    if (v19 == 3)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __123___SFMailContentProvider_prepareMailComposeViewController_withMailToURL_contentURL_preferredContentType_completionHandler___block_invoke_48;
      v21[3] = &unk_1E8494990;
      v22 = v12;
      v23 = v15;
      [(_SFMailContentProvider *)self _getPDFDataWithCompletionHandler:v21];

      v20 = v22;
LABEL_14:
    }
  }
}

- (void)getMailComposeViewControllerWithMailToURL:(id)a3 contentURL:(id)a4 preferredContentType:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([getMFMailComposeViewControllerClass() canSendMail])
  {
    v13 = [objc_alloc(getMFMailComposeViewControllerClass()) initWithURL:v10];
    [v13 setMailComposeDelegate:self];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __118___SFMailContentProvider_getMailComposeViewControllerWithMailToURL_contentURL_preferredContentType_completionHandler___block_invoke;
    v15[3] = &unk_1E8490798;
    v16 = v13;
    v17 = v12;
    v14 = v13;
    [(_SFMailContentProvider *)self prepareMailComposeViewController:v14 withMailToURL:v10 contentURL:v11 preferredContentType:a5 completionHandler:v15];
  }

  else
  {
    (*(v12 + 2))(v12, 0);
  }
}

- (id)_preferentiallyOrderedContentTypes
{
  v2 = _preferentiallyOrderedContentTypes_contentTypes;
  if (!_preferentiallyOrderedContentTypes_contentTypes)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:&unk_1F5023ED8];
    v4 = _preferentiallyOrderedContentTypes_contentTypes;
    _preferentiallyOrderedContentTypes_contentTypes = v3;

    v2 = _preferentiallyOrderedContentTypes_contentTypes;
  }

  return v2;
}

- (id)_preferentiallyOrderedAvailableContentTypes
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(_SFMailContentProvider *)self _preferentiallyOrderedContentTypes];
  v4 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (-[_SFMailContentProvider _canProvideContentType:](self, "_canProvideContentType:", [v10 integerValue]))
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (int64_t)_bestContentTypeForPreferredContentType:(int64_t)a3
{
  v5 = [(_SFMailContentProvider *)self _preferentiallyOrderedAvailableContentTypes];
  if (a3)
  {
LABEL_4:
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v8 = [v5 containsObject:v7];

    if (v8)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

  v6 = [(_SFMailContentProvider *)self _defaultPreferredContentType];
  if (v6)
  {
    a3 = v6;
    goto LABEL_4;
  }

LABEL_5:
  v9 = [v5 firstObject];
  v10 = v9;
  if (v9)
  {
    a3 = [v9 integerValue];
  }

  else
  {
    a3 = 0;
  }

LABEL_9:
  return a3;
}

- (BOOL)_canProvideContentType:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v7 = WeakRetained;
  switch(a3)
  {
    case 3:
      if (self->_restrictAddingPDFContent)
      {
        v3 = 0;
      }

      else
      {
        v9 = [WeakRetained webViewForMailContentProvider:self];
        v3 = [v9 _isDisplayingPDF];
      }

      break;
    case 2:
      v3 = [WeakRetained readerViewIsVisibleForMailContentProvider:self];
      break;
    case 1:
      v8 = [WeakRetained webViewForMailContentProvider:self];
      v3 = v8 != 0;

      break;
  }

  return v3 & 1;
}

- (int64_t)_defaultPreferredContentType
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [WeakRetained webViewForMailContentProvider:self];
  if ([v4 _isDisplayingPDF])
  {
    v5 = 3;
  }

  else if ([WeakRetained readerViewIsVisibleForMailContentProvider:self])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_getReaderContentWithCompletionHandler:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained readerControllerForMailContentProvider:self];

  [v6 collectReaderContentForMailWithCompletion:v4];
}

- (void)_getPDFDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained webViewForMailContentProvider:self];

  if ([v6 _isDisplayingPDF])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59___SFMailContentProvider__getPDFDataWithCompletionHandler___block_invoke;
    v7[3] = &unk_1E8490CE0;
    v9 = v4;
    v8 = v6;
    [v8 _getMainResourceDataWithCompletionHandler:v7];
  }

  else
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

- (void)_getWebArchiveDataWithCompletion:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained webViewForMailContentProvider:self];

  v7 = objc_alloc(MEMORY[0x1E695AC08]);
  v8 = [v6 URL];
  v9 = [v7 initWithURL:v8 MIMEType:*MEMORY[0x1E69B1F80] expectedContentLength:0 textEncodingName:0];

  v10 = [v9 suggestedFilename];
  v11 = [v10 safari_ensurePathExtension:@"webarchive"];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59___SFMailContentProvider__getWebArchiveDataWithCompletion___block_invoke;
  v14[3] = &unk_1E8490CE0;
  v15 = v11;
  v16 = v4;
  v12 = v11;
  v13 = v4;
  [v6 _getWebArchiveDataWithCompletionHandler:v14];
}

- (void)mailComposeController:(id)a3 didFinishWithResult:(int64_t)a4 error:(id)a5
{
  v8 = a3;
  v5 = [v8 presentingViewController];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v8;
  }

  v7 = v6;

  [v7 dismissViewControllerAnimated:1 completion:0];
}

- (_SFMailContentProviderDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end