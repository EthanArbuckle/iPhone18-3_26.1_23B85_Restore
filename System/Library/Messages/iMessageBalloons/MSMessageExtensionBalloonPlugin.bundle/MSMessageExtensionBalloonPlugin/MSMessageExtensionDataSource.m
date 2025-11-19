@interface MSMessageExtensionDataSource
+ (id)_associatedMessagePayloadFromPluginPayload:(id)a3;
+ (id)associatedMessagePayloadsFromAssociatedPluginPayloads:(id)a3;
+ (id)messagePayloadFromPluginPayload:(id)a3;
+ (id)pluginPayloadFromMediaPayload:(id)a3;
- (BOOL)supportsDynamicSize;
- (BOOL)wantsInteractiveContentView;
- (BOOL)wantsStatusItem;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MSMessage)message;
- (MSMessageExtensionDataSource)initWithPluginPayload:(id)a3;
- (MSMessageExtensionDataSourceDelegate)balloonControllerDelegate;
- (MSMessageExtensionDataSourceDelegate)delegate;
- (NSArray)associatedMessages;
- (id)propertyProvider;
- (id)statusString;
- (id)url;
- (void)dealloc;
- (void)payloadWillEnterShelf;
- (void)payloadWillSendFromShelf;
- (void)pluginEnabledStateChanged:(id)a3;
- (void)pluginInstalled:(id)a3;
- (void)pluginPayloadDidChange:(unint64_t)a3;
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

- (MSMessageExtensionDataSource)initWithPluginPayload:(id)a3
{
  v7.receiver = self;
  v7.super_class = MSMessageExtensionDataSource;
  v3 = [(MSMessageExtensionDataSource *)&v7 initWithPluginPayload:a3];
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
  v2 = [(MSMessageExtensionDataSource *)self message];
  v3 = [v2 layout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)pluginPayloadDidChange:(unint64_t)a3
{
  if (a3)
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
      [v9 datasourcePayloadDidChange:self updateFlags:a3];
    }

    v10 = objc_loadWeakRetained(&self->_balloonControllerDelegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_balloonControllerDelegate);
      [v12 datasourcePayloadDidChange:self updateFlags:a3];
    }
  }
}

+ (id)associatedMessagePayloadsFromAssociatedPluginPayloads:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
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

        v11 = [a1 _associatedMessagePayloadFromPluginPayload:{*(*(&v16 + 1) + 8 * i), v16}];
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

