@interface ENRegionUserConsent
- (BOOL)isEqual:(id)equal;
- (ENRegionUserConsent)initWithCoder:(id)coder;
- (ENRegionUserConsent)initWithConsentVersion:(id)version;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)updatedConsent:(id)consent;
- (void)encodeWithCoder:(id)coder;
- (void)setConsent:(int64_t)consent;
- (void)setDifferentialPrivacyConsent:(int64_t)consent;
@end

@implementation ENRegionUserConsent

- (ENRegionUserConsent)initWithConsentVersion:(id)version
{
  versionCopy = version;
  v9.receiver = self;
  v9.super_class = ENRegionUserConsent;
  v6 = [(ENRegionUserConsent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_consentVersion, version);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  consentVersion = [(ENRegionUserConsent *)self consentVersion];
  consent = [(ENRegionUserConsent *)self consent];
  if (consent > 4)
  {
    v6 = "?";
  }

  else
  {
    v6 = (&off_278A4BC48)[consent];
  }

  [(ENRegionUserConsent *)self consentTimestamp];
  v8 = v7;
  differentialPrivacyConsent = [(ENRegionUserConsent *)self differentialPrivacyConsent];
  if (differentialPrivacyConsent > 4)
  {
    v10 = "?";
  }

  else
  {
    v10 = (&off_278A4BC48)[differentialPrivacyConsent];
  }

  [(ENRegionUserConsent *)self differentialPrivacyConsentTimestamp];
  v12 = [v3 stringWithFormat:@"Consent [version: %@] - %s, ConsentTimestamp: %f, DPConsent: %s, DPConsentTimestamp: %f", consentVersion, v6, v8, v10, v11];

  return v12;
}

- (ENRegionUserConsent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = ENRegionUserConsent;
  v5 = [(ENRegionUserConsent *)&v14 init];
  if (v5)
  {
    v5->_consent = [coderCopy decodeIntegerForKey:@"consent"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"consentText"];
    consentText = v5->_consentText;
    v5->_consentText = v6;

    [coderCopy decodeDoubleForKey:@"consentTimestamp"];
    v5->_consentTimestamp = v8;
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"consentVersion"];
    if (!v9)
    {
      [ENRegionUserConsent initWithCoder:?];
      v12 = v15;
      goto LABEL_5;
    }

    consentVersion = v5->_consentVersion;
    v5->_consentVersion = v9;

    v5->_differentialPrivacyConsent = [coderCopy decodeIntegerForKey:@"differentialPrivacyConsent"];
    [coderCopy decodeDoubleForKey:@"differentialPrivacyConsentTimestamp"];
    v5->_differentialPrivacyConsentTimestamp = v11;
  }

  v12 = v5;
LABEL_5:

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[ENRegionUserConsent consent](self forKey:{"consent"), @"consent"}];
  consentText = [(ENRegionUserConsent *)self consentText];
  [coderCopy encodeObject:consentText forKey:@"consentText"];

  [(ENRegionUserConsent *)self consentTimestamp];
  [coderCopy encodeDouble:@"consentTimestamp" forKey:?];
  consentVersion = [(ENRegionUserConsent *)self consentVersion];
  [coderCopy encodeObject:consentVersion forKey:@"consentVersion"];

  [coderCopy encodeInteger:-[ENRegionUserConsent differentialPrivacyConsent](self forKey:{"differentialPrivacyConsent"), @"differentialPrivacyConsent"}];
  [(ENRegionUserConsent *)self differentialPrivacyConsentTimestamp];
  [coderCopy encodeDouble:@"differentialPrivacyConsentTimestamp" forKey:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[ENRegionUserConsent allocWithZone:?], "initWithConsentVersion:", self->_consentVersion];
  [(ENRegionUserConsent *)v4 setConsent:[(ENRegionUserConsent *)self consent]];
  [(ENRegionUserConsent *)self consentTimestamp];
  [(ENRegionUserConsent *)v4 setConsentTimestamp:?];
  [(ENRegionUserConsent *)v4 setDifferentialPrivacyConsent:[(ENRegionUserConsent *)self differentialPrivacyConsent]];
  [(ENRegionUserConsent *)self differentialPrivacyConsentTimestamp];
  [(ENRegionUserConsent *)v4 setDifferentialPrivacyConsentTimestamp:?];
  return v4;
}

