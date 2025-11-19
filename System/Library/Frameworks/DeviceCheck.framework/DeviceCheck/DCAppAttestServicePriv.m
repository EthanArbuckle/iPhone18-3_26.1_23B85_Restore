@interface DCAppAttestServicePriv
+ (DCAppAttestServicePriv)sharedService;
- (BOOL)isSupported;
- (DCAppAttestController)appAttestController;
- (void)attestKey:(id)a3 teamIdentifier:(id)a4 clientDataHash:(id)a5 completionHandler:(id)a6;
- (void)generateAssertion:(id)a3 teamIdentifier:(id)a4 clientDataHash:(id)a5 completionHandler:(id)a6;
- (void)generateKeyWithTeamIdentifier:(id)a3 completion:(id)a4;
- (void)getPropertiesForKeyId:(id)a3 teamIdentifier:(id)a4 completionHandler:(id)a5;
- (void)sign:(id)a3 withKey:(id)a4 completionHandler:(id)a5;
- (void)sign:(id)a3 withKey:(id)a4 teamIdentifier:(id)a5 completionHandler:(id)a6;
@end

@implementation DCAppAttestServicePriv

- (DCAppAttestController)appAttestController
{
  appAttestController = self->_appAttestController;
  if (!appAttestController)
  {
    v4 = [[DCAppAttestController alloc] initWithType:1];
    v5 = self->_appAttestController;
    self->_appAttestController = v4;

    appAttestController = self->_appAttestController;
  }

  return appAttestController;
}

+ (DCAppAttestServicePriv)sharedService
{
  if (sharedService_onceToken_1 != -1)
  {
    +[DCAppAttestServicePriv sharedService];
  }

  v3 = sharedService_sharedService_1;

  return v3;
}

uint64_t __39__DCAppAttestServicePriv_sharedService__block_invoke()
{
  sharedService_sharedService_1 = objc_alloc_init(DCAppAttestServicePriv);

  return MEMORY[0x2821F96F8]();
}

- (BOOL)isSupported
{
  v2 = [(DCAppAttestServicePriv *)self appAttestController];
  v3 = [v2 isSupported];

  return v3;
}

- (void)generateKeyWithTeamIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DCAppAttestServicePriv *)self appAttestController];
  [v8 generateKeyWithTeamIdentifier:v7 completion:v6];
}

- (void)attestKey:(id)a3 teamIdentifier:(id)a4 clientDataHash:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(DCAppAttestServicePriv *)self appAttestController];
  [v14 attestKey:v13 teamIdentifier:v12 clientDataHash:v11 completionHandler:v10];
}

- (void)generateAssertion:(id)a3 teamIdentifier:(id)a4 clientDataHash:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(DCAppAttestServicePriv *)self appAttestController];
  [v14 generateAssertion:v13 teamIdentifier:v12 clientDataHash:v11 completionHandler:v10];
}

- (void)sign:(id)a3 withKey:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DCAppAttestServicePriv *)self appAttestController];
  [v11 sign:v10 withKey:v9 teamIdentifier:0 completionHandler:v8];
}

- (void)sign:(id)a3 withKey:(id)a4 teamIdentifier:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(DCAppAttestServicePriv *)self appAttestController];
  [v14 sign:v13 withKey:v12 teamIdentifier:v11 completionHandler:v10];
}

- (void)getPropertiesForKeyId:(id)a3 teamIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DCAppAttestServicePriv *)self appAttestController];
  [v11 getPropertiesForKeyId:v10 teamIdentifier:v9 completionHandler:v8];
}

@end