@interface ENRegionServerNKDConfiguration
- (ENRegionServerNKDConfiguration)initWithCoder:(id)coder;
- (ENRegionServerNKDConfiguration)initWithServerResponseDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ENRegionServerNKDConfiguration

- (void)encodeWithCoder:(id)coder
{
  healthAuthorityID = self->_healthAuthorityID;
  coderCopy = coder;
  [coderCopy encodeObject:healthAuthorityID forKey:@"healthAuthorityID"];
  [coderCopy encodeObject:self->_region forKey:@"region"];
  [coderCopy encodeObject:self->_tekLocalDownloadBaseURL forKey:@"tekLocalDownloadBasePath"];
  [coderCopy encodeObject:self->_tekLocalDownloadIndexURL forKey:@"tekLocalDownloadIndexFile"];
  [coderCopy encodeDouble:@"tekPublishInterval" forKey:self->_tekPublishInterval];
  [coderCopy encodeObject:self->_tekUploadURL forKey:@"tekUploadURL"];
  [coderCopy encodeObject:self->_acceptedReportTypes forKey:@"acceptedReportTypes"];
  [coderCopy encodeObject:self->_testVerificationAPIKey forKey:@"testVerificationAPIKey"];
  [coderCopy encodeObject:self->_testVerificationCertificateURL forKey:@"testVerificationCertificateURL"];
  [coderCopy encodeObject:self->_testVerificationURL forKey:@"testVerificationURL"];
  [coderCopy encodeObject:self->_travelerDownloadConfigurations forKey:@"tekTravelerDownloadURLs"];
}

- (ENRegionServerNKDConfiguration)initWithServerResponseDictionary:(id)dictionary
{
  v55 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v53.receiver = self;
  v53.super_class = ENRegionServerNKDConfiguration;
  v5 = [(ENRegionServerNKDConfiguration *)&v53 init];
  if (!v5)
  {
    v39 = 0;
    goto LABEL_46;
  }

  v52 = 0;
  CFDictionaryGetTypeID();
  v6 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  OUTLINED_FUNCTION_1_0();
  v7 = CFDictionaryGetTypedValue();
  OUTLINED_FUNCTION_5(v7);
  v8 = [ENRegion regionFromServerResponseDictionary:dictionaryCopy];
  v9 = v8;
  if (!v8)
  {
    v39 = 0;
    goto LABEL_45;
  }

  v10 = [v8 copy];
  region = v5->_region;
  v5->_region = v10;

  CFStringGetTypeID();
  OUTLINED_FUNCTION_1_0();
  v12 = CFDictionaryGetTypedValue();
  if (v52)
  {
    v39 = 0;
    goto LABEL_44;
  }

  v13 = [MEMORY[0x277CBEBC0] URLWithString:v12];
  if (!v13)
  {
    v39 = 0;
    goto LABEL_43;
  }

  objc_storeStrong(&v5->_tekLocalDownloadBaseURL, v13);
  CFStringGetTypeID();
  OUTLINED_FUNCTION_1_0();
  v14 = CFDictionaryGetTypedValue();
  v15 = [MEMORY[0x277CBEBC0] URLWithString:v14];
  if (!v15)
  {
    v39 = 0;
    goto LABEL_42;
  }

  v47 = v15;
  objc_storeStrong(&v5->_tekLocalDownloadIndexURL, v15);
  v5->_tekPublishInterval = (3600 * OUTLINED_FUNCTION_3_0());
  CFStringGetTypeID();
  OUTLINED_FUNCTION_1_0();
  v16 = CFDictionaryGetTypedValue();
  if (v16)
  {
    v17 = [MEMORY[0x277CBEBC0] URLWithString:v16];
    if (!v17)
    {
      v39 = 0;
      goto LABEL_41;
    }

    tekUploadURL = v5->_tekUploadURL;
    v5->_tekUploadURL = v17;
  }

  v45 = v13;
  v46 = v12;

  v19 = OUTLINED_FUNCTION_3_0();
  if (v52)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  v21 = [MEMORY[0x277CBEB18] arrayWithObject:&unk_284B0F090];
  v16 = v21;
  if ((v20 & 2) != 0)
  {
    [v21 addObject:&unk_284B0F0A8];
    if ((v20 & 4) == 0)
    {
LABEL_14:
      if ((v20 & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((v20 & 4) == 0)
  {
    goto LABEL_14;
  }

  [v16 addObject:&unk_284B0F0C0];
  if ((v20 & 8) != 0)
  {
LABEL_15:
    [v16 addObject:&unk_284B0F0D8];
  }

LABEL_16:
  v44 = v14;
  if ((v20 & 0x10) != 0)
  {
    [v16 addObject:&unk_284B0F0F0];
  }

  OUTLINED_FUNCTION_4_0([v16 copy]);
  CFStringGetTypeID();
  OUTLINED_FUNCTION_1_0();
  v22 = CFDictionaryGetTypedValue();
  testVerificationAPIKey = v5->_testVerificationAPIKey;
  v5->_testVerificationAPIKey = v22;

  CFStringGetTypeID();
  OUTLINED_FUNCTION_1_0();
  v24 = CFDictionaryGetTypedValue();
  if (v24)
  {
    v25 = [MEMORY[0x277CBEBC0] URLWithString:v24];
    if (!v25)
    {
      goto LABEL_47;
    }

    testVerificationCertificateURL = v5->_testVerificationCertificateURL;
    v5->_testVerificationCertificateURL = v25;
  }

  CFStringGetTypeID();
  OUTLINED_FUNCTION_1_0();
  v24 = CFDictionaryGetTypedValue();
  if (!v24)
  {
LABEL_24:

    CFArrayGetTypeID();
    OUTLINED_FUNCTION_1_0();
    v29 = CFDictionaryGetTypedValue();
    v24 = v29;
    if (v52)
    {
      travelerDownloadConfigurations = v5->_travelerDownloadConfigurations;
      v5->_travelerDownloadConfigurations = MEMORY[0x277CBEBF8];
    }

    else
    {
      v42 = v6;
      v43 = dictionaryCopy;
      travelerDownloadConfigurations = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v29, "count")}];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v31 = v24;
      v32 = [v31 countByEnumeratingWithState:&v48 objects:v54 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v49;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v49 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = [[ENRegionTravelerServerDownloadConfiguration alloc] initWithServerResponseDictionary:*(*(&v48 + 1) + 8 * i)];
            if (v36)
            {
              [travelerDownloadConfigurations addObject:v36];
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v48 objects:v54 count:16];
        }

        while (v33);
      }

      v37 = [travelerDownloadConfigurations copy];
      v38 = v5->_travelerDownloadConfigurations;
      v5->_travelerDownloadConfigurations = v37;

      v6 = v42;
      dictionaryCopy = v43;
    }

    v39 = v5;
    goto LABEL_40;
  }

  v27 = [MEMORY[0x277CBEBC0] URLWithString:v24];
  if (v27)
  {
    testVerificationURL = v5->_testVerificationURL;
    v5->_testVerificationURL = v27;

    goto LABEL_24;
  }

LABEL_47:
  v39 = 0;
LABEL_40:
  v13 = v45;
  v12 = v46;

  v14 = v44;
LABEL_41:

  v15 = v47;
LABEL_42:

LABEL_43:
LABEL_44:

LABEL_45:
LABEL_46:

  v40 = *MEMORY[0x277D85DE8];
  return v39;
}

