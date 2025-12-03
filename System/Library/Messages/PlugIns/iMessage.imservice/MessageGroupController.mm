@interface MessageGroupController
+ (MessageGroupController)sharedInstance;
+ (id)memberDisplayIDsFromParticipants:(id)participants toIdentifier:(id)identifier;
+ (void)addMembers:(id)members toHandleInfo:(id)info;
- (BOOL)_canSendMessagesWithEngram;
- (BOOL)_checkForParticipantLeaveOnENGroup:(id)group groupMessagePayload:(id)payload toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier service:(id)service;
- (BOOL)_hasValidSendParametersForMessage:(id)message toChat:(id)chat fromID:(id)d fromAccount:(id)account;
- (BOOL)_participantsContainBizID:(id)d;
- (BOOL)_serverAllowsMessageSend;
- (BOOL)_shouldDropMessageGroupID:(id)d participants:(id)participants fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier;
- (BOOL)_shouldRequestGroupPhoto:(id)photo incomingParticipantVersion:(int64_t)version incomingGroupPhotoCreationDate:(id)date;
- (BOOL)_shouldSendEngramOnChat:(id)chat;
- (BOOL)_validateChat:(id)chat containsFromIdentifier:(id)identifier isReflection:(BOOL)reflection;
- (BOOL)shouldDropDueToGroupSize:(id)size;
- (MessageGroupController)initWithSession:(id)session;
- (double)_groupPhotoRequestRateLimit;
- (id)_findChatFromIdentifier:(id)identifier toIdentifier:(id)toIdentifier displayName:(id)name participants:(id)participants groupID:(id)d;
- (id)_newSendContextForMessage:(id)message withChat:(id)chat;
- (id)_stringSubDictionaryOfDictionary:(id)dictionary forKey:(id)key;
- (id)chatForGroupMessagePayload:(id)payload fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier;
- (id)findChatWithMessageData:(id)data account:(id)account session:(id)session toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier timestamp:(id)timestamp;
- (id)newDeliveryContextForChat:(id)chat fromID:(id)d;
- (id)newGroupMessagePayloadForChat:(id)chat fromID:(id)d;
- (void)_addGroupPhotoRefreshDate:(id)date context:(id)context;
- (void)_addOriginalTimestampIfNecessary:(id)necessary context:(id)context;
- (void)_checkAndPerformLegacyAddRemove:(id)remove participantsToAdd:(id)add participantsToRemove:(id)toRemove service:(id)service fromIdentifier:(id)identifier;
- (void)_handleGroupVisualIdentityRequest:(id)request fromParticipants:(id)participants groupID:(id)d fromIdentifier:(id)identifier session:(id)session toIdentifier:(id)toIdentifier fromToken:(id)token requestGUID:(id)self0 isReflection:(BOOL)self1;
- (void)_populateP2PDictionary:(id)dictionary chat:(id)chat omitName:(BOOL)name fromID:(id)d;
- (void)_processParticipantConvergenceResult:(id)result forChat:(id)chat;
- (void)_requestGroupPhotoUpdate:(id)update fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier session:(id)session;
- (void)_sendGroupPhoto:(id)photo toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier toToken:(id)token session:(id)session requestGUID:(id)d;
- (void)addParticipants:(id)participants toChat:(id)chat fromID:(id)d fromAccount:(id)account session:(id)session service:(id)service groupPhoto:(id)photo transcriptBackground:(id)self0 completionBlock:(id)self1;
- (void)dealloc;
- (void)engroupForChat:(id)chat service:(id)service completionBlock:(id)block;
- (void)handleAddToNewGroup:(id)group groupID:(id)d groupPhotoTransferDict:(id)dict identifier:(id)identifier session:(id)session toIdentifier:(id)toIdentifier toName:(id)name toParticipants:(id)self0;
- (void)handler:(id)handler account:(id)account groupMessagePayload:(id)payload messageID:(id)d toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier idsService:(id)service fromToken:(id)self0 timeStamp:(id)self1 storageContext:(id)self2 batchContext:(id)self3;
- (void)leaveChat:(id)chat fromID:(id)d fromAccount:(id)account session:(id)session service:(id)service completionBlock:(id)block;
- (void)receiveGroupUpdate:(id)update chat:(id)chat service:(id)service;
- (void)receiveMessageData:(id)data account:(id)account session:(id)session toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier incomingEngroup:(id)engroup service:(id)service timestamp:(id)self0 fromStorage:(BOOL)self1 completionBlock:(id)self2;
- (void)removeParticipants:(id)participants toChat:(id)chat fromID:(id)d fromAccount:(id)account session:(id)session service:(id)service completionBlock:(id)block;
- (void)requestGroupPhotoIfNecessary:(id)necessary incomingParticipantVersion:(int64_t)version incomingGroupPhotoCreationDate:(id)date toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier messageIsFromStorage:(BOOL)storage session:(id)session;
- (void)requestGroupPhotosForMessagesFromStorage;
- (void)sendMessage:(id)message toChat:(id)chat fromID:(id)d fromAccount:(id)account session:(id)session service:(id)service completionBlock:(id)block;
- (void)setGroupPhoto:(id)photo forChat:(id)chat fromID:(id)d fromAccount:(id)account session:(id)session isPhotoRefresh:(BOOL)refresh;
- (void)setName:(id)name fromName:(id)fromName forChat:(id)chat fromID:(id)d fromAccount:(id)account messageID:(id)iD session:(id)session completionBlock:(id)self0;
@end

@implementation MessageGroupController

+ (MessageGroupController)sharedInstance
{
  if (qword_124330 != -1)
  {
    sub_BD430();
  }

  return qword_124318;
}

- (id)chatForGroupMessagePayload:(id)payload fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier
{
  v9 = [payload _stringForKey:off_123CE0[0]];
  v10 = [payload _stringForKey:off_123CE8[0]];
  v11 = [payload _arrayForKey:@"p"];
  if ([+[IMFeatureFlags sharedFeatureFlags](IMFeatureFlags "sharedFeatureFlags")])
  {
    v12 = objc_alloc_init(NSMutableArray);
    v13 = v12;
    if (v10)
    {
      [v12 addObject:v10];
    }

    v14 = -[IMDChatRegistry bestCandidateGroupChatWithFromIdentifier:toIdentifier:displayName:participants:updatingToLatestiMessageGroupID:sortedIdentifiers:serviceName:](-[MessageGroupController chatRegistry](self, "chatRegistry"), "bestCandidateGroupChatWithFromIdentifier:toIdentifier:displayName:participants:updatingToLatestiMessageGroupID:sortedIdentifiers:serviceName:", identifier, toIdentifier, v9, v11, v10, v13, [-[MessageServiceSession service](-[MessageGroupController session](self "session")]);

    return v14;
  }

  else
  {
    session = [(MessageGroupController *)self session];

    return [(MessageServiceSession *)session bestCandidateGroupChatWithFromIdentifier:identifier toIdentifier:toIdentifier displayName:v9 participants:v11 groupID:v10];
  }
}

- (id)newDeliveryContextForChat:(id)chat fromID:(id)d
{
  v7 = objc_alloc_init(NSMutableDictionary);
  if ([chat style] == 43)
  {
    v8 = [(MessageServiceSession *)[(MessageGroupController *)self session] groupIDForChat:chat];
    if (v8)
    {
      CFDictionarySetValue(v7, off_123C68[0], v8);
    }

    displayName = [chat displayName];
    if (displayName)
    {
      CFDictionarySetValue(v7, off_123CE0[0], displayName);
    }
  }

  v10 = sub_7EAF0(chat, d);
  if (v10)
  {
    CFDictionarySetValue(v7, @"p", v10);
  }

  return v7;
}

- (id)newGroupMessagePayloadForChat:(id)chat fromID:(id)d
{
  if ([chat style] == 45)
  {
    return 0;
  }

  return [(MessageGroupController *)self newDeliveryContextForChat:chat fromID:d];
}

- (MessageGroupController)initWithSession:(id)session
{
  v7.receiver = self;
  v7.super_class = MessageGroupController;
  v4 = [(MessageGroupController *)&v7 init];
  if (v4)
  {
    v4->_groupPhotoRequestsFromStorage = objc_alloc_init(NSMutableDictionary);
    v4->_groupPhotoRequestsInFlight = objc_alloc_init(NSMutableDictionary);
    v4->_mostRecentGroupPhotoRequestDates = objc_alloc_init(NSMutableDictionary);
    objc_storeWeak(&v4->_session, session);
    v5 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v5 addObserver:v4 selector:"requestGroupPhotosForMessagesFromStorage" name:IMMessageFromStorageTimerFiredNotification object:0];
  }

  return v4;
}

- (void)dealloc
{
  [+[IMMobileNetworkManager sharedInstance](IMMobileNetworkManager removeFastDormancyDisableToken:"removeFastDormancyDisableToken:", @"iMessageGroupManager"];

  v3.receiver = self;
  v3.super_class = MessageGroupController;
  [(MessageGroupController *)&v3 dealloc];
}

- (BOOL)_canSendMessagesWithEngram
{
  v3 = +[IMUserDefaults isEngramEnabled];
  if (v3)
  {

    LOBYTE(v3) = [(MessageGroupController *)self _serverAllowsMessageSend];
  }

  return v3;
}

- (BOOL)_serverAllowsMessageSend
{
  iDSServerBagiMessageSharedInstance = [(MessageGroupController *)self IDSServerBagiMessageSharedInstance];
  v4 = [iDSServerBagiMessageSharedInstance objectForKey:off_123D20];
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  currentMessageSendServerVersion = [(MessageGroupController *)self currentMessageSendServerVersion];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (integerValue > currentMessageSendServerVersion)
      {
        v8 = @"NO";
      }

      else
      {
        v8 = @"YES";
      }

      v10 = 138412802;
      v11 = v8;
      v12 = 2112;
      v13 = [NSNumber numberWithInteger:integerValue];
      v14 = 2112;
      v15 = [NSNumber numberWithInteger:[(MessageGroupController *)self currentMessageSendServerVersion]];
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Server is allowing us to send messages to engroups: %@ serverVersion: %@ localVersion: %@", &v10, 0x20u);
    }
  }

  return integerValue <= currentMessageSendServerVersion;
}

- (void)_addOriginalTimestampIfNecessary:(id)necessary context:(id)context
{
  messageSummaryInfo = [necessary messageSummaryInfo];
  v8 = [objc_msgSend(messageSummaryInfo objectForKey:{IMMessageSummaryInfoUpdatedDateWithServerTime), "BOOLValue"}];
  if ([(MessageGroupController *)self _shouldAdjustTimestampOfResentMessages]&& v8)
  {
    time = [necessary time];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = 138412546;
        time2 = [necessary time];
        v14 = 2112;
        guid = [necessary guid];
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Adding original timestamp %@ to message context with GUID %@", &v12, 0x16u);
      }
    }

    v11 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [time __im_nanosecondTimeIntervalSinceEpochTime]);
    if (v11)
    {
      CFDictionarySetValue(context, @"oe", v11);
    }
  }
}

- (void)_addGroupPhotoRefreshDate:(id)date context:(id)context
{
  groupPhotoGuid = [date groupPhotoGuid];
  v6 = [+[IMDFileTransferCenter sharedInstance](IMDFileTransferCenter transferForGUID:"transferForGUID:", groupPhotoGuid];
  if (!v6)
  {
    v6 = [+[IMDAttachmentStore sharedInstance](IMDAttachmentStore attachmentWithGUID:"attachmentWithGUID:", groupPhotoGuid];
    if (!v6)
    {
      if (!IMOSLoggingEnabled())
      {
        return;
      }

      v11 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        return;
      }

      LOWORD(v13) = 0;
      v12 = "File transfers from both IMDFileTransferCenter and IMDAttachmentStore are empty. Not updating the date";
LABEL_15:
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, v12, &v13, 2u);
      return;
    }
  }

  refreshDate = [v6 refreshDate];
  v8 = IMOSLoggingEnabled();
  if (!refreshDate)
  {
    if (!v8)
    {
      return;
    }

    v11 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      return;
    }

    LOWORD(v13) = 0;
    v12 = "Refresh Date is nil, not adding the date to the message context.";
    goto LABEL_15;
  }

  if (v8)
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = refreshDate;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Adding group photo refresh date %@ to message context", &v13, 0xCu);
    }
  }

  v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [refreshDate __im_nanosecondTimeIntervalSinceEpochTime]);
  if (v10)
  {
    CFDictionarySetValue(context, @"gpru", v10);
  }
}

