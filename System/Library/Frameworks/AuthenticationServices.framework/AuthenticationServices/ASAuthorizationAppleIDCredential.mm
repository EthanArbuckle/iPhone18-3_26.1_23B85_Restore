@interface ASAuthorizationAppleIDCredential
- (ASAuthorizationAppleIDCredential)init;
- (ASAuthorizationAppleIDCredential)initWithCoder:(id)coder;
- (ASAuthorizationAppleIDCredential)initWithUser:(id)user authorizedScopes:(id)scopes;
- (ASUserDetectionStatus)realUserStatus;
- (NSArray)authorizedScopes;
- (NSData)accessToken;
- (NSData)authorizationCode;
- (NSData)identityToken;
- (NSData)refreshToken;
- (NSPersonNameComponents)fullName;
- (NSString)description;
- (NSString)email;
- (NSString)state;
- (NSString)user;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)userAgeRange;
- (void)encodeWithCoder:(id)coder;
- (void)setAccessToken:(id)token;
- (void)setAuthorizationCode:(id)code;
- (void)setAuthorizedScopes:(id)scopes;
- (void)setEmail:(id)email;
- (void)setFullName:(id)name;
- (void)setIdentityToken:(id)token;
- (void)setRealUserStatus:(int64_t)status;
- (void)setRefreshToken:(id)token;
- (void)setState:(id)state;
- (void)setUser:(id)user;
- (void)setUserAgeRange:(int64_t)range;
@end

@implementation ASAuthorizationAppleIDCredential

