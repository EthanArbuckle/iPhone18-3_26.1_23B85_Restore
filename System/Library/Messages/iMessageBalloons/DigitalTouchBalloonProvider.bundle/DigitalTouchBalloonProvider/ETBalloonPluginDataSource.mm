@interface ETBalloonPluginDataSource
+ (id)previewSummary;
- (CGSize)sizeThatFits:(CGSize)a3;
- (ETBalloonPluginDataSource)initWithPluginPayload:(id)a3;
- (ETBalloonPluginDataSourceDelegate)delegate;
- (NSArray)createSessionMessages;
- (NSURL)mediaURL;
- (id)_unarchiveMessageFromData:(id)a3 withAttachments:(id)a4;
- (void)playbackWithCompletionBlock:(id)a3;
- (void)pluginPayloadDidChange:(unint64_t)a3;
- (void)stopPlayback;
@end

@implementation ETBalloonPluginDataSource

+ (id)previewSummary
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"TRANSCRIPT_PREVIEW_SUMMARY" value:&stru_24D60 table:@"DigitalTouchBalloonProvider-Localizable"];

  return v3;
}

- (ETBalloonPluginDataSource)initWithPluginPayload:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ETBalloonPluginDataSource;
  v5 = [(ETBalloonPluginDataSource *)&v12 initWithPluginPayload:v4];
  v6 = v5;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&v5->_delegate);
    v8 = [WeakRetained dataSourceShouldUseDemoHook:v6];

    if (v8)
    {
      v9 = [(ETBalloonPluginDataSource *)v6 mediaURL];
      v6->_hasMediaPayload = v9 != 0;
    }

    else
    {
      v9 = [v4 data];
      v10 = [ETMessage unarchive:v9];
      v6->_hasMediaPayload = [v10 messageType] == 8;
    }
  }

  return v6;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  UIRoundToViewScale();
  v5 = v4;
  UIRoundToViewScale();
  v7 = v6;
  v8 = +[UIApplication sharedApplication];
  v9 = [v8 statusBar];
  [v9 size];
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
  v4 = [(ETBalloonPluginDataSource *)self allPayloads];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(ETBalloonPluginDataSource *)self pluginPayload];
        v11 = [v10 attachments];
        v12 = [(ETBalloonPluginDataSource *)self _unarchiveMessageFromData:v9 withAttachments:v11];

        if (v12)
        {
          [v3 addObject:v12];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  self->_sessionHasMultipleMessages = [v3 count] > 1;

  return v3;
}

- (id)_unarchiveMessageFromData:(id)a3 withAttachments:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [ETMessage unarchive:v6];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v19 = v8;
  [WeakRetained dataSource:self addDemoHookToMessage:&v19];
  v10 = v19;

  if ([v10 messageType] == 8)
  {
    if ([v7 count])
    {
      v11 = [v7 objectAtIndex:0];
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
              v14 = [v10 identifier];
              v15 = objc_opt_class();
              *buf = 138412546;
              v21 = v14;
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

- (void)pluginPayloadDidChange:(unint64_t)a3
{
  v3 = a3;
  v15.receiver = self;
  v15.super_class = ETBalloonPluginDataSource;
  [(ETBalloonPluginDataSource *)&v15 pluginPayloadDidChange:?];
  v5 = [(ETBalloonPluginDataSource *)self pluginPayload];
  v6 = [v5 data];
  v7 = [v5 attachments];
  v8 = v7;
  if (v3)
  {
    v9 = [(ETBalloonPluginDataSource *)self _unarchiveMessageFromData:v6 withAttachments:v7];
    self->_hasMediaPayload = [v9 messageType] == 8;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dataSource:self didReceiveSessionMessage:v9];
LABEL_8:

    goto LABEL_9;
  }

  if ((v3 & 2) == 0)
  {
LABEL_9:
    v9 = [(ETBalloonPluginDataSource *)self allPayloads];
    self->_sessionHasMultipleMessages = [v9 count] > 1;
    goto LABEL_10;
  }

  if ([v7 count])
  {
    v9 = [v8 objectAtIndexedSubscript:0];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_10:

      goto LABEL_11;
    }

    WeakRetained = [ETMessageHeaderReader identifierInArchive:v6];
    if ([ETMessageHeaderReader messageTypeInArchive:v6]== 8)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 dataSource:self didUpdateAttachmentURL:v9 forMessageWithIdentifier:WeakRetained];
    }

    else if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v6 length];
        v14 = [v5 messageGUID];
        *buf = 134218498;
        v17 = v13;
        v18 = 2112;
        v19 = v14;
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
    v5 = [(ETBalloonPluginDataSource *)self payload];
    v6 = [(ETBalloonPluginDataSource *)self pluginPayload];
    v7 = [v6 attachments];
    v8 = [(ETBalloonPluginDataSource *)self _unarchiveMessageFromData:v5 withAttachments:v7];

    if ([v8 messageType] == 8)
    {
      v9 = [v8 mediaURL];
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v10 = [(ETBalloonPluginDataSource *)self pluginPayload];
  v8 = [v10 attachments];

  if (![v8 count])
  {
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v11 = [v8 objectAtIndexedSubscript:0];
  objc_opt_class();
  v9 = 0;
  if (objc_opt_isKindOfClass())
  {
    v9 = v11;
  }

LABEL_9:

  return v9;
}

- (void)playbackWithCompletionBlock:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained dataSourceViewIsMostlyVisible:self];

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 dataSource:self startPlaybackWithCompletion:v7];
  }

  else if (v7)
  {
    v7[2](v7, 0);
  }
}

- (void)stopPlayback
{
  v3 = [(ETBalloonPluginDataSource *)self delegate];
  [v3 dataSourceStopPlayback:self];
}

- (ETBalloonPluginDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end