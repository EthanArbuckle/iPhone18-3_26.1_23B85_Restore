@interface MPMediaLibraryPrivacyContext
+ (id)contextForDefaultClient;
+ (id)sharedContextForCurrentProcess;
+ (void)initialize;
+ (void)setDefaultClientWithAuditToken:(id *)token;
- (MPMediaLibraryPrivacyContext)initWithAuditToken:(id *)token;
- (MPMediaLibraryPrivacyContext)initWithClientIdentity:(id)identity;
- (MPMediaLibraryPrivacyContext)initWithPAApplication:(id)application;
- (void)beginAccessInterval;
- (void)endAccessInterval;
- (void)logPrivacyAccess;
@end

@implementation MPMediaLibraryPrivacyContext

void __42__MPMediaLibraryPrivacyContext_initialize__block_invoke()
{
  v0 = MEMORY[0x1E69C5A40];
  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v4 bundleIdentifier];
  v2 = [v0 applicationWithBundleID:v1];
  v3 = __defaultApplication;
  __defaultApplication = v2;
}

+ (void)initialize
{
  if (initialize_onceToken_19186 != -1)
  {
    dispatch_once(&initialize_onceToken_19186, &__block_literal_global_19187);
  }
}

+ (id)contextForDefaultClient
{
  os_unfair_lock_lock(&__defaultLock);
  v2 = __defaultApplication;
  os_unfair_lock_unlock(&__defaultLock);
  v3 = [[MPMediaLibraryPrivacyContext alloc] initWithPAApplication:v2];

  return v3;
}

- (void)endAccessInterval
{
  [(PAAccessInterval *)self->_privacyAccessInterval end];
  gtLogger = self->_gtLogger;

  [(MPGreenTeaLoggerWrapper *)gtLogger endLogAccessInterval];
}

- (void)beginAccessInterval
{
  v6 = [MEMORY[0x1E69C5A58] accessWithAccessor:self->_clientApplication forService:*MEMORY[0x1E69D5580]];
  mEMORY[0x1E69C5A38] = [MEMORY[0x1E69C5A38] sharedInstance];
  v4 = [mEMORY[0x1E69C5A38] beginIntervalForAccess:v6];
  privacyAccessInterval = self->_privacyAccessInterval;
  self->_privacyAccessInterval = v4;

  [(MPGreenTeaLoggerWrapper *)self->_gtLogger beginLogAccessInterval];
}

- (void)logPrivacyAccess
{
  [(MPGreenTeaLoggerWrapper *)self->_gtLogger logAccess];
  mEMORY[0x1E69C5A38] = [MEMORY[0x1E69C5A38] sharedInstance];
  if ([mEMORY[0x1E69C5A38] loggingEnabled])
  {
    v3 = [MEMORY[0x1E69C5A58] accessWithAccessor:self->_clientApplication forService:*MEMORY[0x1E69D5580]];
    [mEMORY[0x1E69C5A38] log:v3];
  }
}

- (MPMediaLibraryPrivacyContext)initWithPAApplication:(id)application
{
  applicationCopy = application;
  v17.receiver = self;
  v17.super_class = MPMediaLibraryPrivacyContext;
  v5 = [(MPMediaLibraryPrivacyContext *)&v17 init];
  if (v5)
  {
    if (applicationCopy)
    {
      v6 = applicationCopy;
      clientApplication = v5->_clientApplication;
      v5->_clientApplication = v6;
    }

    else
    {
      v8 = MEMORY[0x1E69C5A40];
      clientApplication = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [clientApplication bundleIdentifier];
      v10 = [v8 applicationWithBundleID:bundleIdentifier];
      v11 = v5->_clientApplication;
      v5->_clientApplication = v10;
    }

    v12 = [MPGreenTeaLoggerWrapper alloc];
    bundleID = [(PAApplication *)v5->_clientApplication bundleID];
    v14 = [(MPGreenTeaLoggerWrapper *)v12 initWithAccessorName:bundleID];
    gtLogger = v5->_gtLogger;
    v5->_gtLogger = v14;
  }

  return v5;
}

- (MPMediaLibraryPrivacyContext)initWithAuditToken:(id *)token
{
  v5 = objc_alloc(MEMORY[0x1E69C5A40]);
  v6 = *&token->var0[4];
  v10[0] = *token->var0;
  v10[1] = v6;
  v7 = [v5 initWithAuditToken:v10];
  v8 = [(MPMediaLibraryPrivacyContext *)self initWithPAApplication:v7];

  return v8;
}

- (MPMediaLibraryPrivacyContext)initWithClientIdentity:(id)identity
{
  if (identity)
  {
    v4 = MEMORY[0x1E69C5A40];
    identityCopy = identity;
    v6 = [[v4 alloc] initWithTCCIdentity:identityCopy];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(MPMediaLibraryPrivacyContext *)self initWithPAApplication:v6];

  return v7;
}

+ (void)setDefaultClientWithAuditToken:(id *)token
{
  os_unfair_lock_lock(&__defaultLock);
  v4 = objc_alloc(MEMORY[0x1E69C5A40]);
  v5 = *&token->var0[4];
  v8[0] = *token->var0;
  v8[1] = v5;
  v6 = [v4 initWithAuditToken:v8];
  v7 = __defaultApplication;
  __defaultApplication = v6;

  os_unfair_lock_unlock(&__defaultLock);
}

+ (id)sharedContextForCurrentProcess
{
  if (sharedContextForCurrentProcess_onceToken != -1)
  {
    dispatch_once(&sharedContextForCurrentProcess_onceToken, &__block_literal_global_19);
  }

  v3 = sharedContextForCurrentProcess___contextForCurrentProcess;

  return v3;
}

void __62__MPMediaLibraryPrivacyContext_sharedContextForCurrentProcess__block_invoke()
{
  v0 = MEMORY[0x1E69C5A40];
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v2 = [v1 bundleIdentifier];
  v5 = [v0 applicationWithBundleID:v2];

  v3 = [[MPMediaLibraryPrivacyContext alloc] initWithPAApplication:v5];
  v4 = sharedContextForCurrentProcess___contextForCurrentProcess;
  sharedContextForCurrentProcess___contextForCurrentProcess = v3;
}

@end