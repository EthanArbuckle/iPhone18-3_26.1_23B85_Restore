@interface GetMailboxIntentHandler
+ (OS_os_log)log;
+ (OS_os_log)signpostLog;
- (EMDaemonInterface)daemonInterface;
- (id)_convertMailboxesIntoSections:(id)sections;
- (id)_intentMailboxFromMailbox:(id)mailbox;
- (id)_smartMailboxesWithInboxes:(id)inboxes hasVIPs:(BOOL)ps;
- (id)defaultMailboxForMFGetMailbox:(id)mailbox;
- (unint64_t)signpostID;
- (void)provideMailboxOptionsCollectionForMFGetMailbox:(id)mailbox withCompletion:(id)completion;
@end

@implementation GetMailboxIntentHandler

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000018E4;
  block[3] = &unk_10000C3A0;
  block[4] = self;
  if (qword_100011EC0 != -1)
  {
    dispatch_once(&qword_100011EC0, block);
  }

  v2 = qword_100011EB8;

  return v2;
}

+ (OS_os_log)signpostLog
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001A08;
  block[3] = &unk_10000C3A0;
  block[4] = self;
  if (qword_100011ED0 != -1)
  {
    dispatch_once(&qword_100011ED0, block);
  }

  v2 = qword_100011EC8;

  return v2;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (EMDaemonInterface)daemonInterface
{
  daemonInterface = self->_daemonInterface;
  if (!daemonInterface)
  {
    v4 = objc_alloc_init(EMDaemonInterface);
    v5 = self->_daemonInterface;
    self->_daemonInterface = v4;

    daemonInterface = self->_daemonInterface;
  }

  return daemonInterface;
}

- (void)provideMailboxOptionsCollectionForMFGetMailbox:(id)mailbox withCompletion:(id)completion
{
  completionCopy = completion;
  v6 = +[GetMailboxIntentHandler log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Provide Mailbox Options Collection", buf, 2u);
  }

  v7 = [EMMailbox predicateForMailboxType:7];
  v23[0] = v7;
  v8 = [EMMailbox predicateForMailboxType:0];
  v23[1] = v8;
  v9 = [NSArray arrayWithObjects:v23 count:2];
  v10 = [NSCompoundPredicate orPredicateWithSubpredicates:v9];

  v11 = [EMQuery alloc];
  v12 = objc_opt_class();
  v13 = +[EMMailbox sortDescriptorForDisplayOrder];
  v22 = v13;
  v14 = [NSArray arrayWithObjects:&v22 count:1];
  v15 = [v11 initWithTargetClass:v12 predicate:v10 sortDescriptors:v14 queryOptions:8 label:@"GetMailboxIntentHandler"];

  daemonInterface = [(GetMailboxIntentHandler *)self daemonInterface];
  mailboxRepository = [daemonInterface mailboxRepository];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100001DFC;
  v19[3] = &unk_10000C518;
  v19[4] = self;
  v18 = completionCopy;
  v20 = v18;
  [mailboxRepository performQuery:v15 completionHandler:v19];
}

- (id)defaultMailboxForMFGetMailbox:(id)mailbox
{
  v4 = +[GetMailboxIntentHandler signpostLog];
  signpostID = [(GetMailboxIntentHandler *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v24) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "VIP FOR DEFAULT WIDGET MAILBOX", "Begin get VIPs", &v24, 2u);
  }

  daemonInterface = [(GetMailboxIntentHandler *)self daemonInterface];
  vipManager = [daemonInterface vipManager];

  allVIPWaitForResult = [vipManager allVIPWaitForResult];
  v9 = +[GetMailboxIntentHandler signpostLog];
  signpostID2 = [(GetMailboxIntentHandler *)self signpostID];
  if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v11 = [allVIPWaitForResult count];
    v24 = 134217984;
    v25 = v11;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, signpostID2, "VIP FOR DEFAULT WIDGET MAILBOX", "End get VIPs (count=%lu)", &v24, 0xCu);
  }

  if ([allVIPWaitForResult count])
  {
    v12 = +[GetMailboxIntentHandler log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Default Mailbox: VIP", &v24, 2u);
    }

    v13 = [MFIntentMailbox alloc];
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"VIP" value:&stru_10000C818 table:0];
    v16 = [INImage systemImageNamed:@"star"];
    v17 = [(MFIntentMailbox *)v13 initWithIdentifier:@"VIP" displayString:v15 subtitleString:0 displayImage:v16];

    [(MFIntentMailbox *)v17 setKind:5];
  }

  else
  {
    v18 = +[GetMailboxIntentHandler log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Default Mailbox: All Inboxes", &v24, 2u);
    }

    v19 = [MFIntentMailbox alloc];
    v20 = +[NSBundle mainBundle];
    v21 = [v20 localizedStringForKey:@"ALL_INBOXES" value:&stru_10000C818 table:0];
    v22 = [INImage systemImageNamed:@"tray.2"];
    v17 = [(MFIntentMailbox *)v19 initWithIdentifier:@"ALL_INBOXES" displayString:v21 subtitleString:0 displayImage:v22];

    [(MFIntentMailbox *)v17 setKind:1];
  }

  return v17;
}

