@interface ENRegionServerAgencyLocalizedConfiguration
+ (BOOL)getLocalizedAgencyConfiguration:(id *)a3 region:(id)a4 fromDictionary:(id)a5 locale:(id)a6;
- (ENRegionServerAgencyLocalizedConfiguration)initWithCoder:(id)a3;
- (ENRegionServerAgencyLocalizedConfiguration)initWithRegion:(id)a3;
- (id)description;
- (id)notificationConfigurationForName:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ENRegionServerAgencyLocalizedConfiguration

- (id)notificationConfigurationForName:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(ENRegionServerAgencyLocalizedConfiguration *)self notificationConfigurations];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 classificationName];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

id __107__ENRegionServerAgencyLocalizedConfiguration_getLocalizedAgencyConfiguration_region_fromDictionary_locale___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:@"%@_%@", v4, *(a1 + 32)];

  v6 = *(a1 + 40);
  CFStringGetTypeID();
  v7 = CFDictionaryGetTypedValue();
  v8 = v7;

  return v8;
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v17 = [(ENRegionServerAgencyLocalizedConfiguration *)self locale];
  v19 = [v17 localeIdentifier];
  v14 = [(ENRegionServerAgencyLocalizedConfiguration *)self agencyMessage];
  v18 = [(ENRegionServerAgencyLocalizedConfiguration *)self agencyTurndownMessage];
  v3 = [(ENRegionServerAgencyLocalizedConfiguration *)self legalConsentText];
  v4 = [(ENRegionServerAgencyLocalizedConfiguration *)self revokedNotificationSubject];
  v5 = [(ENRegionServerAgencyLocalizedConfiguration *)self revokedNotificationBody];
  v6 = [(ENRegionServerAgencyLocalizedConfiguration *)self testVerificationIntroMessage];
  v13 = [(ENRegionServerAgencyLocalizedConfiguration *)self testVerificationNotificationBody];
  v7 = [(ENRegionServerAgencyLocalizedConfiguration *)self selfReportIntroMessage];
  v8 = [(ENRegionServerAgencyLocalizedConfiguration *)self selfReportNotificationBody];
  v9 = [(ENRegionServerAgencyLocalizedConfiguration *)self traveledQuestionText];
  v10 = [(ENRegionServerAgencyLocalizedConfiguration *)self vaccinationQuestionText];
  v11 = [(ENRegionServerAgencyLocalizedConfiguration *)self phaTelemetryOptInMessage];
  v16 = [v15 stringWithFormat:@"[Locale]: %@, [Message]: %@, [Turndown]: %@, [Legal Consent Text]: %@, [Revoked Notification Title]: %@, [Revoked Notification Body]: %@, [TestVerificationIntroMessage]: %@, [TestVerificationNotificationBody]: %@, [SelfReportIntroMessage]: %@, [SelfReportNotificationBody]: %@, [TraveledQuestionText]: %@, [VaccinationQuestionText]: %@, [PHATelemetryOptInMessage]: %@", v19, v14, v18, v3, v4, v5, v6, v13, v7, v8, v9, v10, v11];

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  locale = self->_locale;
  v5 = a3;
  [v5 encodeObject:locale forKey:@"locale"];
  [v5 encodeObject:self->_agencyMessage forKey:@"agencyMessage"];
  [v5 encodeObject:self->_agencyTurndownMessage forKey:@"agencyTurndownMessage"];
  [v5 encodeObject:self->_displayName forKey:@"agencyDisplayName"];
  [v5 encodeObject:self->_legalConsentText forKey:@"legalConsentText"];
  [v5 encodeObject:self->_onboardingNotificationBody forKey:@"agencyOnboardingNotificationBody"];
  [v5 encodeObject:self->_phaTelemetryOptInMessage forKey:@"telemetryOptInMessage"];
  [v5 encodeObject:self->_region forKey:@"region"];
  [v5 encodeObject:self->_regionName forKey:@"agencyRegionName"];
  [v5 encodeObject:self->_revokedNotificationBody forKey:@"revokedNotificationBody"];
  [v5 encodeObject:self->_revokedNotificationSubject forKey:@"revokedNotificationSubject"];
  [v5 encodeObject:self->_symptomsOnsetDescription forKey:@"symptomsOnsetDescription"];
  [v5 encodeObject:self->_testVerificationIntroMessage forKey:@"testVerificationIntroMessage"];
  [v5 encodeObject:self->_testVerificationNotificationBody forKey:@"testVerificationNotificationBody"];
  [v5 encodeObject:self->_selfReportIntroMessage forKey:@"selfReportIntroMessage"];
  [v5 encodeObject:self->_selfReportNotificationBody forKey:@"selfReportNotificationBody"];
  [v5 encodeObject:self->_traveledQuestionText forKey:@"traveledQuestionText"];
  [v5 encodeObject:self->_vaccinationQuestionText forKey:@"vaccinationQuestionText"];
  [v5 encodeObject:self->_vaccinationQuestionTextAlt forKey:@"vaccinationQuestionTextAlt"];
  [v5 encodeObject:self->_notificationConfigurations forKey:@"notifications"];
}

