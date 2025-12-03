@interface MFConversationAssistantContextProvider
+ (id)log;
- (BOOL)allowContextProvider:(id)provider;
- (MFConversationAssistantContextProvider)initWithCurrentVisibileMessageStrategy:(id)strategy contactStore:(id)store;
- (id)_saPersonAttributesFromEmailAddresses:(id)addresses;
- (id)getCurrentContext;
- (void)dealloc;
@end

@implementation MFConversationAssistantContextProvider

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B638C;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD450 != -1)
  {
    dispatch_once(&qword_1006DD450, block);
  }

  v2 = qword_1006DD448;

  return v2;
}

- (MFConversationAssistantContextProvider)initWithCurrentVisibileMessageStrategy:(id)strategy contactStore:(id)store
{
  strategyCopy = strategy;
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = MFConversationAssistantContextProvider;
  v9 = [(MFConversationAssistantContextProvider *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contactStore, store);
    objc_storeStrong(&v10->_visibleMessageStrategy, strategy);
    v11 = +[AFContextManager defaultContextManager];
    [v11 addContextProvider:v10];
  }

  return v10;
}

- (void)dealloc
{
  v3 = +[AFContextManager defaultContextManager];
  [v3 removeContextProvider:self];

  v4.receiver = self;
  v4.super_class = MFConversationAssistantContextProvider;
  [(MFConversationAssistantContextProvider *)&v4 dealloc];
}

- (BOOL)allowContextProvider:(id)provider
{
  v3 = +[MFConversationAssistantContextProvider log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138543362;
    v6 = @"YES";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "allowContextProvider %{public}@", &v5, 0xCu);
  }

  return 1;
}

- (id)getCurrentContext
{
  *v41 = 0;
  v42 = v41;
  v43 = 0x2050000000;
  v3 = qword_1006DD458;
  v44 = qword_1006DD458;
  if (!qword_1006DD458)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1001B7104;
    v39 = &unk_100650760;
    v40 = v41;
    sub_1001B7104(buf);
    v3 = *(v42 + 3);
  }

  v4 = v3;
  _Block_object_dispose(v41, 8);
  email = [v3 email];
  if (email)
  {
    visibleMessageStrategy = [(MFConversationAssistantContextProvider *)self visibleMessageStrategy];
    currentVisibleMessageContentRequest = [visibleMessageStrategy currentVisibleMessageContentRequest];

    waitForResult = [currentVisibleMessageContentRequest waitForResult];
    if (waitForResult)
    {
      message = [currentVisibleMessageContentRequest message];
      date = [message date];
      [email setDateSent:date];

      toList = [message toList];
      v11 = [(MFConversationAssistantContextProvider *)self _saPersonAttributesFromEmailAddresses:toList];
      [email setRecipientsTo:v11];

      ccList = [message ccList];
      v13 = [(MFConversationAssistantContextProvider *)self _saPersonAttributesFromEmailAddresses:ccList];
      [email setRecipientsCc:v13];

      bccList = [message bccList];
      v15 = [(MFConversationAssistantContextProvider *)self _saPersonAttributesFromEmailAddresses:bccList];
      [email setRecipientsBcc:v15];

      senderList = [message senderList];
      v17 = [(MFConversationAssistantContextProvider *)self _saPersonAttributesFromEmailAddresses:senderList];
      lastObject = [v17 lastObject];
      [email setFromEmail:lastObject];

      mailboxes = [message mailboxes];
      v20 = [mailboxes ef_map:&stru_1006539A0];
      ef_flatten = [v20 ef_flatten];
      v22 = [ef_flatten ef_compactMap:&stru_1006539E0];
      v23 = [NSSet setWithArray:v22];
      allObjects = [v23 allObjects];
      [email setReceivingAddresses:allObjects];

      mailboxes2 = [message mailboxes];
      v26 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [mailboxes2 ef_any:&stru_100653A00]);
      [email setOutgoing:v26];

      publicMessageURL = [waitForResult publicMessageURL];
      [email setIdentifier:publicMessageURL];
    }

    else
    {
      message = +[MFConversationAssistantContextProvider log];
      if (os_log_type_enabled(message, OS_LOG_TYPE_ERROR))
      {
        visibleMessageStrategy2 = [(MFConversationAssistantContextProvider *)self visibleMessageStrategy];
        currentVisibleMessageContentRequest2 = [visibleMessageStrategy2 currentVisibleMessageContentRequest];
        sub_10048B284(currentVisibleMessageContentRequest2, v41, message, visibleMessageStrategy2);
      }
    }

    v31 = +[MFConversationAssistantContextProvider log];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      dictionary = [email dictionary];
      identifier = [email identifier];
      *buf = 138412546;
      *&buf[4] = dictionary;
      *&buf[12] = 2114;
      *&buf[14] = identifier;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Returning %@, %{public}@.", buf, 0x16u);
    }

    dictionary2 = [email dictionary];
    v37 = dictionary2;
    v28 = [NSArray arrayWithObjects:&v37 count:1];
  }

  else
  {
    v28 = +[NSArray array];
  }

  return v28;
}

- (id)_saPersonAttributesFromEmailAddresses:(id)addresses
{
  addressesCopy = addresses;
  v21 = +[NSMutableArray array];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = addressesCopy;
  v5 = [obj countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v5)
  {
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        emailAddressValue = [*(*(&v23 + 1) + 8 * i) emailAddressValue];
        v9 = emailAddressValue;
        if (emailAddressValue)
        {
          simpleAddress = [emailAddressValue simpleAddress];
          displayName = [v9 displayName];
          if ([simpleAddress length])
          {
            v28 = 0;
            v29 = &v28;
            v30 = 0x2050000000;
            v12 = qword_1006DD468;
            v31 = qword_1006DD468;
            if (!qword_1006DD468)
            {
              v27[0] = _NSConcreteStackBlock;
              v27[1] = 3221225472;
              v27[2] = sub_1001B73C8;
              v27[3] = &unk_100650760;
              v27[4] = &v28;
              sub_1001B73C8(v27);
              v12 = v29[3];
            }

            v13 = v12;
            _Block_object_dispose(&v28, 8);
            personAttribute = [v12 personAttribute];
            [personAttribute setData:simpleAddress];
            contactStore = [(MFConversationAssistantContextProvider *)self contactStore];
            v16 = [contactStore displayNameForEmailAddress:simpleAddress];

            if ([v16 length])
            {
              v17 = v16;
            }

            else
            {
              v17 = displayName;
            }

            [personAttribute setDisplayText:v17];
            [v21 addObject:personAttribute];
          }
        }

        else
        {
          displayName = 0;
          simpleAddress = 0;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v5);
  }

  if ([v21 count])
  {
    v18 = v21;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  return v18;
}

@end