@interface HDFHIRCredential
+ (BOOL)_validateCodableCredential:(id)a3 forSync:(BOOL)a4 error:(id *)a5;
+ (id)credentialFromCodable:(id)a3 accountSyncIdentifier:(id *)a4 ifValidWithError:(id *)a5;
+ (id)newCompatibleCodableCredential;
- (BOOL)deleteTokensWithError:(id *)a3;
- (BOOL)hasRefreshTokenWithError:(id *)a3;
- (BOOL)isEqualToCredential:(id)a3 epsilonExpiration:(double)a4;
- (BOOL)makeRefreshTokenSynchronizableIfNeededWithError:(id *)a3;
- (BOOL)storeAccessToken:(id)a3 error:(id *)a4;
- (BOOL)storeRefreshToken:(id)a3 error:(id *)a4;
- (HDFHIRCredential)credentialWithPopulatedAccessTokenWithError:(id *)a3;
- (HDFHIRCredential)initWithCodableCredential:(id)a3;
- (HDFHIRCredential)initWithCoder:(id)a3;
- (HDFHIRCredential)initWithIdentifier:(id)a3 requestedScopeString:(id)a4 expiration:(id)a5 scopeString:(id)a6 patientID:(id)a7;
- (id)_accessTokenIdentifier;
- (id)_keychainItemWithName:(id)a3;
- (id)_refreshTokenIdentifier;
- (id)accessToken;
- (id)asNewCodableForAccountSyncIdentifier:(id)a3 receivedDate:(id)a4;
- (id)fetchAccessTokenWithError:(id *)a3;
- (id)fetchRefreshTokenWithError:(id *)a3;
- (id)refreshToken;
- (unint64_t)hash;
- (void)_commonInitWithIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDFHIRCredential

- (HDFHIRCredential)credentialWithPopulatedAccessTokenWithError:(id *)a3
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
      v11 = [v6 userInfo];
      if (v11)
      {
        v12 = [v6 userInfo];
        v13 = [v12 mutableCopy];
      }

      else
      {
        v13 = [&__NSDictionary0__struct mutableCopy];
      }

      [v13 setObject:v9 forKeyedSubscript:NSUnderlyingErrorKey];
      v25 = [v6 domain];
      v26 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v25, [v6 code], v13);

      v27 = v26;
      if (v27)
      {
        if (a3)
        {
          v28 = v27;
          *a3 = v27;
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
      if (a3)
      {
        v34 = v13;
        *a3 = v13;
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

      if (a3)
      {
        v15 = v6;
        v16 = 0;
        *a3 = v6;
        goto LABEL_29;
      }

      goto LABEL_36;
    }

LABEL_20:
    v20 = [HKFHIRCredential alloc];
    v21 = [(HDFHIRCredential *)self patientID];
    v22 = [(HDFHIRCredential *)self expiration];
    v23 = [(HDFHIRCredential *)self requestedScopeString];
    v24 = [(HDFHIRCredential *)self scopes];
    v16 = [v20 initWithAccessToken:v5 refreshToken:v7 patientID:v21 expiration:v22 requestedScopeString:v23 scopes:v24];

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

  if (!a3)
  {
LABEL_36:
    _HKLogDroppedError();
    goto LABEL_28;
  }

  v31 = v9;
  v16 = 0;
  *a3 = v9;
LABEL_29:

  return v16;
}

- (HDFHIRCredential)initWithIdentifier:(id)a3 requestedScopeString:(id)a4 expiration:(id)a5 scopeString:(id)a6 patientID:(id)a7
{
  v12 = a3;
  v16.receiver = self;
  v16.super_class = HDFHIRCredential;
  v13 = [(HDFHIRCredential *)&v16 initWithAccessToken:0 refreshToken:0 patientID:a7 expiration:a5 requestedScopeString:a4 scopeString:a6];
  v14 = v13;
  if (v13)
  {
    [(HDFHIRCredential *)v13 _commonInitWithIdentifier:v12];
  }

  return v14;
}

- (HDFHIRCredential)initWithCodableCredential:(id)a3
{
  v4 = a3;
  v5 = [v4 patientID];
  v6 = [v4 hasExpirationDate];
  if (v6)
  {
    [v4 expirationDate];
    v7 = HDDecodeDateForValue();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 requestedScopeString];
  v9 = [v4 hasScopeString];
  if (v9)
  {
    v10 = [v4 scopeString];
  }

  else
  {
    v10 = 0;
  }

  v15.receiver = self;
  v15.super_class = HDFHIRCredential;
  v11 = [(HDFHIRCredential *)&v15 initWithAccessToken:0 refreshToken:0 patientID:v5 expiration:v7 requestedScopeString:v8 scopeString:v10];
  if (v9)
  {
  }

  if (v6)
  {
  }

  if (v11)
  {
    v12 = [v4 identifier];
    v13 = [NSUUID hk_UUIDWithData:v12];
    [(HDFHIRCredential *)v11 _commonInitWithIdentifier:v13];
  }

  return v11;
}

- (void)_commonInitWithIdentifier:(id)a3
{
  v4 = [a3 copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  self->_tokenLock._os_unfair_lock_opaque = 0;
}

- (id)accessToken
{
  localAccessToken = self->_localAccessToken;
  if (localAccessToken)
  {
    v3 = localAccessToken;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = HDFHIRCredential;
    v3 = [(HDFHIRCredential *)&v5 accessToken];
  }

  return v3;
}

- (id)refreshToken
{
  localRefreshToken = self->_localRefreshToken;
  if (localRefreshToken)
  {
    v3 = localRefreshToken;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = HDFHIRCredential;
    v3 = [(HDFHIRCredential *)&v5 refreshToken];
  }

  return v3;
}

- (id)fetchAccessTokenWithError:(id *)a3
{
  os_unfair_lock_lock(&self->_tokenLock);
  localAccessToken = self->_localAccessToken;
  if (!localAccessToken)
  {
    v6 = [(HDFHIRCredential *)self _accessTokenIdentifier];
    v7 = [(HDFHIRCredential *)self _keychainItemWithName:v6];

    v8 = [v7 fetchWithError:a3];
    v9 = self->_localAccessToken;
    self->_localAccessToken = v8;

    localAccessToken = self->_localAccessToken;
  }

  v10 = localAccessToken;
  os_unfair_lock_unlock(&self->_tokenLock);

  return v10;
}

- (BOOL)storeAccessToken:(id)a3 error:(id *)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_tokenLock);
  localAccessToken = self->_localAccessToken;
  self->_localAccessToken = 0;

  v8 = [(HDFHIRCredential *)self _accessTokenIdentifier];
  v9 = [(HDFHIRCredential *)self _keychainItemWithName:v8];

  if (v6)
  {
    v10 = [v9 storeLocalToken:v6 error:a4];
  }

  else
  {
    v10 = [v9 deleteWithError:a4];
  }

  v11 = v10;
  if (v10)
  {
    v12 = [v6 copy];
    v13 = self->_localAccessToken;
    self->_localAccessToken = v12;
  }

  os_unfair_lock_unlock(&self->_tokenLock);
  return v11;
}

