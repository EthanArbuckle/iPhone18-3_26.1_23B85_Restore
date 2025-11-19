@interface RichLinkPluginDataSource
+ (BOOL)supportsURL:(id)a3;
+ (id)individualPreviewSummaryForPluginPayload:(id)a3;
+ (id)messageTintColorForView:(id)a3;
- (BOOL)hasPendingFetch;
- (BOOL)isCollaborationLink;
- (BOOL)isFromMe;
- (BOOL)metadataHasContent;
- (BOOL)metadataIsLikelyFinal;
- (BOOL)metadataIsViableForDisplay;
- (BOOL)wantsStatusItem;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)storeIdentifier;
- (NSURL)originalURL;
- (RichLinkPluginDataSource)initWithPluginPayload:(id)a3;
- (id)_linkView:(id)a3 overrideURLForOpeningURL:(id)a4;
- (id)balloonMaskIncludingTail:(BOOL)a3 userInterfaceStyle:(int64_t)a4;
- (id)createEmptyMetadataWithOriginalURL;
- (id)createRichLinkView;
- (id)individualPreviewSummary;
- (id)metadataForDisplay;
- (id)payloadWithOutOfLineAttachments:(id *)a3;
- (id)richLinkMetadata;
- (id)sizingView;
- (id)statusAttributedString;
- (id)statusTransformer;
- (void)_didFetchMetadata:(id)a3 error:(id)a4;
- (void)_startFetchingMetadata;
- (void)addClient:(id)a3;
- (void)didTapStatusItem;
- (void)dispatchMetadataUpdateToAllClients;
- (void)ensureValidCollaborationState;
- (void)invalidateMessageTintColor;
- (void)needsResize;
- (void)payloadWillEnterShelf;
- (void)payloadWillSendFromShelf;
- (void)pluginPayloadDidChange:(unint64_t)a3;
- (void)postProcessMetadataUpgradedByCompleteRefetch:(id)a3 originalMetadata:(id)a4;
- (void)prepareCollaborationLink:(id)a3;
- (void)richLinkViewDidMoveToSuperview:(id)a3;
- (void)setFlattenedMetadataForSending:(id)a3;
- (void)startUpdateWatchdogIfNeeded;
- (void)tapToLoadDidFetchMetadata:(id)a3;
- (void)updateRichLinkWithFetchedMetadata:(id)a3;
- (void)updateSidednessForLinkView:(id)a3;
- (void)updateUsesInferredAppearanceForLinkView:(id)a3;
@end

@implementation RichLinkPluginDataSource

- (RichLinkPluginDataSource)initWithPluginPayload:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = RichLinkPluginDataSource;
  v5 = [(RichLinkPluginDataSource *)&v25 initWithPluginPayload:v4];
  if (v5)
  {
    v6 = [v4 url];
    originalURL = v5->_originalURL;
    v5->_originalURL = v6;

    v8 = [v4 data];
    v5->_hasReceivedAnyPayload = v8 != 0;

    v9 = [v4 data];

    if (v9)
    {
      v10 = [v4 data];
      v11 = [v4 attachments];
      v12 = [LPMessagesPayload linkWithDataRepresentation:v10 attachments:v11];
      richLink = v5->_richLink;
      v5->_richLink = v12;
    }

    if (!v5->_richLink)
    {
      v14 = objc_alloc_init(LPMessagesPayload);
      v15 = v5->_richLink;
      v5->_richLink = v14;

      v5->_shouldFetchWhenSent = [v4 supportsCollaboration] ^ 1;
    }

    v16 = LPLogChannelPlugin();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = [(RichLinkPluginDataSource *)v5 messageGUID];
      v19 = [v4 data];
      v20 = [v19 length];
      v21 = [v4 attachments];
      v22 = [v21 count];
      v23 = [(LPMessagesPayload *)v5->_richLink isPlaceholder];
      *buf = 138413058;
      v27 = v18;
      v28 = 2048;
      v29 = v20;
      v30 = 2048;
      v31 = v22;
      v32 = 1024;
      v33 = v23;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "RichLinkPluginDataSource<%@>: initialized (payload=%lu, attachments=%lu, placeholder=%d)", buf, 0x26u);
    }

    [(RichLinkPluginDataSource *)v5 startUpdateWatchdogIfNeeded];
  }

  return v5;
}

