@interface MSMessageBalloonLiveViewController
- (BOOL)_allowAllPresentationStyles;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MSMessageBalloonLiveViewController)initWithDataSource:(id)source fromMe:(BOOL)me conversationID:(id)d recipients:(id)recipients;
- (MSMessageExtensionBalloonLiveViewControllerDelegate)delegate;
- (MSMessageExtensionBalloonLiveViewControllerTintColorDelegate)tintColorDelegate;
- (id)_avatarImageForContact:(id)contact avatarSize:(CGSize)size avatarRenderer:(id)renderer;
- (id)_contactForIdentifier:(id)identifier;
- (id)_itemPayloadFromMSMessage:(id)message;
- (id)balloonExtensionPlugin;
- (id)balloonPlugin;
- (id)substituteNameInString:(id)string;
- (id)substituteNameInString:(id)string withAppID:(id)d;
- (void)_addAvatarToArray:(id)array forParticipantAddress:(id)address avatarSize:(CGSize)size avatarRenderer:(id)renderer;
- (void)_makeDelegateCallForBrowserPresentationStyle:(unint64_t)style;
- (void)_requestConversationAvatarsWithSize:(CGSize)size completionHandler:(id)handler;
- (void)_requestFullScreenModalPresentationWithSize:(CGSize)size;
- (void)_requestHostSceneIdentifierWithCompletion:(id)completion;
- (void)_requestPresentationStyle:(unint64_t)style;
- (void)_sendCustomAcknowledgement:(id)acknowledgement selectedMessage:(id)message completionHandler:(id)handler;
- (void)_setSendingEnabled:(BOOL)enabled;
- (void)_stageAppItem:(id)item skipShelf:(BOOL)shelf completionHandler:(id)handler;
- (void)_stageMediaItem:(id)item skipShelf:(BOOL)shelf forceStage:(BOOL)stage completionHandler:(id)handler;
- (void)setConversationID:(id)d;
- (void)setRecipients:(id)recipients;
@end

@implementation MSMessageBalloonLiveViewController

- (MSMessageBalloonLiveViewController)initWithDataSource:(id)source fromMe:(BOOL)me conversationID:(id)d recipients:(id)recipients
{
  meCopy = me;
  sourceCopy = source;
  dCopy = d;
  recipientsCopy = recipients;
  v19.receiver = self;
  v19.super_class = MSMessageBalloonLiveViewController;
  v14 = [(MSMessageBalloonLiveViewController *)&v19 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_dataSource, source);
    v15->_isFromMe = meCopy;
    objc_storeStrong(&v15->_conversationID, d);
    objc_storeStrong(&v15->_recipients, recipients);
    v16 = [[MSConversationStateFactory alloc] initWithDataSource:sourceCopy fromMe:meCopy conversationID:dCopy recipients:recipientsCopy];
    conversationStateFactory = v15->_conversationStateFactory;
    v15->_conversationStateFactory = v16;

    [(MSConversationStateFactory *)v15->_conversationStateFactory setRequestIdentifierProvider:v15];
  }

  return v15;
}

- (void)setRecipients:(id)recipients
{
  objc_storeStrong(&self->_recipients, recipients);
  recipientsCopy = recipients;
  [(MSConversationStateFactory *)self->_conversationStateFactory setRecipients:recipientsCopy];
}

- (void)setConversationID:(id)d
{
  objc_storeStrong(&self->_conversationID, d);
  dCopy = d;
  [(MSConversationStateFactory *)self->_conversationStateFactory setConversationID:dCopy];
}

- (id)balloonPlugin
{
  dataSource = [(MSMessageBalloonLiveViewController *)self dataSource];
  pluginPayload = [dataSource pluginPayload];
  pluginBundleID = [pluginPayload pluginBundleID];

  v5 = +[IMBalloonPluginManager sharedInstance];
  v6 = [v5 balloonPluginForBundleID:pluginBundleID];

  return v6;
}

- (id)balloonExtensionPlugin
{
  balloonPlugin = [(MSMessageBalloonLiveViewController *)self balloonPlugin];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    balloonPlugin = 0;
  }

  return balloonPlugin;
}

