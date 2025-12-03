@interface SMSMessageSender
- (SMSMessageSender)initWithSession:(id)session forMessage:(id)message chat:(id)chat chatStyle:(unsigned __int8)style recipients:(id)recipients;
- (id)chatIdentifier;
- (unsigned)chatStyle;
- (void)buildWith:(id)with parts:(id)parts completion:(id)completion;
- (void)cleanupFailedBuildWithError:(unsigned int)error forParts:(id)parts;
- (void)deriveConfiguration;
- (void)prepareWithCompletion:(id)completion;
- (void)sendMetricForSMS:(id)s wasSuccessful:(BOOL)successful error:(unsigned int)error;
- (void)sendWithCompletion:(id)completion;
@end

@implementation SMSMessageSender

- (SMSMessageSender)initWithSession:(id)session forMessage:(id)message chat:(id)chat chatStyle:(unsigned __int8)style recipients:(id)recipients
{
  sessionCopy = session;
  messageCopy = message;
  chatCopy = chat;
  recipientsCopy = recipients;
  v22.receiver = self;
  v22.super_class = SMSMessageSender;
  v17 = [(SMSMessageSender *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_session, session);
    objc_storeStrong(&v18->_message, message);
    objc_storeStrong(&v18->_chat, chat);
    v18->_style = style;
    objc_storeStrong(&v18->_recipients, recipients);
    v19 = objc_alloc_init(NSArray);
    outgoing = v18->_outgoing;
    v18->_outgoing = v19;
  }

  return v18;
}

- (void)deriveConfiguration
{
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  recipients = [(SMSMessageSender *)self recipients];
  v3 = 0;
  v4 = [recipients countByEnumeratingWithState:&v52 objects:v68 count:16];
  if (v4)
  {
    v5 = *v53;
    v6 = IMDMessageStoreHandleCanonicalIDKey;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v53 != v5)
        {
          objc_enumerationMutation(recipients);
        }

        v8 = [*(*(&v52 + 1) + 8 * i) objectForKey:v6];
        IsEmail = IMStringIsEmail();

        v3 |= IsEmail;
      }

      v4 = [recipients countByEnumeratingWithState:&v52 objects:v68 count:16];
    }

    while (v4);
  }

  smsSession = [(SMSMessageSender *)self smsSession];
  chat = [(SMSMessageSender *)self chat];
  v50 = [smsSession isGroupMessagingEnabledFor:chat];

  style = [(SMSMessageSender *)self style];
  smsSession2 = [(SMSMessageSender *)self smsSession];
  relayController = [smsSession2 relayController];
  chat2 = [(SMSMessageSender *)self chat];
  lastAddressedLocalHandle = [chat2 lastAddressedLocalHandle];
  chat3 = [(SMSMessageSender *)self chat];
  lastAddressedSIMID = [chat3 lastAddressedSIMID];
  v19 = [relayController _checkMMSEnablementForPhoneNumber:lastAddressedLocalHandle simID:lastAddressedSIMID];

  message = [(SMSMessageSender *)self message];
  subject = [message subject];
  v22 = [subject length];

  message2 = [(SMSMessageSender *)self message];
  fileTransferGUIDs = [message2 fileTransferGUIDs];
  v25 = [fileTransferGUIDs count];

  message3 = [(SMSMessageSender *)self message];
  balloonBundleID = [message3 balloonBundleID];
  v28 = [balloonBundleID isEqualToString:IMBalloonPluginIdentifierRichLinks];

  if ((v22 != 0) | v3 & 1 || !((v25 == 0) | v28 & 1))
  {
    if (v19)
    {
      v29 = 1;
      goto LABEL_35;
    }
  }

  else if (v19 & 1 | (((style != 45) & v50) == 0))
  {
    v29 = (style != 45) & v50 & v19;
    goto LABEL_35;
  }

  v30 = IMOSLoggingEnabled();
  v29 = v19;
  if (v30)
  {
    v31 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = @"NO";
      if (v22)
      {
        v33 = @"YES";
      }

      else
      {
        v33 = @"NO";
      }

      if (v3)
      {
        v34 = @"YES";
      }

      else
      {
        v34 = @"NO";
      }

      *buf = 138413570;
      v57 = v33;
      if (v25)
      {
        v35 = @"YES";
      }

      else
      {
        v35 = @"NO";
      }

      v58 = 2112;
      v59 = v34;
      if (v28)
      {
        v36 = @"YES";
      }

      else
      {
        v36 = @"NO";
      }

      v60 = 2112;
      v61 = v35;
      if (style == 45)
      {
        v37 = @"NO";
      }

      else
      {
        v37 = @"YES";
      }

      v62 = 2112;
      v63 = v36;
      if (v50)
      {
        v32 = @"YES";
      }

      v64 = 2112;
      v65 = v37;
      v66 = 2112;
      v67 = v32;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "Wants to send MMS, but MMS is not enabled. Feature will be lost or recipients missed (hasSubject %@ hasEmail %@ hasTransfer %@ isRichLink %@ isGroup %@ groupsEnabled %@)", buf, 0x3Eu);
    }

    v29 = v19;
  }

