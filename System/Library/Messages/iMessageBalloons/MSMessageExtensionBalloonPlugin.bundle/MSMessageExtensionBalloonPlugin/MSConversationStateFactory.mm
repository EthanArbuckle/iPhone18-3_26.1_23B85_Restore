@interface MSConversationStateFactory
- (MSConversationStateFactory)initWithDataSource:(id)a3 fromMe:(BOOL)a4 conversationID:(id)a5 recipients:(id)a6;
- (MSRequestIdentifierProviding)requestIdentifierProvider;
- (id)conversationState;
@end

@implementation MSConversationStateFactory

- (MSConversationStateFactory)initWithDataSource:(id)a3 fromMe:(BOOL)a4 conversationID:(id)a5 recipients:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = MSConversationStateFactory;
  v14 = [(MSConversationStateFactory *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_dataSource, a3);
    v15->_isFromMe = a4;
    objc_storeStrong(&v15->_conversationID, a5);
    objc_storeStrong(&v15->_recipients, a6);
  }

  return v15;
}

- (id)conversationState
{
  v3 = [MSEntitlementChecker alloc];
  v4 = [(MSConversationStateFactory *)self dataSource];
  v5 = [(MSConversationStateFactory *)self requestIdentifierProvider];
  v81 = [(MSEntitlementChecker *)v3 initWithDataSource:v4 requestIdentifierProvider:v5];

  v6 = +[IMBalloonPluginManager sharedInstance];
  v7 = [(MSConversationStateFactory *)self dataSource];
  v8 = [v7 pluginPayload];
  v9 = [v8 pluginBundleID];
  v10 = [v6 balloonPluginForBundleID:v9];

  v11 = objc_alloc_init(_MSConversationState);
  v12 = [(MSConversationStateFactory *)self conversationID];
  v80 = v10;
  v13 = [v10 identifier];
  v14 = +[IMBalloonPluginManager sharedInstance];
  v15 = [v14 conversationID:v12 appID:v13];
  [v11 setConversationIdentifier:v15];

  v16 = +[IMBalloonPluginManager sharedInstance];
  v85 = v13;
  v79 = v12;
  v17 = [v16 localParticipantIdentifierForAppID:v13 conversationID:v12];
  v83 = v11;
  [v11 setSenderIdentifier:v17];

  v18 = [(MSConversationStateFactory *)self dataSource];
  v19 = [v18 message];
  v20 = [v19 _sanitizedCopy];

  v21 = [(MSConversationStateFactory *)self dataSource];
  v22 = [v21 associatedMessages];
  [v20 setCustomAcknowledgements:v22];

  v86 = +[NSMutableArray array];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v82 = self;
  v23 = [(MSConversationStateFactory *)self recipients];
  v24 = [v23 countByEnumeratingWithState:&v87 objects:v97 count:16];
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
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v87 + 1) + 8 * i);
        v29 = +[IMBalloonPluginManager sharedInstance];
        v30 = [v29 recipientIDForRecipient:v28 appID:v85];

        [v86 addObject:v30];
        if (([v20 isFromMe] & 1) == 0)
        {
          v31 = [v20 senderParticipantIdentifier];
          v32 = [v30 isEqual:v31];

          if (v32)
          {
            v33 = v28;

            v84 = v33;
          }
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v87 objects:v97 count:16];
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

  p_isa = &v82->super.isa;
  v37 = [(MSConversationStateFactory *)v82 dataSource];
  v38 = [v37 payloadInShelf];

  [v20 setPending:v38];
  [v83 setActiveMessage:v20];
  if (v38)
  {
    v39 = ms_defaultLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [(MSMessageExtensionDataSource *)v82->_dataSource messageGUID];
      *buf = 138412546;
      v92 = v20;
      v93 = 2112;
      v94 = v40;
      _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "LiveBubble. Configured message as pending: %@. messageGUID: %@", buf, 0x16u);
    }
  }

  v41 = ms_defaultLog();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = [(MSMessageExtensionDataSource *)v82->_dataSource messageGUID];
    *buf = 138412546;
    v92 = v83;
    v93 = 2112;
    v94 = v42;
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
    v50 = [v49 conversationForExistingChatWithGUID:v82->_conversationID];

    if (v43)
    {
      [v83 setConversationID:v82->_conversationID];
      v51 = [v50 chat];
      v52 = [v51 engramID];
      [v83 setConversationEngramID:v52];

      v53 = [v50 chat];
      v54 = [v53 groupID];
      [v83 setGroupID:v54];

      v55 = [(MSMessageExtensionDataSource *)v82->_dataSource chat];
      v56 = [v55 account];
      v57 = [v56 service];
      v58 = +[IMServiceImpl iMessageService];
      [v83 setIsiMessage:v57 == v58];

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

      v61 = [(MSMessageExtensionDataSource *)v82->_dataSource chat];
      [v83 setIsBusiness:{objc_msgSend(v61, "isBusinessChat")}];

      v62 = ms_defaultLog();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v63 = [v50 chat];
        [v63 chatIdentifier];
        v64 = v77 = v59;
        if ([v83 isiMessage])
        {
          v65 = @"YES";
        }

        else
        {
          v65 = @"NO";
        }

        v66 = [v83 isBusiness];
        *buf = 138412802;
        if (v66)
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
        p_isa = &v82->super.isa;
        v35 = v83;
        v95 = 2112;
        v96 = v67;
        _os_log_impl(&dword_0, v62, OS_LOG_TYPE_DEFAULT, "LiveBubble.  Entitled for conversation identifiers. Configured conversationState for chat identifier: %@ with isiMessage: %@, isBusiness: %@.", buf, 0x20u);

        v59 = v77;
      }
    }

    if (v44)
    {
      v68 = [v50 senderIdentifier];
      [v35 setSenderAddress:v68];

      v69 = [v50 recipientStrings];
      [v35 setRecipientAddresses:v69];

      if ([v20 isFromMe])
      {
        v70 = [v35 senderAddress];

        if (v70)
        {
          [v35 senderAddress];
        }

        else
        {
          +[MSAccountInfo iMessageLoginID];
        }
        v71 = ;
        [v20 setSenderAddress:v71];
      }

      else
      {
        [v20 setSenderAddress:v84];
        v71 = [p_isa dataSource];
        v72 = [v71 pluginPayload];
        v73 = [v72 time];
        [v20 setTime:v73];
      }
    }

    if (v78)
    {
      v74 = [p_isa[2] messageGUID];
      [v20 setGuid:v74];
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