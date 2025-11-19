@interface CKAssistantSMSSend
- (BOOL)shouldForceToSMS:(id)a3;
- (id)_getAddressesFromRecipients:(id)a3;
- (id)_validateSMS:(id)a3;
- (id)errorWithDescription:(id)a3;
- (void)_connectToDaemonIfNeeded;
- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4;
- (void)sendSMS:(id)a3 toAddresses:(id)a4 groupNameID:(id)a5 idsIdentifier:(id)a6;
@end

@implementation CKAssistantSMSSend

- (void)_connectToDaemonIfNeeded
{
  v2 = +[IMDaemonController sharedController];
  [v2 addListenerID:@"SiriSMS" capabilities:CKSiriListenerCapabilities()];

  v3 = +[IMDaemonController sharedController];
  [v3 blockUntilConnected];
}

- (id)_getAddressesFromRecipients:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) data];
        v11 = IMStripFormattingFromAddress();

        if (!v11)
        {

          v12 = 0;
          goto LABEL_11;
        }

        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = v4;
LABEL_11:

  return v12;
}

- (id)errorWithDescription:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  [v4 setObject:v3 forKey:NSLocalizedDescriptionKey];

  v5 = [NSError errorWithDomain:@"CKAssistantSMSSendErrorDomain" code:0 userInfo:v4];

  return v5;
}

- (void)sendSMS:(id)a3 toAddresses:(id)a4 groupNameID:(id)a5 idsIdentifier:(id)a6
{
  v60 = a3;
  v62 = a4;
  v9 = a5;
  v61 = a6;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v71 = v62;
      v72 = 2112;
      v73 = v9;
      v74 = 2112;
      v75 = v61;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Trying to send sms to addresses %@, groupNameID %@, idsIdentifier %@", buf, 0x20u);
    }
  }

  v11 = +[IMService smsService];
  v12 = CKMakeHandlesFromRecipientsWithFallbackService();

  if ([v12 count] || objc_msgSend(v9, "length"))
  {
    v13 = +[IMChatRegistry sharedRegistry];
    v14 = v13;
    if (v9)
    {
      [v13 existingChatWithChatIdentifier:v9];
    }

    else
    {
      [v13 _ck_chatForHandles:v12 createIfNecessary:1];
    }
    v15 = ;

    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v71 = v15;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Found chat %@ to send message to, joining it.", buf, 0xCu);
      }
    }

    [v15 join];
    v17 = [v15 lastAddressedHandleID];
    if (v17)
    {
    }

    else
    {
      v18 = [v15 lastAddressedSIMID];
      v19 = v18 == 0;

      if (v19)
      {
        v24 = +[NSMutableArray array];
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v25 = v12;
        v26 = [v25 countByEnumeratingWithState:&v63 objects:v69 count:16];
        if (v26)
        {
          v27 = *v64;
          do
          {
            for (i = 0; i != v26; i = i + 1)
            {
              if (*v64 != v27)
              {
                objc_enumerationMutation(v25);
              }

              v29 = [*(*(&v63 + 1) + 8 * i) ID];
              [v24 addObject:v29];
            }

            v26 = [v25 countByEnumeratingWithState:&v63 objects:v69 count:16];
          }

          while (v26);
        }

        v30 = +[IMSenderIdentityManager sharedInstance];
        v31 = [v30 bestSenderIdentityForHandleIDs:v24];

        if (IMOSLoggingEnabled())
        {
          v32 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = [v31 handle];
            v34 = [v33 value];
            v35 = [v31 accountUUID];
            v36 = [v35 UUIDString];
            *buf = 138412546;
            v71 = v34;
            v72 = 2112;
            v73 = v36;
            _os_log_impl(&dword_0, v32, OS_LOG_TYPE_INFO, "Setting LastAddressedSIMID to: %@, LastAddressedHandleID: %@", buf, 0x16u);
          }
        }

        v37 = [v31 accountUUID];
        v38 = [v37 UUIDString];
        [v15 setLastAddressedSIMID:v38];

        v39 = [v31 handle];
        v40 = [v39 value];
        [v15 setLastAddressedHandleID:v40];

        v41 = [v31 handle];
        v42 = [v41 value];
        LODWORD(v40) = [v59 shouldForceToSMS:v42];

        if (v40)
        {
          if (IMOSLoggingEnabled())
          {
            v43 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
            {
              v44 = [v31 handle];
              v45 = [v44 value];
              *buf = 138412290;
              v71 = v45;
              _os_log_impl(&dword_0, v43, OS_LOG_TYPE_INFO, "Forcing to update shouldForceToSMS. iMessage is not enabled for SIM phone number = %@ or phone number is nil. ", buf, 0xCu);
            }
          }

          [v15 updateShouldForceToSMS:1];
        }

        goto LABEL_43;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [v15 lastAddressedSIMID];
        v22 = [v15 lastAddressedHandleID];
        *buf = 138412546;
        v71 = v21;
        v72 = 2112;
        v73 = v22;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "We have existing conversation with LastAddressedSIMID = %@, LastAddressedHandleID = %@", buf, 0x16u);
      }
    }

