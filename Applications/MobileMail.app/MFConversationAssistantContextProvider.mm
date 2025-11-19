@interface MFConversationAssistantContextProvider
+ (id)log;
- (BOOL)allowContextProvider:(id)a3;
- (MFConversationAssistantContextProvider)initWithCurrentVisibileMessageStrategy:(id)a3 contactStore:(id)a4;
- (id)_saPersonAttributesFromEmailAddresses:(id)a3;
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
  block[4] = a1;
  if (qword_1006DD450 != -1)
  {
    dispatch_once(&qword_1006DD450, block);
  }

  v2 = qword_1006DD448;

  return v2;
}

- (MFConversationAssistantContextProvider)initWithCurrentVisibileMessageStrategy:(id)a3 contactStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = MFConversationAssistantContextProvider;
  v9 = [(MFConversationAssistantContextProvider *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contactStore, a4);
    objc_storeStrong(&v10->_visibleMessageStrategy, a3);
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

- (BOOL)allowContextProvider:(id)a3
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
  v5 = [v3 email];
  if (v5)
  {
    v6 = [(MFConversationAssistantContextProvider *)self visibleMessageStrategy];
    v36 = [v6 currentVisibleMessageContentRequest];

    v7 = [v36 waitForResult];
    if (v7)
    {
      v8 = [v36 message];
      v9 = [v8 date];
      [v5 setDateSent:v9];

      v10 = [v8 toList];
      v11 = [(MFConversationAssistantContextProvider *)self _saPersonAttributesFromEmailAddresses:v10];
      [v5 setRecipientsTo:v11];

      v12 = [v8 ccList];
      v13 = [(MFConversationAssistantContextProvider *)self _saPersonAttributesFromEmailAddresses:v12];
      [v5 setRecipientsCc:v13];

      v14 = [v8 bccList];
      v15 = [(MFConversationAssistantContextProvider *)self _saPersonAttributesFromEmailAddresses:v14];
      [v5 setRecipientsBcc:v15];

      v16 = [v8 senderList];
      v17 = [(MFConversationAssistantContextProvider *)self _saPersonAttributesFromEmailAddresses:v16];
      v18 = [v17 lastObject];
      [v5 setFromEmail:v18];

      v19 = [v8 mailboxes];
      v20 = [v19 ef_map:&stru_1006539A0];
      v21 = [v20 ef_flatten];
      v22 = [v21 ef_compactMap:&stru_1006539E0];
      v23 = [NSSet setWithArray:v22];
      v24 = [v23 allObjects];
      [v5 setReceivingAddresses:v24];

      v25 = [v8 mailboxes];
      v26 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v25 ef_any:&stru_100653A00]);
      [v5 setOutgoing:v26];

      v27 = [v7 publicMessageURL];
      [v5 setIdentifier:v27];
    }

    else
    {
      v8 = +[MFConversationAssistantContextProvider log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v29 = [(MFConversationAssistantContextProvider *)self visibleMessageStrategy];
        v30 = [v29 currentVisibleMessageContentRequest];
        sub_10048B284(v30, v41, v8, v29);
      }
    }

    v31 = +[MFConversationAssistantContextProvider log];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = [v5 dictionary];
      v33 = [v5 identifier];
      *buf = 138412546;
      *&buf[4] = v32;
      *&buf[12] = 2114;
      *&buf[14] = v33;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Returning %@, %{public}@.", buf, 0x16u);
    }

    v34 = [v5 dictionary];
    v37 = v34;
    v28 = [NSArray arrayWithObjects:&v37 count:1];
  }

  else
  {
    v28 = +[NSArray array];
  }

  return v28;
}

- (id)_saPersonAttributesFromEmailAddresses:(id)a3
{
  v4 = a3;
  v21 = +[NSMutableArray array];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v4;
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

        v8 = [*(*(&v23 + 1) + 8 * i) emailAddressValue];
        v9 = v8;
        if (v8)
        {
          v10 = [v8 simpleAddress];
          v11 = [v9 displayName];
          if ([v10 length])
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
            v14 = [v12 personAttribute];
            [v14 setData:v10];
            v15 = [(MFConversationAssistantContextProvider *)self contactStore];
            v16 = [v15 displayNameForEmailAddress:v10];

            if ([v16 length])
            {
              v17 = v16;
            }

            else
            {
              v17 = v11;
            }

            [v14 setDisplayText:v17];
            [v21 addObject:v14];
          }
        }

        else
        {
          v11 = 0;
          v10 = 0;
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