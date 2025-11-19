@interface CKAssistantSearch
- (id)_appInfoForMessage:(id)a3;
- (id)_getPersonAttributeFromHandle:(id)a3;
- (id)_getRecipientsFromMessage:(id)a3;
- (id)_getSenderFromMessage:(id)a3;
- (id)_messageTypeForMessage:(id)a3;
- (id)_perform;
- (id)_smsForIMSPIMessage:(id)a3;
- (id)personFromRawAddress:(id)a3;
- (void)performWithCompletion:(id)a3;
@end

@implementation CKAssistantSearch

- (id)personFromRawAddress:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = +[IMContactStore sharedInstance];
    v5 = [v4 fetchCNContactForHandleWithID:v3];

    if (v5)
    {
      v38 = v3;
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

      v26 = [v5 middleName];
      if ([v26 length])
      {
        [v40 setMiddleName:v26];
      }

      v27 = [IMContactStore fullNameForCNContact:v5];
      if ([v27 length])
      {
        [v40 setFullName:v27];
      }

      v36 = v25;
      v28 = [v5 namePrefix];
      if ([v28 length])
      {
        [v40 setPrefix:v28];
      }

      v29 = [v5 nameSuffix];
      if ([v29 length])
      {
        [v40 setSuffix:v29];
      }

      v37 = v24;
      v30 = [IMContactStore nickNameForCNContact:v5];
      if ([v30 length])
      {
        [v40 setNickName:v30];
      }

      v31 = [v5 birthday];
      if (v31)
      {
        v32 = +[NSCalendar currentCalendar];
        v33 = [v32 dateFromComponents:v31];
        [v40 setBirthday:v33];

        v22 = v40;
      }

      v3 = v38;
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

- (id)_messageTypeForMessage:(id)a3
{
  v3 = [a3 messageType];
  v4 = &SASmsSmsMessageTypeMessageValue;
  if (v3 <= 108)
  {
    v5 = &SASmsSmsMessageTypeTapBackEmphasizedValue;
    v13 = &SASmsSmsMessageTypeTapBackLovedValue;
    if (v3 != &stru_68.sectname[4])
    {
      v13 = &SASmsSmsMessageTypeMessageValue;
    }

    if (v3 != &stru_68.sectname[3])
    {
      v5 = v13;
    }

    v14 = &SASmsSmsMessageTypeTapBackLikedValue;
    v15 = &SASmsSmsMessageTypeTapBackDislikedValue;
    if (v3 != &stru_68.sectname[2])
    {
      v15 = &SASmsSmsMessageTypeMessageValue;
    }

    if (v3 != &stru_68.sectname[1])
    {
      v14 = v15;
    }

    if (v3 <= 106)
    {
      v5 = v14;
    }

    v16 = &SASmsSmsMessageTypeHandwritingValue;
    v17 = &SASmsSmsMessageTypeStickerValue;
    if (v3 != &stru_68)
    {
      v17 = &SASmsSmsMessageTypeMessageValue;
    }

    if (v3 != (&stru_20.flags + 3))
    {
      v16 = v17;
    }

    if (v3 == (&stru_20.flags + 2))
    {
      v4 = &SASmsSmsMessageTypeDigitalTouchValue;
    }

    if (v3 == (&stru_20.flags + 1))
    {
      v4 = &SASmsSmsMessageTypeAudioMessageValue;
    }

    if (v3 > 102)
    {
      v4 = v16;
    }

    v12 = v3 <= 104;
  }

  else
  {
    v5 = &SASmsSmsMessageTypeMediaTypeAddressCardValue;
    v6 = &SASmsSmsMessageTypeMediaTypePassValue;
    v7 = &SASmsSmsMessageTypeMediaTypeLocationValue;
    if (v3 != &stru_B8.segname[8])
    {
      v7 = &SASmsSmsMessageTypeMessageValue;
    }

    if (v3 != &stru_B8.segname[5])
    {
      v6 = v7;
    }

    if (v3 != &stru_B8.segname[4])
    {
      v5 = v6;
    }

    v8 = &SASmsSmsMessageTypeMediaTypeAudioValue;
    v9 = &SASmsSmsMessageTypeMediaTypeCalendarValue;
    if (v3 != &stru_B8.segname[3])
    {
      v9 = &SASmsSmsMessageTypeMessageValue;
    }

    if (v3 != &stru_B8.segname[2])
    {
      v8 = v9;
    }

    if (v3 <= 203)
    {
      v5 = v8;
    }

    v10 = &SASmsSmsMessageTypeMediaTypeImageValue;
    v11 = &SASmsSmsMessageTypeMediaTypeVideoValue;
    if (v3 != &stru_B8.segname[1])
    {
      v11 = &SASmsSmsMessageTypeMessageValue;
    }

    if (v3 != stru_B8.segname)
    {
      v10 = v11;
    }

    if (v3 == &stru_68.sectname[6])
    {
      v4 = &SASmsSmsMessageTypeTapBackLaughedValue;
    }

    if (v3 == &stru_68.sectname[5])
    {
      v4 = &SASmsSmsMessageTypeTapBackQuestionedValue;
    }

    if (v3 > 199)
    {
      v4 = v10;
    }

    v12 = v3 <= 201;
  }

  if (!v12)
  {
    v4 = v5;
  }

  v18 = *v4;

  return v18;
}

- (id)_getPersonAttributeFromHandle:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SAPersonAttribute);
  v6 = [v4 address];
  [v5 setData:v6];

  v7 = [v4 address];
  v8 = [(CKAssistantSearch *)self personFromRawAddress:v7];

  v9 = [v4 displayName];

  [v5 setDisplayText:v9];
  [v5 setObject:v8];

  return v5;
}

