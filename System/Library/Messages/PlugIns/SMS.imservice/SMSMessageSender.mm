@interface SMSMessageSender
- (SMSMessageSender)initWithSession:(id)a3 forMessage:(id)a4 chat:(id)a5 chatStyle:(unsigned __int8)a6 recipients:(id)a7;
- (id)chatIdentifier;
- (unsigned)chatStyle;
- (void)buildWith:(id)a3 parts:(id)a4 completion:(id)a5;
- (void)cleanupFailedBuildWithError:(unsigned int)a3 forParts:(id)a4;
- (void)deriveConfiguration;
- (void)prepareWithCompletion:(id)a3;
- (void)sendMetricForSMS:(id)a3 wasSuccessful:(BOOL)a4 error:(unsigned int)a5;
- (void)sendWithCompletion:(id)a3;
@end

@implementation SMSMessageSender

- (SMSMessageSender)initWithSession:(id)a3 forMessage:(id)a4 chat:(id)a5 chatStyle:(unsigned __int8)a6 recipients:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = SMSMessageSender;
  v17 = [(SMSMessageSender *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_session, a3);
    objc_storeStrong(&v18->_message, a4);
    objc_storeStrong(&v18->_chat, a5);
    v18->_style = a6;
    objc_storeStrong(&v18->_recipients, a7);
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
  v2 = [(SMSMessageSender *)self recipients];
  v3 = 0;
  v4 = [v2 countByEnumeratingWithState:&v52 objects:v68 count:16];
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
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v52 + 1) + 8 * i) objectForKey:v6];
        IsEmail = IMStringIsEmail();

        v3 |= IsEmail;
      }

      v4 = [v2 countByEnumeratingWithState:&v52 objects:v68 count:16];
    }

    while (v4);
  }

  v10 = [(SMSMessageSender *)self smsSession];
  v11 = [(SMSMessageSender *)self chat];
  v50 = [v10 isGroupMessagingEnabledFor:v11];

  v12 = [(SMSMessageSender *)self style];
  v13 = [(SMSMessageSender *)self smsSession];
  v14 = [v13 relayController];
  v15 = [(SMSMessageSender *)self chat];
  v16 = [v15 lastAddressedLocalHandle];
  v17 = [(SMSMessageSender *)self chat];
  v18 = [v17 lastAddressedSIMID];
  v19 = [v14 _checkMMSEnablementForPhoneNumber:v16 simID:v18];

  v20 = [(SMSMessageSender *)self message];
  v21 = [v20 subject];
  v22 = [v21 length];

  v23 = [(SMSMessageSender *)self message];
  v24 = [v23 fileTransferGUIDs];
  v25 = [v24 count];

  v26 = [(SMSMessageSender *)self message];
  v27 = [v26 balloonBundleID];
  v28 = [v27 isEqualToString:IMBalloonPluginIdentifierRichLinks];

  if ((v22 != 0) | v3 & 1 || !((v25 == 0) | v28 & 1))
  {
    if (v19)
    {
      v29 = 1;
      goto LABEL_35;
    }
  }

  else if (v19 & 1 | (((v12 != 45) & v50) == 0))
  {
    v29 = (v12 != 45) & v50 & v19;
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
      if (v12 == 45)
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
  if (v12 != 45)
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
      v42 = [(SMSMessageSender *)self shouldSendMMS];
      v43 = @"NO";
      if (v42)
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
      v45 = [(SMSMessageSender *)self sendAsGroupMessage];
      v46 = @"NO";
      if (v45)
      {
        v46 = @"YES";
      }

      *buf = 138412290;
      v57 = v46;
      _os_log_impl(&dword_0, v44, OS_LOG_TYPE_INFO, "  Send as Group Message: %@", buf, 0xCu);
    }
  }

  v47 = [(SMSMessageSender *)self session];
  v48 = [(SMSMessageSender *)self chat];
  v49 = [v47 subscriptionContextForChat:v48];

  [(SMSMessageSender *)self setContext:v49];
}

