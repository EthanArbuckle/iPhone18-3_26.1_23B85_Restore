@interface RichLinkPluginDataSource
+ (BOOL)supportsURL:(id)l;
+ (id)individualPreviewSummaryForPluginPayload:(id)payload;
+ (id)messageTintColorForView:(id)view;
- (BOOL)hasPendingFetch;
- (BOOL)isCollaborationLink;
- (BOOL)isFromMe;
- (BOOL)metadataHasContent;
- (BOOL)metadataIsLikelyFinal;
- (BOOL)metadataIsViableForDisplay;
- (BOOL)wantsStatusItem;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)storeIdentifier;
- (NSURL)originalURL;
- (RichLinkPluginDataSource)initWithPluginPayload:(id)payload;
- (id)_linkView:(id)view overrideURLForOpeningURL:(id)l;
- (id)balloonMaskIncludingTail:(BOOL)tail userInterfaceStyle:(int64_t)style;
- (id)createEmptyMetadataWithOriginalURL;
- (id)createRichLinkView;
- (id)individualPreviewSummary;
- (id)metadataForDisplay;
- (id)payloadWithOutOfLineAttachments:(id *)attachments;
- (id)richLinkMetadata;
- (id)sizingView;
- (id)statusAttributedString;
- (id)statusTransformer;
- (void)_didFetchMetadata:(id)metadata error:(id)error;
- (void)_startFetchingMetadata;
- (void)addClient:(id)client;
- (void)didTapStatusItem;
- (void)dispatchMetadataUpdateToAllClients;
- (void)ensureValidCollaborationState;
- (void)invalidateMessageTintColor;
- (void)needsResize;
- (void)payloadWillEnterShelf;
- (void)payloadWillSendFromShelf;
- (void)pluginPayloadDidChange:(unint64_t)change;
- (void)postProcessMetadataUpgradedByCompleteRefetch:(id)refetch originalMetadata:(id)metadata;
- (void)prepareCollaborationLink:(id)link;
- (void)richLinkViewDidMoveToSuperview:(id)superview;
- (void)setFlattenedMetadataForSending:(id)sending;
- (void)startUpdateWatchdogIfNeeded;
- (void)tapToLoadDidFetchMetadata:(id)metadata;
- (void)updateRichLinkWithFetchedMetadata:(id)metadata;
- (void)updateSidednessForLinkView:(id)view;
- (void)updateUsesInferredAppearanceForLinkView:(id)view;
@end

@implementation RichLinkPluginDataSource

- (RichLinkPluginDataSource)initWithPluginPayload:(id)payload
{
  payloadCopy = payload;
  v25.receiver = self;
  v25.super_class = RichLinkPluginDataSource;
  v5 = [(RichLinkPluginDataSource *)&v25 initWithPluginPayload:payloadCopy];
  if (v5)
  {
    v6 = [payloadCopy url];
    originalURL = v5->_originalURL;
    v5->_originalURL = v6;

    data = [payloadCopy data];
    v5->_hasReceivedAnyPayload = data != 0;

    data2 = [payloadCopy data];

    if (data2)
    {
      data3 = [payloadCopy data];
      attachments = [payloadCopy attachments];
      v12 = [LPMessagesPayload linkWithDataRepresentation:data3 attachments:attachments];
      richLink = v5->_richLink;
      v5->_richLink = v12;
    }

    if (!v5->_richLink)
    {
      v14 = objc_alloc_init(LPMessagesPayload);
      v15 = v5->_richLink;
      v5->_richLink = v14;

      v5->_shouldFetchWhenSent = [payloadCopy supportsCollaboration] ^ 1;
    }

    v16 = LPLogChannelPlugin();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      messageGUID = [(RichLinkPluginDataSource *)v5 messageGUID];
      data4 = [payloadCopy data];
      v20 = [data4 length];
      attachments2 = [payloadCopy attachments];
      v22 = [attachments2 count];
      isPlaceholder = [(LPMessagesPayload *)v5->_richLink isPlaceholder];
      *buf = 138413058;
      v27 = messageGUID;
      v28 = 2048;
      v29 = v20;
      v30 = 2048;
      v31 = v22;
      v32 = 1024;
      v33 = isPlaceholder;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "RichLinkPluginDataSource<%@>: initialized (payload=%lu, attachments=%lu, placeholder=%d)", buf, 0x26u);
    }

    [(RichLinkPluginDataSource *)v5 startUpdateWatchdogIfNeeded];
  }

  return v5;
}

