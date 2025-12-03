@interface ENUserStoreClient
+ (id)userStoreClientWithUrl:(id)url authenticationToken:(id)token;
- (ENUserStoreClient)initWithUserStoreUrl:(id)url authenticationToken:(id)token;
- (id)authenticateToBusiness;
- (void)authenticateToBusinessWithCompletion:(id)completion;
- (void)authenticateToBusinessWithSuccess:(id)success failure:(id)failure;
- (void)checkVersionWithClientName:(id)name edamVersionMajor:(signed __int16)major edamVersionMinor:(signed __int16)minor completion:(id)completion;
- (void)fetchBootstrapInfoWithLocale:(id)locale completion:(id)completion;
- (void)fetchNoteStoreURLWithCompletion:(id)completion;
- (void)fetchPremiumInfoWithCompletion:(id)completion;
- (void)fetchPublicUserInfoWithUsername:(id)username completion:(id)completion;
- (void)fetchUserWithCompletion:(id)completion;
- (void)getBootstrapInfoWithLocale:(id)locale success:(id)success failure:(id)failure;
- (void)getNoteStoreUrlWithSuccess:(id)success failure:(id)failure;
- (void)getPremiumInfoWithSuccess:(id)success failure:(id)failure;
- (void)getPublicUserInfoWithUsername:(id)username success:(id)success failure:(id)failure;
- (void)getUserWithSuccess:(id)success failure:(id)failure;
- (void)revokeLongSessionWithAuthenticationToken:(id)token completion:(id)completion;
- (void)revokeLongSessionWithAuthenticationToken:(id)token success:(id)success failure:(id)failure;
@end

@implementation ENUserStoreClient

- (void)revokeLongSessionWithAuthenticationToken:(id)token success:(id)success failure:(id)failure
{
  successCopy = success;
  failureCopy = failure;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__ENUserStoreClient_revokeLongSessionWithAuthenticationToken_success_failure___block_invoke;
  v12[3] = &unk_278C1FC78;
  v13 = successCopy;
  v14 = failureCopy;
  v10 = failureCopy;
  v11 = successCopy;
  [(ENUserStoreClient *)self revokeLongSessionWithAuthenticationToken:token completion:v12];
}

uint64_t __78__ENUserStoreClient_revokeLongSessionWithAuthenticationToken_success_failure___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return (*(*(a1 + 32) + 16))();
  }
}

- (void)authenticateToBusinessWithSuccess:(id)success failure:(id)failure
{
  successCopy = success;
  failureCopy = failure;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__ENUserStoreClient_authenticateToBusinessWithSuccess_failure___block_invoke;
  v10[3] = &unk_278C1FEA8;
  v11 = successCopy;
  v12 = failureCopy;
  v8 = failureCopy;
  v9 = successCopy;
  [(ENUserStoreClient *)self authenticateToBusinessWithCompletion:v10];
}

uint64_t __63__ENUserStoreClient_authenticateToBusinessWithSuccess_failure___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return (*(*(a1 + 32) + 16))();
  }
}

- (void)getNoteStoreUrlWithSuccess:(id)success failure:(id)failure
{
  successCopy = success;
  failureCopy = failure;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__ENUserStoreClient_getNoteStoreUrlWithSuccess_failure___block_invoke;
  v10[3] = &unk_278C1FDB8;
  v11 = successCopy;
  v12 = failureCopy;
  v8 = failureCopy;
  v9 = successCopy;
  [(ENUserStoreClient *)self fetchNoteStoreURLWithCompletion:v10];
}

uint64_t __56__ENUserStoreClient_getNoteStoreUrlWithSuccess_failure___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return (*(*(a1 + 32) + 16))();
  }
}

- (void)getPremiumInfoWithSuccess:(id)success failure:(id)failure
{
  successCopy = success;
  failureCopy = failure;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__ENUserStoreClient_getPremiumInfoWithSuccess_failure___block_invoke;
  v10[3] = &unk_278C1A8D8;
  v11 = successCopy;
  v12 = failureCopy;
  v8 = failureCopy;
  v9 = successCopy;
  [(ENUserStoreClient *)self fetchPremiumInfoWithCompletion:v10];
}