- (id)_smartMailboxesWithInboxes:(id)inboxes hasVIPs:(BOOL)ps
{
  psCopy = ps;
  inboxesCopy = inboxes;
  v5 = +[GetMailboxIntentHandler log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v65 = [inboxesCopy count];
    v66 = 1024;
    v67 = psCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Get smart mailboxes for %lu inboxes, hasVIPs: %{BOOL}d", buf, 0x12u);
  }

  v52 = objc_alloc_init(NSMutableArray);
  if ([inboxesCopy count] >= 2)
  {
    v6 = [MFIntentMailbox alloc];
    v7 = NSStringFromEMSmartMailboxType();
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"ALL_INBOXES" value:&stru_10000C818 table:0];
    v10 = [INImage systemImageNamed:@"tray.2"];
    v11 = [(MFIntentMailbox *)v6 initWithIdentifier:v7 displayString:v9 subtitleString:0 displayImage:v10];

    [(MFIntentMailbox *)v11 setKind:1];
    v12 = [inboxesCopy ef_map:&stru_10000C558];
    [(MFIntentMailbox *)v11 setSerializedRepresentations:v12];

    [v52 addObject:v11];
  }

  v13 = [MFIntentMailbox alloc];
  v14 = NSStringFromEMSmartMailboxType();
  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"FLAGGED" value:&stru_10000C818 table:0];
  v17 = [INImage systemImageNamed:@"flag"];
  v48 = [(MFIntentMailbox *)v13 initWithIdentifier:v14 displayString:v16 subtitleString:0 displayImage:v17];

  [(MFIntentMailbox *)v48 setKind:3];
  [v52 addObject:v48];
  if (psCopy)
  {
    v18 = [MFIntentMailbox alloc];
    v19 = NSStringFromEMSmartMailboxType();
    v20 = +[NSBundle mainBundle];
    v21 = [v20 localizedStringForKey:@"VIP" value:&stru_10000C818 table:0];
    v22 = [INImage systemImageNamed:@"star"];
    v23 = [(MFIntentMailbox *)v18 initWithIdentifier:v19 displayString:v21 subtitleString:0 displayImage:v22];

    [(MFIntentMailbox *)v23 setKind:5];
    [v52 addObject:v23];
  }

  v24 = [MFIntentMailbox alloc];
  v25 = NSStringFromEMSmartMailboxType();
  v26 = +[NSBundle mainBundle];
  v27 = [v26 localizedStringForKey:@"UNREAD" value:&stru_10000C818 table:0];
  v28 = [INImage systemImageNamed:@"envelope.badge"];
  v51 = [(MFIntentMailbox *)v24 initWithIdentifier:v25 displayString:v27 subtitleString:0 displayImage:v28];

  [(MFIntentMailbox *)v51 setKind:4];
  v29 = [MFIntentMailbox alloc];
  v30 = NSStringFromEMSmartMailboxType();
  v31 = +[NSBundle mainBundle];
  v32 = [v31 localizedStringForKey:@"TODAY" value:&stru_10000C818 table:0];
  v33 = [INImage systemImageNamed:@"calendar"];
  v49 = [(MFIntentMailbox *)v29 initWithIdentifier:v30 displayString:v32 subtitleString:0 displayImage:v33];

  [(MFIntentMailbox *)v49 setKind:6];
  v63[0] = v51;
  v63[1] = v49;
  v34 = [NSArray arrayWithObjects:v63 count:2];
  [v52 addObjectsFromArray:v34];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v52;
  v35 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v35)
  {
    v36 = *v59;
    v53 = MFCombinedMailboxToday;
    v56 = MFCombinedMailboxVIP;
    v37 = MFCombinedMailboxUnread;
    v54 = MFCombinedMailboxFlagged;
    v55 = MFCombinedMailboxAllInbox;
    v38 = EMAppleMailboxURLScheme;
    do
    {
      for (i = 0; i != v35; i = i + 1)
      {
        if (*v59 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v40 = *(*(&v58 + 1) + 8 * i);
        kind = [v40 kind];
        v42 = 0;
        if (kind > 3)
        {
          v43 = v37;
          if (kind != 4)
          {
            v43 = v56;
            if (kind != 5)
            {
              if (kind != 6)
              {
                goto LABEL_20;
              }

              v43 = v53;
            }
          }

LABEL_19:
          v42 = v43;
          goto LABEL_20;
        }

        v43 = v55;
        if (kind == 1)
        {
          goto LABEL_19;
        }

        v43 = v54;
        if (kind == 3)
        {
          goto LABEL_19;
        }

LABEL_20:
        v44 = objc_alloc_init(NSURLComponents);
        [v44 setScheme:v38];
        [v44 setHost:v42];
        v45 = [v44 URL];

        [v40 setUrl:v45];
      }

      v35 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
    }

    while (v35);
  }

  v46 = [obj copy];

  return v46;
}