- (ASAuthorizationAppleIDCredential)init
{
  [(ASAuthorizationAppleIDCredential *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ASAuthorizationAppleIDCredential)initWithUser:(id)user authorizedScopes:(id)scopes
{
  userCopy = user;
  scopesCopy = scopes;
  v9 = scopesCopy;
  if (userCopy)
  {
    if (scopesCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [ASAuthorizationAppleIDCredential initWithUser:a2 authorizedScopes:self];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [ASAuthorizationAppleIDCredential initWithUser:a2 authorizedScopes:self];
LABEL_3:
  v16.receiver = self;
  v16.super_class = ASAuthorizationAppleIDCredential;
  v10 = [(ASAuthorizationAppleIDCredential *)&v16 init];
  if (v10)
  {
    v11 = [userCopy copy];
    user = v10->_user;
    v10->_user = v11;

    v13 = [v9 copy];
    authorizedScopes = v10->_authorizedScopes;
    v10->_authorizedScopes = v13;

    v10->_internalLock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p { userIdentifier: %@, authorizedScopes: %@ }>", v5, self, self->_user, self->_authorizedScopes];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[ASAuthorizationAppleIDCredential alloc] initWithUser:self->_user authorizedScopes:self->_authorizedScopes];
  [(ASAuthorizationAppleIDCredential *)v4 setState:self->_state];
  [(ASAuthorizationAppleIDCredential *)v4 setAuthorizationCode:self->_authorizationCode];
  [(ASAuthorizationAppleIDCredential *)v4 setIdentityToken:self->_identityToken];
  [(ASAuthorizationAppleIDCredential *)v4 setEmail:self->_email];
  [(ASAuthorizationAppleIDCredential *)v4 setFullName:self->_fullName];
  [(ASAuthorizationAppleIDCredential *)v4 setRealUserStatus:self->_realUserStatus];
  [(ASAuthorizationAppleIDCredential *)v4 setUserAgeRange:self->_userAgeRange];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  user = self->_user;
  coderCopy = coder;
  [coderCopy encodeObject:user forKey:@"_user"];
  [coderCopy encodeObject:self->_state forKey:@"_state"];
  [coderCopy encodeObject:self->_authorizedScopes forKey:@"_authorizedScopes"];
  [coderCopy encodeObject:self->_authorizationCode forKey:@"_authorizationCode"];
  [coderCopy encodeObject:self->_identityToken forKey:@"_identityToken"];
  [coderCopy encodeObject:self->_email forKey:@"_email"];
  [coderCopy encodeObject:self->_fullName forKey:@"_fullName"];
  [coderCopy encodeInteger:self->_realUserStatus forKey:@"_realUserStatus"];
  [coderCopy encodeInteger:self->_userAgeRange forKey:@"_userAgeRange"];
}

- (ASAuthorizationAppleIDCredential)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = ASAuthorizationAppleIDCredential;
  v5 = [(ASAuthorizationAppleIDCredential *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_user"];
    user = v5->_user;
    v5->_user = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_state"];
    state = v5->_state;
    v5->_state = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"_authorizedScopes"];
    authorizedScopes = v5->_authorizedScopes;
    v5->_authorizedScopes = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_authorizationCode"];
    authorizationCode = v5->_authorizationCode;
    v5->_authorizationCode = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identityToken"];
    identityToken = v5->_identityToken;
    v5->_identityToken = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_email"];
    email = v5->_email;
    v5->_email = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_fullName"];
    fullName = v5->_fullName;
    v5->_fullName = v21;

    v5->_realUserStatus = [coderCopy decodeIntegerForKey:@"_realUserStatus"];
    v5->_userAgeRange = [coderCopy decodeIntegerForKey:@"_userAgeRange"];
    v23 = v5;
  }

  return v5;
}

- (NSString)user
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_user;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setUser:(id)user
{
  userCopy = user;
  os_unfair_lock_lock(&self->_internalLock);
  user = self->_user;
  self->_user = userCopy;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (NSString)state
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_state;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setState:(id)state
{
  stateCopy = state;
  os_unfair_lock_lock(&self->_internalLock);
  state = self->_state;
  self->_state = stateCopy;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (NSArray)authorizedScopes
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_authorizedScopes;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setAuthorizedScopes:(id)scopes
{
  scopesCopy = scopes;
  os_unfair_lock_lock(&self->_internalLock);
  authorizedScopes = self->_authorizedScopes;
  self->_authorizedScopes = scopesCopy;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (NSData)authorizationCode
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_authorizationCode;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setAuthorizationCode:(id)code
{
  codeCopy = code;
  os_unfair_lock_lock(&self->_internalLock);
  authorizationCode = self->_authorizationCode;
  self->_authorizationCode = codeCopy;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (NSData)identityToken
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_identityToken;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setIdentityToken:(id)token
{
  tokenCopy = token;
  os_unfair_lock_lock(&self->_internalLock);
  identityToken = self->_identityToken;
  self->_identityToken = tokenCopy;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (NSString)email
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_email;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setEmail:(id)email
{
  emailCopy = email;
  os_unfair_lock_lock(&self->_internalLock);
  email = self->_email;
  self->_email = emailCopy;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (NSPersonNameComponents)fullName
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_fullName;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setFullName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock(&self->_internalLock);
  fullName = self->_fullName;
  self->_fullName = nameCopy;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (NSData)accessToken
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_accessToken;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setAccessToken:(id)token
{
  tokenCopy = token;
  os_unfair_lock_lock(&self->_internalLock);
  accessToken = self->_accessToken;
  self->_accessToken = tokenCopy;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (NSData)refreshToken
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_refreshToken;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setRefreshToken:(id)token
{
  tokenCopy = token;
  os_unfair_lock_lock(&self->_internalLock);
  refreshToken = self->_refreshToken;
  self->_refreshToken = tokenCopy;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (ASUserDetectionStatus)realUserStatus
{
  os_unfair_lock_lock(&self->_internalLock);
  realUserStatus = self->_realUserStatus;
  os_unfair_lock_unlock(&self->_internalLock);
  return realUserStatus;
}

- (void)setRealUserStatus:(int64_t)status
{
  os_unfair_lock_lock(&self->_internalLock);
  self->_realUserStatus = status;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (int64_t)userAgeRange
{
  os_unfair_lock_lock(&self->_internalLock);
  userAgeRange = self->_userAgeRange;
  os_unfair_lock_unlock(&self->_internalLock);
  return userAgeRange;
}

- (void)setUserAgeRange:(int64_t)range
{
  os_unfair_lock_lock(&self->_internalLock);
  self->_userAgeRange = range;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (void)initWithUser:(uint64_t)a1 authorizedScopes:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASAuthorizationAppleIDCredential.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"user"}];
}

- (void)initWithUser:(uint64_t)a1 authorizedScopes:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASAuthorizationAppleIDCredential.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"authorizedScopes"}];
}

@end