LABEL_35:
  [(SMSMessageSender *)self setShouldSendMMS:v29];
  if (style != 45)
  {
    [(SMSMessageSender *)self setSendAsGroupMessage:v50 & v19];
    if (![(SMSMessageSender *)self sendAsGroupMessage])
    {
      if (IMOSLoggingEnabled())
      {
        v38 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v39 = @"NO";
          if (v50)
          {
            v40 = @"YES";
          }

          else
          {
            v40 = @"NO";
          }

          if (v19)
          {
            v39 = @"YES";
          }

          *buf = 138412546;
          v57 = v40;
          v58 = 2112;
          v59 = v39;
          _os_log_impl(&dword_0, v38, OS_LOG_TYPE_INFO, "isGroupChat, but can't send group message isGroupMessagingEnabled %@ isMMSEnabled %@", buf, 0x16u);
        }
      }
    }
  }

  if (IMOSLoggingEnabled())
  {
    v41 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      shouldSendMMS = [(SMSMessageSender *)self shouldSendMMS];
      v43 = @"NO";
      if (shouldSendMMS)
      {
        v43 = @"YES";
      }

      *buf = 138412290;
      v57 = v43;
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_INFO, "        Should Send MMS: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v44 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      sendAsGroupMessage = [(SMSMessageSender *)self sendAsGroupMessage];
      v46 = @"NO";
      if (sendAsGroupMessage)
      {
        v46 = @"YES";
      }

      *buf = 138412290;
      v57 = v46;
      _os_log_impl(&dword_0, v44, OS_LOG_TYPE_INFO, "  Send as Group Message: %@", buf, 0xCu);
    }
  }

  session = [(SMSMessageSender *)self session];
  chat4 = [(SMSMessageSender *)self chat];
  v49 = [session subscriptionContextForChat:chat4];

  [(SMSMessageSender *)self setContext:v49];
}

- (void)prepareWithCompletion:(id)completion
{
  completionCopy = completion;
  smsSession = [(SMSMessageSender *)self smsSession];
  attachmentController = [smsSession attachmentController];
  message = [(SMSMessageSender *)self message];
  shouldSendMMS = [(SMSMessageSender *)self shouldSendMMS];
  chat = [(SMSMessageSender *)self chat];
  lastAddressedLocalHandle = [chat lastAddressedLocalHandle];
  chat2 = [(SMSMessageSender *)self chat];
  lastAddressedSIMID = [chat2 lastAddressedSIMID];
  [attachmentController processAttachmentsForMessage:message generateTextParts:shouldSendMMS lastAddressedHandle:lastAddressedLocalHandle lastAddressedSIMID:lastAddressedSIMID completionBlock:completionCopy];
}

- (unsigned)chatStyle
{
  chat = [(SMSMessageSender *)self chat];
  style = [chat style];

  return style;
}

- (id)chatIdentifier
{
  chat = [(SMSMessageSender *)self chat];
  chatIdentifier = [chat chatIdentifier];

  return chatIdentifier;
}

