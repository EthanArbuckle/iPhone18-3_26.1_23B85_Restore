@interface SecExternalPreSharedKey
- (SecExternalPreSharedKey)initWithExternalIdentity:(id)identity :(id)a4 :(id)a5;
@end

@implementation SecExternalPreSharedKey

- (SecExternalPreSharedKey)initWithExternalIdentity:(id)identity :(id)a4 :(id)a5
{
  identityCopy = identity;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SecExternalPreSharedKey;
  v11 = [(SecExternalPreSharedKey *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(SecExternalPreSharedKey *)v11 setExternal_identity:identityCopy];
    [(SecExternalPreSharedKey *)v12 setEpsk:v9];
    [(SecExternalPreSharedKey *)v12 setContext:v10];
  }

  return v12;
}

@end