- (id)_convertMailboxesIntoSections:(id)sections
{
  sectionsCopy = sections;
  keyEnumerator = [sectionsCopy keyEnumerator];
  allObjects = [keyEnumerator allObjects];
  v7 = [allObjects sortedArrayUsingComparator:&stru_10000C598];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000031C8;
  v11[3] = &unk_10000C5E8;
  v8 = sectionsCopy;
  v12 = v8;
  selfCopy = self;
  v9 = [v7 ef_compactMap:v11];

  return v9;
}

- (id)_intentMailboxFromMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v4 = mailboxCopy;
  if (mailboxCopy)
  {
    v5 = mailboxCopy;
    v6 = -2;
    v7 = v5;
    do
    {
      parent = [v7 parent];

      ++v6;
      v7 = parent;
    }

    while (parent);
    v9 = [@"  " ef_repeatedStringTimes:v6];
    name = [v5 name];
    v11 = [NSString stringWithFormat:@"%@%@", v9, name];

    v12 = [MFIntentMailbox alloc];
    objectID = [v5 objectID];
    v14 = [objectID url];
    absoluteString = [v14 absoluteString];
    v16 = [(MFIntentMailbox *)v12 initWithIdentifier:absoluteString displayString:v11];

    objectID2 = [v5 objectID];
    serializedRepresentation = [objectID2 serializedRepresentation];
    v19 = [serializedRepresentation base64EncodedStringWithOptions:0];
    v33 = v19;
    v20 = [NSArray arrayWithObjects:&v33 count:1];
    [(MFIntentMailbox *)v16 setSerializedRepresentations:v20];

    name2 = [v5 name];
    [(MFIntentMailbox *)v16 setName:name2];

    externalURL = [v5 externalURL];
    [(MFIntentMailbox *)v16 setUrl:externalURL];

    type = [v5 type];
    if (type)
    {
      if (type == 7)
      {
        [(MFIntentMailbox *)v16 setKind:2];
        [INImage systemImageNamed:@"tray"];
      }

      else
      {
        [(MFIntentMailbox *)v16 setKind:7];
        [INImage systemImageNamed:@"folder"];
      }
      v24 = ;
      [(MFIntentMailbox *)v16 setDisplayImage:v24];
    }

    else
    {
      [(MFIntentMailbox *)v16 setKind:7];
      v24 = [INImage systemImageNamed:@"folder"];
      [(MFIntentMailbox *)v16 setDisplayImage:v24];
    }

    account = [v5 account];
    name3 = [account name];

    if (name3)
    {
      v27 = [[MFIntentAccount alloc] initWithIdentifier:name3 displayString:name3];
      account2 = [v5 account];
      objectID3 = [account2 objectID];
      serializedRepresentation2 = [objectID3 serializedRepresentation];
      v31 = [serializedRepresentation2 base64EncodedStringWithOptions:0];
      [(MFIntentAccount *)v27 setSerializedRepresentation:v31];

      [(MFIntentMailbox *)v16 setAccount:v27];
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end