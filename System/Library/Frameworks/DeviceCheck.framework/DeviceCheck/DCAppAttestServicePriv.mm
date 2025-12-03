@interface DCAppAttestServicePriv
+ (DCAppAttestServicePriv)sharedService;
- (BOOL)isSupported;
- (DCAppAttestController)appAttestController;
- (void)attestKey:(id)key teamIdentifier:(id)identifier clientDataHash:(id)hash completionHandler:(id)handler;
- (void)generateAssertion:(id)assertion teamIdentifier:(id)identifier clientDataHash:(id)hash completionHandler:(id)handler;
- (void)generateKeyWithTeamIdentifier:(id)identifier completion:(id)completion;
- (void)getPropertiesForKeyId:(id)id teamIdentifier:(id)identifier completionHandler:(id)handler;
- (void)sign:(id)sign withKey:(id)key completionHandler:(id)handler;
- (void)sign:(id)sign withKey:(id)key teamIdentifier:(id)identifier completionHandler:(id)handler;
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
  appAttestController = [(DCAppAttestServicePriv *)self appAttestController];
  isSupported = [appAttestController isSupported];

  return isSupported;
}

- (void)generateKeyWithTeamIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  appAttestController = [(DCAppAttestServicePriv *)self appAttestController];
  [appAttestController generateKeyWithTeamIdentifier:identifierCopy completion:completionCopy];
}

- (void)attestKey:(id)key teamIdentifier:(id)identifier clientDataHash:(id)hash completionHandler:(id)handler
{
  handlerCopy = handler;
  hashCopy = hash;
  identifierCopy = identifier;
  keyCopy = key;
  appAttestController = [(DCAppAttestServicePriv *)self appAttestController];
  [appAttestController attestKey:keyCopy teamIdentifier:identifierCopy clientDataHash:hashCopy completionHandler:handlerCopy];
}

- (void)generateAssertion:(id)assertion teamIdentifier:(id)identifier clientDataHash:(id)hash completionHandler:(id)handler
{
  handlerCopy = handler;
  hashCopy = hash;
  identifierCopy = identifier;
  assertionCopy = assertion;
  appAttestController = [(DCAppAttestServicePriv *)self appAttestController];
  [appAttestController generateAssertion:assertionCopy teamIdentifier:identifierCopy clientDataHash:hashCopy completionHandler:handlerCopy];
}

- (void)sign:(id)sign withKey:(id)key completionHandler:(id)handler
{
  handlerCopy = handler;
  keyCopy = key;
  signCopy = sign;
  appAttestController = [(DCAppAttestServicePriv *)self appAttestController];
  [appAttestController sign:signCopy withKey:keyCopy teamIdentifier:0 completionHandler:handlerCopy];
}

- (void)sign:(id)sign withKey:(id)key teamIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  keyCopy = key;
  signCopy = sign;
  appAttestController = [(DCAppAttestServicePriv *)self appAttestController];
  [appAttestController sign:signCopy withKey:keyCopy teamIdentifier:identifierCopy completionHandler:handlerCopy];
}

- (void)getPropertiesForKeyId:(id)id teamIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  idCopy = id;
  appAttestController = [(DCAppAttestServicePriv *)self appAttestController];
  [appAttestController getPropertiesForKeyId:idCopy teamIdentifier:identifierCopy completionHandler:handlerCopy];
}

@end