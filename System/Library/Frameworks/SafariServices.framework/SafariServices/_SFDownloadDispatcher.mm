@interface _SFDownloadDispatcher
+ (id)sharedDownloadDispatcher;
- (_SFDownloadDispatcher)init;
- (id)downloadFromWKDownload:(id)download userInitiatedAction:(id)action;
- (id)prepareForDownloadFromWebView:(id)view request:(id)request MIMEType:(id)type uti:(id)uti userInitiatedAction:(id)action;
- (id)startDownloadForCurrentURLFromWebView:(id)view;
- (id)startDownloadFromWebView:(id)view URL:(id)l;
- (void)_download:(id)_download decidePlaceholderPolicy:(id)policy;
- (void)_download:(id)_download didReceiveFinalURL:(id)l;
- (void)_download:(id)_download didReceivePlaceholderURL:(id)l completionHandler:(id)handler;
- (void)download:(id)download decideDestinationUsingResponse:(id)response suggestedFilename:(id)filename completionHandler:(id)handler;
- (void)download:(id)download didFailWithError:(id)error resumeData:(id)data;
- (void)download:(id)download didWriteTotalBytes:(unint64_t)bytes totalBytesExpectedToWrite:(unint64_t)write;
- (void)downloadDidFinish:(id)finish;
- (void)downloadDidStart:(id)start;
- (void)registerResumedDownload:(id)download;
@end

@implementation _SFDownloadDispatcher

+ (id)sharedDownloadDispatcher
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49___SFDownloadDispatcher_sharedDownloadDispatcher__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
  weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  pendingDownloadMap = v2->_pendingDownloadMap;
  v2->_pendingDownloadMap = weakToStrongObjectsMapTable;

  v5 = objc_alloc_init(MEMORY[0x1E696AD18]);
  activeDownloadMap = v2->_activeDownloadMap;
  v2->_activeDownloadMap = v5;

  return v2;
}

- (id)prepareForDownloadFromWebView:(id)view request:(id)request MIMEType:(id)type uti:(id)uti userInitiatedAction:(id)action
{
  viewCopy = view;
  v13 = [_SFDownload provisionalDownloadWithMIMEType:type request:request response:0 filename:0 uti:uti userInitiatedAction:action];
  [(_SFDownloadDispatcher *)self setPendingDownload:v13 forWebView:viewCopy];

  return v13;
}

- (id)startDownloadFromWebView:(id)view URL:(id)l
{
  lCopy = l;
  viewCopy = view;
  pathExtension = [lCopy pathExtension];
  if ([(__CFString *)pathExtension length])
  {
    PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963710], pathExtension, 0);
  }

  else
  {
    PreferredIdentifierForTag = *MEMORY[0x1E6963798];
  }

  v10 = PreferredIdentifierForTag;
  v11 = [MEMORY[0x1E695AC68] safari_nonAppInitiatedRequestWithURL:lCopy];
  v12 = [(_SFDownloadDispatcher *)self prepareForDownloadFromWebView:viewCopy request:v11 MIMEType:0 uti:v10 userInitiatedAction:0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54___SFDownloadDispatcher_startDownloadFromWebView_URL___block_invoke;
  v14[3] = &unk_1E8495EB0;
  v14[4] = self;
  [viewCopy startDownloadUsingRequest:v11 completionHandler:v14];

  return v12;
}