+ (BOOL)supportsURL:(id)a3
{
  v3 = a3;
  if (([v3 _lp_isHTTPFamilyURL] & 1) != 0 || objc_msgSend(v3, "_lp_hasAllowedNonHTTPScheme"))
  {
    v4 = [v3 host];
    v5 = [v4 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasPendingFetch
{
  WeakRetained = objc_loadWeakRetained(&self->_pendingMetadataProvider);
  v3 = WeakRetained != 0;

  return v3;
}

- (id)richLinkMetadata
{
  v3 = [(RichLinkPluginDataSource *)self richLink];
  v4 = [v3 metadata];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(RichLinkPluginDataSource *)self createEmptyMetadataWithOriginalURL];
  }

  v7 = v6;

  return v7;
}

- (BOOL)metadataIsLikelyFinal
{
  if ([(RichLinkPluginDataSource *)self isFromMe])
  {
    v3 = [(RichLinkPluginDataSource *)self pluginPayload];
    if ([v3 supportsCollaboration])
    {
      hasReceivedAnyPayload = self->_hasReceivedAnyPayload;

      if (!hasReceivedAnyPayload)
      {
        updateWatchdogDidFire = 0;
        return updateWatchdogDidFire & 1;
      }
    }

    else
    {
    }

    updateWatchdogDidFire = ![(RichLinkPluginDataSource *)self hasPendingFetch];
    return updateWatchdogDidFire & 1;
  }

  if (!self->_hasReceivedAnyPayload)
  {
    goto LABEL_10;
  }

  v6 = [(LPMessagesPayload *)self->_richLink metadata];

  if (!v6)
  {
    goto LABEL_10;
  }

  if (![(LPMessagesPayload *)self->_richLink isPlaceholder])
  {
    goto LABEL_10;
  }

  v7 = [(RichLinkPluginDataSource *)self imMessage];
  v8 = [v7 time];
  v9 = [v8 dateByAddingTimeInterval:15.0];
  v10 = +[NSDate date];
  v11 = [v9 compare:v10];

  if (v11 != -1)
  {
    updateWatchdogDidFire = self->_updateWatchdogDidFire;
  }

  else
  {
LABEL_10:
    updateWatchdogDidFire = 1;
  }

  return updateWatchdogDidFire & 1;
}

- (BOOL)isFromMe
{
  if (([(RichLinkPluginDataSource *)self payloadInShelf]& 1) != 0)
  {
    return 1;
  }

  v4 = [(RichLinkPluginDataSource *)self imMessage];
  if ([v4 isFromMe])
  {
    v3 = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = RichLinkPluginDataSource;
    v3 = [(RichLinkPluginDataSource *)&v6 isFromMe];
  }

  return v3;
}

- (void)addClient:(id)a3
{
  v4 = a3;
  clients = self->_clients;
  v8 = v4;
  if (!clients)
  {
    v6 = +[NSHashTable weakObjectsHashTable];
    v7 = self->_clients;
    self->_clients = v6;

    v4 = v8;
    clients = self->_clients;
  }

  [(NSHashTable *)clients addObject:v4];
}

- (void)dispatchMetadataUpdateToAllClients
{
  v3 = [(RichLinkPluginDataSource *)self metadataForDisplay];
  v4 = [(RichLinkPluginDataSource *)self metadataIsLikelyFinal];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_clients;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) rendererForRichLinkPluginDataSource:{self, v12}];
        [v10 _setMetadata:v3 isFinal:v4];
        if ([(RichLinkPluginDataSource *)self isCollaborationLink])
        {
          [(RichLinkPluginDataSource *)self prepareCollaborationLink:v10];
        }
      }

      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  statusTransformer = self->_statusTransformer;
  if (statusTransformer)
  {
    [(LPLinkMetadataStatusTransformer *)statusTransformer setMetadata:v3];
  }

  [(LPLinkView *)self->_temporarySizingView _setMetadata:v3 isFinal:v4, v12];
  if ([(RichLinkPluginDataSource *)self isCollaborationLink])
  {
    [(RichLinkPluginDataSource *)self prepareCollaborationLink:self->_temporarySizingView];
  }

  [(RichLinkPluginDataSource *)self invalidateMessageTintColor];
}

- (void)invalidateMessageTintColor
{
  v13.receiver = self;
  v13.super_class = RichLinkPluginDataSource;
  [(RichLinkPluginDataSource *)&v13 invalidateMessageTintColor];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_clients;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v9 + 1) + 8 * v7) rendererForRichLinkPluginDataSource:{self, v9}];
        [(RichLinkPluginDataSource *)self updateUsesInferredAppearanceForLinkView:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)startUpdateWatchdogIfNeeded
{
  if (![(RichLinkPluginDataSource *)self metadataIsLikelyFinal]&& !self->_didStartUpdateWatchdog)
  {
    self->_didStartUpdateWatchdog = 1;
    v3 = [(RichLinkPluginDataSource *)self imMessage];
    v4 = [v3 time];
    v5 = [v4 dateByAddingTimeInterval:15.0];

    v6 = +[NSDate date];
    [v5 timeIntervalSinceDate:v6];
    v8 = v7;

    v9 = 0.0;
    if (v8 >= 0.0)
    {
      v9 = v8;
    }

    v10 = fmin(v9, 15.0);
    v11 = LPLogChannelPlugin();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_5954(v11, self);
    }

    v12 = dispatch_time(0, (v10 * 1000000000.0));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_273C;
    block[3] = &unk_C3B0;
    block[4] = self;
    dispatch_after(v12, &_dispatch_main_q, block);
  }
}

