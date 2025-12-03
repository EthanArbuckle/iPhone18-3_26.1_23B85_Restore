@interface SWHighlightCenter
+ (OS_dispatch_queue)shareURLFetchQueue;
+ (id)noticeHandlerQueue;
+ (id)signingQueue;
- (NSArray)highlights;
- (NSCache)fileURLToShareURLCache;
- (NSCache)identifierToCollaborationHighlightCache;
- (NSCache)pendingClearCache;
- (NSCache)pendingEventCache;
- (NSCache)supplementaryURLToCollaborationHighlightCache;
- (NSCache)urlToCollaborationHighlightCache;
- (NSCache)urlToHighlightCache;
- (SLDServiceProxy)cloudDocsServiceProxy;
- (SLDServiceProxy)noticeServiceProxy;
- (SWCollaborationHighlight)collaborationHighlightForIdentifier:(SWCollaborationIdentifier)collaborationIdentifier error:(NSError *)error;
- (SWHighlightCenter)initWithAppIdentifier:(id)identifier;
- (double)highlightsRankingScore;
- (id)_attributionIdentifiersForHighlight:(id)highlight;
- (id)_fetchHighlightFromAnyCacheForURL:(id)l;
- (id)_sandboxExtensionIssueFileURL:(id)l withAuditToken:(id *)token;
- (id)collaborationHighlightForURL:(id)l error:(id *)error;
- (id)delegate;
- (id)fetchAttributionForAttributionIdentifier:(id)identifier;
- (id)fetchAttributionsForHighlight:(id)highlight;
- (id)getShareURLForFileURL:(id)l;
- (id)highlightForURL:(id)l error:(id *)error;
- (id)originalSenderForCollaborationHighlight:(id)highlight;
- (void)_disconnectNoticeServiceConnectionIfNecessary;
- (void)_getCollaborationHighlightForShareURL:(id)l fileURL:(id)rL completionHandler:(id)handler;
- (void)_getShareURLForFileURL:(id)l completionHandler:(id)handler;
- (void)_notifyDelegateHighlightsDidChange;
- (void)_processClearNoticesFor:(id)for;
- (void)_processPendingHighlightEvent:(id)event;
- (void)_sendCurrentClearNoticesToDaemonAndDisconnect;
- (void)_sendCurrentNoticesToDaemonAndDisconnect;
- (void)apiAdapterHighlightsDidChange:(id)change;
- (void)clearNoticesForHighlight:(SWCollaborationHighlight *)highlight;
- (void)getCollaborationHighlightForURL:(NSURL *)URL completionHandler:(void *)completionHandler;
- (void)getHighlightForURL:(NSURL *)URL completionHandler:(void *)completionHandler;
- (void)getSignedIdentityProofForCollaborationHighlight:(SWCollaborationHighlight *)collaborationHighlight usingData:(NSData *)data completionHandler:(void *)completionHandler;
- (void)postNoticeForHighlightEvent:(id)event;
- (void)serviceProxyDidConnect:(id)connect;
- (void)serviceProxyDidDisconnect:(id)disconnect;
- (void)setDelegate:(id)delegate;
@end

@implementation SWHighlightCenter

- (SLDServiceProxy)cloudDocsServiceProxy
{
  cloudDocsServiceProxy = self->_cloudDocsServiceProxy;
  if (!cloudDocsServiceProxy)
  {
    v4 = MEMORY[0x1E69D3800];
    v5 = objc_opt_class();
    v6 = +[SWHighlightCenter shareURLFetchQueue];
    v7 = [v4 proxyForServiceClass:v5 targetSerialQueue:v6 delegate:self];
    v8 = self->_cloudDocsServiceProxy;
    self->_cloudDocsServiceProxy = v7;

    cloudDocsServiceProxy = self->_cloudDocsServiceProxy;
  }

  return cloudDocsServiceProxy;
}

+ (OS_dispatch_queue)shareURLFetchQueue
{
  if (shareURLFetchQueue_onceToken != -1)
  {
    +[SWHighlightCenter shareURLFetchQueue];
  }

  v3 = shareURLFetchQueue_shareURLFetchQueue;

  return v3;
}

void __39__SWHighlightCenter_shareURLFetchQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.SharedWithYou.SWShareURLFetchQueue", v2);
  v1 = shareURLFetchQueue_shareURLFetchQueue;
  shareURLFetchQueue_shareURLFetchQueue = v0;
}

- (NSArray)highlights
{
  _highlightCenterAdapter = [(SWHighlightCenter *)self _highlightCenterAdapter];
  highlights = [_highlightCenterAdapter highlights];
  v4 = [SWHighlight highlightsForSLHighlights:highlights];

  return v4;
}

+ (id)noticeHandlerQueue
{
  if (noticeHandlerQueue_onceToken != -1)
  {
    +[SWHighlightCenter noticeHandlerQueue];
  }

  v3 = noticeHandlerQueue__noticeHandlerQueue;

  return v3;
}

void __39__SWHighlightCenter_noticeHandlerQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.SharedWithYou.NoticeHandlerQueue", v2);
  v1 = noticeHandlerQueue__noticeHandlerQueue;
  noticeHandlerQueue__noticeHandlerQueue = v0;
}

- (SLDServiceProxy)noticeServiceProxy
{
  v3 = +[SWHighlightCenter noticeHandlerQueue];
  dispatch_assert_queue_V2(v3);

  noticeServiceProxy = self->_noticeServiceProxy;
  if (!noticeServiceProxy)
  {
    v5 = MEMORY[0x1E69D3800];
    v6 = objc_opt_class();
    v7 = +[SWHighlightCenter noticeHandlerQueue];
    v8 = [v5 proxyForServiceClass:v6 targetSerialQueue:v7 delegate:self];
    v9 = self->_noticeServiceProxy;
    self->_noticeServiceProxy = v8;

    noticeServiceProxy = self->_noticeServiceProxy;
  }

  return noticeServiceProxy;
}

+ (id)signingQueue
{
  if (signingQueue_onceToken != -1)
  {
    +[SWHighlightCenter signingQueue];
  }

  v3 = signingQueue_signingQueue;

  return v3;
}

void __33__SWHighlightCenter_signingQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.SharedWithYou.SigningQueue", v2);
  v1 = signingQueue_signingQueue;
  signingQueue_signingQueue = v0;
}

- (SWHighlightCenter)initWithAppIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = SWHighlightCenter;
  v5 = [(SWHighlightCenter *)&v13 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.SharedWithYou.HighlightArrayQueue", v6);
    highlightArrayQueue = v5->__highlightArrayQueue;
    v5->__highlightArrayQueue = v7;

    v9 = [objc_alloc(MEMORY[0x1E69D3818]) initWithAppIdentifier:identifierCopy apiAdapterDelegate:v5];
    highlightCenterAdapter = v5->__highlightCenterAdapter;
    v5->__highlightCenterAdapter = v9;

    cloudDocsServiceProxy = [(SWHighlightCenter *)v5 cloudDocsServiceProxy];
    [cloudDocsServiceProxy connect];
  }

  return v5;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    highlights = [(SWHighlightCenter *)self highlights];
    v7 = [highlights count];

    v5 = obj;
    if (v7)
    {
      [(SWHighlightCenter *)self _notifyDelegateHighlightsDidChange];
      v5 = obj;
    }
  }
}