- (void)sendMessage:(id)message toChat:(id)chat fromID:(id)d fromAccount:(id)account session:(id)session service:(id)service completionBlock:(id)block
{
  v16 = v32;
  v17 = [MessageGroupController _hasValidSendParametersForMessage:"_hasValidSendParametersForMessage:toChat:fromID:fromAccount:" toChat:? fromID:? fromAccount:?];
  if (v32 && (v17 & 1) == 0)
  {
    v18 = *(v32 + 16);
    HIDWORD(v32) = 4;
    LOBYTE(v32) = 0;

    __asm { BRAA            X9, X8 }
  }

  if (v32)
  {
    v19 = [(MessageGroupController *)self _newSendContextForMessage:message withChat:chat];
    [(MessageGroupController *)self _addOriginalTimestampIfNecessary:message context:v19];
    [(MessageGroupController *)self _addGroupPhotoRefreshDate:chat context:v19];
    if (([message isTypingMessage] & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v27 = 138412546;
          v28 = v32;
          v29 = 2112;
          v30 = v19;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "Group message success, calling completion block: %@  (Context: %@)", &v27, 0x16u);
        }
      }
    }

    v21 = [(MessageGroupController *)self _shouldSendEngramOnChat:chat];
    v22 = IMOSLoggingEnabled();
    if (v21)
    {
      if (v22)
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "Engram enabled, so we will try to look up the group or create a group if we don't have one", &v27, 2u);
        }
      }

      [-[MessageGroupController engramControllerSharedInstance](self "engramControllerSharedInstance")];
    }

    else
    {
      if (v22)
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "Engram disabled, sending with legacy crypto", &v27, 2u);
        }
      }

      LOBYTE(v26) = 1;
      (*(v16 + 16))(v16, self, chat, message, d, account, v19, 0, v26);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "Group message success, no completion block specified", &v27, 2u);
    }
  }
}

- (BOOL)_hasValidSendParametersForMessage:(id)message toChat:(id)chat fromID:(id)d fromAccount:(id)account
{
  if (message && chat && (v10 = [d length], account) && v10)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v11 = IMOSLoggingEnabled();
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      v11 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
      if (v11)
      {
        v14 = 138413058;
        messageCopy = message;
        v16 = 2112;
        chatCopy = chat;
        v18 = 2112;
        dCopy = d;
        v20 = 2112;
        accountCopy = account;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Invalid request to send message: %@ to chat: %@ from ID: %@ fromAccount: %@", &v14, 0x2Au);
        LOBYTE(v11) = 0;
      }
    }
  }

  return v11;
}

- (BOOL)_shouldSendEngramOnChat:(id)chat
{
  _canSendMessagesWithEngram = [(MessageGroupController *)self _canSendMessagesWithEngram];
  if (_canSendMessagesWithEngram)
  {
    if ([chat style] == 43)
    {

      LOBYTE(_canSendMessagesWithEngram) = +[IMUserDefaults __im_isEngramEnabledForGroups];
    }

    else
    {
      LOBYTE(_canSendMessagesWithEngram) = 1;
    }
  }

  return _canSendMessagesWithEngram;
}

- (id)_newSendContextForMessage:(id)message withChat:(id)chat
{
  displayName = [chat displayName];
  v7 = [(MessageServiceSession *)[(MessageGroupController *)self session] groupIDForChat:chat];
  v8 = objc_alloc_init(NSMutableDictionary);
  properties = [chat properties];
  v10 = IMDChatGroupParticipantVersionKey;
  if (![properties objectForKey:IMDChatGroupParticipantVersionKey])
  {
    setParticipantVersionForChat(chat, 0);
  }

  if (displayName)
  {
    CFDictionarySetValue(v8, off_123CE0[0], displayName);
  }

  if (v7)
  {
    CFDictionarySetValue(v8, off_123CE8[0], v7);
  }

  if (off_123CF8[0])
  {
    CFDictionarySetValue(v8, off_123CF0[0], off_123CF8[0]);
  }

  v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [chat groupParticipantVersion]);
  if (v11)
  {
    CFDictionarySetValue(v8, v10, v11);
  }

  return v8;
}

+ (id)memberDisplayIDsFromParticipants:(id)participants toIdentifier:(id)identifier
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_7FA08;
  v5[3] = &unk_1142F8;
  v5[4] = identifier;
  return [objc_msgSend(participants __imArrayByFilteringWithBlock:{v5), "_IDsFromURIs"}];
}

+ (void)addMembers:(id)members toHandleInfo:(id)info
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [members countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = kFZChatParticipantStatusKey;
    v9 = kFZPersonID;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(members);
        }

        [info addObject:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 2), v8, *(*(&v12 + 1) + 8 * v10), v9, 0)}];
        v10 = v10 + 1;
      }

      while (v6 != v10);
      v6 = [members countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (id)findChatWithMessageData:(id)data account:(id)account session:(id)session toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier timestamp:(id)timestamp
{
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Trying to find chat", &v23, 2u);
    }
  }

  [data _FTOptionallyDecompressData];
  v13 = JWDecodeDictionary();
  if ([v13 count])
  {
    v14 = [v13 _stringForKey:off_123CE0[0]];
    v15 = [v13 _stringForKey:off_123CE8[0]];
    v16 = [v13 _arrayForKey:@"p"];
    if ([v16 count] < 3)
    {
      v17 = 0;
    }

    else
    {
      v17 = [(MessageGroupController *)self _findChatFromIdentifier:fromIdentifier toIdentifier:identifier displayName:v14 participants:v16 groupID:v15];
    }

    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v23 = 138412290;
        dataCopy = v17;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "Found chat in second attempt %@", &v23, 0xCu);
      }
    }
  }

  else
  {
    v18 = JWDecodeDictionary();
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, " ******* that failed, trying a simple decode now", &v23, 2u);
      }
    }

    if (!v18)
    {
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v23 = 138412290;
          dataCopy = data;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, " ******* BAD DATA: %@", &v23, 0xCu);
        }
      }
    }

    return 0;
  }

  return v17;
}

- (void)receiveMessageData:(id)data account:(id)account session:(id)session toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier incomingEngroup:(id)engroup service:(id)service timestamp:(id)self0 fromStorage:(BOOL)self1 completionBlock:(id)self2
{
  v18 = v92;
  v19 = v90;
  v68 = v89;
  v20 = [data length];
  if (v92)
  {
    v21 = v20 == 0;
  }

  else
  {
    v21 = 0;
  }

  if (v21)
  {
    v29 = *(v92 + 16);

    __asm { BRAA            X8, X7 }
  }

  if (v92)
  {
    engroupCopy = engroup;
    sessionCopy = session;
    v64 = log;
    [data _FTOptionallyDecompressData];
    v22 = JWDecodeDictionary();
    if (![v22 count])
    {
      v22 = JWDecodeDictionary();
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          LOWORD(v70) = 0;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, " ******* that failed, trying a simple decode now", &v70, 2u);
        }
      }

      if (!v22)
      {
        if (IMOSLoggingEnabled())
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v70 = 138412290;
            dataCopy = data;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, " ******* BAD DATA: %@", &v70, 0xCu);
          }
        }

        v22 = 0;
      }
    }

    v25 = [v22 _arrayForKey:@"p"];
    if ([v25 count] < 3)
    {
      v31 = 0;
      v65 = 0;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          LOWORD(v70) = 0;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "This is a group chat. Looking for group name and groupID", &v70, 2u);
        }
      }

      v65 = [v22 _stringForKey:off_123CE0[0]];
      v27 = [v22 _stringForKey:off_123CE8[0]];
      v28 = [v22 _numberForKey:@"gpru"];
      if ([v28 unsignedLongLongValue])
      {
        [NSDate __im_iMessageDateFromTimeStamp:v28];
      }

      v31 = v27;
    }

    v66 = v31;
    if ([MessageGroupController _shouldDropMessageGroupID:"_shouldDropMessageGroupID:participants:fromIdentifier:toIdentifier:" participants:? fromIdentifier:? toIdentifier:?])
    {
      if (IMOSLoggingEnabled())
      {
        v32 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v70 = 138412546;
          dataCopy = v66;
          v72 = 2112;
          v73 = v25;
          _os_log_impl(&dword_0, v32, OS_LOG_TYPE_INFO, "Dropping message from MessageGroupController. groupID: %@ participants: %@", &v70, 0x16u);
        }
      }

      (*(v18 + 16))(v18, self, 0, 0, 0, 0, 0);
      return;
    }

    v59 = IMDChatGroupParticipantVersionKey;
    v61 = [objc_msgSend(v22 "_numberForKey:"integerValue"")];
    if ([v25 count] < 3)
    {
      v52 = 0;
    }

    else
    {
      v60 = [(MessageGroupController *)self _findChatFromIdentifier:fromIdentifier toIdentifier:identifier displayName:v65 participants:v25 groupID:v66];
      if (![(MessageGroupController *)self _canSendMessagesWithEngram])
      {
        v58 = [-[__CFArray __imSetFromArray](sub_7EAF0(v60 identifier)];
        groupParticipantVersion = [(__CFArray *)v60 groupParticipantVersion];
        properties = [(__CFArray *)v60 properties];
        v34 = [properties objectForKey:off_123D08[0]];
        longLongValue = [v19 longLongValue];
        v36 = longLongValue / 1000000000 - [v34 longLongValue];
        v37 = [v22 _stringForKey:off_123CF0[0]];
        if (IMOSLoggingEnabled())
        {
          v56 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            longLongValue2 = [v34 longLongValue];
            longLongValue3 = [v19 longLongValue];
            v40 = [NSNumber numberWithBool:v64];
            v41 = @"NO";
            if (v58)
            {
              v41 = @"YES";
            }

            v70 = 134220034;
            dataCopy = groupParticipantVersion;
            v72 = 2048;
            v73 = v61;
            v74 = 2048;
            v75 = v36;
            v76 = 2048;
            v77 = longLongValue2;
            v78 = 2048;
            v79 = longLongValue3 / 1000000000;
            v80 = 2112;
            v81 = v25;
            v82 = 2112;
            v83 = v37;
            v84 = 2112;
            v85 = v41;
            v86 = 2112;
            v87 = v40;
            _os_log_impl(&dword_0, v56, OS_LOG_TYPE_INFO, "receiveMessageData localVersion: %ld, versionReceived:%ld, timeDifference: %lld, lastUpdated:%lld, timestamp:%lld, participants: %@, protocolVersion: %@, isIncomingParticipantSetSame %@, fromStorage %@", &v70, 0x5Cu);
          }
        }

        v42 = (v37 == 0) & ~v58;
        if (groupParticipantVersion <= v61)
        {
          v42 = 1;
        }

        if (v36 > 10)
        {
          v43 = v42;
        }

        else
        {
          v43 = 0;
        }

        if (!v37)
        {
          if (IMOSLoggingEnabled())
          {
            v44 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
            {
              LOWORD(v70) = 0;
              _os_log_impl(&dword_0, v44, OS_LOG_TYPE_INFO, "Not converving participants. Message from legacy device", &v70, 2u);
            }
          }

          v43 = 0;
        }

        if (IMOSLoggingEnabled())
        {
          v45 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            v46 = @"NO";
            if (v43)
            {
              v46 = @"YES";
            }

            v70 = 138412290;
            dataCopy = v46;
            _os_log_impl(&dword_0, v45, OS_LOG_TYPE_INFO, "shouldConvergeParticipants: %@", &v70, 0xCu);
          }
        }

        if ([v66 length])
        {
          v47 = [v25 count];
          if (identifier)
          {
            if (fromIdentifier && v47 >= 2 && (([(__CFArray *)v60 style]!= 45) & v43) == 1)
            {
              v69[0] = _NSConcreteStackBlock;
              v69[1] = 3221225472;
              v69[2] = sub_80964;
              v69[3] = &unk_114360;
              v69[4] = identifier;
              v48 = [objc_msgSend(v25 __imArrayByApplyingBlock:{v69), "__imArrayByApplyingBlock:", &stru_114380}];
              v49 = [v22 _numberForKey:v59] == 0;
              v50 = IMOSLoggingEnabled();
              if (v49)
              {
                if (v50)
                {
                  v53 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
                  {
                    LOWORD(v70) = 0;
                    _os_log_impl(&dword_0, v53, OS_LOG_TYPE_INFO, "Incrementing participant version by 1 on message receive.", &v70, 2u);
                  }
                }

                incrementParticipantVersionForChat(v60);
              }

              else
              {
                if (v50)
                {
                  v51 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
                  {
                    v70 = 134217984;
                    dataCopy = v61;
                    _os_log_impl(&dword_0, v51, OS_LOG_TYPE_INFO, "Setting participant version to version received :%ld", &v70, 0xCu);
                  }
                }

                setParticipantVersionForChat(v60, v61);
              }

              v54 = [[GroupConvergenceContext alloc] initWithChat:v60];
              [(GroupConvergenceContext *)v54 setGroupID:v66];
              [(GroupConvergenceContext *)v54 setToParticipants:v48];
              [(GroupConvergenceContext *)v54 setToIdentifier:identifier];
              [(GroupConvergenceContext *)v54 setFromIdentifier:fromIdentifier];
              -[GroupConvergenceContext setIsReflection:](v54, "setIsReflection:", [identifier isEqualToString:fromIdentifier]);
              if (!account)
              {
                [sessionCopy account];
              }

              [(GroupConvergenceContext *)v54 setAccount:?];
              [(MessageGroupController *)self _processParticipantConvergenceResult:[GroupParticipantConvergenceResult forChat:"groupParticipantConvergenceResultForUpdateType:context:" groupParticipantConvergenceResultForUpdateType:v54 context:?], v60];
            }
          }
        }
      }

      if (!engroupCopy)
      {
        goto LABEL_78;
      }

      v52 = v60;
      if (v60)
      {
        if ([(MessageGroupController *)self _canSendMessagesWithEngram])
        {
          [(MessageGroupController *)self receiveGroupUpdate:engroupCopy chat:v60 service:v68];
        }

LABEL_78:
        v52 = v60;
      }
    }

    v55 = v52;
    [MessageGroupController requestGroupPhotoIfNecessary:"requestGroupPhotoIfNecessary:incomingParticipantVersion:incomingGroupPhotoCreationDate:toIdentifier:fromIdentifier:messageIsFromStorage:session:" incomingParticipantVersion:sessionCopy incomingGroupPhotoCreationDate:? toIdentifier:? fromIdentifier:? messageIsFromStorage:? session:?];
    (*(v18 + 16))(v18, self, v55, v66, v65, v25, v22);
    return;
  }

  if (IMOSLoggingEnabled())
  {
    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      LOWORD(v70) = 0;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "Message received, no completion block specified", &v70, 2u);
    }
  }
}

