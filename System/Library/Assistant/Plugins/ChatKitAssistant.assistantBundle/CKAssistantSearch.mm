@interface CKAssistantSearch
- (id)_appInfoForMessage:(id)message;
- (id)_getPersonAttributeFromHandle:(id)handle;
- (id)_getRecipientsFromMessage:(id)message;
- (id)_getSenderFromMessage:(id)message;
- (id)_messageTypeForMessage:(id)message;
- (id)_perform;
- (id)_smsForIMSPIMessage:(id)message;
- (id)personFromRawAddress:(id)address;
- (void)performWithCompletion:(id)completion;
@end

@implementation CKAssistantSearch

- (id)personFromRawAddress:(id)address
{
  addressCopy = address;
  if ([addressCopy length])
  {
    v4 = +[IMContactStore sharedInstance];
    v5 = [v4 fetchCNContactForHandleWithID:addressCopy];

    if (v5)
    {
      v38 = addressCopy;
      v40 = objc_alloc_init(SAPerson);
      v6 = +[NSMutableArray array];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v7 = [IMContactStore phoneNumbersForCNContact:v5];
      v8 = [v7 countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v46;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v46 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v45 + 1) + 8 * i);
            v13 = objc_alloc_init(SAPhone);
            [v13 setNumber:v12];
            [v6 addObject:v13];
          }

          v9 = [v7 countByEnumeratingWithState:&v45 objects:v50 count:16];
        }

        while (v9);
      }

      if (v6)
      {
        v14 = [v6 copy];
        [v40 setPhones:v14];
      }

      v39 = +[NSMutableArray array];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v15 = [IMContactStore emailsForCNContact:v5];
      v16 = [v15 countByEnumeratingWithState:&v41 objects:v49 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v42;
        do
        {
          for (j = 0; j != v17; j = j + 1)
          {
            if (*v42 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v41 + 1) + 8 * j);
            v21 = objc_alloc_init(SAEmail);
            [v21 setEmailAddress:v20];
            [v6 addObject:v21];
          }

          v17 = [v15 countByEnumeratingWithState:&v41 objects:v49 count:16];
        }

        while (v17);
      }

      v22 = v40;
      if (v39)
      {
        v23 = [v39 copy];
        [v40 setEmails:v23];
      }

      v24 = [IMContactStore firstNameForCNContact:v5];
      if ([v24 length])
      {
        [v40 setFirstName:v24];
      }

      v25 = [IMContactStore lastNameForCNContact:v5];
      if ([v25 length])
      {
        [v40 setLastName:v25];
      }

      middleName = [v5 middleName];
      if ([middleName length])
      {
        [v40 setMiddleName:middleName];
      }

      v27 = [IMContactStore fullNameForCNContact:v5];
      if ([v27 length])
      {
        [v40 setFullName:v27];
      }

      v36 = v25;
      namePrefix = [v5 namePrefix];
      if ([namePrefix length])
      {
        [v40 setPrefix:namePrefix];
      }

      nameSuffix = [v5 nameSuffix];
      if ([nameSuffix length])
      {
        [v40 setSuffix:nameSuffix];
      }

      v37 = v24;
      v30 = [IMContactStore nickNameForCNContact:v5];
      if ([v30 length])
      {
        [v40 setNickName:v30];
      }

      birthday = [v5 birthday];
      if (birthday)
      {
        v32 = +[NSCalendar currentCalendar];
        v33 = [v32 dateFromComponents:birthday];
        [v40 setBirthday:v33];

        v22 = v40;
      }

      addressCopy = v38;
    }

    else
    {
      v22 = 0;
    }

    v34 = v22;
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (id)_messageTypeForMessage:(id)message
{
  messageType = [message messageType];
  v4 = &SASmsSmsMessageTypeMessageValue;
  if (messageType <= 108)
  {
    v5 = &SASmsSmsMessageTypeTapBackEmphasizedValue;
    v13 = &SASmsSmsMessageTypeTapBackLovedValue;
    if (messageType != &stru_68.sectname[4])
    {
      v13 = &SASmsSmsMessageTypeMessageValue;
    }

    if (messageType != &stru_68.sectname[3])
    {
      v5 = v13;
    }

    v14 = &SASmsSmsMessageTypeTapBackLikedValue;
    v15 = &SASmsSmsMessageTypeTapBackDislikedValue;
    if (messageType != &stru_68.sectname[2])
    {
      v15 = &SASmsSmsMessageTypeMessageValue;
    }

    if (messageType != &stru_68.sectname[1])
    {
      v14 = v15;
    }

    if (messageType <= 106)
    {
      v5 = v14;
    }

    v16 = &SASmsSmsMessageTypeHandwritingValue;
    v17 = &SASmsSmsMessageTypeStickerValue;
    if (messageType != &stru_68)
    {
      v17 = &SASmsSmsMessageTypeMessageValue;
    }

    if (messageType != (&stru_20.flags + 3))
    {
      v16 = v17;
    }

    if (messageType == (&stru_20.flags + 2))
    {
      v4 = &SASmsSmsMessageTypeDigitalTouchValue;
    }

    if (messageType == (&stru_20.flags + 1))
    {
      v4 = &SASmsSmsMessageTypeAudioMessageValue;
    }

    if (messageType > 102)
    {
      v4 = v16;
    }

    v12 = messageType <= 104;
  }

  else
  {
    v5 = &SASmsSmsMessageTypeMediaTypeAddressCardValue;
    v6 = &SASmsSmsMessageTypeMediaTypePassValue;
    v7 = &SASmsSmsMessageTypeMediaTypeLocationValue;
    if (messageType != &stru_B8.segname[8])
    {
      v7 = &SASmsSmsMessageTypeMessageValue;
    }

    if (messageType != &stru_B8.segname[5])
    {
      v6 = v7;
    }

    if (messageType != &stru_B8.segname[4])
    {
      v5 = v6;
    }

    v8 = &SASmsSmsMessageTypeMediaTypeAudioValue;
    v9 = &SASmsSmsMessageTypeMediaTypeCalendarValue;
    if (messageType != &stru_B8.segname[3])
    {
      v9 = &SASmsSmsMessageTypeMessageValue;
    }

    if (messageType != &stru_B8.segname[2])
    {
      v8 = v9;
    }

    if (messageType <= 203)
    {
      v5 = v8;
    }

    v10 = &SASmsSmsMessageTypeMediaTypeImageValue;
    v11 = &SASmsSmsMessageTypeMediaTypeVideoValue;
    if (messageType != &stru_B8.segname[1])
    {
      v11 = &SASmsSmsMessageTypeMessageValue;
    }

    if (messageType != stru_B8.segname)
    {
      v10 = v11;
    }

    if (messageType == &stru_68.sectname[6])
    {
      v4 = &SASmsSmsMessageTypeTapBackLaughedValue;
    }

    if (messageType == &stru_68.sectname[5])
    {
      v4 = &SASmsSmsMessageTypeTapBackQuestionedValue;
    }

    if (messageType > 199)
    {
      v4 = v10;
    }

    v12 = messageType <= 201;
  }

  if (!v12)
  {
    v4 = v5;
  }

  v18 = *v4;

  return v18;
}

