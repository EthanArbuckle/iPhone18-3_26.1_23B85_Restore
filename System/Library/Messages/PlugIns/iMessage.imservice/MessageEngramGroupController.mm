@interface MessageEngramGroupController
+ (id)sharedInstance;
- (BOOL)_createGroupForExistingChat:(id)chat;
- (id)_URIsFromApplicationData:(id)data;
- (id)_callerURIForChat:(id)chat;
- (id)_createApplicationDataForDestinations:(id)destinations;
- (id)applicationDataDictionary:(id)dictionary;
- (int64_t)_daysToWaitBeforeCreatingEngroup;
- (void)_addRemoveParticipantsToENGroupForChat:(id)chat participantsToAdd:(id)add participantsToRemove:(id)remove service:(id)service fromID:(id)d attemptCount:(unint64_t)count completion:(id)completion;
- (void)_checkAndSetUpContext:(id)context;
- (void)_createEngramGroupForChat:(id)chat fromID:(id)d service:(id)service completion:(id)completion;
- (void)_createGroupFromGroupContext:(id)context chat:(id)chat enparticipants:(id)enparticipants destinations:(id)destinations completion:(id)completion;
- (void)_createParticipantsAndUpdateGroup:(id)group addParticipantsURIs:(id)is removeParticipantURIs:(id)rIs fromID:(id)d service:(id)service completion:(id)completion;
- (void)_enparticipantsForDestinations:(id)destinations completion:(id)completion;
- (void)_updateGroupWithParticipants:(id)participants chat:(id)chat service:(id)service participants:(id)a6 destinations:(id)destinations completion:(id)completion;
- (void)_updateLocalParticipantsFromEngroup:(id)engroup chat:(id)chat fromID:(id)d;
- (void)addParticipantsToENGroup:(id)group chat:(id)chat service:(id)service fromID:(id)d completion:(id)completion;
- (void)convergeOnIncomingGroup:(id)group chat:(id)chat service:(id)service;
- (void)groupContext:(id)context didUpdateGroup:(id)group withNewGroup:(id)newGroup;
- (void)lookUpENGroupForChat:(id)chat service:(id)service completion:(id)completion;
- (void)removeParticipantsFromENGroup:(id)group chat:(id)chat service:(id)service fromID:(id)d completion:(id)completion;
- (void)sendMessageWithEngram:(id)engram chat:(id)chat service:(id)service fromID:(id)d fromAccount:(id)account session:(id)session context:(id)context groupController:(id)self0 completionBlock:(id)self1;
@end

@implementation MessageEngramGroupController

+ (id)sharedInstance
{
  if (qword_124328 != -1)
  {
    sub_BD36C();
  }

  return qword_124310;
}

- (void)_checkAndSetUpContext:(id)context
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_6FDEC;
  v3[3] = &unk_113C70;
  v3[4] = context;
  v3[5] = self;
  if (qword_124378 != -1)
  {
    dispatch_once(&qword_124378, v3);
  }
}

- (void)lookUpENGroupForChat:(id)chat service:(id)service completion:(id)completion
{
  v9 = [objc_msgSend(chat "engramID")];
  if (v9)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_6FF80;
    v11[3] = &unk_113D10;
    v11[4] = self;
    v11[5] = v9;
    v11[6] = chat;
    v11[7] = completion;
    [service performGroupTask:v11];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        engramID = [chat engramID];
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Couldn't create a valid NSData for engramid: %@", buf, 0xCu);
      }
    }

    (*(completion + 2))(completion, 0, 0, [NSError errorWithDomain:EngramControllerErrorDomain code:3 userInfo:0]);
  }
}

- (void)addParticipantsToENGroup:(id)group chat:(id)chat service:(id)service fromID:(id)d completion:(id)completion
{
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      groupCopy = group;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "We are explicitly adding these participants: %@", buf, 0xCu);
    }
  }

  [(MessageEngramGroupController *)self _addRemoveParticipantsToENGroupForChat:chat participantsToAdd:group participantsToRemove:0 service:service fromID:d attemptCount:0 completion:completion];
}

- (void)removeParticipantsFromENGroup:(id)group chat:(id)chat service:(id)service fromID:(id)d completion:(id)completion
{
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      groupCopy = group;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "We are explicitly removing these participants: %@", buf, 0xCu);
    }
  }

  [(MessageEngramGroupController *)self _addRemoveParticipantsToENGroupForChat:chat participantsToAdd:0 participantsToRemove:group service:service fromID:d attemptCount:0 completion:completion];
}

