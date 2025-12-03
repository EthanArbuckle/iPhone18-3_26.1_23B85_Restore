@interface HDFHIRCredential
+ (BOOL)_validateCodableCredential:(id)credential forSync:(BOOL)sync error:(id *)error;
+ (id)credentialFromCodable:(id)codable accountSyncIdentifier:(id *)identifier ifValidWithError:(id *)error;
+ (id)newCompatibleCodableCredential;
- (BOOL)deleteTokensWithError:(id *)error;
- (BOOL)hasRefreshTokenWithError:(id *)error;
- (BOOL)isEqualToCredential:(id)credential epsilonExpiration:(double)expiration;
- (BOOL)makeRefreshTokenSynchronizableIfNeededWithError:(id *)error;
- (BOOL)storeAccessToken:(id)token error:(id *)error;
- (BOOL)storeRefreshToken:(id)token error:(id *)error;
- (HDFHIRCredential)credentialWithPopulatedAccessTokenWithError:(id *)error;
- (HDFHIRCredential)initWithCodableCredential:(id)credential;
- (HDFHIRCredential)initWithCoder:(id)coder;
- (HDFHIRCredential)initWithIdentifier:(id)identifier requestedScopeString:(id)string expiration:(id)expiration scopeString:(id)scopeString patientID:(id)d;
- (id)_accessTokenIdentifier;
- (id)_keychainItemWithName:(id)name;
- (id)_refreshTokenIdentifier;
- (id)accessToken;
- (id)asNewCodableForAccountSyncIdentifier:(id)identifier receivedDate:(id)date;
- (id)fetchAccessTokenWithError:(id *)error;
- (id)fetchRefreshTokenWithError:(id *)error;
- (id)refreshToken;
- (unint64_t)hash;
- (void)_commonInitWithIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDFHIRCredential

- (HDFHIRCredential)credentialWithPopulatedAccessTokenWithError:(id *)error
{
  v36 = 0;
  v5 = [(HDFHIRCredential *)self fetchAccessTokenWithError:&v36];
  v6 = v36;
  v35 = 0;
  v7 = [(HDFHIRCredential *)self fetchRefreshTokenWithError:&v35];
  v8 = v35;
  v9 = v8;
  if (!(v5 | v7))
  {
    _HKInitializeLogging();
    v10 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      v32 = v10;
      v33 = [(HDFHIRCredential *)self debugDescription];
      *buf = 138543874;
      v38 = v33;
      v39 = 2114;
      v40 = v6;
      v41 = 2114;
      v42 = v9;
      _os_log_error_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%{public}@ failed to retrieve tokens from keychain - access token: %{public}@ - refresh token: %{public}@", buf, 0x20u);

      if (v6)
      {
        goto LABEL_4;
      }
    }

    else if (v6)
    {
LABEL_4:
      userInfo = [v6 userInfo];
      if (userInfo)
      {
        userInfo2 = [v6 userInfo];
        v13 = [userInfo2 mutableCopy];
      }

      else
      {
        v13 = [&__NSDictionary0__struct mutableCopy];
      }

      [v13 setObject:v9 forKeyedSubscript:NSUnderlyingErrorKey];
      domain = [v6 domain];
      v26 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", domain, [v6 code], v13);

      v27 = v26;
      if (v27)
      {
        if (error)
        {
          v28 = v27;
          *error = v27;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

LABEL_27:
LABEL_28:
      v16 = 0;
      goto LABEL_29;
    }

    v13 = v9;
    if (v13)
    {
      if (error)
      {
        v34 = v13;
        *error = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_27;
  }

  if (!v5 && v7 && v6)
  {
    if (([v6 hk_isObjectNotFoundError] & 1) == 0)
    {
      _HKInitializeLogging();
      v14 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_9F8EC(v14, self);
      }

      if (error)
      {
        v15 = v6;
        v16 = 0;
        *error = v6;
        goto LABEL_29;
      }

      goto LABEL_36;
    }

LABEL_20:
    v20 = [HKFHIRCredential alloc];
    patientID = [(HDFHIRCredential *)self patientID];
    expiration = [(HDFHIRCredential *)self expiration];
    requestedScopeString = [(HDFHIRCredential *)self requestedScopeString];
    scopes = [(HDFHIRCredential *)self scopes];
    v16 = [v20 initWithAccessToken:v5 refreshToken:v7 patientID:patientID expiration:expiration requestedScopeString:requestedScopeString scopes:scopes];

    goto LABEL_29;
  }

  if (!v5 || v7)
  {
    goto LABEL_20;
  }

  if (!v8 || [v8 hk_isObjectNotFoundError])
  {
    _HKInitializeLogging();
    v17 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = [(HDFHIRCredential *)self debugDescription];
      *buf = 138543362;
      v38 = v19;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ no refresh token is present, will not be able to refresh the access token", buf, 0xCu);
    }

    goto LABEL_20;
  }

  _HKInitializeLogging();
  v30 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_9F98C(v30, self);
  }

  if (!error)
  {
LABEL_36:
    _HKLogDroppedError();
    goto LABEL_28;
  }

  v31 = v9;
  v16 = 0;
  *error = v9;
LABEL_29:

  return v16;
}

