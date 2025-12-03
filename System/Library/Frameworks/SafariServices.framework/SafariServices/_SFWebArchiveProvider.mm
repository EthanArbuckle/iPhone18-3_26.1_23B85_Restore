@interface _SFWebArchiveProvider
- (BOOL)canGenerateWebArchive;
- (NSString)suggestedFilenameWithExtension;
- (WKWebView)webView;
- (_SFWebArchiveProvider)initWithWebView:(id)view;
- (id)_quickLookDocument;
- (id)_suggestedFilenameWithoutExtension;
- (id)_webViewUTI;
- (void)generateWebArchiveWithCompletionHandler:(id)handler;
@end

@implementation _SFWebArchiveProvider

- (_SFWebArchiveProvider)initWithWebView:(id)view
{
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = _SFWebArchiveProvider;
  v5 = [(_SFWebArchiveProvider *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_webView, viewCopy);
    v7 = [viewCopy URL];
    cachedWebViewURL = v6->_cachedWebViewURL;
    v6->_cachedWebViewURL = v7;

    title = [viewCopy title];
    cachedWebViewTitle = v6->_cachedWebViewTitle;
    v6->_cachedWebViewTitle = title;

    v11 = v6;
  }

  return v6;
}

- (NSString)suggestedFilenameWithExtension
{
  _suggestedFilenameWithoutExtension = [(_SFWebArchiveProvider *)self _suggestedFilenameWithoutExtension];
  v3 = [_suggestedFilenameWithoutExtension safari_ensurePathExtension:@"webarchive"];

  return v3;
}

- (BOOL)canGenerateWebArchive
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);

  if (!WeakRetained)
  {
    return 0;
  }

  _webViewUTI = [(_SFWebArchiveProvider *)self _webViewUTI];
  return UTTypeConformsTo(_webViewUTI, *MEMORY[0x1E69638B0]) != 0;
}

- (void)generateWebArchiveWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65___SFWebArchiveProvider_generateWebArchiveWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E8490818;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (id)_quickLookDocument
{
  quickLookDocument = self->_quickLookDocument;
  if (quickLookDocument)
  {
    v3 = quickLookDocument;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E69B1B68]);
    suggestedFilenameWithExtension = [(_SFWebArchiveProvider *)self suggestedFilenameWithExtension];
    v7 = [v5 initWithFileName:suggestedFilenameWithExtension mimeType:*MEMORY[0x1E69B1F80] uti:0 needsQuickLookDocumentView:0];

    [v7 setDocumentSource:self];
    WeakRetained = objc_loadWeakRetained(&self->_webView);
    v9 = [WeakRetained URL];
    [v7 setSourceURL:v9];

    v10 = self->_quickLookDocument;
    self->_quickLookDocument = v7;
    v11 = v7;

    [(SFQuickLookDocument *)self->_quickLookDocument saveToFileIfNeeded:&__block_literal_global_9];
    v3 = self->_quickLookDocument;
  }

  return v3;
}

- (id)_suggestedFilenameWithoutExtension
{
  safari_suggestedFilenameFromTitleString = [(NSString *)self->_cachedWebViewTitle safari_suggestedFilenameFromTitleString];
  if ([safari_suggestedFilenameFromTitleString length])
  {
    safari_lastPathComponentWithoutZipExtension = safari_suggestedFilenameFromTitleString;
    goto LABEL_10;
  }

  _webViewUTI = [(_SFWebArchiveProvider *)self _webViewUTI];
  if (UTTypeEqual(_webViewUTI, *MEMORY[0x1E69637E8]))
  {
LABEL_4:
    host = [(NSURL *)self->_cachedWebViewURL host];
    safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];

    if ([safari_highLevelDomainFromHost length])
    {
      v8 = safari_highLevelDomainFromHost;
    }

    else
    {
      v8 = _WBSLocalizedString();
    }

    safari_lastPathComponentWithoutZipExtension = v8;

    goto LABEL_10;
  }

  safari_userVisibleString = [(NSURL *)self->_cachedWebViewURL safari_userVisibleString];
  safari_lastPathComponentWithoutZipExtension = [safari_userVisibleString safari_lastPathComponentWithoutZipExtension];

  if (![safari_lastPathComponentWithoutZipExtension length])
  {

    goto LABEL_4;
  }

LABEL_10:

  return safari_lastPathComponentWithoutZipExtension;
}

- (id)_webViewUTI
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  _MIMEType = [WeakRetained _MIMEType];

  PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963718], _MIMEType, 0);

  return PreferredIdentifierForTag;
}

- (WKWebView)webView
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);

  return WeakRetained;
}

@end