- (void)sendMessageWithEngram:(id)engram chat:(id)chat service:(id)service fromID:(id)d fromAccount:(id)account session:(id)session context:(id)context groupController:(id)self0 completionBlock:(id)self1
{
  if ([objc_msgSend(chat "engramID")])
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        chatCopy = chat;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Looking up engram group for chat: %@", buf, 0xCu);
      }
    }

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_7078C;
    v22[3] = &unk_113D60;
    v22[11] = service;
    v22[12] = block;
    v22[4] = chat;
    v22[5] = controller;
    v22[6] = engram;
    v22[7] = d;
    v22[8] = account;
    v22[9] = context;
    v22[10] = self;
    [(MessageEngramGroupController *)self lookUpENGroupForChat:chat service:service completion:v22];
  }

  else if (([chat createEngramGroupOnMessageSend] & 1) != 0 || objc_msgSend(objc_msgSend(chat, "groupID"), "length") && -[MessageEngramGroupController _createGroupForExistingChat:](self, "_createGroupForExistingChat:", chat))
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        chatCopy = [chat groupID];
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Going to create engram group for chat: %@", buf, 0xCu);
      }
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_70B80;
    v21[3] = &unk_113D38;
    v21[9] = context;
    v21[10] = block;
    v21[4] = controller;
    v21[5] = chat;
    v21[6] = engram;
    v21[7] = d;
    v21[8] = account;
    [(MessageEngramGroupController *)self _createEngramGroupForChat:chat fromID:d service:service completion:v21];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "We didn't create an engram group nor did we look one up so sending with legacy methods", buf, 2u);
      }
    }

    LOBYTE(v20) = 1;
    (*(block + 2))(block, controller, chat, engram, d, account, context, 0, v20);
  }
}

- (void)convergeOnIncomingGroup:(id)group chat:(id)chat service:(id)service
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_70D68;
  v5[3] = &unk_113D88;
  v5[4] = chat;
  v5[5] = group;
  v5[6] = self;
  [(MessageEngramGroupController *)self lookUpENGroupForChat:chat service:service completion:v5];
}

- (int64_t)_daysToWaitBeforeCreatingEngroup
{
  if ([-[MessageEngramGroupController lockDownManager](self "lockDownManager")] && (v3 = IMGetCachedDomainValueForKey()) != 0 || (v4 = -[MessageEngramGroupController IDSServerBagiMessageSharedInstance](self, "IDSServerBagiMessageSharedInstance"), (v3 = objc_msgSend(v4, "objectForKey:", off_123B88)) != 0))
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = &dword_4 + 3;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = [NSNumber numberWithInteger:integerValue];
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Days to wait before creating engroup: %@", &v8, 0xCu);
    }
  }

  return integerValue;
}

- (BOOL)_createGroupForExistingChat:(id)chat
{
  engroupCreationDate = [chat engroupCreationDate];
  if (engroupCreationDate < 1)
  {
    _daysToWaitBeforeCreatingEngroup = [(MessageEngramGroupController *)self _daysToWaitBeforeCreatingEngroup];
    if (!_daysToWaitBeforeCreatingEngroup)
    {
      goto LABEL_12;
    }

    v9 = [+[NSDate date](NSDate dateByAddingTimeInterval:"dateByAddingTimeInterval:", (86400 * _daysToWaitBeforeCreatingEngroup)];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v9;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Date to create engroup: %@", &v15, 0xCu);
      }
    }

    [(NSDate *)v9 timeIntervalSince1970];
    [chat updateEngroupCreationDate:v11];
LABEL_11:
    v7 = 0;
    goto LABEL_13;
  }

  if ([+[NSDate dateWithTimeIntervalSince1970:](NSDate compare:engroupCreationDate), "compare:", +[NSDate date]]!= NSOrderedAscending)
  {
    goto LABEL_11;
  }

  if (!IMOSLoggingEnabled())
  {
LABEL_12:
    v7 = 1;
    goto LABEL_13;
  }

  v6 = OSLogHandleForIMFoundationCategory();
  v7 = 1;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Date creation is earlier than today, so we can go ahead and create the group", &v15, 2u);
  }

