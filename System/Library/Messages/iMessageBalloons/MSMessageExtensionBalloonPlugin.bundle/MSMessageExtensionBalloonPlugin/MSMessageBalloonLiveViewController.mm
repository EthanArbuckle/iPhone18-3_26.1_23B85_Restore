@interface MSMessageBalloonLiveViewController
- (BOOL)_allowAllPresentationStyles;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MSMessageBalloonLiveViewController)initWithDataSource:(id)a3 fromMe:(BOOL)a4 conversationID:(id)a5 recipients:(id)a6;
- (MSMessageExtensionBalloonLiveViewControllerDelegate)delegate;
- (MSMessageExtensionBalloonLiveViewControllerTintColorDelegate)tintColorDelegate;
- (id)_avatarImageForContact:(id)a3 avatarSize:(CGSize)a4 avatarRenderer:(id)a5;
- (id)_contactForIdentifier:(id)a3;
- (id)_itemPayloadFromMSMessage:(id)a3;
- (id)balloonExtensionPlugin;
- (id)balloonPlugin;
- (id)substituteNameInString:(id)a3;
- (id)substituteNameInString:(id)a3 withAppID:(id)a4;
- (void)_addAvatarToArray:(id)a3 forParticipantAddress:(id)a4 avatarSize:(CGSize)a5 avatarRenderer:(id)a6;
- (void)_makeDelegateCallForBrowserPresentationStyle:(unint64_t)a3;
- (void)_requestConversationAvatarsWithSize:(CGSize)a3 completionHandler:(id)a4;
- (void)_requestFullScreenModalPresentationWithSize:(CGSize)a3;
- (void)_requestHostSceneIdentifierWithCompletion:(id)a3;
- (void)_requestPresentationStyle:(unint64_t)a3;
- (void)_sendCustomAcknowledgement:(id)a3 selectedMessage:(id)a4 completionHandler:(id)a5;
- (void)_setSendingEnabled:(BOOL)a3;
- (void)_stageAppItem:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5;
- (void)_stageMediaItem:(id)a3 skipShelf:(BOOL)a4 forceStage:(BOOL)a5 completionHandler:(id)a6;
- (void)setConversationID:(id)a3;
- (void)setRecipients:(id)a3;
@end

@implementation MSMessageBalloonLiveViewController

- (MSMessageBalloonLiveViewController)initWithDataSource:(id)a3 fromMe:(BOOL)a4 conversationID:(id)a5 recipients:(id)a6
{
  v8 = a4;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = MSMessageBalloonLiveViewController;
  v14 = [(MSMessageBalloonLiveViewController *)&v19 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_dataSource, a3);
    v15->_isFromMe = v8;
    objc_storeStrong(&v15->_conversationID, a5);
    objc_storeStrong(&v15->_recipients, a6);
    v16 = [[MSConversationStateFactory alloc] initWithDataSource:v11 fromMe:v8 conversationID:v12 recipients:v13];
    conversationStateFactory = v15->_conversationStateFactory;
    v15->_conversationStateFactory = v16;

    [(MSConversationStateFactory *)v15->_conversationStateFactory setRequestIdentifierProvider:v15];
  }

  return v15;
}

- (void)setRecipients:(id)a3
{
  objc_storeStrong(&self->_recipients, a3);
  v5 = a3;
  [(MSConversationStateFactory *)self->_conversationStateFactory setRecipients:v5];
}

- (void)setConversationID:(id)a3
{
  objc_storeStrong(&self->_conversationID, a3);
  v5 = a3;
  [(MSConversationStateFactory *)self->_conversationStateFactory setConversationID:v5];
}

- (id)balloonPlugin
{
  v2 = [(MSMessageBalloonLiveViewController *)self dataSource];
  v3 = [v2 pluginPayload];
  v4 = [v3 pluginBundleID];

  v5 = +[IMBalloonPluginManager sharedInstance];
  v6 = [v5 balloonPluginForBundleID:v4];

  return v6;
}

