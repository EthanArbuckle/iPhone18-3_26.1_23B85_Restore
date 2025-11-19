@interface ENRegionConfiguration
- (BOOL)isEqual:(id)a3;
- (ENRegionConfiguration)initWithCoder:(id)a3;
- (ENRegionConfiguration)initWithVersion:(unint64_t)a3 region:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)updatedWithConfiguration:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ENRegionConfiguration

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ENRegionConfiguration *)self region];
  v5 = [v4 regionCode];
  v6 = [(ENRegionConfiguration *)self enVersion];
  v7 = [(ENRegionConfiguration *)self userConsent];
  [(ENRegionConfiguration *)self creationDateTimeInterval];
  v9 = v8;
  [(ENRegionConfiguration *)self lastConfigurationUpdateTimeInterval];
  v11 = v10;
  v12 = [(ENRegionConfiguration *)self everStartedOnboarding];
  v13 = [(ENRegionConfiguration *)self travelerModeEnabled];
  if (v13 > 2)
  {
    v14 = "?";
  }

  else
  {
    v14 = (&off_278A4BC70)[v13];
  }

  if (v12)
  {
    v15 = "yes";
  }

  else
  {
    v15 = "no";
  }

  if (v7)
  {
    v16 = v7;
  }

  else
  {
    v16 = @"Unknown";
  }

  v17 = [v3 stringWithFormat:@"System - %@, version: %lu, %@, createdOn: %f, lastUpdated: %f, EverOnbrd: %s, Traveler %s, rampMode: %lu", v5, v6, v16, v9, v11, v15, v14, -[ENRegionConfiguration enRampMode](self, "enRampMode")];

  return v17;
}

- (ENRegionConfiguration)initWithVersion:(unint64_t)a3 region:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = ENRegionConfiguration;
  v8 = [(ENRegionConfiguration *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_enVersion = a3;
    objc_storeStrong(&v8->_region, a4);
    v10 = [MEMORY[0x277CBEAA8] date];
    [v10 timeIntervalSince1970];
    v9->_creationDateTimeInterval = v11;
  }

  return v9;
}

- (ENRegionConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = ENRegionConfiguration;
  v5 = [(ENRegionConfiguration *)&v22 init];
  if (v5)
  {
    v6 = [v4 decodeInt64ForKey:@"enVersion"];
    v5->_enVersion = v6;
    if (v6 == 2)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userConsent"];
      if (!v7)
      {
        [ENRegionConfiguration initWithCoder:?];
        goto LABEL_18;
      }

      userConsent = v5->_userConsent;
      v5->_userConsent = v7;
    }

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"region"];
    if (v9)
    {
      v10 = v9;
      objc_storeStrong(&v5->_region, v9);
      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"diagnosisKeysPreAuthorization"];
      diagnosisKeysPreAuthorization = v5->_diagnosisKeysPreAuthorization;
      v5->_diagnosisKeysPreAuthorization = v11;

      v5->_everStartedOnboarding = [v4 decodeBoolForKey:@"everStartedOnboarding"];
      v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"travelerStatusModeEnabled"];
      v14 = v13;
      if (v13)
      {
        v13 = [v13 integerValue];
      }

      v5->_travelerModeEnabled = v13;
      if ([v4 containsValueForKey:@"creationTimeInterval"])
      {
        v15 = @"creationTimeInterval";
      }

      else
      {
        v15 = @"lastConfigurationUpdateTimeInterval";
      }

      [v4 decodeDoubleForKey:v15];
      v5->_creationDateTimeInterval = v16;
      [v4 decodeDoubleForKey:@"lastConfigurationUpdateTimeInterval"];
      v5->_lastConfigurationUpdateTimeInterval = v17;
      v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"enRampMode"];
      v19 = v18;
      if (v18)
      {
        v18 = [v18 unsignedIntegerValue];
      }

      v5->_enRampMode = v18;

      goto LABEL_14;
    }

    [ENRegionConfiguration initWithCoder:?];
LABEL_18:
    v20 = v23;
    goto LABEL_15;
  }

LABEL_14:
  v20 = v5;