- (id)updatedConsent:(id)consent
{
  consentCopy = consent;
  v7 = [(ENRegionUserConsent *)self copy];
  if ([v7 consent] != 4 && !-[ENRegionUserConsent consent](consentCopy, "consent") || (v8 = -[ENRegionUserConsent consent](consentCopy, "consent"), v9 = -[ENRegionUserConsent consent](self, "consent"), selfCopy = consentCopy, v8 == v9))
  {
    selfCopy = self;
  }

  [v7 setConsent:{-[ENRegionUserConsent consent](selfCopy, "consent")}];
  consentText = [(ENRegionUserConsent *)consentCopy consentText];
  v12 = [consentText length];
  if (!v12)
  {
    goto LABEL_12;
  }

  consentText2 = [(ENRegionUserConsent *)consentCopy consentText];
  consentText3 = [(ENRegionUserConsent *)self consentText];
  v3 = consentText2;
  v15 = consentText3;
  v4 = v15;
  if (v3 == v15)
  {

    goto LABEL_12;
  }

  if ((v3 != 0) != (v15 == 0))
  {
    v16 = [v3 isEqual:v15];

    if ((v16 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_12:
    consentText4 = [(ENRegionUserConsent *)self consentText];
    [v7 setConsentText:consentText4];

    if (!v12)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_15:
  consentText5 = [(ENRegionUserConsent *)consentCopy consentText];
  [v7 setConsentText:consentText5];

LABEL_16:
LABEL_17:

  consentVersion = [(ENRegionUserConsent *)consentCopy consentVersion];
  v20 = [consentVersion length];
  if (!v20 || (-[ENRegionUserConsent consentVersion](consentCopy, "consentVersion"), v3 = objc_claimAutoreleasedReturnValue(), -[ENRegionUserConsent consentVersion](self, "consentVersion"), v4 = objc_claimAutoreleasedReturnValue(), ([v3 isEqualToString:v4] & 1) != 0))
  {
    consentVersion2 = [(ENRegionUserConsent *)self consentVersion];
    [v7 setConsentVersion:consentVersion2];

    if (!v20)
    {
      goto LABEL_22;
    }
  }

  else
  {
    consentVersion3 = [(ENRegionUserConsent *)consentCopy consentVersion];
    [v7 setConsentVersion:consentVersion3];
  }

LABEL_22:
  if ([v7 differentialPrivacyConsent] != 4 && !-[ENRegionUserConsent differentialPrivacyConsent](consentCopy, "differentialPrivacyConsent") || (v23 = -[ENRegionUserConsent differentialPrivacyConsent](consentCopy, "differentialPrivacyConsent"), v24 = -[ENRegionUserConsent differentialPrivacyConsent](self, "differentialPrivacyConsent"), selfCopy2 = consentCopy, v23 == v24))
  {
    selfCopy2 = self;
  }

  [v7 setDifferentialPrivacyConsent:{-[ENRegionUserConsent differentialPrivacyConsent](selfCopy2, "differentialPrivacyConsent")}];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    consent = [(ENRegionUserConsent *)self consent];
    if (consent == [equalCopy consent])
    {
      consentText = [(ENRegionUserConsent *)self consentText];
      consentText2 = [equalCopy consentText];
      v8 = consentText;
      v9 = consentText2;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        if ((v8 != 0) == (v9 == 0))
        {
          v12 = 0;
          consentVersion2 = v9;
          consentVersion = v8;
LABEL_13:

          goto LABEL_14;
        }

        v11 = [v8 isEqual:v9];

        if (!v11)
        {
          v12 = 0;
LABEL_14:

          goto LABEL_15;
        }
      }

      consentVersion = [(ENRegionUserConsent *)self consentVersion];
      consentVersion2 = [equalCopy consentVersion];
      if ([consentVersion isEqualToString:consentVersion2])
      {
        differentialPrivacyConsent = [(ENRegionUserConsent *)self differentialPrivacyConsent];
        v12 = differentialPrivacyConsent == [equalCopy differentialPrivacyConsent];
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_13;
    }
  }

  v12 = 0;
LABEL_15:

  return v12;
}

- (void)setConsent:(int64_t)consent
{
  self->_consent = consent;
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  self->_consentTimestamp = v4;
}

- (void)setDifferentialPrivacyConsent:(int64_t)consent
{
  self->_differentialPrivacyConsent = consent;
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  self->_differentialPrivacyConsentTimestamp = v4;
}

- (uint64_t)initWithCoder:(uint64_t)result .cold.1(uint64_t result)
{
  v1 = result;
  if (gLogCategory_ENRegionConfiguration <= 30)
  {
    if (gLogCategory_ENRegionConfiguration != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *v1 = 0;
  return result;
}

@end