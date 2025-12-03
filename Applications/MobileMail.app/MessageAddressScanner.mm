@interface MessageAddressScanner
+ (id)coreRecentsMetadataForMessage:(id)message;
+ (id)sharedInstance;
+ (id)weightForMessage:(id)message addressBook:(void *)book vipManager:(id)manager;
- (MessageAddressScanner)init;
- (__DDScanner)scanner;
- (id)recentsLibrary;
- (void)_addAddressDetectorResult:(__DDResult *)result forMessage:(id)message;
- (void)_messagesFlagsChanged:(id)changed;
- (void)_messagesWillBeCompacted:(id)compacted;
- (void)_scheduleRemovalOfDetectedAddressesInMessages:(id)messages;
- (void)addressBook;
- (void)dealloc;
- (void)handleAddressBookChange;
- (void)scanSummary:(id)summary forMessage:(id)message;
- (void)setLibrary:(id)library;
@end

@implementation MessageAddressScanner

+ (id)coreRecentsMetadataForMessage:(id)message
{
  messageCopy = message;
  firstSender = [messageCopy firstSender];
  emailAddressValue = [firstSender emailAddressValue];
  simpleAddress = [emailAddressValue simpleAddress];
  v6 = simpleAddress;
  if (simpleAddress)
  {
    stringValue = simpleAddress;
  }

  else
  {
    stringValue = [firstSender stringValue];
  }

  v8 = stringValue;

  v9 = firstSender;
  emailAddressValue2 = [v9 emailAddressValue];
  displayName = [emailAddressValue2 displayName];
  v12 = displayName;
  if (displayName)
  {
    stringValue2 = displayName;
  }

  else
  {
    stringValue2 = [v9 stringValue];
  }

  v14 = stringValue2;

  if ([v14 isEqualToString:v8])
  {

    v14 = 0;
  }

  if (v8)
  {
    v15 = +[NSMutableDictionary dictionary];
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v16 = qword_1006DD220;
    v47 = qword_1006DD220;
    if (!qword_1006DD220)
    {
      v17 = sub_100146B5C();
      v45[3] = dlsym(v17, "CRRecentContactMetadataFromAddress");
      qword_1006DD220 = v45[3];
      v16 = v45[3];
    }

    _Block_object_dispose(&v44, 8);
    if (v16)
    {
      [v15 setObject:v8 forKeyedSubscript:*v16];
      v44 = 0;
      v45 = &v44;
      v46 = 0x2020000000;
      v18 = qword_1006DD228;
      v47 = qword_1006DD228;
      if (!qword_1006DD228)
      {
        v19 = sub_100146B5C();
        v45[3] = dlsym(v19, "CRAddressKindEmail");
        qword_1006DD228 = v45[3];
        v18 = v45[3];
      }

      _Block_object_dispose(&v44, 8);
      if (v18)
      {
        v20 = *v18;
        v44 = 0;
        v45 = &v44;
        v46 = 0x2020000000;
        v21 = qword_1006DD230;
        v47 = qword_1006DD230;
        if (!qword_1006DD230)
        {
          v22 = sub_100146B5C();
          v45[3] = dlsym(v22, "CRRecentContactMetadataFromAddressKind");
          qword_1006DD230 = v45[3];
          v21 = v45[3];
        }

        _Block_object_dispose(&v44, 8);
        if (v21)
        {
          [v15 setObject:v20 forKeyedSubscript:*v21];

          if ([v14 length])
          {
            v44 = 0;
            v45 = &v44;
            v46 = 0x2020000000;
            v23 = qword_1006DD238;
            v47 = qword_1006DD238;
            if (!qword_1006DD238)
            {
              v24 = sub_100146B5C();
              v45[3] = dlsym(v24, "CRRecentContactMetadataFromDisplayName");
              qword_1006DD238 = v45[3];
              v23 = v45[3];
            }

            _Block_object_dispose(&v44, 8);
            if (!v23)
            {
              goto LABEL_44;
            }

            [v15 setObject:v14 forKeyedSubscript:*v23];
          }

          v25 = +[NSMutableDictionary dictionary];
          v44 = 0;
          v45 = &v44;
          v46 = 0x2020000000;
          v26 = qword_1006DD240;
          v47 = qword_1006DD240;
          if (!qword_1006DD240)
          {
            v27 = sub_100146B5C();
            v45[3] = dlsym(v27, "CRRecentContactMetadataFrom");
            qword_1006DD240 = v45[3];
            v26 = v45[3];
          }

          _Block_object_dispose(&v44, 8);
          if (v26)
          {
            [v25 setObject:v15 forKeyedSubscript:*v26];
            subject = [messageCopy subject];
            subjectWithoutPrefix = [subject subjectWithoutPrefix];

            if (![subjectWithoutPrefix length])
            {
LABEL_32:
              globalMessageURL = [messageCopy globalMessageURL];
              v33 = globalMessageURL;
              if (globalMessageURL)
              {
                absoluteString = [globalMessageURL absoluteString];
                v35 = sub_1001445F8();
                [v25 setObject:absoluteString forKeyedSubscript:v35];
              }

              goto LABEL_36;
            }

            v44 = 0;
            v45 = &v44;
            v46 = 0x2020000000;
            v30 = qword_1006DD248;
            v47 = qword_1006DD248;
            if (!qword_1006DD248)
            {
              v31 = sub_100146B5C();
              v45[3] = dlsym(v31, "CRRecentContactMetadataSubject");
              qword_1006DD248 = v45[3];
              v30 = v45[3];
            }

            _Block_object_dispose(&v44, 8);
            if (v30)
            {
              [v25 setObject:subjectWithoutPrefix forKeyedSubscript:*v30];
              goto LABEL_32;
            }

LABEL_46:
            v41 = +[NSAssertionHandler currentHandler];
            v42 = [NSString stringWithUTF8String:"NSString *getCRRecentContactMetadataSubject(void)"];
            [v41 handleFailureInFunction:v42 file:@"MessageAddressScanner.m" lineNumber:38 description:{@"%s", dlerror()}];

            __break(1u);
            return result;
          }

          v39 = +[NSAssertionHandler currentHandler];
          v40 = [NSString stringWithUTF8String:"NSString *getCRRecentContactMetadataFrom(void)"];
          [v39 handleFailureInFunction:v40 file:@"MessageAddressScanner.m" lineNumber:40 description:{@"%s", dlerror()}];
        }

        else
        {
          v39 = +[NSAssertionHandler currentHandler];
          v40 = [NSString stringWithUTF8String:"NSString *getCRRecentContactMetadataFromAddressKind(void)"];
          [v39 handleFailureInFunction:v40 file:@"MessageAddressScanner.m" lineNumber:42 description:{@"%s", dlerror()}];
        }

        __break(1u);
LABEL_44:
        v37 = +[NSAssertionHandler currentHandler];
        v38 = [NSString stringWithUTF8String:"NSString *getCRRecentContactMetadataFromDisplayName(void)"];
        [v37 handleFailureInFunction:v38 file:@"MessageAddressScanner.m" lineNumber:43 description:{@"%s", dlerror()}];
        goto LABEL_45;
      }

      v37 = +[NSAssertionHandler currentHandler];
      v38 = [NSString stringWithUTF8String:"NSString *getCRAddressKindEmail(void)"];
      [v37 handleFailureInFunction:v38 file:@"MessageAddressScanner.m" lineNumber:36 description:{@"%s", dlerror()}];
    }

    else
    {
      v37 = +[NSAssertionHandler currentHandler];
      v38 = [NSString stringWithUTF8String:"NSString *getCRRecentContactMetadataFromAddress(void)"];
      [v37 handleFailureInFunction:v38 file:@"MessageAddressScanner.m" lineNumber:41 description:{@"%s", dlerror()}];
    }

LABEL_45:

    __break(1u);
    goto LABEL_46;
  }

  v25 = 0;
LABEL_36:

  return v25;
}