- (BOOL)hasRefreshTokenWithError:(id *)a3
{
  v5 = [(HDFHIRCredential *)self _refreshTokenIdentifier];
  v6 = [(HDFHIRCredential *)self _keychainItemWithName:v5];

  LOBYTE(a3) = [v6 isPresentWithError:a3];
  return a3;
}

- (BOOL)makeRefreshTokenSynchronizableIfNeededWithError:(id *)a3
{
  v5 = [(HDFHIRCredential *)self _refreshTokenIdentifier];
  v6 = [(HDFHIRCredential *)self _keychainItemWithName:v5];

  LOBYTE(a3) = [v6 makeTokenSynchronizableIfNeededWithError:a3];
  return a3;
}

- (id)fetchRefreshTokenWithError:(id *)a3
{
  os_unfair_lock_lock(&self->_tokenLock);
  localRefreshToken = self->_localRefreshToken;
  if (!localRefreshToken)
  {
    v6 = [(HDFHIRCredential *)self _refreshTokenIdentifier];
    v7 = [(HDFHIRCredential *)self _keychainItemWithName:v6];

    v8 = [v7 fetchWithError:a3];
    v9 = self->_localRefreshToken;
    self->_localRefreshToken = v8;

    localRefreshToken = self->_localRefreshToken;
  }

  v10 = localRefreshToken;
  os_unfair_lock_unlock(&self->_tokenLock);

  return v10;
}

- (BOOL)storeRefreshToken:(id)a3 error:(id *)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_tokenLock);
  localRefreshToken = self->_localRefreshToken;
  self->_localRefreshToken = 0;

  v8 = [(HDFHIRCredential *)self _refreshTokenIdentifier];
  v9 = [(HDFHIRCredential *)self _keychainItemWithName:v8];

  if (v6)
  {
    v10 = [v9 storeSynchronizableToken:v6 error:a4];
  }

  else
  {
    v10 = [v9 deleteWithError:a4];
  }

  v11 = v10;
  if (v10)
  {
    v12 = [v6 copy];
    v13 = self->_localRefreshToken;
    self->_localRefreshToken = v12;
  }

  os_unfair_lock_unlock(&self->_tokenLock);
  return v11;
}