- (void)_processParticipantConvergenceResult:(id)result forChat:(id)chat
{
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      participants = [chat participants];
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Chat participants before converge %@", buf, 0xCu);
    }
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  memberStatusChanges = [result memberStatusChanges];
  v9 = [memberStatusChanges countByEnumeratingWithState:&v25 objects:v30 count:16];
  v10 = v9 != 0;
  if (v9)
  {
    v11 = *v26;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(memberStatusChanges);
        }

        [(MessageServiceSession *)[(MessageGroupController *)self session] didChangeMemberStatus:*(*(&v25 + 1) + 8 * i)];
      }

      v9 = [memberStatusChanges countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  chatStatusChanges = [result chatStatusChanges];
  v14 = [chatStatusChanges countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = *v22;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(chatStatusChanges);
        }

        [(MessageServiceSession *)[(MessageGroupController *)self session] didUpdateChatStatusWithContext:*(*(&v21 + 1) + 8 * j)];
      }

      v14 = [chatStatusChanges countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v14);
    v10 = 1;
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      participants2 = [chat participants];
      *buf = 138412290;
      participants = participants2;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Chat participants after converge %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = @"NO";
      if (v10)
      {
        v20 = @"YES";
      }

      *buf = 138412290;
      participants = v20;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "Group changed and will write to db? %@", buf, 0xCu);
    }
  }

  if (v10)
  {
    [+[IMDChatStore sharedInstance](IMDChatStore storeChat:"storeChat:", chat];
  }
}

- (void)engroupForChat:(id)chat service:(id)service completionBlock:(id)block
{
  if (+[IMUserDefaults isEngramEnabled])
  {
    engramID = [chat engramID];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        chatCopy = engramID;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Going to look up the engroup for engramID: %@", buf, 0xCu);
      }
    }

    if ([engramID length])
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_80F70;
      v13[3] = &unk_113E78;
      v13[5] = self;
      v13[6] = block;
      v13[4] = chat;
      [-[MessageGroupController engramControllerSharedInstance](self "engramControllerSharedInstance")];
      return;
    }

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        chatCopy = chat;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "No engramID for chat: %@ defaulting to legacy crypto", buf, 0xCu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Engram is disabled on this device, failed to lookup group", buf, 2u);
    }
  }

  (*(block + 2))(block, self, chat, 0, 0, 0);
}

- (void)receiveGroupUpdate:(id)update chat:(id)chat service:(id)service
{
  if (update)
  {
    v9 = [objc_msgSend(objc_msgSend(objc_msgSend(update "groupID")];
    if ([v9 length])
    {
      v10 = [objc_msgSend(chat "engramID")];
      v11 = IMOSLoggingEnabled();
      if (v10)
      {
        if (v11)
        {
          v12 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            LOWORD(v16) = 0;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Incoming engram id is same as this chat's engram id.", &v16, 2u);
          }
        }

        if ([chat style] == 43 && objc_msgSend(objc_msgSend(chat, "participants"), "count") >= 3)
        {
          if (IMOSLoggingEnabled())
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              LOWORD(v16) = 0;
              _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "We have a group chat so going to take the incoming group's participants", &v16, 2u);
            }
          }

          [-[MessageGroupController engramControllerSharedInstance](self "engramControllerSharedInstance")];
        }
      }

      else
      {
        if (v11)
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = 138412546;
            v17 = v9;
            v18 = 2112;
            chatIdentifier = [chat chatIdentifier];
            _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Storing engram id as %@ for chat with identifier: %@", &v16, 0x16u);
          }
        }

        [chat updateEngramID:v9];
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Didn't get an engramID to store from a groupID data representation", &v16, 2u);
      }
    }
  }
}

- (void)addParticipants:(id)participants toChat:(id)chat fromID:(id)d fromAccount:(id)account session:(id)session service:(id)service groupPhoto:(id)photo transcriptBackground:(id)self0 completionBlock:(id)self1
{
  allKeys = [participants allKeys];
  if ([chat style] == 45)
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        chatCopy = chat;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "No need to add participants, this is a 1-1 chat: %@", buf, 0xCu);
      }
    }

    if (block)
    {
      (*(block + 2))(block, self, chat, allKeys, 1, 0);
    }
  }

  else
  {
    v19 = objc_alloc_init(NSMutableDictionary);
    [(MessageGroupController *)self _populateP2PDictionary:v19 chat:chat fromID:d];
    if (off_123CA8[0])
    {
      CFDictionarySetValue(v19, off_123C98[0], off_123CA8[0]);
    }

    displayName = [chat displayName];
    if (displayName)
    {
      CFDictionarySetValue(v19, off_123C70[0], displayName);
    }

    v21 = [(__CFArray *)sub_7EAF0(chat arrayByAddingObjectsFromArray:"arrayByAddingObjectsFromArray:", allKeys];
    if (v21)
    {
      CFDictionarySetValue(v19, off_123C78[0], v21);
    }

    if (photo)
    {
      CFDictionarySetValue(v19, off_123C80[0], photo);
    }

    if (participants)
    {
      CFDictionarySetValue(v19, off_123C90[0], participants);
    }

    v22 = [objc_msgSend(+[IDSServerBag sharedInstanceForBagType:](IDSServerBag sharedInstanceForBagType:{1), "objectForKey:", @"include-transcript-background-info-in-group-message-additions", "BOOLValue"}];
    v23 = [+[IMFeatureFlags sharedFeatureFlags](IMFeatureFlags "sharedFeatureFlags")];
    if (background && v23 && v22)
    {
      CFDictionarySetValue(v19, off_123C88[0], background);
    }

    incrementParticipantVersionForChat(chat);
    sub_81AF0(chat, 0);
    properties = [chat properties];
    v25 = IMDChatGroupParticipantVersionKey;
    v26 = [properties objectForKey:IMDChatGroupParticipantVersionKey];
    if (v26)
    {
      CFDictionarySetValue(v19, v25, v26);
    }

    if (block)
    {
      v48 = 0;
      v49 = &v48;
      v50 = 0x2020000000;
      v51 = 1;
      if ([(MessageGroupController *)self _canSendMessagesWithEngram])
      {
        if (IMOSLoggingEnabled())
        {
          v27 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "engramEnabled and we are adding a participant to the engroup", buf, 2u);
          }
        }

        v28 = [NSNumber numberWithInteger:1];
        if (v28)
        {
          CFDictionarySetValue(v19, off_123D10[0], v28);
        }

        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_81C94;
        v47[3] = &unk_1143A8;
        v47[10] = block;
        v47[11] = &v48;
        v47[4] = self;
        v47[5] = chat;
        v47[6] = allKeys;
        v47[7] = session;
        v47[8] = v19;
        v47[9] = d;
        [-[MessageGroupController engramControllerSharedInstance](self engramControllerSharedInstance];
      }

      if (*(v49 + 24) == 1)
      {
        if (IMOSLoggingEnabled())
        {
          v29 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = +[IMUserDefaults isEngramEnabled];
            v31 = @"NO";
            if (v30)
            {
              v31 = @"YES";
            }

            *buf = 138412546;
            chatCopy = v31;
            v55 = 2112;
            serviceCopy = service;
            _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "Adding participants through legacy methods isEnabled: %@ idsService: %@", buf, 0x16u);
          }
        }

        (*(block + 2))(block, self, chat, allKeys, 1, 0);
        if (session)
        {
          v32 = [(__CFArray *)sub_7EAF0(chat arrayByAddingObjectsFromArray:"arrayByAddingObjectsFromArray:", allKeys];
          if (IMOSLoggingEnabled())
          {
            v33 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              v34 = [(MessageServiceSession *)[(MessageGroupController *)self session] groupIDForChat:chat];
              *buf = 138413058;
              chatCopy = allKeys;
              v55 = 2112;
              serviceCopy = v34;
              v57 = 2112;
              chatCopy2 = chat;
              v59 = 2112;
              v60 = v19;
              _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, "* Adding participants: %@    groupID: %@   chat: %@   dictionary: %@", buf, 0x2Au);
            }
          }

          if (IMOSLoggingEnabled())
          {
            v35 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              chatCopy = v32;
              _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "target Participants :%@", buf, 0xCu);
            }
          }

          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v36 = [v32 countByEnumeratingWithState:&v43 objects:v52 count:16];
          if (v36)
          {
            v38 = *v44;
            *&v37 = 138412290;
            v42 = v37;
            do
            {
              for (i = 0; i != v36; i = i + 1)
              {
                if (*v44 != v38)
                {
                  objc_enumerationMutation(v32);
                }

                v40 = *(*(&v43 + 1) + 8 * i);
                if (IMOSLoggingEnabled())
                {
                  v41 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                  {
                    *buf = v42;
                    chatCopy = v40;
                    _os_log_impl(&dword_0, v41, OS_LOG_TYPE_INFO, "handle in target Participants :%@", buf, 0xCu);
                  }
                }

                [session _forwardP2PGroupCommand:v19 fromPerson:d toPerson:v40 toGroup:{0, v42}];
              }

              v36 = [v32 countByEnumeratingWithState:&v43 objects:v52 count:16];
            }

            while (v36);
          }

          [session _forwardP2PGroupCommand:v19 fromPerson:d toPerson:objc_msgSend(d toGroup:{"_stripFZIDPrefix"), 0}];
        }
      }

      _Block_object_dispose(&v48, 8);
    }
  }
}