- (NSCache)urlToHighlightCache
{
  v23 = *MEMORY[0x1E69E9840];
  allObjects = [(NSCache *)self->_urlToHighlightCache allObjects];
  v4 = [allObjects count];
  highlights = [(SWHighlightCenter *)self highlights];
  v6 = [highlights count];

  if (v4 != v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    highlights2 = [(SWHighlightCenter *)self highlights];
    v9 = [highlights2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(highlights2);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [v13 URL];
          [v7 setObject:v13 forKey:v14];
        }

        v10 = [highlights2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    [(SWHighlightCenter *)self setUrlToHighlightCache:v7];
  }

  urlToHighlightCache = self->_urlToHighlightCache;
  v16 = *MEMORY[0x1E69E9840];

  return urlToHighlightCache;
}

- (NSCache)urlToCollaborationHighlightCache
{
  v25 = *MEMORY[0x1E69E9840];
  allObjects = [(NSCache *)self->_urlToCollaborationHighlightCache allObjects];
  v4 = [allObjects count];
  highlights = [(SWHighlightCenter *)self highlights];
  v6 = [highlights count];

  if (v4 != v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    highlights2 = [(SWHighlightCenter *)self highlights];
    v9 = [highlights2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        v12 = 0;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(highlights2);
          }

          v13 = *(*(&v20 + 1) + 8 * v12);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
            v15 = [v14 URL];
            v16 = SLURLMinusFragmentForCKURLs();
            [v7 setObject:v14 forKey:v16];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [highlights2 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    [(SWHighlightCenter *)self setUrlToCollaborationHighlightCache:v7];
  }

  urlToCollaborationHighlightCache = self->_urlToCollaborationHighlightCache;
  v18 = *MEMORY[0x1E69E9840];

  return urlToCollaborationHighlightCache;
}

- (NSCache)supplementaryURLToCollaborationHighlightCache
{
  supplementaryURLToCollaborationHighlightCache = self->_supplementaryURLToCollaborationHighlightCache;
  if (!supplementaryURLToCollaborationHighlightCache)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v5 = self->_supplementaryURLToCollaborationHighlightCache;
    self->_supplementaryURLToCollaborationHighlightCache = v4;

    [(NSCache *)self->_supplementaryURLToCollaborationHighlightCache setCountLimit:50];
    supplementaryURLToCollaborationHighlightCache = self->_supplementaryURLToCollaborationHighlightCache;
  }

  return supplementaryURLToCollaborationHighlightCache;
}

- (NSCache)fileURLToShareURLCache
{
  fileURLToShareURLCache = self->_fileURLToShareURLCache;
  if (!fileURLToShareURLCache)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v5 = self->_fileURLToShareURLCache;
    self->_fileURLToShareURLCache = v4;

    [(NSCache *)self->_fileURLToShareURLCache setCountLimit:50];
    fileURLToShareURLCache = self->_fileURLToShareURLCache;
  }

  return fileURLToShareURLCache;
}

- (NSCache)identifierToCollaborationHighlightCache
{
  v24 = *MEMORY[0x1E69E9840];
  allObjects = [(NSCache *)self->_identifierToCollaborationHighlightCache allObjects];
  v4 = [allObjects count];
  highlights = [(SWHighlightCenter *)self highlights];
  v6 = [highlights count];

  if (v4 != v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    highlights2 = [(SWHighlightCenter *)self highlights];
    v9 = [highlights2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(highlights2);
          }

          v13 = *(*(&v19 + 1) + 8 * v12);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
            collaborationIdentifier = [v14 collaborationIdentifier];
            [v7 setObject:v14 forKey:collaborationIdentifier];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [highlights2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    [(SWHighlightCenter *)self setIdentifierToCollaborationHighlightCache:v7];
  }

  identifierToCollaborationHighlightCache = self->_identifierToCollaborationHighlightCache;
  v17 = *MEMORY[0x1E69E9840];

  return identifierToCollaborationHighlightCache;
}

- (NSCache)pendingEventCache
{
  pendingEventCache = self->_pendingEventCache;
  if (!pendingEventCache)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v5 = self->_pendingEventCache;
    self->_pendingEventCache = v4;

    pendingEventCache = self->_pendingEventCache;
  }

  return pendingEventCache;
}

- (NSCache)pendingClearCache
{
  pendingClearCache = self->_pendingClearCache;
  if (!pendingClearCache)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v5 = self->_pendingClearCache;
    self->_pendingClearCache = v4;

    pendingClearCache = self->_pendingClearCache;
  }

  return pendingClearCache;
}

- (void)getSignedIdentityProofForCollaborationHighlight:(SWCollaborationHighlight *)collaborationHighlight usingData:(NSData *)data completionHandler:(void *)completionHandler
{
  v7 = collaborationHighlight;
  v8 = completionHandler;
  v9 = MEMORY[0x1E69D37D0];
  v10 = data;
  v11 = [v9 alloc];
  v12 = +[SWHighlightCenter signingQueue];
  v13 = [v11 initWithTargetSerialQueue:v12 synchronous:1];

  localIdentity = [(SWCollaborationHighlight *)v7 localIdentity];
  trackingPreventionSalt = [localIdentity trackingPreventionSalt];

  if (!trackingPreventionSalt)
  {
    v17 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SWHighlightCenter getSignedIdentityProofForCollaborationHighlight:v7 usingData:? completionHandler:?];
    }

    goto LABEL_7;
  }

  localProofOfInclusion = [(SWCollaborationHighlight *)v7 localProofOfInclusion];

  if (!localProofOfInclusion)
  {
    v17 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SWHighlightCenter getSignedIdentityProofForCollaborationHighlight:v7 usingData:? completionHandler:?];
    }

LABEL_7:
  }

  collaborationIdentifier = [(SWCollaborationHighlight *)v7 collaborationIdentifier];
  localIdentity2 = [(SWCollaborationHighlight *)v7 localIdentity];
  trackingPreventionSalt2 = [localIdentity2 trackingPreventionSalt];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __97__SWHighlightCenter_getSignedIdentityProofForCollaborationHighlight_usingData_completionHandler___block_invoke;
  v23[3] = &unk_1E7FDDE08;
  v24 = v7;
  v25 = v8;
  v21 = v8;
  v22 = v7;
  [v13 signData:v10 forCollaborationIdentifier:collaborationIdentifier trackingPreventionSalt:trackingPreventionSalt2 timeout:v23 completion:3.0];
}

void __97__SWHighlightCenter_getSignedIdentityProofForCollaborationHighlight_usingData_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v11 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A278];
    v20[0] = @"Unable to sign data.";
    v12 = MEMORY[0x1E695DF20];
    v13 = v20;
    v14 = &v19;
LABEL_6:
    v15 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:1];
    v10 = [v11 errorWithDomain:@"com.apple.SharedWithYou.SWHighlightErrorDomain" code:1 userInfo:v15];

    v9 = 0;
    goto LABEL_7;
  }

  v7 = objc_alloc(MEMORY[0x1E697B6F0]);
  v8 = [*(a1 + 32) localProofOfInclusion];
  v9 = [v7 initWithPersonIdentityProof:v8 signatureData:v5];

  if (!v9)
  {
    v11 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A278];
    v18 = @"Unable to create a signed identity proof.";
    v12 = MEMORY[0x1E695DF20];
    v13 = &v18;
    v14 = &v17;
    goto LABEL_6;
  }

  v10 = 0;
LABEL_7:
  (*(*(a1 + 40) + 16))();

  v16 = *MEMORY[0x1E69E9840];
}

- (void)clearNoticesForHighlight:(SWCollaborationHighlight *)highlight
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = highlight;
  v5 = SWFrameworkLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[SWHighlightCenter clearNoticesForHighlight:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1BBC06000, v5, OS_LOG_TYPE_INFO, "%s: received clearNotices for highlight: %@", &v7, 0x16u);
  }

  [(SWHighlightCenter *)self _processClearNoticesFor:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)postNoticeForHighlightEvent:(id)event
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = event;
  v5 = SWFrameworkLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[SWHighlightCenter postNoticeForHighlightEvent:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1BBC06000, v5, OS_LOG_TYPE_INFO, "%s: received postNoticeForHighlightEvent for event: %@", &v8, 0x16u);
  }

  if ([_SWHighlightEventAllowList eventTypeForClass:objc_opt_class()])
  {
    [(SWHighlightCenter *)self _processPendingHighlightEvent:v4];
  }

  else
  {
    v6 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SWHighlightCenter postNoticeForHighlightEvent:];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)fetchAttributionForAttributionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _highlightCenterAdapter = [(SWHighlightCenter *)self _highlightCenterAdapter];
  v6 = [_highlightCenterAdapter fetchAttributionForAttributionIdentifier:identifierCopy];

  return v6;
}