LABEL_13:
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = +[NSDate dateWithTimeIntervalSinceNow:](NSDate, "dateWithTimeIntervalSinceNow:", [chat engroupCreationDate]);
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "We are waiting for to create this group: %@", &v15, 0xCu);
    }
  }

  return v7;
}

- (void)_enparticipantsForDestinations:(id)destinations completion:(id)completion
{
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      destinationsCopy = destinations;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Going to create enparticipants for destinations: %@", buf, 0xCu);
    }
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_71568;
  v7[3] = &unk_113DB0;
  v7[4] = completion;
  [IMIDSIDQueryController participantsForDestinations:destinations service:IDSServiceNameiMessage listenerID:@"__kMessageGroupControllerIDSIDQueryControllerListenerID" queue:&_dispatch_main_q completionBlock:v7];
}

- (id)_createApplicationDataForDestinations:(id)destinations
{
  if ([destinations count])
  {
    v9 = off_123B80;
    destinationsCopy = destinations;
    [NSDictionary dictionaryWithObjects:&destinationsCopy forKeys:&v9 count:1];
    v4 = JWEncodeDictionary();
  }

  else
  {
    v4 = 0;
  }

  if (![v4 length])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        destinationsCopy2 = destinations;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "/**----We failed to create the shared application data!! Please file a radar!!! destinations: %@----*/", &v7, 0xCu);
      }
    }

    +[NSDictionary dictionary];
    v4 = JWEncodeDictionary();
  }

  return [v4 _FTCopyGzippedData];
}

- (void)_createEngramGroupForChat:(id)chat fromID:(id)d service:(id)service completion:(id)completion
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_717D0;
  v6[3] = &unk_113E00;
  v6[8] = completion;
  v6[4] = service;
  v6[5] = self;
  v6[6] = chat;
  [(MessageEngramGroupController *)self _enparticipantsForDestinations:[(MessageEngramGroupController *)self _URIsForChatParticipants:chat fromID:d] completion:v6];
}

- (void)_createGroupFromGroupContext:(id)context chat:(id)chat enparticipants:(id)enparticipants destinations:(id)destinations completion:(id)completion
{
  v11 = [(MessageEngramGroupController *)self _createApplicationDataForDestinations:destinations];
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      contextCopy = context;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Creating group with context: %@", buf, 0xCu);
    }
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_71BF0;
  v13[3] = &unk_113E50;
  v13[5] = enparticipants;
  v13[6] = completion;
  v13[4] = chat;
  [context createGroupWithParticipants:enparticipants sharedApplicationData:v11 completion:v13];
}

- (void)_addRemoveParticipantsToENGroupForChat:(id)chat participantsToAdd:(id)add participantsToRemove:(id)remove service:(id)service fromID:(id)d attemptCount:(unint64_t)count completion:(id)completion
{
  if (count == 5)
  {
    v9 = [NSError errorWithDomain:EngramControllerErrorDomain code:6 userInfo:0, service, d];
    v10 = *(completion + 2);

    v10(completion, 0, 0, v9);
  }

  else
  {
    [chat setPendingENGroupParticipantUpdate:1];
    if ([add count])
    {
      _URIsFromIDs = [add _URIsFromIDs];
    }

    else
    {
      _URIsFromIDs = 0;
    }

    if ([remove count])
    {
      _URIsFromIDs2 = [remove _URIsFromIDs];
    }

    else
    {
      _URIsFromIDs2 = 0;
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_72058;
    v19[3] = &unk_113E78;
    v19[5] = add;
    v19[6] = completion;
    v19[4] = self;
    [(MessageEngramGroupController *)self _createParticipantsAndUpdateGroup:chat addParticipantsURIs:_URIsFromIDs removeParticipantURIs:_URIsFromIDs2 fromID:d service:service completion:v19];
  }
}

- (void)_createParticipantsAndUpdateGroup:(id)group addParticipantsURIs:(id)is removeParticipantURIs:(id)rIs fromID:(id)d service:(id)service completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_72390;
  v8[3] = &unk_113EC8;
  v8[4] = self;
  v8[5] = group;
  v8[6] = d;
  v8[7] = is;
  v8[9] = service;
  v8[10] = completion;
  v8[8] = rIs;
  [(MessageEngramGroupController *)self lookUpENGroupForChat:group service:service completion:v8];
}