- (void)prepareWithCompletion:(id)a3
{
  v4 = a3;
  v12 = [(SMSMessageSender *)self smsSession];
  v5 = [v12 attachmentController];
  v6 = [(SMSMessageSender *)self message];
  v7 = [(SMSMessageSender *)self shouldSendMMS];
  v8 = [(SMSMessageSender *)self chat];
  v9 = [v8 lastAddressedLocalHandle];
  v10 = [(SMSMessageSender *)self chat];
  v11 = [v10 lastAddressedSIMID];
  [v5 processAttachmentsForMessage:v6 generateTextParts:v7 lastAddressedHandle:v9 lastAddressedSIMID:v11 completionBlock:v4];
}

- (unsigned)chatStyle
{
  v2 = [(SMSMessageSender *)self chat];
  v3 = [v2 style];

  return v3;
}

- (id)chatIdentifier
{
  v2 = [(SMSMessageSender *)self chat];
  v3 = [v2 chatIdentifier];

  return v3;
}

- (void)buildWith:(id)a3 parts:(id)a4 completion:(id)a5
{
  v46 = a3;
  v44 = a4;
  v45 = a5;
  v8 = [(SMSMessageSender *)self context];

  if (v8)
  {
    [(SMSMessageSender *)self setOutputMessage:v46];
    v47 = objc_alloc_init(NSDate);
    v9 = [(SMSMessageSender *)self smsSession];
    v10 = [(SMSMessageSender *)self recipients];
    v11 = [v9 newTelephonyMessagesForHandles:v10 shouldBroadcastMessage:{-[SMSMessageSender sendAsGroupMessage](self, "sendAsGroupMessage") ^ 1}];

    v12 = [(SMSMessageSender *)self smsSession];
    v13 = [(SMSMessageSender *)self message];
    [v12 setSubjectForTelephonyMessages:v11 messageItem:v13];

    if (![(SMSMessageSender *)self shouldSendMMS])
    {
      v14 = [(SMSMessageSender *)self smsSession];
      v15 = [(SMSMessageSender *)self message];
      v16 = [(SMSMessageSender *)self outputMessage];
      [v14 addMessagePlainTextToTelephonyMessages:v11 messageItem:v15 processedMessageItem:v16];
    }

    v17 = [(SMSMessageSender *)self smsSession];
    v18 = [(SMSMessageSender *)self chatStyle]!= 45;
    v19 = [(SMSMessageSender *)self chat];
    v20 = [v19 lastAddressedLocalHandle];
    v21 = [(SMSMessageSender *)self chat];
    v22 = [v21 lastAddressedSIMID];
    [v17 processPartsOfTelephonyMessages:v11 parts:v44 messageItem:v46 isGroupChat:v18 phoneNumber:v20 simID:v22];

    v23 = [(SMSMessageSender *)self smsSession];
    LODWORD(v21) = [(SMSMessageSender *)self sendAsGroupMessage];
    v24 = [(SMSMessageSender *)self recipients];
    [v23 buildTelephonyPhoneNumbersForTelephonyMessages:v11 shouldBroadcastMessage:v21 ^ 1 handles:v24];

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
            v28 = [(SMSMessageSender *)self message];
            v29 = [v28 guid];
          }

          else
          {
            v29 = +[NSString stringGUID];
          }

          v30 = [(SMSMessageSender *)self smsSession];
          [v27 setMessageId:{objc_msgSend(v30, "_generateMessageIDForMessageGUID:", v29)}];

          v31 = [(SMSMessageSender *)self smsSession];
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

          [v31 _registerMessageGUID:v29 completionBlock:v32 failureBlock:v33];

          v34 = [(SMSMessageSender *)self smsSession];
          [v34 setMessageTypeForTelephonyMessage:v27 shouldSendMMS:{-[SMSMessageSender shouldSendMMS](self, "shouldSendMMS")}];

          v35 = [(SMSMessageSender *)self chat];
          v36 = [v35 lastAddressedLocalHandle];

          v37 = [(SMSMessageSender *)self chat];
          v38 = [v37 lastAddressedSIMID];

          if (IMOSLoggingEnabled())
          {
            v39 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              v40 = [(SMSMessageSender *)self chat];
              v41 = [v40 guid];
              *buf = 138412802;
              v60 = v41;
              v61 = 2112;
              v62 = v36;
              v63 = 2112;
              v64 = v38;
              _os_log_impl(&dword_0, v39, OS_LOG_TYPE_INFO, "Not first chat (%@): lastAddressedLocalHandle %@ lastAddressedSIMID %@", buf, 0x20u);
            }
          }

          v42 = [(SMSMessageSender *)self context];
          [v27 setContext:v42];

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
    if (v45)
    {
      v45[2](v45, 1);
    }

    v43 = v45;
  }

  else
  {
    v43 = v45;
    if (v45)
    {
      v45[2](v45, 0);
    }
  }
}

