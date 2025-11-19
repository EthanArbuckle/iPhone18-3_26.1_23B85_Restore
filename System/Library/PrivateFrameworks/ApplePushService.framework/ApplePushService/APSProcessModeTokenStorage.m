@interface APSProcessModeTokenStorage
- (APSProcessModeTokenStorage)initWithUser:(id)a3;
- (id)_tokenStoreForEnvironment:(id)a3;
- (id)tokenInfoForEnvironment:(id)a3;
- (void)setTokenInfo:(id)a3 forEnvironment:(id)a4;
@end

@implementation APSProcessModeTokenStorage

- (APSProcessModeTokenStorage)initWithUser:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = APSProcessModeTokenStorage;
  v5 = [(APSProcessModeTokenStorage *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    tokenStoreByEnvironmentDomain = v5->_tokenStoreByEnvironmentDomain;
    v5->_tokenStoreByEnvironmentDomain = v6;

    v5->_user = v4;
  }

  return v5;
}

- (id)_tokenStoreForEnvironment:(id)a3
{
  v4 = a3;
  tokenStoreByEnvironmentDomain = self->_tokenStoreByEnvironmentDomain;
  v6 = [v4 domain];
  v7 = [(NSMutableDictionary *)tokenStoreByEnvironmentDomain objectForKey:v6];

  if (!v7)
  {
    v7 = [[APSTokenStore alloc] initWithEnvironment:v4 allowInMemoryCache:0];
    v8 = self->_tokenStoreByEnvironmentDomain;
    v9 = [v4 domain];
    [(NSMutableDictionary *)v8 setObject:v7 forKey:v9];
  }

  return v7;
}

- (id)tokenInfoForEnvironment:(id)a3
{
  v4 = [(APSProcessModeTokenStorage *)self _tokenStoreForEnvironment:a3];
  v5 = [v4 systemTokenInfoForUser:self->_user];

  return v5;
}

- (void)setTokenInfo:(id)a3 forEnvironment:(id)a4
{
  v6 = a3;
  v7 = [(APSProcessModeTokenStorage *)self _tokenStoreForEnvironment:a4];
  [v7 setSystemTokenInfo:v6 forUser:self->_user];
}

@end