- (id)_itemPayloadFromMSMessage:(id)message
{
  messageCopy = message;
  balloonPlugin = [(MSMessageBalloonLiveViewController *)self balloonPlugin];
  balloonExtensionPlugin = [(MSMessageBalloonLiveViewController *)self balloonExtensionPlugin];
  adamID = [balloonExtensionPlugin adamID];

  browserDisplayName = [balloonPlugin browserDisplayName];
  canSendDataPayloads = [balloonPlugin canSendDataPayloads];
  balloonExtensionPlugin2 = [(MSMessageBalloonLiveViewController *)self balloonExtensionPlugin];
  v11 = [balloonExtensionPlugin2 __ck_statusJPEGImageDataForTransportWithCompressionFactor:0.2];
  v12 = [MSMessageExtensionDataSource pluginPayloadFromMessagePayload:messageCopy appIconData:v11 appName:browserDisplayName adamID:adamID allowDataPayloads:canSendDataPayloads];

  session = [messageCopy session];

  dataSource = [(MSMessageBalloonLiveViewController *)self dataSource];
  message = [dataSource message];
  session2 = [message session];
  v17 = [session isEqual:session2];

  if (v17)
  {
    [v12 setUpdate:1];
    dataSource2 = [(MSMessageBalloonLiveViewController *)self dataSource];
    sessionGUID = [dataSource2 sessionGUID];
    [v12 setAssociatedMessageGUID:sessionGUID];

    dataSource3 = [(MSMessageBalloonLiveViewController *)self dataSource];
    sessionGUID2 = [dataSource3 sessionGUID];
    [v12 setPluginSessionGUID:sessionGUID2];
  }

  [v12 setLiveEditableInEntryView:0];
  balloonExtensionPlugin3 = [(MSMessageBalloonLiveViewController *)self balloonExtensionPlugin];
  attributionInfo = [balloonExtensionPlugin3 attributionInfo];
  [v12 setAttributionInfo:attributionInfo];

  statusText = [v12 statusText];
  v25 = [(MSMessageBalloonLiveViewController *)self substituteNameInString:statusText];
  [v12 setStatusText:v25];

  balloonExtensionPlugin4 = [(MSMessageBalloonLiveViewController *)self balloonExtensionPlugin];
  identifier = [balloonExtensionPlugin4 identifier];
  [v12 setPluginBundleID:identifier];

  return v12;
}

- (BOOL)_allowAllPresentationStyles
{
  v3 = [MSEntitlementChecker alloc];
  dataSource = [(MSMessageBalloonLiveViewController *)self dataSource];
  v5 = [(MSEntitlementChecker *)v3 initWithDataSource:dataSource requestIdentifierProvider:0];

  LOBYTE(dataSource) = [(MSEntitlementChecker *)v5 hasEntitlement:@"com.apple.messages.private.AllowAllPresentationStyles"];
  return dataSource;
}