- (void)_startFetchingMetadata
{
  WeakRetained = objc_loadWeakRetained(&self->_pendingMetadataProvider);

  if (!WeakRetained)
  {
    v4 = objc_alloc_init(LPMetadataProvider);
    objc_storeWeak(&self->_pendingMetadataProvider, v4);
    v5 = [NSMutableURLRequest requestWithURL:self->_originalURL];
    [v5 setAttribution:1];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_2930;
    v6[3] = &unk_C428;
    v6[4] = self;
    [v4 startFetchingMetadataForRequest:v5 completionHandler:v6];
    [(RichLinkPluginDataSource *)self dispatchMetadataUpdateToAllClients];
  }
}

- (void)postProcessMetadataUpgradedByCompleteRefetch:(id)a3 originalMetadata:(id)a4
{
  v15 = a3;
  v5 = a4;
  v6 = [v5 specialization];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v15 specialization];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_9;
    }

    v6 = [v5 specialization];
    v9 = [v15 specialization];
    v10 = [v6 name];
    if (v10)
    {
      v11 = v10;
      v12 = [v6 searchQuery];
      if (v12 || ([v9 name], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        v13 = [v9 searchQuery];

        if (v13)
        {
          v14 = [v9 searchQuery];
          [v9 setName:v14];

          [v9 setSearchQuery:0];
        }
      }
    }
  }

LABEL_9:
}

- (void)payloadWillEnterShelf
{
  if (self->_shouldFetchWhenSent)
  {

    [(RichLinkPluginDataSource *)self _startFetchingMetadata];
  }

  else if (([(LPMessagesPayload *)self->_richLink needsSubresourceFetch]& 1) != 0 || [(LPMessagesPayload *)self->_richLink needsCompleteFetch])
  {
    v3 = [(LPMessagesPayload *)self->_richLink needsCompleteFetch];
    [(LPMessagesPayload *)self->_richLink setNeedsSubresourceFetch:0];
    [(LPMessagesPayload *)self->_richLink setNeedsCompleteFetch:0];
    v4 = objc_alloc_init(LPMetadataProvider);
    v5 = [(LPMessagesPayload *)self->_richLink metadata];
    v6 = [v5 copy];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_2FD0;
    v14[3] = &unk_C478;
    v14[4] = self;
    v16 = v3;
    v7 = v6;
    v15 = v7;
    v8 = objc_retainBlock(v14);
    if (v3)
    {
      v9 = [(LPMessagesPayload *)self->_richLink metadata];
      v10 = [v9 originalURL];
      if (v10)
      {
        v11 = [NSMutableURLRequest requestWithURL:v10];
      }

      else
      {
        v12 = [(LPMessagesPayload *)self->_richLink metadata];
        v13 = [v12 URL];
        v11 = [NSMutableURLRequest requestWithURL:v13];
      }

      [v11 setAttribution:1];
      [v4 startFetchingMetadataForRequest:v11 completionHandler:v8];
    }

    else
    {
      [v4 _startFetchingSubresourcesForPartialMetadata:v7 isNonAppInitiated:1 completionHandler:v8];
    }

    objc_storeWeak(&self->_pendingMetadataProvider, v4);
    [(RichLinkPluginDataSource *)self dispatchMetadataUpdateToAllClients];
  }
}

- (id)createEmptyMetadataWithOriginalURL
{
  v3 = objc_alloc_init(LPLinkMetadata);
  [v3 setOriginalURL:self->_originalURL];

  return v3;
}

- (void)updateRichLinkWithFetchedMetadata:(id)a3
{
  v6 = a3;
  [(LPMessagesPayload *)self->_richLink setPlaceholder:0];
  [(LPMessagesPayload *)self->_richLink setNeedsCompleteFetch:0];
  if (v6)
  {
    [(LPMessagesPayload *)self->_richLink setMetadata:v6];
  }

  else
  {
    v4 = [(RichLinkPluginDataSource *)self createEmptyMetadataWithOriginalURL];
    [(LPMessagesPayload *)self->_richLink setMetadata:v4];
  }

  v5 = [(LPMessagesPayload *)self->_richLink metadata];
  [v5 _resetIncompleteState];
}

- (void)setFlattenedMetadataForSending:(id)a3
{
  [(RichLinkPluginDataSource *)self updateRichLinkWithFetchedMetadata:a3];
  v6 = 0;
  v4 = [(RichLinkPluginDataSource *)self payloadWithOutOfLineAttachments:&v6];
  v5 = v6;
  [(RichLinkPluginDataSource *)self setPayload:v4 attachments:v5];
}

- (BOOL)metadataHasContent
{
  v2 = [(LPMessagesPayload *)self->_richLink metadata];
  v3 = [v2 title];
  if (v3)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v5 = [v2 icon];
    if (v5)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      v6 = [v2 image];
      if (v6)
      {
        LOBYTE(v4) = 1;
      }

      else
      {
        v7 = [v2 video];
        if (v7)
        {
          LOBYTE(v4) = 1;
        }

        else
        {
          v8 = [v2 specialization];
          if (v8)
          {
            LOBYTE(v4) = 1;
          }

          else
          {
            v9 = objc_alloc_init(LPLinkMetadata);
            v4 = [v2 _isEqualIgnoringURLs:v9] ^ 1;
          }
        }
      }
    }
  }

  return v4;
}