- (void)sendMetricForSMS:(id)a3 wasSuccessful:(BOOL)a4 error:(unsigned int)a5
{
  v49 = a3;
  v6 = [(SMSMessageSender *)self chatStyle];
  v7 = [(SMSMessageSender *)self message];
  v8 = [v7 fileTransferGUIDs];
  v9 = [v8 count];

  v10 = [(SMSMessageSender *)self chat];
  v11 = [v10 properties];
  v12 = [v11 valueForKey:IMChatPropertyLastKnownHybridState];
  v13 = [v12 BOOLValue];

  v14 = [(SMSMessageSender *)self message];
  v15 = [v14 bodyData];
  v16 = [v15 length];
  v17 = [(SMSMessageSender *)self message];
  v18 = [v17 payloadData];
  v19 = &v16[[v18 length]];

  v20 = [(SMSMessageSender *)self message];
  v21 = [v20 fileTransferGUIDs];

  v46 = v21;
  if (v21)
  {
    v43 = v13;
    v44 = v6;
    v22 = v9;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v23 = v21;
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
    v13 = v43;
    v6 = v44;
  }

  if (v6 == 45)
  {
    v31 = 0;
    v32 = @"individual";
  }

  else
  {
    v33 = @"SMS_Hybrid";
    if (!v13)
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

  v37 = [(SMSMessageSender *)self message];
  v38 = [v37 originalServiceName];
  v39 = [(SMSMessageSender *)self message];
  v40 = [v39 handle];
  v41 = [IMMetricsCollector stringForFZErrorType:a5];
  LOBYTE(v42) = a4;
  [v34 trackSentMessageEventOfType:v35 subtype:v36 originalServiceName:v38 messageSize:v19 sendDuration:v49 receiverType:v45 receiverGroupType:v31 wasSuccessful:v42 sourceHandle:0 destinationHandle:v40 error:v41];
}

- (void)sendWithCompletion:(id)a3
{
  v74 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [(SMSMessageSender *)self outgoing];
      *buf = 138412290;
      *&buf[4] = v5;
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
        v8 = [(SMSMessageSender *)self outputMessage];
        v9 = [v8 useStandalone];

        if (v9)
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_21;
          }

          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v11 = [(SMSMessageSender *)self outputMessage];
            v12 = [v11 guid];
            *buf = 138412290;
            *&buf[4] = v12;
            _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "   => Message should use standalone. SettingCTMessage's BypassSupportedMessageModesCheck for message: %@", buf, 0xCu);
          }

          goto LABEL_20;
        }

        if (IMSharedHelperDeviceHasMultipleSubscriptions())
        {
          v13 = [v7 context];
          v14 = v13 == 0;

          if (v14)
          {
            if (IMOSLoggingEnabled())
            {
              v10 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
              {
                v15 = [(SMSMessageSender *)self outputMessage];
                v16 = [v15 guid];
                *buf = 138412290;
                *&buf[4] = v16;
                _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "This message [%@] is not an SOS message but has nil context ******* FILE RADAR ******", buf, 0xCu);
              }

LABEL_20:
            }
          }
        }

