@interface SMSServiceSession
- (BOOL)_messageDowngradesWhenSentFromCurrentService:(id)service;
- (BOOL)_sendMessageOverAlternatePath:(id)path toChat:(id)chat;
- (BOOL)_shouldFailSMSMessageForTesting:(id)testing chatIdentifier:(id)identifier chatStyle:(unsigned __int8)style;
- (BOOL)allowedToSendMessage:(id)message toChat:(id)chat;
- (BOOL)isValidMMS:(id)s;
- (BOOL)replicationRequiredForFeaturesUsedByMessageItem:(id)item;
- (BOOL)replicationRequirementsSatisfiedForPhoneNumber:(id)number simID:(id)d;
- (BOOL)shouldFixIncomingDate;
- (SMSServiceSession)initWithAccount:(id)account service:(id)service replicatingForSession:(id)session;
- (id)_convertCTMessagePartToDictionary:(id)dictionary;
- (id)_convertCTMessageToDictionary:(id)dictionary requiresUpload:(BOOL *)upload;
- (id)_fixIncomingDate:(id)date;
- (id)lastAddressedHandleForJunkReportMessageItem:(id)item;
- (id)lastAddressedSIMIDForJunkReportMessageItem:(id)item;
- (id)newTelephonyMessagesForHandles:(id)handles shouldBroadcastMessage:(BOOL)message;
- (id)replicationPhoneNumbers;
- (unint64_t)_sendingDecisionForMessageItem:(id)item callerID:(id)d lastAddressedLocalHandle:(id)handle lastAddressedSIMID:(id)iD;
- (unsigned)_generateMessageIDForMessageGUID:(id)d;
- (void)_buildCTPhoneNumberWithParticipantInfo:(id)info ctMessage:(id)message;
- (void)_clearMapForMessageGUID:(id)d;
- (void)_clearPendingIncomingMessageQueue;
- (void)_doDeleteChat:(id)chat;
- (void)_joinOneToOneChatWithChatIdentifier:(id)identifier;
- (void)_processMessagesForRelayIfNeededMarkingAsRelayedUponSuccess:(BOOL)success;
- (void)_processSMSOrSMSMessageSentWithContext:(id)context success:(BOOL)success messageID:(unsigned int)d err1:(int64_t)err1 err2:(int64_t)err2 isSMS:(BOOL)s;
- (void)_processSMSorMMSMessageReceivedWithContext:(id)context messageID:(int64_t)d;
- (void)_receivedSMSDictionary:(id)dictionary requiresUpload:(BOOL)upload isBeingReplayed:(BOOL)replayed;
- (void)_registerForIncomingMessages:(id)messages;
- (void)_registerMessageGUID:(id)d completionBlock:(id)block failureBlock:(id)failureBlock;
- (void)_reportTelephonyJunkForMessageItem:(id)item chat:(id)chat;
- (void)_setContentIDAndLocationForSMILPart:(id)part messageGUID:(id)d isGroupChat:(BOOL)chat phoneNumber:(id)number simID:(id)iD;
- (void)addMessagePlainTextToTelephonyMessages:(id)messages messageItem:(id)item processedMessageItem:(id)messageItem;
- (void)buildTelephonyPhoneNumbersForTelephonyMessages:(id)messages shouldBroadcastMessage:(BOOL)message handles:(id)handles;
- (void)calculateReachabilityWithRequest:(id)request responseHandler:(id)handler;
- (void)dealloc;
- (void)enqueReplayMessageCallback:(id)callback;
- (void)invitePersonInfo:(id)info withMessage:(id)message toChat:(id)chat style:(unsigned __int8)style;
- (void)mmsMessageReceived:(id)received msgID:(int64_t)d;
- (void)networkMonitorDidUpdate:(id)update;
- (void)processPartsOfTelephonyMessages:(id)messages parts:(id)parts messageItem:(id)item isGroupChat:(BOOL)chat phoneNumber:(id)number simID:(id)d;
- (void)refreshServiceCapabilities;
- (void)replayMessage:(id)message;
- (void)sendDeliveredQuietlyReceiptForMessage:(id)message forIncomingMessageFromIDSID:(id)d toChatGuid:(id)guid identifier:(id)identifier style:(unsigned __int8)style withWillSendToDestinationsHandler:(id)handler;
- (void)sendDeliveryReceiptForMessageID:(id)d toID:(id)iD deliveryContext:(id)context needsDeliveryReceipt:(id)receipt callerID:(id)callerID account:(id)account;
- (void)sendNotifyRecipientCommandForMessage:(id)message toChatGuid:(id)guid identifier:(id)identifier style:(unsigned __int8)style;
- (void)sendPlayedReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style;
- (void)sendSavedReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style;
- (void)sendSyndicationAction:(id)action toChatsWithIdentifiers:(id)identifiers;
- (void)sendUpdatedCollaborationMetadata:(id)metadata toChatsWithIdentifiers:(id)identifiers forMessageGUID:(id)d;
- (void)sessionDidBecomeActive;
- (void)sessionWillBecomeInactiveWithAccount:(id)account;
- (void)setMessageTypeForTelephonyMessage:(id)message shouldSendMMS:(BOOL)s;
- (void)setSubjectForTelephonyMessages:(id)messages messageItem:(id)item;
- (void)setTranscriptBackgroundAndSendToChat:(id)chat toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style transferID:(id)iD account:(id)account completion:(id)completion;
- (void)smsMessageReceived:(id)received msgID:(int64_t)d;
@end

@implementation SMSServiceSession

- (SMSServiceSession)initWithAccount:(id)account service:(id)service replicatingForSession:(id)session
{
  accountCopy = account;
  serviceCopy = service;
  sessionCopy = session;
  v22.receiver = self;
  v22.super_class = SMSServiceSession;
  v11 = [(SMSServiceSession *)&v22 initWithAccount:accountCopy service:serviceCopy replicatingForSession:sessionCopy];
  if (v11)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v21 = 0;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Setting up SMS service", v21, 2u);
      }
    }

    +[IMCTSMSUtilities IMSynchronizePreferredSubscriptionMMSCapabilityToWatch];
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v21 = 0;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Setting up push handler", v21, 2u);
      }
    }

    v14 = +[IMDRelayPushHandler sharedInstance];
    smsRelayPushHandler = v11->_smsRelayPushHandler;
    v11->_smsRelayPushHandler = v14;

    [(IMDRelayPushHandler *)v11->_smsRelayPushHandler addListener:v11];
    [(IMDRelayPushHandler *)v11->_smsRelayPushHandler setRegistered:1];
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *v21 = 0;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "...done", v21, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *v21 = 0;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Delegate setup", v21, 2u);
      }
    }

    v18 = [objc_alloc(IMWeakLinkClass()) initWithQueue:&_dispatch_main_q];
    coreTelephonyClient = v11->coreTelephonyClient;
    v11->coreTelephonyClient = v18;

    [(CoreTelephonyClient *)v11->coreTelephonyClient setDelegate:v11];
  }

  return v11;
}

- (void)dealloc
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Dealloc", buf, 2u);
    }
  }

  allValues = [(NSMutableDictionary *)self->_outgoingRelayMessageTimerMap allValues];
  [allValues makeObjectsPerformSelector:"invalidate"];

  [(IMDRelayPushHandler *)self->_smsRelayPushHandler removeListener:self];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:0 object:0];

  v6.receiver = self;
  v6.super_class = SMSServiceSession;
  [(SMSServiceSession *)&v6 dealloc];
}

- (void)_registerForIncomingMessages:(id)messages
{
  messagesCopy = messages;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Registering for incoming messages", v6, 2u);
    }
  }

  [(SMSServiceSession *)self _clearPendingIncomingMessageQueue];
}

- (void)sessionDidBecomeActive
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v12 = "[SMSServiceSession sessionDidBecomeActive]";
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  relayController = [(SMSServiceSession *)self relayController];
  [relayController updateMMSCapability];

  v5 = +[IMDLocalDaemon sharedDaemon];
  LODWORD(relayController) = [v5 isSetupComplete];

  v6 = IMOSLoggingEnabled();
  if (relayController)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Daemon is ready registering for incoming messages", buf, 2u);
      }
    }

    [(SMSServiceSession *)self _registerForIncomingMessages:0];
  }

  else
  {
    if (v6)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Daemon is not yet ready, watching for notification to register for incoming messages", buf, 2u);
      }
    }

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:self selector:"_registerForIncomingMessages:" name:kFZDaemonFinishedLaunchingNotification object:0];
  }

  v10.receiver = self;
  v10.super_class = SMSServiceSession;
  [(SMSServiceSession *)&v10 sessionDidBecomeActive];
}