- (void)_requestConversationAvatarsWithSize:(CGSize)size completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  v8 = [MSEntitlementChecker alloc];
  dataSource = [(MSMessageBalloonLiveViewController *)self dataSource];
  v10 = [(MSEntitlementChecker *)v8 initWithDataSource:dataSource requestIdentifierProvider:0];

  if ([(MSEntitlementChecker *)v10 hasEntitlement:@"com.apple.messages.private.AllowParticipantAddressAccess"])
  {
    v11 = objc_alloc_init(NSMutableArray);
    v12 = objc_alloc_init(NSMutableArray);
    conversationStateFactory = [(MSMessageBalloonLiveViewController *)self conversationStateFactory];
    conversationState = [conversationStateFactory conversationState];
    senderAddress = [conversationState senderAddress];

    if (senderAddress && (-[MSMessageBalloonLiveViewController recipients](self, "recipients"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 count], v16, v17))
    {
      [v12 addObject:senderAddress];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      recipients = [(MSMessageBalloonLiveViewController *)self recipients];
      v19 = [recipients countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v35;
        do
        {
          v22 = 0;
          do
          {
            if (*v35 != v21)
            {
              objc_enumerationMutation(recipients);
            }

            [v12 addObject:*(*(&v34 + 1) + 8 * v22)];
            v22 = v22 + 1;
          }

          while (v20 != v22);
          v20 = [recipients countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v20);
      }

      v23 = dispatch_get_global_queue(2, 0);
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_21358;
      v27[3] = &unk_4D8A0;
      v28 = v12;
      selfCopy = self;
      v30 = v11;
      v32 = width;
      v33 = height;
      v31 = handlerCopy;
      dispatch_async(v23, v27);

      v24 = v28;
    }

    else
    {
      v26 = ms_defaultLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_2D95C(v26);
      }

      v24 = [NSError errorWithDomain:MSMessagesErrorDomain code:-1 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, 0, v24);
    }
  }

  else
  {
    v25 = ms_defaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_2D4E0();
    }

    v11 = [NSError errorWithDomain:MSMessagesErrorDomain code:-1 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v11);
  }
}

- (void)_addAvatarToArray:(id)array forParticipantAddress:(id)address avatarSize:(CGSize)size avatarRenderer:(id)renderer
{
  height = size.height;
  width = size.width;
  arrayCopy = array;
  addressCopy = address;
  rendererCopy = renderer;
  if (addressCopy)
  {
    v13 = [(MSMessageBalloonLiveViewController *)self _contactForIdentifier:addressCopy];
    if (v13)
    {
      height = [(MSMessageBalloonLiveViewController *)self _avatarImageForContact:v13 avatarSize:rendererCopy avatarRenderer:width, height];
      if (height)
      {
        v15 = [[_MSAvatarImage alloc] initWithParticipantHandle:addressCopy avatarImage:height];
        [arrayCopy addObject:v15];
      }
    }
  }
}

- (id)_contactForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[IMContactStore sharedInstance];
  v5 = [v4 fetchCNContactForHandleWithID:identifierCopy];

  return v5;
}

- (id)_avatarImageForContact:(id)contact avatarSize:(CGSize)size avatarRenderer:(id)renderer
{
  height = size.height;
  width = size.width;
  rendererCopy = renderer;
  contactCopy = contact;
  v11 = +[UIScreen mainScreen];
  [v11 scale];
  v13 = v12;

  traitCollection = [(MSMessageBalloonLiveViewController *)self traitCollection];

  if (traitCollection)
  {
    traitCollection2 = [(MSMessageBalloonLiveViewController *)self traitCollection];
    [traitCollection2 displayScale];
    v13 = v16;

    traitCollection3 = [(MSMessageBalloonLiveViewController *)self traitCollection];
    if ([traitCollection3 userInterfaceStyle] == &dword_0 + 1)
    {
      v18 = 2;
    }

    else
    {
      v18 = 3;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = [CNAvatarImageRenderingScope scopeWithPointSize:0 scale:0 rightToLeft:v18 style:width backgroundStyle:height, v13];
  v23 = contactCopy;
  v20 = [NSArray arrayWithObjects:&v23 count:1];

  v21 = [rendererCopy avatarImageForContacts:v20 scope:v19];

  return v21;
}

- (void)_requestHostSceneIdentifierWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_21844;
    v6[3] = &unk_4CEA8;
    v6[4] = self;
    v7 = completionCopy;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)_requestFullScreenModalPresentationWithSize:(CGSize)size
{
  v4 = [(MSMessageBalloonLiveViewController *)self _allowAllPresentationStyles:size.width];
  v5 = ms_defaultLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "LiveBubble called _requestFullScreenModalPresentationWithSize. Modal presentation is supported, but live bubbles do not currently support custom modal sizes. Using default modal presentation", buf, 2u);
    }

    [(MSMessageBalloonLiveViewController *)self _makeDelegateCallForBrowserPresentationStyle:2];
  }

  else
  {
    if (v6)
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "LiveBubble called _requestFullScreenModalPresentationWithSize which is unsupported", v7, 2u);
    }
  }
}