uint64_t __55__ENUserStoreClient_getPremiumInfoWithSuccess_failure___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return (*(*(a1 + 32) + 16))();
  }
}

- (void)getPublicUserInfoWithUsername:(id)username success:(id)success failure:(id)failure
{
  successCopy = success;
  failureCopy = failure;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__ENUserStoreClient_getPublicUserInfoWithUsername_success_failure___block_invoke;
  v12[3] = &unk_278C1A8B0;
  v13 = successCopy;
  v14 = failureCopy;
  v10 = failureCopy;
  v11 = successCopy;
  [(ENUserStoreClient *)self fetchPublicUserInfoWithUsername:username completion:v12];
}

uint64_t __67__ENUserStoreClient_getPublicUserInfoWithUsername_success_failure___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return (*(*(a1 + 32) + 16))();
  }
}

- (void)getUserWithSuccess:(id)success failure:(id)failure
{
  successCopy = success;
  failureCopy = failure;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__ENUserStoreClient_getUserWithSuccess_failure___block_invoke;
  v10[3] = &unk_278C1A888;
  v11 = successCopy;
  v12 = failureCopy;
  v8 = failureCopy;
  v9 = successCopy;
  [(ENUserStoreClient *)self fetchUserWithCompletion:v10];
}

uint64_t __48__ENUserStoreClient_getUserWithSuccess_failure___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return (*(*(a1 + 32) + 16))();
  }
}

- (void)getBootstrapInfoWithLocale:(id)locale success:(id)success failure:(id)failure
{
  successCopy = success;
  failureCopy = failure;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__ENUserStoreClient_getBootstrapInfoWithLocale_success_failure___block_invoke;
  v12[3] = &unk_278C1A860;
  v13 = successCopy;
  v14 = failureCopy;
  v10 = failureCopy;
  v11 = successCopy;
  [(ENUserStoreClient *)self fetchBootstrapInfoWithLocale:locale completion:v12];
}

uint64_t __64__ENUserStoreClient_getBootstrapInfoWithLocale_success_failure___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return (*(*(a1 + 32) + 16))();
  }
}

uint64_t __98__ENUserStoreClient_checkVersionWithClientName_edamVersionMajor_edamVersionMinor_success_failure___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return (*(*(a1 + 32) + 16))();
  }
}

- (void)revokeLongSessionWithAuthenticationToken:(id)token completion:(id)completion
{
  tokenCopy = token;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__ENUserStoreClient_revokeLongSessionWithAuthenticationToken_completion___block_invoke;
  v8[3] = &unk_278C21508;
  v8[4] = self;
  v9 = tokenCopy;
  v7 = tokenCopy;
  [(ENStoreClient *)self invokeAsyncBlock:v8 completion:completion];
}

void __73__ENUserStoreClient_revokeLongSessionWithAuthenticationToken_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  [v2 revokeLongSession:*(a1 + 40)];
}

- (void)authenticateToBusinessWithCompletion:(id)completion
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__ENUserStoreClient_authenticateToBusinessWithCompletion___block_invoke;
  v3[3] = &unk_278C1F8B8;
  v3[4] = self;
  [(ENStoreClient *)self invokeAsyncObjectBlock:v3 completion:completion];
}

id __58__ENUserStoreClient_authenticateToBusinessWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = [*(a1 + 32) authenticationToken];
  v4 = [v2 authenticateToBusiness:v3];

  return v4;
}

- (void)fetchNoteStoreURLWithCompletion:(id)completion
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__ENUserStoreClient_fetchNoteStoreURLWithCompletion___block_invoke;
  v3[3] = &unk_278C1F8B8;
  v3[4] = self;
  [(ENStoreClient *)self invokeAsyncObjectBlock:v3 completion:completion];
}

id __53__ENUserStoreClient_fetchNoteStoreURLWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = [*(a1 + 32) authenticationToken];
  v4 = [v2 getNoteStoreUrl:v3];

  return v4;
}

- (void)fetchPremiumInfoWithCompletion:(id)completion
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__ENUserStoreClient_fetchPremiumInfoWithCompletion___block_invoke;
  v3[3] = &unk_278C1F8B8;
  v3[4] = self;
  [(ENStoreClient *)self invokeAsyncObjectBlock:v3 completion:completion];
}