- (id)payloadWithOutOfLineAttachments:(id *)a3
{
  if ([(RichLinkPluginDataSource *)self metadataHasContent])
  {
    v5 = [(LPMessagesPayload *)self->_richLink dataRepresentationWithOutOfLineAttachments:a3];
  }

  else
  {
    v5 = 0;
    *a3 = 0;
  }

  return v5;
}

- (void)payloadWillSendFromShelf
{
  v15.receiver = self;
  v15.super_class = RichLinkPluginDataSource;
  [(RichLinkPluginDataSource *)&v15 payloadWillSendFromShelf];
  self->_didSendPayload = 1;
  v3 = self->_richLink;
  v4 = [(LPMessagesPayload *)v3 metadata];

  if (!v4)
  {
    v5 = [(RichLinkPluginDataSource *)self createEmptyMetadataWithOriginalURL];
    [(LPMessagesPayload *)v3 setMetadata:v5];

    [(LPMessagesPayload *)v3 setPlaceholder:1];
  }

  if ([(RichLinkPluginDataSource *)self isCollaborationLink])
  {
    [(RichLinkPluginDataSource *)self ensureValidCollaborationState];
  }

  v14 = 0;
  v6 = [(RichLinkPluginDataSource *)self payloadWithOutOfLineAttachments:&v14];
  v7 = v14;
  v8 = LPLogChannelPlugin();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(RichLinkPluginDataSource *)self messageGUID];
    v11 = [v6 length];
    v12 = [v7 count];
    v13 = [(LPMessagesPayload *)v3 isPlaceholder];
    *buf = 138413058;
    v17 = v10;
    v18 = 2048;
    v19 = v11;
    v20 = 2048;
    v21 = v12;
    v22 = 1024;
    v23 = v13;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "RichLinkPluginDataSource<%@>: initial send (payload=%lu, attachments=%lu, placeholder=%d)", buf, 0x26u);
  }

  [(RichLinkPluginDataSource *)self setPayload:v6 attachments:v7];
  [(LPLinkView *)self->_temporarySizingView _setDisablePlaybackControls:0];
}

- (void)_didFetchMetadata:(id)a3 error:(id)a4
{
  [(RichLinkPluginDataSource *)self updateRichLinkWithFetchedMetadata:a3, a4];
  [(RichLinkPluginDataSource *)self dispatchMetadataUpdateToAllClients];
  v14 = 0;
  v5 = [(RichLinkPluginDataSource *)self payloadWithOutOfLineAttachments:&v14];
  v6 = v14;
  didSendPayload = self->_didSendPayload;
  v8 = LPLogChannelPlugin();
  v9 = v8;
  if (didSendPayload)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [(RichLinkPluginDataSource *)self messageGUID];
      v12 = [v5 length];
      v13 = [v6 count];
      *buf = 138412802;
      v16 = v11;
      v17 = 2048;
      v18 = v12;
      v19 = 2048;
      v20 = v13;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "RichLinkPluginDataSource<%@>: fetched metadata, sending update (payload=%lu, attachments=%lu)", buf, 0x20u);
    }

    [(RichLinkPluginDataSource *)self sendPayload:v5 attachments:v6];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_5A0C(v9, self);
    }

    [(RichLinkPluginDataSource *)self setPayload:v5 attachments:v6];
  }
}

- (void)pluginPayloadDidChange:(unint64_t)a3
{
  v3 = a3;
  v22.receiver = self;
  v22.super_class = RichLinkPluginDataSource;
  [(RichLinkPluginDataSource *)&v22 pluginPayloadDidChange:?];
  if (!self->_didSendPayload && (v3 & 3) != 0 && !self->_didTapToLoad)
  {
    v5 = [(RichLinkPluginDataSource *)self payload];
    self->_hasReceivedAnyPayload |= v5 != 0;

    v6 = [(RichLinkPluginDataSource *)self pluginPayload];
    v7 = [v6 data];
    v8 = [(RichLinkPluginDataSource *)self pluginPayload];
    v9 = [v8 attachments];
    v10 = [LPMessagesPayload linkWithDataRepresentation:v7 attachments:v9];
    richLink = self->_richLink;
    self->_richLink = v10;

    v12 = LPLogChannelPlugin();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [(RichLinkPluginDataSource *)self messageGUID];
      v15 = [(RichLinkPluginDataSource *)self pluginPayload];
      v16 = [v15 data];
      v17 = [v16 length];
      v18 = [(RichLinkPluginDataSource *)self pluginPayload];
      v19 = [v18 attachments];
      v20 = [v19 count];
      v21 = [(LPMessagesPayload *)self->_richLink isPlaceholder];
      *buf = 138413058;
      v24 = v14;
      v25 = 2048;
      v26 = v17;
      v27 = 2048;
      v28 = v20;
      v29 = 1024;
      v30 = v21;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "RichLinkPluginDataSource<%@>: received payload change (payload=%lu, attachments=%lu, placeholder=%d)", buf, 0x26u);
    }

    [(RichLinkPluginDataSource *)self dispatchMetadataUpdateToAllClients];
    [(RichLinkPluginDataSource *)self startUpdateWatchdogIfNeeded];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = [UIScreen mainScreen:a3.width];
  [v5 bounds];
  v7 = v6;

  v8 = +[UIApplication sharedApplication];
  v9 = [v8 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v9);

  if (IsAccessibilityCategory)
  {
    v11 = +[UIScreen mainScreen];
    [v11 bounds];
    v7 = v12 + v12;
  }

  v13 = [(RichLinkPluginDataSource *)self sizingView];
  [(RichLinkPluginDataSource *)self updateSidednessForLinkView:v13];
  [v13 sizeThatFits:{width, v7}];
  v15 = v14;
  v17 = v16;
  v18 = LPLogChannelPlugin();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v21 = v18;
    v22 = [(RichLinkPluginDataSource *)self messageGUID];
    v32.width = width;
    v32.height = v7;
    v23 = NSStringFromCGSize(v32);
    v33.width = v15;
    v33.height = v17;
    v24 = NSStringFromCGSize(v33);
    *buf = 138412802;
    v27 = v22;
    v28 = 2112;
    v29 = v23;
    v30 = 2112;
    v31 = v24;
    _os_log_debug_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "RichLinkPluginDataSource<%@>: size that fits %@ -> %@", buf, 0x20u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3C80;
  block[3] = &unk_C3B0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);

  v19 = v15;
  v20 = v17;
  result.height = v20;
  result.width = v19;
  return result;
}