- (void)_updateGroupWithParticipants:(id)participants chat:(id)chat service:(id)service participants:(id)a6 destinations:(id)destinations completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_7280C;
  v8[3] = &unk_113F68;
  v8[4] = self;
  v8[5] = destinations;
  v8[6] = participants;
  v8[7] = a6;
  v8[8] = chat;
  v8[9] = completion;
  [service performGroupTask:v8];
}

- (id)applicationDataDictionary:(id)dictionary
{
  [dictionary _FTOptionallyDecompressData];

  return JWDecodeDictionary();
}

- (id)_URIsFromApplicationData:(id)data
{
  v3 = [(MessageEngramGroupController *)self applicationDataDictionary:data];
  v4 = [v3 objectForKey:off_123B80];
  if (![v4 count])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "/**---Did not retrieve destinations from application data!! Please file a radar!! ---**//", v7, 2u);
      }
    }

    return +[NSArray array];
  }

  return v4;
}

- (void)_updateLocalParticipantsFromEngroup:(id)engroup chat:(id)chat fromID:(id)d
{
  v7 = -[MessageEngramGroupController _URIsFromApplicationData:](self, "_URIsFromApplicationData:", [engroup sharedApplicationData]);
  if ([v7 count])
  {
    dCopy = d;
    v8 = [objc_msgSend(v7 arrayByExcludingObjectsInArray:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &dCopy, 1)), "__imSetFromArray"}];
    v9 = [URIsFromHandles(objc_msgSend(chat "participants"))];
    v10 = [v8 mutableCopy];
    [v10 minusSet:v9];
    v11 = [objc_msgSend(v10 "allObjects")];

    v12 = [v9 mutableCopy];
    [v12 minusSet:v8];
    v29 = [objc_msgSend(v12 "allObjects")];

    serviceSession = [chat serviceSession];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v28 = [v11 countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v28)
    {
      v14 = *v35;
      v15 = v28;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v34 + 1) + 8 * i);
          if (IMOSLoggingEnabled())
          {
            v18 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v39 = 138412290;
              v40 = v17;
              _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "  Adding participant from update: %@", &v39, 0xCu);
            }
          }

          chatIdentifier = [chat chatIdentifier];
          LOBYTE(v27) = [chat style];
          [serviceSession didChangeMemberStatus:2 forHandle:v17 fromHandle:0 unformattedNumber:0 countryCode:0 forChat:chatIdentifier style:v27 account:objc_msgSend(serviceSession destinationCallerID:{"account"), d}];
        }

        v15 = [v11 countByEnumeratingWithState:&v34 objects:v41 count:16];
      }

      while (v15);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v20 = [v29 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v20)
    {
      v21 = *v31;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v29);
          }

          v23 = *(*(&v30 + 1) + 8 * j);
          if (IMOSLoggingEnabled())
          {
            v24 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v39 = 138412290;
              v40 = v23;
              _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "  Removing participant from update: %@", &v39, 0xCu);
            }
          }

          chatIdentifier2 = [chat chatIdentifier];
          LOBYTE(v27) = [chat style];
          [serviceSession didChangeMemberStatus:3 forHandle:v23 fromHandle:0 unformattedNumber:0 countryCode:0 forChat:chatIdentifier2 style:v27 account:objc_msgSend(serviceSession destinationCallerID:{"account"), d}];
        }

        v20 = [v29 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v20);
    }

    else if (!v28)
    {
      return;
    }

    [+[IMDChatStore sharedInstance](IMDChatStore storeChat:"storeChat:", chat];
  }

  else if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      LOWORD(v39) = 0;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "/**---Did not retrieve destinations from application data!! Please file a radar!! ---**//", &v39, 2u);
    }
  }
}

- (id)_callerURIForChat:(id)chat
{
  [chat serviceSession];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 0;
    return _LastAddressedURIForChatLogMetricIfNeeded(chat, 0, [chat serviceSession], &v7, 0);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "/*****----We passed in a service session that is not an IMDAppleServiceSession subclass ----- PLEASE FILE A RADAR!! -------*****/", v6, 2u);
      }
    }

    return 0;
  }
}

- (void)groupContext:(id)context didUpdateGroup:(id)group withNewGroup:(id)newGroup
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7348C;
  block[3] = &unk_113F90;
  block[4] = group;
  block[5] = self;
  block[6] = newGroup;
  dispatch_async(&_dispatch_main_q, block);
}

@end