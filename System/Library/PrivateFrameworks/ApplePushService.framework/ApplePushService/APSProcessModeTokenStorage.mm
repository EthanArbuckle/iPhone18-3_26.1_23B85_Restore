@interface APSProcessModeTokenStorage
- (APSProcessModeTokenStorage)initWithUser:(id)user;
- (id)_tokenStoreForEnvironment:(id)environment;
- (id)tokenInfoForEnvironment:(id)environment;
- (void)setTokenInfo:(id)info forEnvironment:(id)environment;
@end

@implementation APSProcessModeTokenStorage

- (APSProcessModeTokenStorage)initWithUser:(id)user
{
  userCopy = user;
  v9.receiver = self;
  v9.super_class = APSProcessModeTokenStorage;
  v5 = [(APSProcessModeTokenStorage *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    tokenStoreByEnvironmentDomain = v5->_tokenStoreByEnvironmentDomain;
    v5->_tokenStoreByEnvironmentDomain = v6;

    v5->_user = userCopy;
  }

  return v5;
}

- (id)_tokenStoreForEnvironment:(id)environment
{
  environmentCopy = environment;
  tokenStoreByEnvironmentDomain = self->_tokenStoreByEnvironmentDomain;
  domain = [environmentCopy domain];
  v7 = [(NSMutableDictionary *)tokenStoreByEnvironmentDomain objectForKey:domain];

  if (!v7)
  {
    v7 = [[APSTokenStore alloc] initWithEnvironment:environmentCopy allowInMemoryCache:0];
    v8 = self->_tokenStoreByEnvironmentDomain;
    domain2 = [environmentCopy domain];
    [(NSMutableDictionary *)v8 setObject:v7 forKey:domain2];
  }

  return v7;
}

- (id)tokenInfoForEnvironment:(id)environment
{
  v4 = [(APSProcessModeTokenStorage *)self _tokenStoreForEnvironment:environment];
  v5 = [v4 systemTokenInfoForUser:self->_user];

  return v5;
}

- (void)setTokenInfo:(id)info forEnvironment:(id)environment
{
  infoCopy = info;
  v7 = [(APSProcessModeTokenStorage *)self _tokenStoreForEnvironment:environment];
  [v7 setSystemTokenInfo:infoCopy forUser:self->_user];
}

@end