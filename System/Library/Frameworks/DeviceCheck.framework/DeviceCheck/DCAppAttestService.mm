@interface DCAppAttestService
+ (DCAppAttestService)sharedService;
- (BOOL)isSupported;
- (DCAppAttestController)appAttestController;
- (void)attestKey:(NSString *)keyId clientDataHash:(NSData *)clientDataHash completionHandler:(void *)completionHandler;
- (void)generateAssertion:(NSString *)keyId clientDataHash:(NSData *)clientDataHash completionHandler:(void *)completionHandler;
- (void)generateKeyWithCompletionHandler:(void *)completionHandler;
@end

@implementation DCAppAttestService

uint64_t __35__DCAppAttestService_sharedService__block_invoke()
{
  sharedService_sharedService = objc_alloc_init(DCAppAttestService);

  return MEMORY[0x2821F96F8]();
}

+ (DCAppAttestService)sharedService
{
  if (sharedService_onceToken != -1)
  {
    +[DCAppAttestService sharedService];
  }

  v3 = sharedService_sharedService;

  return v3;
}

- (BOOL)isSupported
{
  v2 = [(DCAppAttestService *)self appAttestController];
  v3 = [v2 isSupported];

  return v3;
}

- (DCAppAttestController)appAttestController
{
  appAttestController = self->_appAttestController;
  if (!appAttestController)
  {
    v4 = [[DCAppAttestController alloc] initWithType:0];
    v5 = self->_appAttestController;
    self->_appAttestController = v4;

    appAttestController = self->_appAttestController;
  }

  return appAttestController;
}

- (void)generateKeyWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v5 = [(DCAppAttestService *)self appAttestController];
  [v5 generateKeyWithTeamIdentifier:0 completion:v4];
}

- (void)attestKey:(NSString *)keyId clientDataHash:(NSData *)clientDataHash completionHandler:(void *)completionHandler
{
  v8 = completionHandler;
  v9 = clientDataHash;
  v10 = keyId;
  v11 = [(DCAppAttestService *)self appAttestController];
  [v11 attestKey:v10 teamIdentifier:0 clientDataHash:v9 completionHandler:v8];
}

- (void)generateAssertion:(NSString *)keyId clientDataHash:(NSData *)clientDataHash completionHandler:(void *)completionHandler
{
  v8 = completionHandler;
  v9 = clientDataHash;
  v10 = keyId;
  v11 = [(DCAppAttestService *)self appAttestController];
  [v11 generateAssertion:v10 teamIdentifier:0 clientDataHash:v9 completionHandler:v8];
}

@end