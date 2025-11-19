@interface ENRegionServerAgencyConfiguration
- (ENRegionServerAgencyConfiguration)initWithCoder:(id)a3;
- (ENRegionServerAgencyConfiguration)initWithRegion:(id)a3;
- (ENRegionServerAgencyConfiguration)initWithServerResponseDictionary:(id)a3 locale:(id)a4;
- (NSString)agencyDisplayName;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ENRegionServerAgencyConfiguration

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v14 = [(ENRegionServerAgencyConfiguration *)self region];
  v3 = [(ENRegionServerAgencyConfiguration *)self agencyDisplayName];
  v4 = [(ENRegionServerAgencyConfiguration *)self agencyColor];
  v5 = [(ENRegionServerAgencyConfiguration *)self agencyImageURL];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ENRegionServerAgencyConfiguration agencyHeaderStyle](self, "agencyHeaderStyle")}];
  v7 = [(ENRegionServerAgencyConfiguration *)self agencyHeaderTextColor];
  v8 = [(ENRegionServerAgencyConfiguration *)self agencyWebsiteURL];
  v9 = [(ENRegionServerAgencyConfiguration *)self verificationCodeLearnMoreURL];
  v10 = [(ENRegionServerAgencyConfiguration *)self webReportURL];
  v11 = [(ENRegionServerAgencyConfiguration *)self localizedConfiguration];
  v12 = [v15 stringWithFormat:@"Agency - %@, [Display Name]: %@, [Color]: %@, [Image]: %@, [Style]: %@, [HeaderTextColor]: %@, [Website]: %@, [VerificationCodeLearnMoreURL]: %@, [WebReportURL]: %@, [Localized Configuration]: %@", v14, v3, v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  region = self->_region;
  v6 = a3;
  [v6 encodeObject:region forKey:@"region"];
  [v6 encodeObject:self->_agencyColor forKey:@"agencyColor"];
  [v6 encodeObject:self->_agencyHeaderTextColor forKey:@"agencyHeaderTextColor"];
  [v6 encodeObject:self->_agencyImageURL forKey:@"agencyImage"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_agencyHeaderStyle];
  [v6 encodeObject:v5 forKey:@"agencyHeaderStyle"];

  [v6 encodeObject:self->_agencyWebsiteURL forKey:@"agencyWebsiteURL"];
  [v6 encodeObject:self->_agencyFAQWebsiteURL forKey:@"agencyFAQWebsiteURL"];
  [v6 encodeObject:self->_localizedConfiguration forKey:@"agencyLocalizations"];
  [v6 encodeObject:self->_revokedClassificationURL forKey:@"revokedURL"];
  [v6 encodeObject:self->_verificationCodeLearnMoreURL forKey:@"verificationCodeLearnMoreURL"];
  [v6 encodeObject:self->_webReportURL forKey:@"webReportURL"];
}

- (NSString)agencyDisplayName
{
  v2 = [(ENRegionServerAgencyConfiguration *)self localizedConfiguration];
  v3 = [v2 displayName];

  return v3;
}

- (ENRegionServerAgencyConfiguration)initWithRegion:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = ENRegionServerAgencyConfiguration;
  v6 = [(ENRegionServerAgencyConfiguration *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_region, a3);
    agencyColor = v7->_agencyColor;
    v7->_agencyColor = &unk_284B0F228;

    agencyHeaderTextColor = v7->_agencyHeaderTextColor;
    v7->_agencyHeaderTextColor = &unk_284B0F240;

    agencyImageURL = v7->_agencyImageURL;
    v7->_agencyImageURL = &stru_284B06230;

    v11 = objc_opt_new();
    OUTLINED_FUNCTION_5(v11);
    v12 = objc_opt_new();
    OUTLINED_FUNCTION_4_0(v12);
    v13 = [[ENRegionServerAgencyLocalizedConfiguration alloc] initWithRegion:v5];
    localizedConfiguration = v7->_localizedConfiguration;
    v7->_localizedConfiguration = v13;

    v15 = v7;
  }

  return v7;
}