+ (id)weightForMessage:(id)message addressBook:(void *)book vipManager:(id)manager
{
  messageCopy = message;
  managerCopy = manager;
  firstSender = [messageCopy firstSender];
  emailAddressValue = [firstSender emailAddressValue];
  simpleAddress = [emailAddressValue simpleAddress];
  v12 = simpleAddress;
  if (simpleAddress)
  {
    stringValue = simpleAddress;
  }

  else
  {
    stringValue = [firstSender stringValue];
  }

  v14 = stringValue;

  if (v14)
  {
    allVIPEmailAddresses = [managerCopy allVIPEmailAddresses];
    if ([allVIPEmailAddresses containsObject:v14])
    {

      goto LABEL_10;
    }

    if (book)
    {
      PersonMatchingEmailAddress = ABAddressBookFindPersonMatchingEmailAddress();

      if (PersonMatchingEmailAddress)
      {
LABEL_10:
        v24 = 0;
        v25 = &v24;
        v26 = 0x2020000000;
        v18 = qword_1006DD250;
        v27 = qword_1006DD250;
        if (!qword_1006DD250)
        {
          v19 = sub_100146B5C();
          v25[3] = dlsym(v19, "CRRecentWeightMailReceivedTrustedAddress");
          qword_1006DD250 = v25[3];
          v18 = v25[3];
        }

        _Block_object_dispose(&v24, 8);
        if (!v18)
        {
          v20 = +[NSAssertionHandler currentHandler];
          v21 = [NSString stringWithUTF8String:"double getCRRecentWeightMailReceivedTrustedAddress(void)"];
          [v20 handleFailureInFunction:v21 file:@"MessageAddressScanner.m" lineNumber:33 description:{@"%s", dlerror()}];
LABEL_23:

          __break(1u);
          return result;
        }

LABEL_18:
        v16 = [NSNumber numberWithInteger:*v18];
        goto LABEL_19;
      }
    }

    else
    {
    }

    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v18 = qword_1006DD258;
    v27 = qword_1006DD258;
    if (!qword_1006DD258)
    {
      v22 = sub_100146B5C();
      v25[3] = dlsym(v22, "CRRecentWeightMailReceivedAddress");
      qword_1006DD258 = v25[3];
      v18 = v25[3];
    }

    _Block_object_dispose(&v24, 8);
    if (!v18)
    {
      v20 = +[NSAssertionHandler currentHandler];
      v21 = [NSString stringWithUTF8String:"double getCRRecentWeightMailReceivedAddress(void)"];
      [v20 handleFailureInFunction:v21 file:@"MessageAddressScanner.m" lineNumber:34 description:{@"%s", dlerror()}];
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  v16 = 0;
LABEL_19:

  return v16;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014565C;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD1F8 != -1)
  {
    dispatch_once(&qword_1006DD1F8, block);
  }

  v2 = qword_1006DD1F0;

  return v2;
}

- (MessageAddressScanner)init
{
  v8.receiver = self;
  v8.super_class = MessageAddressScanner;
  v2 = [(MessageAddressScanner *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("MessageAddressScanner", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = v2;
  }

  return v2;
}

- (void)dealloc
{
  ab = self->_ab;
  if (ab)
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x2020000000;
    v8[3] = self;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100145854;
    v7[3] = &unk_100651598;
    v7[4] = v8;
    v7[5] = ab;
    v4 = +[EFScheduler mainThreadScheduler];
    [v4 performBlock:v7];

    _Block_object_dispose(v8, 8);
  }

  scanner = self->_scanner;
  if (scanner)
  {
    CFRelease(scanner);
  }

  v6.receiver = self;
  v6.super_class = MessageAddressScanner;
  [(MessageAddressScanner *)&v6 dealloc];
}

- (void)_scheduleRemovalOfDetectedAddressesInMessages:(id)messages
{
  messagesCopy = messages;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_pendingRemovalQueue)
  {
    v5 = objc_alloc_init(_MessageAddressScannerQueue);
    pendingRemovalQueue = self->_pendingRemovalQueue;
    self->_pendingRemovalQueue = v5;

    v7 = self->_pendingRemovalQueue;
    recentsLibrary = [(MessageAddressScanner *)self recentsLibrary];
    [(_MessageAddressScannerQueue *)v7 setRecentsLibrary:recentsLibrary];

    [(_MessageAddressScannerQueue *)self->_pendingRemovalQueue setTargetQueue:self->_queue];
  }

  if ((*(self + 40) & 1) == 0)
  {
    *(self + 40) |= 1u;
    v9 = dispatch_time(0, 2000000000);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100145ACC;
    block[3] = &unk_10064C7E8;
    block[4] = self;
    dispatch_after(v9, queue, block);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = messagesCopy;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v12)
  {
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v11);
        }

        messageIDHash = [*(*(&v16 + 1) + 8 * i) messageIDHash];
        if (messageIDHash)
        {
          [(_MessageAddressScannerQueue *)self->_pendingRemovalQueue addHash:messageIDHash];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v12);
  }
}