- (id)_getPersonAttributeFromHandle:(id)handle
{
  handleCopy = handle;
  v5 = objc_alloc_init(SAPersonAttribute);
  address = [handleCopy address];
  [v5 setData:address];

  address2 = [handleCopy address];
  v8 = [(CKAssistantSearch *)self personFromRawAddress:address2];

  displayName = [handleCopy displayName];

  [v5 setDisplayText:displayName];
  [v5 setObject:v8];

  return v5;
}

- (id)_getRecipientsFromMessage:(id)message
{
  recipients = [message recipients];
  if ([recipients count] >= 2)
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(recipients, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = recipients;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(CKAssistantSearch *)self _getPersonAttributeFromHandle:*(*(&v13 + 1) + 8 * i), v13];
          if (v11)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_getSenderFromMessage:(id)message
{
  messageCopy = message;
  v5 = objc_alloc_init(SAPersonAttribute);
  sender = [messageCopy sender];
  address = [sender address];
  v8 = [(CKAssistantSearch *)self personFromRawAddress:address];

  [v5 setObject:v8];
  sender2 = [messageCopy sender];
  address2 = [sender2 address];
  [v5 setData:address2];

  fullName = [v8 fullName];
  if (fullName)
  {
    fullName2 = [v8 fullName];
    [v5 setDisplayText:fullName2];
  }

  else
  {
    fullName2 = [messageCopy sender];
    address3 = [fullName2 address];
    [v5 setDisplayText:address3];
  }

  return v5;
}

- (id)_smsForIMSPIMessage:(id)message
{
  messageCopy = message;
  v5 = objc_alloc_init(SASmsSms);
  date = [messageCopy date];
  [v5 setDateSent:date];

  subject = [messageCopy subject];
  [v5 setSubject:subject];

  v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [messageCopy isAudioMessage]);
  [v5 setIsAudioMessage:v8];

  displayName = [messageCopy displayName];
  [v5 setHasGroupName:{objc_msgSend(displayName, "length") != 0}];

  lastReadDate = [messageCopy lastReadDate];
  [v5 setDateLastMessageReadInThread:lastReadDate];

  v11 = [(CKAssistantSearch *)self _messageTypeForMessage:messageCopy];
  [v5 setMessageType:v11];

  chatGuids = [messageCopy chatGuids];
  firstObject = [chatGuids firstObject];
  [v5 setChatIdentifier:firstObject];

  lastReadDate2 = [messageCopy lastReadDate];
  [v5 setDateLastMessageReadInThread:lastReadDate2];

  effect = [messageCopy effect];
  [v5 setEffect:effect];

  if ([v5 hasGroupName])
  {
    displayName2 = [messageCopy displayName];
    [v5 setGroupName:displayName2];
  }

  v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"x-apple-sms:guid=%lld", [messageCopy messageID]);
  v18 = [NSURL URLWithString:v17];
  [v5 setIdentifier:v18];

  v19 = [(CKAssistantSearch *)self _getSenderFromMessage:messageCopy];
  [v5 setMsgSender:v19];

  v20 = [(CKAssistantSearch *)self _getRecipientsFromMessage:messageCopy];
  [v5 setMsgRecipients:v20];

  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      msgRecipients = [v5 msgRecipients];
      v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [msgRecipients count]);
      *buf = 138412290;
      v26 = v23;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "Message has %@ recipients.", buf, 0xCu);
    }
  }

  return v5;
}