LABEL_43:
    v46 = [[CKConversation alloc] initWithChat:v15];
    [v46 refreshServiceForSending];
    v47 = [[NSAttributedString alloc] initWithString:v60];
    v48 = [[CKComposition alloc] initWithText:v47 subject:0];
    v49 = [v46 messageWithComposition:v48];
    if (v49)
    {
      v50 = [v15 account];
      v51 = [v50 service];

      if ([v61 length])
      {
        if (IMOSLoggingEnabled())
        {
          v52 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v71 = v61;
            _os_log_impl(&dword_0, v52, OS_LOG_TYPE_INFO, "Setting idsIdentifier provided %@ on immessageitem", buf, 0xCu);
          }
        }

        [v49 setNotificationIDSTokenURI:v61];
      }

      [v49 setSourceApplicationID:@"com.apple.siri"];
      if (IMOSLoggingEnabled())
      {
        v53 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = [v49 guid];
          *buf = 138412802;
          v71 = v54;
          v72 = 2112;
          v73 = v49;
          v74 = 2112;
          v75 = v51;
          _os_log_impl(&dword_0, v53, OS_LOG_TYPE_INFO, "Sending message with guid %@, message %@, serviceToUse %@", buf, 0x20u);
        }
      }

      [v46 sendMessage:v49 onService:v51 newComposition:1];
      v55 = +[NSNotificationCenter defaultCenter];
      v67 = @"CKAssistantSentMessageNotificationMessageKey";
      v68 = v49;
      v56 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
      [v55 postNotificationName:@"CKAssistantSentMessageNotification" object:v59 userInfo:v56];
    }

    else if (IMOSLoggingEnabled())
    {
      v57 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v71 = 0;
        v72 = 2112;
        v73 = v15;
        v74 = 2112;
        v75 = v46;
        _os_log_impl(&dword_0, v57, OS_LOG_TYPE_INFO, "Siri made no message: %@, chat: %@, conversation: %@", buf, 0x20u);
      }
    }

    goto LABEL_60;
  }

  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "No handles or group name provided failing to send **should have failed earlier, file a radar**", buf, 2u);
    }
  }

LABEL_60:
}

- (BOOL)shouldForceToSMS:(id)a3
{
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Checking if we should force to SMS for phone number: %@", &v9, 0xCu);
    }
  }

  v5 = +[IMService iMessageService];
  v6 = [IMServiceImpl hasAlias:v3 onAccountForService:v5];

  if (v3)
  {
    v7 = v6 ^ 1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)_validateSMS:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = [SACommandFailed alloc];
    v6 = @"Did not get an SMS to send.";
LABEL_24:
    v21 = [v5 initWithReason:v6];
    goto LABEL_27;
  }

  v4 = [v3 msgRecipients];
  if ([v4 count])
  {
  }

  else
  {
    v7 = [v3 groupNameId];
    v8 = [v7 length];

    if (!v8)
    {
      v5 = [SACommandFailed alloc];
      v6 = @"No recipient specified.";
      goto LABEL_24;
    }
  }

  v9 = [v3 message];
  v10 = [v9 length];

  if (!v10)
  {
    v5 = [SACommandFailed alloc];
    v6 = @"Unable to send message, there is nothing to send.";
    goto LABEL_24;
  }

  v11 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = [v3 msgRecipients];
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v24 + 1) + 8 * i) data];
        if ((IMStringIsPhoneNumber() & 1) != 0 || IMStringIsEmail())
        {
          v18 = IMStripFormattingFromAddress();
          if (v18)
          {
            [v11 addObject:v18];
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  if (+[IMDowntimeController isContactLimitsFeatureEnabled](IMDowntimeController, "isContactLimitsFeatureEnabled") && (IMSharedDowntimeController(), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 allowedToShowConversationWithHandleIDs:v11 sync:1 context:0], v19, (v20 & 1) == 0))
  {
    v22 = [SACommandFailed alloc];
    v21 = [v22 initWithErrorCode:SASmsSendErrorRecipientNotWhitelistedErrorCode];
  }

  else
  {
    v21 = 0;
  }

LABEL_27:

  return v21;
}

- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = +[NSDate date];
      [v9 timeIntervalSinceReferenceDate];
      *buf = 134217984;
      v18 = v10;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "SMSSend performWithCompletion at time %f", buf, 0xCu);
    }
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_7268;
  v14[3] = &unk_10520;
  v14[4] = self;
  v11 = v6;
  v16 = v11;
  v12 = v7;
  v15 = v12;
  v13 = objc_retainBlock(v14);
  if (+[NSThread isMainThread])
  {
    (v13[2])(v13);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, v13);
  }
}

@end