- (void)buildWith:(id)with parts:(id)parts completion:(id)completion
{
  withCopy = with;
  partsCopy = parts;
  completionCopy = completion;
  context = [(SMSMessageSender *)self context];

  if (context)
  {
    [(SMSMessageSender *)self setOutputMessage:withCopy];
    v47 = objc_alloc_init(NSDate);
    smsSession = [(SMSMessageSender *)self smsSession];
    recipients = [(SMSMessageSender *)self recipients];
    v11 = [smsSession newTelephonyMessagesForHandles:recipients shouldBroadcastMessage:{-[SMSMessageSender sendAsGroupMessage](self, "sendAsGroupMessage") ^ 1}];

    smsSession2 = [(SMSMessageSender *)self smsSession];
    message = [(SMSMessageSender *)self message];
    [smsSession2 setSubjectForTelephonyMessages:v11 messageItem:message];

    if (![(SMSMessageSender *)self shouldSendMMS])
    {
      smsSession3 = [(SMSMessageSender *)self smsSession];
      message2 = [(SMSMessageSender *)self message];
      outputMessage = [(SMSMessageSender *)self outputMessage];
      [smsSession3 addMessagePlainTextToTelephonyMessages:v11 messageItem:message2 processedMessageItem:outputMessage];
    }

    smsSession4 = [(SMSMessageSender *)self smsSession];
    v18 = [(SMSMessageSender *)self chatStyle]!= 45;
    chat = [(SMSMessageSender *)self chat];
    lastAddressedLocalHandle = [chat lastAddressedLocalHandle];
    chat2 = [(SMSMessageSender *)self chat];
    lastAddressedSIMID = [chat2 lastAddressedSIMID];
    [smsSession4 processPartsOfTelephonyMessages:v11 parts:partsCopy messageItem:withCopy isGroupChat:v18 phoneNumber:lastAddressedLocalHandle simID:lastAddressedSIMID];

    smsSession5 = [(SMSMessageSender *)self smsSession];
    LODWORD(chat2) = [(SMSMessageSender *)self sendAsGroupMessage];
    recipients2 = [(SMSMessageSender *)self recipients];
    [smsSession5 buildTelephonyPhoneNumbersForTelephonyMessages:v11 shouldBroadcastMessage:chat2 ^ 1 handles:recipients2];

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = v11;
    v50 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
    if (v50)
    {
      v49 = *v56;
      v25 = 1;
      do
      {
        for (i = 0; i != v50; i = i + 1)
        {
          if (*v56 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v55 + 1) + 8 * i);
          [v27 setServiceCenter:0];
          if (v25)
          {
            message3 = [(SMSMessageSender *)self message];
            guid = [message3 guid];
          }

          else
          {
            guid = +[NSString stringGUID];
          }

          smsSession6 = [(SMSMessageSender *)self smsSession];
          [v27 setMessageId:{objc_msgSend(smsSession6, "_generateMessageIDForMessageGUID:", guid)}];

          smsSession7 = [(SMSMessageSender *)self smsSession];
          if (v25)
          {
            v32 = v53;
            v53[0] = _NSConcreteStackBlock;
            v53[1] = 3221225472;
            v53[2] = sub_E4F8;
            v53[3] = &unk_20A98;
            v53[4] = self;
            v54 = v47;
            v33 = v51;
            v51[0] = _NSConcreteStackBlock;
            v51[1] = 3221225472;
            v51[2] = sub_E7E8;
            v51[3] = &unk_20AC0;
            v51[4] = self;
            v52 = v54;
          }

          else
          {
            v32 = 0;
            v33 = 0;
          }

          [smsSession7 _registerMessageGUID:guid completionBlock:v32 failureBlock:v33];

          smsSession8 = [(SMSMessageSender *)self smsSession];
          [smsSession8 setMessageTypeForTelephonyMessage:v27 shouldSendMMS:{-[SMSMessageSender shouldSendMMS](self, "shouldSendMMS")}];

          chat3 = [(SMSMessageSender *)self chat];
          lastAddressedLocalHandle2 = [chat3 lastAddressedLocalHandle];

          chat4 = [(SMSMessageSender *)self chat];
          lastAddressedSIMID2 = [chat4 lastAddressedSIMID];

          if (IMOSLoggingEnabled())
          {
            v39 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              chat5 = [(SMSMessageSender *)self chat];
              guid2 = [chat5 guid];
              *buf = 138412802;
              v60 = guid2;
              v61 = 2112;
              v62 = lastAddressedLocalHandle2;
              v63 = 2112;
              v64 = lastAddressedSIMID2;
              _os_log_impl(&dword_0, v39, OS_LOG_TYPE_INFO, "Not first chat (%@): lastAddressedLocalHandle %@ lastAddressedSIMID %@", buf, 0x20u);
            }
          }

          context2 = [(SMSMessageSender *)self context];
          [v27 setContext:context2];

          if (v25)
          {
          }

          v25 = 0;
        }

        v50 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
        v25 = 0;
      }

      while (v50);
    }

    [(SMSMessageSender *)self setOutgoing:obj];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }

    v43 = completionCopy;
  }

  else
  {
    v43 = completionCopy;
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

- (void)sendMetricForSMS:(id)s wasSuccessful:(BOOL)successful error:(unsigned int)error
{
  sCopy = s;
  chatStyle = [(SMSMessageSender *)self chatStyle];
  message = [(SMSMessageSender *)self message];
  fileTransferGUIDs = [message fileTransferGUIDs];
  v9 = [fileTransferGUIDs count];

  chat = [(SMSMessageSender *)self chat];
  properties = [chat properties];
  v12 = [properties valueForKey:IMChatPropertyLastKnownHybridState];
  bOOLValue = [v12 BOOLValue];

  message2 = [(SMSMessageSender *)self message];
  bodyData = [message2 bodyData];
  v16 = [bodyData length];
  message3 = [(SMSMessageSender *)self message];
  payloadData = [message3 payloadData];
  v19 = &v16[[payloadData length]];

  message4 = [(SMSMessageSender *)self message];
  fileTransferGUIDs2 = [message4 fileTransferGUIDs];

  v46 = fileTransferGUIDs2;
  if (fileTransferGUIDs2)
  {
    v43 = bOOLValue;
    v44 = chatStyle;
    v22 = v9;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v23 = fileTransferGUIDs2;
    v24 = [v23 countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v51;
      do
      {
        v27 = 0;
        do
        {
          if (*v51 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v50 + 1) + 8 * v27);
          v29 = +[IMDFileTransferCenter sharedInstance];
          v30 = [v29 transferForGUID:v28];
          v19 = &v19[[v30 totalBytes]];

          v27 = v27 + 1;
        }

        while (v25 != v27);
        v25 = [v23 countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v25);
    }

    v9 = v22;
    bOOLValue = v43;
    chatStyle = v44;
  }

  if (chatStyle == 45)
  {
    v31 = 0;
    v32 = @"individual";
  }

  else
  {
    v33 = @"SMS_Hybrid";
    if (!bOOLValue)
    {
      v33 = @"SMS";
    }

    v31 = v33;
    v32 = @"group";
  }

  v45 = v32;
  v34 = +[IMMetricsCollector sharedInstance];
  if (v9)
  {
    v35 = @"MMS";
  }

  else
  {
    v35 = @"SMS";
  }

  if (v9)
  {
    v36 = @"attachment";
  }

  else
  {
    v36 = @"text";
  }

  message5 = [(SMSMessageSender *)self message];
  originalServiceName = [message5 originalServiceName];
  message6 = [(SMSMessageSender *)self message];
  handle = [message6 handle];
  v41 = [IMMetricsCollector stringForFZErrorType:error];
  LOBYTE(v42) = successful;
  [v34 trackSentMessageEventOfType:v35 subtype:v36 originalServiceName:originalServiceName messageSize:v19 sendDuration:sCopy receiverType:v45 receiverGroupType:v31 wasSuccessful:v42 sourceHandle:0 destinationHandle:handle error:v41];
}

- (void)sendWithCompletion:(id)completion
{
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      outgoing = [(SMSMessageSender *)self outgoing];
      *buf = 138412290;
      *&buf[4] = outgoing;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "   No parts failed, sending message(s): %@", buf, 0xCu);
    }
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = [(SMSMessageSender *)self outgoing];
  v78 = [obj countByEnumeratingWithState:&v84 objects:v93 count:16];
  if (v78)
  {
    v75 = 0;
    v77 = *v85;
    while (1)
    {
      for (i = 0; i != v78; i = i + 1)
      {
        if (*v85 != v77)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v84 + 1) + 8 * i);
        outputMessage = [(SMSMessageSender *)self outputMessage];
        useStandalone = [outputMessage useStandalone];

        if (useStandalone)
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_21;
          }

          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            outputMessage2 = [(SMSMessageSender *)self outputMessage];
            guid = [outputMessage2 guid];
            *buf = 138412290;
            *&buf[4] = guid;
            _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "   => Message should use standalone. SettingCTMessage's BypassSupportedMessageModesCheck for message: %@", buf, 0xCu);
          }

          goto LABEL_20;
        }

        if (IMSharedHelperDeviceHasMultipleSubscriptions())
        {
          context = [v7 context];
          v14 = context == 0;

          if (v14)
          {
            if (IMOSLoggingEnabled())
            {
              v10 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
              {
                outputMessage3 = [(SMSMessageSender *)self outputMessage];
                guid2 = [outputMessage3 guid];
                *buf = 138412290;
                *&buf[4] = guid2;
                _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "This message [%@] is not an SOS message but has nil context ******* FILE RADAR ******", buf, 0xCu);
              }

LABEL_20:
            }
          }
        }