- (ENRegionServerNKDConfiguration)initWithCoder:(id)coder
{
  v38[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  obj = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tekLocalDownloadBasePath"];
  if (obj)
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tekLocalDownloadIndexFile"];
    if (v5)
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"region"];
      if (v6)
      {
        v7 = MEMORY[0x277CBEB98];
        v38[0] = objc_opt_class();
        v38[1] = objc_opt_class();
        v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
        v9 = [v7 setWithArray:v8];

        v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"tekTravelerDownloadURLs"];
        if (v10)
        {
          v11 = MEMORY[0x277CBEB98];
          v37[0] = objc_opt_class();
          v37[1] = objc_opt_class();
          v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
          v13 = [v11 setWithArray:v12];

          v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"acceptedReportTypes"];
          v15 = v14;
          if (v14)
          {
            v16 = v14;
          }

          else
          {
            v16 = &unk_284B0F210;
          }

          v17 = v16;

          v36.receiver = self;
          v36.super_class = ENRegionServerNKDConfiguration;
          v18 = [(ENRegionServerNKDConfiguration *)&v36 init];
          if (v18)
          {
            v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"healthAuthorityID"];
            healthAuthorityID = v18->_healthAuthorityID;
            v18->_healthAuthorityID = v19;

            objc_storeStrong(&v18->_region, v6);
            objc_storeStrong(&v18->_tekLocalDownloadBaseURL, obj);
            objc_storeStrong(&v18->_tekLocalDownloadIndexURL, v5);
            [coderCopy decodeDoubleForKey:@"tekPublishInterval"];
            v18->_tekPublishInterval = v21;
            v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tekUploadURL"];
            tekUploadURL = v18->_tekUploadURL;
            v18->_tekUploadURL = v22;

            objc_storeStrong(&v18->_acceptedReportTypes, v16);
            v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"testVerificationAPIKey"];
            testVerificationAPIKey = v18->_testVerificationAPIKey;
            v18->_testVerificationAPIKey = v24;

            v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"testVerificationCertificateURL"];
            testVerificationCertificateURL = v18->_testVerificationCertificateURL;
            v18->_testVerificationCertificateURL = v26;

            v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"testVerificationURL"];
            testVerificationURL = v18->_testVerificationURL;
            v18->_testVerificationURL = v28;

            v30 = [v10 copy];
            travelerDownloadConfigurations = v18->_travelerDownloadConfigurations;
            v18->_travelerDownloadConfigurations = v30;
          }

          self = v18;

          v9 = v13;
          selfCopy = self;
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

@end