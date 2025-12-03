@interface MSConversationStateFactory
- (MSConversationStateFactory)initWithDataSource:(id)source fromMe:(BOOL)me conversationID:(id)d recipients:(id)recipients;
- (MSRequestIdentifierProviding)requestIdentifierProvider;
- (id)conversationState;
@end

@implementation MSConversationStateFactory

- (MSConversationStateFactory)initWithDataSource:(id)source fromMe:(BOOL)me conversationID:(id)d recipients:(id)recipients
{
  sourceCopy = source;
  dCopy = d;
  recipientsCopy = recipients;
  v17.receiver = self;
  v17.super_class = MSConversationStateFactory;
  v14 = [(MSConversationStateFactory *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_dataSource, source);
    v15->_isFromMe = me;
    objc_storeStrong(&v15->_conversationID, d);
    objc_storeStrong(&v15->_recipients, recipients);
  }

  return v15;
}

- (id)conversationState
{
  v3 = [MSEntitlementChecker alloc];
  dataSource = [(MSConversationStateFactory *)self dataSource];
  requestIdentifierProvider = [(MSConversationStateFactory *)self requestIdentifierProvider];
  v81 = [(MSEntitlementChecker *)v3 initWithDataSource:dataSource requestIdentifierProvider:requestIdentifierProvider];

  v6 = +[IMBalloonPluginManager sharedInstance];
  dataSource2 = [(MSConversationStateFactory *)self dataSource];
  pluginPayload = [dataSource2 pluginPayload];
  pluginBundleID = [pluginPayload pluginBundleID];
  v10 = [v6 balloonPluginForBundleID:pluginBundleID];

  v11 = objc_alloc_init(_MSConversationState);
  conversationID = [(MSConversationStateFactory *)self conversationID];
  v80 = v10;
  identifier = [v10 identifier];
  v14 = +[IMBalloonPluginManager sharedInstance];
  v15 = [v14 conversationID:conversationID appID:identifier];
  [v11 setConversationIdentifier:v15];

  v16 = +[IMBalloonPluginManager sharedInstance];
  v85 = identifier;
  v79 = conversationID;
  v17 = [v16 localParticipantIdentifierForAppID:identifier conversationID:conversationID];
  v83 = v11;
  [v11 setSenderIdentifier:v17];

  dataSource3 = [(MSConversationStateFactory *)self dataSource];
  message = [dataSource3 message];
  _sanitizedCopy = [message _sanitizedCopy];

  dataSource4 = [(MSConversationStateFactory *)self dataSource];
  associatedMessages = [dataSource4 associatedMessages];
  [_sanitizedCopy setCustomAcknowledgements:associatedMessages];

  v86 = +[NSMutableArray array];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  selfCopy = self;
  recipients = [(MSConversationStateFactory *)self recipients];
  v24 = [recipients countByEnumeratingWithState:&v87 objects:v97 count:16];
  if (v24)
  {
    v25 = v24;
    v84 = 0;
    v26 = *v88;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v88 != v26)
        {
          objc_enumerationMutation(recipients);
        }

        v28 = *(*(&v87 + 1) + 8 * i);
        v29 = +[IMBalloonPluginManager sharedInstance];
        v30 = [v29 recipientIDForRecipient:v28 appID:v85];

        [v86 addObject:v30];
        if (([_sanitizedCopy isFromMe] & 1) == 0)
        {
          senderParticipantIdentifier = [_sanitizedCopy senderParticipantIdentifier];
          v32 = [v30 isEqual:senderParticipantIdentifier];

          if (v32)
          {
            v33 = v28;

            v84 = v33;
          }
        }
      }

      v25 = [recipients countByEnumeratingWithState:&v87 objects:v97 count:16];
    }

    while (v25);
  }

  else
  {
    v84 = 0;
  }

  v34 = [v86 copy];
  v35 = v83;
  [v83 setRecipientIdentifiers:v34];

  p_isa = &selfCopy->super.isa;
  dataSource5 = [(MSConversationStateFactory *)selfCopy dataSource];
  payloadInShelf = [dataSource5 payloadInShelf];

  [_sanitizedCopy setPending:payloadInShelf];
  [v83 setActiveMessage:_sanitizedCopy];
  if (payloadInShelf)
  {
    v39 = ms_defaultLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      messageGUID = [(MSMessageExtensionDataSource *)selfCopy->_dataSource messageGUID];
      *buf = 138412546;
      v92 = _sanitizedCopy;
      v93 = 2112;
      v94 = messageGUID;
      _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "LiveBubble. Configured message as pending: %@. messageGUID: %@", buf, 0x16u);
    }
  }

  v41 = ms_defaultLog();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    messageGUID2 = [(MSMessageExtensionDataSource *)selfCopy->_dataSource messageGUID];
    *buf = 138412546;
    v92 = v83;
    v93 = 2112;
    v94 = messageGUID2;
    _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "LiveBubble. Configured conversationState: %@. messageGUID: %@", buf, 0x16u);
  }

  v43 = [(MSEntitlementChecker *)v81 hasEntitlement:@"com.apple.messages.private.AllowConversationIdentifierAccess"];
  v44 = [(MSEntitlementChecker *)v81 hasEntitlement:@"com.apple.messages.private.AllowParticipantAddressAccess"];
  v78 = [(MSEntitlementChecker *)v81 hasEntitlement:@"com.apple.messages.private.AllowGUIDAccess"];
  v45 = ms_defaultLog();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = [NSNumber numberWithBool:v43];
    v47 = [NSNumber numberWithBool:v44];
    v48 = [NSNumber numberWithBool:v78];
    *buf = 138412802;
    v92 = v46;
    v93 = 2112;
    v94 = v47;
    v95 = 2112;
    v96 = v48;
    _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "LiveBubble. Checking entitlements. hasAllowConversationIdentifierEntitlement: %@ | hasParticipantAddressEntitlement: %@ | _kAllowGUIDAccessEntitlement: %@", buf, 0x20u);
  }

  if (v43 || v44)
  {
    v49 = +[CKConversationList sharedConversationList];
    v50 = [v49 conversationForExistingChatWithGUID:selfCopy->_conversationID];

    if (v43)
    {
      [v83 setConversationID:selfCopy->_conversationID];
      chat = [v50 chat];
      engramID = [chat engramID];
      [v83 setConversationEngramID:engramID];

      chat2 = [v50 chat];
      groupID = [chat2 groupID];
      [v83 setGroupID:groupID];

      chat3 = [(MSMessageExtensionDataSource *)selfCopy->_dataSource chat];
      account = [chat3 account];
      service = [account service];
      v58 = +[IMServiceImpl iMessageService];
      [v83 setIsiMessage:service == v58];

      v59 = [IMNetworkMonitor createNetworkMonitorWithRemoteHost:0 delegate:0 allowsUltraConstrainedNetwork:1];
      if ([v59 attachmentPolicy] != &dword_0 + 2)
      {
        [v83 setIsiMessage:0];
        v60 = ms_defaultLog();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v60, OS_LOG_TYPE_DEFAULT, "LiveBubble. Ultra constrained network so overrode isiMessage", buf, 2u);
        }

        [v83 setIsUltraConstrainedNetwork:0];
      }

      chat4 = [(MSMessageExtensionDataSource *)selfCopy->_dataSource chat];
      [v83 setIsBusiness:{objc_msgSend(chat4, "isBusinessChat")}];

      v62 = ms_defaultLog();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        chat5 = [v50 chat];
        [chat5 chatIdentifier];
        v64 = v77 = v59;
        if ([v83 isiMessage])
        {
          v65 = @"YES";
        }

        else
        {
          v65 = @"NO";
        }

        isBusiness = [v83 isBusiness];
        *buf = 138412802;
        if (isBusiness)
        {
          v67 = @"YES";
        }

        else
        {
          v67 = @"NO";
        }

        v92 = v64;
        v93 = 2112;
        v94 = v65;
        p_isa = &selfCopy->super.isa;
        v35 = v83;
        v95 = 2112;
        v96 = v67;
        _os_log_impl(&dword_0, v62, OS_LOG_TYPE_DEFAULT, "LiveBubble.  Entitled for conversation identifiers. Configured conversationState for chat identifier: %@ with isiMessage: %@, isBusiness: %@.", buf, 0x20u);

        v59 = v77;
      }
    }

    if (v44)
    {
      senderIdentifier = [v50 senderIdentifier];
      [v35 setSenderAddress:senderIdentifier];

      recipientStrings = [v50 recipientStrings];
      [v35 setRecipientAddresses:recipientStrings];

      if ([_sanitizedCopy isFromMe])
      {
        senderAddress = [v35 senderAddress];

        if (senderAddress)
        {
          [v35 senderAddress];
        }

        else
        {
          +[MSAccountInfo iMessageLoginID];
        }
        dataSource6 = ;
        [_sanitizedCopy setSenderAddress:dataSource6];
      }

      else
      {
        [_sanitizedCopy setSenderAddress:v84];
        dataSource6 = [p_isa dataSource];
        pluginPayload2 = [dataSource6 pluginPayload];
        time = [pluginPayload2 time];
        [_sanitizedCopy setTime:time];
      }
    }

    if (v78)
    {
      messageGUID3 = [p_isa[2] messageGUID];
      [_sanitizedCopy setGuid:messageGUID3];
    }
  }

  v75 = v35;

  return v35;
}

- (MSRequestIdentifierProviding)requestIdentifierProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_requestIdentifierProvider);

  return WeakRetained;
}

@end