- (void)sessionWillBecomeInactiveWithAccount:(id)account
{
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v10 = "[SMSServiceSession sessionWillBecomeInactiveWithAccount:]";
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  allValues = [(NSMutableDictionary *)self->_outgoingRelayMessageTimerMap allValues];
  [allValues makeObjectsPerformSelector:"invalidate"];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self name:kFZDaemonFinishedLaunchingNotification object:0];

  v8.receiver = self;
  v8.super_class = SMSServiceSession;
  [(SMSServiceSession *)&v8 sessionWillBecomeInactiveWithAccount:accountCopy];
}

- (BOOL)replicationRequirementsSatisfiedForPhoneNumber:(id)number simID:(id)d
{
  numberCopy = number;
  dCopy = d;
  v8 = +[IMCTSMSUtilities isMessagesTheDefaultTextApp];
  v9 = [IMCTSMSUtilities IMMMSGroupTextReplicationSupportedForPhoneNumber:numberCopy simID:dCopy];
  relayController = [(SMSServiceSession *)self relayController];
  v11 = [relayController _checkMMSEnablementForPhoneNumber:numberCopy simID:dCopy];

  v12 = [IMCTSMSUtilities IMMMSGroupTextOnlyMessagesSendAsMMSForPhoneNumber:numberCopy simID:dCopy];
  relayController2 = [(SMSServiceSession *)self relayController];
  _localDeviceSupportsSMS = [relayController2 _localDeviceSupportsSMS];

  relayController3 = [(SMSServiceSession *)self relayController];
  if ([relayController3 hasRelayDevice])
  {
    relayController4 = [(SMSServiceSession *)self relayController];
    _canRelayMMS = [relayController4 _canRelayMMS];
  }

  else
  {
    _canRelayMMS = 0;
  }

  if ((v11 & v12) == 1)
  {
    v18 = v9 & (_localDeviceSupportsSMS & v8 | _canRelayMMS);
  }

  else
  {
    v18 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = @"NO";
      v28 = 138414338;
      v29 = numberCopy;
      if (v18)
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      if (v8)
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      if (v11)
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      v30 = 2112;
      v31 = dCopy;
      v32 = 2112;
      v33 = v21;
      if (v12)
      {
        v24 = @"YES";
      }

      else
      {
        v24 = @"NO";
      }

      v34 = 2112;
      if (v9)
      {
        v25 = @"YES";
      }

      else
      {
        v25 = @"NO";
      }

      v35 = v22;
      if (_localDeviceSupportsSMS)
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      v36 = 2112;
      if (_canRelayMMS)
      {
        v20 = @"YES";
      }

      v37 = v23;
      v38 = 2112;
      v39 = v24;
      v40 = 2112;
      v41 = v25;
      v42 = 2112;
      v43 = v26;
      v44 = 2112;
      v45 = v20;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "Phone number %@ and SIMID %@ satisfy replication requirements %@ (Default text app: %@, MMS: %@ groups: %@ isEnabledByCarrier: %@ local SMS: %@ relay: %@)", &v28, 0x5Cu);
    }
  }

  return v18;
}

- (id)replicationPhoneNumbers
{
  v20.receiver = self;
  v20.super_class = SMSServiceSession;
  replicationPhoneNumbers = [(SMSServiceSession *)&v20 replicationPhoneNumbers];
  v3 = [replicationPhoneNumbers mutableCopy];

  v4 = +[IMCTSubscriptionUtilities sharedInstance];
  registeredPhoneNumbers = [v4 registeredPhoneNumbers];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = registeredPhoneNumbers;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
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

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = IMChatCanonicalIDSIDsForAddress();
        _stripFZIDPrefix = [v12 _stripFZIDPrefix];

        [v3 addObject:_stripFZIDPrefix];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [v3 copy];

  return v14;
}

- (BOOL)replicationRequiredForFeaturesUsedByMessageItem:(id)item
{
  itemCopy = item;
  v20.receiver = self;
  v20.super_class = SMSServiceSession;
  if ([(SMSServiceSession *)&v20 replicationRequiredForFeaturesUsedByMessageItem:itemCopy])
  {
    goto LABEL_17;
  }

  threadIdentifier = [itemCopy threadIdentifier];
  v6 = [threadIdentifier length] == 0;

  if (!v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        guid = [itemCopy guid];
        *buf = 138412290;
        v22 = guid;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Allowing replication for %@, has thread identifier", buf, 0xCu);
      }

LABEL_16:

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  fileTransferGUIDs = [itemCopy fileTransferGUIDs];
  v10 = [fileTransferGUIDs count] == 0;

  if (!v10)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        guid2 = [itemCopy guid];
        *buf = 138412290;
        v22 = guid2;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Allowing replication for %@, has file transfer GUIDs", buf, 0xCu);
      }

      goto LABEL_16;
    }

LABEL_17:
    v16 = 1;
    goto LABEL_18;
  }

  balloonBundleID = [itemCopy balloonBundleID];
  v13 = [balloonBundleID length] == 0;

  v14 = IMOSLoggingEnabled();
  if (!v13)
  {
    if (v14)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        guid3 = [itemCopy guid];
        *buf = 138412290;
        v22 = guid3;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Allowing replication for %@, has balloon bundle ID", buf, 0xCu);
      }

      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (v14)
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      guid4 = [itemCopy guid];
      *buf = 138412290;
      v22 = guid4;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "No replication needed for %@", buf, 0xCu);
    }
  }

  v16 = 0;
LABEL_18:

  return v16;
}

- (BOOL)isValidMMS:(id)s
{
  sCopy = s;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Validation: Attempting To Validate Message", buf, 2u);
    }
  }

  fileTransferGUIDs = [sCopy fileTransferGUIDs];
  if (![fileTransferGUIDs count])
  {

    goto LABEL_28;
  }

  balloonBundleID = [sCopy balloonBundleID];
  v7 = [balloonBundleID isEqualToString:IMBalloonPluginIdentifierRichLinks];

  if (v7)
  {
LABEL_28:
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "Validation: Message has no attachments or it is a rich link, fine to send", buf, 2u);
      }
    }

    LOBYTE(fileTransferGUIDs2) = 1;
    goto LABEL_37;
  }

  v8 = +[IMDFileTransferCenter sharedInstance];
  v9 = objc_alloc_init(NSMutableArray);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  fileTransferGUIDs2 = [sCopy fileTransferGUIDs];
  v11 = [fileTransferGUIDs2 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v11)
  {
    v12 = *v24;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(fileTransferGUIDs2);
        }

        v14 = [v8 transferForGUID:*(*(&v23 + 1) + 8 * i)];
        v15 = v14;
        if (v14)
        {
          type = [v14 type];
          if (![type length])
          {
            v21 = IMLogHandleForCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              sub_12000();
            }

            LOBYTE(fileTransferGUIDs2) = 0;
            goto LABEL_36;
          }

          [(__CFString *)v9 addObject:type];
        }
      }

      v11 = [fileTransferGUIDs2 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  LODWORD(fileTransferGUIDs2) = IMMMSPartCombinationCanBeSent();
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = v9;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Validation: Attempting to validate a message with UTIs %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = @"NO";
      if (fileTransferGUIDs2)
      {
        v19 = @"YES";
      }

      *buf = 138412546;
      v28 = v19;
      v29 = 2048;
      v30 = 0;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Validation: Is MMS Valid %@ With error %zd", buf, 0x16u);
    }
  }

LABEL_36:

LABEL_37:
  return fileTransferGUIDs2;
}