- (id)originalSenderForCollaborationHighlight:(id)highlight
{
  v32 = *MEMORY[0x1E69E9840];
  highlightCopy = highlight;
  v5 = highlightCopy;
  if (highlightCopy && ([highlightCopy attributions], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v7))
  {
    attributions = [v5 attributions];
    v9 = [attributions count];

    if (v9 >= 2)
    {
      v10 = SWFrameworkLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v28 = 136315138;
        v29 = "[SWHighlightCenter originalSenderForCollaborationHighlight:]";
        _os_log_impl(&dword_1BBC06000, v10, OS_LOG_TYPE_INFO, "%s: Found more than 1 attributions for the highlight, defaulting to the first.", &v28, 0xCu);
      }
    }

    attributions2 = [v5 attributions];
    firstObject = [attributions2 firstObject];
    uniqueIdentifier = [firstObject uniqueIdentifier];

    earliestAttributionIdentifiers = [v5 earliestAttributionIdentifiers];
    v15 = [earliestAttributionIdentifiers objectForKey:uniqueIdentifier];
    v16 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v28 = 136315394;
      v29 = "[SWHighlightCenter originalSenderForCollaborationHighlight:]";
      v30 = 2112;
      v31 = v15;
      _os_log_impl(&dword_1BBC06000, v16, OS_LOG_TYPE_INFO, "%s: Refetching Earliest attribution with ID: %@.", &v28, 0x16u);
    }

    v17 = [(SWHighlightCenter *)self fetchAttributionForAttributionIdentifier:v15];
    if (v17)
    {
      v18 = objc_alloc(MEMORY[0x1E697B730]);
      sender = [v17 sender];
      handle = [sender handle];
      sender2 = [v17 sender];
      displayName = [sender2 displayName];
      v23 = [v18 initWithHandle:handle identity:0 displayName:displayName thumbnailImageData:0];

      v24 = SWFrameworkLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v28 = 136315394;
        v29 = "[SWHighlightCenter originalSenderForCollaborationHighlight:]";
        v30 = 2112;
        v31 = v23;
        _os_log_impl(&dword_1BBC06000, v24, OS_LOG_TYPE_INFO, "%s: Returning original sender %@.", &v28, 0x16u);
      }
    }

    else
    {
      v23 = 0;
    }

    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)fetchAttributionsForHighlight:(id)highlight
{
  highlightCopy = highlight;
  _highlightCenterAdapter = [(SWHighlightCenter *)self _highlightCenterAdapter];
  slHighlight = [highlightCopy slHighlight];
  v7 = [_highlightCenterAdapter fetchAttributionsForHighlight:slHighlight];

  objc_opt_class();
  LOBYTE(_highlightCenterAdapter) = objc_opt_isKindOfClass();

  if (_highlightCenterAdapter)
  {
    v8 = [[SWCollaborationHighlight alloc] initWithSLCollaborationHighlight:v7];
  }

  else
  {
    v8 = [[SWHighlight alloc] initWithSLHighlight:v7];
  }

  v9 = v8;

  return v9;
}

- (double)highlightsRankingScore
{
  _highlightCenterAdapter = [(SWHighlightCenter *)self _highlightCenterAdapter];
  [_highlightCenterAdapter highlightsRankingScore];
  v4 = v3;

  return v4;
}

- (void)_getShareURLForFileURL:(id)l completionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  if ([lCopy isFileURL])
  {
    fileURLToShareURLCache = [(SWHighlightCenter *)self fileURLToShareURLCache];
    v9 = [fileURLToShareURLCache objectForKey:lCopy];

    if (v9)
    {
      fileURLToShareURLCache2 = [(SWHighlightCenter *)self fileURLToShareURLCache];
      v11 = [fileURLToShareURLCache2 objectForKey:lCopy];

      v12 = SWFrameworkLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v20 = "[SWHighlightCenter _getShareURLForFileURL:completionHandler:]";
        v21 = 2112;
        v22 = v11;
        v23 = 2112;
        v24 = lCopy;
        _os_log_impl(&dword_1BBC06000, v12, OS_LOG_TYPE_INFO, "%s: Found cached shareURL: %@ for URL: %@.", buf, 0x20u);
      }

      handlerCopy[2](handlerCopy, v11);
    }

    else
    {
      v14 = +[SWHighlightCenter shareURLFetchQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __62__SWHighlightCenter__getShareURLForFileURL_completionHandler___block_invoke;
      block[3] = &unk_1E7FDDD40;
      block[4] = self;
      v17 = lCopy;
      v18 = handlerCopy;
      dispatch_async(v14, block);
    }
  }

  else
  {
    v13 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v20 = "[SWHighlightCenter _getShareURLForFileURL:completionHandler:]";
      v21 = 2112;
      v22 = lCopy;
      _os_log_impl(&dword_1BBC06000, v13, OS_LOG_TYPE_INFO, "%s: URL passed in NOT a file URL: %@.", buf, 0x16u);
    }

    handlerCopy[2](handlerCopy, 0);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __62__SWHighlightCenter__getShareURLForFileURL_completionHandler___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cloudDocsServiceProxy];
  v3 = [v2 synchronousRemoteService];

  v21 = 0;
  v22 = &v21;
  v23 = 0x4010000000;
  v24 = &unk_1BBC4DBED;
  v25 = 0u;
  v26 = 0u;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __62__SWHighlightCenter__getShareURLForFileURL_completionHandler___block_invoke_2;
  v20[3] = &unk_1E7FDDE30;
  v20[4] = &v21;
  [v3 prepareConnectionWithReply:v20];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(v22 + 3);
  *buf = *(v22 + 2);
  *&buf[16] = v6;
  v7 = [v4 _sandboxExtensionIssueFileURL:v5 withAuditToken:buf];
  if (v7)
  {
    v8 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 40);
      *buf = 136315650;
      *&buf[4] = "[SWHighlightCenter _getShareURLForFileURL:completionHandler:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v9;
      *&buf[22] = 2112;
      *&buf[24] = v7;
      _os_log_impl(&dword_1BBC06000, v8, OS_LOG_TYPE_INFO, "%s: Sending request to fetch the shareURL for URL: %@. tokenData: %@", buf, 0x20u);
    }

    if (objc_opt_respondsToSelector())
    {
      v10 = *(a1 + 40);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __62__SWHighlightCenter__getShareURLForFileURL_completionHandler___block_invoke_102;
      v16[3] = &unk_1E7FDDE58;
      v11 = v10;
      v12 = *(a1 + 32);
      v17 = v11;
      v18 = v12;
      v19 = *(a1 + 48);
      [v3 shareURLForFileURL:v11 sandboxTokenData:v7 reply:v16];
    }
  }

  else
  {
    v13 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 40);
      *buf = 136315394;
      *&buf[4] = "[SWHighlightCenter _getShareURLForFileURL:completionHandler:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v14;
      _os_log_impl(&dword_1BBC06000, v13, OS_LOG_TYPE_INFO, "%s: Failed to get tokendata for URL: %@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  _Block_object_dispose(&v21, 8);
  v15 = *MEMORY[0x1E69E9840];
}

void __62__SWHighlightCenter__getShareURLForFileURL_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696B0B8] currentConnection];
  [v2 auditToken];
  v3 = *(*(a1 + 32) + 8);
  v4 = v6;
  *(v3 + 32) = v5;
  *(v3 + 48) = v4;
}