- (id)sizingView
{
  temporarySizingView = self->_temporarySizingView;
  if (temporarySizingView)
  {
    v3 = temporarySizingView;
  }

  else
  {
    v5 = [(NSHashTable *)self->_clients anyObject];
    v6 = [v5 rendererForRichLinkPluginDataSource:self];

    v7 = v6;
    if (!v6)
    {
      v8 = [(RichLinkPluginDataSource *)self createRichLinkView];
      v9 = self->_temporarySizingView;
      self->_temporarySizingView = v8;

      v7 = self->_temporarySizingView;
    }

    v3 = v7;
  }

  return v3;
}

- (id)createRichLinkView
{
  temporarySizingView = self->_temporarySizingView;
  if (temporarySizingView)
  {
    v4 = temporarySizingView;
    v5 = self->_temporarySizingView;
    self->_temporarySizingView = 0;
  }

  else
  {
    v6 = [RichLinkView alloc];
    v7 = [(RichLinkPluginDataSource *)self originalURL];
    v4 = [(RichLinkView *)v6 initWithURL:v7];

    v8 = [(RichLinkPluginDataSource *)self originalURL];
    [(RichLinkView *)v4 _setOverrideURL:v8];

    [(RichLinkView *)v4 setDataSource:self];
    [(RichLinkView *)v4 setDelegate:self];
    [(RichLinkView *)v4 _setDisablePreviewGesture:1];
    [(RichLinkView *)v4 _setDisableHighlightGesture:0];
    [(RichLinkView *)v4 _setUsesDeferredLayout:1];
    [(RichLinkView *)v4 _setApplyCornerRadius:0];
    [(RichLinkView *)v4 _setAllowsSkinnyWidth:1];
    [(RichLinkView *)v4 _setNeedsDominantBackgroundColor:[(RichLinkPluginDataSource *)self _lp_supportsBubbleTinting]];
    if ([(RichLinkPluginDataSource *)self _lp_supportsBubbleTinting])
    {
      v9 = +[UIColor clearColor];
      [(RichLinkView *)v4 _setOverrideBackgroundColor:v9];
    }

    else
    {
      [(RichLinkView *)v4 _setOverrideBackgroundColor:0];
    }

    [(RichLinkView *)v4 _setAllowsTapToLoad:[(RichLinkPluginDataSource *)self isFromMe]^ 1];
    v10 = [(RichLinkPluginDataSource *)self metadataForDisplay];
    [(RichLinkView *)v4 _setMetadata:v10 isFinal:[(RichLinkPluginDataSource *)self metadataIsLikelyFinal]];

    [(RichLinkPluginDataSource *)self updateSidednessForLinkView:v4];
    if ([(RichLinkPluginDataSource *)self isCollaborationLink])
    {
      [(RichLinkPluginDataSource *)self prepareCollaborationLink:v4];
    }
  }

  return v4;
}

- (void)richLinkViewDidMoveToSuperview:(id)a3
{
  if (self->_hasDeferredResize)
  {
    v4 = [a3 superview];

    if (v4)
    {
      self->_hasDeferredResize = 0;

      [(RichLinkPluginDataSource *)self needsResize];
    }
  }
}