- (id)recentsLibrary
{
  v2 = sub_100145B30();

  return [v2 defaultInstance];
}

- (__DDScanner)scanner
{
  result = atomic_load(&self->_scanner);
  if (!result)
  {
    v4 = DDScannerCreate();
    if (v4)
    {
      v5 = 0;
      atomic_compare_exchange_strong(&self->_scanner, &v5, v4);
      if (v5)
      {
        CFRelease(v4);
      }
    }

    else
    {
      v6 = MFLogGeneral();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#Warning failed to create scanner: %@", buf, 0xCu);
      }
    }

    return self->_scanner;
  }

  return result;
}

- (void)addressBook
{
  if (!atomic_load(&self->_ab))
  {
    v5 = ABAddressBookCreateWithOptions(0, 0);
    if (v5)
    {
      v6 = 0;
      atomic_compare_exchange_strong(&self->_ab, &v6, v5);
      if (v6)
      {
        CFRelease(v5);
      }

      else
      {
        v7 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
        [v7 performBlock:&v8];
      }
    }
  }

  return self->_ab;
}

- (void)setLibrary:(id)library
{
  libraryCopy = library;
  p_library = &self->_library;
  if (self->_library != libraryCopy)
  {
    v9 = libraryCopy;
    v7 = +[NSNotificationCenter defaultCenter];
    v8 = v7;
    if (*p_library)
    {
      [v7 removeObserver:self name:MailMessageStoreMessageFlagsChanged object:?];
      [v8 removeObserver:self name:MailMessageStoreMessagesWillBeCompacted object:self->_library];
      [v8 removeObserver:self name:MailMessageStoreMessagesCompacted object:self->_library];
    }

    objc_storeStrong(&self->_library, library);
    if (*p_library)
    {
      [v8 addObserver:self selector:"_messagesFlagsChanged:" name:MailMessageStoreMessageFlagsChanged object:?];
      [v8 addObserver:self selector:"_messagesWillBeCompacted:" name:MailMessageStoreMessagesWillBeCompacted object:self->_library];
      [v8 addObserver:self selector:"_messagesWereCompacted:" name:MailMessageStoreMessagesCompacted object:self->_library];
    }

    libraryCopy = v9;
  }
}