void __62__SWHighlightCenter__getShareURLForFileURL_completionHandler___block_invoke_102(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__SWHighlightCenter__getShareURLForFileURL_completionHandler___block_invoke_2_103;
  v8[3] = &unk_1E7FDDC60;
  v9 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v7 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

uint64_t __62__SWHighlightCenter__getShareURLForFileURL_completionHandler___block_invoke_2_103(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = SWFrameworkLogHandle();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v13 = 136315650;
      v14 = "[SWHighlightCenter _getShareURLForFileURL:completionHandler:]_block_invoke_2";
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_1BBC06000, v3, OS_LOG_TYPE_INFO, "%s: Obtained shareURL: %@ for URL: %@.", &v13, 0x20u);
    }

    v7 = [*(a1 + 48) fileURLToShareURLCache];
    [v7 setObject:*(a1 + 32) forKey:*(a1 + 40)];

    v8 = *(a1 + 32);
    v9 = *(*(a1 + 56) + 16);
  }

  else
  {
    if (v4)
    {
      v10 = *(a1 + 40);
      v13 = 136315394;
      v14 = "[SWHighlightCenter _getShareURLForFileURL:completionHandler:]_block_invoke";
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_1BBC06000, v3, OS_LOG_TYPE_INFO, "%s: Failed to fetch shareURL for URL: %@.", &v13, 0x16u);
    }

    v9 = *(*(a1 + 56) + 16);
  }

  result = v9();
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_getCollaborationHighlightForShareURL:(id)l fileURL:(id)rL completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  handlerCopy = handler;
  if (lCopy && rLCopy)
  {
    supplementaryURLToCollaborationHighlightCache = [(SWHighlightCenter *)self supplementaryURLToCollaborationHighlightCache];
    v12 = [supplementaryURLToCollaborationHighlightCache objectForKey:lCopy];

    if (v12)
    {
      supplementaryURLToCollaborationHighlightCache2 = [(SWHighlightCenter *)self supplementaryURLToCollaborationHighlightCache];
      v14 = [supplementaryURLToCollaborationHighlightCache2 objectForKey:lCopy];

      v15 = SWFrameworkLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v24 = "[SWHighlightCenter _getCollaborationHighlightForShareURL:fileURL:completionHandler:]";
        v25 = 2112;
        v26 = v14;
        v27 = 2112;
        v28 = lCopy;
        _os_log_impl(&dword_1BBC06000, v15, OS_LOG_TYPE_DEFAULT, "%s: Found cached highlight: %@ for URL: %@.", buf, 0x20u);
      }

      handlerCopy[2](handlerCopy, v14);
    }

    else
    {
      v17 = +[SWHighlightCenter shareURLFetchQueue];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __85__SWHighlightCenter__getCollaborationHighlightForShareURL_fileURL_completionHandler___block_invoke;
      v19[3] = &unk_1E7FDDC60;
      v19[4] = self;
      v20 = rLCopy;
      v21 = lCopy;
      v22 = handlerCopy;
      dispatch_async(v17, v19);
    }
  }

  else
  {
    v16 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SWHighlightCenter _getCollaborationHighlightForShareURL:fileURL:completionHandler:];
    }

    handlerCopy[2](handlerCopy, 0);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __85__SWHighlightCenter__getCollaborationHighlightForShareURL_fileURL_completionHandler___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cloudDocsServiceProxy];
  v3 = [v2 synchronousRemoteService];

  v32 = 0;
  v33 = &v32;
  v34 = 0x4010000000;
  v35 = &unk_1BBC4DBED;
  v36 = 0u;
  v37 = 0u;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __85__SWHighlightCenter__getCollaborationHighlightForShareURL_fileURL_completionHandler___block_invoke_2;
  v31[3] = &unk_1E7FDDE30;
  v31[4] = &v32;
  [v3 prepareConnectionWithReply:v31];
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v6 = *(v33 + 3);
  *buf = *(v33 + 2);
  *&buf[16] = v6;
  v7 = [v5 _sandboxExtensionIssueFileURL:v4 withAuditToken:buf];
  if (!v7)
  {
    v18 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __85__SWHighlightCenter__getCollaborationHighlightForShareURL_fileURL_completionHandler___block_invoke_cold_2((a1 + 40));
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __85__SWHighlightCenter__getCollaborationHighlightForShareURL_fileURL_completionHandler___block_invoke_112;
    v24[3] = &unk_1E7FDDED0;
    v17 = &v25;
    v25 = *(a1 + 56);
    v19 = MEMORY[0x1E69E96A0];
    v20 = v24;
    goto LABEL_12;
  }

  v8 = SWFrameworkLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    *buf = 136315906;
    *&buf[4] = "[SWHighlightCenter _getCollaborationHighlightForShareURL:fileURL:completionHandler:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v9;
    *&buf[22] = 2112;
    *&buf[24] = v10;
    v39 = 2112;
    v40 = v7;
    _os_log_impl(&dword_1BBC06000, v8, OS_LOG_TYPE_DEFAULT, "%s: Sending request to fetch the collaboration highlight for shareURL: %@ fileURL: %@ tokenData: %@", buf, 0x2Au);
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v21 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __85__SWHighlightCenter__getCollaborationHighlightForShareURL_fileURL_completionHandler___block_invoke_cold_1();
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__SWHighlightCenter__getCollaborationHighlightForShareURL_fileURL_completionHandler___block_invoke_111;
    block[3] = &unk_1E7FDDED0;
    v17 = &v27;
    v27 = *(a1 + 56);
    v19 = MEMORY[0x1E69E96A0];
    v20 = block;
LABEL_12:
    dispatch_async(v19, v20);
    goto LABEL_13;
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __85__SWHighlightCenter__getCollaborationHighlightForShareURL_fileURL_completionHandler___block_invoke_108;
  v28[3] = &unk_1E7FDDEA8;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 40);
  v23 = *(a1 + 32);
  v14 = *(a1 + 56);
  *&v15 = v23;
  *(&v15 + 1) = v14;
  *&v16 = v12;
  *(&v16 + 1) = v13;
  v29 = v16;
  v30 = v15;
  [v3 getCollaborationHighlightForShareURL:v12 fileURL:v11 sandboxTokenData:v7 reply:v28];

  v17 = &v29;
LABEL_13:

  _Block_object_dispose(&v32, 8);
  v22 = *MEMORY[0x1E69E9840];
}

void __85__SWHighlightCenter__getCollaborationHighlightForShareURL_fileURL_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696B0B8] currentConnection];
  [v2 auditToken];
  v3 = *(*(a1 + 32) + 8);
  v4 = v6;
  *(v3 + 32) = v5;
  *(v3 + 48) = v4;
}

void __85__SWHighlightCenter__getCollaborationHighlightForShareURL_fileURL_completionHandler___block_invoke_108(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__SWHighlightCenter__getCollaborationHighlightForShareURL_fileURL_completionHandler___block_invoke_2_109;
  block[3] = &unk_1E7FDDE80;
  v11 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = *(a1 + 48);
  v6 = *(&v9 + 1);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v12 = v7;
  v13 = v9;
  v8 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __85__SWHighlightCenter__getCollaborationHighlightForShareURL_fileURL_completionHandler___block_invoke_2_109(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = SWFrameworkLogHandle();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v11 = 136315906;
      v12 = "[SWHighlightCenter _getCollaborationHighlightForShareURL:fileURL:completionHandler:]_block_invoke_2";
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1BBC06000, v4, OS_LOG_TYPE_DEFAULT, "%s: Obtained collaborationHighlight: %@ for shareURL: %@ fileURL: %@", &v11, 0x2Au);
    }

    v8 = [[SWCollaborationHighlight alloc] initWithSLCollaborationHighlight:*(a1 + 32)];
    v9 = [*(a1 + 56) supplementaryURLToCollaborationHighlightCache];
    [v9 setObject:v8 forKey:*(a1 + 40)];

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __85__SWHighlightCenter__getCollaborationHighlightForShareURL_fileURL_completionHandler___block_invoke_2_109_cold_1(a1);
    }

    (*(*(a1 + 64) + 16))();
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)getHighlightForURL:(NSURL *)URL completionHandler:(void *)completionHandler
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = URL;
  v7 = completionHandler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__SWHighlightCenter_getHighlightForURL_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7FDDE58;
  aBlock[4] = self;
  v8 = v6;
  v21 = v8;
  v9 = v7;
  v22 = v9;
  v10 = _Block_copy(aBlock);
  urlToHighlightCache = [(SWHighlightCenter *)self urlToHighlightCache];
  allObjects = [urlToHighlightCache allObjects];
  v13 = [allObjects count];

  v14 = SWFrameworkLogHandle();
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v24 = "[SWHighlightCenter getHighlightForURL:completionHandler:]";
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&dword_1BBC06000, v15, OS_LOG_TYPE_INFO, "%s: Fetching highlight for URL: %@.", buf, 0x16u);
    }

    v16 = SLURLMinusFragmentForCKURLs();
    if ([v16 isFileURL])
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __58__SWHighlightCenter_getHighlightForURL_completionHandler___block_invoke_117;
      v18[3] = &unk_1E7FDDEF8;
      v19 = v10;
      [(SWHighlightCenter *)self _getShareURLForFileURL:v16 completionHandler:v18];
    }

    else
    {
      (*(v10 + 2))(v10, v16);
    }
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SWHighlightCenter getHighlightForURL:completionHandler:];
    }

    (*(v10 + 2))(v10, v8);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __58__SWHighlightCenter_getHighlightForURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!v3 || ([v3 scheme], (v5 = objc_claimAutoreleasedReturnValue()) == 0) || (v6 = v5, objc_msgSend(v4, "host"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    v11 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __58__SWHighlightCenter_getHighlightForURL_completionHandler___block_invoke_cold_1(a1);
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.SharedWithYou.SWHighlightErrorDomain" code:2 userInfo:0];
    goto LABEL_9;
  }

  v8 = [*(a1 + 32) urlToHighlightCache];
  v9 = [v8 objectForKey:v4];

  if (!v9)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Highlight not found or hasn't yet been loaded for: %@", v4, *MEMORY[0x1E696A278]];
    v17[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v10 = [v13 errorWithDomain:@"com.apple.SharedWithYou.SWHighlightErrorDomain" code:2 userInfo:v15];

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v10 = 0;
LABEL_10:
  (*(*(a1 + 48) + 16))();

  v12 = *MEMORY[0x1E69E9840];
}

- (void)getCollaborationHighlightForURL:(NSURL *)URL completionHandler:(void *)completionHandler
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = URL;
  v7 = completionHandler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__SWHighlightCenter_getCollaborationHighlightForURL_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7FDDE58;
  aBlock[4] = self;
  v8 = v6;
  v23 = v8;
  v9 = v7;
  v24 = v9;
  v10 = _Block_copy(aBlock);
  v11 = SWFrameworkLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SWHighlightCenter getCollaborationHighlightForURL:completionHandler:]";
    *&buf[12] = 2112;
    *&buf[14] = v8;
    _os_log_impl(&dword_1BBC06000, v11, OS_LOG_TYPE_DEFAULT, "%s: Fetching collaboration highlight for URL: %@.", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = SLURLMinusFragmentForCKURLs();
  if ([*(*&buf[8] + 40) isFileURL])
  {
    v12 = *(*&buf[8] + 40);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __71__SWHighlightCenter_getCollaborationHighlightForURL_completionHandler___block_invoke_121;
    v20[3] = &unk_1E7FDDF70;
    v20[4] = self;
    v21 = v10;
    [(SWHighlightCenter *)self _getShareURLForFileURL:v12 completionHandler:v20];
  }

  else
  {
    _highlightCenterAdapter = [(SWHighlightCenter *)self _highlightCenterAdapter];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__SWHighlightCenter_getCollaborationHighlightForURL_completionHandler___block_invoke_123;
    v17[3] = &unk_1E7FDDF98;
    v19 = buf;
    v18 = v10;
    v14 = MEMORY[0x1E69E96A0];
    v15 = MEMORY[0x1E69E96A0];
    [_highlightCenterAdapter runAfterInitialFetch:v17 onQueue:v14];
  }

  _Block_object_dispose(buf, 8);

  v16 = *MEMORY[0x1E69E9840];
}

