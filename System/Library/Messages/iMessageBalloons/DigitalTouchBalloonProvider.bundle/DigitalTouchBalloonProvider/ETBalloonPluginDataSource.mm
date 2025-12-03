@interface ETBalloonPluginDataSource
+ (id)previewSummary;
- (CGSize)sizeThatFits:(CGSize)fits;
- (ETBalloonPluginDataSource)initWithPluginPayload:(id)payload;
- (ETBalloonPluginDataSourceDelegate)delegate;
- (NSArray)createSessionMessages;
- (NSURL)mediaURL;
- (id)_unarchiveMessageFromData:(id)data withAttachments:(id)attachments;
- (void)playbackWithCompletionBlock:(id)block;
- (void)pluginPayloadDidChange:(unint64_t)change;
- (void)stopPlayback;
@end

@implementation ETBalloonPluginDataSource

+ (id)previewSummary
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"TRANSCRIPT_PREVIEW_SUMMARY" value:&stru_24D60 table:@"DigitalTouchBalloonProvider-Localizable"];

  return v3;
}

- (ETBalloonPluginDataSource)initWithPluginPayload:(id)payload
{
  payloadCopy = payload;
  v12.receiver = self;
  v12.super_class = ETBalloonPluginDataSource;
  v5 = [(ETBalloonPluginDataSource *)&v12 initWithPluginPayload:payloadCopy];
  v6 = v5;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&v5->_delegate);
    v8 = [WeakRetained dataSourceShouldUseDemoHook:v6];

    if (v8)
    {
      mediaURL = [(ETBalloonPluginDataSource *)v6 mediaURL];
      v6->_hasMediaPayload = mediaURL != 0;
    }

    else
    {
      mediaURL = [payloadCopy data];
      v10 = [ETMessage unarchive:mediaURL];
      v6->_hasMediaPayload = [v10 messageType] == 8;
    }
  }

  return v6;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  UIRoundToViewScale();
  v5 = v4;
  UIRoundToViewScale();
  v7 = v6;
  v8 = +[UIApplication sharedApplication];
  statusBar = [v8 statusBar];
  [statusBar size];
  v11 = v10;

  v12 = +[UIScreen mainScreen];
  [v12 bounds];
  v14 = v13;

  v15 = v14 - v11 + -32.0 + -44.0;
  if (height < v15)
  {
    v15 = height;
  }

  v16 = v15 + -12.0;
  if (v7 <= v15 + -12.0)
  {
    v16 = v7;
  }

  else
  {
    UIRoundToViewScale();
    v5 = v17;
  }

  v18 = v5;
  v19 = v16;
  result.height = v19;
  result.width = v18;
  return result;
}

- (NSArray)createSessionMessages
{
  v3 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allPayloads = [(ETBalloonPluginDataSource *)self allPayloads];
  v5 = [allPayloads countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(allPayloads);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        pluginPayload = [(ETBalloonPluginDataSource *)self pluginPayload];
        attachments = [pluginPayload attachments];
        v12 = [(ETBalloonPluginDataSource *)self _unarchiveMessageFromData:v9 withAttachments:attachments];

        if (v12)
        {
          [v3 addObject:v12];
        }
      }

      v6 = [allPayloads countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  self->_sessionHasMultipleMessages = [v3 count] > 1;

  return v3;
}

- (id)_unarchiveMessageFromData:(id)data withAttachments:(id)attachments
{
  dataCopy = data;
  attachmentsCopy = attachments;
  v8 = [ETMessage unarchive:dataCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v19 = v8;
  [WeakRetained dataSource:self addDemoHookToMessage:&v19];
  v10 = v19;

  if ([v10 messageType] == 8)
  {
    if ([attachmentsCopy count])
    {
      v11 = [attachmentsCopy objectAtIndex:0];
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v21 = v11;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Setting attachment: %@", buf, 0xCu);
        }
      }

      if ([v10 messageType] == 8)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 setMediaURL:v11];
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              identifier = [v10 identifier];
              v15 = objc_opt_class();
              *buf = 138412546;
              v21 = identifier;
              v22 = 2112;
              v23 = v15;
              v16 = v15;
              _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Media message with ID: %@ has attachment of class %@ instead of NSURL.", buf, 0x16u);
            }
          }

          v10 = 0;
        }
      }