- (void)removeParticipants:(id)participants toChat:(id)chat fromID:(id)d fromAccount:(id)account session:(id)session service:(id)service completionBlock:(id)block
{
  allKeys = [participants allKeys];
  if ([chat style] == 45)
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        chatCopy = chat;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "No need to remove participants, this is a 1-1 chat: %@", buf, 0xCu);
      }
    }

    if (block)
    {
      (*(block + 2))(block, self, chat, allKeys, 1, 0);
    }
  }

  else
  {
    v17 = objc_alloc_init(NSMutableDictionary);
    [(MessageGroupController *)self _populateP2PDictionary:v17 chat:chat fromID:d];
    if (off_123CA8[0])
    {
      CFDictionarySetValue(v17, off_123C98[0], off_123CA8[0]);
    }

    displayName = [chat displayName];
    if (displayName)
    {
      CFDictionarySetValue(v17, off_123C70[0], displayName);
    }

    v19 = [(__CFArray *)sub_7EAF0(chat arrayByExcludingObjectsInArray:"arrayByExcludingObjectsInArray:", allKeys];
    if (v19)
    {
      CFDictionarySetValue(v17, off_123C78[0], v19);
    }

    if (participants)
    {
      CFDictionarySetValue(v17, off_123C90[0], participants);
    }

    incrementParticipantVersionForChat(chat);
    sub_81AF0(chat, 0);
    properties = [chat properties];
    v21 = IMDChatGroupParticipantVersionKey;
    v22 = [properties objectForKey:IMDChatGroupParticipantVersionKey];
    if (v22)
    {
      CFDictionarySetValue(v17, v21, v22);
    }

    if (block)
    {
      v39 = 0;
      v40 = &v39;
      v41 = 0x2020000000;
      v42 = 1;
      if ([(MessageGroupController *)self _canSendMessagesWithEngram])
      {
        if (IMOSLoggingEnabled())
        {
          v23 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "engramEnabled and we are removing a participant from the engroup", buf, 2u);
          }
        }

        v24 = [NSNumber numberWithInteger:1];
        if (v24)
        {
          CFDictionarySetValue(v17, off_123D10[0], v24);
        }

        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_82478;
        v38[3] = &unk_1143A8;
        v38[10] = block;
        v38[11] = &v39;
        v38[4] = self;
        v38[5] = chat;
        v38[6] = allKeys;
        v38[7] = session;
        v38[8] = v17;
        v38[9] = d;
        [-[MessageGroupController engramControllerSharedInstance](self engramControllerSharedInstance];
      }

      if (*(v40 + 24) == 1)
      {
        if (IMOSLoggingEnabled())
        {
          v25 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = +[IMUserDefaults isEngramEnabled];
            v27 = @"NO";
            if (v26)
            {
              v27 = @"YES";
            }

            *buf = 138412546;
            chatCopy = v27;
            v46 = 2112;
            serviceCopy = service;
            _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "Removing participants with legacy methods isEngramEnabled: %@ idsService: %@", buf, 0x16u);
          }
        }

        (*(block + 2))(block, self, chat, allKeys, 1, 0);
        if (session)
        {
          if (IMOSLoggingEnabled())
          {
            v28 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              v29 = [(MessageServiceSession *)[(MessageGroupController *)self session] groupIDForChat:chat];
              *buf = 138413058;
              chatCopy = allKeys;
              v46 = 2112;
              serviceCopy = v29;
              v48 = 2112;
              chatCopy2 = chat;
              v50 = 2112;
              v51 = v17;
              _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "* Removing participants: %@    groupID: %@   chat: %@   dictionary: %@", buf, 0x2Au);
            }
          }

          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          participants = [chat participants];
          v31 = [participants countByEnumeratingWithState:&v34 objects:v43 count:16];
          if (v31)
          {
            v32 = *v35;
            do
            {
              for (i = 0; i != v31; i = i + 1)
              {
                if (*v35 != v32)
                {
                  objc_enumerationMutation(participants);
                }

                [session _forwardP2PGroupCommand:v17 fromPerson:d toPerson:objc_msgSend(*(*(&v34 + 1) + 8 * i) toGroup:{"ID"), 0}];
              }

              v31 = [participants countByEnumeratingWithState:&v34 objects:v43 count:16];
            }

            while (v31);
          }

          [session _forwardP2PGroupCommand:v17 fromPerson:d toPerson:objc_msgSend(d toGroup:{"_stripFZIDPrefix"), 0}];
        }
      }

      _Block_object_dispose(&v39, 8);
    }
  }
}

- (void)leaveChat:(id)chat fromID:(id)d fromAccount:(id)account session:(id)session service:(id)service completionBlock:(id)block
{
  chatCopy = chat;
  if ([chat style] == 45)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = chatCopy;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "No need to leave chat, this is a 1-1 chat: %@", buf, 0xCu);
      }
    }

    if (block)
    {
      (*(block + 2))(block, self, chatCopy, 1, 0);
    }
  }

  else if (session)
  {
    blockCopy = block;
    v13 = objc_alloc_init(NSMutableDictionary);
    [(MessageGroupController *)self _populateP2PDictionary:v13 chat:chatCopy fromID:d];
    if (off_123CA8[0])
    {
      CFDictionarySetValue(v13, off_123C98[0], off_123CA8[0]);
    }

    displayName = [chatCopy displayName];
    if (displayName)
    {
      CFDictionarySetValue(v13, off_123C70[0], displayName);
    }

    if (chatCopy && d)
    {
      _stripFZIDPrefix = [d _stripFZIDPrefix];
      v16 = objc_alloc_init(NSMutableArray);
      *v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v36 = chatCopy;
      participants = [chatCopy participants];
      v18 = [participants countByEnumeratingWithState:v45 objects:buf count:16];
      if (v18)
      {
        v19 = *v46;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v46 != v19)
            {
              objc_enumerationMutation(participants);
            }

            v21 = *(*&v45[8] + 8 * i);
            if ((-[__CFArray containsObjectIdenticalTo:](v16, "containsObjectIdenticalTo:", [v21 ID]) & 1) == 0 && !(objc_msgSend(_stripFZIDPrefix, "isEqualToIgnoringCase:", objc_msgSend(v21, "ID")) & 1 | (v16 == 0)) && objc_msgSend(v21, "ID"))
            {
              CFArrayAppendValue(v16, [v21 ID]);
            }
          }

          v18 = [participants countByEnumeratingWithState:v45 objects:buf count:16];
        }

        while (v18);
      }

      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          participants2 = [v36 participants];
          *v50 = 138412802;
          v51 = participants2;
          v52 = 2112;
          dCopy = d;
          v54 = 2112;
          v55 = v16;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "chat participants %@, from %@, IDs %@", v50, 0x20u);
        }
      }

      v24 = v16;
      chatCopy = v36;
      if (v24)
      {
        CFDictionarySetValue(v13, off_123C78[0], v24);
        chatCopy = v36;
      }
    }

    v25 = chatCopy;
    incrementParticipantVersionForChat(chatCopy);
    sub_81AF0(chatCopy, 0);
    properties = [chatCopy properties];
    v27 = IMDChatGroupParticipantVersionKey;
    v28 = [properties objectForKey:IMDChatGroupParticipantVersionKey];
    if (v28)
    {
      CFDictionarySetValue(v13, v27, v28);
    }

    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = [(MessageServiceSession *)[(MessageGroupController *)self session] groupIDForChat:v25];
        *buf = 138412802;
        *&buf[4] = v30;
        *&buf[12] = 2112;
        *&buf[14] = v25;
        *&buf[22] = 2112;
        v57 = v13;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "Leaving group groupID: %@   chat: %@   dictionary: %@", buf, 0x20u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v57) = 1;
    if ([(MessageGroupController *)self _canSendMessagesWithEngram])
    {
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_82D8C;
      v44[3] = &unk_1143D0;
      v44[10] = buf;
      v44[4] = v13;
      v44[5] = self;
      v44[6] = v25;
      v44[7] = session;
      v44[8] = d;
      v44[9] = blockCopy;
      [-[MessageGroupController engramControllerSharedInstance](self "engramControllerSharedInstance")];
    }

    if (*(*&buf[8] + 24) == 1)
    {
      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *v45 = 0;
          _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "Engram not enabled so sending leave with legacy methods", v45, 2u);
        }
      }

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      participants3 = [v25 participants];
      v33 = [participants3 countByEnumeratingWithState:&v40 objects:v49 count:16];
      if (v33)
      {
        v34 = *v41;
        do
        {
          for (j = 0; j != v33; j = j + 1)
          {
            if (*v41 != v34)
            {
              objc_enumerationMutation(participants3);
            }

            [session _forwardP2PGroupCommand:v13 fromPerson:d toPerson:objc_msgSend(*(*(&v40 + 1) + 8 * j) toGroup:{"ID"), 0}];
          }

          v33 = [participants3 countByEnumeratingWithState:&v40 objects:v49 count:16];
        }

        while (v33);
      }

      [session _forwardP2PGroupCommand:v13 fromPerson:d toPerson:objc_msgSend(d toGroup:{"_stripFZIDPrefix"), 0}];
    }

    _Block_object_dispose(buf, 8);
  }
}

- (void)setName:(id)name fromName:(id)fromName forChat:(id)chat fromID:(id)d fromAccount:(id)account messageID:(id)iD session:(id)session completionBlock:(id)self0
{
  if ([chat style] == 45)
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        fromNameCopy = chat;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "No need to rename chat, this is a 1-1 chat: %@", buf, 0xCu);
      }
    }

    if (block)
    {
      (*(block + 2))(block, self, chat, name, 1, 0);
    }
  }

  else
  {
    if (block)
    {
      (*(block + 2))(block, self, chat, name, 1, 0);
    }

    if (session)
    {
      v17 = objc_alloc_init(NSMutableDictionary);
      [(MessageGroupController *)self _populateP2PDictionary:v17 chat:chat omitName:1 fromID:d];
      if (off_123CA0[0])
      {
        CFDictionarySetValue(v17, off_123C98[0], off_123CA0[0]);
      }

      if (name)
      {
        CFDictionarySetValue(v17, off_123C70[0], name);
      }

      if (fromName)
      {
        CFDictionarySetValue(v17, off_123C60[0], fromName);
      }

      if (off_123CF8[0])
      {
        CFDictionarySetValue(v17, off_123CF0[0], off_123CF8[0]);
      }

      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138413314;
          fromNameCopy = fromName;
          v30 = 2112;
          nameCopy = name;
          v32 = 2112;
          v33 = [(MessageServiceSession *)[(MessageGroupController *)self session] groupIDForChat:chat];
          v34 = 2112;
          chatCopy2 = chat;
          v36 = 2112;
          v37 = v17;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Updating group name %@ => %@    groupID: %@   chat: %@   dictionary: %@", buf, 0x34u);
        }
      }

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      participants = [chat participants];
      v20 = [participants countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v20)
      {
        v21 = *v24;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v24 != v21)
            {
              objc_enumerationMutation(participants);
            }

            [session _forwardP2PGroupCommand:v17 fromPerson:d toPerson:objc_msgSend(*(*(&v23 + 1) + 8 * i) toGroup:"ID") toToken:0 messageID:{0, iD}];
          }

          v20 = [participants countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v20);
      }

      [session _forwardP2PGroupCommand:v17 fromPerson:d toPerson:objc_msgSend(d toGroup:"_stripFZIDPrefix") toToken:0 messageID:{0, iD}];
    }
  }
}