- (void)_requestPresentationStyle:(unint64_t)style
{
  styleCopy = style;
  if (style < 2)
  {
LABEL_8:

    [(MSMessageBalloonLiveViewController *)self _makeDelegateCallForBrowserPresentationStyle:styleCopy];
    return;
  }

  if (style == 4)
  {
    if ([(MSMessageBalloonLiveViewController *)self _allowAllPresentationStyles])
    {
      styleCopy = 3;
      goto LABEL_8;
    }

    v6 = ms_defaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = 4;
      goto LABEL_18;
    }

LABEL_19:

    return;
  }

  if (style == 3)
  {
    if ([(MSMessageBalloonLiveViewController *)self _allowAllPresentationStyles])
    {
      styleCopy = 2;
      goto LABEL_8;
    }

    v6 = ms_defaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = 3;
LABEL_18:
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "LiveBubble requested disallowed presentation style %ld, bailing.", &v7, 0xCu);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v5 = ms_defaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = styleCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "LiveBubble requested unspported presentation style %ld, bailing.", &v7, 0xCu);
  }
}

- (void)_makeDelegateCallForBrowserPresentationStyle:(unint64_t)style
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_21C40;
  v3[3] = &unk_4D8C8;
  v3[4] = self;
  v3[5] = style;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)_sendCustomAcknowledgement:(id)acknowledgement selectedMessage:(id)message completionHandler:(id)handler
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_21D7C;
  v10[3] = &unk_4D918;
  v10[4] = self;
  acknowledgementCopy = acknowledgement;
  messageCopy = message;
  handlerCopy = handler;
  v7 = messageCopy;
  v8 = handlerCopy;
  v9 = acknowledgementCopy;
  dispatch_async(&_dispatch_main_q, v10);
}

- (void)_setSendingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = [MSEntitlementChecker alloc];
  dataSource = [(MSMessageBalloonLiveViewController *)self dataSource];
  v7 = [(MSEntitlementChecker *)v5 initWithDataSource:dataSource requestIdentifierProvider:0];

  if ([(MSEntitlementChecker *)v7 hasEntitlement:@"com.apple.messages.private.AllowSendButtonDisabling"])
  {
    dataSource2 = [(MSMessageBalloonLiveViewController *)self dataSource];
    [dataSource2 setSendEnabled:enabledCopy];
  }

  else
  {
    v9 = ms_defaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_2D4E0();
    }
  }
}