- (HDFHIRCredential)initWithIdentifier:(id)identifier requestedScopeString:(id)string expiration:(id)expiration scopeString:(id)scopeString patientID:(id)d
{
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = HDFHIRCredential;
  v13 = [(HDFHIRCredential *)&v16 initWithAccessToken:0 refreshToken:0 patientID:d expiration:expiration requestedScopeString:string scopeString:scopeString];
  v14 = v13;
  if (v13)
  {
    [(HDFHIRCredential *)v13 _commonInitWithIdentifier:identifierCopy];
  }

  return v14;
}

- (HDFHIRCredential)initWithCodableCredential:(id)credential
{
  credentialCopy = credential;
  patientID = [credentialCopy patientID];
  hasExpirationDate = [credentialCopy hasExpirationDate];
  if (hasExpirationDate)
  {
    [credentialCopy expirationDate];
    v7 = HDDecodeDateForValue();
  }

  else
  {
    v7 = 0;
  }

  requestedScopeString = [credentialCopy requestedScopeString];
  hasScopeString = [credentialCopy hasScopeString];
  if (hasScopeString)
  {
    scopeString = [credentialCopy scopeString];
  }

  else
  {
    scopeString = 0;
  }

  v15.receiver = self;
  v15.super_class = HDFHIRCredential;
  v11 = [(HDFHIRCredential *)&v15 initWithAccessToken:0 refreshToken:0 patientID:patientID expiration:v7 requestedScopeString:requestedScopeString scopeString:scopeString];
  if (hasScopeString)
  {
  }

  if (hasExpirationDate)
  {
  }

  if (v11)
  {
    identifier = [credentialCopy identifier];
    v13 = [NSUUID hk_UUIDWithData:identifier];
    [(HDFHIRCredential *)v11 _commonInitWithIdentifier:v13];
  }

  return v11;
}