LABEL_21:
        [v7 setBypassSupportedMessageModesCheck:v9];
        v17 = +[IDSCTAdapter sharedInstance];
        v18 = [(SMSMessageSender *)self message];
        v19 = [v18 handle];
        v20 = [v17 isPhoneNumberEmergencyNumber:v19];

        if (v20)
        {
          v21 = +[IMFeatureFlags sharedFeatureFlags];
          v22 = [v21 stewieEnabled];

          if (v22)
          {
            v23 = [(SMSMessageSender *)self chat];
            v24 = [v23 isEmergencyChat];

            if ((v24 & 1) == 0)
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

              v26 = [(SMSMessageSender *)self chat];
              [v26 updateIsEmergencyChat:1];
            }
          }

          if (IMOSLoggingEnabled())
          {
            v27 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v28 = [(SMSMessageSender *)self message];
              v29 = [v28 handle];
              *buf = 138412290;
              *&buf[4] = v29;
              _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "Sending SMS to emergency number: %@, need to disable ScreenTime restrictions", buf, 0xCu);
            }
          }
        }

        if (IMOSLoggingEnabled())
        {
          v30 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            if (v9)
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

        if ((v9 | v20))
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
          v36 = [v34 sharedMonitor];
          v83 = 0;
          v37 = [v36 enableEmergencyModeWithError:&v83];
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

          v42 = [(SMSMessageSender *)self smsSession];
          [v42 _scheduleSchoolModeTimer];
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
          v48 = [(SMSMessageSender *)self smsSession];
          v49 = [(SMSMessageSender *)self message];
          v50 = [v49 guid];
          v51 = [v48 _failureBlockForMessageGUID:v50];

          if (v51)
          {
            v51[2](v51, 4, v44);
          }

          v52 = [(SMSMessageSender *)self smsSession];
          v53 = [(SMSMessageSender *)self message];
          v54 = [v53 guid];
          [v52 _clearMapForMessageGUID:v54];

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

        v56 = [(SMSMessageSender *)self message];
        v57 = [v56 notificationIDSTokenURI];

        if (v46)
        {
          if ([v57 length])
          {
            if (IMOSLoggingEnabled())
            {
              v58 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
              {
                v59 = [(SMSMessageSender *)self chatIdentifier];
                *buf = 138412546;
                *&buf[4] = v57;
                *&buf[12] = 2112;
                *&buf[14] = v59;
                _os_log_impl(&dword_0, v58, OS_LOG_TYPE_INFO, "Successfully sent message, setting message item notificationIDSTokenURI %@ for chatIdentifier %@", buf, 0x16u);
              }
            }

            v60 = +[IMMessageNotificationTimeManager sharedInstance];
            [v60 setLatestNotificationIDSTokenURI:v57];

            v61 = +[IMMessageNotificationTimeManager sharedInstance];
            v62 = +[NSDate date];
            v63 = [(SMSMessageSender *)self chatIdentifier];
            [v61 setDate:v62 forChatIdentifier:v63];
          }

          else
          {
            v64 = +[IMMessageNotificationTimeManager sharedInstance];
            v65 = [(SMSMessageSender *)self chatIdentifier];
            [v64 tearDownSessionForChatIdentifier:v65];

            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v66 = +[IMDChatRegistry sharedInstance];
            v67 = [(SMSMessageSender *)self chatIdentifier];
            v61 = [v66 allExistingSupportedServiceChatsWithIdentifier:v67 style:{-[SMSMessageSender chatStyle](self, "chatStyle")}];

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
                  v72 = [(SMSMessageSender *)self outputMessage];
                  v73 = [v72 guid];
                  [v71 updateLastSeenMessageGuidIfNeeded:v73];
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

  v74[2](v74, v75 & 1);
}

- (void)cleanupFailedBuildWithError:(unsigned int)a3 forParts:(id)a4
{
  v21 = a4;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(SMSMessageSender *)self outgoing];
      *buf = 138412290;
      v28 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "   *** Parts failed, failing message(s): %@", buf, 0xCu);
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [(SMSMessageSender *)self outgoing];
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v7);
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

        v14 = [(SMSMessageSender *)self smsSession];
        v15 = [(SMSMessageSender *)self message];
        v16 = [v15 guid];
        v17 = [v14 _failureBlockForMessageGUID:v16];

        if (v17)
        {
          v17[2](v17, 25, 0);
        }

        v18 = [(SMSMessageSender *)self smsSession];
        v19 = [(SMSMessageSender *)self message];
        v20 = [v19 guid];
        [v18 _clearMapForMessageGUID:v20];
      }

      v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }
}

@end