@interface _SFWebArchiveProvider
- (BOOL)canGenerateWebArchive;
- (NSString)suggestedFilenameWithExtension;
- (WKWebView)webView;
- (_SFWebArchiveProvider)initWithWebView:(id)a3;
- (id)_quickLookDocument;
- (id)_suggestedFilenameWithoutExtension;
- (id)_webViewUTI;
- (void)generateWebArchiveWithCompletionHandler:(id)a3;
@end

@implementation _SFWebArchiveProvider

- (_SFWebArchiveProvider)initWithWebView:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _SFWebArchiveProvider;
  v5 = [(_SFWebArchiveProvider *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_webView, v4);
    v7 = [v4 URL];
    cachedWebViewURL = v6->_cachedWebViewURL;
    v6->_cachedWebViewURL = v7;

    v9 = [v4 title];
    cachedWebViewTitle = v6->_cachedWebViewTitle;
    v6->_cachedWebViewTitle = v9;

    v11 = v6;
  }

  return v6;
}

- (NSString)suggestedFilenameWithExtension
{
  v2 = [(_SFWebArchiveProvider *)self _suggestedFilenameWithoutExtension];
  v3 = [v2 safari_ensurePathExtension:@"webarchive"];

  return v3;
}

- (BOOL)canGenerateWebArchive
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);

  if (!WeakRetained)
  {
    return 0;
  }

  v4 = [(_SFWebArchiveProvider *)self _webViewUTI];
  return UTTypeConformsTo(v4, *MEMORY[0x1E69638B0]) != 0;
}

- (void)generateWebArchiveWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65___SFWebArchiveProvider_generateWebArchiveWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E8490818;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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
    v6 = [(_SFWebArchiveProvider *)self suggestedFilenameWithExtension];
    v7 = [v5 initWithFileName:v6 mimeType:*MEMORY[0x1E69B1F80] uti:0 needsQuickLookDocumentView:0];

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
  v3 = [(NSString *)self->_cachedWebViewTitle safari_suggestedFilenameFromTitleString];
  if ([v3 length])
  {
    v4 = v3;
    goto LABEL_10;
  }

  v5 = [(_SFWebArchiveProvider *)self _webViewUTI];
  if (UTTypeEqual(v5, *MEMORY[0x1E69637E8]))
  {
LABEL_4:
    v6 = [(NSURL *)self->_cachedWebViewURL host];
    v7 = [v6 safari_highLevelDomainFromHost];

    if ([v7 length])
    {
      v8 = v7;
    }

    else
    {
      v8 = _WBSLocalizedString();
    }

    v4 = v8;

    goto LABEL_10;
  }

  v9 = [(NSURL *)self->_cachedWebViewURL safari_userVisibleString];
  v4 = [v9 safari_lastPathComponentWithoutZipExtension];

  if (![v4 length])
  {

    goto LABEL_4;
  }

LABEL_10:

  return v4;
}

- (id)_webViewUTI
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v3 = [WeakRetained _MIMEType];

  PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963718], v3, 0);

  return PreferredIdentifierForTag;
}

- (WKWebView)webView
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);

  return WeakRetained;
}

@end