@interface MSMessageExtensionDataSource
+ (id)_associatedMessagePayloadFromPluginPayload:(id)payload;
+ (id)associatedMessagePayloadsFromAssociatedPluginPayloads:(id)payloads;
+ (id)messagePayloadFromPluginPayload:(id)payload;
+ (id)pluginPayloadFromMediaPayload:(id)payload;
- (BOOL)supportsDynamicSize;
- (BOOL)wantsInteractiveContentView;
- (BOOL)wantsStatusItem;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MSMessage)message;
- (MSMessageExtensionDataSource)initWithPluginPayload:(id)payload;
- (MSMessageExtensionDataSourceDelegate)balloonControllerDelegate;
- (MSMessageExtensionDataSourceDelegate)delegate;
- (NSArray)associatedMessages;
- (id)propertyProvider;
- (id)statusString;
- (id)url;
- (void)dealloc;
- (void)payloadWillEnterShelf;
- (void)payloadWillSendFromShelf;
- (void)pluginEnabledStateChanged:(id)changed;
- (void)pluginInstalled:(id)installed;
- (void)pluginPayloadDidChange:(unint64_t)change;
@end

@implementation MSMessageExtensionDataSource

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MSMessageExtensionDataSource;
  [(MSMessageExtensionDataSource *)&v4 dealloc];
}

- (MSMessageExtensionDataSource)initWithPluginPayload:(id)payload
{
  v7.receiver = self;
  v7.super_class = MSMessageExtensionDataSource;
  v3 = [(MSMessageExtensionDataSource *)&v7 initWithPluginPayload:payload];
  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"pluginEnabledStateChanged:" name:IMBalloonPluginEnabledStateChangedNotification object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v3 selector:"pluginInstalled:" name:IMBalloonPluginManagerInstalledAppsChangedNotification object:0];
  }

  return v3;
}

- (BOOL)wantsInteractiveContentView
{
  message = [(MSMessageExtensionDataSource *)self message];
  layout = [message layout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)pluginPayloadDidChange:(unint64_t)change
{
  if (change)
  {
    message = self->_message;
    self->_message = 0;

    associatedMessages = self->_associatedMessages;
    self->_associatedMessages = 0;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 datasourcePayloadDidChange:self updateFlags:change];
    }

    v10 = objc_loadWeakRetained(&self->_balloonControllerDelegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_balloonControllerDelegate);
      [v12 datasourcePayloadDidChange:self updateFlags:change];
    }
  }
}

+ (id)associatedMessagePayloadsFromAssociatedPluginPayloads:(id)payloads
{
  payloadsCopy = payloads;
  v5 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = payloadsCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [self _associatedMessagePayloadFromPluginPayload:{*(*(&v16 + 1) + 8 * i), v16}];
        v12 = v11;
        if (v11)
        {
          [v11 _sanitize];
          [v5 addObject:v12];
        }

        else
        {
          v13 = ms_defaultLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_2CFE4(buf, &v21, v13);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v8);
  }

  v14 = ms_defaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_2D034(v5, v14);
  }

  return v5;
}

+ (id)_associatedMessagePayloadFromPluginPayload:(id)payload
{
  payloadCopy = payload;
  v26 = IMExtensionPayloadUnarchivingClasses();
  if (objc_opt_respondsToSelector())
  {
    data = [payloadCopy data];
    v28 = 0;
    v5 = [NSKeyedUnarchiver _strictlyUnarchivedObjectOfClasses:v26 fromData:data error:&v28];
    v6 = v28;

    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = ms_defaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_2D148();
    }
  }

  else
  {
    data2 = [payloadCopy data];
    v27 = 0;
    v5 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v26 fromData:data2 error:&v27];
    v6 = v27;

    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = ms_defaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_2D0D4();
    }
  }