- (id)_getRecipientsFromMessage:(id)a3
{
  v4 = [a3 recipients];
  if ([v4 count] >= 2)
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v4;
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

- (id)_getSenderFromMessage:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SAPersonAttribute);
  v6 = [v4 sender];
  v7 = [v6 address];
  v8 = [(CKAssistantSearch *)self personFromRawAddress:v7];

  [v5 setObject:v8];
  v9 = [v4 sender];
  v10 = [v9 address];
  [v5 setData:v10];

  v11 = [v8 fullName];
  if (v11)
  {
    v12 = [v8 fullName];
    [v5 setDisplayText:v12];
  }

  else
  {
    v12 = [v4 sender];
    v13 = [v12 address];
    [v5 setDisplayText:v13];
  }

  return v5;
}

- (id)_smsForIMSPIMessage:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SASmsSms);
  v6 = [v4 date];
  [v5 setDateSent:v6];

  v7 = [v4 subject];
  [v5 setSubject:v7];

  v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isAudioMessage]);
  [v5 setIsAudioMessage:v8];

  v9 = [v4 displayName];
  [v5 setHasGroupName:{objc_msgSend(v9, "length") != 0}];

  v10 = [v4 lastReadDate];
  [v5 setDateLastMessageReadInThread:v10];

  v11 = [(CKAssistantSearch *)self _messageTypeForMessage:v4];
  [v5 setMessageType:v11];

  v12 = [v4 chatGuids];
  v13 = [v12 firstObject];
  [v5 setChatIdentifier:v13];

  v14 = [v4 lastReadDate];
  [v5 setDateLastMessageReadInThread:v14];

  v15 = [v4 effect];
  [v5 setEffect:v15];

  if ([v5 hasGroupName])
  {
    v16 = [v4 displayName];
    [v5 setGroupName:v16];
  }

  v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"x-apple-sms:guid=%lld", [v4 messageID]);
  v18 = [NSURL URLWithString:v17];
  [v5 setIdentifier:v18];

  v19 = [(CKAssistantSearch *)self _getSenderFromMessage:v4];
  [v5 setMsgSender:v19];

  v20 = [(CKAssistantSearch *)self _getRecipientsFromMessage:v4];
  [v5 setMsgRecipients:v20];

  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [v5 msgRecipients];
      v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v22 count]);
      *buf = 138412290;
      v26 = v23;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "Message has %@ recipients.", buf, 0xCu);
    }
  }

  return v5;
}

- (id)_appInfoForMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 bundleId];
  if ([v4 length])
  {
    v5 = objc_alloc_init(SASyncAppIdentifyingInfo);
    [v5 setBundleId:v4];
    v6 = objc_alloc_init(SAAppInfo);
    v7 = [v3 displayAppName];
    [v6 setDisplayAppName:v7];
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
  v5 = [(CKAssistantSearch *)self smsGroup];
  v6 = [v5 groupNameId];
  LOBYTE(v3) = [v6 length] == 0;

  if (v3)
  {
    v14 = [(CKAssistantSearch *)self senders];
    v15 = [v14 count] == 0;

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
      v16 = [(CKAssistantSearch *)self senders];
      v41 = [v16 objectAtIndex:0];

      v17 = +[NSMutableArray array];
      v18 = +[NSMutableArray array];
      v19 = +[NSMutableArray array];
      v20 = +[IMContactStore sharedInstance];
      v21 = [v41 internalGUID];
      v22 = [v20 fetchCNContactWithIdentifier:v21];

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
        v8 = [(CKAssistantSearch *)self smsGroup];
        v9 = [v8 groupNameId];
        *buf = 138412290;
        v58 = v9;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Searching for imessages with groupID %@", buf, 0xCu);
      }
    }

    v10 = [NSArray arrayWithObject:IMSPIiMessageService];
    v11 = [(CKAssistantSearch *)self smsGroup];
    v12 = [v11 groupNameId];
    v13 = [NSArray arrayWithObject:v12];

    IMSPIQueryMessagesWithChatIdentifiers();
  }

  v38 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(dsema, v38);
  v39 = objc_alloc_init(SASmsSearchCompleted);
  [v39 setResults:v42];

  return v39;
}

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "CKAssistantSearch performWithCompletion", &v10, 2u);
    }
  }

  v6 = [(CKAssistantSearch *)self _validate];
  if (!v6)
  {
    v6 = [(CKAssistantSearch *)self _perform];
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v6 dictionary];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "CKAssistantSearch returning %@", &v10, 0xCu);
    }
  }

  v9 = [v6 dictionary];
  v4[2](v4, v9);
}

@end