@interface ENRegionServerAgencyLocalizedConfiguration
+ (BOOL)getLocalizedAgencyConfiguration:(id *)configuration region:(id)region fromDictionary:(id)dictionary locale:(id)locale;
- (ENRegionServerAgencyLocalizedConfiguration)initWithCoder:(id)coder;
- (ENRegionServerAgencyLocalizedConfiguration)initWithRegion:(id)region;
- (id)description;
- (id)notificationConfigurationForName:(id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ENRegionServerAgencyLocalizedConfiguration

- (id)notificationConfigurationForName:(id)name
{
  v19 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  notificationConfigurations = [(ENRegionServerAgencyLocalizedConfiguration *)self notificationConfigurations];
  v6 = [notificationConfigurations countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(notificationConfigurations);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        classificationName = [v9 classificationName];
        v11 = [classificationName isEqualToString:nameCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [notificationConfigurations countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  locale = [(ENRegionServerAgencyLocalizedConfiguration *)self locale];
  localeIdentifier = [locale localeIdentifier];
  agencyMessage = [(ENRegionServerAgencyLocalizedConfiguration *)self agencyMessage];
  agencyTurndownMessage = [(ENRegionServerAgencyLocalizedConfiguration *)self agencyTurndownMessage];
  legalConsentText = [(ENRegionServerAgencyLocalizedConfiguration *)self legalConsentText];
  revokedNotificationSubject = [(ENRegionServerAgencyLocalizedConfiguration *)self revokedNotificationSubject];
  revokedNotificationBody = [(ENRegionServerAgencyLocalizedConfiguration *)self revokedNotificationBody];
  testVerificationIntroMessage = [(ENRegionServerAgencyLocalizedConfiguration *)self testVerificationIntroMessage];
  testVerificationNotificationBody = [(ENRegionServerAgencyLocalizedConfiguration *)self testVerificationNotificationBody];
  selfReportIntroMessage = [(ENRegionServerAgencyLocalizedConfiguration *)self selfReportIntroMessage];
  selfReportNotificationBody = [(ENRegionServerAgencyLocalizedConfiguration *)self selfReportNotificationBody];
  traveledQuestionText = [(ENRegionServerAgencyLocalizedConfiguration *)self traveledQuestionText];
  vaccinationQuestionText = [(ENRegionServerAgencyLocalizedConfiguration *)self vaccinationQuestionText];
  phaTelemetryOptInMessage = [(ENRegionServerAgencyLocalizedConfiguration *)self phaTelemetryOptInMessage];
  v16 = [v15 stringWithFormat:@"[Locale]: %@, [Message]: %@, [Turndown]: %@, [Legal Consent Text]: %@, [Revoked Notification Title]: %@, [Revoked Notification Body]: %@, [TestVerificationIntroMessage]: %@, [TestVerificationNotificationBody]: %@, [SelfReportIntroMessage]: %@, [SelfReportNotificationBody]: %@, [TraveledQuestionText]: %@, [VaccinationQuestionText]: %@, [PHATelemetryOptInMessage]: %@", localeIdentifier, agencyMessage, agencyTurndownMessage, legalConsentText, revokedNotificationSubject, revokedNotificationBody, testVerificationIntroMessage, testVerificationNotificationBody, selfReportIntroMessage, selfReportNotificationBody, traveledQuestionText, vaccinationQuestionText, phaTelemetryOptInMessage];

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  locale = self->_locale;
  coderCopy = coder;
  [coderCopy encodeObject:locale forKey:@"locale"];
  [coderCopy encodeObject:self->_agencyMessage forKey:@"agencyMessage"];
  [coderCopy encodeObject:self->_agencyTurndownMessage forKey:@"agencyTurndownMessage"];
  [coderCopy encodeObject:self->_displayName forKey:@"agencyDisplayName"];
  [coderCopy encodeObject:self->_legalConsentText forKey:@"legalConsentText"];
  [coderCopy encodeObject:self->_onboardingNotificationBody forKey:@"agencyOnboardingNotificationBody"];
  [coderCopy encodeObject:self->_phaTelemetryOptInMessage forKey:@"telemetryOptInMessage"];
  [coderCopy encodeObject:self->_region forKey:@"region"];
  [coderCopy encodeObject:self->_regionName forKey:@"agencyRegionName"];
  [coderCopy encodeObject:self->_revokedNotificationBody forKey:@"revokedNotificationBody"];
  [coderCopy encodeObject:self->_revokedNotificationSubject forKey:@"revokedNotificationSubject"];
  [coderCopy encodeObject:self->_symptomsOnsetDescription forKey:@"symptomsOnsetDescription"];
  [coderCopy encodeObject:self->_testVerificationIntroMessage forKey:@"testVerificationIntroMessage"];
  [coderCopy encodeObject:self->_testVerificationNotificationBody forKey:@"testVerificationNotificationBody"];
  [coderCopy encodeObject:self->_selfReportIntroMessage forKey:@"selfReportIntroMessage"];
  [coderCopy encodeObject:self->_selfReportNotificationBody forKey:@"selfReportNotificationBody"];
  [coderCopy encodeObject:self->_traveledQuestionText forKey:@"traveledQuestionText"];
  [coderCopy encodeObject:self->_vaccinationQuestionText forKey:@"vaccinationQuestionText"];
  [coderCopy encodeObject:self->_vaccinationQuestionTextAlt forKey:@"vaccinationQuestionTextAlt"];
  [coderCopy encodeObject:self->_notificationConfigurations forKey:@"notifications"];
}

- (ENRegionServerAgencyLocalizedConfiguration)initWithRegion:(id)region
{
  regionCopy = region;
  v15.receiver = self;
  v15.super_class = ENRegionServerAgencyLocalizedConfiguration;
  v6 = [(ENRegionServerAgencyLocalizedConfiguration *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_region, region);
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    locale = v7->_locale;
    v7->_locale = currentLocale;

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

+ (BOOL)getLocalizedAgencyConfiguration:(id *)configuration region:(id)region fromDictionary:(id)dictionary locale:(id)locale
{
  regionCopy = region;
  dictionaryCopy = dictionary;
  localeCopy = locale;
  if (configuration && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = NSDictionaryGetNSNumber();
    v13 = v12;
    v14 = 0;
    if (localeCopy && v12)
    {
      obj = locale;
      localeIdentifier = [localeCopy localeIdentifier];
      uppercaseString = [localeIdentifier uppercaseString];

      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __107__ENRegionServerAgencyLocalizedConfiguration_getLocalizedAgencyConfiguration_region_fromDictionary_locale___block_invoke;
      v60[3] = &unk_278A4B400;
      v17 = uppercaseString;
      v61 = v17;
      v18 = dictionaryCopy;
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
          v47 = regionCopy;
          v20 = (v19)[2](v19, @"legalConsentText");
          v21 = (v19)[2](v19, @"agencyRegionName");
          if (v21)
          {
            configurationCopy = configuration;
            v43 = v17;
            v44 = v13;
            v45 = dictionaryCopy;
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
              [ENRegionServerAgencyExposureNotificationConfiguration getNotificationConfiguration:&v59 fromDictionary:v18 locale:localeCopy index:v23];
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
            *configurationCopy = v27;

            v13 = v44;
            dictionaryCopy = v45;
            v17 = v43;
          }

          v14 = v21 != 0;
          regionCopy = v47;
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

- (ENRegionServerAgencyLocalizedConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  obj = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
  if (obj)
  {
    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"region"];
    if (v27)
    {
      v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"agencyMessage"];
      if (v26)
      {
        v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"agencyTurndownMessage"];
        v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"agencyDisplayName"];
        if (v24)
        {
          v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"legalConsentText"];
          v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"agencyOnboardingNotificationBody"];
          v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"telemetryOptInMessage"];
          v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"agencyRegionName"];
          if (v5)
          {
            v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"revokedNotificationBody"];
            v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"revokedNotificationSubject"];
            v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symptomsOnsetDescription"];
            v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"testVerificationIntroMessage"];
            v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"testVerificationNotificationBody"];
            v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selfReportIntroMessage"];
            v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selfReportNotificationBody"];
            v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"traveledQuestionText"];
            v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vaccinationQuestionText"];
            v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vaccinationQuestionTextAlt"];
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
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end