- (void)setGroupPhoto:(id)photo forChat:(id)chat fromID:(id)d fromAccount:(id)account session:(id)session isPhotoRefresh:(BOOL)refresh
{
  refreshCopy = refresh;
  if (IMGetDomainBoolForKey())
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "*** Not sending group photo because of FailGroupPhotoSend default", &v28, 2u);
      }
    }

    return;
  }

  if (!session)
  {
    return;
  }

  v15 = objc_alloc_init(NSMutableDictionary);
  [(MessageGroupController *)self _populateP2PDictionary:v15 chat:chat fromID:d];
  incrementParticipantVersionForChat(chat);
  if (off_123CB0[0])
  {
    CFDictionarySetValue(v15, off_123C98[0], off_123CB0[0]);
  }

  if (refreshCopy)
  {
    v16 = off_123CD8[0];
    if (!off_123CD8[0])
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v16 = off_123CD0[0];
  if (off_123CD0[0])
  {
LABEL_12:
    CFDictionarySetValue(v15, off_123CC8[0], v16);
  }

LABEL_13:
  if (photo)
  {
    CFDictionarySetValue(v15, off_123C80[0], photo);
  }

  v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [chat groupParticipantVersion]);
  if (v17)
  {
    CFDictionarySetValue(v15, IMDChatGroupParticipantVersionKey, v17);
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v28 = 138412802;
      v29 = [(MessageServiceSession *)[(MessageGroupController *)self session] groupIDForChat:chat];
      v30 = 2112;
      chatCopy = chat;
      v32 = 2112;
      v33 = v15;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Updating group photo groupID: %@   chat: %@   dictionary: %@", &v28, 0x20u);
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  participants = [chat participants];
  v20 = [participants countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v20)
  {
    v21 = *v24;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(participants);
        }

        [session _forwardP2PGroupCommand:v15 fromPerson:d toPerson:objc_msgSend(*(*(&v23 + 1) + 8 * i) toGroup:{"ID"), 0}];
      }

      v20 = [participants countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v20);
  }

  [session _forwardP2PGroupCommand:v15 fromPerson:d toPerson:objc_msgSend(d toGroup:{"_stripFZIDPrefix"), 0}];
}

- (BOOL)_shouldRequestGroupPhoto:(id)photo incomingParticipantVersion:(int64_t)version incomingGroupPhotoCreationDate:(id)date
{
  groupPhotoGuid = [photo groupPhotoGuid];
  if (![groupPhotoGuid length])
  {
    goto LABEL_11;
  }

  v9 = [+[IMDFileTransferCenter sharedInstance](IMDFileTransferCenter transferForGUID:"transferForGUID:", groupPhotoGuid];
  if (!v9 || (v10 = v9, ![v9 existsAtLocalPath]))
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v24 = 138412290;
        versionCopy = groupPhotoGuid;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Request group photo, we don't have a valid file transfer for group photo guid: %@", &v24, 0xCu);
      }
    }

LABEL_11:
    if (date)
    {
      if ([objc_msgSend(photo "guid")])
      {
        return 1;
      }

      if (!IMOSLoggingEnabled())
      {
        return 0;
      }

      v17 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        return 0;
      }

      v24 = 138412290;
      versionCopy = photo;
      v18 = "Don't request group photo for chat, guid is nil for some reason: %@";
      v19 = v17;
      v20 = 12;
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
        return 0;
      }

      v22 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        return 0;
      }

      LOWORD(v24) = 0;
      v18 = "Don't request group photo, incomingGroupPhotoCreationDate is nil.";
      v19 = v22;
      v20 = 2;
    }

LABEL_23:
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, v18, &v24, v20);
    return 0;
  }

  properties = [photo properties];
  v12 = [objc_msgSend(properties objectForKey:{off_123D00[0]), "integerValue"}];
  v13 = IMOSLoggingEnabled();
  if (v12 >= version)
  {
    if (!v13)
    {
      return 0;
    }

    v21 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    v24 = 138412546;
    versionCopy = groupPhotoGuid;
    v26 = 2112;
    localPath = [v10 localPath];
    v18 = "Don't request group photo, we already have a file transfer for group photo guid: %@ and it exists at the local path: %@";
    v19 = v21;
    v20 = 22;
    goto LABEL_23;
  }

  if (!v13)
  {
    return 1;
  }

  v14 = OSLogHandleForIMFoundationCategory();
  v15 = 1;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v24 = 134218240;
    versionCopy = version;
    v26 = 2048;
    localPath = v12;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Incoming group photo participant version (%ld) is newer than local version with last known photo change (%ld), requesting photo", &v24, 0x16u);
  }

  return v15;
}

- (void)_populateP2PDictionary:(id)dictionary chat:(id)chat omitName:(BOOL)name fromID:(id)d
{
  v10 = [(MessageServiceSession *)[(MessageGroupController *)self session] groupIDForChat:chat];
  if (v10)
  {
    CFDictionarySetValue(dictionary, off_123C68[0], v10);
  }

  if (!name)
  {
    displayName = [chat displayName];
    if (displayName)
    {
      CFDictionarySetValue(dictionary, off_123CE0[0], displayName);
    }
  }

  v12 = sub_7EAF0(chat, d);
  if (v12)
  {
    CFDictionarySetValue(dictionary, off_123C58[0], v12);
  }

  v13 = off_123CF8[0];
  if (off_123CF8[0])
  {
    v14 = off_123CF0[0];

    CFDictionarySetValue(dictionary, v14, v13);
  }
}

- (void)_requestGroupPhotoUpdate:(id)update fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier session:(id)session
{
  v11 = -[NSMutableDictionary objectForKey:](-[MessageGroupController mostRecentGroupPhotoRequestDates](self, "mostRecentGroupPhotoRequestDates"), "objectForKey:", [update guid]);
  [+[NSDate date](NSDate timeIntervalSinceDate:"timeIntervalSinceDate:", v11];
  v13 = v12;
  [(MessageGroupController *)self _groupPhotoRequestRateLimit];
  v15 = v14;
  v16 = IMOSLoggingEnabled();
  if (v13 >= v15)
  {
    if (v16)
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        updateCopy2 = [update guid];
        v37 = 2112;
        identifierCopy2 = identifier;
        v39 = 2112;
        toIdentifierCopy2 = toIdentifier;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "About to request group photo for chatGuid %@ from %@ to %@", buf, 0x20u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        updateCopy2 = update;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, " => chat: %@", buf, 0xCu);
      }
    }

    if ([identifier length])
    {
      if ([toIdentifier length])
      {
        v23 = [objc_msgSend(update "guid")] == 0;
        v24 = IMOSLoggingEnabled();
        if (v23)
        {
          if (v24)
          {
            v31 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              updateCopy2 = update;
              v18 = "Cannot request chat, guid is nil: %@";
              v19 = v31;
              v20 = 12;
              goto LABEL_29;
            }
          }
        }

        else
        {
          if (v24)
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              guid = [update guid];
              *buf = 138412802;
              updateCopy2 = guid;
              v37 = 2112;
              identifierCopy2 = identifier;
              v39 = 2112;
              toIdentifierCopy2 = toIdentifier;
              _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "About to request group photo for chatGuid %@ from %@ to %@", buf, 0x20u);
            }
          }

          -[NSMutableDictionary setObject:forKey:](-[MessageGroupController mostRecentGroupPhotoRequestDates](self, "mostRecentGroupPhotoRequestDates"), "setObject:forKey:", +[NSDate date](NSDate, "date"), [update guid]);
          v27 = objc_alloc_init(NSMutableDictionary);
          [(MessageGroupController *)self _populateP2PDictionary:v27 chat:update fromID:identifier];
          v28 = +[NSString stringGUID];
          if (off_123CB8[0])
          {
            CFDictionarySetValue(v27, off_123C98[0], off_123CB8[0]);
          }

          if (v28)
          {
            CFDictionarySetValue(v27, off_123CC0[0], v28);
          }

          v33[0] = @"chat";
          v33[1] = @"fromIdentifier";
          v34[0] = update;
          v34[1] = identifier;
          v33[2] = @"toIdentifier";
          v33[3] = @"session";
          v34[2] = toIdentifier;
          v34[3] = session;
          v33[4] = off_123CC0[0];
          v34[4] = v28;
          -[NSMutableDictionary setObject:forKey:](-[MessageGroupController groupPhotoRequestsInFlight](self, "groupPhotoRequestsInFlight"), "setObject:forKey:", +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v34, v33, 5), [update guid]);
          v29 = dispatch_time(0, 15000000000);
          v32[0] = _NSConcreteStackBlock;
          v32[1] = 3221225472;
          v32[2] = sub_83FE0;
          v32[3] = &unk_113C70;
          v32[4] = update;
          v32[5] = self;
          dispatch_after(v29, &_dispatch_main_q, v32);
          [session _forwardP2PGroupCommand:v27 fromPerson:identifier toPerson:toIdentifier toGroup:0];
        }

        return;
      }

      if (!IMOSLoggingEnabled())
      {
        return;
      }

      v30 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        return;
      }

      *buf = 0;
      v18 = "Cannot request chat, toIdentifier is nil";
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
        return;
      }

      v30 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        return;
      }

      *buf = 0;
      v18 = "Cannot request chat, fromIdentifier is nil";
    }

    v19 = v30;
    v20 = 2;
    goto LABEL_29;
  }

  if (v16)
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      updateCopy2 = v11;
      v37 = 2112;
      identifierCopy2 = [update guid];
      v18 = "We already requested a photo from this group at %@. not requesting again. chatGUID %@";
      v19 = v17;
      v20 = 22;
LABEL_29:
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, v18, buf, v20);
    }
  }
}

- (double)_groupPhotoRequestRateLimit
{
  v2 = IMGetDomainIntForKey();
  result = v2;
  if (v2 <= 0)
  {
    return 300.0;
  }

  return result;
}

- (void)requestGroupPhotoIfNecessary:(id)necessary incomingParticipantVersion:(int64_t)version incomingGroupPhotoCreationDate:(id)date toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier messageIsFromStorage:(BOOL)storage session:(id)session
{
  storageCopy = storage;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      guid = [necessary guid];
      v18 = @"NO";
      *buf = 138413058;
      fromIdentifierCopy = guid;
      v36 = 2048;
      if (storageCopy)
      {
        v18 = @"YES";
      }

      fromIdentifierCopy2 = version;
      v38 = 2112;
      identifierCopy2 = date;
      v40 = 2112;
      necessaryCopy3 = v18;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Requesting group photo if necessary. chatGuid %@ incomingParticipantVersion %ld incomingGroupPhotoCreationDate %@ fromStorage %@", buf, 0x2Au);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      fromIdentifierCopy = necessary;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, " => chat: %@", buf, 0xCu);
    }
  }

  if (![(MessageGroupController *)self _shouldRequestGroupPhoto:necessary incomingParticipantVersion:version incomingGroupPhotoCreationDate:date])
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    v27 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 138412290;
    fromIdentifierCopy = necessary;
    v28 = "Not requesting group photo for chat %@";
    v29 = v27;
    v30 = 12;
LABEL_31:
    _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, v28, buf, v30);
    return;
  }

  if (!storageCopy)
  {
    [(MessageGroupController *)self _requestGroupPhotoUpdate:necessary fromIdentifier:fromIdentifier toIdentifier:identifier session:session];
    return;
  }

  if (necessary)
  {
    v20 = fromIdentifier == 0;
  }

  else
  {
    v20 = 1;
  }

  v23 = !v20 && identifier != 0 && session != 0;
  v24 = IMOSLoggingEnabled();
  if (!v23)
  {
    if (!v24)
    {
      return;
    }

    v31 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 138413058;
    fromIdentifierCopy = fromIdentifier;
    v36 = 2112;
    fromIdentifierCopy2 = identifier;
    v38 = 2112;
    identifierCopy2 = session;
    v40 = 2112;
    necessaryCopy3 = necessary;
    v28 = "Message is from storage, but an object is nil fromIdentifer: %@ toIdentifier: %@ session: %@ chat: %@";
    v29 = v31;
    v30 = 42;
    goto LABEL_31;
  }

  if (v24)
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      guid2 = [necessary guid];
      *buf = 138412802;
      fromIdentifierCopy = guid2;
      v36 = 2112;
      fromIdentifierCopy2 = fromIdentifier;
      v38 = 2112;
      identifierCopy2 = identifier;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "Adding chat to pending group photo requests %@ fromIdentifier %@ toIdentifier %@", buf, 0x20u);
    }
  }

  v32[0] = @"chat";
  v32[1] = @"fromIdentifier";
  v33[0] = necessary;
  v33[1] = fromIdentifier;
  v32[2] = @"toIdentifier";
  v32[3] = @"session";
  v33[2] = identifier;
  v33[3] = session;
  -[NSMutableDictionary setObject:forKey:](-[MessageGroupController groupPhotoRequestsFromStorage](self, "groupPhotoRequestsFromStorage"), "setObject:forKey:", +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v33, v32, 4), [necessary guid]);
}