- (void)_buildCTPhoneNumberWithParticipantInfo:(id)info ctMessage:(id)message
{
  infoCopy = info;
  messageCopy = message;
  v7 = [infoCopy objectForKey:IMDMessageStoreHandleCanonicalIDKey];
  v8 = [infoCopy objectForKey:IMDMessageStoreHandleCountryCodeKey];
  v9 = [infoCopy objectForKey:IMDMessageStoreHandleUnformattedIDKey];
  v10 = +[IMDMessageStore sharedInstance];
  v11 = [v10 cleanUnformattedPhoneNumber:v9 countryCode:v8];

  if (IMStringIsEmail())
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = v7;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "   => Adding email recipient: %@", &v18, 0xCu);
      }
    }

    [messageCopy addEmailRecipient:v7];
  }

  else
  {
    if (![v8 length])
    {
      v13 = IMCountryCodeForIncomingTextMessage();

      v8 = v13;
    }

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v18 = 138412802;
        v19 = v7;
        v20 = 2112;
        v21 = v11;
        v22 = 2112;
        v23 = v8;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "   => Adding phone recipient: %@ (%@:%@)", &v18, 0x20u);
      }
    }

    if (v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v7;
    }

    v16 = [CTPhoneNumber phoneNumberWithDigits:1 digits:v15 countryCode:v8];
    if (v16)
    {
      [messageCopy addPhoneRecipient:v16];
    }

    else if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = 138412802;
        v19 = v7;
        v20 = 2112;
        v21 = v11;
        v22 = 2112;
        v23 = v8;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Failed to build phone CTPhoneNumber from string: %@ (%@:%@)", &v18, 0x20u);
      }
    }
  }
}

- (id)lastAddressedHandleForJunkReportMessageItem:(id)item
{
  itemCopy = item;
  v4 = +[IMCTSubscriptionUtilities sharedInstance];
  ctSubscriptionInfo = [v4 ctSubscriptionInfo];
  destinationCallerID = [itemCopy destinationCallerID];
  destinationCallerID2 = [itemCopy destinationCallerID];

  v8 = [ctSubscriptionInfo __im_subscriptionContextForForSimID:destinationCallerID phoneNumber:destinationCallerID2];

  phoneNumber = [v8 phoneNumber];

  return phoneNumber;
}

- (id)lastAddressedSIMIDForJunkReportMessageItem:(id)item
{
  itemCopy = item;
  v4 = +[IMCTSubscriptionUtilities sharedInstance];
  ctSubscriptionInfo = [v4 ctSubscriptionInfo];
  destinationCallerID = [itemCopy destinationCallerID];
  destinationCallerID2 = [itemCopy destinationCallerID];

  v8 = [ctSubscriptionInfo __im_subscriptionContextForForSimID:destinationCallerID phoneNumber:destinationCallerID2];

  labelID = [v8 labelID];

  return labelID;
}

- (id)newTelephonyMessagesForHandles:(id)handles shouldBroadcastMessage:(BOOL)message
{
  messageCopy = message;
  handlesCopy = handles;
  v6 = objc_alloc_init(NSMutableArray);
  v7 = IMOSLoggingEnabled();
  if (messageCopy)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v14[0] = 67109120;
        v14[1] = [handlesCopy count];
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, " => This is a broadcast, generating %d CTMessage objects", v14, 8u);
      }
    }

    if ([handlesCopy count])
    {
      v9 = 0;
      do
      {
        v10 = objc_alloc_init(CTMessage);
        [v6 addObject:v10];

        ++v9;
      }

      while (v9 < [handlesCopy count]);
    }
  }

  else
  {
    if (v7)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14[0]) = 0;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, " => Generating a single CTMessage", v14, 2u);
      }
    }

    v12 = objc_alloc_init(CTMessage);
    [v6 addObject:v12];
  }

  return v6;
}

- (void)setSubjectForTelephonyMessages:(id)messages messageItem:(id)item
{
  messagesCopy = messages;
  itemCopy = item;
  subject = [itemCopy subject];
  v8 = [subject length];

  if (v8)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = messagesCopy;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v16 + 1) + 8 * v13);
          subject2 = [itemCopy subject];
          [v14 setSubject:subject2];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }
}

- (void)processPartsOfTelephonyMessages:(id)messages parts:(id)parts messageItem:(id)item isGroupChat:(BOOL)chat phoneNumber:(id)number simID:(id)d
{
  chatCopy = chat;
  messagesCopy = messages;
  partsCopy = parts;
  itemCopy = item;
  numberCopy = number;
  dCopy = d;
  v63 = partsCopy;
  if ([partsCopy count])
  {
    v15 = sub_D19C(partsCopy);
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v92 = v15;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Generated SMIL string: %@", buf, 0xCu);
      }
    }

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v17 = messagesCopy;
    v18 = [v17 countByEnumeratingWithState:&v86 objects:v99 count:16];
    if (v18)
    {
      v19 = *v87;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v87 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = [*(*(&v86 + 1) + 8 * i) addText:v15];
          guid = [itemCopy guid];
          [(SMSServiceSession *)self _setContentIDAndLocationForSMILPart:v21 messageGUID:guid isGroupChat:chatCopy phoneNumber:numberCopy simID:dCopy];

          [v21 setContentType:IMDCTPartDictionaryContentTypeSMILKey];
        }

        v18 = [v17 countByEnumeratingWithState:&v86 objects:v99 count:16];
      }

      while (v18);
    }
  }

  v68 = objc_alloc_init(NSMutableSet);
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = messagesCopy;
  v64 = [obj countByEnumeratingWithState:&v82 objects:v98 count:16];
  if (v64)
  {
    v23 = &stru_25000;
    v62 = *v83;
    do
    {
      v24 = 0;
      name = v23[143].name;
      do
      {
        if (*v83 != v62)
        {
          v25 = v24;
          objc_enumerationMutation(obj);
          v24 = v25;
        }

        v65 = v24;
        v72 = *(*(&v82 + 1) + 8 * v24);
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v70 = v63;
        v26 = [v70 countByEnumeratingWithState:&v78 objects:v97 count:16];
        if (v26)
        {
          v27 = 0;
          v71 = *v79;
          do
          {
            for (j = 0; j != v26; j = j + 1)
            {
              if (*v79 != v71)
              {
                objc_enumerationMutation(v70);
              }

              v29 = *(*(&v78 + 1) + 8 * j);
              v30 = [v29 objectForKey:@"Type"];
              v31 = sub_D034(v30);

              v32 = [v29 objectForKey:@"Filename"];
              if (v32)
              {
                v33 = [NSURL fileURLWithPath:v32];
                v34 = [NSData dataWithContentsOfURL:v33 options:1 error:0];

                v35 = IMSafeTemporaryDirectory();
                path = [v35 path];

                if (!path)
                {
                  path = @"/tmp";
                }

                if ([v32 hasPrefix:path])
                {
                  [v68 addObject:v32];
                  if (IMOSLoggingEnabled())
                  {
                    v37 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      *v92 = v32;
                      _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "  => setting file to cleanup: %@", buf, 0xCu);
                    }
                  }
                }
              }

              else
              {
                v34 = [v29 objectForKey:@"Data"];
              }

              v38 = [v29 objectForKey:@"Path"];
              if (chatCopy)
              {
                guid2 = [itemCopy guid];
                off_26418 = [NSString stringWithFormat:@"%d.%@%@", v27, guid2, off_26418];
              }

              else
              {
                off_26418 = [NSString stringWithFormat:@"%d", v27];
              }

              if (IMOSLoggingEnabled())
              {
                v41 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                {
                  v42 = [v34 length];
                  *buf = 67109890;
                  *v92 = v42;
                  *&v92[4] = 2112;
                  *&v92[6] = v38;
                  v93 = 2112;
                  v94 = off_26418;
                  v95 = 2112;
                  v96 = v31;
                  _os_log_impl(&dword_0, v41, OS_LOG_TYPE_INFO, "  => adding data: %d bytes (location: %@, id: %@, type: %@)", buf, 0x26u);
                }
              }

              v43 = [[CTMessagePart alloc] initWithData:v34 contentType:v31];
              [v43 setContentId:off_26418];
              [v43 setContentLocation:v38];
              if (IMOSLoggingEnabled())
              {
                v44 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  *v92 = v43;
                  _os_log_impl(&dword_0, v44, OS_LOG_TYPE_INFO, "  => adding part: %@", buf, 0xCu);
                }
              }

              v45 = [v72 addPart:v43];

              v27 = (v27 + 1);
            }

            v26 = [v70 countByEnumeratingWithState:&v78 objects:v97 count:16];
          }

          while (v26);
        }

        criticalMessagingAppName = [itemCopy criticalMessagingAppName];
        v47 = [criticalMessagingAppName length] == 0;

        if (!v47)
        {
          v48 = objc_opt_respondsToSelector();
          v49 = IMOSLoggingEnabled();
          if (v48)
          {
            if (v49)
            {
              v50 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
              {
                criticalMessagingAppName2 = [itemCopy criticalMessagingAppName];
                *buf = 138412290;
                *v92 = criticalMessagingAppName2;
                _os_log_impl(&dword_0, v50, OS_LOG_TYPE_INFO, "  => Setting appCheckBypassForCriticalMessaging in CTMessage %@", buf, 0xCu);
              }
            }

            [v72 setAppCheckBypassForCriticalMessaging:1];
          }

          else if (v49)
          {
            v52 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v52, OS_LOG_TYPE_INFO, "  => Couldn't set appCheckBypassForCriticalMessaging as CTMessage doesn't support it yet", buf, 2u);
            }
          }
        }

        v24 = v65 + 1;
      }

      while ((v65 + 1) != v64);
      v64 = [obj countByEnumeratingWithState:&v82 objects:v98 count:16];
      v23 = &stru_25000;
    }

    while (v64);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v53 = v68;
  v54 = [v53 countByEnumeratingWithState:&v74 objects:v90 count:16];
  if (v54)
  {
    v55 = *v75;
    do
    {
      for (k = 0; k != v54; k = k + 1)
      {
        if (*v75 != v55)
        {
          objc_enumerationMutation(v53);
        }

        v57 = *(*(&v74 + 1) + 8 * k);
        if (IMOSLoggingEnabled())
        {
          v58 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *v92 = v57;
            _os_log_impl(&dword_0, v58, OS_LOG_TYPE_INFO, "Cleaning up: %@", buf, 0xCu);
          }
        }

        v59 = +[NSFileManager defaultManager];
        [v59 removeItemAtPath:v57 error:0];
      }

      v54 = [v53 countByEnumeratingWithState:&v74 objects:v90 count:16];
    }

    while (v54);
  }
}