LABEL_21:
        [v7 setBypassSupportedMessageModesCheck:useStandalone];
        v17 = +[IDSCTAdapter sharedInstance];
        message = [(SMSMessageSender *)self message];
        handle = [message handle];
        v20 = [v17 isPhoneNumberEmergencyNumber:handle];

        if (v20)
        {
          v21 = +[IMFeatureFlags sharedFeatureFlags];
          stewieEnabled = [v21 stewieEnabled];

          if (stewieEnabled)
          {
            chat = [(SMSMessageSender *)self chat];
            isEmergencyChat = [chat isEmergencyChat];

            if ((isEmergencyChat & 1) == 0)
            {
              if (IMOSLoggingEnabled())
              {
                v25 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "Sending: Chat has been marked as an emergency chat", buf, 2u);
                }
              }

              chat2 = [(SMSMessageSender *)self chat];
              [chat2 updateIsEmergencyChat:1];
            }
          }

          if (IMOSLoggingEnabled())
          {
            v27 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              message2 = [(SMSMessageSender *)self message];
              handle2 = [message2 handle];
              *buf = 138412290;
              *&buf[4] = handle2;
              _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "Sending SMS to emergency number: %@, need to disable ScreenTime restrictions", buf, 0xCu);
            }
          }
        }

        if (IMOSLoggingEnabled())
        {
          v30 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            if (useStandalone)
            {
              v31 = @"YES";
            }

            else
            {
              v31 = @"NO";
            }

            *buf = 138412546;
            *&buf[4] = v31;
            if (v20)
            {
              v32 = @"YES";
            }

            else
            {
              v32 = @"NO";
            }

            *&buf[12] = 2112;
            *&buf[14] = v32;
            _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "should use standalone %@ or to an Emergency number %@", buf, 0x16u);
          }
        }

        if ((useStandalone | v20))
        {
          if (IMOSLoggingEnabled())
          {
            v33 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, "Disabling ScreenTime restrictions as sending message to an Emergency number", buf, 2u);
            }
          }

          v88 = 0;
          v89 = &v88;
          v90 = 0x2050000000;
          v34 = qword_268C0;
          v91 = qword_268C0;
          if (!qword_268C0)
          {
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 3221225472;
            *&buf[16] = sub_FF9C;
            v95 = &unk_20AE8;
            v96 = &v88;
            sub_FF9C(buf);
            v34 = v89[3];
          }

          v35 = v34;
          _Block_object_dispose(&v88, 8);
          sharedMonitor = [v34 sharedMonitor];
          v83 = 0;
          v37 = [sharedMonitor enableEmergencyModeWithError:&v83];
          v38 = v83;
          if (v38)
          {
            v39 = 0;
          }

          else
          {
            v39 = v37;
          }

          if ((v39 & 1) == 0 && IMOSLoggingEnabled())
          {
            v40 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v41 = @"NO";
              if (v37)
              {
                v41 = @"YES";
              }

              *&buf[4] = v41;
              *&buf[12] = 2112;
              *&buf[14] = v38;
              _os_log_impl(&dword_0, v40, OS_LOG_TYPE_INFO, "Enabling Emergency Mode reported %@ when sending message to an Emergency number with error: %@", buf, 0x16u);
            }
          }

          smsSession = [(SMSMessageSender *)self smsSession];
          [smsSession _scheduleSchoolModeTimer];
        }

        v43 = +[CTMessageCenter sharedMessageCenter];
        v44 = [v43 send:v7];

        if (HIDWORD(v44))
        {
          v45 = 0;
        }

        else
        {
          v45 = v44 == 0;
        }

        v46 = v45;
        if (v45)
        {
          if (IMOSLoggingEnabled())
          {
            v47 = OSLogHandleForIMEventCategory();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = v7;
              _os_log_impl(&dword_0, v47, OS_LOG_TYPE_INFO, "   => sent CT Message: %@", buf, 0xCu);
            }
          }

          v75 = 1;
        }

        else
        {
          smsSession2 = [(SMSMessageSender *)self smsSession];
          message3 = [(SMSMessageSender *)self message];
          guid3 = [message3 guid];
          v51 = [smsSession2 _failureBlockForMessageGUID:guid3];

          if (v51)
          {
            v51[2](v51, 4, v44);
          }

          smsSession3 = [(SMSMessageSender *)self smsSession];
          message4 = [(SMSMessageSender *)self message];
          guid4 = [message4 guid];
          [smsSession3 _clearMapForMessageGUID:guid4];

          if (IMOSLoggingEnabled())
          {
            v55 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
            {
              *buf = 138412802;
              *&buf[4] = v7;
              *&buf[12] = 1024;
              *&buf[14] = v44;
              *&buf[18] = 1024;
              *&buf[20] = HIDWORD(v44);
              _os_log_impl(&dword_0, v55, OS_LOG_TYPE_INFO, "**** Failed sending message (%@) error: %d,%d\n", buf, 0x18u);
            }
          }
        }

        message5 = [(SMSMessageSender *)self message];
        notificationIDSTokenURI = [message5 notificationIDSTokenURI];

        if (v46)
        {
          if ([notificationIDSTokenURI length])
          {
            if (IMOSLoggingEnabled())
            {
              v58 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
              {
                chatIdentifier = [(SMSMessageSender *)self chatIdentifier];
                *buf = 138412546;
                *&buf[4] = notificationIDSTokenURI;
                *&buf[12] = 2112;
                *&buf[14] = chatIdentifier;
                _os_log_impl(&dword_0, v58, OS_LOG_TYPE_INFO, "Successfully sent message, setting message item notificationIDSTokenURI %@ for chatIdentifier %@", buf, 0x16u);
              }
            }

            v60 = +[IMMessageNotificationTimeManager sharedInstance];
            [v60 setLatestNotificationIDSTokenURI:notificationIDSTokenURI];

            v61 = +[IMMessageNotificationTimeManager sharedInstance];
            v62 = +[NSDate date];
            chatIdentifier2 = [(SMSMessageSender *)self chatIdentifier];
            [v61 setDate:v62 forChatIdentifier:chatIdentifier2];
          }

          else
          {
            v64 = +[IMMessageNotificationTimeManager sharedInstance];
            chatIdentifier3 = [(SMSMessageSender *)self chatIdentifier];
            [v64 tearDownSessionForChatIdentifier:chatIdentifier3];

            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v66 = +[IMDChatRegistry sharedInstance];
            chatIdentifier4 = [(SMSMessageSender *)self chatIdentifier];
            v61 = [v66 allExistingSupportedServiceChatsWithIdentifier:chatIdentifier4 style:{-[SMSMessageSender chatStyle](self, "chatStyle")}];

            v68 = [v61 countByEnumeratingWithState:&v79 objects:v92 count:16];
            if (v68)
            {
              v69 = *v80;
              do
              {
                for (j = 0; j != v68; j = j + 1)
                {
                  if (*v80 != v69)
                  {
                    objc_enumerationMutation(v61);
                  }

                  v71 = *(*(&v79 + 1) + 8 * j);
                  outputMessage4 = [(SMSMessageSender *)self outputMessage];
                  guid5 = [outputMessage4 guid];
                  [v71 updateLastSeenMessageGuidIfNeeded:guid5];
                }

                v68 = [v61 countByEnumeratingWithState:&v79 objects:v92 count:16];
              }

              while (v68);
            }
          }
        }
      }

      v78 = [obj countByEnumeratingWithState:&v84 objects:v93 count:16];
      if (!v78)
      {
        goto LABEL_100;
      }
    }
  }

  v75 = 0;