LABEL_15:

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  v4 = [(ENRegionConfiguration *)self diagnosisKeysPreAuthorization];
  [v10 encodeObject:v4 forKey:@"diagnosisKeysPreAuthorization"];

  [v10 encodeInt64:-[ENRegionConfiguration enVersion](self forKey:{"enVersion"), @"enVersion"}];
  [v10 encodeBool:-[ENRegionConfiguration everStartedOnboarding](self forKey:{"everStartedOnboarding"), @"everStartedOnboarding"}];
  v5 = [(ENRegionConfiguration *)self region];
  [v10 encodeObject:v5 forKey:@"region"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ENRegionConfiguration travelerModeEnabled](self, "travelerModeEnabled")}];
  [v10 encodeObject:v6 forKey:@"travelerStatusModeEnabled"];

  [(ENRegionConfiguration *)self creationDateTimeInterval];
  [v10 encodeDouble:@"creationTimeInterval" forKey:?];
  [(ENRegionConfiguration *)self lastConfigurationUpdateTimeInterval];
  [v10 encodeDouble:@"lastConfigurationUpdateTimeInterval" forKey:?];
  if ([(ENRegionConfiguration *)self enRampMode])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ENRegionConfiguration enRampMode](self, "enRampMode")}];
    [v10 encodeObject:v7 forKey:@"enRampMode"];
  }

  if ([(ENRegionConfiguration *)self enVersion]== 2)
  {
    v8 = [(ENRegionConfiguration *)self userConsent];

    if (v8)
    {
      v9 = [(ENRegionConfiguration *)self userConsent];
      [v10 encodeObject:v9 forKey:@"userConsent"];
    }

    else
    {
      v9 = ENErrorF(10);
      [v10 failWithError:v9];
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ENRegionConfiguration allocWithZone:a3];
  v5 = [(ENRegionConfiguration *)self enVersion];
  v6 = [(ENRegionConfiguration *)self region];
  v7 = [(ENRegionConfiguration *)v4 initWithVersion:v5 region:v6];

  v8 = [(ENRegionConfiguration *)self diagnosisKeysPreAuthorization];
  [(ENRegionConfiguration *)v7 setDiagnosisKeysPreAuthorization:v8];

  [(ENRegionConfiguration *)v7 setEverStartedOnboarding:[(ENRegionConfiguration *)self everStartedOnboarding]];
  [(ENRegionConfiguration *)v7 setTravelerModeEnabled:[(ENRegionConfiguration *)self travelerModeEnabled]];
  v9 = [(ENRegionConfiguration *)self userConsent];
  [(ENRegionConfiguration *)v7 setUserConsent:v9];

  [(ENRegionConfiguration *)self creationDateTimeInterval];
  [(ENRegionConfiguration *)v7 setCreationDateTimeInterval:?];
  [(ENRegionConfiguration *)self lastConfigurationUpdateTimeInterval];
  [(ENRegionConfiguration *)v7 setLastConfigurationUpdateTimeInterval:?];
  [(ENRegionConfiguration *)v7 setEnRampMode:[(ENRegionConfiguration *)self enRampMode]];
  return v7;
}