- (void)_setContentIDAndLocationForSMILPart:(id)part messageGUID:(id)d isGroupChat:(BOOL)chat phoneNumber:(id)number simID:(id)iD
{
  chatCopy = chat;
  partCopy = part;
  dCopy = d;
  numberCopy = number;
  iDCopy = iD;
  if (chatCopy)
  {
    off_26418 = [NSString stringWithFormat:@"0.%@%@.smil", dCopy, off_26418];
    if ([IMCTSMSUtilities IMMMSGroupTextReplicationSupportsSMILContentLocationForPhoneNumber:numberCopy simID:iDCopy])
    {
      off_26418 = off_26418;
      v15 = off_26418;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
    off_26418 = @"0.smil";
  }

  if ([(__CFString *)off_26418 length])
  {
    [partCopy setContentId:off_26418];
  }

  if ([(__CFString *)v15 length])
  {
    [partCopy setContentLocation:off_26418];
  }
}

- (void)buildTelephonyPhoneNumbersForTelephonyMessages:(id)messages shouldBroadcastMessage:(BOOL)message handles:(id)handles
{
  messageCopy = message;
  messagesCopy = messages;
  handlesCopy = handles;
  if (messageCopy)
  {
    if ([messagesCopy count])
    {
      v10 = 0;
      do
      {
        v11 = [handlesCopy objectAtIndex:v10];
        v12 = [messagesCopy objectAtIndex:v10];
        [(SMSServiceSession *)self _buildCTPhoneNumberWithParticipantInfo:v11 ctMessage:v12];

        ++v10;
      }

      while (v10 < [messagesCopy count]);
    }
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = [messagesCopy countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v29;
      obj = messagesCopy;
      do
      {
        v16 = 0;
        do
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v28 + 1) + 8 * v16);
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v18 = handlesCopy;
          v19 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v25;
            do
            {
              v22 = 0;
              do
              {
                if (*v25 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                [(SMSServiceSession *)self _buildCTPhoneNumberWithParticipantInfo:*(*(&v24 + 1) + 8 * v22) ctMessage:v17];
                v22 = v22 + 1;
              }

              while (v20 != v22);
              v20 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v20);
          }

          v16 = v16 + 1;
        }

        while (v16 != v14);
        messagesCopy = obj;
        v14 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v14);
    }
  }
}

- (void)setMessageTypeForTelephonyMessage:(id)message shouldSendMMS:(BOOL)s
{
  if (s)
  {
    [message setMessageType:2];
  }

  else
  {
    [message setMessageType:1];
  }
}

- (void)addMessagePlainTextToTelephonyMessages:(id)messages messageItem:(id)item processedMessageItem:(id)messageItem
{
  messagesCopy = messages;
  v8 = [IMDTelephonyServiceSession getPlainTextForMessage:item processedMessageItem:messageItem];
  if ([v8 length])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = messagesCopy;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v15 + 1) + 8 * v13) addText:{v8, v15}];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }
}

- (void)_reportTelephonyJunkForMessageItem:(id)item chat:(id)chat
{
  itemCopy = item;
  chatCopy = chat;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Sending junk report...", buf, 2u);
    }
  }

  account = [(SMSServiceSession *)self account];
  style = [chatCopy style];
  account2 = [(SMSServiceSession *)self account];
  service = [account2 service];
  internalName = [service internalName];
  v14 = [IMDCarrierReportJunkHelper junkReportMessageItemForMessageItem:itemCopy account:account junkChatStyle:style serviceName:internalName];

  v15 = [IMDHandle alloc];
  handle = [v14 handle];
  unformattedID = [v14 unformattedID];
  countryCode = [v14 countryCode];
  v19 = [v15 initWithID:handle unformattedID:unformattedID countryCode:countryCode];

  v20 = +[IMDMessageStore sharedInstance];
  v27 = v19;
  v21 = [NSArray arrayWithObjects:&v27 count:1];
  service2 = [(SMSServiceSession *)self service];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_4AB8;
  v24[3] = &unk_20800;
  v24[4] = self;
  v25 = v14;
  v23 = v14;
  [v20 resolveUnformattedRepresentationsForHandles:v21 onService:service2 message:v23 completionBlock:v24];
}

- (void)refreshServiceCapabilities
{
  broadcaster = [(SMSServiceSession *)self broadcaster];
  accountID = [(SMSServiceSession *)self accountID];
  [broadcaster account:accountID capabilitiesChanged:{-[SMSServiceSession capabilities](self, "capabilities")}];
}

- (void)invitePersonInfo:(id)info withMessage:(id)message toChat:(id)chat style:(unsigned __int8)style
{
  styleCopy = style;
  infoCopy = info;
  messageCopy = message;
  chatCopy = chat;
  v36 = styleCopy;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v39 = infoCopy;
      v40 = 2112;
      v41 = chatCopy;
      v42 = 1024;
      v43 = styleCopy;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Request to invite person: %@   chat: %@  style: %c", buf, 0x1Cu);
    }
  }

  v35 = chatCopy;
  [(SMSServiceSession *)self canonicalizeChatIdentifier:&v35 style:&v36];
  v30 = v35;

  if (v30)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = infoCopy;
    v12 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v12)
    {
      v28 = *v32;
      v27 = kFZPersonID;
      v26 = kFZPersonUnformattedName;
      v13 = kFZPersonCountryCode;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v32 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v31 + 1) + 8 * i);
          v16 = [v15 objectForKey:v27];
          v17 = [v15 objectForKey:v26];
          v18 = [v15 objectForKey:v13];
          v19 = v36;
          account = [(SMSServiceSession *)self account];
          destinationCallerID = [messageCopy destinationCallerID];
          LOBYTE(v23) = v19;
          v22 = [(SMSServiceSession *)self didChangeMemberStatus:2 forHandle:v16 fromHandle:0 unformattedNumber:v17 countryCode:v18 forChat:v30 style:v23 account:account destinationCallerID:destinationCallerID];
        }

        v12 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v12);
    }
  }
}

- (void)_joinOneToOneChatWithChatIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v9[0] = kFZChatParticipantStatusKey;
    v9[1] = kFZPersonID;
    v10[0] = &off_217E8;
    v10[1] = identifierCopy;
    v5 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
    v11 = v5;
    v6 = [NSArray arrayWithObjects:&v11 count:1];

    [(SMSServiceSession *)self didJoinChat:identifierCopy style:45 displayName:0 groupID:0 handleInfo:v6];
  }

  else if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Cannot attempt to join chat with empty chat identifier", v8, 2u);
    }
  }
}

- (void)sendDeliveredQuietlyReceiptForMessage:(id)message forIncomingMessageFromIDSID:(id)d toChatGuid:(id)guid identifier:(id)identifier style:(unsigned __int8)style withWillSendToDestinationsHandler:(id)handler
{
  messageCopy = message;
  dCopy = d;
  guidCopy = guid;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = messageCopy;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Not sending delivered quietly receipt for item: %@", &v20, 0xCu);
    }
  }

  guid = [messageCopy guid];
  [(SMSServiceSession *)self didSendDeliveredQuietlyReceiptForMessageID:guid];
}

- (void)sendNotifyRecipientCommandForMessage:(id)message toChatGuid:(id)guid identifier:(id)identifier style:(unsigned __int8)style
{
  messageCopy = message;
  guidCopy = guid;
  identifierCopy = identifier;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = messageCopy;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Not sending notify recipient command for item: %@", &v14, 0xCu);
    }
  }

  guid = [messageCopy guid];
  [(SMSServiceSession *)self didSendNotifyRecipientCommandForMessageID:guid];
}

- (void)sendPlayedReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style
{
  messageCopy = message;
  dCopy = d;
  identifierCopy = identifier;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = messageCopy;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Marking message as played: %@", &v14, 0xCu);
    }
  }

  guid = [messageCopy guid];
  [(SMSServiceSession *)self didSendMessagePlayedReceiptForMessageID:guid];
}

- (void)sendSavedReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style
{
  messageCopy = message;
  dCopy = d;
  identifierCopy = identifier;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = messageCopy;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Marking message as saved: %@", &v14, 0xCu);
    }
  }

  guid = [messageCopy guid];
  [(SMSServiceSession *)self didSendMessageSavedReceiptForMessageID:guid];
}

- (void)sendDeliveryReceiptForMessageID:(id)d toID:(id)iD deliveryContext:(id)context needsDeliveryReceipt:(id)receipt callerID:(id)callerID account:(id)account
{
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  receiptCopy = receipt;
  callerIDCopy = callerID;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "Not sending delivery receipt", v20, 2u);
    }
  }
}

- (void)sendSyndicationAction:(id)action toChatsWithIdentifiers:(id)identifiers
{
  actionCopy = action;
  identifiersCopy = identifiers;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Not sending syndication action", v8, 2u);
    }
  }
}

- (void)sendUpdatedCollaborationMetadata:(id)metadata toChatsWithIdentifiers:(id)identifiers forMessageGUID:(id)d
{
  metadataCopy = metadata;
  identifiersCopy = identifiers;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Not sending updated collaboration metadata", v11, 2u);
    }
  }
}

- (void)setTranscriptBackgroundAndSendToChat:(id)chat toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style transferID:(id)iD account:(id)account completion:(id)completion
{
  chatCopy = chat;
  dCopy = d;
  identifierCopy = identifier;
  iDCopy = iD;
  accountCopy = account;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "Not sending transcript background.", v20, 2u);
    }
  }
}

- (BOOL)_sendMessageOverAlternatePath:(id)path toChat:(id)chat
{
  pathCopy = path;
  chatCopy = chat;
  v7 = +[IMFeatureFlags sharedFeatureFlags];
  stewieEnabled = [v7 stewieEnabled];

  if (stewieEnabled && [chatCopy isStewieChat])
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "This is an emergency message asked to be sent over Stewie: Sending Message via Stewie", v13, 2u);
      }
    }

    v10 = +[IMDChorosController sharedController];
    [v10 sendStewieMessage:pathCopy forChat:chatCopy];

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)_sendingDecisionForMessageItem:(id)item callerID:(id)d lastAddressedLocalHandle:(id)handle lastAddressedSIMID:(id)iD
{
  itemCopy = item;
  dCopy = d;
  handleCopy = handle;
  iDCopy = iD;
  v14 = +[IMCTSMSUtilities isMessagesTheDefaultTextApp];
  relayController = [(SMSServiceSession *)self relayController];
  _localDeviceSupportsEmergencySMS = [relayController _localDeviceSupportsEmergencySMS];

  if (itemCopy)
  {
    v17 = +[IDSCTAdapter sharedInstance];
    handle = [itemCopy handle];
    v19 = [v17 isPhoneNumberEmergencyNumber:handle];
  }

  else
  {
    v19 = 0;
  }

  criticalMessagingAppName = [itemCopy criticalMessagingAppName];
  v21 = [criticalMessagingAppName length];

  if (_localDeviceSupportsEmergencySMS && (([itemCopy useStandalone] | v19) & v14 & 1) != 0)
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "This is an emergency message asked to be sent over CT: Sending Message via CT", buf, 2u);
      }
    }

    v23 = &dword_0 + 1;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        useStandalone = [itemCopy useStandalone];
        v26 = @"NO";
        if (_localDeviceSupportsEmergencySMS)
        {
          v27 = @"YES";
        }

        else
        {
          v27 = @"NO";
        }

        if (useStandalone)
        {
          v28 = @"YES";
        }

        else
        {
          v28 = @"NO";
        }

        *buf = 138413058;
        v33 = v27;
        if (v19)
        {
          v29 = @"YES";
        }

        else
        {
          v29 = @"NO";
        }

        v34 = 2112;
        v35 = v28;
        v36 = 2112;
        v37 = v29;
        if (v21)
        {
          v26 = @"YES";
        }

        v38 = 2112;
        v39 = v26;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "canSendEmergencySMS: %@, non emergency (standalone: %@ isEmergency: %@ isCritical: %@), checking super for sending decision", buf, 0x2Au);
      }
    }

    v31.receiver = self;
    v31.super_class = SMSServiceSession;
    v23 = [(SMSServiceSession *)&v31 _sendingDecisionForMessageItem:itemCopy callerID:dCopy lastAddressedLocalHandle:handleCopy lastAddressedSIMID:iDCopy];
  }

  return v23;
}

- (BOOL)allowedToSendMessage:(id)message toChat:(id)chat
{
  messageCopy = message;
  chatCopy = chat;
  if (([messageCopy isFinished] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        guid = [messageCopy guid];
        *buf = 138412290;
        v16 = guid;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Not sending unfinished message %@", buf, 0xCu);
      }
    }

    goto LABEL_14;
  }

  v14.receiver = self;
  v14.super_class = SMSServiceSession;
  if (![(SMSServiceSession *)&v14 allowedToSendMessage:messageCopy toChat:chatCopy])
  {
LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  if (![(SMSServiceSession *)self isValidMMS:messageCopy])
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        guid2 = [messageCopy guid];
        *buf = 138412290;
        v16 = guid2;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Message with guid: %@ is an invalid MMS message, marking as failed and not forwarding to clients", buf, 0xCu);
      }
    }

    [messageCopy setErrorCode:4];
    goto LABEL_14;
  }

  v8 = 1;
LABEL_15:

  return v8;
}

- (BOOL)_shouldFailSMSMessageForTesting:(id)testing chatIdentifier:(id)identifier chatStyle:(unsigned __int8)style
{
  testingCopy = testing;
  identifierCopy = identifier;
  v8 = IMGetCachedDomainBoolForKey();
  if (v8)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v15 = 0x4010000000000000;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, " ** FailSendingSMSMessages is enabled, failing send message after %f seconds", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v15 = 0x4010000000000000;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, " ** FailSendingSMSMessages is enabled, failing send message after %f seconds", buf, 0xCu);
      }
    }

    v12 = testingCopy;
    v13 = identifierCopy;
    im_dispatch_after();
  }

  return v8;
}

