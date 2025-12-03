@interface _SFMailContentProvider
- (BOOL)_canProvideContentType:(int64_t)type;
- (_SFMailContentProviderDataSource)dataSource;
- (id)_preferentiallyOrderedAvailableContentTypes;
- (id)_preferentiallyOrderedContentTypes;
- (int64_t)_bestContentTypeForPreferredContentType:(int64_t)type;
- (int64_t)_defaultPreferredContentType;
- (void)_getPDFDataWithCompletionHandler:(id)handler;
- (void)_getReaderContentWithCompletionHandler:(id)handler;
- (void)_getWebArchiveDataWithCompletion:(id)completion;
- (void)getMailComposeViewControllerWithMailToURL:(id)l contentURL:(id)rL preferredContentType:(int64_t)type completionHandler:(id)handler;
- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error;
- (void)prepareMailComposeViewController:(id)controller withMailToURL:(id)l contentURL:(id)rL preferredContentType:(int64_t)type completionHandler:(id)handler;
@end

@implementation _SFMailContentProvider

- (void)prepareMailComposeViewController:(id)controller withMailToURL:(id)l contentURL:(id)rL preferredContentType:(int64_t)type completionHandler:(id)handler
{
  controllerCopy = controller;
  rLCopy = rL;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v15 = handlerCopy;
  }

  else
  {
    v15 = &__block_literal_global_48;
  }

  [controllerCopy setKeyboardVisible:1];
  if (rLCopy)
  {
    v16 = MEMORY[0x1E696AEC0];
    safari_userVisibleString = [rLCopy safari_userVisibleString];
    v18 = [v16 stringWithFormat:@"\n%@", safari_userVisibleString];
    [controllerCopy setMessageBody:v18 isHTML:0];
  }

  if (l || (v19 = [(_SFMailContentProvider *)self _bestContentTypeForPreferredContentType:type], v19 < 2))
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
      v25 = controllerCopy;
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
      v22 = controllerCopy;
      v23 = v15;
      [(_SFMailContentProvider *)self _getPDFDataWithCompletionHandler:v21];

      v20 = v22;
LABEL_14:
    }
  }
}

- (void)getMailComposeViewControllerWithMailToURL:(id)l contentURL:(id)rL preferredContentType:(int64_t)type completionHandler:(id)handler
{
  lCopy = l;
  rLCopy = rL;
  handlerCopy = handler;
  if ([getMFMailComposeViewControllerClass() canSendMail])
  {
    v13 = [objc_alloc(getMFMailComposeViewControllerClass()) initWithURL:lCopy];
    [v13 setMailComposeDelegate:self];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __118___SFMailContentProvider_getMailComposeViewControllerWithMailToURL_contentURL_preferredContentType_completionHandler___block_invoke;
    v15[3] = &unk_1E8490798;
    v16 = v13;
    v17 = handlerCopy;
    v14 = v13;
    [(_SFMailContentProvider *)self prepareMailComposeViewController:v14 withMailToURL:lCopy contentURL:rLCopy preferredContentType:type completionHandler:v15];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
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
  _preferentiallyOrderedContentTypes = [(_SFMailContentProvider *)self _preferentiallyOrderedContentTypes];
  v4 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{objc_msgSend(_preferentiallyOrderedContentTypes, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = _preferentiallyOrderedContentTypes;
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

- (int64_t)_bestContentTypeForPreferredContentType:(int64_t)type
{
  _preferentiallyOrderedAvailableContentTypes = [(_SFMailContentProvider *)self _preferentiallyOrderedAvailableContentTypes];
  if (type)
  {
LABEL_4:
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    v8 = [_preferentiallyOrderedAvailableContentTypes containsObject:v7];

    if (v8)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

  _defaultPreferredContentType = [(_SFMailContentProvider *)self _defaultPreferredContentType];
  if (_defaultPreferredContentType)
  {
    type = _defaultPreferredContentType;
    goto LABEL_4;
  }

LABEL_5:
  firstObject = [_preferentiallyOrderedAvailableContentTypes firstObject];
  v10 = firstObject;
  if (firstObject)
  {
    type = [firstObject integerValue];
  }

  else
  {
    type = 0;
  }

LABEL_9:
  return type;
}

- (BOOL)_canProvideContentType:(int64_t)type
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v7 = WeakRetained;
  switch(type)
  {
    case 3:
      if (self->_restrictAddingPDFContent)
      {
        _isDisplayingPDF = 0;
      }

      else
      {
        v9 = [WeakRetained webViewForMailContentProvider:self];
        _isDisplayingPDF = [v9 _isDisplayingPDF];
      }

      break;
    case 2:
      _isDisplayingPDF = [WeakRetained readerViewIsVisibleForMailContentProvider:self];
      break;
    case 1:
      v8 = [WeakRetained webViewForMailContentProvider:self];
      _isDisplayingPDF = v8 != 0;

      break;
  }

  return _isDisplayingPDF & 1;
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

- (void)_getReaderContentWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained readerControllerForMailContentProvider:self];

  [v6 collectReaderContentForMailWithCompletion:handlerCopy];
}

- (void)_getPDFDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained webViewForMailContentProvider:self];

  if ([v6 _isDisplayingPDF])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59___SFMailContentProvider__getPDFDataWithCompletionHandler___block_invoke;
    v7[3] = &unk_1E8490CE0;
    v9 = handlerCopy;
    v8 = v6;
    [v8 _getMainResourceDataWithCompletionHandler:v7];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (void)_getWebArchiveDataWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained webViewForMailContentProvider:self];

  v7 = objc_alloc(MEMORY[0x1E695AC08]);
  v8 = [v6 URL];
  v9 = [v7 initWithURL:v8 MIMEType:*MEMORY[0x1E69B1F80] expectedContentLength:0 textEncodingName:0];

  suggestedFilename = [v9 suggestedFilename];
  v11 = [suggestedFilename safari_ensurePathExtension:@"webarchive"];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59___SFMailContentProvider__getWebArchiveDataWithCompletion___block_invoke;
  v14[3] = &unk_1E8490CE0;
  v15 = v11;
  v16 = completionCopy;
  v12 = v11;
  v13 = completionCopy;
  [v6 _getWebArchiveDataWithCompletionHandler:v14];
}

- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error
{
  controllerCopy = controller;
  presentingViewController = [controllerCopy presentingViewController];
  if (presentingViewController)
  {
    v6 = presentingViewController;
  }

  else
  {
    v6 = controllerCopy;
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