@interface ENRegionUserConsent
- (BOOL)isEqual:(id)a3;
- (ENRegionUserConsent)initWithCoder:(id)a3;
- (ENRegionUserConsent)initWithConsentVersion:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)updatedConsent:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setConsent:(int64_t)a3;
- (void)setDifferentialPrivacyConsent:(int64_t)a3;
@end

@implementation ENRegionUserConsent

- (ENRegionUserConsent)initWithConsentVersion:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ENRegionUserConsent;
  v6 = [(ENRegionUserConsent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_consentVersion, a3);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ENRegionUserConsent *)self consentVersion];
  v5 = [(ENRegionUserConsent *)self consent];
  if (v5 > 4)
  {
    v6 = "?";
  }

  else
  {
    v6 = (&off_278A4BC48)[v5];
  }

  [(ENRegionUserConsent *)self consentTimestamp];
  v8 = v7;
  v9 = [(ENRegionUserConsent *)self differentialPrivacyConsent];
  if (v9 > 4)
  {
    v10 = "?";
  }

  else
  {
    v10 = (&off_278A4BC48)[v9];
  }

  [(ENRegionUserConsent *)self differentialPrivacyConsentTimestamp];
  v12 = [v3 stringWithFormat:@"Consent [version: %@] - %s, ConsentTimestamp: %f, DPConsent: %s, DPConsentTimestamp: %f", v4, v6, v8, v10, v11];

  return v12;
}

- (ENRegionUserConsent)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ENRegionUserConsent;
  v5 = [(ENRegionUserConsent *)&v14 init];
  if (v5)
  {
    v5->_consent = [v4 decodeIntegerForKey:@"consent"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"consentText"];
    consentText = v5->_consentText;
    v5->_consentText = v6;

    [v4 decodeDoubleForKey:@"consentTimestamp"];
    v5->_consentTimestamp = v8;
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"consentVersion"];
    if (!v9)
    {
      [ENRegionUserConsent initWithCoder:?];
      v12 = v15;
      goto LABEL_5;
    }

    consentVersion = v5->_consentVersion;
    v5->_consentVersion = v9;

    v5->_differentialPrivacyConsent = [v4 decodeIntegerForKey:@"differentialPrivacyConsent"];
    [v4 decodeDoubleForKey:@"differentialPrivacyConsentTimestamp"];
    v5->_differentialPrivacyConsentTimestamp = v11;
  }

  v12 = v5;
LABEL_5:

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeInteger:-[ENRegionUserConsent consent](self forKey:{"consent"), @"consent"}];
  v4 = [(ENRegionUserConsent *)self consentText];
  [v6 encodeObject:v4 forKey:@"consentText"];

  [(ENRegionUserConsent *)self consentTimestamp];
  [v6 encodeDouble:@"consentTimestamp" forKey:?];
  v5 = [(ENRegionUserConsent *)self consentVersion];
  [v6 encodeObject:v5 forKey:@"consentVersion"];

  [v6 encodeInteger:-[ENRegionUserConsent differentialPrivacyConsent](self forKey:{"differentialPrivacyConsent"), @"differentialPrivacyConsent"}];
  [(ENRegionUserConsent *)self differentialPrivacyConsentTimestamp];
  [v6 encodeDouble:@"differentialPrivacyConsentTimestamp" forKey:?];
}

- (id)copyWithZone:(_NSZone *)a3
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

- (id)updatedConsent:(id)a3
{
  v6 = a3;
  v7 = [(ENRegionUserConsent *)self copy];
  if ([v7 consent] != 4 && !-[ENRegionUserConsent consent](v6, "consent") || (v8 = -[ENRegionUserConsent consent](v6, "consent"), v9 = -[ENRegionUserConsent consent](self, "consent"), v10 = v6, v8 == v9))
  {
    v10 = self;
  }

  [v7 setConsent:{-[ENRegionUserConsent consent](v10, "consent")}];
  v11 = [(ENRegionUserConsent *)v6 consentText];
  v12 = [v11 length];
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = [(ENRegionUserConsent *)v6 consentText];
  v14 = [(ENRegionUserConsent *)self consentText];
  v3 = v13;
  v15 = v14;
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
    v17 = [(ENRegionUserConsent *)self consentText];
    [v7 setConsentText:v17];

    if (!v12)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_15:
  v18 = [(ENRegionUserConsent *)v6 consentText];
  [v7 setConsentText:v18];

LABEL_16:
LABEL_17:

  v19 = [(ENRegionUserConsent *)v6 consentVersion];
  v20 = [v19 length];
  if (!v20 || (-[ENRegionUserConsent consentVersion](v6, "consentVersion"), v3 = objc_claimAutoreleasedReturnValue(), -[ENRegionUserConsent consentVersion](self, "consentVersion"), v4 = objc_claimAutoreleasedReturnValue(), ([v3 isEqualToString:v4] & 1) != 0))
  {
    v22 = [(ENRegionUserConsent *)self consentVersion];
    [v7 setConsentVersion:v22];

    if (!v20)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v21 = [(ENRegionUserConsent *)v6 consentVersion];
    [v7 setConsentVersion:v21];
  }

LABEL_22:
  if ([v7 differentialPrivacyConsent] != 4 && !-[ENRegionUserConsent differentialPrivacyConsent](v6, "differentialPrivacyConsent") || (v23 = -[ENRegionUserConsent differentialPrivacyConsent](v6, "differentialPrivacyConsent"), v24 = -[ENRegionUserConsent differentialPrivacyConsent](self, "differentialPrivacyConsent"), v25 = v6, v23 == v24))
  {
    v25 = self;
  }

  [v7 setDifferentialPrivacyConsent:{-[ENRegionUserConsent differentialPrivacyConsent](v25, "differentialPrivacyConsent")}];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ENRegionUserConsent *)self consent];
    if (v5 == [v4 consent])
    {
      v6 = [(ENRegionUserConsent *)self consentText];
      v7 = [v4 consentText];
      v8 = v6;
      v9 = v7;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        if ((v8 != 0) == (v9 == 0))
        {
          v12 = 0;
          v14 = v9;
          v13 = v8;
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

      v13 = [(ENRegionUserConsent *)self consentVersion];
      v14 = [v4 consentVersion];
      if ([v13 isEqualToString:v14])
      {
        v15 = [(ENRegionUserConsent *)self differentialPrivacyConsent];
        v12 = v15 == [v4 differentialPrivacyConsent];
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

- (void)setConsent:(int64_t)a3
{
  self->_consent = a3;
  v5 = [MEMORY[0x277CBEAA8] date];
  [v5 timeIntervalSince1970];
  self->_consentTimestamp = v4;
}

- (void)setDifferentialPrivacyConsent:(int64_t)a3
{
  self->_differentialPrivacyConsent = a3;
  v5 = [MEMORY[0x277CBEAA8] date];
  [v5 timeIntervalSince1970];
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