- (id)substituteNameInString:(id)string
{
  if (string)
  {
    stringCopy = string;
    balloonExtensionPlugin = [(MSMessageBalloonLiveViewController *)self balloonExtensionPlugin];
    identifier = [balloonExtensionPlugin identifier];
    v7 = [(MSMessageBalloonLiveViewController *)self substituteNameInString:stringCopy withAppID:identifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)substituteNameInString:(id)string withAppID:(id)d
{
  stringCopy = string;
  dCopy = d;
  v8 = dCopy;
  if (stringCopy && dCopy)
  {
    v44 = stringCopy;
    v9 = objc_alloc_init(NSMutableArray);
    v10 = objc_alloc_init(NSMutableArray);
    conversationStateFactory = [(MSMessageBalloonLiveViewController *)self conversationStateFactory];
    conversationState = [conversationStateFactory conversationState];
    senderAddress = [conversationState senderAddress];

    if (senderAddress)
    {
      if (v10)
      {
        CFArrayAppendValue(v10, senderAddress);
      }

      if (v9)
      {
        v14 = +[IMBalloonPluginManager sharedInstance];
        conversationID = [(MSMessageBalloonLiveViewController *)self conversationID];
        v16 = [v14 localParticipantIdentifierForAppID:v8 conversationID:conversationID];
        uUIDString = [v16 UUIDString];

        if (uUIDString)
        {
          v18 = +[IMBalloonPluginManager sharedInstance];
          conversationID2 = [(MSMessageBalloonLiveViewController *)self conversationID];
          v20 = [v18 localParticipantIdentifierForAppID:v8 conversationID:conversationID2];
          uUIDString2 = [v20 UUIDString];
          CFArrayAppendValue(v9, uUIDString2);
        }
      }
    }

    selfCopy = self;
    v43 = senderAddress;
    v45 = v8;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    recipients = [(MSMessageBalloonLiveViewController *)self recipients];
    v23 = [recipients countByEnumeratingWithState:&v46 objects:v56 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v47;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v47 != v25)
          {
            objc_enumerationMutation(recipients);
          }

          v27 = *(*(&v46 + 1) + 8 * i);
          v28 = +[IMBalloonPluginManager sharedInstance];
          v29 = [v28 recipientIDForRecipient:v27 appID:v45];
          uUIDString3 = [v29 UUIDString];

          if (v9 && uUIDString3)
          {
            CFArrayAppendValue(v9, uUIDString3);
          }

          if (v10 && v27)
          {
            CFArrayAppendValue(v10, v27);
          }
        }

        v24 = [recipients countByEnumeratingWithState:&v46 objects:v56 count:16];
      }

      while (v24);
    }

    v31 = [(__CFArray *)v9 count];
    if (v31 == [(__CFArray *)v10 count])
    {
      v32 = [v44 mutableCopy];
      if ([(__CFArray *)v9 count])
      {
        v33 = 0;
        do
        {
          v34 = [(__CFArray *)v10 objectAtIndexedSubscript:v33];
          v35 = [NSString stringWithFormat:@"$(%@)", v34];

          v36 = [(__CFArray *)v9 objectAtIndexedSubscript:v33];
          v37 = [@"$" stringByAppendingString:v36];

          [v32 replaceOccurrencesOfString:v37 withString:v35 options:2 range:0, [v32 length]];
          ++v33;
        }

        while ([(__CFArray *)v9 count]> v33);
      }

      v38 = [v32 copy];
      stringCopy = v44;
    }

    else
    {
      v32 = ms_defaultLog();
      stringCopy = v44;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v40 = [NSNumber numberWithUnsignedInteger:[(__CFArray *)v9 count]];
        v41 = [NSNumber numberWithUnsignedInteger:[(__CFArray *)v10 count]];
        *buf = 138412802;
        selfCopy2 = selfCopy;
        v52 = 2112;
        v53 = v40;
        v54 = 2112;
        v55 = v41;
        _os_log_error_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "self %@ substituteNameInString [recipientIdentifiers count] %@ != [recipientName count] %@ ", buf, 0x20u);
      }

      v38 = 0;
    }

    v8 = v45;
  }

  else
  {
    v9 = ms_defaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v52 = 2112;
      v53 = stringCopy;
      v54 = 2112;
      v55 = v8;
      _os_log_error_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "self %@ substituteNameInString invalid parameters string %@ appID %@", buf, 0x20u);
    }

    v38 = 0;
  }

  return v38;
}

- (void)_stageAppItem:(id)item skipShelf:(BOOL)shelf completionHandler:(id)handler
{
  itemCopy = item;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_22854;
  v11[3] = &unk_4D940;
  selfCopy = self;
  handlerCopy = handler;
  v12 = itemCopy;
  shelfCopy = shelf;
  v9 = handlerCopy;
  v10 = itemCopy;
  dispatch_async(&_dispatch_main_q, v11);
}

- (void)_stageMediaItem:(id)item skipShelf:(BOOL)shelf forceStage:(BOOL)stage completionHandler:(id)handler
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_22DF4;
  v10[3] = &unk_4D828;
  v10[4] = self;
  itemCopy = item;
  handlerCopy = handler;
  shelfCopy = shelf;
  v8 = handlerCopy;
  v9 = itemCopy;
  dispatch_async(&_dispatch_main_q, v10);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  result.height = height;
  result.width = width;
  return result;
}

- (MSMessageExtensionBalloonLiveViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (MSMessageExtensionBalloonLiveViewControllerTintColorDelegate)tintColorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->tintColorDelegate);

  return WeakRetained;
}

@end