LABEL_9:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v5 objectForKeyedSubscript:IMExtensionPayloadUserSessionIdentifier];
    v25 = [v5 objectForKeyedSubscript:IMExtensionPayloadURLKey];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = ms_defaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        sub_2D230(v11, v30);
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = ms_defaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        sub_2D290(v13, v29);
      }
    }

    v23 = [v5 objectForKeyedSubscript:IMExtensionPayloadAccessibilityLableKey];
    if (v9)
    {
      v24 = [[MSSession alloc] initWithIdentifier:v9];
    }

    else
    {
      v24 = 0;
    }

    v15 = [_MSMessageCustomAcknowledgement alloc];
    isFromMe = [payloadCopy isFromMe];
    time = [payloadCopy time];
    v14 = [v15 initWithSession:v24 isFromMe:isFromMe time:time];

    [v14 setURL:v25];
    [v14 setAccessibilityLabel:v23];
    if ([payloadCopy isFromMe])
    {
      v18 = +[IMBalloonPluginManager sharedInstance];
      pluginBundleID = [payloadCopy pluginBundleID];
      sender = [payloadCopy sender];
      [v18 localParticipantIdentifierForAppID:pluginBundleID conversationID:sender];
    }

    else
    {
      v18 = +[IMBalloonPluginManager sharedInstance];
      pluginBundleID = [payloadCopy sender];
      sender = [payloadCopy pluginBundleID];
      [v18 recipientIDForRecipient:pluginBundleID appID:sender];
    }
    v21 = ;
    [v14 setSenderParticipantIdentifier:v21];
  }

  else
  {
    v9 = ms_defaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_2D1BC();
    }

    v14 = 0;
  }

  return v14;
}

+ (id)messagePayloadFromPluginPayload:(id)payload
{
  payloadCopy = payload;
  v67 = IMExtensionPayloadUnarchivingClasses();
  if (objc_opt_respondsToSelector())
  {
    data = [payloadCopy data];
    v74 = 0;
    v5 = [NSKeyedUnarchiver _strictlyUnarchivedObjectOfClasses:v67 fromData:data error:&v74];
    v68 = v74;

    if (v68)
    {
      v6 = ms_defaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v77 = v68;
        v7 = "strict-decoding 016 exception/error after _strictlyUnarchivedObjectOfClasses: [%@]";
LABEL_8:
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 0xCu);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    data2 = [payloadCopy data];
    v73 = 0;
    v5 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v67 fromData:data2 error:&v73];
    v68 = v73;

    if (v68)
    {
      v6 = ms_defaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v77 = v68;
        v7 = "strict-decoding 016 exception/error after unarchivedObjectOfClasses: [%@]";
        goto LABEL_8;
      }

LABEL_9:

      goto LABEL_11;
    }
  }

  v68 = 0;