void __71__SWHighlightCenter_getCollaborationHighlightForURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v45[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy_;
  v42 = __Block_byref_object_dispose_;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy_;
  v36 = __Block_byref_object_dispose_;
  v37 = 0;
  if (!v3 || ([v3 scheme], (v5 = objc_claimAutoreleasedReturnValue()) == 0) || (objc_msgSend(v4, "host"), v6 = objc_claimAutoreleasedReturnValue(), v7 = v6 == 0, v6, v5, v7))
  {
    v12 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __71__SWHighlightCenter_getCollaborationHighlightForURL_completionHandler___block_invoke_cold_2(a1);
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.SharedWithYou.SWHighlightErrorDomain" code:2 userInfo:0];
    v14 = v39[5];
    v39[5] = v13;
    goto LABEL_9;
  }

  v8 = [*(a1 + 32) urlToCollaborationHighlightCache];
  v9 = [v8 objectForKey:v4];
  v10 = v33[5];
  v33[5] = v9;

  if (v33[5])
  {
    v11 = v39[5];
    (*(*(a1 + 48) + 16))();
    goto LABEL_10;
  }

  v18 = [v4 absoluteString];
  v19 = [v18 containsString:@"www.icloud.com/iclouddrive"];

  if (!v19)
  {
    v23 = MEMORY[0x1E696ABC0];
    v44 = *MEMORY[0x1E696A278];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Highlight not found or hasn't yet been loaded for: %@", v4];
    v45[0] = v14;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    v25 = [v23 errorWithDomain:@"com.apple.SharedWithYou.SWHighlightErrorDomain" code:2 userInfo:v24];
    v26 = v39[5];
    v39[5] = v25;

LABEL_9:
    v15 = v33[5];
    v16 = v39[5];
    (*(*(a1 + 48) + 16))();
    goto LABEL_10;
  }

  v20 = SWFrameworkLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    __71__SWHighlightCenter_getCollaborationHighlightForURL_completionHandler___block_invoke_cold_1(a1);
  }

  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __71__SWHighlightCenter_getCollaborationHighlightForURL_completionHandler___block_invoke_118;
  v27[3] = &unk_1E7FDDF20;
  v30 = &v32;
  v31 = &v38;
  v28 = v4;
  v29 = *(a1 + 48);
  [v21 _getCollaborationHighlightForShareURL:v28 fileURL:v22 completionHandler:v27];

LABEL_10:
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);
  v17 = *MEMORY[0x1E69E9840];
}

void __71__SWHighlightCenter_getCollaborationHighlightForURL_completionHandler___block_invoke_118(void *a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
  }

  else
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = a1[4];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Highlight not found or hasn't yet been loaded for: %@", v6, *MEMORY[0x1E696A278]];
    v16[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v9 = [v5 errorWithDomain:@"com.apple.SharedWithYou.SWHighlightErrorDomain" code:2 userInfo:v8];
    v10 = *(a1[7] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  v12 = *(*(a1[6] + 8) + 40);
  v13 = *(*(a1[7] + 8) + 40);
  (*(a1[5] + 16))();

  v14 = *MEMORY[0x1E69E9840];
}

void __71__SWHighlightCenter_getCollaborationHighlightForURL_completionHandler___block_invoke_121(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _highlightCenterAdapter];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__SWHighlightCenter_getCollaborationHighlightForURL_completionHandler___block_invoke_2;
  v6[3] = &unk_1E7FDDF48;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 runAfterInitialFetch:v6 onQueue:MEMORY[0x1E69E96A0]];
}

uint64_t __71__SWHighlightCenter_getCollaborationHighlightForURL_completionHandler___block_invoke_2(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = SWFrameworkLogHandle();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __71__SWHighlightCenter_getCollaborationHighlightForURL_completionHandler___block_invoke_2_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_1BBC06000, v5, OS_LOG_TYPE_DEFAULT, "getCollaborationHighlightForURL: highlight center has finished its first fetch. Now performing lookup for URL: %@.", &v10, 0xCu);
  }

  v7 = *(a1 + 32);
  result = (*(*(a1 + 40) + 16))();
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __71__SWHighlightCenter_getCollaborationHighlightForURL_completionHandler___block_invoke_123(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = SWFrameworkLogHandle();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __71__SWHighlightCenter_getCollaborationHighlightForURL_completionHandler___block_invoke_123_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_1BBC06000, v5, OS_LOG_TYPE_DEFAULT, "getCollaborationHighlightForURL: highlight center has finished its first fetch. Now performing lookup for URL: %@.", &v10, 0xCu);
  }

  v7 = *(*(*(a1 + 40) + 8) + 40);
  result = (*(*(a1 + 32) + 16))();
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (SWCollaborationHighlight)collaborationHighlightForIdentifier:(SWCollaborationIdentifier)collaborationIdentifier error:(NSError *)error
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = collaborationIdentifier;
  v7 = SWFrameworkLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[SWHighlightCenter collaborationHighlightForIdentifier:error:]";
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_1BBC06000, v7, OS_LOG_TYPE_DEFAULT, "%s: Fetching collaboration highlight for identifier: %@.", &v13, 0x16u);
  }

  if (v6)
  {
    identifierToCollaborationHighlightCache = [(SWHighlightCenter *)self identifierToCollaborationHighlightCache];
    v9 = [identifierToCollaborationHighlightCache objectForKey:v6];
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.SharedWithYou.SWHighlightErrorDomain" code:2 userInfo:0];
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = SWFrameworkLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[SWHighlightCenter collaborationHighlightForIdentifier:error:]";
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_1BBC06000, v10, OS_LOG_TYPE_DEFAULT, "%s: Returning highlight: %@.", &v13, 0x16u);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)_notifyDelegateHighlightsDidChange
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__SWHighlightCenter__notifyDelegateHighlightsDidChange__block_invoke;
  block[3] = &unk_1E7FDDC38;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __55__SWHighlightCenter__notifyDelegateHighlightsDidChange__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [*(a1 + 32) delegate];
      [v6 highlightCenterHighlightsDidChange:*(a1 + 32)];
    }
  }
}

- (void)serviceProxyDidConnect:(id)connect
{
  connectCopy = connect;
  v5 = +[SWHighlightCenter noticeHandlerQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SWHighlightCenter_serviceProxyDidConnect___block_invoke;
  v7[3] = &unk_1E7FDDFC0;
  v8 = connectCopy;
  selfCopy = self;
  v6 = connectCopy;
  dispatch_async(v5, v7);
}

void __44__SWHighlightCenter_serviceProxyDidConnect___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) noticeServiceProxy];

  if (v2 == v3)
  {
    [*(a1 + 40) _sendCurrentNoticesToDaemonAndDisconnect];
    v4 = *(a1 + 40);

    [v4 _sendCurrentClearNoticesToDaemonAndDisconnect];
  }
}

- (void)serviceProxyDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v5 = +[SWHighlightCenter noticeHandlerQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__SWHighlightCenter_serviceProxyDidDisconnect___block_invoke;
  v7[3] = &unk_1E7FDDFC0;
  v8 = disconnectCopy;
  selfCopy = self;
  v6 = disconnectCopy;
  dispatch_async(v5, v7);
}

