@interface ASAuthorizationAppleIDCredential
- (ASAuthorizationAppleIDCredential)init;
- (ASAuthorizationAppleIDCredential)initWithCoder:(id)a3;
- (ASAuthorizationAppleIDCredential)initWithUser:(id)a3 authorizedScopes:(id)a4;
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
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)userAgeRange;
- (void)encodeWithCoder:(id)a3;
- (void)setAccessToken:(id)a3;
- (void)setAuthorizationCode:(id)a3;
- (void)setAuthorizedScopes:(id)a3;
- (void)setEmail:(id)a3;
- (void)setFullName:(id)a3;
- (void)setIdentityToken:(id)a3;
- (void)setRealUserStatus:(int64_t)a3;
- (void)setRefreshToken:(id)a3;
- (void)setState:(id)a3;
- (void)setUser:(id)a3;
- (void)setUserAgeRange:(int64_t)a3;
@end

@implementation ASAuthorizationAppleIDCredential

- (ASAuthorizationAppleIDCredential)init
{
  [(ASAuthorizationAppleIDCredential *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ASAuthorizationAppleIDCredential)initWithUser:(id)a3 authorizedScopes:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
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
    v11 = [v7 copy];
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

- (id)copyWithZone:(_NSZone *)a3
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

- (void)encodeWithCoder:(id)a3
{
  user = self->_user;
  v5 = a3;
  [v5 encodeObject:user forKey:@"_user"];
  [v5 encodeObject:self->_state forKey:@"_state"];
  [v5 encodeObject:self->_authorizedScopes forKey:@"_authorizedScopes"];
  [v5 encodeObject:self->_authorizationCode forKey:@"_authorizationCode"];
  [v5 encodeObject:self->_identityToken forKey:@"_identityToken"];
  [v5 encodeObject:self->_email forKey:@"_email"];
  [v5 encodeObject:self->_fullName forKey:@"_fullName"];
  [v5 encodeInteger:self->_realUserStatus forKey:@"_realUserStatus"];
  [v5 encodeInteger:self->_userAgeRange forKey:@"_userAgeRange"];
}

- (ASAuthorizationAppleIDCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = ASAuthorizationAppleIDCredential;
  v5 = [(ASAuthorizationAppleIDCredential *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_user"];
    user = v5->_user;
    v5->_user = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_state"];
    state = v5->_state;
    v5->_state = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"_authorizedScopes"];
    authorizedScopes = v5->_authorizedScopes;
    v5->_authorizedScopes = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_authorizationCode"];
    authorizationCode = v5->_authorizationCode;
    v5->_authorizationCode = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identityToken"];
    identityToken = v5->_identityToken;
    v5->_identityToken = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_email"];
    email = v5->_email;
    v5->_email = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_fullName"];
    fullName = v5->_fullName;
    v5->_fullName = v21;

    v5->_realUserStatus = [v4 decodeIntegerForKey:@"_realUserStatus"];
    v5->_userAgeRange = [v4 decodeIntegerForKey:@"_userAgeRange"];
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

- (void)setUser:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_internalLock);
  user = self->_user;
  self->_user = v4;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (NSString)state
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_state;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setState:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_internalLock);
  state = self->_state;
  self->_state = v4;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (NSArray)authorizedScopes
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_authorizedScopes;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setAuthorizedScopes:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_internalLock);
  authorizedScopes = self->_authorizedScopes;
  self->_authorizedScopes = v4;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (NSData)authorizationCode
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_authorizationCode;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setAuthorizationCode:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_internalLock);
  authorizationCode = self->_authorizationCode;
  self->_authorizationCode = v4;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (NSData)identityToken
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_identityToken;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setIdentityToken:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_internalLock);
  identityToken = self->_identityToken;
  self->_identityToken = v4;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (NSString)email
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_email;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setEmail:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_internalLock);
  email = self->_email;
  self->_email = v4;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (NSPersonNameComponents)fullName
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_fullName;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setFullName:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_internalLock);
  fullName = self->_fullName;
  self->_fullName = v4;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (NSData)accessToken
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_accessToken;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setAccessToken:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_internalLock);
  accessToken = self->_accessToken;
  self->_accessToken = v4;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (NSData)refreshToken
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_refreshToken;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setRefreshToken:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_internalLock);
  refreshToken = self->_refreshToken;
  self->_refreshToken = v4;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (ASUserDetectionStatus)realUserStatus
{
  os_unfair_lock_lock(&self->_internalLock);
  realUserStatus = self->_realUserStatus;
  os_unfair_lock_unlock(&self->_internalLock);
  return realUserStatus;
}

- (void)setRealUserStatus:(int64_t)a3
{
  os_unfair_lock_lock(&self->_internalLock);
  self->_realUserStatus = a3;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (int64_t)userAgeRange
{
  os_unfair_lock_lock(&self->_internalLock);
  userAgeRange = self->_userAgeRange;
  os_unfair_lock_unlock(&self->_internalLock);
  return userAgeRange;
}

- (void)setUserAgeRange:(int64_t)a3
{
  os_unfair_lock_lock(&self->_internalLock);
  self->_userAgeRange = a3;

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