- (void)requestGroupPhotosForMessagesFromStorage
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v6 = [(NSMutableDictionary *)[(MessageGroupController *)self groupPhotoRequestsFromStorage] count];
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Requesting group photos for messages from storage %lu", buf, 0xCu);
    }
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_84620;
  v4[3] = &unk_1143F8;
  v4[4] = self;
  [(NSMutableDictionary *)[(MessageGroupController *)self groupPhotoRequestsFromStorage] enumerateKeysAndObjectsUsingBlock:v4];
  [(NSMutableDictionary *)[(MessageGroupController *)self groupPhotoRequestsFromStorage] removeAllObjects];
}

- (void)_sendGroupPhoto:(id)photo toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier toToken:(id)token session:(id)session requestGUID:(id)d
{
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v20 = 138412546;
      photoCopy = identifier;
      v22 = 2112;
      guid = [photo guid];
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Responding to group photo request from %@ for chatGuid %@", &v20, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      photoCopy = photo;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, " => chat: %@", &v20, 0xCu);
    }
  }

  v17 = objc_alloc_init(NSMutableDictionary);
  [(MessageGroupController *)self _populateP2PDictionary:v17 chat:photo fromID:fromIdentifier];
  if (off_123CB0[0])
  {
    CFDictionarySetValue(v17, off_123C98[0], off_123CB0[0]);
  }

  if (off_123CD8[0])
  {
    CFDictionarySetValue(v17, off_123CC8[0], off_123CD8[0]);
  }

  v18 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [photo groupParticipantVersion]);
  if (v18)
  {
    CFDictionarySetValue(v17, IMDChatGroupParticipantVersionKey, v18);
  }

  v19 = [session fileTransferDictionaryForChat:photo];
  if (v19)
  {
    CFDictionarySetValue(v17, off_123C80[0], v19);
  }

  if (d)
  {
    CFDictionarySetValue(v17, off_123CC0[0], d);
  }

  [session _forwardP2PGroupCommand:v17 fromPerson:fromIdentifier toPerson:identifier toGroup:0 toToken:token];
}

- (id)_findChatFromIdentifier:(id)identifier toIdentifier:(id)toIdentifier displayName:(id)name participants:(id)participants groupID:(id)d
{
  if ([+[IMFeatureFlags sharedFeatureFlags](IMFeatureFlags "sharedFeatureFlags")])
  {
    v13 = objc_alloc_init(NSMutableArray);
    v14 = v13;
    if (d)
    {
      [v13 addObject:d];
    }

    v15 = -[IMDChatRegistry bestCandidateGroupChatWithFromIdentifier:toIdentifier:displayName:participants:updatingToLatestiMessageGroupID:sortedIdentifiers:serviceName:](-[MessageGroupController chatRegistry](self, "chatRegistry"), "bestCandidateGroupChatWithFromIdentifier:toIdentifier:displayName:participants:updatingToLatestiMessageGroupID:sortedIdentifiers:serviceName:", identifier, toIdentifier, name, participants, d, v14, [-[MessageServiceSession service](-[MessageGroupController session](self "session")]);

    return v15;
  }

  else
  {
    session = [(MessageGroupController *)self session];

    return [(MessageServiceSession *)session bestCandidateGroupChatWithFromIdentifier:identifier toIdentifier:toIdentifier displayName:name participants:participants groupID:d];
  }
}

- (void)handleAddToNewGroup:(id)group groupID:(id)d groupPhotoTransferDict:(id)dict identifier:(id)identifier session:(id)session toIdentifier:(id)toIdentifier toName:(id)name toParticipants:(id)self0
{
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138413314;
      dCopy = d;
      v30 = 2112;
      identifierCopy = identifier;
      v32 = 2112;
      toIdentifierCopy = toIdentifier;
      v34 = 2112;
      nameCopy = name;
      v36 = 2112;
      participantsCopy = participants;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "handleAddToNewGroup called. groupID %@ identifier %@ toIdentifier %@ toName %@ toParticipants %@", buf, 0x34u);
    }
  }

  if ([session _shouldBlackholeGroupChatFromSender:identifier toRecipient:toIdentifier withOtherParticipants:participants forAccount:group])
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v18 = "should blackhole from participants. early returning";
LABEL_17:
        v25 = v17;
        v26 = 2;
LABEL_18:
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, v18, buf, v26);
      }
    }
  }

  else
  {
    v19 = [MessageGroupController memberDisplayIDsFromParticipants:participants toIdentifier:toIdentifier];
    if ([v19 count] < 2)
    {
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v18 = "added to a group chat with only one other person -- dropping this message";
          goto LABEL_17;
        }
      }
    }

    else
    {
      v20 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v19 count]);
      [MessageGroupController addMembers:v19 toHandleInfo:v20];
      v21 = [(IMDChatRegistry *)[(MessageGroupController *)self chatRegistry] generateUnusedChatIdentifierForGroupChatWithAccount:group];
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          dCopy = v21;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "Will create chat with identifier %@", buf, 0xCu);
        }
      }

      [session didJoinChat:v21 style:43 displayName:name groupID:d lastAddressedHandle:objc_msgSend(toIdentifier lastAddressedSIMID:"_stripFZIDPrefix") handleInfo:{0, v20}];
      v23 = [(IMDChatRegistry *)[(MessageGroupController *)self chatRegistry] existingChatWithIdentifier:v21 account:group];
      if (v23)
      {
        +[NSDate timeIntervalSinceReferenceDate];
        [v23 setLastMessageTimeStampOnLoad:(v24 * 1000000000.0)];
        return;
      }

      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          dCopy = v21;
          v18 = "failed to create new chat with identifier %@";
          v25 = v27;
          v26 = 12;
          goto LABEL_18;
        }
      }
    }
  }
}

