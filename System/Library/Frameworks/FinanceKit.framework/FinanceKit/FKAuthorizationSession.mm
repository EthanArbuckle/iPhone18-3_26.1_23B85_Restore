@interface FKAuthorizationSession
- (BOOL)isEqual:(id)equal;
- (FKAuthorizationSession)initWithSessionId:(id)id consent:(id)consent codeVerifier:(id)verifier previousConsentUUID:(id)d institution:(id)institution fpanId:(id)fpanId authorizationType:(signed __int16)type;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation FKAuthorizationSession

- (FKAuthorizationSession)initWithSessionId:(id)id consent:(id)consent codeVerifier:(id)verifier previousConsentUUID:(id)d institution:(id)institution fpanId:(id)fpanId authorizationType:(signed __int16)type
{
  idCopy = id;
  consentCopy = consent;
  verifierCopy = verifier;
  dCopy = d;
  institutionCopy = institution;
  fpanIdCopy = fpanId;
  v35.receiver = self;
  v35.super_class = FKAuthorizationSession;
  v21 = [(FKAuthorizationSession *)&v35 init];
  if (v21)
  {
    v22 = [idCopy copy];
    sessionId = v21->_sessionId;
    v21->_sessionId = v22;

    v24 = [consentCopy copy];
    consent = v21->_consent;
    v21->_consent = v24;

    v26 = [verifierCopy copy];
    codeVerifier = v21->_codeVerifier;
    v21->_codeVerifier = v26;

    v28 = [dCopy copy];
    previousConsentUUID = v21->_previousConsentUUID;
    v21->_previousConsentUUID = v28;

    v30 = [institutionCopy copy];
    institution = v21->_institution;
    v21->_institution = v30;

    v32 = [fpanIdCopy copy];
    fpanId = v21->_fpanId;
    v21->_fpanId = v32;

    v21->_authorizationType = type;
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(FKAuthorizationSession);
  v6 = [(NSUUID *)self->_sessionId copyWithZone:zone];
  sessionId = v5->_sessionId;
  v5->_sessionId = v6;

  v8 = [(FKAuthorizationConsent *)self->_consent copyWithZone:zone];
  consent = v5->_consent;
  v5->_consent = v8;

  v10 = [(NSString *)self->_codeVerifier copyWithZone:zone];
  codeVerifier = v5->_codeVerifier;
  v5->_codeVerifier = v10;

  v12 = [(NSUUID *)self->_previousConsentUUID copyWithZone:zone];
  previousConsentUUID = v5->_previousConsentUUID;
  v5->_previousConsentUUID = v12;

  v14 = [(FKInstitution *)self->_institution copyWithZone:zone];
  institution = v5->_institution;
  v5->_institution = v14;

  v16 = [(NSString *)self->_fpanId copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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