- (void)_messagesFlagsChanged:(id)changed
{
  changedCopy = changed;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100146000;
  v7[3] = &unk_10064C660;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(queue, v7);
}

- (void)_messagesWillBeCompacted:(id)compacted
{
  compactedCopy = compacted;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001461A0;
  v7[3] = &unk_10064C660;
  v8 = compactedCopy;
  selfCopy = self;
  v6 = compactedCopy;
  dispatch_async(queue, v7);
}

- (void)handleAddressBookChange
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001462AC;
  block[3] = &unk_10064C7E8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)scanSummary:(id)summary forMessage:(id)message
{
  summaryCopy = summary;
  messageCopy = message;
  scanner = [(MessageAddressScanner *)self scanner];
  if (scanner)
  {
    Current = CFAbsoluteTimeGetCurrent();
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001463E0;
    block[3] = &unk_1006515C0;
    v12 = messageCopy;
    v15 = Current;
    v16 = scanner;
    v13 = summaryCopy;
    selfCopy = self;
    dispatch_async(queue, block);
  }
}

- (void)_addAddressDetectorResult:(__DDResult *)result forMessage:(id)message
{
  messageCopy = message;
  dispatch_assert_queue_V2(self->_queue);
  v6 = DDResultGetMatchedString();
  v7 = [objc_opt_class() coreRecentsMetadataForMessage:messageCopy];
  library = [(MessageAddressScanner *)self library];
  persistence = [library persistence];
  vipManager = [persistence vipManager];

  v11 = [objc_opt_class() weightForMessage:messageCopy addressBook:-[MessageAddressScanner addressBook](self vipManager:{"addressBook"), vipManager}];
  if (v11 && v7)
  {
    v12 = sub_100145B30();
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v13 = qword_1006DD268;
    v26 = qword_1006DD268;
    if (!qword_1006DD268)
    {
      v14 = sub_100146B5C();
      v24[3] = dlsym(v14, "CRAddressKindMapLocation");
      qword_1006DD268 = v24[3];
      v13 = v24[3];
    }

    _Block_object_dispose(&v23, 8);
    if (!v13)
    {
      v21 = +[NSAssertionHandler currentHandler];
      v22 = [NSString stringWithUTF8String:"NSString *getCRAddressKindMapLocation(void)"];
      [v21 handleFailureInFunction:v22 file:@"MessageAddressScanner.m" lineNumber:37 description:{@"%s", dlerror()}];

      __break(1u);
    }

    v15 = *v13;
    dateReceived = [messageCopy dateReceived];
    v17 = [v12 recentEventForAddress:v6 displayName:0 kind:v15 date:dateReceived weight:v11 metadata:v7 options:0];

    if (v17)
    {
      recentsLibrary = [(MessageAddressScanner *)self recentsLibrary];
      v27 = v17;
      v19 = [NSArray arrayWithObjects:&v27 count:1];
      v20 = sub_1001440CC();
      [recentsLibrary recordContactEvents:v19 recentsDomain:v20 sendingAddress:0 completion:0];
    }
  }
}

@end