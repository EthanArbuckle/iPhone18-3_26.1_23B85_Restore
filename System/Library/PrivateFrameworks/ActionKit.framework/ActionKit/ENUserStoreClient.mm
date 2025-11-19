@interface ENUserStoreClient
+ (id)userStoreClientWithUrl:(id)a3 authenticationToken:(id)a4;
- (ENUserStoreClient)initWithUserStoreUrl:(id)a3 authenticationToken:(id)a4;
- (id)authenticateToBusiness;
- (void)authenticateToBusinessWithCompletion:(id)a3;
- (void)authenticateToBusinessWithSuccess:(id)a3 failure:(id)a4;
- (void)checkVersionWithClientName:(id)a3 edamVersionMajor:(signed __int16)a4 edamVersionMinor:(signed __int16)a5 completion:(id)a6;
- (void)fetchBootstrapInfoWithLocale:(id)a3 completion:(id)a4;
- (void)fetchNoteStoreURLWithCompletion:(id)a3;
- (void)fetchPremiumInfoWithCompletion:(id)a3;
- (void)fetchPublicUserInfoWithUsername:(id)a3 completion:(id)a4;
- (void)fetchUserWithCompletion:(id)a3;
- (void)getBootstrapInfoWithLocale:(id)a3 success:(id)a4 failure:(id)a5;
- (void)getNoteStoreUrlWithSuccess:(id)a3 failure:(id)a4;
- (void)getPremiumInfoWithSuccess:(id)a3 failure:(id)a4;
- (void)getPublicUserInfoWithUsername:(id)a3 success:(id)a4 failure:(id)a5;
- (void)getUserWithSuccess:(id)a3 failure:(id)a4;
- (void)revokeLongSessionWithAuthenticationToken:(id)a3 completion:(id)a4;
- (void)revokeLongSessionWithAuthenticationToken:(id)a3 success:(id)a4 failure:(id)a5;
@end

@implementation ENUserStoreClient

- (void)revokeLongSessionWithAuthenticationToken:(id)a3 success:(id)a4 failure:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__ENUserStoreClient_revokeLongSessionWithAuthenticationToken_success_failure___block_invoke;
  v12[3] = &unk_278C1FC78;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(ENUserStoreClient *)self revokeLongSessionWithAuthenticationToken:a3 completion:v12];
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

- (void)authenticateToBusinessWithSuccess:(id)a3 failure:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__ENUserStoreClient_authenticateToBusinessWithSuccess_failure___block_invoke;
  v10[3] = &unk_278C1FEA8;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)getNoteStoreUrlWithSuccess:(id)a3 failure:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__ENUserStoreClient_getNoteStoreUrlWithSuccess_failure___block_invoke;
  v10[3] = &unk_278C1FDB8;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)getPremiumInfoWithSuccess:(id)a3 failure:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__ENUserStoreClient_getPremiumInfoWithSuccess_failure___block_invoke;
  v10[3] = &unk_278C1A8D8;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)getPublicUserInfoWithUsername:(id)a3 success:(id)a4 failure:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__ENUserStoreClient_getPublicUserInfoWithUsername_success_failure___block_invoke;
  v12[3] = &unk_278C1A8B0;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(ENUserStoreClient *)self fetchPublicUserInfoWithUsername:a3 completion:v12];
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

- (void)getUserWithSuccess:(id)a3 failure:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__ENUserStoreClient_getUserWithSuccess_failure___block_invoke;
  v10[3] = &unk_278C1A888;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)getBootstrapInfoWithLocale:(id)a3 success:(id)a4 failure:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__ENUserStoreClient_getBootstrapInfoWithLocale_success_failure___block_invoke;
  v12[3] = &unk_278C1A860;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(ENUserStoreClient *)self fetchBootstrapInfoWithLocale:a3 completion:v12];
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

- (void)revokeLongSessionWithAuthenticationToken:(id)a3 completion:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__ENUserStoreClient_revokeLongSessionWithAuthenticationToken_completion___block_invoke;
  v8[3] = &unk_278C21508;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(ENStoreClient *)self invokeAsyncBlock:v8 completion:a4];
}

void __73__ENUserStoreClient_revokeLongSessionWithAuthenticationToken_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  [v2 revokeLongSession:*(a1 + 40)];
}

- (void)authenticateToBusinessWithCompletion:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__ENUserStoreClient_authenticateToBusinessWithCompletion___block_invoke;
  v3[3] = &unk_278C1F8B8;
  v3[4] = self;
  [(ENStoreClient *)self invokeAsyncObjectBlock:v3 completion:a3];
}