- (BOOL)shouldFixIncomingDate
{
  v2 = [IDSServerBag sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"fix-sms-date"];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = @"NO";
        if (bOOLValue)
        {
          v7 = @"YES";
        }

        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Server tells us to fix the date: %@", &v9, 0xCu);
      }
    }
  }

  else
  {
    LOBYTE(bOOLValue) = 1;
  }

  return bOOLValue;
}

- (id)_fixIncomingDate:(id)date
{
  dateCopy = date;
  if ([(SMSServiceSession *)self shouldFixIncomingDate])
  {
    v5 = +[NSDate date];

    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v9 = 138412546;
        v10 = dateCopy;
        v11 = 2112;
        v12 = v5;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Fixing the CT Message date (%@) with the current server time (%@)", &v9, 0x16u);
      }
    }
  }

  else
  {
    v5 = dateCopy;
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "We are taking the CT Message date", &v9, 2u);
      }

      v5 = dateCopy;
    }
  }

  return v5;
}

- (id)_convertCTMessageToDictionary:(id)dictionary requiresUpload:(BOOL *)upload
{
  dictionaryCopy = dictionary;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Converting CT Message to NSDictionary", buf, 2u);
    }
  }

  if (upload)
  {
    *upload = 0;
  }

  theDict = objc_alloc_init(NSMutableDictionary);
  [(__CFDictionary *)theDict setObject:@"1" forKey:IMDCTMessageDictionaryVersionKey];
  if ([dictionaryCopy messageType] == 1)
  {
    v5 = IMDCTMessageDictionaryTypeSMS;
    if (v5)
    {
      goto LABEL_14;
    }

    v6 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_120A4();
    }
  }

  else if ([dictionaryCopy messageType] == 2)
  {
    v5 = IMDCTMessageDictionaryTypeMMS;
    if (v5)
    {
      goto LABEL_14;
    }

    v7 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_120A4();
    }
  }

  else
  {
    v5 = IMDCTMessageDictionaryTypeUnknown;
    if (v5)
    {
LABEL_14:
      CFDictionarySetValue(theDict, IMDCTMessageDictionaryTypeKey, v5);
      goto LABEL_24;
    }

    v8 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_120A4();
    }
  }

LABEL_24:
  sender = [dictionaryCopy sender];
  canonicalFormat = [sender canonicalFormat];

  v96 = IMGetDomainValueForKey();

  if ([v96 length])
  {
    v11 = v96;

    canonicalFormat = v11;
  }

  v12 = canonicalFormat;
  if (v12)
  {
    v13 = v12;
    CFDictionarySetValue(theDict, IMDCTMessageDictionarySenderKey, v12);
    v12 = v13;
  }

  v94 = v12;

  v14 = objc_alloc_init(NSMutableArray);
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  recipients = [dictionaryCopy recipients];
  v16 = [recipients countByEnumeratingWithState:&v105 objects:v118 count:16];
  if (v16)
  {
    v17 = *v106;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v106 != v17)
        {
          objc_enumerationMutation(recipients);
        }

        canonicalFormat2 = [*(*(&v105 + 1) + 8 * i) canonicalFormat];
        if (canonicalFormat2)
        {
          [v14 addObject:canonicalFormat2];
        }
      }

      v16 = [recipients countByEnumeratingWithState:&v105 objects:v118 count:16];
    }

    while (v16);
  }

  date = [dictionaryCopy date];
  v21 = [(SMSServiceSession *)self _fixIncomingDate:date];

  v22 = +[IMCTSMSUtilities myCTPhoneNumber];
  if (IMSharedHelperDeviceHasMultipleSubscriptions())
  {
    context = [dictionaryCopy context];
    v24 = +[IMCTSubscriptionUtilities sharedInstance];
    ctSubscriptionInfo = [v24 ctSubscriptionInfo];

    labelID2 = 0;
    if (context && ctSubscriptionInfo)
    {
      v27 = [ctSubscriptionInfo __im_subscriptionContextOrDefaultForForSlotID:{objc_msgSend(context, "slotID")}];
      if (v27)
      {
        if (IMOSLoggingEnabled())
        {
          v28 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            phoneNumber = [(__CFString *)v27 phoneNumber];
            labelID = [(__CFString *)v27 labelID];
            v30 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [context slotID]);
            *buf = 138413058;
            v111 = v27;
            v112 = 2112;
            v113 = phoneNumber;
            v114 = 2112;
            v115 = labelID;
            v116 = 2112;
            v117 = v30;
            _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "Setting receiving context = %@, phoneNumber = %@, simID = %@ for given slotID %@", buf, 0x2Au);
          }
        }

        phoneNumber2 = [(__CFString *)v27 phoneNumber];

        labelID2 = [(__CFString *)v27 labelID];
        v22 = phoneNumber2;
      }

      else
      {
        labelID2 = 0;
      }
    }
  }

  else
  {
    labelID2 = 0;
  }

  relayController = [(SMSServiceSession *)self relayController];
  isSMSRelayEnabled = [relayController isSMSRelayEnabled];

  if (isSMSRelayEnabled)
  {
    v34 = [IMCTSMSUtilities IMCountryCodeForPhoneNumber:v22 simID:labelID2];
  }

  else
  {
    v34 = 0;
  }

  v35 = v14;
  if (v35)
  {
    v36 = v35;
    CFDictionarySetValue(theDict, IMDCTMessageDictionaryReceipientsKey, v35);
    v35 = v36;
  }

  v88 = v35;

  v37 = v21;
  if (v37)
  {
    v38 = v37;
    CFDictionarySetValue(theDict, IMDCTMessageDictionaryDateKey, v37);
    v37 = v38;
  }

  v87 = v37;

  serviceCenter = [dictionaryCopy serviceCenter];
  canonicalFormat3 = [serviceCenter canonicalFormat];

  if (canonicalFormat3)
  {
    CFDictionarySetValue(theDict, IMDCTMessageDictionaryServiceCenterKey, canonicalFormat3);
  }

  v41 = v22;
  if (v41)
  {
    v42 = v41;
    CFDictionarySetValue(theDict, IMDCTMessageDictionaryOriginatedDeviceNumberKey, v41);
    v41 = v42;
  }

  v93 = v41;

  v43 = labelID2;
  if (v43)
  {
    v44 = v43;
    CFDictionarySetValue(theDict, IMDCTMessageDictionaryOriginatedDeviceSIMKey, v43);
    v43 = v44;
  }

  v92 = v43;

  subject = [dictionaryCopy subject];
  if (subject)
  {
    CFDictionarySetValue(theDict, IMDCTMessageDictionarySubjectKey, subject);
  }

  contentType = [dictionaryCopy contentType];
  if (contentType)
  {
    CFDictionarySetValue(theDict, IMDCTMessageDictionaryContentTypeKey, contentType);
  }

  v47 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [dictionaryCopy replaceMessage]);
  if (v47)
  {
    CFDictionarySetValue(theDict, IMDCTMessageDictionaryReplaceMessageKey, v47);
  }

  v48 = v34;
  if (v48)
  {
    v49 = v48;
    CFDictionarySetValue(theDict, IMDCTMessageDictionaryCountryCodeKey, v48);
    v48 = v49;
  }

  v86 = v48;

  v50 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [dictionaryCopy replyEnabled]);
  if (v50)
  {
    CFDictionarySetValue(theDict, IMDCTMessageDictionarySendEnabledKey, v50);
  }

  if (IMOSLoggingEnabled())
  {
    v51 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      replyEnabled = [dictionaryCopy replyEnabled];
      v53 = @"NO";
      if (replyEnabled)
      {
        v53 = @"YES";
      }

      *buf = 138412290;
      v111 = v53;
      _os_log_impl(&dword_0, v51, OS_LOG_TYPE_INFO, "Telephony reply enabled: %@", buf, 0xCu);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    uniqueIdentifier = [dictionaryCopy uniqueIdentifier];

    v55 = uniqueIdentifier;
  }

  else
  {
    v55 = 0;
  }

  v89 = v55;
  if (objc_opt_respondsToSelector())
  {
    uUIDString = [v89 UUIDString];
  }

  else
  {
    uUIDString = 0;
  }

  v95 = [IMCTSMSUtilities IMMMSEmailAddressToMatchForPhoneNumber:v93 simID:v92];
  if ([v95 length])
  {
    v57 = v95;
    if (v57)
    {
      CFDictionarySetValue(theDict, IMDCTMessageDictionaryOriginatedDeviceEmailKey, v57);
    }
  }

  if (uUIDString)
  {
    v58 = uUIDString;
LABEL_92:
    v91 = v58;
    CFDictionarySetValue(theDict, IMDCTMessageDictionaryGUIDKey, v58);

    goto LABEL_93;
  }

  v58 = StringGUID();
  if (v58)
  {
    goto LABEL_92;
  }

  v91 = 0;
