@interface _SFDownloadDispatcher
+ (id)sharedDownloadDispatcher;
- (_SFDownloadDispatcher)init;
- (id)downloadFromWKDownload:(id)a3 userInitiatedAction:(id)a4;
- (id)prepareForDownloadFromWebView:(id)a3 request:(id)a4 MIMEType:(id)a5 uti:(id)a6 userInitiatedAction:(id)a7;
- (id)startDownloadForCurrentURLFromWebView:(id)a3;
- (id)startDownloadFromWebView:(id)a3 URL:(id)a4;
- (void)_download:(id)a3 decidePlaceholderPolicy:(id)a4;
- (void)_download:(id)a3 didReceiveFinalURL:(id)a4;
- (void)_download:(id)a3 didReceivePlaceholderURL:(id)a4 completionHandler:(id)a5;
- (void)download:(id)a3 decideDestinationUsingResponse:(id)a4 suggestedFilename:(id)a5 completionHandler:(id)a6;
- (void)download:(id)a3 didFailWithError:(id)a4 resumeData:(id)a5;
- (void)download:(id)a3 didWriteTotalBytes:(unint64_t)a4 totalBytesExpectedToWrite:(unint64_t)a5;
- (void)downloadDidFinish:(id)a3;
- (void)downloadDidStart:(id)a3;
- (void)registerResumedDownload:(id)a3;
@end

@implementation _SFDownloadDispatcher

+ (id)sharedDownloadDispatcher
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49___SFDownloadDispatcher_sharedDownloadDispatcher__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedDownloadDispatcher_onceToken != -1)
  {
    dispatch_once(&sharedDownloadDispatcher_onceToken, block);
  }

  v2 = sharedDownloadDispatcher_instance;

  return v2;
}

- (_SFDownloadDispatcher)init
{
  v8.receiver = self;
  v8.super_class = _SFDownloadDispatcher;
  v2 = [(_SFDownloadDispatcher *)&v8 init];
  v3 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  pendingDownloadMap = v2->_pendingDownloadMap;
  v2->_pendingDownloadMap = v3;

  v5 = objc_alloc_init(MEMORY[0x1E696AD18]);
  activeDownloadMap = v2->_activeDownloadMap;
  v2->_activeDownloadMap = v5;

  return v2;
}

- (id)prepareForDownloadFromWebView:(id)a3 request:(id)a4 MIMEType:(id)a5 uti:(id)a6 userInitiatedAction:(id)a7
{
  v12 = a3;
  v13 = [_SFDownload provisionalDownloadWithMIMEType:a5 request:a4 response:0 filename:0 uti:a6 userInitiatedAction:a7];
  [(_SFDownloadDispatcher *)self setPendingDownload:v13 forWebView:v12];

  return v13;
}

- (id)startDownloadFromWebView:(id)a3 URL:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 pathExtension];
  if ([(__CFString *)v8 length])
  {
    PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963710], v8, 0);
  }

  else
  {
    PreferredIdentifierForTag = *MEMORY[0x1E6963798];
  }

  v10 = PreferredIdentifierForTag;
  v11 = [MEMORY[0x1E695AC68] safari_nonAppInitiatedRequestWithURL:v6];
  v12 = [(_SFDownloadDispatcher *)self prepareForDownloadFromWebView:v7 request:v11 MIMEType:0 uti:v10 userInitiatedAction:0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54___SFDownloadDispatcher_startDownloadFromWebView_URL___block_invoke;
  v14[3] = &unk_1E8495EB0;
  v14[4] = self;
  [v7 startDownloadUsingRequest:v11 completionHandler:v14];

  return v12;
}

- (id)startDownloadForCurrentURLFromWebView:(id)a3
{
  v4 = MEMORY[0x1E695AC68];
  v5 = a3;
  v6 = [v5 URL];
  v7 = [v4 safari_nonAppInitiatedRequestWithURL:v6];

  v8 = [v5 _MIMEType];
  v9 = [v5 _sf_suggestedFilename];
  v10 = [_SFDownload provisionalDownloadWithMIMEType:v8 request:v7 response:0 filename:v9 uti:0 userInitiatedAction:0];

  [(_SFDownloadDispatcher *)self setPendingDownload:v10 forWebView:v5];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63___SFDownloadDispatcher_startDownloadForCurrentURLFromWebView___block_invoke;
  v12[3] = &unk_1E8495EB0;
  v12[4] = self;
  [v5 startDownloadUsingRequest:v7 completionHandler:v12];

  return v10;
}

