@interface ASAuthorizationSingleSignOnRequest
- (ASAuthorizationSingleSignOnRequest)initWithProvider:(id)a3;
- (BOOL)isUserInterfaceEnabled;
- (BOOL)supportsStyle:(int64_t)a3;
- (NSArray)authorizationOptions;
- (void)setAuthorizationOptions:(NSArray *)authorizationOptions;
- (void)setUserInterfaceEnabled:(BOOL)userInterfaceEnabled;
@end

@implementation ASAuthorizationSingleSignOnRequest

- (ASAuthorizationSingleSignOnRequest)initWithProvider:(id)a3
{
  v7.receiver = self;
  v7.super_class = ASAuthorizationSingleSignOnRequest;
  v3 = [(ASAuthorizationRequest *)&v7 initWithProvider:a3];
  v4 = v3;
  if (v3)
  {
    v3->_userInterfaceEnabled = 1;
    v3->_internalLock._os_unfair_lock_opaque = 0;
    v5 = v3;
  }

  return v4;
}

- (BOOL)supportsStyle:(int64_t)a3
{
  if (a3 < 3)
  {
    return 1u >> (a3 & 7);
  }

  else
  {
    return 0;
  }
}

- (NSArray)authorizationOptions
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_authorizationOptions;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setAuthorizationOptions:(NSArray *)authorizationOptions
{
  v4 = authorizationOptions;
  os_unfair_lock_lock(&self->_internalLock);
  v5 = self->_authorizationOptions;
  self->_authorizationOptions = v4;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (BOOL)isUserInterfaceEnabled
{
  os_unfair_lock_lock(&self->_internalLock);
  userInterfaceEnabled = self->_userInterfaceEnabled;
  os_unfair_lock_unlock(&self->_internalLock);
  return userInterfaceEnabled;
}

- (void)setUserInterfaceEnabled:(BOOL)userInterfaceEnabled
{
  os_unfair_lock_lock(&self->_internalLock);
  self->_userInterfaceEnabled = userInterfaceEnabled;

  os_unfair_lock_unlock(&self->_internalLock);
}

@end