LABEL_100:

  completionCopy[2](completionCopy, v75 & 1);
}

- (void)cleanupFailedBuildWithError:(unsigned int)error forParts:(id)parts
{
  partsCopy = parts;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      outgoing = [(SMSMessageSender *)self outgoing];
      *buf = 138412290;
      v28 = outgoing;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "   *** Parts failed, failing message(s): %@", buf, 0xCu);
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  outgoing2 = [(SMSMessageSender *)self outgoing];
  v8 = [outgoing2 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(outgoing2);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        if (IMOSLoggingEnabled())
        {
          v12 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v28 = v11;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "part error sending message %@", buf, 0xCu);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v28 = v11;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "   => failed CT Message: %@  (some parts failed)", buf, 0xCu);
          }
        }

        smsSession = [(SMSMessageSender *)self smsSession];
        message = [(SMSMessageSender *)self message];
        guid = [message guid];
        v17 = [smsSession _failureBlockForMessageGUID:guid];

        if (v17)
        {
          v17[2](v17, 25, 0);
        }

        smsSession2 = [(SMSMessageSender *)self smsSession];
        message2 = [(SMSMessageSender *)self message];
        guid2 = [message2 guid];
        [smsSession2 _clearMapForMessageGUID:guid2];
      }

      v8 = [outgoing2 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }
}

@end