void __47__SWHighlightCenter_serviceProxyDidDisconnect___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) noticeServiceProxy];

  if (v2 == v3)
  {
    v4 = [*(a1 + 40) pendingEventCache];
    v5 = [v4 allObjects];
    if ([v5 count])
    {
    }

    else
    {
      v6 = [*(a1 + 40) pendingClearCache];
      v7 = [v6 allObjects];
      v8 = [v7 count];

      if (!v8)
      {
        return;
      }
    }

    v9 = [*(a1 + 40) noticeServiceProxy];
    [v9 connect];
  }
}

- (id)_fetchHighlightFromAnyCacheForURL:(id)l
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = SLURLMinusFragmentForCKURLs();
  urlToHighlightCache = [(SWHighlightCenter *)self urlToHighlightCache];
  v6 = [urlToHighlightCache objectForKey:v4];
  v7 = [v6 copy];

  if (v7)
  {
    v8 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v20 = 136315138;
      v21 = "[SWHighlightCenter _fetchHighlightFromAnyCacheForURL:]";
      _os_log_impl(&dword_1BBC06000, v8, OS_LOG_TYPE_INFO, "%s: Returning highlight from urlToHighlightCache", &v20, 0xCu);
    }

    v9 = v7;
  }

  else
  {
    urlToCollaborationHighlightCache = [(SWHighlightCenter *)self urlToCollaborationHighlightCache];
    v11 = [urlToCollaborationHighlightCache objectForKey:v4];
    v12 = [v11 copy];

    if (v12)
    {
      v13 = SWFrameworkLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v20 = 136315138;
        v21 = "[SWHighlightCenter _fetchHighlightFromAnyCacheForURL:]";
        _os_log_impl(&dword_1BBC06000, v13, OS_LOG_TYPE_INFO, "%s: Returning highlight from urlToCollaborationHighlightCache", &v20, 0xCu);
      }

      v9 = v12;
    }

    else
    {
      supplementaryURLToCollaborationHighlightCache = [(SWHighlightCenter *)self supplementaryURLToCollaborationHighlightCache];
      v15 = [supplementaryURLToCollaborationHighlightCache objectForKey:v4];
      v9 = [v15 copy];

      if (v9)
      {
        v16 = SWFrameworkLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v20 = 136315138;
          v21 = "[SWHighlightCenter _fetchHighlightFromAnyCacheForURL:]";
          _os_log_impl(&dword_1BBC06000, v16, OS_LOG_TYPE_INFO, "%s: Returning highlight from supplementaryURLToCollaborationHighlightCache", &v20, 0xCu);
        }

        v17 = v9;
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)_processPendingHighlightEvent:(id)event
{
  eventCopy = event;
  highlightURL = [eventCopy highlightURL];
  v6 = [(SWHighlightCenter *)self _fetchHighlightFromAnyCacheForURL:highlightURL];

  if (v6)
  {
    v7 = [SWCachedHighlightEvent cachedEvent:eventCopy forHighlight:v6];
    v8 = [v7 copy];

    if (v8)
    {
      v9 = +[SWHighlightCenter noticeHandlerQueue];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __51__SWHighlightCenter__processPendingHighlightEvent___block_invoke;
      v11[3] = &unk_1E7FDDFC0;
      v11[4] = self;
      v8 = v8;
      v12 = v8;
      dispatch_async(v9, v11);
    }

    else
    {
      v10 = SWFrameworkLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [SWHighlightCenter _processPendingHighlightEvent:];
      }
    }
  }

  else
  {
    v8 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SWHighlightCenter _processPendingHighlightEvent:];
    }
  }
}

void __51__SWHighlightCenter__processPendingHighlightEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingEventCache];
  v3 = *(a1 + 40);
  v4 = [v3 uuid];
  [v2 setObject:v3 forKey:v4];

  v5 = [*(a1 + 32) noticeServiceProxy];
  LODWORD(v3) = [v5 connectionActive];

  v6 = *(a1 + 32);
  if (v3)
  {

    [v6 _sendCurrentNoticesToDaemonAndDisconnect];
  }

  else
  {
    v7 = [v6 noticeServiceProxy];
    [v7 connect];
  }
}

- (void)_processClearNoticesFor:(id)for
{
  forCopy = for;
  v5 = +[SWHighlightCenter noticeHandlerQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__SWHighlightCenter__processClearNoticesFor___block_invoke;
  v7[3] = &unk_1E7FDDFC0;
  v7[4] = self;
  v8 = forCopy;
  v6 = forCopy;
  dispatch_async(v5, v7);
}

void __45__SWHighlightCenter__processClearNoticesFor___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingClearCache];
  v3 = *(a1 + 40);
  v4 = [v3 collaborationIdentifier];
  [v2 setObject:v3 forKey:v4];

  v5 = [*(a1 + 32) noticeServiceProxy];
  LODWORD(v3) = [v5 connectionActive];

  v6 = *(a1 + 32);
  if (v3)
  {

    [v6 _sendCurrentClearNoticesToDaemonAndDisconnect];
  }

  else
  {
    v7 = [v6 noticeServiceProxy];
    [v7 connect];
  }
}

- (void)_sendCurrentClearNoticesToDaemonAndDisconnect
{
  v3 = +[SWHighlightCenter noticeHandlerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__SWHighlightCenter__sendCurrentClearNoticesToDaemonAndDisconnect__block_invoke;
  block[3] = &unk_1E7FDDC38;
  block[4] = self;
  dispatch_async(v3, block);
}

void __66__SWHighlightCenter__sendCurrentClearNoticesToDaemonAndDisconnect__block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) noticeServiceProxy];
  v4 = [v3 connectionActive];

  v5 = [*v2 noticeServiceProxy];
  obj = v5;
  if (v4)
  {
    v26 = [v5 synchronousRemoteService];

    if (objc_opt_respondsToSelector())
    {
      objc_initWeak(&location, *(a1 + 32));
      v6 = [*(a1 + 32) pendingClearCache];
      v7 = [v6 allObjects];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = [MEMORY[0x1E695DEC8] array];
      }

      v11 = v9;

      v33[0] = 0;
      v33[1] = v33;
      v33[2] = 0x3032000000;
      v33[3] = __Block_byref_object_copy_;
      v33[4] = __Block_byref_object_dispose_;
      v34 = [v11 mutableCopy];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      obja = v11;
      v12 = [obja countByEnumeratingWithState:&v29 objects:v40 count:16];
      if (v12)
      {
        v14 = *v30;
        *&v13 = 136315394;
        v23 = v13;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v30 != v14)
            {
              objc_enumerationMutation(obja);
            }

            v16 = *(*(&v29 + 1) + 8 * i);
            v17 = [*(a1 + 32) _attributionIdentifiersForHighlight:{v16, v23}];
            if (![v17 count])
            {
              v21 = SWFrameworkLogHandle();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                __66__SWHighlightCenter__sendCurrentClearNoticesToDaemonAndDisconnect__block_invoke_cold_1();
              }

              _Block_object_dispose(v33, 8);
              objc_destroyWeak(&location);
              goto LABEL_23;
            }

            v18 = SWFrameworkLogHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = [v16 identifier];
              *buf = v23;
              v37 = "[SWHighlightCenter _sendCurrentClearNoticesToDaemonAndDisconnect]_block_invoke";
              v38 = 2112;
              v39 = v19;
              _os_log_impl(&dword_1BBC06000, v18, OS_LOG_TYPE_INFO, "%s: Sending clear notice for highlight: '%@'", buf, 0x16u);
            }

            v20 = [v16 collaborationIdentifier];
            v27[0] = MEMORY[0x1E69E9820];
            v27[1] = 3221225472;
            v27[2] = __66__SWHighlightCenter__sendCurrentClearNoticesToDaemonAndDisconnect__block_invoke_130;
            v27[3] = &unk_1E7FDDFE8;
            objc_copyWeak(&v28, &location);
            v27[4] = v16;
            v27[5] = v33;
            [v26 sendClearNoticesFor:v20 forAttributionIdentifiers:v17 reply:v27];

            objc_destroyWeak(&v28);
          }

          v12 = [obja countByEnumeratingWithState:&v29 objects:v40 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      _Block_object_dispose(v33, 8);
      objc_destroyWeak(&location);
    }

LABEL_23:

    v22 = *MEMORY[0x1E69E9840];
  }

  else
  {
    [v5 connect];
    v10 = *MEMORY[0x1E69E9840];
  }
}