LABEL_93:
  v59 = IMChatCanonicalIDSIDsForAddress();
  lowercaseString = [v59 lowercaseString];
  v61 = [NSMutableString stringWithFormat:@"s:%@", lowercaseString];

  v62 = objc_alloc_init(NSMutableArray);
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  items = [dictionaryCopy items];
  v64 = [items countByEnumeratingWithState:&v101 objects:v109 count:16];
  if (v64)
  {
    v65 = *v102;
    do
    {
      for (j = 0; j != v64; j = j + 1)
      {
        if (*v102 != v65)
        {
          objc_enumerationMutation(items);
        }

        v67 = *(*(&v101 + 1) + 8 * j);
        v68 = [(SMSServiceSession *)self _convertCTMessagePartToDictionary:v67];
        if (v68)
        {
          v69 = [IMDXMSUtilities calculateFallbackHashFragmentFor:v68];
          [v61 appendString:v69];
          [v62 addObject:v68];
        }

        else if (IMOSLoggingEnabled())
        {
          v70 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v111 = v67;
            _os_log_impl(&dword_0, v70, OS_LOG_TYPE_INFO, "Empty message part dictionary generated from: %@", buf, 0xCu);
          }
        }
      }

      v64 = [items countByEnumeratingWithState:&v101 objects:v109 count:16];
    }

    while (v64);
  }

  if (IMOSLoggingEnabled())
  {
    v71 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
    {
      v72 = [v61 length];
      *buf = 134217984;
      v111 = v72;
      _os_log_impl(&dword_0, v71, OS_LOG_TYPE_INFO, "Generated fallback hash with length %llu for message", buf, 0xCu);
    }
  }

  v73 = v61;
  if (v73)
  {
    CFDictionarySetValue(theDict, IMDCTMessageDictionaryFallbackHashKey, v73);
  }

  v74 = v62;
  if (v74)
  {
    CFDictionarySetValue(theDict, IMDCTMessageDictionaryItemsKey, v74);
  }

  CFDictionarySetValue(theDict, IMDRelaySpamSubCategoryKey, &off_21800);
  filteringController = [(SMSServiceSession *)self filteringController];
  _isSpamFilteringEnabled = [filteringController _isSpamFilteringEnabled];

  filteringController2 = [(SMSServiceSession *)self filteringController];
  v78 = [filteringController2 _newSMSFilteringSettingsDictForFilterState:_isSpamFilteringEnabled];
  [(__CFDictionary *)theDict addEntriesFromDictionary:v78];

  LODWORD(filteringController2) = [IMCTSMSUtilities shouldUploadToMMCS:theDict];
  v79 = IMOSLoggingEnabled();
  if (filteringController2)
  {
    if (v79)
    {
      v80 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v80, OS_LOG_TYPE_INFO, "We were told this message has things that make it to large to send by itself over IDS, If we choose to send this message onwards, it will require upload to MMCS", buf, 2u);
      }
    }

    if (upload)
    {
      *upload = 1;
    }
  }

  else if (v79)
  {
    v81 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v81, OS_LOG_TYPE_INFO, "This Message is JUST the right size that we can send it over IDS, so let it go on its way", buf, 2u);
    }
  }

  if ((IMGetCachedDomainBoolForKey() & 1) == 0)
  {
    v82 = +[CTMessageCenter sharedMessageCenter];
    [v82 acknowledgeIncomingMessageWithId:{objc_msgSend(dictionaryCopy, "messageId")}];
  }

  if (IMOSLoggingEnabled())
  {
    v83 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v83, OS_LOG_TYPE_INFO, "Finished Converting CTMessage To NSDictionary", buf, 2u);
    }
  }

  v84 = theDict;

  return theDict;
}

- (id)_convertCTMessagePartToDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = dictionaryCopy;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Parsing message part: %@", &v11, 0xCu);
    }
  }

  v5 = objc_alloc_init(NSMutableDictionary);
  contentType = [dictionaryCopy contentType];
  if (contentType)
  {
    CFDictionarySetValue(v5, IMDCTPartDictionaryContentTypeKey, contentType);
  }

  contentId = [dictionaryCopy contentId];
  if (contentId)
  {
    CFDictionarySetValue(v5, IMDCTPartDictionaryContentIDKey, contentId);
  }

  contentLocation = [dictionaryCopy contentLocation];
  if (contentLocation)
  {
    CFDictionarySetValue(v5, IMDCTPartDictionaryContentLocationKey, contentLocation);
  }

  data = [dictionaryCopy data];
  if (data)
  {
    CFDictionarySetValue(v5, IMDCTPartDictionaryContentDataKey, data);
  }

  return v5;
}

- (unsigned)_generateMessageIDForMessageGUID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    v5 = [(NSMutableDictionary *)self->_outgoingMessageMap objectForKey:dCopy];
    if (v5)
    {
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v14 = 138412546;
          v15 = dCopy;
          v16 = 2112;
          v17 = v5;
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Using existing mapping mapping from %@ to %@", &v14, 0x16u);
        }
      }

      unsignedIntValue = [v5 unsignedIntValue];
    }

    else
    {
      0x186A0 = [NSNumber numberWithUnsignedInt:FastRandomUInt() % 0x186A0];
      outgoingMessageMap = self->_outgoingMessageMap;
      if (!outgoingMessageMap)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v11 = self->_outgoingMessageMap;
        self->_outgoingMessageMap = Mutable;

        outgoingMessageMap = self->_outgoingMessageMap;
      }

      [(NSMutableDictionary *)outgoingMessageMap setObject:0x186A0 forKey:dCopy];
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v14 = 138412546;
          v15 = dCopy;
          v16 = 2112;
          v17 = 0x186A0;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Generated mapping from %@ to %@", &v14, 0x16u);
        }
      }

      unsignedIntValue = [0x186A0 unsignedIntValue];
    }
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (void)_registerMessageGUID:(id)d completionBlock:(id)block failureBlock:(id)failureBlock
{
  dCopy = d;
  blockCopy = block;
  failureBlockCopy = failureBlock;
  if (!self->_outgoingMessageBlockMap)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    outgoingMessageBlockMap = self->_outgoingMessageBlockMap;
    self->_outgoingMessageBlockMap = Mutable;
  }

  if (!self->_outgoingMessageFailureMap)
  {
    v12 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    outgoingMessageFailureMap = self->_outgoingMessageFailureMap;
    self->_outgoingMessageFailureMap = v12;
  }

  if (blockCopy)
  {
    v14 = self->_outgoingMessageBlockMap;
    v15 = [blockCopy copy];
    v16 = objc_retainBlock(v15);
    [(NSMutableDictionary *)v14 setObject:v16 forKey:dCopy];
  }

  if (failureBlockCopy)
  {
    v17 = self->_outgoingMessageFailureMap;
    v18 = [failureBlockCopy copy];
    v19 = objc_retainBlock(v18);
    [(NSMutableDictionary *)v17 setObject:v19 forKey:dCopy];
  }
}

- (void)_clearMapForMessageGUID:(id)d
{
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = dCopy;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Clearing mapping for %@", &v9, 0xCu);
    }
  }

  if (dCopy)
  {
    [(NSMutableDictionary *)self->_outgoingMessageMap removeObjectForKey:dCopy];
    [(NSMutableDictionary *)self->_outgoingMessageFailureMap removeObjectForKey:dCopy];
    [(NSMutableDictionary *)self->_outgoingMessageBlockMap removeObjectForKey:dCopy];
    if (![(NSMutableDictionary *)self->_outgoingMessageMap count])
    {
      outgoingMessageMap = self->_outgoingMessageMap;
      self->_outgoingMessageMap = 0;
    }

    if (![(NSMutableDictionary *)self->_outgoingMessageBlockMap count])
    {
      outgoingMessageBlockMap = self->_outgoingMessageBlockMap;
      self->_outgoingMessageBlockMap = 0;
    }

    if (![(NSMutableDictionary *)self->_outgoingMessageFailureMap count])
    {
      outgoingMessageFailureMap = self->_outgoingMessageFailureMap;
      self->_outgoingMessageFailureMap = 0;
    }
  }
}

