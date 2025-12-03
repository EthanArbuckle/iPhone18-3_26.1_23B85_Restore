@interface CNXPCContactsSupport
+ (CNXPCContactsSupport)sharedInstance;
+ (id)os_log;
+ (id)serviceProtocolInterface;
- (BOOL)reindexSearchableItemsWithIdentifiers:(id)identifiers error:(id *)error;
- (BOOL)setFavoritesEntries:(id)entries error:(id *)error;
- (CNXPCContactsSupport)init;
- (CNXPCContactsSupport)initWithConnection:(id)connection;
- (id)favoritesEntriesWithError:(id *)error;
- (id)requestProviderDomainCommand:(id)command error:(id *)error;
- (id)verifyIndexWithError:(id *)error;
- (void)sendCommLimitsQuestionForHandles:(id)handles withReply:(id)reply;
@end

@implementation CNXPCContactsSupport

+ (CNXPCContactsSupport)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__CNXPCContactsSupport_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_cn_once_token_2 != -1)
  {
    dispatch_once(&sharedInstance_cn_once_token_2, block);
  }

  v2 = sharedInstance_cn_once_object_2;

  return v2;
}

uint64_t __38__CNXPCContactsSupport_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_cn_once_object_2 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (CNXPCContactsSupport)init
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.contactsd.support" options:0];
  v4 = [(CNXPCContactsSupport *)self initWithConnection:v3];

  return v4;
}

+ (id)serviceProtocolInterface
{
  v33[4] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F09BC248];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_requestProviderDomainCommand_withReply_ argumentIndex:0 ofReply:0];

  v4 = MEMORY[0x1E695DFD8];
  v33[0] = objc_opt_class();
  v33[1] = objc_opt_class();
  v33[2] = objc_opt_class();
  v33[3] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
  v6 = [v4 setWithArray:v5];
  [v2 setClasses:v6 forSelector:sel_requestProviderDomainCommand_withReply_ argumentIndex:0 ofReply:1];

  v7 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v7 forSelector:sel_requestProviderDomainCommand_withReply_ argumentIndex:1 ofReply:1];

  v8 = MEMORY[0x1E695DFD8];
  v32[0] = objc_opt_class();
  v32[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v10 = [v8 setWithArray:v9];
  [v2 setClasses:v10 forSelector:sel_favoritesEntriesWithReply_ argumentIndex:0 ofReply:1];

  v11 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v11 forSelector:sel_favoritesEntriesWithReply_ argumentIndex:1 ofReply:1];

  v12 = MEMORY[0x1E695DFD8];
  v31[0] = objc_opt_class();
  v31[1] = objc_opt_class();
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v14 = [v12 setWithArray:v13];
  [v2 setClasses:v14 forSelector:sel_setFavoritesEntries_withReply_ argumentIndex:0 ofReply:0];

  v15 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v15 forSelector:sel_setFavoritesEntries_withReply_ argumentIndex:0 ofReply:1];

  v16 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v16 forSelector:sel_setFavoritesEntries_withReply_ argumentIndex:1 ofReply:1];

  v17 = MEMORY[0x1E695DFD8];
  v30[0] = objc_opt_class();
  v30[1] = objc_opt_class();
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v19 = [v17 setWithArray:v18];
  [v2 setClasses:v19 forSelector:sel_sendCommLimitsQuestionForHandles_withReply_ argumentIndex:0 ofReply:0];

  v20 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v20 forSelector:sel_sendCommLimitsQuestionForHandles_withReply_ argumentIndex:0 ofReply:1];

  v21 = MEMORY[0x1E695DFD8];
  v29[0] = objc_opt_class();
  v29[1] = objc_opt_class();
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v23 = [v21 setWithArray:v22];
  [v2 setClasses:v23 forSelector:sel_reindexSearchableItemsWithIdentifiers_withReply_ argumentIndex:0 ofReply:0];

  v24 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v24 forSelector:sel_reindexSearchableItemsWithIdentifiers_withReply_ argumentIndex:0 ofReply:1];

  v25 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v25 forSelector:sel_reindexSearchableItemsWithIdentifiers_withReply_ argumentIndex:1 ofReply:1];

  v26 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v26 forSelector:sel_verifyIndexWithReply_ argumentIndex:0 ofReply:1];

  v27 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v27 forSelector:sel_verifyIndexWithReply_ argumentIndex:1 ofReply:1];

  return v2;
}