- (BOOL)deleteTokensWithError:(id *)a3
{
  v5 = [(HDFHIRCredential *)self storeAccessToken:0 error:a3];
  if (v5)
  {

    LOBYTE(v5) = [(HDFHIRCredential *)self storeRefreshToken:0 error:a3];
  }

  return v5;
}

- (id)_accessTokenIdentifier
{
  v2 = [(NSUUID *)self->_identifier UUIDString];
  v3 = [NSString stringWithFormat:@"health-app:chr/auth/%@#access", v2];

  return v3;
}

- (id)_refreshTokenIdentifier
{
  v2 = [(NSUUID *)self->_identifier UUIDString];
  v3 = [NSString stringWithFormat:@"health-app:chr/auth/%@#refresh", v2];

  return v3;
}

- (id)_keychainItemWithName:(id)a3
{
  v3 = a3;
  v4 = [[HKTokenKeychainItem alloc] initWithName:v3];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HDFHIRCredential;
  v4 = a3;
  [(HDFHIRCredential *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_identifier forKey:{@"identifier", v5.receiver, v5.super_class}];
}

- (HDFHIRCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if (v5)
  {
    v9.receiver = self;
    v9.super_class = HDFHIRCredential;
    v6 = [(HDFHIRCredential *)&v9 initWithCoder:v4];

    if (v6)
    {
      [(HDFHIRCredential *)v6 _commonInitWithIdentifier:v5];
    }

    self = v6;
    v7 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];

    v7 = 0;
  }

  return v7;
}

+ (id)credentialFromCodable:(id)a3 accountSyncIdentifier:(id *)a4 ifValidWithError:(id *)a5
{
  v8 = a3;
  if ([a1 validateSyncableCodableCredential:v8 error:a5])
  {
    if (a4)
    {
      v9 = [v8 accountSyncIdentifier];
      *a4 = [NSUUID hk_UUIDWithData:v9];
    }

    v10 = [[HDFHIRCredential alloc] initWithCodableCredential:v8];
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

  v4 = [v2 messageVersion];
  [v4 setEntityVersion:1];

  v5 = [v2 messageVersion];
  [v5 setCompatibilityVersion:1];

  return v2;
}

- (id)asNewCodableForAccountSyncIdentifier:(id)a3 receivedDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    sub_A1564(a2, self);
  }

  v9 = [objc_opt_class() newCompatibleCodableCredential];
  v10 = [(HDFHIRCredential *)self identifier];
  v11 = [v10 hk_dataForUUIDBytes];
  [v9 setIdentifier:v11];

  if (v7)
  {
    v12 = [v7 hk_dataForUUIDBytes];
    [v9 setAccountSyncIdentifier:v12];
  }

  v13 = [(HDFHIRCredential *)self requestedScopeString];
  [v9 setRequestedScopeString:v13];

  HDEncodeValueForDate();
  [v9 setReceivedDate:?];
  v14 = [(HDFHIRCredential *)self expiration];

  if (v14)
  {
    v15 = [(HDFHIRCredential *)self expiration];
    HDEncodeValueForDate();
    [v9 setExpirationDate:?];
  }

  v16 = [(HDFHIRCredential *)self scopeString];
  v17 = [v16 length];

  if (v17)
  {
    v18 = [(HDFHIRCredential *)self scopeString];
    [v9 setScopeString:v18];
  }

  v19 = [(HDFHIRCredential *)self patientID];
  v20 = [v19 length];

  if (v20)
  {
    v21 = [(HDFHIRCredential *)self patientID];
    [v9 setPatientID:v21];
  }

  return v9;
}