- (id)_stringSubDictionaryOfDictionary:(id)dictionary forKey:(id)key
{
  v4 = [dictionary _dictionaryForKey:key];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_84EC8;
  v6[3] = &unk_114420;
  v6[4] = &v7;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
  if (!*(v8 + 24))
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)handler:(id)handler account:(id)account groupMessagePayload:(id)payload messageID:(id)d toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier idsService:(id)service fromToken:(id)self0 timeStamp:(id)self1 storageContext:(id)self2 batchContext:(id)self3
{
  _stripFZIDPrefix = [fromIdentifier _stripFZIDPrefix];
  _stripFZIDPrefix2 = [identifier _stripFZIDPrefix];
  v18 = [_stripFZIDPrefix2 isEqualToIgnoringCase:_stripFZIDPrefix];
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = @"NO";
      *buf = 138413314;
      *v115 = _stripFZIDPrefix;
      if (v18)
      {
        v20 = @"YES";
      }

      *&v115[8] = 2112;
      payloadCopy2 = payload;
      *v117 = 2112;
      *&v117[2] = v20;
      v118 = 2112;
      *v119 = _stripFZIDPrefix2;
      *&v119[8] = 2112;
      stampCopy = stamp;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "Incoming group message payload from: %@   payload: %@  isReflection: %@  to: %@, timestamp: %@", buf, 0x34u);
    }
  }

  v110 = v18;
  v21 = [payload objectForKey:off_123C98[0]];
  v112 = [payload _arrayForKey:off_123C58[0]];
  v22 = [payload _stringForKey:off_123C60[0]];
  v107 = [payload _arrayForKey:off_123C78[0]];
  v23 = [payload _stringForKey:off_123C70[0]];
  v103 = [(MessageGroupController *)self _stringSubDictionaryOfDictionary:payload forKey:off_123C90[0]];
  v24 = [payload _stringForKey:off_123C68[0]];
  v25 = [payload _stringForKey:off_123CE0[0]];
  v26 = [payload objectForKey:off_123D10[0]];
  v27 = @"NO";
  if (v26 && [v26 integerValue] < 2)
  {
    v27 = @"YES";
  }

  if (![+[IMGroupBlocklistManager isGroupInBlocklist:"isGroupInBlocklist:"]
  {
    if ([v21 isEqualToString:off_123CA0[0]])
    {
      if (IMOSLoggingEnabled())
      {
        v32 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          *v115 = v22;
          *&v115[8] = 2112;
          payloadCopy2 = v23;
          _os_log_impl(&dword_0, v32, OS_LOG_TYPE_INFO, "Name update for %@ => %@", buf, 0x16u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v33 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v115 = v24;
          _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, "            Group ID: %@", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v34 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v115 = v112;
          _os_log_impl(&dword_0, v34, OS_LOG_TYPE_INFO, "   From participants: %@", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v115 = v22;
          _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "           From name: %@", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v36 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v115 = v23;
          _os_log_impl(&dword_0, v36, OS_LOG_TYPE_INFO, "             To name: %@", buf, 0xCu);
        }
      }

      v37 = [(MessageGroupController *)self _findChatFromIdentifier:_stripFZIDPrefix toIdentifier:_stripFZIDPrefix2 displayName:v22 participants:v112 groupID:v24];
      if (v37)
      {
        if ([(MessageGroupController *)self _validateChat:v37 containsFromIdentifier:_stripFZIDPrefix isReflection:v110])
        {
          if (IMOSLoggingEnabled())
          {
            v38 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v115 = v23;
              _os_log_impl(&dword_0, v38, OS_LOG_TYPE_INFO, "   Updating to display name: %@", buf, 0xCu);
            }
          }

          if (v110)
          {
            _stripFZIDPrefix = 0;
          }

          [handler didReceiveDisplayNameChange:v23 guid:d fromID:_stripFZIDPrefix toIdentifier:_stripFZIDPrefix2 forChat:objc_msgSend(v37 style:"chatIdentifier") account:{objc_msgSend(v37, "style"), account}];
        }

        return;
      }

      if (!IMOSLoggingEnabled())
      {
        return;
      }

      v52 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        return;
      }

      *buf = 0;
      v29 = "   No group found";
      goto LABEL_85;
    }

    if (![v21 isEqualToString:off_123CA8[0]])
    {
      if (![v21 isEqualToString:off_123CB0[0]])
      {
        if ([v21 isEqualToString:off_123CB8[0]])
        {
          LOBYTE(v99) = v110;
          -[MessageGroupController _handleGroupVisualIdentityRequest:fromParticipants:groupID:fromIdentifier:session:toIdentifier:fromToken:requestGUID:isReflection:](self, "_handleGroupVisualIdentityRequest:fromParticipants:groupID:fromIdentifier:session:toIdentifier:fromToken:requestGUID:isReflection:", v25, v112, v24, _stripFZIDPrefix, handler, _stripFZIDPrefix2, token, [payload _stringForKey:off_123CC0[0]], v99);
        }

        else if (IMOSLoggingEnabled())
        {
          v53 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *v115 = v21;
            v29 = "Unsupported group message command %@";
            v30 = v53;
            v31 = 12;
            goto LABEL_13;
          }
        }

        return;
      }

      v48 = [(MessageGroupController *)self _findChatFromIdentifier:_stripFZIDPrefix toIdentifier:_stripFZIDPrefix2 displayName:v25 participants:v112 groupID:v24];
      v49 = [payload _dictionaryForKey:off_123C80[0]];
      if (IMOSLoggingEnabled())
      {
        v50 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v115 = v48;
          _os_log_impl(&dword_0, v50, OS_LOG_TYPE_INFO, "Received group photo update for chat %@", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v51 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          *v115 = _stripFZIDPrefix;
          *&v115[8] = 2112;
          payloadCopy2 = v49;
          _os_log_impl(&dword_0, v51, OS_LOG_TYPE_INFO, "=> Received group photo update from: %@, payload: %@", buf, 0x16u);
        }
      }

      if (!v48 || [v48 style] == 45 || !-[MessageGroupController _validateChat:containsFromIdentifier:isReflection:](self, "_validateChat:containsFromIdentifier:isReflection:", v48, _stripFZIDPrefix, v110))
      {
        return;
      }

      if (![v48 isPlaceholder])
      {
        v113 = [payload _numberForKey:IMDChatGroupParticipantVersionKey];
        v70 = -[NSMutableDictionary objectForKey:](-[MessageGroupController groupPhotoRequestsInFlight](self, "groupPhotoRequestsInFlight"), "objectForKey:", [v48 guid]);
        v71 = [v70 _stringForKey:off_123CC0[0]];
        if (IMOSLoggingEnabled())
        {
          v72 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
          {
            v73 = [payload _stringForKey:off_123CC0[0]];
            *buf = 138412546;
            *v115 = v71;
            *&v115[8] = 2112;
            payloadCopy2 = v73;
            _os_log_impl(&dword_0, v72, OS_LOG_TYPE_INFO, "Found an inflight request with GUID: %@, incoming GUID: %@", buf, 0x16u);
          }
        }

        if ([objc_msgSend(payload _stringForKey:{off_123CC0[0]), "isEqualToString:", v71}])
        {
          v74 = [payload _stringForKey:off_123CC8[0]];
          v108 = [v74 isEqualToString:off_123CD8[0]];
        }

        else
        {
          v108 = 0;
        }

        v77 = [payload _stringForKey:off_123CC8[0]];
        if ([v77 isEqualToString:off_123CD8[0]])
        {
          v111 = ([payload _stringForKey:off_123CC0[0]] != 0) & (v108 ^ 1);
        }

        else
        {
          v111 = 0;
        }

        v78 = [payload _stringForKey:off_123CC8[0]];
        if ([v78 isEqualToString:off_123CD8[0]])
        {
          v79 = [payload _stringForKey:off_123CC0[0]] == 0;
        }

        else
        {
          v79 = 0;
        }

        if ([objc_msgSend(objc_msgSend(v70 _stringForKey:{@"toIdentifier", "_stripFZIDPrefix"), "isEqualToString:", objc_msgSend(_stripFZIDPrefix, "_stripFZIDPrefix")}])
        {
          v80 = [payload _stringForKey:off_123CC8[0]] == 0;
        }

        else
        {
          v80 = 0;
        }

        v81 = [payload _stringForKey:off_123CC8[0]];
        v82 = [v81 isEqualToString:off_123CD0[0]];
        v83 = -[IMDAttachmentStore attachmentWithGUID:](+[IMDAttachmentStore sharedInstance](IMDAttachmentStore, "sharedInstance"), "attachmentWithGUID:", [v48 groupPhotoGuid]);
        [v48 groupPhotoGuid];
        [IMFileTransfer guidForFileTransferDictionary:v49];
        if (IMAreObjectsLogicallySame())
        {
          if (v83)
          {
            v84 = [v83 existsAtLocalPath] ^ 1;
          }

          else
          {
            v84 = 1;
          }
        }

        else
        {
          v84 = 0;
        }

        v89 = v108 | v80 | v111 | v79;
        if (IMOSLoggingEnabled())
        {
          v90 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
          {
            *buf = 67110656;
            *v115 = v108;
            *&v115[4] = 1024;
            *&v115[6] = v111;
            LOWORD(payloadCopy2) = 1024;
            *(&payloadCopy2 + 2) = v79;
            HIWORD(payloadCopy2) = 1024;
            *v117 = v80;
            *&v117[4] = 1024;
            *&v117[6] = v82;
            v118 = 1024;
            *v119 = ((v89 | v82) & 1) == 0;
            *&v119[4] = 1024;
            *&v119[6] = v84;
            _os_log_impl(&dword_0, v90, OS_LOG_TYPE_INFO, "Group photo message parsed: isExplicitlyRequestedResponse: %d, isExplicitResponseThatWeDidNotRequest: %d, isExplicitRefresh: %d, isLegacyRequestedResponse: %d, isExplicitlyNewPhoto: %d, isAssumedLegacyNewPhoto: %d, isForMissingLocalTransfer: %d", buf, 0x2Cu);
          }
        }

        properties = [v48 properties];
        v92 = [objc_msgSend(properties objectForKey:{off_123D00[0]), "integerValue"}];
        intValue = [v113 intValue];
        v94 = v92 == [v113 intValue];
        if (IMOSLoggingEnabled())
        {
          v95 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
          {
            *buf = 134218242;
            *v115 = v92;
            *&v115[8] = 2112;
            payloadCopy2 = v113;
            _os_log_impl(&dword_0, v95, OS_LOG_TYPE_INFO, " => currentVersion %ld incomingVersion %@", buf, 0x16u);
          }
        }

        if ((v111 & 1) == 0 && (v92 < intValue) | v94 & v84 & 1 | (v113 == 0))
        {
          if (v113)
          {
            setParticipantVersionForChat(v48, [v113 integerValue]);
            sub_7E65C(v48, [v113 integerValue]);
            sub_81AF0(v48, stamp);
          }

          [handler receivedGroupPhotoUpdate:v49 chat:v48 sender:_stripFZIDPrefix isHidden:v89 & 1];
        }

        return;
      }

      if (!IMOSLoggingEnabled())
      {
        return;
      }

      v52 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        return;
      }

      *buf = 0;
      v29 = "Ignoring group photo because it is for a placeholder chat";
LABEL_85:
      v30 = v52;
      v31 = 2;
      goto LABEL_13;
    }

    if (!v22)
    {
      v22 = v23;
    }

    v102 = [payload _dictionaryForKey:off_123C80[0]];
    v101 = [payload _dictionaryForKey:off_123C88[0]];
    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v115 = v107;
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_INFO, "Updating participants to: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v40 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v115 = v24;
        _os_log_impl(&dword_0, v40, OS_LOG_TYPE_INFO, "            Group ID: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v41 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v115 = v112;
        _os_log_impl(&dword_0, v41, OS_LOG_TYPE_INFO, "   From participants: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v42 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v115 = v22;
        _os_log_impl(&dword_0, v42, OS_LOG_TYPE_INFO, "           Group name: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v43 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v115 = v107;
        _os_log_impl(&dword_0, v43, OS_LOG_TYPE_INFO, "     To participants: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v44 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v115 = v27;
        _os_log_impl(&dword_0, v44, OS_LOG_TYPE_INFO, "    From engram device: %@", buf, 0xCu);
      }
    }

    v45 = [(MessageGroupController *)self _findChatFromIdentifier:_stripFZIDPrefix toIdentifier:_stripFZIDPrefix2 displayName:v22 participants:v112 groupID:v24];
    v46 = v45;
    if (!v45)
    {
      goto LABEL_198;
    }

    if (!-[MessageGroupController _validateChat:containsFromIdentifier:isReflection:](self, "_validateChat:containsFromIdentifier:isReflection:", v45, _stripFZIDPrefix, v110) || [objc_msgSend(v46 "engramID")] && -[MessageGroupController _checkForParticipantLeaveOnENGroup:groupMessagePayload:toIdentifier:fromIdentifier:service:](self, "_checkForParticipantLeaveOnENGroup:groupMessagePayload:toIdentifier:fromIdentifier:service:", v46, payload, _stripFZIDPrefix2, _stripFZIDPrefix, service))
    {
      return;
    }

    if ([v46 style] == 45)
    {
LABEL_198:
      if (IMOSLoggingEnabled())
      {
        v47 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v47, OS_LOG_TYPE_INFO, "   No group found", buf, 2u);
        }
      }

      [(MessageGroupController *)self handleAddToNewGroup:account groupID:v24 groupPhotoTransferDict:v102 identifier:_stripFZIDPrefix session:handler toIdentifier:_stripFZIDPrefix2 toName:v23 toParticipants:v107];
      return;
    }

    if (IMOSLoggingEnabled())
    {
      v54 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *v115 = v107;
        *&v115[8] = 2112;
        payloadCopy2 = _stripFZIDPrefix2;
        _os_log_impl(&dword_0, v54, OS_LOG_TYPE_INFO, "   Updating participants to be: %@   toIdentifier: %@", buf, 0x16u);
      }
    }

    v55 = [payload _numberForKey:IMDChatGroupParticipantVersionKey];
    groupParticipantVersion = [v46 groupParticipantVersion];
    if (groupParticipantVersion <= [v55 intValue])
    {
      setParticipantVersionForChat(v46, [v55 integerValue]);
    }

    else
    {
      incrementParticipantVersionForChat(v46);
    }

    sub_81AF0(v46, stamp);
    if ([v46 state] || !objc_msgSend(objc_msgSend(payload, "_stringForKey:", off_123CF0[0]), "length"))
    {
      goto LABEL_98;
    }

    if (IMOSLoggingEnabled())
    {
      v64 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v115 = v46;
        _os_log_impl(&dword_0, v64, OS_LOG_TYPE_INFO, "Incoming group participant update for unjoined chat %@", buf, 0xCu);
      }
    }

    if ([v107 containsObject:_stripFZIDPrefix2])
    {
      if (IMOSLoggingEnabled())
      {
        v65 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v65, OS_LOG_TYPE_INFO, "Looks like we are going to get added to this chat so let's take the incoming set of participants", buf, 2u);
        }
      }

      v100 = sub_7EAF0(v46, 0);
      if (-[__CFArray count](v100, "count") && [v107 count])
      {
        v104 = [v107 arrayByExcludingObjectsInArray:v100];
        v57 = [(__CFArray *)v100 arrayByExcludingObjectsInArray:v107];
        if (IMOSLoggingEnabled())
        {
          v66 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *v115 = v104;
            _os_log_impl(&dword_0, v66, OS_LOG_TYPE_INFO, "Adding participants %@", buf, 0xCu);
          }
        }

        v67 = [[GroupConvergenceContext alloc] initWithChat:v46];
        [(GroupConvergenceContext *)v67 setGroupID:v24];
        [(GroupConvergenceContext *)v67 setToParticipants:v107];
        [(GroupConvergenceContext *)v67 setParticipantsToAdd:v104];
        [(GroupConvergenceContext *)v67 setParticipantsToRemove:v57];
        [(GroupConvergenceContext *)v67 setMessageID:d];
        [(GroupConvergenceContext *)v67 setParticipantChangeGUIDs:v103];
        [(GroupConvergenceContext *)v67 setToIdentifier:_stripFZIDPrefix2];
        [(GroupConvergenceContext *)v67 setFromIdentifier:_stripFZIDPrefix];
        [(GroupConvergenceContext *)v67 setIsReflection:v110];
        [(GroupConvergenceContext *)v67 setAccount:account];
        [(MessageGroupController *)self _processParticipantConvergenceResult:[GroupParticipantConvergenceResult forChat:"groupParticipantConvergenceResultForUpdateType:context:" groupParticipantConvergenceResultForUpdateType:v67 context:?], v46];
        if (IMOSLoggingEnabled())
        {
          v68 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *v115 = v57;
            _os_log_impl(&dword_0, v68, OS_LOG_TYPE_INFO, "Also remove participants we do not have now %@", buf, 0xCu);
          }
        }

        [(MessageGroupController *)self _processParticipantConvergenceResult:[GroupParticipantConvergenceResult forChat:"groupParticipantConvergenceResultForUpdateType:context:" groupParticipantConvergenceResultForUpdateType:v67 context:?], v46];

        v69 = 1;
      }

      else
      {
        v69 = 0;
        v57 = 0;
        v104 = 0;
      }

      if ([v46 style] != 45 && v102)
      {
        isPlaceholder = [v46 isPlaceholder];
        v87 = IMOSLoggingEnabled();
        if (isPlaceholder)
        {
          if (v87)
          {
            v88 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v88, OS_LOG_TYPE_INFO, "Ignoring group photo because it is for a placeholder chat", buf, 2u);
            }
          }
        }

        else
        {
          if (v87)
          {
            v96 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v115 = v46;
              _os_log_impl(&dword_0, v96, OS_LOG_TYPE_INFO, "Got group photo for unjoined chat %@", buf, 0xCu);
            }
          }

          [handler receivedGroupPhotoUpdate:v102 chat:v46 sender:_stripFZIDPrefix isHidden:1];
        }
      }

      if ([+[IMFeatureFlags sharedFeatureFlags](IMFeatureFlags "sharedFeatureFlags")] && objc_msgSend(v46, "style") != 45 && v101)
      {
        if (IMOSLoggingEnabled())
        {
          v97 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *v115 = v46;
            _os_log_impl(&dword_0, v97, OS_LOG_TYPE_INFO, "Got transcript background for unjoined chat %@", buf, 0xCu);
          }
        }

        +[IMSenderContext contextWithKnownSender:](IMSenderContext, "contextWithKnownSender:", [+[IMDChatRegistry hasKnownSenderChatWithChatIdentifier:"hasKnownSenderChatWithChatIdentifier:"];
        [IMAttachmentBlastdoor generateTranscriptBackgroundCommandFrom:"generateTranscriptBackgroundCommandFrom:senderContext:completion:" senderContext:v101 completion:?];
      }

      else if (IMOSLoggingEnabled())
      {
        v98 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          *v115 = v100;
          *&v115[8] = 2112;
          payloadCopy2 = v107;
          _os_log_impl(&dword_0, v98, OS_LOG_TYPE_INFO, "Empty currentParticipantsExcludingSelf %@ or toParicipants %@", buf, 0x16u);
        }
      }

      if (v69)
      {
        goto LABEL_155;
      }
    }

    else
    {
LABEL_98:
      v104 = 0;
      v57 = 0;
    }

    v58 = [v112 count];
    if (v58 > [v107 count])
    {
      v57 = [v112 arrayByExcludingObjectsInArray:v107];
      if (IMOSLoggingEnabled())
      {
        v59 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v115 = v57;
          _os_log_impl(&dword_0, v59, OS_LOG_TYPE_INFO, "Participants to remove %@", buf, 0xCu);
        }
      }

      v60 = [[GroupConvergenceContext alloc] initWithChat:v46];
      [(GroupConvergenceContext *)v60 setGroupID:v24];
      [(GroupConvergenceContext *)v60 setToParticipants:v107];
      [(GroupConvergenceContext *)v60 setParticipantsToRemove:v57];
      [(GroupConvergenceContext *)v60 setParticipantChangeGUIDs:v103];
      [(GroupConvergenceContext *)v60 setMessageID:d];
      [(GroupConvergenceContext *)v60 setToIdentifier:_stripFZIDPrefix2];
      [(GroupConvergenceContext *)v60 setFromIdentifier:_stripFZIDPrefix];
      [(GroupConvergenceContext *)v60 setIsReflection:v110];
      [(GroupConvergenceContext *)v60 setAllowSelfRemoval:1];
      [(GroupConvergenceContext *)v60 setAccount:account];
      v61 = [GroupParticipantConvergenceResult groupParticipantConvergenceResultForUpdateType:1 context:v60];
      goto LABEL_154;
    }

    __imSetFromArray = [v107 __imSetFromArray];
    __imSetFromArray2 = [v112 __imSetFromArray];
    if ([__imSetFromArray isEqualToSet:__imSetFromArray2] && objc_msgSend(payload, "_stringForKey:", off_123CF0[0]))
    {
      if (!IMOSLoggingEnabled())
      {
        return;
      }

      v52 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        return;
      }

      *buf = 0;
      v29 = "GroupNew Incoming participant update has the same target and source pariticpants. Ignoring this message";
      goto LABEL_85;
    }

    if ([__imSetFromArray isEqualToSet:__imSetFromArray2])
    {
      v104 = [v107 arrayByExcludingObjectsInArray:{sub_7EAF0(v46, _stripFZIDPrefix2)}];
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_153;
      }

      v75 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
      {
        goto LABEL_153;
      }

      *buf = 138412290;
      *v115 = v104;
      v76 = "Adding participants from Okemo Taos device, participantsToAdd:%@";
    }

    else
    {
      v104 = [v107 arrayByExcludingObjectsInArray:v112];
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_153;
      }

      v75 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
      {
        goto LABEL_153;
      }

      *buf = 138412290;
      *v115 = v104;
      v76 = "Adding participants from non Okemo Taos device, participantsToAdd:%@";
    }

    _os_log_impl(&dword_0, v75, OS_LOG_TYPE_INFO, v76, buf, 0xCu);