void __66__SWHighlightCenter__sendCurrentClearNoticesToDaemonAndDisconnect__block_invoke_130(uint64_t a1, char a2)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = SWFrameworkLogHandle();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 32) identifier];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1BBC06000, v6, OS_LOG_TYPE_INFO, "Received success for clear notice for highlight: '%@'", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __66__SWHighlightCenter__sendCurrentClearNoticesToDaemonAndDisconnect__block_invoke_130_cold_1(a1);
  }

  [*(*(*(a1 + 40) + 8) + 40) removeObject:*(a1 + 32)];
  if (![*(*(*(a1 + 40) + 8) + 40) count])
  {
    [WeakRetained _disconnectNoticeServiceConnectionIfNecessary];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_sendCurrentNoticesToDaemonAndDisconnect
{
  *buf = 136315138;
  *a2 = "[SWHighlightCenter _sendCurrentNoticesToDaemonAndDisconnect]";
  _os_log_error_impl(&dword_1BBC06000, log, OS_LOG_TYPE_ERROR, "%s: No attribution identifiers for this highlight so we cannot post a notice.", buf, 0xCu);
}

void __61__SWHighlightCenter__sendCurrentNoticesToDaemonAndDisconnect__block_invoke(uint64_t a1, char a2)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = SWFrameworkLogHandle();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = *(*(*(a1 + 40) + 8) + 40);
      v8 = [*(*(*(a1 + 48) + 8) + 40) identifier];
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_1BBC06000, v6, OS_LOG_TYPE_INFO, "Received success for notice for event: '%@' highlight: '%@'", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __61__SWHighlightCenter__sendCurrentNoticesToDaemonAndDisconnect__block_invoke_cold_1(a1);
  }

  [*(*(*(a1 + 56) + 8) + 40) removeObject:*(a1 + 32)];
  if (![*(*(*(a1 + 56) + 8) + 40) count])
  {
    [WeakRetained _disconnectNoticeServiceConnectionIfNecessary];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_disconnectNoticeServiceConnectionIfNecessary
{
  v3 = +[SWHighlightCenter noticeHandlerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__SWHighlightCenter__disconnectNoticeServiceConnectionIfNecessary__block_invoke;
  block[3] = &unk_1E7FDDC38;
  block[4] = self;
  dispatch_async(v3, block);
}

void __66__SWHighlightCenter__disconnectNoticeServiceConnectionIfNecessary__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = [*(a1 + 32) pendingEventCache];
  v2 = [v10 allObjects];
  if ([v2 count])
  {

    v3 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v4 = [*(a1 + 32) pendingClearCache];
    v5 = [v4 allObjects];
    v6 = [v5 count];

    if (!v6)
    {
      v7 = SWFrameworkLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v12 = "[SWHighlightCenter _disconnectNoticeServiceConnectionIfNecessary]_block_invoke";
        _os_log_impl(&dword_1BBC06000, v7, OS_LOG_TYPE_INFO, "%s: No more notices to post, disconnecting from service proxy.", buf, 0xCu);
      }

      v8 = [*(a1 + 32) noticeServiceProxy];
      [v8 disconnect];
    }

    v9 = *MEMORY[0x1E69E9840];
  }
}

- (id)_attributionIdentifiersForHighlight:(id)highlight
{
  v23 = *MEMORY[0x1E69E9840];
  highlightCopy = highlight;
  array = [MEMORY[0x1E695DF70] array];
  attributions = [highlightCopy attributions];
  v7 = [attributions count];

  if (v7)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    attributions2 = [highlightCopy attributions];
    v9 = [attributions2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(attributions2);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          uniqueIdentifier = [v13 uniqueIdentifier];

          if (uniqueIdentifier)
          {
            uniqueIdentifier2 = [v13 uniqueIdentifier];
            [array addObject:uniqueIdentifier2];
          }
        }

        v10 = [attributions2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }
  }

  else
  {
    attributions2 = SWFrameworkLogHandle();
    if (os_log_type_enabled(attributions2, OS_LOG_TYPE_ERROR))
    {
      [(SWHighlightCenter *)self _attributionIdentifiersForHighlight:highlightCopy];
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return array;
}

- (void)apiAdapterHighlightsDidChange:(id)change
{
  changeCopy = change;
  _highlightCenterAdapter = [(SWHighlightCenter *)self _highlightCenterAdapter];

  if (_highlightCenterAdapter == changeCopy)
  {
    [(SWHighlightCenter *)self setUrlToHighlightCache:0];
    [(SWHighlightCenter *)self setSupplementaryURLToCollaborationHighlightCache:0];
    [(SWHighlightCenter *)self setUrlToCollaborationHighlightCache:0];
    [(SWHighlightCenter *)self setIdentifierToCollaborationHighlightCache:0];

    [(SWHighlightCenter *)self _notifyDelegateHighlightsDidChange];
  }
}

- (id)_sandboxExtensionIssueFileURL:(id)l withAuditToken:(id *)token
{
  lCopy = l;
  path = [lCopy path];
  hasDirectoryPath = [lCopy hasDirectoryPath];

  if (hasDirectoryPath)
  {
    v8 = [path stringByAppendingString:@"/"];

    path = v8;
  }

  v9 = *MEMORY[0x1E69E9BB0];
  [path fileSystemRepresentation];
  v10 = *MEMORY[0x1E69E9BE0];
  v14 = *token->var0;
  v15 = *&token->var0[4];
  v11 = sandbox_extension_issue_file_to_process();
  v12 = v11;
  if (v11)
  {
    v12 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v11 length:strlen(v11) + 1 freeWhenDone:{1, v14, v15}];
  }

  return v12;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)highlightForURL:(id)l error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  lCopy = l;
  urlToHighlightCache = [(SWHighlightCenter *)self urlToHighlightCache];
  allObjects = [urlToHighlightCache allObjects];
  v9 = [allObjects count];

  v10 = SWFrameworkLogHandle();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v22 = 136315394;
      v23 = "[SWHighlightCenter(Deprecations) highlightForURL:error:]";
      v24 = 2112;
      v25 = lCopy;
      _os_log_impl(&dword_1BBC06000, v11, OS_LOG_TYPE_INFO, "%s: Fetching collaboration highlight for URL: %@.", &v22, 0x16u);
    }

    v12 = SLURLMinusFragmentForCKURLs();
    if ([v12 isFileURL])
    {
      v13 = [(SWHighlightCenter *)self getShareURLForFileURL:lCopy];

      v12 = v13;
    }

    if (v12 && ([v12 scheme], (v14 = objc_claimAutoreleasedReturnValue()) != 0) && (v15 = v14, objc_msgSend(v12, "host"), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
    {
      urlToHighlightCache2 = [(SWHighlightCenter *)self urlToHighlightCache];
      v18 = [urlToHighlightCache2 objectForKey:v12];
    }

    else if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.SharedWithYou.SWHighlightErrorDomain" code:2 userInfo:0];
      *error = v18 = 0;
    }

    else
    {
      v18 = 0;
    }

    v11 = v18;

    v19 = v11;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SWHighlightCenter(Deprecations) highlightForURL:error:];
    }

    v19 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)collaborationHighlightForURL:(id)l error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v7 = SWFrameworkLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v23 = 136315394;
    v24 = "[SWHighlightCenter(Deprecations) collaborationHighlightForURL:error:]";
    v25 = 2112;
    v26 = lCopy;
    _os_log_impl(&dword_1BBC06000, v7, OS_LOG_TYPE_INFO, "%s: Fetching collaboration highlight for URL: %@.", &v23, 0x16u);
  }

  urlToCollaborationHighlightCache = [(SWHighlightCenter *)self urlToCollaborationHighlightCache];
  allObjects = [urlToCollaborationHighlightCache allObjects];
  v10 = [allObjects count];

  if (v10)
  {
    v11 = SLURLMinusFragmentForCKURLs();
    if ([v11 isFileURL])
    {
      v12 = [(SWHighlightCenter *)self getShareURLForFileURL:lCopy];

      v11 = v12;
    }

    if (v11 && ([v11 scheme], (v13 = objc_claimAutoreleasedReturnValue()) != 0) && (v14 = v13, objc_msgSend(v11, "host"), v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
    {
      urlToCollaborationHighlightCache2 = [(SWHighlightCenter *)self urlToCollaborationHighlightCache];
      v17 = [urlToCollaborationHighlightCache2 objectForKey:v11];
    }

    else if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.SharedWithYou.SWHighlightErrorDomain" code:2 userInfo:0];
      *error = v17 = 0;
    }

    else
    {
      v17 = 0;
    }

    v20 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v23 = 136315394;
      v24 = "[SWHighlightCenter(Deprecations) collaborationHighlightForURL:error:]";
      v25 = 2112;
      v26 = v17;
      _os_log_impl(&dword_1BBC06000, v20, OS_LOG_TYPE_INFO, "%s: Returning highlight: %@.", &v23, 0x16u);
    }

    v18 = v17;
    v19 = v18;
  }

  else
  {
    v18 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SWHighlightCenter(Deprecations) collaborationHighlightForURL:error:];
    }

    v19 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)getShareURLForFileURL:(id)l
{
  v44 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy_;
  v37 = __Block_byref_object_dispose_;
  lCopy = l;
  v38 = lCopy;
  if (([lCopy isFileURL] & 1) == 0)
  {
    synchronousRemoteService = SWFrameworkLogHandle();
    if (!os_log_type_enabled(synchronousRemoteService, OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    *buf = 136315394;
    *&buf[4] = "[SWHighlightCenter(Deprecations) getShareURLForFileURL:]";
    *&buf[12] = 2112;
    *&buf[14] = lCopy;
    v13 = "%s: Obtained URL is NOT a file URL: %@.";
    v14 = synchronousRemoteService;
    v15 = 22;
    goto LABEL_7;
  }

  fileURLToShareURLCache = [(SWHighlightCenter *)self fileURLToShareURLCache];
  v6 = [fileURLToShareURLCache objectForKey:lCopy];
  v7 = v6 == 0;

  if (!v7)
  {
    fileURLToShareURLCache2 = [(SWHighlightCenter *)self fileURLToShareURLCache];
    v9 = [fileURLToShareURLCache2 objectForKey:lCopy];
    v10 = v34[5];
    v34[5] = v9;

    synchronousRemoteService = SWFrameworkLogHandle();
    if (!os_log_type_enabled(synchronousRemoteService, OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    v12 = v34[5];
    *buf = 136315650;
    *&buf[4] = "[SWHighlightCenter(Deprecations) getShareURLForFileURL:]";
    *&buf[12] = 2112;
    *&buf[14] = v12;
    *&buf[22] = 2112;
    v41 = lCopy;
    v13 = "%s: Obtained cached shareURL: %@ for URL: %@.";
    v14 = synchronousRemoteService;
    v15 = 32;
LABEL_7:
    _os_log_impl(&dword_1BBC06000, v14, OS_LOG_TYPE_INFO, v13, buf, v15);
    goto LABEL_18;
  }

  cloudDocsServiceProxy = [(SWHighlightCenter *)self cloudDocsServiceProxy];
  [cloudDocsServiceProxy connect];

  cloudDocsServiceProxy2 = [(SWHighlightCenter *)self cloudDocsServiceProxy];
  synchronousRemoteService = [cloudDocsServiceProxy2 synchronousRemoteService];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x4010000000;
  v41 = &unk_1BBC4DBED;
  v42 = 0u;
  v43 = 0u;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __57__SWHighlightCenter_Deprecations__getShareURLForFileURL___block_invoke;
  v32[3] = &unk_1E7FDDE30;
  v32[4] = buf;
  [synchronousRemoteService prepareConnectionWithReply:v32];
  v18 = v34[5];
  v19 = *(*&buf[8] + 48);
  *v39 = *(*&buf[8] + 32);
  *&v39[16] = v19;
  v20 = [(SWHighlightCenter *)self _sandboxExtensionIssueFileURL:v18 withAuditToken:v39];
  if (v20)
  {
    v21 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = v34[5];
      *v39 = 136315650;
      *&v39[4] = "[SWHighlightCenter(Deprecations) getShareURLForFileURL:]";
      *&v39[12] = 2112;
      *&v39[14] = v22;
      *&v39[22] = 2112;
      *&v39[24] = v20;
      _os_log_impl(&dword_1BBC06000, v21, OS_LOG_TYPE_INFO, "%s: Trying to fetch the shareURL for URL: %@. tokenData: %@", v39, 0x20u);
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_17;
    }

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __57__SWHighlightCenter_Deprecations__getShareURLForFileURL___block_invoke_275;
    v28[3] = &unk_1E7FDE038;
    selfCopy = self;
    v31 = &v33;
    v29 = lCopy;
    [synchronousRemoteService shareURLForFileURL:v29 sandboxTokenData:v20 reply:v28];
    v23 = v29;
  }

  else
  {
    v24 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *v39 = 136315394;
      *&v39[4] = "[SWHighlightCenter(Deprecations) getShareURLForFileURL:]";
      *&v39[12] = 2112;
      *&v39[14] = lCopy;
      _os_log_impl(&dword_1BBC06000, v24, OS_LOG_TYPE_INFO, "%s: Failed to get tokendata for URL: %@", v39, 0x16u);
    }

    v23 = v34[5];
    v34[5] = 0;
  }

LABEL_17:
  _Block_object_dispose(buf, 8);
LABEL_18:

  v25 = v34[5];
  _Block_object_dispose(&v33, 8);

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

void __57__SWHighlightCenter_Deprecations__getShareURLForFileURL___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696B0B8] currentConnection];
  [v2 auditToken];
  v3 = *(*(a1 + 32) + 8);
  v4 = v6;
  *(v3 + 32) = v5;
  *(v3 + 48) = v4;
}