- (id)balloonExtensionPlugin
{
  v2 = [(MSMessageBalloonLiveViewController *)self balloonPlugin];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

- (id)_itemPayloadFromMSMessage:(id)a3
{
  v4 = a3;
  v5 = [(MSMessageBalloonLiveViewController *)self balloonPlugin];
  v6 = [(MSMessageBalloonLiveViewController *)self balloonExtensionPlugin];
  v7 = [v6 adamID];

  v8 = [v5 browserDisplayName];
  v9 = [v5 canSendDataPayloads];
  v10 = [(MSMessageBalloonLiveViewController *)self balloonExtensionPlugin];
  v11 = [v10 __ck_statusJPEGImageDataForTransportWithCompressionFactor:0.2];
  v12 = [MSMessageExtensionDataSource pluginPayloadFromMessagePayload:v4 appIconData:v11 appName:v8 adamID:v7 allowDataPayloads:v9];

  v13 = [v4 session];

  v14 = [(MSMessageBalloonLiveViewController *)self dataSource];
  v15 = [v14 message];
  v16 = [v15 session];
  v17 = [v13 isEqual:v16];

  if (v17)
  {
    [v12 setUpdate:1];
    v18 = [(MSMessageBalloonLiveViewController *)self dataSource];
    v19 = [v18 sessionGUID];
    [v12 setAssociatedMessageGUID:v19];

    v20 = [(MSMessageBalloonLiveViewController *)self dataSource];
    v21 = [v20 sessionGUID];
    [v12 setPluginSessionGUID:v21];
  }

  [v12 setLiveEditableInEntryView:0];
  v22 = [(MSMessageBalloonLiveViewController *)self balloonExtensionPlugin];
  v23 = [v22 attributionInfo];
  [v12 setAttributionInfo:v23];

  v24 = [v12 statusText];
  v25 = [(MSMessageBalloonLiveViewController *)self substituteNameInString:v24];
  [v12 setStatusText:v25];

  v26 = [(MSMessageBalloonLiveViewController *)self balloonExtensionPlugin];
  v27 = [v26 identifier];
  [v12 setPluginBundleID:v27];

  return v12;
}

- (BOOL)_allowAllPresentationStyles
{
  v3 = [MSEntitlementChecker alloc];
  v4 = [(MSMessageBalloonLiveViewController *)self dataSource];
  v5 = [(MSEntitlementChecker *)v3 initWithDataSource:v4 requestIdentifierProvider:0];

  LOBYTE(v4) = [(MSEntitlementChecker *)v5 hasEntitlement:@"com.apple.messages.private.AllowAllPresentationStyles"];
  return v4;
}

- (void)_requestConversationAvatarsWithSize:(CGSize)a3 completionHandler:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [MSEntitlementChecker alloc];
  v9 = [(MSMessageBalloonLiveViewController *)self dataSource];
  v10 = [(MSEntitlementChecker *)v8 initWithDataSource:v9 requestIdentifierProvider:0];

  if ([(MSEntitlementChecker *)v10 hasEntitlement:@"com.apple.messages.private.AllowParticipantAddressAccess"])
  {
    v11 = objc_alloc_init(NSMutableArray);
    v12 = objc_alloc_init(NSMutableArray);
    v13 = [(MSMessageBalloonLiveViewController *)self conversationStateFactory];
    v14 = [v13 conversationState];
    v15 = [v14 senderAddress];

    if (v15 && (-[MSMessageBalloonLiveViewController recipients](self, "recipients"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 count], v16, v17))
    {
      [v12 addObject:v15];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v18 = [(MSMessageBalloonLiveViewController *)self recipients];
      v19 = [v18 countByEnumeratingWithState:&v34 objects:v38 count:16];
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
              objc_enumerationMutation(v18);
            }

            [v12 addObject:*(*(&v34 + 1) + 8 * v22)];
            v22 = v22 + 1;
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v20);
      }

      v23 = dispatch_get_global_queue(2, 0);
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_21358;
      v27[3] = &unk_4D8A0;
      v28 = v12;
      v29 = self;
      v30 = v11;
      v32 = width;
      v33 = height;
      v31 = v7;
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
      (*(v7 + 2))(v7, 0, v24);
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
    (*(v7 + 2))(v7, 0, v11);
  }
}