+ (BOOL)_validateCodableCredential:(id)a3 forSync:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(NSMutableArray);
  if ([v7 hasMessageVersion])
  {
    v9 = [v7 messageVersion];
    v10 = [v9 compatibilityVersion];

    if (v10 >= 2)
    {
      v11 = [v7 messageVersion];
      v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"compatibility version is higher (%lu) than what we support (%lu)", [v11 compatibilityVersion], 1);
      [v8 addObject:v12];
    }
  }

  else
  {
    [v8 addObject:@"no compatibility version"];
  }

  v13 = [v7 identifier];
  v14 = [v13 length];

  if (v14)
  {
    v15 = [v7 identifier];
    v16 = [NSUUID hk_UUIDWithData:v15];

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
  if (!v6)
  {
    goto LABEL_16;
  }

  v18 = [v7 accountSyncIdentifier];
  v19 = [v18 length];

  if (v19)
  {
    v20 = [v7 accountSyncIdentifier];
    v21 = [NSUUID hk_UUIDWithData:v20];

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
  v23 = [v7 patientID];
  v24 = [v23 length];

  if (!v24)
  {
    [v8 addObject:@"no patient id"];
  }

  v25 = [v7 requestedScopeString];
  v26 = [v25 length];

  if (!v26)
  {
    [v8 addObject:@"no requested scope string"];
  }

  if (([v7 hasReceivedDate] & 1) == 0)
  {
    [v8 addObject:@"no received date"];
  }

  v27 = [v8 count];
  if (v27)
  {
    v28 = [v8 componentsJoinedByString:@" "];;
    [NSError hk_assignError:a5 code:3 format:@"codable FHIR credential is invalid: %@", v28];
  }

  return v27 == 0;
}

- (BOOL)isEqualToCredential:(id)a3 epsilonExpiration:(double)a4
{
  v8 = a3;
  v9 = [(HDFHIRCredential *)self expiration];
  v10 = [v8 expiration];
  [v9 timeIntervalSinceDate:v10];
  v12 = v11;

  v13 = &stru_20;
  identifier = self->_identifier;
  v15 = [v8 identifier];
  if (identifier != v15)
  {
    v16 = [v8 identifier];
    if (!v16)
    {
      v23 = 0;
      goto LABEL_39;
    }

    v17 = v16;
    v13 = self->_identifier;
    v4 = [v8 identifier];
    if (![(NSUUID *)v13 isEqual:v4])
    {
      v23 = 0;
LABEL_38:

      goto LABEL_39;
    }

    v48 = v17;
  }

  v18 = fabs(v12);
  v19 = [(HDFHIRCredential *)self patientID];
  v20 = [v8 patientID];
  if (v19 == v20)
  {
    if (v18 <= a4)
    {
      goto LABEL_14;
    }

LABEL_12:
    v23 = 0;
    goto LABEL_36;
  }

  v21 = [v8 patientID];
  if (!v21)
  {
    goto LABEL_12;
  }

  v13 = v21;
  v5 = [(HDFHIRCredential *)self patientID];
  v22 = [v8 patientID];
  if (([v5 isEqualToString:v22] & 1) == 0)
  {

    v23 = 0;
    goto LABEL_37;
  }

  v44 = v22;
  if (v18 > a4)
  {
    v47 = v5;
    v23 = 0;
LABEL_34:

    goto LABEL_35;
  }

LABEL_14:
  v24 = v19;
  v25 = [(HDFHIRCredential *)self requestedScopeString];
  v45 = [v8 requestedScopeString];
  v46 = v25;
  v47 = v5;
  if (v25 == v45)
  {
    v42 = v13;
    v43 = v4;
    v19 = v24;
LABEL_20:
    v29 = [(HDFHIRCredential *)self scopes];
    v30 = [v8 scopes];
    v23 = v29 == v30;
    if (v29 != v30)
    {
      v31 = [v8 scopes];
      if (v31)
      {
        v32 = v31;
        v38 = [(HDFHIRCredential *)self scopes];
        v33 = [v8 scopes];
        v23 = [v38 isEqual:v33];

        if (v46 != v45)
        {
        }

        v13 = v42;
        v4 = v43;
        if (v19 == v20)
        {
          goto LABEL_36;
        }

        goto LABEL_31;
      }
    }

    v35 = v45;
    v34 = v46;
    if (v46 == v45)
    {

      v36 = v19 == v20;
      v13 = v42;
      v4 = v43;
LABEL_33:
      v22 = v44;
      if (!v36)
      {
        goto LABEL_34;
      }

      goto LABEL_36;
    }

    v13 = v42;
    v4 = v43;
LABEL_29:

    v36 = v19 == v20;
    goto LABEL_33;
  }

  v26 = [v8 requestedScopeString];
  v19 = v24;
  if (!v26)
  {
    v23 = 0;
    v35 = v45;
    v34 = v46;
    goto LABEL_29;
  }

  v43 = v4;
  v41 = v26;
  v27 = [(HDFHIRCredential *)self requestedScopeString];
  v28 = [v8 requestedScopeString];
  v40 = v27;
  if ([v27 isEqualToString:v28])
  {
    v39 = v28;
    v42 = v13;
    goto LABEL_20;
  }

  v23 = 0;
  v4 = v43;
  if (v19 != v20)
  {
LABEL_31:

LABEL_35:
  }

LABEL_36:

LABEL_37:
  v17 = v48;
  if (identifier != v15)
  {
    goto LABEL_38;
  }

LABEL_39:

  return v23;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_identifier hash];
  v4 = [(HDFHIRCredential *)self patientID];
  v5 = [v4 hash];
  v6 = [(HDFHIRCredential *)self expiration];
  v7 = v5 ^ [v6 hash];
  v8 = [(HDFHIRCredential *)self requestedScopeString];
  v9 = v7 ^ [v8 hash];
  v10 = [(HDFHIRCredential *)self scopes];
  v11 = v9 ^ [v10 hash];

  return v11 ^ v3;
}

@end