- (id)downloadFromWKDownload:(id)a3 userInitiatedAction:(id)a4
{
  v5 = a4;
  v6 = [a3 originalRequest];
  v7 = [_SFDownload provisionalDownloadWithMIMEType:0 request:v6 response:0 filename:0 uti:0 userInitiatedAction:v5];

  return v7;
}

- (void)registerResumedDownload:(id)a3
{
  v4 = a3;
  v5 = [v4 wkDownload];
  [v5 setDelegate:self];
  [(NSMapTable *)self->_activeDownloadMap setObject:v4 forKey:v5];
}

- (void)downloadDidStart:(id)a3
{
  v4 = a3;
  [v4 setDelegate:self];
  v5 = [(NSMapTable *)self->_activeDownloadMap objectForKey:v4];
  if (!v5)
  {
    v7 = [v4 webView];
    v8 = [(NSMapTable *)self->_pendingDownloadMap objectForKey:v7];
    if (v8)
    {
      v6 = v8;
LABEL_5:
      [(NSMapTable *)self->_pendingDownloadMap removeObjectForKey:v7];
      [(NSMapTable *)self->_activeDownloadMap setObject:v6 forKey:v4];
      [v6 downloadDidStart:v4];
LABEL_12:

      goto LABEL_13;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v7;
      v10 = [v9 delegate];
      if (objc_opt_respondsToSelector())
      {
        v6 = [v10 sfWebView:v9 didStartDownload:v4];

        if (v6)
        {
          goto LABEL_5;
        }
      }

      else
      {
      }
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __42___SFDownloadDispatcher_downloadDidStart___block_invoke;
    v11[3] = &unk_1E8495ED8;
    v11[4] = self;
    v12 = v4;
    [v12 cancel:v11];

    v6 = 0;
    goto LABEL_12;
  }

  v6 = v5;
  [v5 downloadDidStart:v4];
LABEL_13:
}

- (void)download:(id)a3 didWriteTotalBytes:(unint64_t)a4 totalBytesExpectedToWrite:(unint64_t)a5
{
  activeDownloadMap = self->_activeDownloadMap;
  v8 = a3;
  v9 = [(NSMapTable *)activeDownloadMap objectForKey:v8];
  [v9 download:v8 didWriteTotalBytes:a4 totalBytesExpectedToWrite:a5];
}

- (void)download:(id)a3 decideDestinationUsingResponse:(id)a4 suggestedFilename:(id)a5 completionHandler:(id)a6
{
  v15 = a3;
  v10 = a5;
  activeDownloadMap = self->_activeDownloadMap;
  v12 = a6;
  v13 = a4;
  v14 = [(NSMapTable *)activeDownloadMap objectForKey:v15];
  [v14 download:v15 didReceiveResponse:v13];

  if (v14)
  {
    [v14 download:v15 decideDestinationWithSuggestedFilename:v10 completionHandler:v12];
  }

  else
  {
    v12[2](v12, 0);
  }
}

- (void)downloadDidFinish:(id)a3
{
  activeDownloadMap = self->_activeDownloadMap;
  v5 = a3;
  v6 = [(NSMapTable *)activeDownloadMap objectForKey:v5];
  [v6 downloadDidFinish:v5];
  [(NSMapTable *)self->_activeDownloadMap removeObjectForKey:v5];
}

- (void)download:(id)a3 didFailWithError:(id)a4 resumeData:(id)a5
{
  activeDownloadMap = self->_activeDownloadMap;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(NSMapTable *)activeDownloadMap objectForKey:v11];
  [v12 download:v11 didFailWithError:v10 resumeData:v9];

  [(NSMapTable *)self->_activeDownloadMap removeObjectForKey:v11];
}

- (void)_download:(id)a3 decidePlaceholderPolicy:(id)a4
{
  activeDownloadMap = self->_activeDownloadMap;
  v6 = a4;
  v7 = a3;
  v8 = [(NSMapTable *)activeDownloadMap objectForKey:v7];
  [v8 download:v7 decidePlaceholderPolicy:v6];
}

- (void)_download:(id)a3 didReceivePlaceholderURL:(id)a4 completionHandler:(id)a5
{
  activeDownloadMap = self->_activeDownloadMap;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(NSMapTable *)activeDownloadMap objectForKey:v10];
  [v11 download:v10 didReceivePlaceholderURL:v9 completionHandler:v8];
}

- (void)_download:(id)a3 didReceiveFinalURL:(id)a4
{
  activeDownloadMap = self->_activeDownloadMap;
  v6 = a4;
  v7 = a3;
  v8 = [(NSMapTable *)activeDownloadMap objectForKey:v7];
  [v8 download:v7 didReceiveFinalURL:v6];
}

@end