- (id)updatedWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(ENRegionConfiguration *)self region];
  v6 = [(ENRegionConfiguration *)v4 region];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = [(ENRegionConfiguration *)self copy];
    if (![(ENRegionConfiguration *)v4 enVersion]|| (v9 = [(ENRegionConfiguration *)v4 enVersion], v10 = [(ENRegionConfiguration *)self enVersion], v11 = v4, v9 == v10))
    {
      v11 = self;
    }

    [v8 setEnVersion:{-[ENRegionConfiguration enVersion](v11, "enVersion")}];
    if (![(ENRegionConfiguration *)v4 travelerModeEnabled]|| (v12 = [(ENRegionConfiguration *)v4 travelerModeEnabled], v13 = [(ENRegionConfiguration *)self travelerModeEnabled], v14 = v4, v12 == v13))
    {
      v14 = self;
    }

    [v8 setTravelerModeEnabled:{-[ENRegionConfiguration travelerModeEnabled](v14, "travelerModeEnabled")}];
    v15 = [MEMORY[0x277CBEAA8] date];
    [v15 timeIntervalSince1970];
    [v8 setLastConfigurationUpdateTimeInterval:?];

    if (![(ENRegionConfiguration *)self everStartedOnboarding])
    {
      [v8 setEverStartedOnboarding:{-[ENRegionConfiguration everStartedOnboarding](v4, "everStartedOnboarding")}];
    }

    v16 = [(ENRegionConfiguration *)v4 userConsent];
    if (v16)
    {
      v17 = [(ENRegionConfiguration *)self userConsent];
      if (v17)
      {
        v18 = [(ENRegionConfiguration *)self userConsent];
        v19 = [v18 updatedConsent:v16];
        [v8 setUserConsent:v19];
      }

      else
      {
        [v8 setUserConsent:v16];
      }
    }

    v20 = [(ENRegionConfiguration *)v4 diagnosisKeysPreAuthorization];
    if (v20)
    {
      [v8 setDiagnosisKeysPreAuthorization:v20];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(ENRegionConfiguration *)self enVersion];
    if (v7 == [v6 enVersion])
    {
      v8 = [(ENRegionConfiguration *)self everStartedOnboarding];
      if (v8 == [v6 everStartedOnboarding])
      {
        v11 = [(ENRegionConfiguration *)self userConsent];
        v12 = [v6 userConsent];
        v13 = v11;
        v14 = v12;
        v15 = v14;
        if (v13 == v14)
        {
        }

        else
        {
          if ((v13 != 0) == (v14 == 0))
          {
            v9 = 0;
            v4 = v14;
            v3 = v13;
            goto LABEL_34;
          }

          v3 = [v13 isEqual:v14];

          if (!v3)
          {
            v9 = 0;
LABEL_35:

            goto LABEL_5;
          }
        }

        v16 = [(ENRegionConfiguration *)self enVersion];
        if (v16 == 1)
        {
          v3 = [(ENRegionConfiguration *)self region];
          v4 = [v3 countryCode];
          v17 = [v4 lowercaseString];
          v33 = [v6 region];
          v32 = [v33 countryCode];
          v18 = [v32 lowercaseString];
          v19 = v17;
          v20 = v18;
          v21 = v20;
          if (v19 == v20)
          {
            v23 = 0;
            v30 = v20;
            v31 = v19;
            goto LABEL_25;
          }

          if ((v19 != 0) != (v20 == 0))
          {
            v22 = [v19 isEqual:v20];

            if (v22)
            {
              v23 = 0;
              v24 = [(ENRegionConfiguration *)self travelerModeEnabled:v21];
              goto LABEL_27;
            }
          }

          else
          {
          }

          v29 = v21;
          v31 = v19;
        }

        v25 = [(ENRegionConfiguration *)self region];
        v26 = [v6 region];
        v19 = v25;
        v27 = v26;
        v21 = v27;
        if (v19 != v27)
        {
          if ((v19 != 0) == (v27 == 0))
          {

            v9 = 0;
LABEL_32:
            if (v16 != 1)
            {
              goto LABEL_35;
            }

LABEL_34:
            goto LABEL_35;
          }

          v28 = [v19 isEqual:v27];

          if ((v28 & 1) == 0)
          {
            v9 = 0;
LABEL_31:

            goto LABEL_32;
          }

          v23 = 1;
          goto LABEL_26;
        }

        v23 = 1;
LABEL_25:

LABEL_26:
        v24 = [(ENRegionConfiguration *)self travelerModeEnabled:v30];
LABEL_27:
        v9 = v24 == [v6 travelerModeEnabled];
        if (!v23)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }
  }

  v9 = 0;
LABEL_5:

  return v9;
}

- (uint64_t)initWithCoder:(uint64_t)result .cold.1(uint64_t result)
{
  v1 = result;
  if (gLogCategory_ENRegionConfiguration <= 90)
  {
    if (gLogCategory_ENRegionConfiguration != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *v1 = 0;
  return result;
}

- (uint64_t)initWithCoder:(uint64_t)result .cold.2(uint64_t result)
{
  v1 = result;
  if (gLogCategory_ENRegionConfiguration <= 90)
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