- (void)updateSidednessForLinkView:(id)a3
{
  v17 = a3;
  v4 = [(RichLinkPluginDataSource *)self isFromMe];
  v5 = [(RichLinkPluginDataSource *)self payloadInShelf];
  disableAnimations = self->_disableAnimations;
  v7 = v5 ^ 1;
  if ((disableAnimations & 1) == 0 && ((v5 ^ 1) & 1) == 0)
  {
    v8 = [(RichLinkPluginDataSource *)self pluginPayload];
    v9 = [v8 supportsCollaboration];

    disableAnimations = v9 ^ 1;
  }

  [v17 _setDisableAnimations:disableAnimations];
  if (v4)
  {
    v10 = [(RichLinkPluginDataSource *)self pluginPayload];
    v11 = [v10 supportsCollaboration];

    if (v11)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  [v17 _setAnimationOrigin:v12];
  [v17 _setNeedsMessagesTranscriptPushCounterAnimation:v7];
  v13 = +[CKUIBehavior sharedBehaviors];
  [v13 pluginBalloonInsetsForMessageFromMe:v4];
  [v17 setContentInset:?];

  [v17 _setForceFlexibleWidth:1];
  [v17 _setInComposeContext:v5];
  [v17 _setInSenderContext:v4];
  [v17 _setDisableTapGesture:v5];
  [v17 _setDisableHighlightGesture:v5];
  v14 = [v17 traitCollection];
  v15 = -[RichLinkPluginDataSource balloonMaskIncludingTail:userInterfaceStyle:](self, "balloonMaskIncludingTail:userInterfaceStyle:", v7, [v14 userInterfaceStyle]);

  [v17 _setMaskImage:v15];
  v16 = objc_alloc_init(LPLinkRendererSizeClassParameters);
  [v16 setNeedsSpaceAffordanceForDeleteButton:1];
  [v17 _setSizeClassParameters:v16];
  [(RichLinkPluginDataSource *)self updateUsesInferredAppearanceForLinkView:v17];
}

- (id)balloonMaskIncludingTail:(BOOL)a3 userInterfaceStyle:(int64_t)a4
{
  v10 = *(&CKBalloonDescriptorZero + 41);
  v11 = *(&CKBalloonDescriptorZero + 57);
  *v12 = *(&CKBalloonDescriptorZero + 73);
  *&v12[15] = *(&CKBalloonDescriptorZero + 88);
  v9 = *(&CKBalloonDescriptorZero + 25);
  v14 = *(&CKBalloonDescriptorZero + 120);
  v16 = *(&CKBalloonDescriptorZero + 63);
  v15 = *(&CKBalloonDescriptorZero + 122);
  v6 = *(&CKBalloonDescriptorZero + 2);
  v7 = *(&CKBalloonDescriptorZero + 1);
  v8 = *(&CKBalloonDescriptorZero + 2);
  v13 = *(&CKBalloonDescriptorZero + 14);
  v4 = CKResizableBalloonMask();

  return v4;
}

- (void)updateUsesInferredAppearanceForLinkView:(id)a3
{
  v3 = a3;
  v4 = [RichLinkPluginDataSource messageTintColorForView:v3];
  [v3 _setUsesInferredAppearanceWithOverriddenBackgroundColor:v4 != 0];
}

- (void)needsResize
{
  v3 = LPLogChannelPlugin();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_5AAC(v3, self);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_clients;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) rendererForRichLinkPluginDataSource:self];
        v11 = [v10 superview];
        v7 |= v11 != 0;
      }

      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);

    if (v7)
    {
      v12.receiver = self;
      v12.super_class = RichLinkPluginDataSource;
      [(RichLinkPluginDataSource *)&v12 needsResize];
      return;
    }
  }

  else
  {
  }

  self->_hasDeferredResize = 1;
}

- (NSURL)originalURL
{
  originalURL = self->_originalURL;
  if (originalURL)
  {
    v3 = originalURL;
    goto LABEL_8;
  }

  v5 = [(LPMessagesPayload *)self->_richLink metadata];
  v6 = [v5 originalURL];

  v7 = [(LPMessagesPayload *)self->_richLink metadata];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 originalURL];
LABEL_7:
    v3 = v9;

    goto LABEL_8;
  }

  v10 = [v7 URL];

  if (v10)
  {
    v8 = [(LPMessagesPayload *)self->_richLink metadata];
    v9 = [v8 URL];
    goto LABEL_7;
  }

  v3 = 0;
LABEL_8:

  return v3;
}

- (NSString)storeIdentifier
{
  v3 = [LPLinkMetadataStoreTransformer alloc];
  v4 = [(RichLinkPluginDataSource *)self metadataForDisplay];
  v5 = [(RichLinkPluginDataSource *)self originalURL];
  v6 = [v3 initWithMetadata:v4 URL:v5];

  v7 = [v6 storeIdentifier];

  return v7;
}

