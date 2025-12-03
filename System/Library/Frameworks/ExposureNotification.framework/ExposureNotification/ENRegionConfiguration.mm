@interface ENRegionConfiguration
- (BOOL)isEqual:(id)equal;
- (ENRegionConfiguration)initWithCoder:(id)coder;
- (ENRegionConfiguration)initWithVersion:(unint64_t)version region:(id)region;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)updatedWithConfiguration:(id)configuration;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ENRegionConfiguration

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  region = [(ENRegionConfiguration *)self region];
  regionCode = [region regionCode];
  enVersion = [(ENRegionConfiguration *)self enVersion];
  userConsent = [(ENRegionConfiguration *)self userConsent];
  [(ENRegionConfiguration *)self creationDateTimeInterval];
  v9 = v8;
  [(ENRegionConfiguration *)self lastConfigurationUpdateTimeInterval];
  v11 = v10;
  everStartedOnboarding = [(ENRegionConfiguration *)self everStartedOnboarding];
  travelerModeEnabled = [(ENRegionConfiguration *)self travelerModeEnabled];
  if (travelerModeEnabled > 2)
  {
    v14 = "?";
  }

  else
  {
    v14 = (&off_278A4BC70)[travelerModeEnabled];
  }

  if (everStartedOnboarding)
  {
    v15 = "yes";
  }

  else
  {
    v15 = "no";
  }

  if (userConsent)
  {
    v16 = userConsent;
  }

  else
  {
    v16 = @"Unknown";
  }

  v17 = [v3 stringWithFormat:@"System - %@, version: %lu, %@, createdOn: %f, lastUpdated: %f, EverOnbrd: %s, Traveler %s, rampMode: %lu", regionCode, enVersion, v16, v9, v11, v15, v14, -[ENRegionConfiguration enRampMode](self, "enRampMode")];

  return v17;
}

- (ENRegionConfiguration)initWithVersion:(unint64_t)version region:(id)region
{
  regionCopy = region;
  v13.receiver = self;
  v13.super_class = ENRegionConfiguration;
  v8 = [(ENRegionConfiguration *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_enVersion = version;
    objc_storeStrong(&v8->_region, region);
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v9->_creationDateTimeInterval = v11;
  }

  return v9;
}

- (ENRegionConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = ENRegionConfiguration;
  v5 = [(ENRegionConfiguration *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeInt64ForKey:@"enVersion"];
    v5->_enVersion = v6;
    if (v6 == 2)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userConsent"];
      if (!v7)
      {
        [ENRegionConfiguration initWithCoder:?];
        goto LABEL_18;
      }

      userConsent = v5->_userConsent;
      v5->_userConsent = v7;
    }

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"region"];
    if (v9)
    {
      v10 = v9;
      objc_storeStrong(&v5->_region, v9);
      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"diagnosisKeysPreAuthorization"];
      diagnosisKeysPreAuthorization = v5->_diagnosisKeysPreAuthorization;
      v5->_diagnosisKeysPreAuthorization = v11;

      v5->_everStartedOnboarding = [coderCopy decodeBoolForKey:@"everStartedOnboarding"];
      integerValue = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"travelerStatusModeEnabled"];
      v14 = integerValue;
      if (integerValue)
      {
        integerValue = [integerValue integerValue];
      }

      v5->_travelerModeEnabled = integerValue;
      if ([coderCopy containsValueForKey:@"creationTimeInterval"])
      {
        v15 = @"creationTimeInterval";
      }

      else
      {
        v15 = @"lastConfigurationUpdateTimeInterval";
      }

      [coderCopy decodeDoubleForKey:v15];
      v5->_creationDateTimeInterval = v16;
      [coderCopy decodeDoubleForKey:@"lastConfigurationUpdateTimeInterval"];
      v5->_lastConfigurationUpdateTimeInterval = v17;
      unsignedIntegerValue = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enRampMode"];
      v19 = unsignedIntegerValue;
      if (unsignedIntegerValue)
      {
        unsignedIntegerValue = [unsignedIntegerValue unsignedIntegerValue];
      }

      v5->_enRampMode = unsignedIntegerValue;

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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  diagnosisKeysPreAuthorization = [(ENRegionConfiguration *)self diagnosisKeysPreAuthorization];
  [coderCopy encodeObject:diagnosisKeysPreAuthorization forKey:@"diagnosisKeysPreAuthorization"];

  [coderCopy encodeInt64:-[ENRegionConfiguration enVersion](self forKey:{"enVersion"), @"enVersion"}];
  [coderCopy encodeBool:-[ENRegionConfiguration everStartedOnboarding](self forKey:{"everStartedOnboarding"), @"everStartedOnboarding"}];
  region = [(ENRegionConfiguration *)self region];
  [coderCopy encodeObject:region forKey:@"region"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ENRegionConfiguration travelerModeEnabled](self, "travelerModeEnabled")}];
  [coderCopy encodeObject:v6 forKey:@"travelerStatusModeEnabled"];

  [(ENRegionConfiguration *)self creationDateTimeInterval];
  [coderCopy encodeDouble:@"creationTimeInterval" forKey:?];
  [(ENRegionConfiguration *)self lastConfigurationUpdateTimeInterval];
  [coderCopy encodeDouble:@"lastConfigurationUpdateTimeInterval" forKey:?];
  if ([(ENRegionConfiguration *)self enRampMode])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ENRegionConfiguration enRampMode](self, "enRampMode")}];
    [coderCopy encodeObject:v7 forKey:@"enRampMode"];
  }

  if ([(ENRegionConfiguration *)self enVersion]== 2)
  {
    userConsent = [(ENRegionConfiguration *)self userConsent];

    if (userConsent)
    {
      userConsent2 = [(ENRegionConfiguration *)self userConsent];
      [coderCopy encodeObject:userConsent2 forKey:@"userConsent"];
    }

    else
    {
      userConsent2 = ENErrorF(10);
      [coderCopy failWithError:userConsent2];
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ENRegionConfiguration allocWithZone:zone];
  enVersion = [(ENRegionConfiguration *)self enVersion];
  region = [(ENRegionConfiguration *)self region];
  v7 = [(ENRegionConfiguration *)v4 initWithVersion:enVersion region:region];

  diagnosisKeysPreAuthorization = [(ENRegionConfiguration *)self diagnosisKeysPreAuthorization];
  [(ENRegionConfiguration *)v7 setDiagnosisKeysPreAuthorization:diagnosisKeysPreAuthorization];

  [(ENRegionConfiguration *)v7 setEverStartedOnboarding:[(ENRegionConfiguration *)self everStartedOnboarding]];
  [(ENRegionConfiguration *)v7 setTravelerModeEnabled:[(ENRegionConfiguration *)self travelerModeEnabled]];
  userConsent = [(ENRegionConfiguration *)self userConsent];
  [(ENRegionConfiguration *)v7 setUserConsent:userConsent];

  [(ENRegionConfiguration *)self creationDateTimeInterval];
  [(ENRegionConfiguration *)v7 setCreationDateTimeInterval:?];
  [(ENRegionConfiguration *)self lastConfigurationUpdateTimeInterval];
  [(ENRegionConfiguration *)v7 setLastConfigurationUpdateTimeInterval:?];
  [(ENRegionConfiguration *)v7 setEnRampMode:[(ENRegionConfiguration *)self enRampMode]];
  return v7;
}