id __58__ENUserStoreClient_authenticateToBusinessWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = [*(a1 + 32) authenticationToken];
  v4 = [v2 authenticateToBusiness:v3];

  return v4;
}

- (void)fetchNoteStoreURLWithCompletion:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__ENUserStoreClient_fetchNoteStoreURLWithCompletion___block_invoke;
  v3[3] = &unk_278C1F8B8;
  v3[4] = self;
  [(ENStoreClient *)self invokeAsyncObjectBlock:v3 completion:a3];
}

id __53__ENUserStoreClient_fetchNoteStoreURLWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = [*(a1 + 32) authenticationToken];
  v4 = [v2 getNoteStoreUrl:v3];

  return v4;
}

- (void)fetchPremiumInfoWithCompletion:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__ENUserStoreClient_fetchPremiumInfoWithCompletion___block_invoke;
  v3[3] = &unk_278C1F8B8;
  v3[4] = self;
  [(ENStoreClient *)self invokeAsyncObjectBlock:v3 completion:a3];
}

id __52__ENUserStoreClient_fetchPremiumInfoWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = [*(a1 + 32) authenticationToken];
  v4 = [v2 getPremiumInfo:v3];

  return v4;
}

- (void)fetchPublicUserInfoWithUsername:(id)a3 completion:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__ENUserStoreClient_fetchPublicUserInfoWithUsername_completion___block_invoke;
  v8[3] = &unk_278C1F930;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(ENStoreClient *)self invokeAsyncObjectBlock:v8 completion:a4];
}

id __64__ENUserStoreClient_fetchPublicUserInfoWithUsername_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = [v2 getPublicUserInfo:*(a1 + 40)];

  return v3;
}

- (void)fetchUserWithCompletion:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__ENUserStoreClient_fetchUserWithCompletion___block_invoke;
  v3[3] = &unk_278C1F8B8;
  v3[4] = self;
  [(ENStoreClient *)self invokeAsyncObjectBlock:v3 completion:a3];
}

id __45__ENUserStoreClient_fetchUserWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = [*(a1 + 32) authenticationToken];
  v4 = [v2 getUser:v3];

  return v4;
}

- (void)fetchBootstrapInfoWithLocale:(id)a3 completion:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__ENUserStoreClient_fetchBootstrapInfoWithLocale_completion___block_invoke;
  v8[3] = &unk_278C1F930;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(ENStoreClient *)self invokeAsyncObjectBlock:v8 completion:a4];
}

id __61__ENUserStoreClient_fetchBootstrapInfoWithLocale_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = [v2 getBootstrapInfo:*(a1 + 40)];

  return v3;
}

- (void)checkVersionWithClientName:(id)a3 edamVersionMajor:(signed __int16)a4 edamVersionMinor:(signed __int16)a5 completion:(id)a6
{
  v10 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __93__ENUserStoreClient_checkVersionWithClientName_edamVersionMajor_edamVersionMinor_completion___block_invoke;
  v12[3] = &unk_278C1A810;
  v12[4] = self;
  v13 = v10;
  v14 = a4;
  v15 = a5;
  v11 = v10;
  [(ENStoreClient *)self invokeAsyncBoolBlock:v12 completion:a6];
}

uint64_t __93__ENUserStoreClient_checkVersionWithClientName_edamVersionMajor_edamVersionMinor_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = [v2 checkVersion:*(a1 + 40) edamVersionMajor:*(a1 + 48) edamVersionMinor:*(a1 + 50)];

  return v3;
}

- (id)authenticateToBusiness
{
  v3 = [(ENUserStoreClient *)self client];
  v4 = [(ENUserStoreClient *)self authenticationToken];
  v5 = [v3 authenticateToBusiness:v4];

  return v5;
}

- (ENUserStoreClient)initWithUserStoreUrl:(id)a3 authenticationToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ENUserStoreClient;
  v8 = [(ENStoreClient *)&v14 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEBC0] URLWithString:v6];
    v10 = [[ENTHTTPClient alloc] initWithURL:v9];
    v11 = [[ENTBinaryProtocol alloc] initWithTransport:v10];
    v12 = [[EDAMUserStoreClient alloc] initWithProtocol:v11];
    [(ENUserStoreClient *)v8 setClient:v12];

    [(ENUserStoreClient *)v8 setAuthenticationToken:v7];
  }

  return v8;
}

+ (id)userStoreClientWithUrl:(id)a3 authenticationToken:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithUserStoreUrl:v7 authenticationToken:v6];

  return v8;
}

@end