void __57__SWHighlightCenter_Deprecations__getShareURLForFileURL___block_invoke_275(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = SWFrameworkLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v12 = 136315650;
      v13 = "[SWHighlightCenter(Deprecations) getShareURLForFileURL:]_block_invoke";
      v14 = 2112;
      v15 = v4;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_1BBC06000, v5, OS_LOG_TYPE_INFO, "%s: Obtained shareURL: %@ for URL: %@.", &v12, 0x20u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    v8 = [*(a1 + 40) fileURLToShareURLCache];
    [v8 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:*(a1 + 32)];
  }

  else
  {
    if (v6)
    {
      v9 = *(a1 + 32);
      v12 = 136315394;
      v13 = "[SWHighlightCenter(Deprecations) getShareURLForFileURL:]_block_invoke";
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_1BBC06000, v5, OS_LOG_TYPE_INFO, "%s: Failed to fetch shareURL for URL: %@.", &v12, 0x16u);
    }

    v10 = *(*(a1 + 48) + 8);
    v8 = *(v10 + 40);
    *(v10 + 40) = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)getSignedIdentityProofForCollaborationHighlight:(void *)a1 usingData:completionHandler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)getSignedIdentityProofForCollaborationHighlight:(void *)a1 usingData:completionHandler:.cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)postNoticeForHighlightEvent:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  v1 = v0;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_getCollaborationHighlightForShareURL:fileURL:completionHandler:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_1BBC06000, v0, v1, "%s: invalid URL passed in shareURL:%@ fileURL: %@.", v3);
  v2 = *MEMORY[0x1E69E9840];
}

void __85__SWHighlightCenter__getCollaborationHighlightForShareURL_fileURL_completionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __85__SWHighlightCenter__getCollaborationHighlightForShareURL_fileURL_completionHandler___block_invoke_cold_2(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __85__SWHighlightCenter__getCollaborationHighlightForShareURL_fileURL_completionHandler___block_invoke_2_109_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)getHighlightForURL:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __58__SWHighlightCenter_getHighlightForURL_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __71__SWHighlightCenter_getCollaborationHighlightForURL_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x1E69E9840]);
  v4 = 136315650;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_1BBC06000, v1, v2, "%s: Requesting an all collaborations lookup for fileURL: %@ shareURL: %@.", v4);
  v3 = *MEMORY[0x1E69E9840];
}

void __71__SWHighlightCenter_getCollaborationHighlightForURL_completionHandler___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __71__SWHighlightCenter_getCollaborationHighlightForURL_completionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __71__SWHighlightCenter_getCollaborationHighlightForURL_completionHandler___block_invoke_123_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x1E69E9840]);
  v8 = *(*(v1 + 8) + 40);
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_processPendingHighlightEvent:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_processPendingHighlightEvent:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __66__SWHighlightCenter__sendCurrentClearNoticesToDaemonAndDisconnect__block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __66__SWHighlightCenter__sendCurrentClearNoticesToDaemonAndDisconnect__block_invoke_130_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [*(a1 + 32) identifier];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

void __61__SWHighlightCenter__sendCurrentNoticesToDaemonAndDisconnect__block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(*(*(a1 + 40) + 8) + 40);
  v8 = [*(*(*(a1 + 48) + 8) + 40) identifier];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_attributionIdentifiersForHighlight:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = [a2 identifier];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end