- (id)updatedWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  region = [(ENRegionConfiguration *)self region];
  region2 = [(ENRegionConfiguration *)configurationCopy region];
  v7 = [region isEqual:region2];

  if (v7)
  {
    v8 = [(ENRegionConfiguration *)self copy];
    if (![(ENRegionConfiguration *)configurationCopy enVersion]|| (v9 = [(ENRegionConfiguration *)configurationCopy enVersion], v10 = [(ENRegionConfiguration *)self enVersion], selfCopy = configurationCopy, v9 == v10))
    {
      selfCopy = self;
    }

    [v8 setEnVersion:{-[ENRegionConfiguration enVersion](selfCopy, "enVersion")}];
    if (![(ENRegionConfiguration *)configurationCopy travelerModeEnabled]|| (v12 = [(ENRegionConfiguration *)configurationCopy travelerModeEnabled], v13 = [(ENRegionConfiguration *)self travelerModeEnabled], selfCopy2 = configurationCopy, v12 == v13))
    {
      selfCopy2 = self;
    }

    [v8 setTravelerModeEnabled:{-[ENRegionConfiguration travelerModeEnabled](selfCopy2, "travelerModeEnabled")}];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    [v8 setLastConfigurationUpdateTimeInterval:?];

    if (![(ENRegionConfiguration *)self everStartedOnboarding])
    {
      [v8 setEverStartedOnboarding:{-[ENRegionConfiguration everStartedOnboarding](configurationCopy, "everStartedOnboarding")}];
    }

    userConsent = [(ENRegionConfiguration *)configurationCopy userConsent];
    if (userConsent)
    {
      userConsent2 = [(ENRegionConfiguration *)self userConsent];
      if (userConsent2)
      {
        userConsent3 = [(ENRegionConfiguration *)self userConsent];
        v19 = [userConsent3 updatedConsent:userConsent];
        [v8 setUserConsent:v19];
      }

      else
      {
        [v8 setUserConsent:userConsent];
      }
    }

    diagnosisKeysPreAuthorization = [(ENRegionConfiguration *)configurationCopy diagnosisKeysPreAuthorization];
    if (diagnosisKeysPreAuthorization)
    {
      [v8 setDiagnosisKeysPreAuthorization:diagnosisKeysPreAuthorization];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    enVersion = [(ENRegionConfiguration *)self enVersion];
    if (enVersion == [equalCopy enVersion])
    {
      everStartedOnboarding = [(ENRegionConfiguration *)self everStartedOnboarding];
      if (everStartedOnboarding == [equalCopy everStartedOnboarding])
      {
        userConsent = [(ENRegionConfiguration *)self userConsent];
        userConsent2 = [equalCopy userConsent];
        v13 = userConsent;
        v14 = userConsent2;
        v15 = v14;
        if (v13 == v14)
        {
        }

        else
        {
          if ((v13 != 0) == (v14 == 0))
          {
            v9 = 0;
            countryCode = v14;
            region = v13;
            goto LABEL_34;
          }

          region = [v13 isEqual:v14];

          if (!region)
          {
            v9 = 0;
LABEL_35:

            goto LABEL_5;
          }
        }

        enVersion2 = [(ENRegionConfiguration *)self enVersion];
        if (enVersion2 == 1)
        {
          region = [(ENRegionConfiguration *)self region];
          countryCode = [region countryCode];
          lowercaseString = [countryCode lowercaseString];
          region2 = [equalCopy region];
          countryCode2 = [region2 countryCode];
          lowercaseString2 = [countryCode2 lowercaseString];
          v19 = lowercaseString;
          v20 = lowercaseString2;
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

        region3 = [(ENRegionConfiguration *)self region];
        region4 = [equalCopy region];
        v19 = region3;
        v27 = region4;
        v21 = v27;
        if (v19 != v27)
        {
          if ((v19 != 0) == (v27 == 0))
          {

            v9 = 0;
LABEL_32:
            if (enVersion2 != 1)
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
        v9 = v24 == [equalCopy travelerModeEnabled];
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