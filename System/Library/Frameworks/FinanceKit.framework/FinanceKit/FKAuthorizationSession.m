@interface FKAuthorizationSession
- (BOOL)isEqual:(id)a3;
- (FKAuthorizationSession)initWithSessionId:(id)a3 consent:(id)a4 codeVerifier:(id)a5 previousConsentUUID:(id)a6 institution:(id)a7 fpanId:(id)a8 authorizationType:(signed __int16)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation FKAuthorizationSession

- (FKAuthorizationSession)initWithSessionId:(id)a3 consent:(id)a4 codeVerifier:(id)a5 previousConsentUUID:(id)a6 institution:(id)a7 fpanId:(id)a8 authorizationType:(signed __int16)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v35.receiver = self;
  v35.super_class = FKAuthorizationSession;
  v21 = [(FKAuthorizationSession *)&v35 init];
  if (v21)
  {
    v22 = [v15 copy];
    sessionId = v21->_sessionId;
    v21->_sessionId = v22;

    v24 = [v16 copy];
    consent = v21->_consent;
    v21->_consent = v24;

    v26 = [v17 copy];
    codeVerifier = v21->_codeVerifier;
    v21->_codeVerifier = v26;

    v28 = [v18 copy];
    previousConsentUUID = v21->_previousConsentUUID;
    v21->_previousConsentUUID = v28;

    v30 = [v19 copy];
    institution = v21->_institution;
    v21->_institution = v30;

    v32 = [v20 copy];
    fpanId = v21->_fpanId;
    v21->_fpanId = v32;

    v21->_authorizationType = a9;
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(FKAuthorizationSession);
  v6 = [(NSUUID *)self->_sessionId copyWithZone:a3];
  sessionId = v5->_sessionId;
  v5->_sessionId = v6;

  v8 = [(FKAuthorizationConsent *)self->_consent copyWithZone:a3];
  consent = v5->_consent;
  v5->_consent = v8;

  v10 = [(NSString *)self->_codeVerifier copyWithZone:a3];
  codeVerifier = v5->_codeVerifier;
  v5->_codeVerifier = v10;

  v12 = [(NSUUID *)self->_previousConsentUUID copyWithZone:a3];
  previousConsentUUID = v5->_previousConsentUUID;
  v5->_previousConsentUUID = v12;

  v14 = [(FKInstitution *)self->_institution copyWithZone:a3];
  institution = v5->_institution;
  v5->_institution = v14;

  v16 = [(NSString *)self->_fpanId copyWithZone:a3];
  fpanId = v5->_fpanId;
  v5->_fpanId = v16;

  v5->_authorizationType = self->_authorizationType;
  return v5;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_sessionId];
  [v3 safelyAddObject:self->_consent];
  [v3 safelyAddObject:self->_codeVerifier];
  [v3 safelyAddObject:self->_previousConsentUUID];
  [v3 safelyAddObject:self->_institution];
  [v3 safelyAddObject:self->_fpanId];
  v4 = FKCombinedHash(17, v3);
  v5 = FKIntegerHash(v4, self->_authorizationType);

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v7 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = FKEqualObjects(self->_sessionId, v6[2]) && FKEqualObjects(self->_consent, v6[3]) && FKEqualObjects(self->_codeVerifier, v6[4]) && FKEqualObjects(self->_previousConsentUUID, v6[5]) && FKEqualObjects(self->_institution, v6[6]) && FKEqualObjects(self->_fpanId, v6[7]) && self->_authorizationType == *(v6 + 4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end