LABEL_19:

      goto LABEL_20;
    }

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Missing attachment with video message payload!", buf, 2u);
      }

      goto LABEL_19;
    }
  }

LABEL_20:
  v17 = v10;

  return v10;
}

- (void)pluginPayloadDidChange:(unint64_t)change
{
  changeCopy = change;
  v15.receiver = self;
  v15.super_class = ETBalloonPluginDataSource;
  [(ETBalloonPluginDataSource *)&v15 pluginPayloadDidChange:?];
  pluginPayload = [(ETBalloonPluginDataSource *)self pluginPayload];
  data = [pluginPayload data];
  attachments = [pluginPayload attachments];
  v8 = attachments;
  if (changeCopy)
  {
    allPayloads = [(ETBalloonPluginDataSource *)self _unarchiveMessageFromData:data withAttachments:attachments];
    self->_hasMediaPayload = [allPayloads messageType] == 8;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dataSource:self didReceiveSessionMessage:allPayloads];
LABEL_8:

    goto LABEL_9;
  }

  if ((changeCopy & 2) == 0)
  {
LABEL_9:
    allPayloads = [(ETBalloonPluginDataSource *)self allPayloads];
    self->_sessionHasMultipleMessages = [allPayloads count] > 1;
    goto LABEL_10;
  }

  if ([attachments count])
  {
    allPayloads = [v8 objectAtIndexedSubscript:0];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_10:

      goto LABEL_11;
    }

    WeakRetained = [ETMessageHeaderReader identifierInArchive:data];
    if ([ETMessageHeaderReader messageTypeInArchive:data]== 8)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 dataSource:self didUpdateAttachmentURL:allPayloads forMessageWithIdentifier:WeakRetained];
    }

    else if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [data length];
        messageGUID = [pluginPayload messageGUID];
        *buf = 134218498;
        v17 = v13;
        v18 = 2112;
        v19 = messageGUID;
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Attachment update for non-attachment message. Please file a radar! pluginPayload data length: %lu, pluginPayload messageGUID: '%@', pluginPayload attachments: %@", buf, 0x20u);
      }
    }

    goto LABEL_8;
  }

LABEL_11:
}

- (NSURL)mediaURL
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained dataSourceShouldUseDemoHook:self];

  if (v4)
  {
    payload = [(ETBalloonPluginDataSource *)self payload];
    pluginPayload = [(ETBalloonPluginDataSource *)self pluginPayload];
    attachments = [pluginPayload attachments];
    attachments2 = [(ETBalloonPluginDataSource *)self _unarchiveMessageFromData:payload withAttachments:attachments];

    if ([attachments2 messageType] == 8)
    {
      mediaURL = [attachments2 mediaURL];
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  pluginPayload2 = [(ETBalloonPluginDataSource *)self pluginPayload];
  attachments2 = [pluginPayload2 attachments];

  if (![attachments2 count])
  {
LABEL_8:
    mediaURL = 0;
    goto LABEL_9;
  }

  v11 = [attachments2 objectAtIndexedSubscript:0];
  objc_opt_class();
  mediaURL = 0;
  if (objc_opt_isKindOfClass())
  {
    mediaURL = v11;
  }

LABEL_9:

  return mediaURL;
}

- (void)playbackWithCompletionBlock:(id)block
{
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained dataSourceViewIsMostlyVisible:self];

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 dataSource:self startPlaybackWithCompletion:blockCopy];
  }

  else if (blockCopy)
  {
    blockCopy[2](blockCopy, 0);
  }
}

- (void)stopPlayback
{
  delegate = [(ETBalloonPluginDataSource *)self delegate];
  [delegate dataSourceStopPlayback:self];
}

- (ETBalloonPluginDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end