id __52__ENUserStoreClient_fetchPremiumInfoWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = [*(a1 + 32) authenticationToken];
  v4 = [v2 getPremiumInfo:v3];

  return v4;
}

- (void)fetchPublicUserInfoWithUsername:(id)username completion:(id)completion
{
  usernameCopy = username;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__ENUserStoreClient_fetchPublicUserInfoWithUsername_completion___block_invoke;
  v8[3] = &unk_278C1F930;
  v8[4] = self;
  v9 = usernameCopy;
  v7 = usernameCopy;
  [(ENStoreClient *)self invokeAsyncObjectBlock:v8 completion:completion];
}

id __64__ENUserStoreClient_fetchPublicUserInfoWithUsername_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = [v2 getPublicUserInfo:*(a1 + 40)];

  return v3;
}

- (void)fetchUserWithCompletion:(id)completion
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__ENUserStoreClient_fetchUserWithCompletion___block_invoke;
  v3[3] = &unk_278C1F8B8;
  v3[4] = self;
  [(ENStoreClient *)self invokeAsyncObjectBlock:v3 completion:completion];
}

id __45__ENUserStoreClient_fetchUserWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = [*(a1 + 32) authenticationToken];
  v4 = [v2 getUser:v3];

  return v4;
}

- (void)fetchBootstrapInfoWithLocale:(id)locale completion:(id)completion
{
  localeCopy = locale;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__ENUserStoreClient_fetchBootstrapInfoWithLocale_completion___block_invoke;
  v8[3] = &unk_278C1F930;
  v8[4] = self;
  v9 = localeCopy;
  v7 = localeCopy;
  [(ENStoreClient *)self invokeAsyncObjectBlock:v8 completion:completion];
}

id __61__ENUserStoreClient_fetchBootstrapInfoWithLocale_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = [v2 getBootstrapInfo:*(a1 + 40)];

  return v3;
}

- (void)checkVersionWithClientName:(id)name edamVersionMajor:(signed __int16)major edamVersionMinor:(signed __int16)minor completion:(id)completion
{
  nameCopy = name;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __93__ENUserStoreClient_checkVersionWithClientName_edamVersionMajor_edamVersionMinor_completion___block_invoke;
  v12[3] = &unk_278C1A810;
  v12[4] = self;
  v13 = nameCopy;
  majorCopy = major;
  minorCopy = minor;
  v11 = nameCopy;
  [(ENStoreClient *)self invokeAsyncBoolBlock:v12 completion:completion];
}

uint64_t __93__ENUserStoreClient_checkVersionWithClientName_edamVersionMajor_edamVersionMinor_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = [v2 checkVersion:*(a1 + 40) edamVersionMajor:*(a1 + 48) edamVersionMinor:*(a1 + 50)];

  return v3;
}

- (id)authenticateToBusiness
{
  client = [(ENUserStoreClient *)self client];
  authenticationToken = [(ENUserStoreClient *)self authenticationToken];
  v5 = [client authenticateToBusiness:authenticationToken];

  return v5;
}

- (ENUserStoreClient)initWithUserStoreUrl:(id)url authenticationToken:(id)token
{
  urlCopy = url;
  tokenCopy = token;
  v14.receiver = self;
  v14.super_class = ENUserStoreClient;
  v8 = [(ENStoreClient *)&v14 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEBC0] URLWithString:urlCopy];
    v10 = [[ENTHTTPClient alloc] initWithURL:v9];
    v11 = [[ENTBinaryProtocol alloc] initWithTransport:v10];
    v12 = [[EDAMUserStoreClient alloc] initWithProtocol:v11];
    [(ENUserStoreClient *)v8 setClient:v12];

    [(ENUserStoreClient *)v8 setAuthenticationToken:tokenCopy];
  }

  return v8;
}

+ (id)userStoreClientWithUrl:(id)url authenticationToken:(id)token
{
  tokenCopy = token;
  urlCopy = url;
  v8 = [[self alloc] initWithUserStoreUrl:urlCopy authenticationToken:tokenCopy];

  return v8;
}

@end