- (void)_clearPendingIncomingMessageQueue
{
  if (!self->_hasClearedMessageQueue)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Clearing incoming message queaue from CT", buf, 2u);
      }
    }

    self->_hasClearedMessageQueue = 1;
    v4 = +[CTMessageCenter sharedMessageCenter];
    allIncomingMessages = [v4 allIncomingMessages];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = allIncomingMessages;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v7)
    {
      v8 = *v17;
      do
      {
        v9 = 0;
        do
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v16 + 1) + 8 * v9);
          buf[0] = 0;
          v11 = [(SMSServiceSession *)self _convertCTMessageToDictionary:v10 requiresUpload:buf];
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 3221225472;
          v13[2] = sub_9604;
          v13[3] = &unk_20850;
          v13[4] = self;
          v14 = v11;
          v15 = buf[0];
          v12 = v11;
          [(SMSServiceSession *)self _processReceivedDictionary:v12 storageContext:0 receivedViaRelay:0 withCompletionBlock:v13];
          [(SMSServiceSession *)self _storeIncomingMessageDictionaryToReplayDatabaseIfNeeded:v12 requiresUpload:buf[0]];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v7);
    }
  }
}

- (void)_doDeleteChat:(id)chat
{
  chatCopy = chat;
  broadcasterForChatListeners = [(SMSServiceSession *)self broadcasterForChatListeners];
  guid = [chatCopy guid];
  [broadcasterForChatListeners leftChat:guid];

  chatRegistry = [(SMSServiceSession *)self chatRegistry];
  [chatRegistry removeChat:chatCopy];
}

- (void)_receivedSMSDictionary:(id)dictionary requiresUpload:(BOOL)upload isBeingReplayed:(BOOL)replayed
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_9904;
  v5[3] = &unk_20878;
  replayedCopy = replayed;
  v5[4] = self;
  [(SMSServiceSession *)self _processReceivedDictionary:dictionary storageContext:0 receivedViaRelay:0 withCompletionBlock:v5];
}

- (void)replayMessage:(id)message
{
  messageCopy = message;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([messageCopy objectForKey:off_26420], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        __im_copySMSDictionaryWithRedactedMessageContent = [messageCopy __im_copySMSDictionaryWithRedactedMessageContent];
        *buf = 138412290;
        v18 = __im_copySMSDictionaryWithRedactedMessageContent;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Replaying stored CT SMS message %@", buf, 0xCu);
      }
    }

    v8 = [messageCopy objectForKey:off_26420];
    v9 = [messageCopy objectForKey:off_26428];
    bOOLValue = [v9 BOOLValue];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_9CD4;
    v14[3] = &unk_208A0;
    v14[4] = self;
    v15 = v8;
    v16 = bOOLValue;
    v11 = v8;
    [(SMSServiceSession *)self _enqueueBlock:v14 withTimeout:240.0];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        __im_copySMSDictionaryWithRedactedMessageContent2 = [messageCopy __im_copySMSDictionaryWithRedactedMessageContent];
        *buf = 138412290;
        v18 = __im_copySMSDictionaryWithRedactedMessageContent2;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Replaying stored SMS replay message %@", buf, 0xCu);
      }
    }

    [(IMDRelayPushHandler *)self->_smsRelayPushHandler replayMessage:messageCopy];
  }
}

- (void)enqueReplayMessageCallback:(id)callback
{
  callbackCopy = callback;
  v5 = callbackCopy;
  if (callbackCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_9DE4;
    v6[3] = &unk_208C8;
    v7 = callbackCopy;
    [(SMSServiceSession *)self _enqueueBlock:v6 withTimeout:10.0];
  }
}

- (void)networkMonitorDidUpdate:(id)update
{
  updateCopy = update;
  v8.receiver = self;
  v8.super_class = SMSServiceSession;
  [(SMSServiceSession *)&v8 networkMonitorDidUpdate:updateCopy];
  if ([updateCopy immediatelyReachable])
  {
    v5 = +[IMTransferServicesController sharedInstance];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = +[IMTransferServicesController sharedInstance];
      [v7 updateUltraConstrainedAttachments:{objc_msgSend(updateCopy, "attachmentPolicy") == &dword_0 + 2}];
    }

    [(SMSServiceSession *)self _processMessagesForRelayIfNeededMarkingAsRelayedUponSuccess:1];
  }
}

- (void)_processMessagesForRelayIfNeededMarkingAsRelayedUponSuccess:(BOOL)success
{
  if (IMGetCachedDomainBoolForKey())
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Processing SMS Satellite messages for relay", buf, 2u);
      }
    }

    v5 = +[IMDServiceController sharedController];
    v6 = [v5 serviceWithName:IMServiceNameSatelliteSMS];

    *buf = 0;
    v16 = buf;
    v17 = 0x2020000000;
    v18 = 1;
    v7 = +[IMDMessageStore sharedInstance];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_A120;
    v11[3] = &unk_208F0;
    v8 = v6;
    v12 = v8;
    v13 = buf;
    successCopy = success;
    [v7 enumerateMessagesToRelayOnService:v8 usingBlock:v11];

    if (v16[24] == 1)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *v10 = 0;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "All SMS Satellite messages have been relayed, resetting user default", v10, 2u);
        }
      }

      IMSetDomainBoolForKey();
    }

    _Block_object_dispose(buf, 8);
  }
}

- (void)_processSMSOrSMSMessageSentWithContext:(id)context success:(BOOL)success messageID:(unsigned int)d err1:(int64_t)err1 err2:(int64_t)err2 isSMS:(BOOL)s
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_A5A0;
  v17[3] = &unk_20918;
  sCopy = s;
  contextCopy = context;
  successCopy = success;
  dCopy = d;
  err1Copy = err1;
  err2Copy = err2;
  v18 = contextCopy;
  selfCopy = self;
  v14 = objc_retainBlock(v17);
  if (+[NSThread isMainThread])
  {
    (v14[2])(v14);
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_A75C;
    v15[3] = &unk_20940;
    v16 = v14;
    dispatch_sync(&_dispatch_main_q, v15);
  }
}

- (void)_processSMSorMMSMessageReceivedWithContext:(id)context messageID:(int64_t)d
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_A898;
  v8[3] = &unk_20990;
  v8[4] = self;
  dCopy = d;
  contextCopy = context;
  v9 = contextCopy;
  v5 = objc_retainBlock(v8);
  if (+[NSThread isMainThread])
  {
    (v5[2])(v5);
  }

  else
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_AE14;
    v6[3] = &unk_20940;
    v7 = v5;
    dispatch_sync(&_dispatch_main_q, v6);
  }
}

- (void)smsMessageReceived:(id)received msgID:(int64_t)d
{
  receivedCopy = received;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [NSNumber numberWithInteger:d];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "SMS Message received %@", &v9, 0xCu);
    }
  }

  [(SMSServiceSession *)self _processSMSorMMSMessageReceivedWithContext:receivedCopy messageID:d];
}

- (void)mmsMessageReceived:(id)received msgID:(int64_t)d
{
  receivedCopy = received;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [NSNumber numberWithInteger:d];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "SMS Message received %@", &v9, 0xCu);
    }
  }

  [(SMSServiceSession *)self _processSMSorMMSMessageReceivedWithContext:receivedCopy messageID:d];
}

- (BOOL)_messageDowngradesWhenSentFromCurrentService:(id)service
{
  service = [service service];
  v4 = [service isEqualToString:IMServiceNameRCS];

  return v4;
}

- (void)calculateReachabilityWithRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_1013C();
  (*(*v7 + 96))(requestCopy, handler);

  swift_unknownObjectRelease();
}

@end