- (ENRegionServerAgencyConfiguration)initWithServerResponseDictionary:(id)a3 locale:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v38 = v7;
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v41.receiver = self, v41.super_class = ENRegionServerAgencyConfiguration, (self = [(ENRegionServerAgencyConfiguration *)&v41 init]) == 0))
  {
    v35 = 0;
    goto LABEL_29;
  }

  v8 = [ENRegion regionFromServerResponseDictionary:v6];
  v9 = v8;
  if (!v8)
  {
    v35 = 0;
    goto LABEL_28;
  }

  v10 = [v8 copy];
  region = self->_region;
  self->_region = v10;

  v12 = [v6 objectForKeyedSubscript:@"config"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v35 = 0;
    goto LABEL_27;
  }

  v40 = 0;
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  v13 = NSDictionaryGetNSArrayOfClass();
  objc_storeStrong(&self->_agencyColor, v13);
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  v14 = NSDictionaryGetNSArrayOfClass();
  objc_storeStrong(&self->_agencyHeaderTextColor, v14);
  CFStringGetTypeID();
  OUTLINED_FUNCTION_0_2();
  v15 = CFDictionaryGetTypedValue();
  v16 = v15;
  agencyImageURL = self->_agencyImageURL;
  self->_agencyImageURL = v16;

  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (v40)
  {
    v19 = 0;
  }

  else
  {
    v19 = Int64Ranged;
  }

  self->_agencyHeaderStyle = v19;
  CFStringGetTypeID();
  OUTLINED_FUNCTION_0_2();
  v20 = CFDictionaryGetTypedValue();
  if (v20)
  {
    v21 = [OUTLINED_FUNCTION_2_0() URLWithString:?];
    if (!v21)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_5(v21);
  }

  CFStringGetTypeID();
  OUTLINED_FUNCTION_0_2();
  v20 = CFDictionaryGetTypedValue();
  if (v20)
  {
    v22 = [OUTLINED_FUNCTION_2_0() URLWithString:?];
    if (!v22)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_4_0(v22);
  }

  CFStringGetTypeID();
  OUTLINED_FUNCTION_0_2();
  v20 = CFDictionaryGetTypedValue();
  if (v20)
  {
    v23 = [OUTLINED_FUNCTION_2_0() URLWithString:?];
    if (!v23)
    {
      goto LABEL_30;
    }

    revokedClassificationURL = self->_revokedClassificationURL;
    self->_revokedClassificationURL = v23;
  }

  CFStringGetTypeID();
  OUTLINED_FUNCTION_0_2();
  v20 = CFDictionaryGetTypedValue();
  if (v20)
  {
    v25 = [OUTLINED_FUNCTION_2_0() URLWithString:?];
    if (!v25)
    {
      goto LABEL_30;
    }

    verificationCodeLearnMoreURL = self->_verificationCodeLearnMoreURL;
    self->_verificationCodeLearnMoreURL = v25;
  }

  CFStringGetTypeID();
  OUTLINED_FUNCTION_0_2();
  v20 = CFDictionaryGetTypedValue();
  if (!v20)
  {
LABEL_23:
    v37 = v6;
    v29 = v9;
    v30 = v14;
    v31 = v13;

    v32 = objc_autoreleasePoolPush();
    v39 = 0;
    v33 = [(ENRegionServerAgencyConfiguration *)self region];
    [ENRegionServerAgencyLocalizedConfiguration getLocalizedAgencyConfiguration:&v39 region:v33 fromDictionary:v12 locale:v7];
    v34 = v39;
    v20 = v39;

    objc_autoreleasePoolPop(v32);
    if (v20)
    {
      objc_storeStrong(&self->_localizedConfiguration, v34);
      v35 = self;
    }

    else
    {
      v35 = 0;
    }

    v13 = v31;
    v14 = v30;
    v9 = v29;
    v6 = v37;
    goto LABEL_26;
  }

  v27 = [OUTLINED_FUNCTION_2_0() URLWithString:?];
  if (v27)
  {
    webReportURL = self->_webReportURL;
    self->_webReportURL = v27;

    goto LABEL_23;
  }

LABEL_30:
  v35 = 0;
LABEL_26:

LABEL_27:
LABEL_28:

LABEL_29:
  return v35;
}

- (ENRegionServerAgencyConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ENRegionServerAgencyConfiguration;
  v5 = [(ENRegionServerAgencyConfiguration *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"region"];
    if (v6)
    {
      objc_storeStrong(&v5->_region, v6);
      objc_opt_class();
      NSDecodeNSArrayOfClassIfPresent();

      v6 = 0;
    }
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

@end