- (id)_linkView:(id)a3 overrideURLForOpeningURL:(id)a4
{
  v5 = a4;
  if (objc_opt_respondsToSelector())
  {
    v6 = [(RichLinkPluginDataSource *)self overrideURLForOpeningURL:v5];
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  return v7;
}

- (BOOL)metadataIsViableForDisplay
{
  v3 = [(LPMessagesPayload *)self->_richLink metadata];

  if (!v3)
  {
LABEL_5:
    LOBYTE(v4) = 0;
    return v4;
  }

  v4 = [(RichLinkPluginDataSource *)self metadataHasContent];
  if (v4)
  {
    if (![(RichLinkPluginDataSource *)self payloadInShelf]|| (WeakRetained = objc_loadWeakRetained(&self->_pendingMetadataProvider), WeakRetained, !WeakRetained))
    {
      LOBYTE(v4) = 1;
      return v4;
    }

    goto LABEL_5;
  }

  return v4;
}

- (id)metadataForDisplay
{
  if ([(RichLinkPluginDataSource *)self metadataIsViableForDisplay])
  {
    v3 = [(LPMessagesPayload *)self->_richLink metadata];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)tapToLoadDidFetchMetadata:(id)a3
{
  self->_didTapToLoad = 1;
  v4 = a3;
  [(RichLinkPluginDataSource *)self updateRichLinkWithFetchedMetadata:v4];
  [(LPLinkView *)self->_temporarySizingView _setAllowsTapToLoad:0];
  [(LPLinkView *)self->_temporarySizingView _setMetadata:v4 isFinal:1];

  v12 = 0;
  v5 = [(RichLinkPluginDataSource *)self payloadWithOutOfLineAttachments:&v12];
  v6 = v12;
  v7 = LPLogChannelPlugin();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(RichLinkPluginDataSource *)self messageGUID];
    v10 = [v5 length];
    v11 = [v6 count];
    *buf = 138412802;
    v14 = v9;
    v15 = 2048;
    v16 = v10;
    v17 = 2048;
    v18 = v11;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "RichLinkPluginDataSource<%@>: tap-to-load complete (payload=%lu, attachments=%lu)", buf, 0x20u);
  }

  [(RichLinkPluginDataSource *)self updatePayload:v5 attachments:v6];
}

- (id)individualPreviewSummary
{
  v3 = [LPLinkMetadataPreviewTransformer alloc];
  v4 = [(RichLinkPluginDataSource *)self metadataForDisplay];
  v5 = [(RichLinkPluginDataSource *)self originalURL];
  v6 = [v3 initWithMetadata:v4 URL:v5];

  v7 = [v6 previewSummary];

  return v7;
}

+ (id)individualPreviewSummaryForPluginPayload:(id)a3
{
  v3 = a3;
  v4 = [v3 data];

  if (v4)
  {
    v5 = [v3 data];
    v6 = [v3 attachments];
    v7 = [LPMessagesPayload linkWithDataRepresentation:v5 attachments:v6];

    v8 = [v3 url];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v12 = [v7 metadata];
      v13 = [v12 originalURL];
      v14 = v13;
      if (v13)
      {
        v10 = v13;
      }

      else
      {
        v15 = [v7 metadata];
        v10 = [v15 URL];
      }
    }

    v16 = [LPLinkMetadataPreviewTransformer alloc];
    v17 = [v7 metadata];
    v18 = [v16 initWithMetadata:v17 URL:v10];

    v11 = [v18 previewSummary];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isCollaborationLink
{
  v2 = [(RichLinkPluginDataSource *)self pluginPayload];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 isCollaboration];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v4 = 0;
      goto LABEL_7;
    }

    v3 = [v2 supportsCollaboration];
  }

  v4 = v3;
LABEL_7:

  return v4;
}

- (void)prepareCollaborationLink:(id)a3
{
  v4 = a3;
  if ([(RichLinkPluginDataSource *)self payloadInShelf]&& self->_hasReceivedAnyPayload)
  {
    [v4 _setCollaborative:1];
    v5 = [(RichLinkPluginDataSource *)self pluginPayload];
    v46 = [v5 collaborationMetadata];

    v6 = [(RichLinkPluginDataSource *)self pluginPayload];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(RichLinkPluginDataSource *)self pluginPayload];
      v45 = [v8 collaborationOptionsSummary];
    }

    else
    {
      v45 = sub_1B80(@"Share Options");
    }

    v9 = [[SLCollaborationFooterViewModel alloc] initWithMetadata:v46];
    [v9 setOptionsSummary:v45];
    v10 = [(RichLinkPluginDataSource *)self pluginPayload];
    v11 = [v10 payloadCollaborationType];

    if (v11 == &dword_0 + 2)
    {
      v12 = objc_alloc_init(NSTextAttachment);
      v13 = [UIImage systemImageNamed:@"person.2.fill"];
      v14 = [v13 imageWithRenderingMode:2];
      [v12 setImage:v14];

      v15 = [NSAttributedString attributedStringWithAttachment:v12];
      v16 = [v15 mutableCopy];

      v17 = [[NSAttributedString alloc] initWithString:@" "];
      [v16 appendAttributedString:v17];

      v18 = [NSAttributedString alloc];
      v19 = sub_1B80(@"Collaboration");
      v20 = [v18 initWithString:v19];
      [v16 appendAttributedString:v20];

      [v4 _setOverrideSubtitle:v16];
      goto LABEL_17;
    }

    objc_initWeak(&location, v4);
    v21 = [v46 type];
    v22 = [v21 actionDescription];
    v23 = v22;
    if (v22)
    {
      v44 = v22;
    }

    else
    {
      v44 = sub_1B80(@"Collaborate");
    }

    v43 = sub_1B80(@"Send Copy");
    v24 = [LPImage alloc];
    v25 = [UIImage systemImageNamed:@"person.2"];
    v26 = [v24 initWithPlatformImage:v25];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_5288;
    v50[3] = &unk_C4A0;
    v50[4] = self;
    objc_copyWeak(&v52, &location);
    v51 = v9;
    v27 = [LPButtonAction actionWithTitle:v44 image:v26 handler:v50];

    v28 = [LPImage alloc];
    v29 = [UIImage systemImageNamed:@"person.2.fill"];
    v30 = [v28 initWithPlatformImage:v29];
    [v27 setVisibleImage:v30];

    v31 = [LPImage alloc];
    v32 = [UIImage systemImageNamed:@"doc"];
    v33 = [v31 initWithPlatformImage:v32];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_534C;
    v48[3] = &unk_C4C8;
    v48[4] = self;
    objc_copyWeak(&v49, &location);
    v34 = [LPButtonAction actionWithTitle:v43 image:v33 handler:v48];

    v35 = [LPImage alloc];
    v36 = [UIImage systemImageNamed:@"doc.fill"];
    v37 = [v35 initWithPlatformImage:v36];
    [v34 setVisibleImage:v37];

    v38 = [(RichLinkPluginDataSource *)self pluginPayload];
    if (objc_opt_respondsToSelector())
    {
      v39 = [(RichLinkPluginDataSource *)self pluginPayload];
      v40 = [v39 sendAsCopy];

      if (v40)
      {
        [v34 setSelected:1];
        v41 = 0;
        goto LABEL_16;
      }
    }

    else
    {
    }

    v41 = 1;
    [v27 setSelected:1];