LABEL_11:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v66 = [v5 objectForKeyedSubscript:IMExtensionPayloadUserSessionIdentifier];
    v65 = [v5 objectForKeyedSubscript:IMExtensionPayloadURLKey];
    v9 = +[IMBalloonPluginManager sharedInstance];
    pluginBundleID = [payloadCopy pluginBundleID];
    v64 = [v9 balloonPluginForBundleID:pluginBundleID];

    identifier = [v64 identifier];
    v12 = IMBalloonExtensionIDWithSuffix();
    LODWORD(pluginBundleID) = [identifier isEqualToString:v12];

    if (pluginBundleID)
    {
      v63 = [v5 objectForKeyedSubscript:IMExtensionPayloadDataKey];
      if (!v63)
      {
        aClassName = [v5 objectForKeyedSubscript:IMExtensionPayloadDataFilePathKey];
        if ([(NSString *)aClassName length])
        {
          attachments = [[NSString alloc] initWithData:aClassName encoding:4];
          if (IMOSLoggingEnabled())
          {
            v14 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v77 = attachments;
              _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Trying to load legacy Mac extension payload data on iOS: %@", buf, 0xCu);
            }
          }
        }

        else
        {
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          attachments = [payloadCopy attachments];
          v17 = [attachments countByEnumeratingWithState:&v69 objects:v75 count:16];
          if (v17)
          {
            v18 = *v70;
            v19 = IMFileTransferPluginPayloadAttachmentExtension;
            while (2)
            {
              for (i = 0; i != v17; i = i + 1)
              {
                if (*v70 != v18)
                {
                  objc_enumerationMutation(attachments);
                }

                v21 = *(*(&v69 + 1) + 8 * i);
                pathExtension = [v21 pathExtension];
                v23 = [pathExtension isEqualToString:v19];

                if (v23)
                {
                  v63 = [NSData dataWithContentsOfURL:v21];
                  goto LABEL_35;
                }
              }

              v17 = [attachments countByEnumeratingWithState:&v69 objects:v75 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }
        }

        v63 = 0;
LABEL_35:
      }
    }

    else
    {
      v63 = 0;
    }

    aClassNamea = [v5 objectForKeyedSubscript:IMExtensionPayloadBalloonLayoutClassKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v66;
      v66 = [[NSUUID alloc] initWithUUIDString:v24];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v65;
      v65 = [NSURL URLWithString:v25];
    }

    v26 = [v5 objectForKeyedSubscript:IMExtensionPayloadBalloonLayoutInfoKey];
    v60 = [v5 objectForKeyedSubscript:IMExtensionPayloadAccessibilityLableKey];
    v27 = NSClassFromString(aClassNamea);
    if (v27 == objc_opt_class())
    {
      v28 = objc_alloc_init(MSMessageTemplateLayout);
      v29 = [v26 objectForKeyedSubscript:IMBalloonLayoutInfoCaptionKey];
      [v28 setCaption:v29];

      v30 = [v26 objectForKeyedSubscript:IMBalloonLayoutInfoSubcaptionKey];
      [v28 setSubcaption:v30];

      v31 = [v26 objectForKeyedSubscript:IMBalloonLayoutInfoSecondarySubcaptionKey];
      [v28 setTrailingCaption:v31];

      v32 = [v26 objectForKeyedSubscript:IMBalloonLayoutInfoTertiarySubcaptionKey];
      [v28 setTrailingSubcaption:v32];

      v33 = [v26 objectForKeyedSubscript:IMBalloonLayoutInfoImageTitleKey];
      [v28 setImageTitle:v33];

      v34 = [v26 objectForKeyedSubscript:IMBalloonLayoutInfoImageSubTitleKey];
      [v28 setImageSubtitle:v34];

      attachments2 = [payloadCopy attachments];
      firstObject = [attachments2 firstObject];
      [v28 setMediaFileURL:firstObject];
    }

    else
    {
      v28 = 0;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    isEnabled = [v64 isEnabled];
    objc_opt_class();
    v39 = objc_opt_isKindOfClass();
    v59 = [v5 objectForKeyedSubscript:IMExtensionPayloadBalloonLiveLayoutInfoKey];
    if ((CKShouldShowSURF() & 1) == 0)
    {
      identifier2 = [v64 identifier];
      if ([identifier2 hasSuffix:IMBalloonPluginIdentifierSurf])
      {
        goto LABEL_49;
      }

      identifier3 = [v64 identifier];
      v58 = [identifier3 hasSuffix:IMBalloonPluginIdentifierSurfDeprecated];

      if (v58)
      {
        goto LABEL_50;
      }
    }

    if ((v39 & isKindOfClass & isEnabled & (v59 != 0)) == 0)
    {
LABEL_50:
      if (!v28)
      {
        v28 = objc_alloc_init(MSMessageTemplateLayout);
      }

      if (v66)
      {
        v46 = [[MSSession alloc] initWithIdentifier:v66];
        v47 = [[MSMessage alloc] initWithSession:v46];
      }

      else
      {
        v47 = objc_alloc_init(MSMessage);
        v46 = 0;
      }

      v16 = v47;
      [v47 setURL:v65];
      [v16 set_data:v63];
      [v16 setLayout:v28];
      statusText = [payloadCopy statusText];
      [v16 setStatusText:statusText];

      [v16 setShouldExpire:{objc_msgSend(payloadCopy, "shouldExpire")}];
      [v16 setAccessibilityLabel:v60];
      [v16 setIsFromMe:{objc_msgSend(payloadCopy, "isFromMe")}];
      v49 = [v5 objectForKeyedSubscript:IMExtensionPayloadLocalizedDescriptionTextKey];
      [v16 setSummaryText:v49];

      statusText2 = [v16 statusText];
      LODWORD(v49) = statusText2 == 0;

      if (v49)
      {
        v51 = [v5 objectForKeyedSubscript:IMExtensionPayloadStatusTextKey];
        [v16 setStatusText:v51];
      }

      if ([payloadCopy isFromMe])
      {
        v52 = +[IMBalloonPluginManager sharedInstance];
        pluginBundleID2 = [payloadCopy pluginBundleID];
        sender = [payloadCopy sender];
        [v52 localParticipantIdentifierForAppID:pluginBundleID2 conversationID:sender];
      }

      else
      {
        v52 = +[IMBalloonPluginManager sharedInstance];
        pluginBundleID2 = [payloadCopy sender];
        sender = [payloadCopy pluginBundleID];
        [v52 recipientIDForRecipient:pluginBundleID2 appID:sender];
      }
      v55 = ;
      [v16 setSenderParticipantIdentifier:v55];

      goto LABEL_61;
    }

    v40 = v28;
    data3 = [payloadCopy data];
    v42 = IMBalloonPluginFallbackLinkMetadata();

    identifier2 = v40;
    if (v42)
    {
      identifier2 = [[MSMessageRichLinkLayout alloc] initWithLinkMetadata:v42];
    }

    v28 = [[MSMessageLiveLayout alloc] initWithAlternateLayout:identifier2];
    v44 = IMBalloonPluginRequiredCapabilitiesWithPayloadDictionary();
    [v28 setRequiredCapabilities:v44];

    data4 = [payloadCopy data];
    [v28 setSendAlternateLayoutAsText:IMBalloonPluginShouldSendAlternateLayoutAsTextWithMessageData()];

LABEL_49:
    goto LABEL_50;
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v77 = v68;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Failed unarchiving payload. Error %@", buf, 0xCu);
    }
  }

  v16 = 0;