- (id)startDownloadForCurrentURLFromWebView:(id)view
{
  v4 = MEMORY[0x1E695AC68];
  viewCopy = view;
  v6 = [viewCopy URL];
  v7 = [v4 safari_nonAppInitiatedRequestWithURL:v6];

  _MIMEType = [viewCopy _MIMEType];
  _sf_suggestedFilename = [viewCopy _sf_suggestedFilename];
  v10 = [_SFDownload provisionalDownloadWithMIMEType:_MIMEType request:v7 response:0 filename:_sf_suggestedFilename uti:0 userInitiatedAction:0];

  [(_SFDownloadDispatcher *)self setPendingDownload:v10 forWebView:viewCopy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63___SFDownloadDispatcher_startDownloadForCurrentURLFromWebView___block_invoke;
  v12[3] = &unk_1E8495EB0;
  v12[4] = self;
  [viewCopy startDownloadUsingRequest:v7 completionHandler:v12];

  return v10;
}

- (id)downloadFromWKDownload:(id)download userInitiatedAction:(id)action
{
  actionCopy = action;
  originalRequest = [download originalRequest];
  v7 = [_SFDownload provisionalDownloadWithMIMEType:0 request:originalRequest response:0 filename:0 uti:0 userInitiatedAction:actionCopy];

  return v7;
}

- (void)registerResumedDownload:(id)download
{
  downloadCopy = download;
  wkDownload = [downloadCopy wkDownload];
  [wkDownload setDelegate:self];
  [(NSMapTable *)self->_activeDownloadMap setObject:downloadCopy forKey:wkDownload];
}

- (void)downloadDidStart:(id)start
{
  startCopy = start;
  [startCopy setDelegate:self];
  v5 = [(NSMapTable *)self->_activeDownloadMap objectForKey:startCopy];
  if (!v5)
  {
    webView = [startCopy webView];
    v8 = [(NSMapTable *)self->_pendingDownloadMap objectForKey:webView];
    if (v8)
    {
      v6 = v8;
LABEL_5:
      [(NSMapTable *)self->_pendingDownloadMap removeObjectForKey:webView];
      [(NSMapTable *)self->_activeDownloadMap setObject:v6 forKey:startCopy];
      [v6 downloadDidStart:startCopy];
LABEL_12:

      goto LABEL_13;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = webView;
      delegate = [v9 delegate];
      if (objc_opt_respondsToSelector())
      {
        v6 = [delegate sfWebView:v9 didStartDownload:startCopy];

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
    v12 = startCopy;
    [v12 cancel:v11];

    v6 = 0;
    goto LABEL_12;
  }

  v6 = v5;
  [v5 downloadDidStart:startCopy];
LABEL_13:
}

- (void)download:(id)download didWriteTotalBytes:(unint64_t)bytes totalBytesExpectedToWrite:(unint64_t)write
{
  activeDownloadMap = self->_activeDownloadMap;
  downloadCopy = download;
  v9 = [(NSMapTable *)activeDownloadMap objectForKey:downloadCopy];
  [v9 download:downloadCopy didWriteTotalBytes:bytes totalBytesExpectedToWrite:write];
}

- (void)download:(id)download decideDestinationUsingResponse:(id)response suggestedFilename:(id)filename completionHandler:(id)handler
{
  downloadCopy = download;
  filenameCopy = filename;
  activeDownloadMap = self->_activeDownloadMap;
  handlerCopy = handler;
  responseCopy = response;
  v14 = [(NSMapTable *)activeDownloadMap objectForKey:downloadCopy];
  [v14 download:downloadCopy didReceiveResponse:responseCopy];

  if (v14)
  {
    [v14 download:downloadCopy decideDestinationWithSuggestedFilename:filenameCopy completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)downloadDidFinish:(id)finish
{
  activeDownloadMap = self->_activeDownloadMap;
  finishCopy = finish;
  v6 = [(NSMapTable *)activeDownloadMap objectForKey:finishCopy];
  [v6 downloadDidFinish:finishCopy];
  [(NSMapTable *)self->_activeDownloadMap removeObjectForKey:finishCopy];
}

- (void)download:(id)download didFailWithError:(id)error resumeData:(id)data
{
  activeDownloadMap = self->_activeDownloadMap;
  dataCopy = data;
  errorCopy = error;
  downloadCopy = download;
  v12 = [(NSMapTable *)activeDownloadMap objectForKey:downloadCopy];
  [v12 download:downloadCopy didFailWithError:errorCopy resumeData:dataCopy];

  [(NSMapTable *)self->_activeDownloadMap removeObjectForKey:downloadCopy];
}

- (void)_download:(id)_download decidePlaceholderPolicy:(id)policy
{
  activeDownloadMap = self->_activeDownloadMap;
  policyCopy = policy;
  _downloadCopy = _download;
  v8 = [(NSMapTable *)activeDownloadMap objectForKey:_downloadCopy];
  [v8 download:_downloadCopy decidePlaceholderPolicy:policyCopy];
}

- (void)_download:(id)_download didReceivePlaceholderURL:(id)l completionHandler:(id)handler
{
  activeDownloadMap = self->_activeDownloadMap;
  handlerCopy = handler;
  lCopy = l;
  _downloadCopy = _download;
  v11 = [(NSMapTable *)activeDownloadMap objectForKey:_downloadCopy];
  [v11 download:_downloadCopy didReceivePlaceholderURL:lCopy completionHandler:handlerCopy];
}

- (void)_download:(id)_download didReceiveFinalURL:(id)l
{
  activeDownloadMap = self->_activeDownloadMap;
  lCopy = l;
  _downloadCopy = _download;
  v8 = [(NSMapTable *)activeDownloadMap objectForKey:_downloadCopy];
  [v8 download:_downloadCopy didReceiveFinalURL:lCopy];
}

@end