- (ENRegionServerAgencyLocalizedConfiguration)initWithRegion:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = ENRegionServerAgencyLocalizedConfiguration;
  v6 = [(ENRegionServerAgencyLocalizedConfiguration *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_region, a3);
    v8 = [MEMORY[0x277CBEAF8] currentLocale];
    locale = v7->_locale;
    v7->_locale = v8;

    agencyMessage = v7->_agencyMessage;
    v7->_agencyMessage = &stru_284B06230;

    displayName = v7->_displayName;
    v7->_displayName = &stru_284B06230;

    regionName = v7->_regionName;
    v7->_regionName = &stru_284B06230;

    v13 = v7;
  }

  return v7;
}

+ (BOOL)getLocalizedAgencyConfiguration:(id *)a3 region:(id)a4 fromDictionary:(id)a5 locale:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if (a3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = NSDictionaryGetNSNumber();
    v13 = v12;
    v14 = 0;
    if (v11 && v12)
    {
      obj = a6;
      v15 = [v11 localeIdentifier];
      v16 = [v15 uppercaseString];

      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __107__ENRegionServerAgencyLocalizedConfiguration_getLocalizedAgencyConfiguration_region_fromDictionary_locale___block_invoke;
      v60[3] = &unk_278A4B400;
      v17 = v16;
      v61 = v17;
      v18 = v10;
      v62 = v18;
      v63 = v13;
      v19 = MEMORY[0x2383EE560](v60);
      v58 = (v19)[2](v19, @"testVerificationIntroMessage");
      v57 = (v19)[2](v19, @"testVerificationNotificationBody");
      v56 = (v19)[2](v19, @"selfReportIntroMessage");
      v55 = (v19)[2](v19, @"selfReportNotificationBody");
      v54 = (v19)[2](v19, @"symptomsOnsetDescription");
      v53 = (v19)[2](v19, @"agencyMessage");
      if (v53)
      {
        v52 = (v19)[2](v19, @"agencyTurndownMessage");
        v51 = (v19)[2](v19, @"traveledQuestionText");
        v50 = (v19)[2](v19, @"vaccinationQuestionText");
        v49 = (v19)[2](v19, @"vaccinationQuestionTextAlt");
        v48 = (v19)[2](v19, @"agencyDisplayName");
        if (v48)
        {
          v47 = v9;
          v20 = (v19)[2](v19, @"legalConsentText");
          v21 = (v19)[2](v19, @"agencyRegionName");
          if (v21)
          {
            v42 = a3;
            v43 = v17;
            v44 = v13;
            v45 = v10;
            v39 = (v19)[2](v19, @"revokedNotificationBody");
            v40 = (v19)[2](v19, @"revokedNotificationSubject");
            v41 = (v19)[2](v19, @"telemetryOptInMessage");
            v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v23 = 1;
            do
            {
              v24 = objc_autoreleasePoolPush();
              v59 = 0;
              v25 = v23;
              [ENRegionServerAgencyExposureNotificationConfiguration getNotificationConfiguration:&v59 fromDictionary:v18 locale:v11 index:v23];
              v26 = v59;
              objc_autoreleasePoolPop(v24);
              if (v26)
              {
                [v22 addObject:v26];
              }

              ++v23;
            }

            while (v25 < 4);
            v27 = [[ENRegionServerAgencyLocalizedConfiguration alloc] initWithRegion:v47];
            objc_storeStrong(&v27->_locale, obj);
            objc_storeStrong(&v27->_testVerificationIntroMessage, v58);
            objc_storeStrong(&v27->_testVerificationNotificationBody, v57);
            objc_storeStrong(&v27->_selfReportIntroMessage, v56);
            objc_storeStrong(&v27->_selfReportNotificationBody, v55);
            objc_storeStrong(&v27->_symptomsOnsetDescription, v54);
            objc_storeStrong(&v27->_agencyMessage, v53);
            objc_storeStrong(&v27->_agencyTurndownMessage, v52);
            objc_storeStrong(&v27->_traveledQuestionText, v51);
            objc_storeStrong(&v27->_vaccinationQuestionText, v50);
            objc_storeStrong(&v27->_vaccinationQuestionTextAlt, v49);
            objc_storeStrong(&v27->_displayName, v48);
            objc_storeStrong(&v27->_legalConsentText, v20);
            onboardingNotificationBody = v27->_onboardingNotificationBody;
            v27->_onboardingNotificationBody = &stru_284B06230;

            objc_storeStrong(&v27->_regionName, v21);
            revokedNotificationBody = v27->_revokedNotificationBody;
            v27->_revokedNotificationBody = v39;
            v30 = v39;

            revokedNotificationSubject = v27->_revokedNotificationSubject;
            v27->_revokedNotificationSubject = v40;
            v32 = v40;

            phaTelemetryOptInMessage = v27->_phaTelemetryOptInMessage;
            v27->_phaTelemetryOptInMessage = v41;
            v34 = v41;

            v35 = [v22 copy];
            notificationConfigurations = v27->_notificationConfigurations;
            v27->_notificationConfigurations = v35;

            v37 = v27;
            *v42 = v27;

            v13 = v44;
            v10 = v45;
            v17 = v43;
          }

          v14 = v21 != 0;
          v9 = v47;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (ENRegionServerAgencyLocalizedConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  obj = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
  if (obj)
  {
    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"region"];
    if (v27)
    {
      v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"agencyMessage"];
      if (v26)
      {
        v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"agencyTurndownMessage"];
        v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"agencyDisplayName"];
        if (v24)
        {
          v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"legalConsentText"];
          v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"agencyOnboardingNotificationBody"];
          v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"telemetryOptInMessage"];
          v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"agencyRegionName"];
          if (v5)
          {
            v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"revokedNotificationBody"];
            v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"revokedNotificationSubject"];
            v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"symptomsOnsetDescription"];
            v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"testVerificationIntroMessage"];
            v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"testVerificationNotificationBody"];
            v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selfReportIntroMessage"];
            v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selfReportNotificationBody"];
            v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"traveledQuestionText"];
            v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vaccinationQuestionText"];
            v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vaccinationQuestionTextAlt"];
            v30 = 0;
            objc_opt_class();
            NSDecodeNSArrayOfClassIfPresent();
            v29.receiver = self;
            v29.super_class = ENRegionServerAgencyLocalizedConfiguration;
            v13 = [(ENRegionServerAgencyLocalizedConfiguration *)&v29 init];
            p_isa = &v13->super.isa;
            if (v13)
            {
              objc_storeStrong(&v13->_locale, obj);
              objc_storeStrong(p_isa + 2, v27);
              objc_storeStrong(p_isa + 13, v6);
              objc_storeStrong(p_isa + 14, v7);
              objc_storeStrong(p_isa + 19, v8);
              objc_storeStrong(p_isa + 18, v9);
              objc_storeStrong(p_isa + 12, v18);
              objc_storeStrong(p_isa + 3, v26);
              objc_storeStrong(p_isa + 4, v25);
              objc_storeStrong(p_isa + 15, v10);
              objc_storeStrong(p_isa + 16, v11);
              objc_storeStrong(p_isa + 17, v12);
              objc_storeStrong(p_isa + 5, v24);
              objc_storeStrong(p_isa + 6, v23);
              objc_storeStrong(p_isa + 7, v22);
              objc_storeStrong(p_isa + 8, v21);
              objc_storeStrong(p_isa + 9, v5);
              objc_storeStrong(p_isa + 10, v20);
              objc_storeStrong(p_isa + 11, v19);
              if (v30)
              {
                v15 = v30;
              }

              else
              {
                v15 = MEMORY[0x277CBEBF8];
              }

              objc_storeStrong(p_isa + 20, v15);
            }

            self = p_isa;

            v16 = self;
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end