LABEL_61:

  return v16;
}

+ (id)pluginPayloadFromMediaPayload:(id)payload
{
  payloadCopy = payload;
  v4 = objc_alloc_init(CKBrowserItemPayload);
  mediaURL = [payloadCopy mediaURL];

  if (mediaURL)
  {
    mediaURL2 = [payloadCopy mediaURL];
    [v4 setFileURL:mediaURL2];

    mediaFilename = [payloadCopy mediaFilename];
    [v4 setFilename:mediaFilename];

    generativePlaygroundRecipeData = [payloadCopy generativePlaygroundRecipeData];
    [v4 setGenerativePlaygroundRecipeData:generativePlaygroundRecipeData];
  }

  if ([payloadCopy isSticker] && (objc_msgSend(payloadCopy, "accessibilityLabel"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = [NSAttributedString alloc];
    accessibilityLabel = [payloadCopy accessibilityLabel];
  }

  else
  {
    text = [payloadCopy text];

    if (!text)
    {
      goto LABEL_9;
    }

    v10 = [NSAttributedString alloc];
    accessibilityLabel = [payloadCopy text];
  }

  v13 = accessibilityLabel;
  v14 = [v10 initWithString:accessibilityLabel];
  [v4 setText:v14];

LABEL_9:
  attributionInfo = [payloadCopy attributionInfo];
  [v4 setAttributionInfo:attributionInfo];

  [v4 setSticker:{objc_msgSend(payloadCopy, "isSticker")}];

  return v4;
}

- (id)propertyProvider
{
  v3 = objc_alloc_init(LPAppLinkPresentationProperties);
  message = [(MSMessageExtensionDataSource *)self message];
  layout = [message layout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = layout;
    imageTitle = [v6 imageTitle];
    v8 = [(MSMessageExtensionDataSource *)self _replaceHandleWithContactNameInString:imageTitle];
    [v6 setImageTitle:v8];

    imageSubtitle = [v6 imageSubtitle];
    v10 = [(MSMessageExtensionDataSource *)self _replaceHandleWithContactNameInString:imageSubtitle];
    [v6 setImageSubtitle:v10];

    caption = [v6 caption];
    v12 = [(MSMessageExtensionDataSource *)self _replaceHandleWithContactNameInString:caption];
    [v6 setCaption:v12];

    trailingCaption = [v6 trailingCaption];
    v14 = [(MSMessageExtensionDataSource *)self _replaceHandleWithContactNameInString:trailingCaption];
    [v6 setTrailingCaption:v14];

    subcaption = [v6 subcaption];
    v16 = [(MSMessageExtensionDataSource *)self _replaceHandleWithContactNameInString:subcaption];
    [v6 setSubcaption:v16];

    trailingSubcaption = [v6 trailingSubcaption];
    v18 = [(MSMessageExtensionDataSource *)self _replaceHandleWithContactNameInString:trailingSubcaption];
    [v6 setTrailingSubcaption:v18];

    mediaFileURL = [v6 mediaFileURL];
    if (!mediaFileURL || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([(MSMessageExtensionDataSource *)self parentChatHasAllUnknownRecipients]& 1) != 0)
    {
LABEL_11:
      caption2 = [v6 caption];
      if (![caption2 length])
      {
        trailingCaption2 = [v6 trailingCaption];
        if (![trailingCaption2 length])
        {
          subcaption2 = [v6 subcaption];
          if (![subcaption2 length])
          {
            trailingSubcaption2 = [v6 trailingSubcaption];
            v51 = [trailingSubcaption2 length];

            if (!v51)
            {
LABEL_18:
              imageTitle2 = [v6 imageTitle];
              if ([imageTitle2 length])
              {
              }

              else
              {
                imageSubtitle2 = [v6 imageSubtitle];
                v41 = [imageSubtitle2 length];

                if (!v41)
                {
LABEL_22:

                  goto LABEL_23;
                }
              }

              v42 = objc_alloc_init(LPCaptionBarPresentationProperties);
              imageTitle3 = [v6 imageTitle];
              v44 = [v42 top];
              leading = [v44 leading];
              [leading setText:imageTitle3];

              imageSubtitle3 = [v6 imageSubtitle];
              bottom = [v42 bottom];
              leading2 = [bottom leading];
              [leading2 setText:imageSubtitle3];

              [v3 setMediaBottomCaptionBar:v42];
              goto LABEL_22;
            }

LABEL_17:
            v26 = objc_alloc_init(LPCaptionBarPresentationProperties);
            caption3 = [v6 caption];
            v28 = [v26 top];
            leading3 = [v28 leading];
            [leading3 setText:caption3];

            trailingCaption3 = [v6 trailingCaption];
            v31 = [v26 top];
            trailing = [v31 trailing];
            [trailing setText:trailingCaption3];

            subcaption3 = [v6 subcaption];
            bottom2 = [v26 bottom];
            leading4 = [bottom2 leading];
            [leading4 setText:subcaption3];

            trailingSubcaption3 = [v6 trailingSubcaption];
            bottom3 = [v26 bottom];
            trailing2 = [bottom3 trailing];
            [trailing2 setText:trailingSubcaption3];

            [v3 setCaptionBar:v26];
            goto LABEL_18;
          }
        }
      }

      goto LABEL_17;
    }

    PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, [mediaFileURL pathExtension], 0);
    v21 = UTTypeCopyPreferredTagWithClass(PreferredIdentifierForTag, kUTTagClassMIMEType);
    if (UTTypeConformsTo(PreferredIdentifierForTag, kUTTypeImage))
    {
      v22 = [[LPImage alloc] initByReferencingFileURL:mediaFileURL MIMEType:v21];
      [v3 setImage:v22];
    }

    else
    {
      if (!UTTypeConformsTo(PreferredIdentifierForTag, kUTTypeMovie))
      {
LABEL_10:

        goto LABEL_11;
      }

      v22 = [[LPVideo alloc] initByReferencingFileURL:mediaFileURL MIMEType:v21 hasAudio:1];
      [v3 setVideo:v22];
    }

    goto LABEL_10;
  }

LABEL_23:

  return v3;
}

- (MSMessage)message
{
  message = self->_message;
  if (!message)
  {
    pluginPayload = [(MSMessageExtensionDataSource *)self pluginPayload];
    v5 = [MSMessageExtensionDataSource messagePayloadFromPluginPayload:pluginPayload];
    v6 = self->_message;
    self->_message = v5;

    message = self->_message;
  }

  return message;
}

- (NSArray)associatedMessages
{
  associatedMessages = self->_associatedMessages;
  if (!associatedMessages)
  {
    associatedPluginPayloads = [(MSMessageExtensionDataSource *)self associatedPluginPayloads];
    v5 = [MSMessageExtensionDataSource associatedMessagePayloadsFromAssociatedPluginPayloads:associatedPluginPayloads];
    v6 = self->_associatedMessages;
    self->_associatedMessages = v5;

    associatedMessages = self->_associatedMessages;
  }

  return associatedMessages;
}

- (id)url
{
  message = [(MSMessageExtensionDataSource *)self message];
  v3 = [message URL];

  return v3;
}

- (BOOL)supportsDynamicSize
{
  message = [(MSMessageExtensionDataSource *)self message];
  layout = [message layout];

  objc_opt_class();
  LOBYTE(message) = objc_opt_isKindOfClass();

  return message & 1;
}

- (void)payloadWillSendFromShelf
{
  WeakRetained = objc_loadWeakRetained(&self->_balloonControllerDelegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_balloonControllerDelegate);
    [v5 datasource:self didMoveToShelf:0];
  }
}