- (id)_appInfoForMessage:(id)message
{
  messageCopy = message;
  bundleId = [messageCopy bundleId];
  if ([bundleId length])
  {
    v5 = objc_alloc_init(SASyncAppIdentifyingInfo);
    [v5 setBundleId:bundleId];
    v6 = objc_alloc_init(SAAppInfo);
    displayAppName = [messageCopy displayAppName];
    [v6 setDisplayAppName:displayAppName];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_perform
{
  v3 = +[NSMutableArray array];
  v4 = dispatch_semaphore_create(0);
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_23A4;
  v54[3] = &unk_104C0;
  v54[4] = self;
  v42 = v3;
  v55 = v42;
  dsema = v4;
  v56 = dsema;
  v44 = objc_retainBlock(v54);
  smsGroup = [(CKAssistantSearch *)self smsGroup];
  groupNameId = [smsGroup groupNameId];
  LOBYTE(v3) = [groupNameId length] == 0;

  if (v3)
  {
    senders = [(CKAssistantSearch *)self senders];
    v15 = [senders count] == 0;

    if (v15)
    {
      if (IMOSLoggingEnabled())
      {
        v37 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "No senders or groups specified, searching for last 10 unread messages", buf, 2u);
        }
      }

      IMSPIQueryUnreadMessages();
    }

    else
    {
      senders2 = [(CKAssistantSearch *)self senders];
      v41 = [senders2 objectAtIndex:0];

      v17 = +[NSMutableArray array];
      v18 = +[NSMutableArray array];
      v19 = +[NSMutableArray array];
      v20 = +[IMContactStore sharedInstance];
      internalGUID = [v41 internalGUID];
      v22 = [v20 fetchCNContactWithIdentifier:internalGUID];

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      obj = v22;
      v23 = [obj countByEnumeratingWithState:&v50 objects:v62 count:16];
      if (v23)
      {
        v24 = *v51;
        do
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v51 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v50 + 1) + 8 * i);
            v27 = [IMContactStore phoneNumbersForCNContact:v26];
            [v17 addObjectsFromArray:v27];

            v28 = [IMContactStore emailsForCNContact:v26];
            [v17 addObjectsFromArray:v28];
          }

          v23 = [obj countByEnumeratingWithState:&v50 objects:v62 count:16];
        }

        while (v23);
      }

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v29 = v17;
      v30 = [v29 countByEnumeratingWithState:&v46 objects:v61 count:16];
      if (v30)
      {
        v31 = *v47;
        v32 = IMSPIiMessageService;
        v33 = IMSPISMSService;
        do
        {
          for (j = 0; j != v30; j = j + 1)
          {
            if (*v47 != v31)
            {
              objc_enumerationMutation(v29);
            }

            v35 = [CKAssistantSearchUtilities canonicalizeNumber:*(*(&v46 + 1) + 8 * j)];
            if (v35)
            {
              [v19 addObject:v35];
              [v18 addObject:v32];
              [v19 addObject:v35];
              [v18 addObject:v33];
            }
          }

          v30 = [v29 countByEnumeratingWithState:&v46 objects:v61 count:16];
        }

        while (v30);
      }

      if (IMOSLoggingEnabled())
      {
        v36 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v58 = v18;
          v59 = 2112;
          v60 = v19;
          _os_log_impl(&dword_0, v36, OS_LOG_TYPE_INFO, "Searching for last 10 messages with IDs %@ and services %@", buf, 0x16u);
        }
      }

      IMSPIQueryMessagesWithIDs();
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        smsGroup2 = [(CKAssistantSearch *)self smsGroup];
        groupNameId2 = [smsGroup2 groupNameId];
        *buf = 138412290;
        v58 = groupNameId2;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Searching for imessages with groupID %@", buf, 0xCu);
      }
    }

    v10 = [NSArray arrayWithObject:IMSPIiMessageService];
    smsGroup3 = [(CKAssistantSearch *)self smsGroup];
    groupNameId3 = [smsGroup3 groupNameId];
    v13 = [NSArray arrayWithObject:groupNameId3];

    IMSPIQueryMessagesWithChatIdentifiers();
  }

  v38 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(dsema, v38);
  v39 = objc_alloc_init(SASmsSearchCompleted);
  [v39 setResults:v42];

  return v39;
}

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "CKAssistantSearch performWithCompletion", &v10, 2u);
    }
  }

  _validate = [(CKAssistantSearch *)self _validate];
  if (!_validate)
  {
    _validate = [(CKAssistantSearch *)self _perform];
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      dictionary = [_validate dictionary];
      v10 = 138412290;
      v11 = dictionary;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "CKAssistantSearch returning %@", &v10, 0xCu);
    }
  }

  dictionary2 = [_validate dictionary];
  completionCopy[2](completionCopy, dictionary2);
}

@end