- (void)_commonInitWithIdentifier:(id)identifier
{
  v4 = [identifier copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  self->_tokenLock._os_unfair_lock_opaque = 0;
}

- (id)accessToken
{
  localAccessToken = self->_localAccessToken;
  if (localAccessToken)
  {
    accessToken = localAccessToken;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = HDFHIRCredential;
    accessToken = [(HDFHIRCredential *)&v5 accessToken];
  }

  return accessToken;
}

- (id)refreshToken
{
  localRefreshToken = self->_localRefreshToken;
  if (localRefreshToken)
  {
    refreshToken = localRefreshToken;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = HDFHIRCredential;
    refreshToken = [(HDFHIRCredential *)&v5 refreshToken];
  }

  return refreshToken;
}

- (id)fetchAccessTokenWithError:(id *)error
{
  os_unfair_lock_lock(&self->_tokenLock);
  localAccessToken = self->_localAccessToken;
  if (!localAccessToken)
  {
    _accessTokenIdentifier = [(HDFHIRCredential *)self _accessTokenIdentifier];
    v7 = [(HDFHIRCredential *)self _keychainItemWithName:_accessTokenIdentifier];

    v8 = [v7 fetchWithError:error];
    v9 = self->_localAccessToken;
    self->_localAccessToken = v8;

    localAccessToken = self->_localAccessToken;
  }

  v10 = localAccessToken;
  os_unfair_lock_unlock(&self->_tokenLock);

  return v10;
}

- (BOOL)storeAccessToken:(id)token error:(id *)error
{
  tokenCopy = token;
  os_unfair_lock_lock(&self->_tokenLock);
  localAccessToken = self->_localAccessToken;
  self->_localAccessToken = 0;

  _accessTokenIdentifier = [(HDFHIRCredential *)self _accessTokenIdentifier];
  v9 = [(HDFHIRCredential *)self _keychainItemWithName:_accessTokenIdentifier];

  if (tokenCopy)
  {
    v10 = [v9 storeLocalToken:tokenCopy error:error];
  }

  else
  {
    v10 = [v9 deleteWithError:error];
  }

  v11 = v10;
  if (v10)
  {
    v12 = [tokenCopy copy];
    v13 = self->_localAccessToken;
    self->_localAccessToken = v12;
  }

  os_unfair_lock_unlock(&self->_tokenLock);
  return v11;
}

- (BOOL)hasRefreshTokenWithError:(id *)error
{
  _refreshTokenIdentifier = [(HDFHIRCredential *)self _refreshTokenIdentifier];
  v6 = [(HDFHIRCredential *)self _keychainItemWithName:_refreshTokenIdentifier];

  LOBYTE(error) = [v6 isPresentWithError:error];
  return error;
}

- (BOOL)makeRefreshTokenSynchronizableIfNeededWithError:(id *)error
{
  _refreshTokenIdentifier = [(HDFHIRCredential *)self _refreshTokenIdentifier];
  v6 = [(HDFHIRCredential *)self _keychainItemWithName:_refreshTokenIdentifier];

  LOBYTE(error) = [v6 makeTokenSynchronizableIfNeededWithError:error];
  return error;
}

- (id)fetchRefreshTokenWithError:(id *)error
{
  os_unfair_lock_lock(&self->_tokenLock);
  localRefreshToken = self->_localRefreshToken;
  if (!localRefreshToken)
  {
    _refreshTokenIdentifier = [(HDFHIRCredential *)self _refreshTokenIdentifier];
    v7 = [(HDFHIRCredential *)self _keychainItemWithName:_refreshTokenIdentifier];

    v8 = [v7 fetchWithError:error];
    v9 = self->_localRefreshToken;
    self->_localRefreshToken = v8;

    localRefreshToken = self->_localRefreshToken;
  }

  v10 = localRefreshToken;
  os_unfair_lock_unlock(&self->_tokenLock);

  return v10;
}

- (BOOL)storeRefreshToken:(id)token error:(id *)error
{
  tokenCopy = token;
  os_unfair_lock_lock(&self->_tokenLock);
  localRefreshToken = self->_localRefreshToken;
  self->_localRefreshToken = 0;

  _refreshTokenIdentifier = [(HDFHIRCredential *)self _refreshTokenIdentifier];
  v9 = [(HDFHIRCredential *)self _keychainItemWithName:_refreshTokenIdentifier];

  if (tokenCopy)
  {
    v10 = [v9 storeSynchronizableToken:tokenCopy error:error];
  }

  else
  {
    v10 = [v9 deleteWithError:error];
  }

  v11 = v10;
  if (v10)
  {
    v12 = [tokenCopy copy];
    v13 = self->_localRefreshToken;
    self->_localRefreshToken = v12;
  }

  os_unfair_lock_unlock(&self->_tokenLock);
  return v11;
}

- (BOOL)deleteTokensWithError:(id *)error
{
  v5 = [(HDFHIRCredential *)self storeAccessToken:0 error:error];
  if (v5)
  {

    LOBYTE(v5) = [(HDFHIRCredential *)self storeRefreshToken:0 error:error];
  }

  return v5;
}

- (id)_accessTokenIdentifier
{
  uUIDString = [(NSUUID *)self->_identifier UUIDString];
  v3 = [NSString stringWithFormat:@"health-app:chr/auth/%@#access", uUIDString];

  return v3;
}

- (id)_refreshTokenIdentifier
{
  uUIDString = [(NSUUID *)self->_identifier UUIDString];
  v3 = [NSString stringWithFormat:@"health-app:chr/auth/%@#refresh", uUIDString];

  return v3;
}

- (id)_keychainItemWithName:(id)name
{
  nameCopy = name;
  v4 = [[HKTokenKeychainItem alloc] initWithName:nameCopy];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HDFHIRCredential;
  coderCopy = coder;
  [(HDFHIRCredential *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_identifier forKey:{@"identifier", v5.receiver, v5.super_class}];
}

- (HDFHIRCredential)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if (v5)
  {
    v9.receiver = self;
    v9.super_class = HDFHIRCredential;
    v6 = [(HDFHIRCredential *)&v9 initWithCoder:coderCopy];

    if (v6)
    {
      [(HDFHIRCredential *)v6 _commonInitWithIdentifier:v5];
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];

    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)credentialFromCodable:(id)codable accountSyncIdentifier:(id *)identifier ifValidWithError:(id *)error
{
  codableCopy = codable;
  if ([self validateSyncableCodableCredential:codableCopy error:error])
  {
    if (identifier)
    {
      accountSyncIdentifier = [codableCopy accountSyncIdentifier];
      *identifier = [NSUUID hk_UUIDWithData:accountSyncIdentifier];
    }

    v10 = [[HDFHIRCredential alloc] initWithCodableCredential:codableCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)newCompatibleCodableCredential
{
  v2 = objc_alloc_init(HDCodableFHIRCredential);
  v3 = objc_alloc_init(HDCodableMessageVersion);
  [v2 setMessageVersion:v3];

  messageVersion = [v2 messageVersion];
  [messageVersion setEntityVersion:1];

  messageVersion2 = [v2 messageVersion];
  [messageVersion2 setCompatibilityVersion:1];

  return v2;
}

- (id)asNewCodableForAccountSyncIdentifier:(id)identifier receivedDate:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  if (!dateCopy)
  {
    sub_A1564(a2, self);
  }

  newCompatibleCodableCredential = [objc_opt_class() newCompatibleCodableCredential];
  identifier = [(HDFHIRCredential *)self identifier];
  hk_dataForUUIDBytes = [identifier hk_dataForUUIDBytes];
  [newCompatibleCodableCredential setIdentifier:hk_dataForUUIDBytes];

  if (identifierCopy)
  {
    hk_dataForUUIDBytes2 = [identifierCopy hk_dataForUUIDBytes];
    [newCompatibleCodableCredential setAccountSyncIdentifier:hk_dataForUUIDBytes2];
  }

  requestedScopeString = [(HDFHIRCredential *)self requestedScopeString];
  [newCompatibleCodableCredential setRequestedScopeString:requestedScopeString];

  HDEncodeValueForDate();
  [newCompatibleCodableCredential setReceivedDate:?];
  expiration = [(HDFHIRCredential *)self expiration];

  if (expiration)
  {
    expiration2 = [(HDFHIRCredential *)self expiration];
    HDEncodeValueForDate();
    [newCompatibleCodableCredential setExpirationDate:?];
  }

  scopeString = [(HDFHIRCredential *)self scopeString];
  v17 = [scopeString length];

  if (v17)
  {
    scopeString2 = [(HDFHIRCredential *)self scopeString];
    [newCompatibleCodableCredential setScopeString:scopeString2];
  }

  patientID = [(HDFHIRCredential *)self patientID];
  v20 = [patientID length];

  if (v20)
  {
    patientID2 = [(HDFHIRCredential *)self patientID];
    [newCompatibleCodableCredential setPatientID:patientID2];
  }

  return newCompatibleCodableCredential;
}

+ (BOOL)_validateCodableCredential:(id)credential forSync:(BOOL)sync error:(id *)error
{
  syncCopy = sync;
  credentialCopy = credential;
  v8 = objc_alloc_init(NSMutableArray);
  if ([credentialCopy hasMessageVersion])
  {
    messageVersion = [credentialCopy messageVersion];
    compatibilityVersion = [messageVersion compatibilityVersion];

    if (compatibilityVersion >= 2)
    {
      messageVersion2 = [credentialCopy messageVersion];
      v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"compatibility version is higher (%lu) than what we support (%lu)", [messageVersion2 compatibilityVersion], 1);
      [v8 addObject:v12];
    }
  }

  else
  {
    [v8 addObject:@"no compatibility version"];
  }

  identifier = [credentialCopy identifier];
  v14 = [identifier length];

  if (v14)
  {
    identifier2 = [credentialCopy identifier];
    v16 = [NSUUID hk_UUIDWithData:identifier2];

    if (v16)
    {
      goto LABEL_10;
    }

    v17 = @"invalid identifier bytes (not a UUID)";
  }

  else
  {
    v17 = @"no identifier";
  }

  [v8 addObject:v17];
LABEL_10:
  if (!syncCopy)
  {
    goto LABEL_16;
  }

  accountSyncIdentifier = [credentialCopy accountSyncIdentifier];
  v19 = [accountSyncIdentifier length];

  if (v19)
  {
    accountSyncIdentifier2 = [credentialCopy accountSyncIdentifier];
    v21 = [NSUUID hk_UUIDWithData:accountSyncIdentifier2];

    if (v21)
    {
      goto LABEL_16;
    }

    v22 = @"invalid account sync identifier bytes (not a UUID)";
  }

  else
  {
    v22 = @"no account sync identifier";
  }

  [v8 addObject:v22];
LABEL_16:
  patientID = [credentialCopy patientID];
  v24 = [patientID length];

  if (!v24)
  {
    [v8 addObject:@"no patient id"];
  }

  requestedScopeString = [credentialCopy requestedScopeString];
  v26 = [requestedScopeString length];

  if (!v26)
  {
    [v8 addObject:@"no requested scope string"];
  }

  if (([credentialCopy hasReceivedDate] & 1) == 0)
  {
    [v8 addObject:@"no received date"];
  }

  v27 = [v8 count];
  if (v27)
  {
    v28 = [v8 componentsJoinedByString:@" "];;
    [NSError hk_assignError:error code:3 format:@"codable FHIR credential is invalid: %@", v28];
  }

  return v27 == 0;
}

- (BOOL)isEqualToCredential:(id)credential epsilonExpiration:(double)expiration
{
  credentialCopy = credential;
  expiration = [(HDFHIRCredential *)self expiration];
  expiration2 = [credentialCopy expiration];
  [expiration timeIntervalSinceDate:expiration2];
  v12 = v11;

  v13 = &stru_20;
  identifier = self->_identifier;
  identifier = [credentialCopy identifier];
  if (identifier != identifier)
  {
    identifier2 = [credentialCopy identifier];
    if (!identifier2)
    {
      v23 = 0;
      goto LABEL_39;
    }

    v17 = identifier2;
    v13 = self->_identifier;
    identifier3 = [credentialCopy identifier];
    if (![(NSUUID *)v13 isEqual:identifier3])
    {
      v23 = 0;
LABEL_38:

      goto LABEL_39;
    }

    v48 = v17;
  }

  v18 = fabs(v12);
  patientID = [(HDFHIRCredential *)self patientID];
  patientID2 = [credentialCopy patientID];
  if (patientID == patientID2)
  {
    if (v18 <= expiration)
    {
      goto LABEL_14;
    }

LABEL_12:
    v23 = 0;
    goto LABEL_36;
  }

  patientID3 = [credentialCopy patientID];
  if (!patientID3)
  {
    goto LABEL_12;
  }

  v13 = patientID3;
  patientID4 = [(HDFHIRCredential *)self patientID];
  patientID5 = [credentialCopy patientID];
  if (([patientID4 isEqualToString:patientID5] & 1) == 0)
  {

    v23 = 0;
    goto LABEL_37;
  }

  v44 = patientID5;
  if (v18 > expiration)
  {
    v47 = patientID4;
    v23 = 0;
LABEL_34:

    goto LABEL_35;
  }

LABEL_14:
  v24 = patientID;
  requestedScopeString = [(HDFHIRCredential *)self requestedScopeString];
  requestedScopeString2 = [credentialCopy requestedScopeString];
  v46 = requestedScopeString;
  v47 = patientID4;
  if (requestedScopeString == requestedScopeString2)
  {
    v42 = v13;
    v43 = identifier3;
    patientID = v24;
LABEL_20:
    scopes = [(HDFHIRCredential *)self scopes];
    scopes2 = [credentialCopy scopes];
    v23 = scopes == scopes2;
    if (scopes != scopes2)
    {
      scopes3 = [credentialCopy scopes];
      if (scopes3)
      {
        v32 = scopes3;
        scopes4 = [(HDFHIRCredential *)self scopes];
        scopes5 = [credentialCopy scopes];
        v23 = [scopes4 isEqual:scopes5];

        if (v46 != requestedScopeString2)
        {
        }

        v13 = v42;
        identifier3 = v43;
        if (patientID == patientID2)
        {
          goto LABEL_36;
        }

        goto LABEL_31;
      }
    }

    v35 = requestedScopeString2;
    v34 = v46;
    if (v46 == requestedScopeString2)
    {

      v36 = patientID == patientID2;
      v13 = v42;
      identifier3 = v43;
LABEL_33:
      patientID5 = v44;
      if (!v36)
      {
        goto LABEL_34;
      }

      goto LABEL_36;
    }

    v13 = v42;
    identifier3 = v43;
LABEL_29:

    v36 = patientID == patientID2;
    goto LABEL_33;
  }

  requestedScopeString3 = [credentialCopy requestedScopeString];
  patientID = v24;
  if (!requestedScopeString3)
  {
    v23 = 0;
    v35 = requestedScopeString2;
    v34 = v46;
    goto LABEL_29;
  }

  v43 = identifier3;
  v41 = requestedScopeString3;
  requestedScopeString4 = [(HDFHIRCredential *)self requestedScopeString];
  requestedScopeString5 = [credentialCopy requestedScopeString];
  v40 = requestedScopeString4;
  if ([requestedScopeString4 isEqualToString:requestedScopeString5])
  {
    v39 = requestedScopeString5;
    v42 = v13;
    goto LABEL_20;
  }

  v23 = 0;
  identifier3 = v43;
  if (patientID != patientID2)
  {
LABEL_31:

LABEL_35:
  }

LABEL_36:

LABEL_37:
  v17 = v48;
  if (identifier != identifier)
  {
    goto LABEL_38;
  }

LABEL_39:

  return v23;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_identifier hash];
  patientID = [(HDFHIRCredential *)self patientID];
  v5 = [patientID hash];
  expiration = [(HDFHIRCredential *)self expiration];
  v7 = v5 ^ [expiration hash];
  requestedScopeString = [(HDFHIRCredential *)self requestedScopeString];
  v9 = v7 ^ [requestedScopeString hash];
  scopes = [(HDFHIRCredential *)self scopes];
  v11 = v9 ^ [scopes hash];

  return v11 ^ v3;
}

@end