+ (id)_associatedMessagePayloadFromPluginPayload:(id)a3
{
  v3 = a3;
  v26 = IMExtensionPayloadUnarchivingClasses();
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 data];
    v28 = 0;
    v5 = [NSKeyedUnarchiver _strictlyUnarchivedObjectOfClasses:v26 fromData:v4 error:&v28];
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
    v8 = [v3 data];
    v27 = 0;
    v5 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v26 fromData:v8 error:&v27];
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
    v16 = [v3 isFromMe];
    v17 = [v3 time];
    v14 = [v15 initWithSession:v24 isFromMe:v16 time:v17];

    [v14 setURL:v25];
    [v14 setAccessibilityLabel:v23];
    if ([v3 isFromMe])
    {
      v18 = +[IMBalloonPluginManager sharedInstance];
      v19 = [v3 pluginBundleID];
      v20 = [v3 sender];
      [v18 localParticipantIdentifierForAppID:v19 conversationID:v20];
    }

    else
    {
      v18 = +[IMBalloonPluginManager sharedInstance];
      v19 = [v3 sender];
      v20 = [v3 pluginBundleID];
      [v18 recipientIDForRecipient:v19 appID:v20];
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

+ (id)messagePayloadFromPluginPayload:(id)a3
{
  v3 = a3;
  v67 = IMExtensionPayloadUnarchivingClasses();
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 data];
    v74 = 0;
    v5 = [NSKeyedUnarchiver _strictlyUnarchivedObjectOfClasses:v67 fromData:v4 error:&v74];
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
    v8 = [v3 data];
    v73 = 0;
    v5 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v67 fromData:v8 error:&v73];
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
    v10 = [v3 pluginBundleID];
    v64 = [v9 balloonPluginForBundleID:v10];

    v11 = [v64 identifier];
    v12 = IMBalloonExtensionIDWithSuffix();
    LODWORD(v10) = [v11 isEqualToString:v12];

    if (v10)
    {
      v63 = [v5 objectForKeyedSubscript:IMExtensionPayloadDataKey];
      if (!v63)
      {
        aClassName = [v5 objectForKeyedSubscript:IMExtensionPayloadDataFilePathKey];
        if ([(NSString *)aClassName length])
        {
          v13 = [[NSString alloc] initWithData:aClassName encoding:4];
          if (IMOSLoggingEnabled())
          {
            v14 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v77 = v13;
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
          v13 = [v3 attachments];
          v17 = [v13 countByEnumeratingWithState:&v69 objects:v75 count:16];
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
                  objc_enumerationMutation(v13);
                }

                v21 = *(*(&v69 + 1) + 8 * i);
                v22 = [v21 pathExtension];
                v23 = [v22 isEqualToString:v19];

                if (v23)
                {
                  v63 = [NSData dataWithContentsOfURL:v21];
                  goto LABEL_35;
                }
              }

              v17 = [v13 countByEnumeratingWithState:&v69 objects:v75 count:16];
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

      v35 = [v3 attachments];
      v36 = [v35 firstObject];
      [v28 setMediaFileURL:v36];
    }

    else
    {
      v28 = 0;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v38 = [v64 isEnabled];
    objc_opt_class();
    v39 = objc_opt_isKindOfClass();
    v59 = [v5 objectForKeyedSubscript:IMExtensionPayloadBalloonLiveLayoutInfoKey];
    if ((CKShouldShowSURF() & 1) == 0)
    {
      v43 = [v64 identifier];
      if ([v43 hasSuffix:IMBalloonPluginIdentifierSurf])
      {
        goto LABEL_49;
      }

      v57 = [v64 identifier];
      v58 = [v57 hasSuffix:IMBalloonPluginIdentifierSurfDeprecated];

      if (v58)
      {
        goto LABEL_50;
      }
    }

    if ((v39 & isKindOfClass & v38 & (v59 != 0)) == 0)
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
      v48 = [v3 statusText];
      [v16 setStatusText:v48];

      [v16 setShouldExpire:{objc_msgSend(v3, "shouldExpire")}];
      [v16 setAccessibilityLabel:v60];
      [v16 setIsFromMe:{objc_msgSend(v3, "isFromMe")}];
      v49 = [v5 objectForKeyedSubscript:IMExtensionPayloadLocalizedDescriptionTextKey];
      [v16 setSummaryText:v49];

      v50 = [v16 statusText];
      LODWORD(v49) = v50 == 0;

      if (v49)
      {
        v51 = [v5 objectForKeyedSubscript:IMExtensionPayloadStatusTextKey];
        [v16 setStatusText:v51];
      }

      if ([v3 isFromMe])
      {
        v52 = +[IMBalloonPluginManager sharedInstance];
        v53 = [v3 pluginBundleID];
        v54 = [v3 sender];
        [v52 localParticipantIdentifierForAppID:v53 conversationID:v54];
      }

      else
      {
        v52 = +[IMBalloonPluginManager sharedInstance];
        v53 = [v3 sender];
        v54 = [v3 pluginBundleID];
        [v52 recipientIDForRecipient:v53 appID:v54];
      }
      v55 = ;
      [v16 setSenderParticipantIdentifier:v55];

      goto LABEL_61;
    }

    v40 = v28;
    v41 = [v3 data];
    v42 = IMBalloonPluginFallbackLinkMetadata();

    v43 = v40;
    if (v42)
    {
      v43 = [[MSMessageRichLinkLayout alloc] initWithLinkMetadata:v42];
    }

    v28 = [[MSMessageLiveLayout alloc] initWithAlternateLayout:v43];
    v44 = IMBalloonPluginRequiredCapabilitiesWithPayloadDictionary();
    [v28 setRequiredCapabilities:v44];

    v45 = [v3 data];
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

+ (id)pluginPayloadFromMediaPayload:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CKBrowserItemPayload);
  v5 = [v3 mediaURL];

  if (v5)
  {
    v6 = [v3 mediaURL];
    [v4 setFileURL:v6];

    v7 = [v3 mediaFilename];
    [v4 setFilename:v7];

    v8 = [v3 generativePlaygroundRecipeData];
    [v4 setGenerativePlaygroundRecipeData:v8];
  }

  if ([v3 isSticker] && (objc_msgSend(v3, "accessibilityLabel"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = [NSAttributedString alloc];
    v11 = [v3 accessibilityLabel];
  }

  else
  {
    v12 = [v3 text];

    if (!v12)
    {
      goto LABEL_9;
    }

    v10 = [NSAttributedString alloc];
    v11 = [v3 text];
  }

  v13 = v11;
  v14 = [v10 initWithString:v11];
  [v4 setText:v14];

LABEL_9:
  v15 = [v3 attributionInfo];
  [v4 setAttributionInfo:v15];

  [v4 setSticker:{objc_msgSend(v3, "isSticker")}];

  return v4;
}

- (id)propertyProvider
{
  v3 = objc_alloc_init(LPAppLinkPresentationProperties);
  v4 = [(MSMessageExtensionDataSource *)self message];
  v5 = [v4 layout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v6 imageTitle];
    v8 = [(MSMessageExtensionDataSource *)self _replaceHandleWithContactNameInString:v7];
    [v6 setImageTitle:v8];

    v9 = [v6 imageSubtitle];
    v10 = [(MSMessageExtensionDataSource *)self _replaceHandleWithContactNameInString:v9];
    [v6 setImageSubtitle:v10];

    v11 = [v6 caption];
    v12 = [(MSMessageExtensionDataSource *)self _replaceHandleWithContactNameInString:v11];
    [v6 setCaption:v12];

    v13 = [v6 trailingCaption];
    v14 = [(MSMessageExtensionDataSource *)self _replaceHandleWithContactNameInString:v13];
    [v6 setTrailingCaption:v14];

    v15 = [v6 subcaption];
    v16 = [(MSMessageExtensionDataSource *)self _replaceHandleWithContactNameInString:v15];
    [v6 setSubcaption:v16];

    v17 = [v6 trailingSubcaption];
    v18 = [(MSMessageExtensionDataSource *)self _replaceHandleWithContactNameInString:v17];
    [v6 setTrailingSubcaption:v18];

    v19 = [v6 mediaFileURL];
    if (!v19 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([(MSMessageExtensionDataSource *)self parentChatHasAllUnknownRecipients]& 1) != 0)
    {
LABEL_11:
      v23 = [v6 caption];
      if (![v23 length])
      {
        v24 = [v6 trailingCaption];
        if (![v24 length])
        {
          v25 = [v6 subcaption];
          if (![v25 length])
          {
            v50 = [v6 trailingSubcaption];
            v51 = [v50 length];

            if (!v51)
            {
LABEL_18:
              v39 = [v6 imageTitle];
              if ([v39 length])
              {
              }

              else
              {
                v40 = [v6 imageSubtitle];
                v41 = [v40 length];

                if (!v41)
                {
LABEL_22:

                  goto LABEL_23;
                }
              }

              v42 = objc_alloc_init(LPCaptionBarPresentationProperties);
              v43 = [v6 imageTitle];
              v44 = [v42 top];
              v45 = [v44 leading];
              [v45 setText:v43];

              v46 = [v6 imageSubtitle];
              v47 = [v42 bottom];
              v48 = [v47 leading];
              [v48 setText:v46];

              [v3 setMediaBottomCaptionBar:v42];
              goto LABEL_22;
            }

LABEL_17:
            v26 = objc_alloc_init(LPCaptionBarPresentationProperties);
            v27 = [v6 caption];
            v28 = [v26 top];
            v29 = [v28 leading];
            [v29 setText:v27];

            v30 = [v6 trailingCaption];
            v31 = [v26 top];
            v32 = [v31 trailing];
            [v32 setText:v30];

            v33 = [v6 subcaption];
            v34 = [v26 bottom];
            v35 = [v34 leading];
            [v35 setText:v33];

            v36 = [v6 trailingSubcaption];
            v37 = [v26 bottom];
            v38 = [v37 trailing];
            [v38 setText:v36];

            [v3 setCaptionBar:v26];
            goto LABEL_18;
          }
        }
      }

      goto LABEL_17;
    }

    PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, [v19 pathExtension], 0);
    v21 = UTTypeCopyPreferredTagWithClass(PreferredIdentifierForTag, kUTTagClassMIMEType);
    if (UTTypeConformsTo(PreferredIdentifierForTag, kUTTypeImage))
    {
      v22 = [[LPImage alloc] initByReferencingFileURL:v19 MIMEType:v21];
      [v3 setImage:v22];
    }

    else
    {
      if (!UTTypeConformsTo(PreferredIdentifierForTag, kUTTypeMovie))
      {
LABEL_10:

        goto LABEL_11;
      }

      v22 = [[LPVideo alloc] initByReferencingFileURL:v19 MIMEType:v21 hasAudio:1];
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
    v4 = [(MSMessageExtensionDataSource *)self pluginPayload];
    v5 = [MSMessageExtensionDataSource messagePayloadFromPluginPayload:v4];
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
    v4 = [(MSMessageExtensionDataSource *)self associatedPluginPayloads];
    v5 = [MSMessageExtensionDataSource associatedMessagePayloadsFromAssociatedPluginPayloads:v4];
    v6 = self->_associatedMessages;
    self->_associatedMessages = v5;

    associatedMessages = self->_associatedMessages;
  }

  return associatedMessages;
}