+ (BOOL)supportsURL:(id)l
{
  lCopy = l;
  if (([lCopy _lp_isHTTPFamilyURL] & 1) != 0 || objc_msgSend(lCopy, "_lp_hasAllowedNonHTTPScheme"))
  {
    host = [lCopy host];
    v5 = [host length] != 0;
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
  richLink = [(RichLinkPluginDataSource *)self richLink];
  metadata = [richLink metadata];
  v5 = metadata;
  if (metadata)
  {
    createEmptyMetadataWithOriginalURL = metadata;
  }

  else
  {
    createEmptyMetadataWithOriginalURL = [(RichLinkPluginDataSource *)self createEmptyMetadataWithOriginalURL];
  }

  v7 = createEmptyMetadataWithOriginalURL;

  return v7;
}

- (BOOL)metadataIsLikelyFinal
{
  if ([(RichLinkPluginDataSource *)self isFromMe])
  {
    pluginPayload = [(RichLinkPluginDataSource *)self pluginPayload];
    if ([pluginPayload supportsCollaboration])
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

  metadata = [(LPMessagesPayload *)self->_richLink metadata];

  if (!metadata)
  {
    goto LABEL_10;
  }

  if (![(LPMessagesPayload *)self->_richLink isPlaceholder])
  {
    goto LABEL_10;
  }

  imMessage = [(RichLinkPluginDataSource *)self imMessage];
  time = [imMessage time];
  v9 = [time dateByAddingTimeInterval:15.0];
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

  imMessage = [(RichLinkPluginDataSource *)self imMessage];
  if ([imMessage isFromMe])
  {
    isFromMe = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = RichLinkPluginDataSource;
    isFromMe = [(RichLinkPluginDataSource *)&v6 isFromMe];
  }

  return isFromMe;
}

- (void)addClient:(id)client
{
  clientCopy = client;
  clients = self->_clients;
  v8 = clientCopy;
  if (!clients)
  {
    v6 = +[NSHashTable weakObjectsHashTable];
    v7 = self->_clients;
    self->_clients = v6;

    clientCopy = v8;
    clients = self->_clients;
  }

  [(NSHashTable *)clients addObject:clientCopy];
}

- (void)dispatchMetadataUpdateToAllClients
{
  metadataForDisplay = [(RichLinkPluginDataSource *)self metadataForDisplay];
  metadataIsLikelyFinal = [(RichLinkPluginDataSource *)self metadataIsLikelyFinal];
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
        [v10 _setMetadata:metadataForDisplay isFinal:metadataIsLikelyFinal];
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
    [(LPLinkMetadataStatusTransformer *)statusTransformer setMetadata:metadataForDisplay];
  }

  [(LPLinkView *)self->_temporarySizingView _setMetadata:metadataForDisplay isFinal:metadataIsLikelyFinal, v12];
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
    imMessage = [(RichLinkPluginDataSource *)self imMessage];
    time = [imMessage time];
    v5 = [time dateByAddingTimeInterval:15.0];

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

- (void)postProcessMetadataUpgradedByCompleteRefetch:(id)refetch originalMetadata:(id)metadata
{
  refetchCopy = refetch;
  metadataCopy = metadata;
  specialization = [metadataCopy specialization];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    specialization2 = [refetchCopy specialization];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_9;
    }

    specialization = [metadataCopy specialization];
    specialization3 = [refetchCopy specialization];
    name = [specialization name];
    if (name)
    {
      v11 = name;
      searchQuery = [specialization searchQuery];
      if (searchQuery || ([specialization3 name], (searchQuery = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        searchQuery2 = [specialization3 searchQuery];

        if (searchQuery2)
        {
          searchQuery3 = [specialization3 searchQuery];
          [specialization3 setName:searchQuery3];

          [specialization3 setSearchQuery:0];
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
    needsCompleteFetch = [(LPMessagesPayload *)self->_richLink needsCompleteFetch];
    [(LPMessagesPayload *)self->_richLink setNeedsSubresourceFetch:0];
    [(LPMessagesPayload *)self->_richLink setNeedsCompleteFetch:0];
    v4 = objc_alloc_init(LPMetadataProvider);
    metadata = [(LPMessagesPayload *)self->_richLink metadata];
    v6 = [metadata copy];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_2FD0;
    v14[3] = &unk_C478;
    v14[4] = self;
    v16 = needsCompleteFetch;
    v7 = v6;
    v15 = v7;
    v8 = objc_retainBlock(v14);
    if (needsCompleteFetch)
    {
      metadata2 = [(LPMessagesPayload *)self->_richLink metadata];
      originalURL = [metadata2 originalURL];
      if (originalURL)
      {
        v11 = [NSMutableURLRequest requestWithURL:originalURL];
      }

      else
      {
        metadata3 = [(LPMessagesPayload *)self->_richLink metadata];
        v13 = [metadata3 URL];
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

- (void)updateRichLinkWithFetchedMetadata:(id)metadata
{
  metadataCopy = metadata;
  [(LPMessagesPayload *)self->_richLink setPlaceholder:0];
  [(LPMessagesPayload *)self->_richLink setNeedsCompleteFetch:0];
  if (metadataCopy)
  {
    [(LPMessagesPayload *)self->_richLink setMetadata:metadataCopy];
  }

  else
  {
    createEmptyMetadataWithOriginalURL = [(RichLinkPluginDataSource *)self createEmptyMetadataWithOriginalURL];
    [(LPMessagesPayload *)self->_richLink setMetadata:createEmptyMetadataWithOriginalURL];
  }

  metadata = [(LPMessagesPayload *)self->_richLink metadata];
  [metadata _resetIncompleteState];
}

- (void)setFlattenedMetadataForSending:(id)sending
{
  [(RichLinkPluginDataSource *)self updateRichLinkWithFetchedMetadata:sending];
  v6 = 0;
  v4 = [(RichLinkPluginDataSource *)self payloadWithOutOfLineAttachments:&v6];
  v5 = v6;
  [(RichLinkPluginDataSource *)self setPayload:v4 attachments:v5];
}

- (BOOL)metadataHasContent
{
  metadata = [(LPMessagesPayload *)self->_richLink metadata];
  title = [metadata title];
  if (title)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    icon = [metadata icon];
    if (icon)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      image = [metadata image];
      if (image)
      {
        LOBYTE(v4) = 1;
      }

      else
      {
        video = [metadata video];
        if (video)
        {
          LOBYTE(v4) = 1;
        }

        else
        {
          specialization = [metadata specialization];
          if (specialization)
          {
            LOBYTE(v4) = 1;
          }

          else
          {
            v9 = objc_alloc_init(LPLinkMetadata);
            v4 = [metadata _isEqualIgnoringURLs:v9] ^ 1;
          }
        }
      }
    }
  }

  return v4;
}

- (id)payloadWithOutOfLineAttachments:(id *)attachments
{
  if ([(RichLinkPluginDataSource *)self metadataHasContent])
  {
    v5 = [(LPMessagesPayload *)self->_richLink dataRepresentationWithOutOfLineAttachments:attachments];
  }

  else
  {
    v5 = 0;
    *attachments = 0;
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
  metadata = [(LPMessagesPayload *)v3 metadata];

  if (!metadata)
  {
    createEmptyMetadataWithOriginalURL = [(RichLinkPluginDataSource *)self createEmptyMetadataWithOriginalURL];
    [(LPMessagesPayload *)v3 setMetadata:createEmptyMetadataWithOriginalURL];

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
    messageGUID = [(RichLinkPluginDataSource *)self messageGUID];
    v11 = [v6 length];
    v12 = [v7 count];
    isPlaceholder = [(LPMessagesPayload *)v3 isPlaceholder];
    *buf = 138413058;
    v17 = messageGUID;
    v18 = 2048;
    v19 = v11;
    v20 = 2048;
    v21 = v12;
    v22 = 1024;
    v23 = isPlaceholder;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "RichLinkPluginDataSource<%@>: initial send (payload=%lu, attachments=%lu, placeholder=%d)", buf, 0x26u);
  }

  [(RichLinkPluginDataSource *)self setPayload:v6 attachments:v7];
  [(LPLinkView *)self->_temporarySizingView _setDisablePlaybackControls:0];
}

- (void)_didFetchMetadata:(id)metadata error:(id)error
{
  [(RichLinkPluginDataSource *)self updateRichLinkWithFetchedMetadata:metadata, error];
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
      messageGUID = [(RichLinkPluginDataSource *)self messageGUID];
      v12 = [v5 length];
      v13 = [v6 count];
      *buf = 138412802;
      v16 = messageGUID;
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

- (void)pluginPayloadDidChange:(unint64_t)change
{
  changeCopy = change;
  v22.receiver = self;
  v22.super_class = RichLinkPluginDataSource;
  [(RichLinkPluginDataSource *)&v22 pluginPayloadDidChange:?];
  if (!self->_didSendPayload && (changeCopy & 3) != 0 && !self->_didTapToLoad)
  {
    payload = [(RichLinkPluginDataSource *)self payload];
    self->_hasReceivedAnyPayload |= payload != 0;

    pluginPayload = [(RichLinkPluginDataSource *)self pluginPayload];
    data = [pluginPayload data];
    pluginPayload2 = [(RichLinkPluginDataSource *)self pluginPayload];
    attachments = [pluginPayload2 attachments];
    v10 = [LPMessagesPayload linkWithDataRepresentation:data attachments:attachments];
    richLink = self->_richLink;
    self->_richLink = v10;

    v12 = LPLogChannelPlugin();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      messageGUID = [(RichLinkPluginDataSource *)self messageGUID];
      pluginPayload3 = [(RichLinkPluginDataSource *)self pluginPayload];
      data2 = [pluginPayload3 data];
      v17 = [data2 length];
      pluginPayload4 = [(RichLinkPluginDataSource *)self pluginPayload];
      attachments2 = [pluginPayload4 attachments];
      v20 = [attachments2 count];
      isPlaceholder = [(LPMessagesPayload *)self->_richLink isPlaceholder];
      *buf = 138413058;
      v24 = messageGUID;
      v25 = 2048;
      v26 = v17;
      v27 = 2048;
      v28 = v20;
      v29 = 1024;
      v30 = isPlaceholder;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "RichLinkPluginDataSource<%@>: received payload change (payload=%lu, attachments=%lu, placeholder=%d)", buf, 0x26u);
    }

    [(RichLinkPluginDataSource *)self dispatchMetadataUpdateToAllClients];
    [(RichLinkPluginDataSource *)self startUpdateWatchdogIfNeeded];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = [UIScreen mainScreen:fits.width];
  [v5 bounds];
  v7 = v6;

  v8 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [v8 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v11 = +[UIScreen mainScreen];
    [v11 bounds];
    v7 = v12 + v12;
  }

  sizingView = [(RichLinkPluginDataSource *)self sizingView];
  [(RichLinkPluginDataSource *)self updateSidednessForLinkView:sizingView];
  [sizingView sizeThatFits:{width, v7}];
  v15 = v14;
  v17 = v16;
  v18 = LPLogChannelPlugin();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v21 = v18;
    messageGUID = [(RichLinkPluginDataSource *)self messageGUID];
    v32.width = width;
    v32.height = v7;
    v23 = NSStringFromCGSize(v32);
    v33.width = v15;
    v33.height = v17;
    v24 = NSStringFromCGSize(v33);
    *buf = 138412802;
    v27 = messageGUID;
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
    anyObject = [(NSHashTable *)self->_clients anyObject];
    v6 = [anyObject rendererForRichLinkPluginDataSource:self];

    v7 = v6;
    if (!v6)
    {
      createRichLinkView = [(RichLinkPluginDataSource *)self createRichLinkView];
      v9 = self->_temporarySizingView;
      self->_temporarySizingView = createRichLinkView;

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
    originalURL = [(RichLinkPluginDataSource *)self originalURL];
    v4 = [(RichLinkView *)v6 initWithURL:originalURL];

    originalURL2 = [(RichLinkPluginDataSource *)self originalURL];
    [(RichLinkView *)v4 _setOverrideURL:originalURL2];

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
    metadataForDisplay = [(RichLinkPluginDataSource *)self metadataForDisplay];
    [(RichLinkView *)v4 _setMetadata:metadataForDisplay isFinal:[(RichLinkPluginDataSource *)self metadataIsLikelyFinal]];

    [(RichLinkPluginDataSource *)self updateSidednessForLinkView:v4];
    if ([(RichLinkPluginDataSource *)self isCollaborationLink])
    {
      [(RichLinkPluginDataSource *)self prepareCollaborationLink:v4];
    }
  }

  return v4;
}

- (void)richLinkViewDidMoveToSuperview:(id)superview
{
  if (self->_hasDeferredResize)
  {
    superview = [superview superview];

    if (superview)
    {
      self->_hasDeferredResize = 0;

      [(RichLinkPluginDataSource *)self needsResize];
    }
  }
}

- (void)updateSidednessForLinkView:(id)view
{
  viewCopy = view;
  isFromMe = [(RichLinkPluginDataSource *)self isFromMe];
  payloadInShelf = [(RichLinkPluginDataSource *)self payloadInShelf];
  disableAnimations = self->_disableAnimations;
  v7 = payloadInShelf ^ 1;
  if ((disableAnimations & 1) == 0 && ((payloadInShelf ^ 1) & 1) == 0)
  {
    pluginPayload = [(RichLinkPluginDataSource *)self pluginPayload];
    supportsCollaboration = [pluginPayload supportsCollaboration];

    disableAnimations = supportsCollaboration ^ 1;
  }

  [viewCopy _setDisableAnimations:disableAnimations];
  if (isFromMe)
  {
    pluginPayload2 = [(RichLinkPluginDataSource *)self pluginPayload];
    supportsCollaboration2 = [pluginPayload2 supportsCollaboration];

    if (supportsCollaboration2)
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

  [viewCopy _setAnimationOrigin:v12];
  [viewCopy _setNeedsMessagesTranscriptPushCounterAnimation:v7];
  v13 = +[CKUIBehavior sharedBehaviors];
  [v13 pluginBalloonInsetsForMessageFromMe:isFromMe];
  [viewCopy setContentInset:?];

  [viewCopy _setForceFlexibleWidth:1];
  [viewCopy _setInComposeContext:payloadInShelf];
  [viewCopy _setInSenderContext:isFromMe];
  [viewCopy _setDisableTapGesture:payloadInShelf];
  [viewCopy _setDisableHighlightGesture:payloadInShelf];
  traitCollection = [viewCopy traitCollection];
  v15 = -[RichLinkPluginDataSource balloonMaskIncludingTail:userInterfaceStyle:](self, "balloonMaskIncludingTail:userInterfaceStyle:", v7, [traitCollection userInterfaceStyle]);

  [viewCopy _setMaskImage:v15];
  v16 = objc_alloc_init(LPLinkRendererSizeClassParameters);
  [v16 setNeedsSpaceAffordanceForDeleteButton:1];
  [viewCopy _setSizeClassParameters:v16];
  [(RichLinkPluginDataSource *)self updateUsesInferredAppearanceForLinkView:viewCopy];
}

- (id)balloonMaskIncludingTail:(BOOL)tail userInterfaceStyle:(int64_t)style
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

- (void)updateUsesInferredAppearanceForLinkView:(id)view
{
  viewCopy = view;
  v4 = [RichLinkPluginDataSource messageTintColorForView:viewCopy];
  [viewCopy _setUsesInferredAppearanceWithOverriddenBackgroundColor:v4 != 0];
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
        superview = [v10 superview];
        v7 |= superview != 0;
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

  metadata = [(LPMessagesPayload *)self->_richLink metadata];
  originalURL = [metadata originalURL];

  metadata2 = [(LPMessagesPayload *)self->_richLink metadata];
  metadata3 = metadata2;
  if (originalURL)
  {
    originalURL2 = [metadata2 originalURL];
LABEL_7:
    v3 = originalURL2;

    goto LABEL_8;
  }

  v10 = [metadata2 URL];

  if (v10)
  {
    metadata3 = [(LPMessagesPayload *)self->_richLink metadata];
    originalURL2 = [metadata3 URL];
    goto LABEL_7;
  }

  v3 = 0;
LABEL_8:

  return v3;
}

- (NSString)storeIdentifier
{
  v3 = [LPLinkMetadataStoreTransformer alloc];
  metadataForDisplay = [(RichLinkPluginDataSource *)self metadataForDisplay];
  originalURL = [(RichLinkPluginDataSource *)self originalURL];
  v6 = [v3 initWithMetadata:metadataForDisplay URL:originalURL];

  storeIdentifier = [v6 storeIdentifier];

  return storeIdentifier;
}

- (id)_linkView:(id)view overrideURLForOpeningURL:(id)l
{
  lCopy = l;
  if (objc_opt_respondsToSelector())
  {
    v6 = [(RichLinkPluginDataSource *)self overrideURLForOpeningURL:lCopy];
  }

  else
  {
    v6 = lCopy;
  }

  v7 = v6;

  return v7;
}

- (BOOL)metadataIsViableForDisplay
{
  metadata = [(LPMessagesPayload *)self->_richLink metadata];

  if (!metadata)
  {
LABEL_5:
    LOBYTE(metadataHasContent) = 0;
    return metadataHasContent;
  }

  metadataHasContent = [(RichLinkPluginDataSource *)self metadataHasContent];
  if (metadataHasContent)
  {
    if (![(RichLinkPluginDataSource *)self payloadInShelf]|| (WeakRetained = objc_loadWeakRetained(&self->_pendingMetadataProvider), WeakRetained, !WeakRetained))
    {
      LOBYTE(metadataHasContent) = 1;
      return metadataHasContent;
    }

    goto LABEL_5;
  }

  return metadataHasContent;
}

- (id)metadataForDisplay
{
  if ([(RichLinkPluginDataSource *)self metadataIsViableForDisplay])
  {
    metadata = [(LPMessagesPayload *)self->_richLink metadata];
  }

  else
  {
    metadata = 0;
  }

  return metadata;
}

- (void)tapToLoadDidFetchMetadata:(id)metadata
{
  self->_didTapToLoad = 1;
  metadataCopy = metadata;
  [(RichLinkPluginDataSource *)self updateRichLinkWithFetchedMetadata:metadataCopy];
  [(LPLinkView *)self->_temporarySizingView _setAllowsTapToLoad:0];
  [(LPLinkView *)self->_temporarySizingView _setMetadata:metadataCopy isFinal:1];

  v12 = 0;
  v5 = [(RichLinkPluginDataSource *)self payloadWithOutOfLineAttachments:&v12];
  v6 = v12;
  v7 = LPLogChannelPlugin();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    messageGUID = [(RichLinkPluginDataSource *)self messageGUID];
    v10 = [v5 length];
    v11 = [v6 count];
    *buf = 138412802;
    v14 = messageGUID;
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
  metadataForDisplay = [(RichLinkPluginDataSource *)self metadataForDisplay];
  originalURL = [(RichLinkPluginDataSource *)self originalURL];
  v6 = [v3 initWithMetadata:metadataForDisplay URL:originalURL];

  previewSummary = [v6 previewSummary];

  return previewSummary;
}

+ (id)individualPreviewSummaryForPluginPayload:(id)payload
{
  payloadCopy = payload;
  data = [payloadCopy data];

  if (data)
  {
    data2 = [payloadCopy data];
    attachments = [payloadCopy attachments];
    v7 = [LPMessagesPayload linkWithDataRepresentation:data2 attachments:attachments];

    v8 = [payloadCopy url];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      metadata = [v7 metadata];
      originalURL = [metadata originalURL];
      v14 = originalURL;
      if (originalURL)
      {
        v10 = originalURL;
      }

      else
      {
        metadata2 = [v7 metadata];
        v10 = [metadata2 URL];
      }
    }

    v16 = [LPLinkMetadataPreviewTransformer alloc];
    metadata3 = [v7 metadata];
    v18 = [v16 initWithMetadata:metadata3 URL:v10];

    previewSummary = [v18 previewSummary];
  }

  else
  {
    previewSummary = 0;
  }

  return previewSummary;
}

- (BOOL)isCollaborationLink
{
  pluginPayload = [(RichLinkPluginDataSource *)self pluginPayload];
  if (objc_opt_respondsToSelector())
  {
    isCollaboration = [pluginPayload isCollaboration];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v4 = 0;
      goto LABEL_7;
    }

    isCollaboration = [pluginPayload supportsCollaboration];
  }

  v4 = isCollaboration;
LABEL_7:

  return v4;
}

- (void)prepareCollaborationLink:(id)link
{
  linkCopy = link;
  if ([(RichLinkPluginDataSource *)self payloadInShelf]&& self->_hasReceivedAnyPayload)
  {
    [linkCopy _setCollaborative:1];
    pluginPayload = [(RichLinkPluginDataSource *)self pluginPayload];
    collaborationMetadata = [pluginPayload collaborationMetadata];

    pluginPayload2 = [(RichLinkPluginDataSource *)self pluginPayload];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      pluginPayload3 = [(RichLinkPluginDataSource *)self pluginPayload];
      collaborationOptionsSummary = [pluginPayload3 collaborationOptionsSummary];
    }

    else
    {
      collaborationOptionsSummary = sub_1B80(@"Share Options");
    }

    v9 = [[SLCollaborationFooterViewModel alloc] initWithMetadata:collaborationMetadata];
    [v9 setOptionsSummary:collaborationOptionsSummary];
    pluginPayload4 = [(RichLinkPluginDataSource *)self pluginPayload];
    payloadCollaborationType = [pluginPayload4 payloadCollaborationType];

    if (payloadCollaborationType == &dword_0 + 2)
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

      [linkCopy _setOverrideSubtitle:v16];
      goto LABEL_17;
    }

    objc_initWeak(&location, linkCopy);
    type = [collaborationMetadata type];
    actionDescription = [type actionDescription];
    v23 = actionDescription;
    if (actionDescription)
    {
      v44 = actionDescription;
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

    pluginPayload5 = [(RichLinkPluginDataSource *)self pluginPayload];
    if (objc_opt_respondsToSelector())
    {
      pluginPayload6 = [(RichLinkPluginDataSource *)self pluginPayload];
      sendAsCopy = [pluginPayload6 sendAsCopy];

      if (sendAsCopy)
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
    [linkCopy _setButtonActions:v42];

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
    [linkCopy _setCollaborationFooterViewModel:v9 action:v47];
    goto LABEL_18;
  }

LABEL_19:
}

- (void)ensureValidCollaborationState
{
  metadata = [(LPMessagesPayload *)self->_richLink metadata];
  specialization = [metadata specialization];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    specialization2 = [metadata specialization];
    pluginPayload = [(RichLinkPluginDataSource *)self pluginPayload];
    [specialization2 setIsCollaboration:{objc_msgSend(pluginPayload, "sendAsCopy") ^ 1}];
  }
}

- (id)statusTransformer
{
  if (!self->_statusTransformer)
  {
    v3 = [LPLinkMetadataStatusTransformer alloc];
    metadataForDisplay = [(RichLinkPluginDataSource *)self metadataForDisplay];
    originalURL = [(RichLinkPluginDataSource *)self originalURL];
    v6 = [v3 initWithMetadata:metadataForDisplay URL:originalURL];
    statusTransformer = self->_statusTransformer;
    self->_statusTransformer = v6;

    [(LPLinkMetadataStatusTransformer *)self->_statusTransformer setDelegate:self];
    v8 = +[CKUIBehavior sharedBehaviors];
    theme = [v8 theme];
    LOBYTE(originalURL) = objc_opt_respondsToSelector();

    if (originalURL)
    {
      v10 = +[CKUIBehavior sharedBehaviors];
      theme2 = [v10 theme];
      transcriptMessageStatusButtonTextColor = [theme2 transcriptMessageStatusButtonTextColor];
      [(LPLinkMetadataStatusTransformer *)self->_statusTransformer setForegroundColor:transcriptMessageStatusButtonTextColor];
    }
  }

  v13 = self->_statusTransformer;

  return v13;
}

- (BOOL)wantsStatusItem
{
  statusTransformer = [(RichLinkPluginDataSource *)self statusTransformer];
  statusText = [statusTransformer statusText];
  v4 = statusText != 0;

  return v4;
}

- (id)statusAttributedString
{
  statusTransformer = [(RichLinkPluginDataSource *)self statusTransformer];
  statusText = [statusTransformer statusText];

  return statusText;
}

- (void)didTapStatusItem
{
  statusTransformer = [(RichLinkPluginDataSource *)self statusTransformer];
  v2 = +[UIApplication sharedApplication];
  actionURL = [statusTransformer actionURL];
  [v2 openURL:actionURL options:&__NSDictionary0__struct completionHandler:0];
}

+ (id)messageTintColorForView:(id)view
{
  viewCopy = view;
  _specializedBackgroundColor = [viewCopy _specializedBackgroundColor];
  _hasMedia = [viewCopy _hasMedia];

  if ((_hasMedia & 1) == 0 && _specializedBackgroundColor)
  {
    v6 = +[LPResources linkBackgroundColor];
    v7 = [UITraitCollection traitCollectionWithUserInterfaceStyle:1];
    v8 = [v6 resolvedColorWithTraitCollection:v7];

    v9 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
    v10 = [v6 resolvedColorWithTraitCollection:v9];

    if (([_specializedBackgroundColor _isSimilarToColor:v8 withinPercentage:0.100000001] & 1) != 0 || objc_msgSend(_specializedBackgroundColor, "_isSimilarToColor:withinPercentage:", v10, 0.100000001))
    {

      _specializedBackgroundColor = 0;
    }
  }

  return _specializedBackgroundColor;
}

@end