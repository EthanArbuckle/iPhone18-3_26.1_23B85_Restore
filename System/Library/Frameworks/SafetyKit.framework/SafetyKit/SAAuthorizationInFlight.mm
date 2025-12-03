@interface SAAuthorizationInFlight
+ (id)sharedInstance;
- (NSString)getFromBundleLocalizedName;
- (NSString)getToBundleLocalizedName;
- (id)description;
- (void)getFromBundleLocalizedNameWithCompletion:(id)completion;
- (void)getToBundleLocalizedName;
- (void)reset;
@end

@implementation SAAuthorizationInFlight

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SAAuthorizationInFlight_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1, block);
  }

  v2 = sharedInstance_sSAServerAuthorizationInFlight;

  return v2;
}

uint64_t __41__SAAuthorizationInFlight_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_sSAServerAuthorizationInFlight = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (NSString)getToBundleLocalizedName
{
  if (self->_toBundleId)
  {
    v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:?];
    if (!v2)
    {
      v3 = sa_default_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [(SAAuthorizationInFlight *)v3 getToBundleLocalizedName:v4];
      }
    }

    v11 = [v2 objectForInfoDictionaryKey:@"CFBundleName"];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)getFromBundleLocalizedName
{
  fromApp = [(SAAuthorizationInFlight *)self fromApp];
  getLocalizedName = [fromApp getLocalizedName];

  return getLocalizedName;
}

- (void)getFromBundleLocalizedNameWithCompletion:(id)completion
{
  completionCopy = completion;
  fromApp = [(SAAuthorizationInFlight *)self fromApp];
  getLocalizedName = [fromApp getLocalizedName];

  if (getLocalizedName)
  {
    v6 = completionCopy[2];
LABEL_3:
    v6();
    goto LABEL_6;
  }

  fromApp = self->_fromApp;
  if (!fromApp)
  {
    v6 = completionCopy[2];
    goto LABEL_3;
  }

  [(SABundleManagerApp *)fromApp getLocalizedNameForPairedDeviceWithCompletion:completionCopy];
LABEL_6:
}

- (void)reset
{
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  fromApp = self->_fromApp;
  self->_fromApp = 0;

  toBundleId = self->_toBundleId;
  self->_toBundleId = 0;

  self->_inFlight = 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  isInFlight = [(SAAuthorizationInFlight *)self isInFlight];
  fromApp = [(SAAuthorizationInFlight *)self fromApp];
  bundleId = [fromApp bundleId];
  getFromBundleLocalizedName = [(SAAuthorizationInFlight *)self getFromBundleLocalizedName];
  toBundleId = [(SAAuthorizationInFlight *)self toBundleId];
  getToBundleLocalizedName = [(SAAuthorizationInFlight *)self getToBundleLocalizedName];
  v10 = [v3 stringWithFormat:@"Authorization, isInFlight: %d, from: %@ (%@), to: %@ (%@)", isInFlight, bundleId, getFromBundleLocalizedName, toBundleId, getToBundleLocalizedName];

  return v10;
}

- (void)getToBundleLocalizedName
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0(&dword_23AA4D000, self, a3, "Unable to get Bundle for app requesting authorization: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end