- (id)url
{
  v2 = [(MSMessageExtensionDataSource *)self message];
  v3 = [v2 URL];

  return v3;
}

- (BOOL)supportsDynamicSize
{
  v2 = [(MSMessageExtensionDataSource *)self message];
  v3 = [v2 layout];

  objc_opt_class();
  LOBYTE(v2) = objc_opt_isKindOfClass();

  return v2 & 1;
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (qword_571C8 != -1)
  {
    sub_2D364();
  }

  v6 = [(MSMessageExtensionDataSource *)self message];
  v7 = [v6 layout];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(MSMessageExtensionDataSource *)self balloonControllerDelegate];
    if (!v8)
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_2D378(v9);
      }
    }

    [v8 sizeThatFits:self datasource:{width, height}];
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
  v2 = [(MSMessageExtensionDataSource *)self message];
  v3 = [v2 statusText];
  v4 = [v3 length] != 0;

  return v4;
}

- (id)statusString
{
  v2 = [(MSMessageExtensionDataSource *)self message];
  v3 = [v2 statusText];

  return v3;
}

- (void)pluginEnabledStateChanged:(id)a3
{
  message = self->_message;
  self->_message = 0;

  [(MSMessageExtensionDataSource *)self needsResize];
}

- (void)pluginInstalled:(id)a3
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