LABEL_16:
    v54[0] = v27;
    v54[1] = v34;
    v42 = [NSArray arrayWithObjects:v54 count:2];
    [v4 _setButtonActions:v42];

    objc_destroyWeak(&v49);
    objc_destroyWeak(&v52);

    objc_destroyWeak(&location);
    if ((v41 & 1) == 0)
    {
LABEL_18:

      goto LABEL_19;
    }

LABEL_17:
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_53D0;
    v47[3] = &unk_C3B0;
    v47[4] = self;
    [v4 _setCollaborationFooterViewModel:v9 action:v47];
    goto LABEL_18;
  }

LABEL_19:
}

- (void)ensureValidCollaborationState
{
  v7 = [(LPMessagesPayload *)self->_richLink metadata];
  v3 = [v7 specialization];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [v7 specialization];
    v6 = [(RichLinkPluginDataSource *)self pluginPayload];
    [v5 setIsCollaboration:{objc_msgSend(v6, "sendAsCopy") ^ 1}];
  }
}

- (id)statusTransformer
{
  if (!self->_statusTransformer)
  {
    v3 = [LPLinkMetadataStatusTransformer alloc];
    v4 = [(RichLinkPluginDataSource *)self metadataForDisplay];
    v5 = [(RichLinkPluginDataSource *)self originalURL];
    v6 = [v3 initWithMetadata:v4 URL:v5];
    statusTransformer = self->_statusTransformer;
    self->_statusTransformer = v6;

    [(LPLinkMetadataStatusTransformer *)self->_statusTransformer setDelegate:self];
    v8 = +[CKUIBehavior sharedBehaviors];
    v9 = [v8 theme];
    LOBYTE(v5) = objc_opt_respondsToSelector();

    if (v5)
    {
      v10 = +[CKUIBehavior sharedBehaviors];
      v11 = [v10 theme];
      v12 = [v11 transcriptMessageStatusButtonTextColor];
      [(LPLinkMetadataStatusTransformer *)self->_statusTransformer setForegroundColor:v12];
    }
  }

  v13 = self->_statusTransformer;

  return v13;
}

- (BOOL)wantsStatusItem
{
  v2 = [(RichLinkPluginDataSource *)self statusTransformer];
  v3 = [v2 statusText];
  v4 = v3 != 0;

  return v4;
}

- (id)statusAttributedString
{
  v2 = [(RichLinkPluginDataSource *)self statusTransformer];
  v3 = [v2 statusText];

  return v3;
}

- (void)didTapStatusItem
{
  v4 = [(RichLinkPluginDataSource *)self statusTransformer];
  v2 = +[UIApplication sharedApplication];
  v3 = [v4 actionURL];
  [v2 openURL:v3 options:&__NSDictionary0__struct completionHandler:0];
}

+ (id)messageTintColorForView:(id)a3
{
  v3 = a3;
  v4 = [v3 _specializedBackgroundColor];
  v5 = [v3 _hasMedia];

  if ((v5 & 1) == 0 && v4)
  {
    v6 = +[LPResources linkBackgroundColor];
    v7 = [UITraitCollection traitCollectionWithUserInterfaceStyle:1];
    v8 = [v6 resolvedColorWithTraitCollection:v7];

    v9 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
    v10 = [v6 resolvedColorWithTraitCollection:v9];

    if (([v4 _isSimilarToColor:v8 withinPercentage:0.100000001] & 1) != 0 || objc_msgSend(v4, "_isSimilarToColor:withinPercentage:", v10, 0.100000001))
    {

      v4 = 0;
    }
  }

  return v4;
}

@end