LABEL_153:
    v60 = [[GroupConvergenceContext alloc] initWithChat:v46];
    [(GroupConvergenceContext *)v60 setGroupID:v24];
    [(GroupConvergenceContext *)v60 setToParticipants:v107];
    [(GroupConvergenceContext *)v60 setParticipantsToAdd:v104];
    [(GroupConvergenceContext *)v60 setParticipantChangeGUIDs:v103];
    [(GroupConvergenceContext *)v60 setMessageID:d];
    [(GroupConvergenceContext *)v60 setToIdentifier:_stripFZIDPrefix2];
    [(GroupConvergenceContext *)v60 setFromIdentifier:_stripFZIDPrefix];
    [(GroupConvergenceContext *)v60 setIsReflection:v110];
    [(GroupConvergenceContext *)v60 setAllowSelfRemoval:1];
    [(GroupConvergenceContext *)v60 setAccount:account];
    v61 = [GroupParticipantConvergenceResult groupParticipantConvergenceResultForUpdateType:0 context:v60];
LABEL_154:
    [(MessageGroupController *)self _processParticipantConvergenceResult:v61 forChat:v46];

LABEL_155:
    if ([(MessageGroupController *)self _canSendMessagesWithEngram])
    {
      if (IMOSLoggingEnabled())
      {
        v85 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v85, OS_LOG_TYPE_INFO, "Engram enabled -- so going to check to see if we can perform a legacy add / remove", buf, 2u);
        }
      }

      [(MessageGroupController *)self _checkAndPerformLegacyAddRemove:v46 participantsToAdd:v104 participantsToRemove:v57 service:service fromIdentifier:_stripFZIDPrefix2];
    }

    return;
  }

  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *v115 = v24;
      *&v115[8] = 2112;
      payloadCopy2 = payload;
      v29 = "Ignoring group message payload because groupId(%@) is in the denylist. Payload: %@";
      v30 = v28;
      v31 = 22;
LABEL_13:
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, v29, buf, v31);
    }
  }
}

- (BOOL)_validateChat:(id)chat containsFromIdentifier:(id)identifier isReflection:(BOOL)reflection
{
  if (reflection)
  {
LABEL_2:
    LOBYTE(v5) = 1;
    return v5;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  participants = [chat participants];
  v9 = [participants countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v9)
  {
    v10 = *v17;
LABEL_6:
    v11 = 0;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(participants);
      }

      if ([objc_msgSend(identifier "_stripFZIDPrefix")])
      {
        goto LABEL_2;
      }

      if (v9 == ++v11)
      {
        v9 = [participants countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v9)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      guid = [chat guid];
      *buf = 138412546;
      chatCopy = identifier;
      v22 = 2112;
      v23 = guid;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Received GenericGroupCommand from someone who is not in the group. fromIdentifier: %@ chatGuid: %@", buf, 0x16u);
    }
  }

  v5 = IMOSLoggingEnabled();
  if (v5)
  {
    v14 = OSLogHandleForIMFoundationCategory();
    v5 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
    if (v5)
    {
      *buf = 138412290;
      chatCopy = chat;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, " => chat: %@", buf, 0xCu);
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (void)_handleGroupVisualIdentityRequest:(id)request fromParticipants:(id)participants groupID:(id)d fromIdentifier:(id)identifier session:(id)session toIdentifier:(id)toIdentifier fromToken:(id)token requestGUID:(id)self0 isReflection:(BOOL)self1
{
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v23 = 138412290;
      dCopy = d;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Incoming group photo request for groupID %@", &v23, 0xCu);
    }
  }

  v19 = [(MessageGroupController *)self _findChatFromIdentifier:identifier toIdentifier:toIdentifier displayName:request participants:participants groupID:d];
  if (!v19 || [(MessageGroupController *)self _validateChat:v19 containsFromIdentifier:identifier isReflection:reflection])
  {
    groupPhotoGuid = [v19 groupPhotoGuid];
    if ([groupPhotoGuid length] && objc_msgSend(objc_msgSend(session, "fileTransferDictionaryForChat:", v19), "count"))
    {
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v23 = 138412290;
          dCopy = groupPhotoGuid;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "Responding with group photo with guid %@", &v23, 0xCu);
        }
      }

      [(MessageGroupController *)self _sendGroupPhoto:v19 toIdentifier:identifier fromIdentifier:toIdentifier toToken:token session:session requestGUID:iD];
    }

    else if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = 138412290;
        dCopy = v19;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "Dropping group photo request -- no group photo set or missing file transfer dictionary for chat %@", &v23, 0xCu);
      }
    }
  }
}

- (BOOL)_checkForParticipantLeaveOnENGroup:(id)group groupMessagePayload:(id)payload toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier service:(id)service
{
  v13 = [payload objectForKey:off_123D10[0]];
  if (!v13 || [v13 integerValue] > 1)
  {
    return 0;
  }

  if ([objc_msgSend(payload objectForKey:{off_123D18[0]), "BOOLValue"}])
  {
    fromIdentifierCopy = fromIdentifier;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_871B8;
    v18[3] = &unk_114470;
    v18[4] = identifier;
    [-[MessageGroupController engramControllerSharedInstance](self "engramControllerSharedInstance")];
  }

  if (!IMOSLoggingEnabled())
  {
    return 1;
  }

  v14 = OSLogHandleForIMFoundationCategory();
  v15 = 1;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    engramID = [group engramID];
    *buf = 138412290;
    v20 = engramID;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "We received a participant update from an engramCompatibleDevice so we want to drop it if we have an engramID for this chat: %@", buf, 0xCu);
  }

  return v15;
}

- (void)_checkAndPerformLegacyAddRemove:(id)remove participantsToAdd:(id)add participantsToRemove:(id)toRemove service:(id)service fromIdentifier:(id)identifier
{
  if ([add count] && objc_msgSend(objc_msgSend(remove, "engramID"), "length"))
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v16 = 138412546;
        toRemoveCopy = add;
        v18 = 2112;
        engramID = [remove engramID];
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Attempting to add participants from legacy device: %@ for engram group id: %@", &v16, 0x16u);
      }
    }

    [-[MessageGroupController engramControllerSharedInstance](self "engramControllerSharedInstance")];
  }

  if ([toRemove count] && objc_msgSend(objc_msgSend(remove, "engramID"), "length"))
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        engramID2 = [remove engramID];
        v16 = 138412546;
        toRemoveCopy = toRemove;
        v18 = 2112;
        engramID = engramID2;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Attempting to remove participants from legacy device: %@ for engram group id: %@", &v16, 0x16u);
      }
    }

    [-[MessageGroupController engramControllerSharedInstance](self "engramControllerSharedInstance")];
  }
}

- (BOOL)_shouldDropMessageGroupID:(id)d participants:(id)participants fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier
{
  if (IMSharedHelperAreObjectsLogicallySame())
  {
    return 0;
  }

  if ([d length] && -[IMGroupBlocklistManager isGroupInBlocklist:](+[IMGroupBlocklistManager sharedInstance](IMGroupBlocklistManager, "sharedInstance"), "isGroupInBlocklist:", d))
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      v9 = 1;
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        return v9;
      }

      v15 = 138412290;
      participantsCopy = d;
      v11 = "GroupID %@ was found in denylist, dropping message";
      v12 = v10;
LABEL_15:
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, v11, &v15, 0xCu);
      return v9;
    }

    return 1;
  }

  if ([(MessageGroupController *)self shouldDropDueToGroupSize:participants])
  {
    return 1;
  }

  if ([(MessageGroupController *)self _participantsContainBizID:participants])
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      v9 = 1;
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        return v9;
      }

      v15 = 138412290;
      participantsCopy = participants;
      v11 = "Dropping message because participant list contains biz id. participants: %@";
      v12 = v14;
      goto LABEL_15;
    }

    return 1;
  }

  return 0;
}

- (BOOL)_participantsContainBizID:(id)d
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [d countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(d);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ((IMStringIsBusinessID() & 1) != 0 || ([objc_msgSend(v8 "lowercaseString")]))
        {
          LOBYTE(v4) = 1;
          return v4;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v4 = [d countByEnumeratingWithState:&v10 objects:v14 count:16];
      v5 = v4;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  return v4;
}

- (BOOL)shouldDropDueToGroupSize:(id)size
{
  v4 = [-[MessageGroupController IDSServerBagiMessageSharedInstance](self "IDSServerBagiMessageSharedInstance")];
  if (v4)
  {
    unsignedIntegerValue = [v4 unsignedIntegerValue];
    if (!unsignedIntegerValue)
    {
      return 0;
    }

    v6 = unsignedIntegerValue + 1;
  }

  else
  {
    v6 = 51;
  }

  v7 = [size count];
  if (v7 <= v6)
  {
    return 0;
  }

  v8 = v7;
  if (!IMOSLoggingEnabled())
  {
    return 1;
  }

  v9 = OSLogHandleForIMFoundationCategory();
  v10 = 1;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v12 = 134218240;
    v13 = v8;
    v14 = 2048;
    v15 = v6;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Incoming Group message has too many participants (%lu, max = %lu), should drop message", &v12, 0x16u);
  }

  return v10;
}

@end