+ (id)os_log
{
  if (os_log_cn_once_token_1_5 != -1)
  {
    +[CNXPCContactsSupport os_log];
  }

  v3 = os_log_cn_once_object_1_5;

  return v3;
}

uint64_t __30__CNXPCContactsSupport_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "CNXPCContactsSupport");
  v1 = os_log_cn_once_object_1_5;
  os_log_cn_once_object_1_5 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNXPCContactsSupport)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v18.receiver = self;
  v18.super_class = CNXPCContactsSupport;
  v5 = [(CNXPCContactsSupport *)&v18 init];
  if (v5)
  {
    v6 = +[CNContactsEnvironment currentEnvironment];
    loggerProvider = [v6 loggerProvider];
    contactsLogger = [loggerProvider contactsLogger];

    logger = v5->_logger;
    v5->_logger = contactsLogger;
    v10 = contactsLogger;

    v11 = +[CNXPCContactsSupport serviceProtocolInterface];
    v12 = [[CNXPCConnection alloc] initWithConnection:connectionCopy interface:v11 logger:v10];
    serviceConnection = v5->_serviceConnection;
    v5->_serviceConnection = v12;

    serviceProxy = [(CNXPCConnection *)v5->_serviceConnection serviceProxy];
    serviceProxy = v5->_serviceProxy;
    v5->_serviceProxy = serviceProxy;

    v16 = v5;
  }

  return v5;
}

- (id)requestProviderDomainCommand:(id)command error:(id *)error
{
  commandCopy = command;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__37;
  v28 = __Block_byref_object_dispose__37;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__37;
  v22 = __Block_byref_object_dispose__37;
  v23 = 0;
  logger = [(CNXPCContactsSupport *)self logger];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__CNXPCContactsSupport_requestProviderDomainCommand_error___block_invoke;
  v14[3] = &unk_1E7417810;
  v16 = &v24;
  v14[4] = self;
  v8 = commandCopy;
  v15 = v8;
  v17 = &v18;
  [logger requestingProviderDomainCommand:v14];

  v9 = v19[5];
  v10 = v25[5];
  v11 = v10;
  if (error && !v10)
  {
    v12 = v9;
    *error = v9;
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

void __59__CNXPCContactsSupport_requestProviderDomainCommand_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceConnection];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 remoteResultForSelector:sel_requestProviderDomainCommand_withReply_ param1:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)favoritesEntriesWithError:(id *)error
{
  serviceConnection = [(CNXPCContactsSupport *)self serviceConnection];
  v5 = [serviceConnection remoteResultForSelector:sel_favoritesEntriesWithReply_ error:error];

  return v5;
}

- (BOOL)setFavoritesEntries:(id)entries error:(id *)error
{
  entriesCopy = entries;
  serviceConnection = [(CNXPCContactsSupport *)self serviceConnection];
  v8 = [serviceConnection remoteResultForSelector:sel_setFavoritesEntries_withReply_ param1:entriesCopy error:error];

  LOBYTE(serviceConnection) = [v8 BOOLValue];
  return serviceConnection;
}

- (void)sendCommLimitsQuestionForHandles:(id)handles withReply:(id)reply
{
  replyCopy = reply;
  handlesCopy = handles;
  serviceProxy = [(CNXPCContactsSupport *)self serviceProxy];
  [serviceProxy sendCommLimitsQuestionForHandles:handlesCopy withReply:replyCopy];
}

- (BOOL)reindexSearchableItemsWithIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  serviceConnection = [(CNXPCContactsSupport *)self serviceConnection];
  v8 = [serviceConnection remoteResultForSelector:sel_reindexSearchableItemsWithIdentifiers_withReply_ param1:identifiersCopy error:error];

  LOBYTE(serviceConnection) = [v8 BOOLValue];
  return serviceConnection;
}

- (id)verifyIndexWithError:(id *)error
{
  serviceConnection = [(CNXPCContactsSupport *)self serviceConnection];
  v5 = [serviceConnection remoteResultForSelector:sel_verifyIndexWithReply_ error:error];

  return v5;
}

@end