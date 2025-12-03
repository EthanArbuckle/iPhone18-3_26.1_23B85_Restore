@interface NPKRemotePassActionCompanionConversationManager
+ (id)sharedInstance;
- (NPKRemotePassActionCompanionConversationManager)init;
- (PKContactResolver)contactResolver;
- (id)_requestForIdentifier:(id)identifier withQueue:(id)queue;
- (id)_urlForMessageIdentifier:(id)identifier;
- (id)cachedContactForConversation:(id)conversation;
- (void)_removeRequestForIdentifier:(id)identifier withQueue:(id)queue;
- (void)_setRequest:(id)request forIdentifier:(id)identifier withQueue:(id)queue;
- (void)contactsDidChangeForContactResolver:(id)resolver;
- (void)dealloc;
- (void)fetchContactForConversation:(id)conversation completion:(id)completion;
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

- (id)cachedContactForConversation:(id)conversation
{
  conversationCopy = conversation;
  recipientAddresses = [conversationCopy recipientAddresses];
  firstObject = [recipientAddresses firstObject];
  npkBaseAddress = [firstObject npkBaseAddress];
  v8 = npkBaseAddress;
  if (npkBaseAddress)
  {
    senderAddress = npkBaseAddress;
  }

  else
  {
    senderAddress = [conversationCopy senderAddress];
  }

  v10 = senderAddress;

  contactResolver = [(NPKRemotePassActionCompanionConversationManager *)self contactResolver];
  v12 = [contactResolver hasCachedResultForHandle:v10];

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

- (void)fetchContactForConversation:(id)conversation completion:(id)completion
{
  conversationCopy = conversation;
  completionCopy = completion;
  recipientAddresses = [conversationCopy recipientAddresses];
  firstObject = [recipientAddresses firstObject];
  npkBaseAddress = [firstObject npkBaseAddress];
  v10 = npkBaseAddress;
  if (npkBaseAddress)
  {
    senderAddress = npkBaseAddress;
  }

  else
  {
    senderAddress = [conversationCopy senderAddress];
  }

  v12 = senderAddress;

  contactResolver = [(NPKRemotePassActionCompanionConversationManager *)self contactResolver];
  [contactResolver contactForHandle:v12 withCompletion:completionCopy];
}

- (void)contactsDidChangeForContactResolver:(id)resolver
{
  resolverCopy = resolver;
  v4 = pk_RemotePassAction_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = resolverCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notice: Note that contacts did change for contact resolver %@", &v7, 0xCu);
    }
  }
}

- (id)_requestForIdentifier:(id)identifier withQueue:(id)queue
{
  identifierCopy = identifier;
  queueCopy = queue;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000018A8;
  v21 = sub_1000018B8;
  v22 = 0;
  if (identifierCopy)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000018C0;
    block[3] = &unk_1000144B8;
    block[4] = self;
    v15 = identifierCopy;
    v16 = &v17;
    dispatch_sync(queueCopy, block);
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
      v26 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Debug: Returning object %@ for identifier %@", buf, 0x16u);
    }
  }

  v12 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v12;
}

- (void)_setRequest:(id)request forIdentifier:(id)identifier withQueue:(id)queue
{
  requestCopy = request;
  identifierCopy = identifier;
  v10 = identifierCopy;
  if (identifierCopy)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001AC8;
    block[3] = &unk_1000144E0;
    block[4] = self;
    v12 = identifierCopy;
    v13 = requestCopy;
    dispatch_barrier_async(queue, block);
  }
}

- (void)_removeRequestForIdentifier:(id)identifier withQueue:(id)queue
{
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (identifierCopy)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100001CF4;
    v8[3] = &unk_100014530;
    v8[4] = self;
    v9 = identifierCopy;
    dispatch_barrier_async(queue, v8);
  }
}

- (id)_urlForMessageIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
    v5 = [v10[5] stringByAppendingPathComponent:identifierCopy];
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