@interface NPKRemotePassActionCompanionConversationManager
+ (id)sharedInstance;
- (NPKRemotePassActionCompanionConversationManager)init;
- (PKContactResolver)contactResolver;
- (id)_requestForIdentifier:(id)a3 withQueue:(id)a4;
- (id)_urlForMessageIdentifier:(id)a3;
- (id)cachedContactForConversation:(id)a3;
- (void)_removeRequestForIdentifier:(id)a3 withQueue:(id)a4;
- (void)_setRequest:(id)a3 forIdentifier:(id)a4 withQueue:(id)a5;
- (void)contactsDidChangeForContactResolver:(id)a3;
- (void)dealloc;
- (void)fetchContactForConversation:(id)a3 completion:(id)a4;
@end

@implementation NPKRemotePassActionCompanionConversationManager

- (NPKRemotePassActionCompanionConversationManager)init
{
  v6.receiver = self;
  v6.super_class = NPKRemotePassActionCompanionConversationManager;
  v2 = [(NPKRemotePassActionCompanionConversationManager *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("NPKRemotePassActionCompanionConversationManagerPassRequestQueue", &_dispatch_queue_attr_concurrent);
    requestQueue = v2->_requestQueue;
    v2->_requestQueue = v3;
  }

  return v2;
}

- (void)dealloc
{
  contactResolver = self->_contactResolver;
  if (contactResolver)
  {
    [(PKContactResolver *)contactResolver removeDelegate:self];
  }

  v4.receiver = self;
  v4.super_class = NPKRemotePassActionCompanionConversationManager;
  [(NPKRemotePassActionCompanionConversationManager *)&v4 dealloc];
}

- (PKContactResolver)contactResolver
{
  contactResolver = self->_contactResolver;
  if (!contactResolver)
  {
    v4 = objc_alloc_init(CNContactStore);
    v5 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
    v12[0] = v5;
    v12[1] = CNContactEmailAddressesKey;
    v12[2] = CNContactPhoneNumbersKey;
    v12[3] = CNContactGivenNameKey;
    v12[4] = CNContactFamilyNameKey;
    v6 = [NSArray arrayWithObjects:v12 count:5];

    v7 = [CNMonogrammer descriptorForRequiredKeysIncludingImage:1];
    v8 = [v6 arrayByAddingObject:v7];
    v9 = [[PKContactResolver alloc] initWithContactStore:v4 keysToFetch:v8];
    v10 = self->_contactResolver;
    self->_contactResolver = v9;

    [(PKContactResolver *)self->_contactResolver addDelegate:self];
    contactResolver = self->_contactResolver;
  }

  return contactResolver;
}

+ (id)sharedInstance
{
  if (qword_10001A048 != -1)
  {
    sub_10000A3D0();
  }

  v3 = qword_10001A040;

  return v3;
}

- (id)cachedContactForConversation:(id)a3
{
  v4 = a3;
  v5 = [v4 recipientAddresses];
  v6 = [v5 firstObject];
  v7 = [v6 npkBaseAddress];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v4 senderAddress];
  }

  v10 = v9;

  v11 = [(NPKRemotePassActionCompanionConversationManager *)self contactResolver];
  v12 = [v11 hasCachedResultForHandle:v10];

  if (v12)
  {
    v13 = [(PKContactResolver *)self->_contactResolver contactForHandle:v10];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)fetchContactForConversation:(id)a3 completion:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [v14 recipientAddresses];
  v8 = [v7 firstObject];
  v9 = [v8 npkBaseAddress];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [v14 senderAddress];
  }

  v12 = v11;

  v13 = [(NPKRemotePassActionCompanionConversationManager *)self contactResolver];
  [v13 contactForHandle:v12 withCompletion:v6];
}

- (void)contactsDidChangeForContactResolver:(id)a3
{
  v3 = a3;
  v4 = pk_RemotePassAction_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notice: Note that contacts did change for contact resolver %@", &v7, 0xCu);
    }
  }
}

- (id)_requestForIdentifier:(id)a3 withQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000018A8;
  v21 = sub_1000018B8;
  v22 = 0;
  if (v6)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000018C0;
    block[3] = &unk_1000144B8;
    block[4] = self;
    v15 = v6;
    v16 = &v17;
    dispatch_sync(v7, block);
  }

  v8 = pk_RemotePassAction_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    v10 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = v18[5];
      *buf = 138412546;
      v24 = v11;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Debug: Returning object %@ for identifier %@", buf, 0x16u);
    }
  }

  v12 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v12;
}

- (void)_setRequest:(id)a3 forIdentifier:(id)a4 withQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001AC8;
    block[3] = &unk_1000144E0;
    block[4] = self;
    v12 = v9;
    v13 = v8;
    dispatch_barrier_async(a5, block);
  }
}

- (void)_removeRequestForIdentifier:(id)a3 withQueue:(id)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100001CF4;
    v8[3] = &unk_100014530;
    v8[4] = self;
    v9 = v6;
    dispatch_barrier_async(a4, v8);
  }
}

- (id)_urlForMessageIdentifier:(id)a3
{
  v3 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1000018A8;
  v13 = sub_1000018B8;
  v14 = 0;
  v15 = @"NPKRemotePassActionCompanionConversationManager";
  v4 = [NSArray arrayWithObjects:&v15 count:1];
  PKSharedCacheCreateDirectory();

  if ([v10[5] length])
  {
    v5 = [v10[5] stringByAppendingPathComponent:v3];
    v6 = [v5 stringByAppendingPathExtension:@"archive"];

    v7 = [NSURL fileURLWithPath:v6];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v9, 8);

  return v7;
}

@end