@interface ASAuthorizationOpenIDRequest
- (ASAuthorizationOpenIDOperation)requestedOperation;
- (ASAuthorizationOpenIDRequest)init;
- (BOOL)supportsStyle:(int64_t)style;
- (NSArray)requestedScopes;
- (NSString)nonce;
- (NSString)state;
- (void)setNonce:(NSString *)nonce;
- (void)setRequestedOperation:(ASAuthorizationOpenIDOperation)requestedOperation;
- (void)setRequestedScopes:(NSArray *)requestedScopes;
- (void)setState:(NSString *)state;
@end

@implementation ASAuthorizationOpenIDRequest

- (ASAuthorizationOpenIDRequest)init
{
  v6.receiver = self;
  v6.super_class = ASAuthorizationOpenIDRequest;
  v2 = [(ASAuthorizationRequest *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_internalLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (BOOL)supportsStyle:(int64_t)style
{
  if (style < 3)
  {
    return 1u >> (style & 7);
  }

  else
  {
    return 0;
  }
}

- (NSArray)requestedScopes
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_requestedScopes;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setRequestedScopes:(NSArray *)requestedScopes
{
  v4 = requestedScopes;
  os_unfair_lock_lock(&self->_internalLock);
  v5 = self->_requestedScopes;
  self->_requestedScopes = v4;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (NSString)state
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_state;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setState:(NSString *)state
{
  v4 = state;
  os_unfair_lock_lock(&self->_internalLock);
  v5 = self->_state;
  self->_state = v4;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (NSString)nonce
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_nonce;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setNonce:(NSString *)nonce
{
  v4 = nonce;
  os_unfair_lock_lock(&self->_internalLock);
  v5 = self->_nonce;
  self->_nonce = v4;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (ASAuthorizationOpenIDOperation)requestedOperation
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_requestedOperation;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setRequestedOperation:(ASAuthorizationOpenIDOperation)requestedOperation
{
  v4 = requestedOperation;
  os_unfair_lock_lock(&self->_internalLock);
  v5 = self->_requestedOperation;
  self->_requestedOperation = v4;

  os_unfair_lock_unlock(&self->_internalLock);
}

@end