- (void)payloadWillEnterShelf
{
  WeakRetained = objc_loadWeakRetained(&self->_balloonControllerDelegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_balloonControllerDelegate);
    [v5 datasource:self didMoveToShelf:1];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  if (qword_571C8 != -1)
  {
    sub_2D364();
  }

  message = [(MSMessageExtensionDataSource *)self message];
  layout = [message layout];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    balloonControllerDelegate = [(MSMessageExtensionDataSource *)self balloonControllerDelegate];
    if (!balloonControllerDelegate)
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_2D378(v9);
      }
    }

    [balloonControllerDelegate sizeThatFits:self datasource:{width, height}];
    width = v10;
    height = v11;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [qword_571C0 setIsInShelf:{-[MSMessageExtensionDataSource payloadInShelf](self, "payloadInShelf")}];
      if (objc_opt_respondsToSelector())
      {
        [qword_571C0 dataSourcePluginPayloadDidChange:self didUpdateData:0 forceReloadData:1];
      }

      else
      {
        [qword_571C0 dataSourcePluginPayloadDidChange:self didUpdateData:0];
      }

      [qword_571C0 layoutSubviews];
      [qword_571C0 sizeThatFits:{width, height}];
      width = v12;
      height = v13;
    }
  }

  v14 = width;
  v15 = height;
  result.height = v15;
  result.width = v14;
  return result;
}

- (BOOL)wantsStatusItem
{
  message = [(MSMessageExtensionDataSource *)self message];
  statusText = [message statusText];
  v4 = [statusText length] != 0;

  return v4;
}

- (id)statusString
{
  message = [(MSMessageExtensionDataSource *)self message];
  statusText = [message statusText];

  return statusText;
}

- (void)pluginEnabledStateChanged:(id)changed
{
  message = self->_message;
  self->_message = 0;

  [(MSMessageExtensionDataSource *)self needsResize];
}

- (void)pluginInstalled:(id)installed
{
  message = self->_message;
  self->_message = 0;

  [(MSMessageExtensionDataSource *)self needsResize];
}

- (MSMessageExtensionDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MSMessageExtensionDataSourceDelegate)balloonControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_balloonControllerDelegate);

  return WeakRetained;
}

@end