- (void)_addAvatarToArray:(id)a3 forParticipantAddress:(id)a4 avatarSize:(CGSize)a5 avatarRenderer:(id)a6
{
  height = a5.height;
  width = a5.width;
  v16 = a3;
  v11 = a4;
  v12 = a6;
  if (v11)
  {
    v13 = [(MSMessageBalloonLiveViewController *)self _contactForIdentifier:v11];
    if (v13)
    {
      v14 = [(MSMessageBalloonLiveViewController *)self _avatarImageForContact:v13 avatarSize:v12 avatarRenderer:width, height];
      if (v14)
      {
        v15 = [[_MSAvatarImage alloc] initWithParticipantHandle:v11 avatarImage:v14];
        [v16 addObject:v15];
      }
    }
  }
}

- (id)_contactForIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[IMContactStore sharedInstance];
  v5 = [v4 fetchCNContactForHandleWithID:v3];

  return v5;
}

- (id)_avatarImageForContact:(id)a3 avatarSize:(CGSize)a4 avatarRenderer:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a5;
  v10 = a3;
  v11 = +[UIScreen mainScreen];
  [v11 scale];
  v13 = v12;

  v14 = [(MSMessageBalloonLiveViewController *)self traitCollection];

  if (v14)
  {
    v15 = [(MSMessageBalloonLiveViewController *)self traitCollection];
    [v15 displayScale];
    v13 = v16;

    v17 = [(MSMessageBalloonLiveViewController *)self traitCollection];
    if ([v17 userInterfaceStyle] == &dword_0 + 1)
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
  v23 = v10;
  v20 = [NSArray arrayWithObjects:&v23 count:1];

  v21 = [v9 avatarImageForContacts:v20 scope:v19];

  return v21;
}

- (void)_requestHostSceneIdentifierWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_21844;
    v6[3] = &unk_4CEA8;
    v6[4] = self;
    v7 = v4;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)_requestFullScreenModalPresentationWithSize:(CGSize)a3
{
  v4 = [(MSMessageBalloonLiveViewController *)self _allowAllPresentationStyles:a3.width];
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

- (void)_requestPresentationStyle:(unint64_t)a3
{
  v3 = a3;
  if (a3 < 2)
  {
LABEL_8:

    [(MSMessageBalloonLiveViewController *)self _makeDelegateCallForBrowserPresentationStyle:v3];
    return;
  }

  if (a3 == 4)
  {
    if ([(MSMessageBalloonLiveViewController *)self _allowAllPresentationStyles])
    {
      v3 = 3;
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

  if (a3 == 3)
  {
    if ([(MSMessageBalloonLiveViewController *)self _allowAllPresentationStyles])
    {
      v3 = 2;
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
    v8 = v3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "LiveBubble requested unspported presentation style %ld, bailing.", &v7, 0xCu);
  }
}

- (void)_makeDelegateCallForBrowserPresentationStyle:(unint64_t)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_21C40;
  v3[3] = &unk_4D8C8;
  v3[4] = self;
  v3[5] = a3;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)_sendCustomAcknowledgement:(id)a3 selectedMessage:(id)a4 completionHandler:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_21D7C;
  v10[3] = &unk_4D918;
  v10[4] = self;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v7 = v12;
  v8 = v13;
  v9 = v11;
  dispatch_async(&_dispatch_main_q, v10);
}

- (void)_setSendingEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [MSEntitlementChecker alloc];
  v6 = [(MSMessageBalloonLiveViewController *)self dataSource];
  v7 = [(MSEntitlementChecker *)v5 initWithDataSource:v6 requestIdentifierProvider:0];

  if ([(MSEntitlementChecker *)v7 hasEntitlement:@"com.apple.messages.private.AllowSendButtonDisabling"])
  {
    v8 = [(MSMessageBalloonLiveViewController *)self dataSource];
    [v8 setSendEnabled:v3];
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

- (id)substituteNameInString:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(MSMessageBalloonLiveViewController *)self balloonExtensionPlugin];
    v6 = [v5 identifier];
    v7 = [(MSMessageBalloonLiveViewController *)self substituteNameInString:v4 withAppID:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)substituteNameInString:(id)a3 withAppID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v44 = v6;
    v9 = objc_alloc_init(NSMutableArray);
    v10 = objc_alloc_init(NSMutableArray);
    v11 = [(MSMessageBalloonLiveViewController *)self conversationStateFactory];
    v12 = [v11 conversationState];
    v13 = [v12 senderAddress];

    if (v13)
    {
      if (v10)
      {
        CFArrayAppendValue(v10, v13);
      }

      if (v9)
      {
        v14 = +[IMBalloonPluginManager sharedInstance];
        v15 = [(MSMessageBalloonLiveViewController *)self conversationID];
        v16 = [v14 localParticipantIdentifierForAppID:v8 conversationID:v15];
        v17 = [v16 UUIDString];

        if (v17)
        {
          v18 = +[IMBalloonPluginManager sharedInstance];
          v19 = [(MSMessageBalloonLiveViewController *)self conversationID];
          v20 = [v18 localParticipantIdentifierForAppID:v8 conversationID:v19];
          v21 = [v20 UUIDString];
          CFArrayAppendValue(v9, v21);
        }
      }
    }

    v42 = self;
    v43 = v13;
    v45 = v8;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v22 = [(MSMessageBalloonLiveViewController *)self recipients];
    v23 = [v22 countByEnumeratingWithState:&v46 objects:v56 count:16];
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
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v46 + 1) + 8 * i);
          v28 = +[IMBalloonPluginManager sharedInstance];
          v29 = [v28 recipientIDForRecipient:v27 appID:v45];
          v30 = [v29 UUIDString];

          if (v9 && v30)
          {
            CFArrayAppendValue(v9, v30);
          }

          if (v10 && v27)
          {
            CFArrayAppendValue(v10, v27);
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v46 objects:v56 count:16];
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
      v6 = v44;
    }

    else
    {
      v32 = ms_defaultLog();
      v6 = v44;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v40 = [NSNumber numberWithUnsignedInteger:[(__CFArray *)v9 count]];
        v41 = [NSNumber numberWithUnsignedInteger:[(__CFArray *)v10 count]];
        *buf = 138412802;
        v51 = v42;
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
      v51 = self;
      v52 = 2112;
      v53 = v6;
      v54 = 2112;
      v55 = v8;
      _os_log_error_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "self %@ substituteNameInString invalid parameters string %@ appID %@", buf, 0x20u);
    }

    v38 = 0;
  }

  return v38;
}

- (void)_stageAppItem:(id)a3 skipShelf:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_22854;
  v11[3] = &unk_4D940;
  v13 = self;
  v14 = a5;
  v12 = v8;
  v15 = a4;
  v9 = v14;
  v10 = v8;
  dispatch_async(&_dispatch_main_q, v11);
}

- (void)_stageMediaItem:(id)a3 skipShelf:(BOOL)a4 forceStage:(BOOL)a5 completionHandler:(id)a6
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_22DF4;
  v10[3] = &unk_4D828;
  v10[4] = self;
  v11 = a3;
  v12 = a6;
  v13 = a4;
  v8 = v12;
  v9 = v11;
  dispatch_async(&_dispatch_main_q, v10);
}

- (CGSize)sizeThatFits:(CGSize)a3
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