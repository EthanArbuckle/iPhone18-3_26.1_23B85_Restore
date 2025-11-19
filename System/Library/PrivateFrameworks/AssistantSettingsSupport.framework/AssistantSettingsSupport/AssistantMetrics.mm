@interface AssistantMetrics
+ (id)sharedMetrics;
+ (void)didDetailVisit:(id)a3;
+ (void)didVisit;
- (id)__confirmedTrueFalseProperty;
- (id)__detailToggleFoundInAppsTracker;
- (id)__detailToggleSearchTracker;
- (id)__detailToggleSiriKitTracker;
- (id)__detailToggleTrackerNameProperty;
- (id)__detailVisitFoundInAppsTracker;
- (id)__detailVisitTracker;
- (id)__disableSiriTracker;
- (id)__enableSiriTracker;
- (id)__foundInAppsProperty;
- (id)__onOffProperty;
- (id)__siriSourceProperty;
- (id)__startEnrollmentTracker;
- (id)__toggleTracker;
- (id)__toggleTrackerNameProperty;
- (id)__visitTracker;
- (void)logDetailToggle:(id)a3 bundleId:(id)a4 on:(BOOL)a5;
- (void)logDetailVisit:(id)a3;
- (void)logDisableSiriConfirmed:(BOOL)a3 source:(id)a4;
- (void)logEnableSiriConfirmed:(BOOL)a3 source:(id)a4;
- (void)logStartEnrollment:(BOOL)a3;
- (void)logToggle:(id)a3 on:(BOOL)a4;
- (void)logVisit;
@end

@implementation AssistantMetrics

+ (id)sharedMetrics
{
  if (sharedMetrics_onceToken != -1)
  {
    +[AssistantMetrics sharedMetrics];
  }

  v3 = sharedMetrics_sSharedMetrics;

  return v3;
}

uint64_t __33__AssistantMetrics_sharedMetrics__block_invoke()
{
  sharedMetrics_sSharedMetrics = objc_alloc_init(AssistantMetrics);

  return MEMORY[0x2821F96F8]();
}

+ (void)didVisit
{
  v2 = +[AssistantMetrics sharedMetrics];
  [v2 logVisit];
}

+ (void)didDetailVisit:(id)a3
{
  v3 = a3;
  v4 = +[AssistantMetrics sharedMetrics];
  [v4 logDetailVisit:v3];
}

- (id)__onOffProperty
{
  v10[2] = *MEMORY[0x277D85DE8];
  onOffProperty = self->_onOffProperty;
  if (!onOffProperty)
  {
    PETEventPropertyClass = getPETEventPropertyClass();
    v10[0] = @"on";
    v10[1] = @"off";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
    v6 = [PETEventPropertyClass propertyWithName:@"val" possibleValues:v5];
    v7 = self->_onOffProperty;
    self->_onOffProperty = v6;

    onOffProperty = self->_onOffProperty;
  }

  v8 = *MEMORY[0x277D85DE8];

  return onOffProperty;
}

- (id)__confirmedTrueFalseProperty
{
  v10[2] = *MEMORY[0x277D85DE8];
  confirmedTrueFalseProperty = self->_confirmedTrueFalseProperty;
  if (!confirmedTrueFalseProperty)
  {
    PETEventPropertyClass = getPETEventPropertyClass();
    v10[0] = @"true";
    v10[1] = @"false";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
    v6 = [PETEventPropertyClass propertyWithName:@"conf" possibleValues:v5];
    v7 = self->_confirmedTrueFalseProperty;
    self->_confirmedTrueFalseProperty = v6;

    confirmedTrueFalseProperty = self->_confirmedTrueFalseProperty;
  }

  v8 = *MEMORY[0x277D85DE8];

  return confirmedTrueFalseProperty;
}

- (id)__toggleTrackerNameProperty
{
  v10[4] = *MEMORY[0x277D85DE8];
  toggleTrackerNameProperty = self->_toggleTrackerNameProperty;
  if (!toggleTrackerNameProperty)
  {
    PETEventPropertyClass = getPETEventPropertyClass();
    v10[0] = @"HeySiri";
    v10[1] = @"HardwareButton";
    v10[2] = @"Lockscreen";
    v10[3] = @"Search";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:4];
    v6 = [PETEventPropertyClass propertyWithName:@"name" possibleValues:v5];
    v7 = self->_toggleTrackerNameProperty;
    self->_toggleTrackerNameProperty = v6;

    toggleTrackerNameProperty = self->_toggleTrackerNameProperty;
  }

  v8 = *MEMORY[0x277D85DE8];

  return toggleTrackerNameProperty;
}

- (id)__detailToggleTrackerNameProperty
{
  v10[6] = *MEMORY[0x277D85DE8];
  detailToggleTrackerNameProperty = self->_detailToggleTrackerNameProperty;
  if (!detailToggleTrackerNameProperty)
  {
    PETEventPropertyClass = getPETEventPropertyClass();
    v10[0] = @"sirisearch";
    v10[1] = @"sirikit";
    v10[2] = @"foundinapps";
    v10[3] = @"portraittopics";
    v10[4] = @"inAppShow";
    v10[5] = @"inAppLearn";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:6];
    v6 = [PETEventPropertyClass propertyWithName:@"name" possibleValues:v5];
    v7 = self->_detailToggleTrackerNameProperty;
    self->_detailToggleTrackerNameProperty = v6;

    detailToggleTrackerNameProperty = self->_detailToggleTrackerNameProperty;
  }

  v8 = *MEMORY[0x277D85DE8];

  return detailToggleTrackerNameProperty;
}

- (id)__siriSourceProperty
{
  v10[3] = *MEMORY[0x277D85DE8];
  siriSourceProperty = self->_siriSourceProperty;
  if (!siriSourceProperty)
  {
    PETEventPropertyClass = getPETEventPropertyClass();
    v10[0] = @"HeySiri";
    v10[1] = @"HardwareButton";
    v10[2] = @"Unknown";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
    v6 = [PETEventPropertyClass propertyWithName:@"source" possibleValues:v5];
    v7 = self->_siriSourceProperty;
    self->_siriSourceProperty = v6;

    siriSourceProperty = self->_siriSourceProperty;
  }

  v8 = *MEMORY[0x277D85DE8];

  return siriSourceProperty;
}

- (id)__foundInAppsProperty
{
  v10[6] = *MEMORY[0x277D85DE8];
  foundInAppsProperty = self->_foundInAppsProperty;
  if (!foundInAppsProperty)
  {
    PETEventPropertyClass = getPETEventPropertyClass();
    v10[0] = @"com.apple.Maps";
    v10[1] = @"com.apple.mobilemail";
    v10[2] = @"com.apple.MobileSMS";
    v10[3] = @"com.apple.news";
    v10[4] = @"com.apple.MobileAddressBook";
    v10[5] = @"com.apple.mobilecal";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:6];
    v6 = [PETEventPropertyClass propertyWithName:@"bundleId" possibleValues:v5];
    v7 = self->_foundInAppsProperty;
    self->_foundInAppsProperty = v6;

    foundInAppsProperty = self->_foundInAppsProperty;
  }

  v8 = *MEMORY[0x277D85DE8];

  return foundInAppsProperty;
}

- (id)__visitTracker
{
  visitTracker = self->_visitTracker;
  if (!visitTracker)
  {
    v4 = [objc_alloc(getPETScalarEventTrackerClass()) initWithFeatureId:@"SiriSettings" event:@"Visit" registerProperties:MEMORY[0x277CBEBF8]];
    v5 = self->_visitTracker;
    self->_visitTracker = v4;

    visitTracker = self->_visitTracker;
  }

  return visitTracker;
}

- (id)__enableSiriTracker
{
  v12[2] = *MEMORY[0x277D85DE8];
  enableSiriTracker = self->_enableSiriTracker;
  if (!enableSiriTracker)
  {
    v4 = objc_alloc(getPETScalarEventTrackerClass());
    v5 = [(AssistantMetrics *)self __siriSourceProperty];
    v12[0] = v5;
    v6 = [(AssistantMetrics *)self __confirmedTrueFalseProperty];
    v12[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    v8 = [v4 initWithFeatureId:@"SiriSettings" event:@"EnableSiri" registerProperties:v7];
    v9 = self->_enableSiriTracker;
    self->_enableSiriTracker = v8;

    enableSiriTracker = self->_enableSiriTracker;
  }

  v10 = *MEMORY[0x277D85DE8];

  return enableSiriTracker;
}

- (id)__disableSiriTracker
{
  v12[2] = *MEMORY[0x277D85DE8];
  disableSiriTracker = self->_disableSiriTracker;
  if (!disableSiriTracker)
  {
    v4 = objc_alloc(getPETScalarEventTrackerClass());
    v5 = [(AssistantMetrics *)self __siriSourceProperty];
    v12[0] = v5;
    v6 = [(AssistantMetrics *)self __confirmedTrueFalseProperty];
    v12[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    v8 = [v4 initWithFeatureId:@"SiriSettings" event:@"DisableSiri" registerProperties:v7];
    v9 = self->_disableSiriTracker;
    self->_disableSiriTracker = v8;

    disableSiriTracker = self->_disableSiriTracker;
  }

  v10 = *MEMORY[0x277D85DE8];

  return disableSiriTracker;
}

- (id)__toggleTracker
{
  v12[2] = *MEMORY[0x277D85DE8];
  toggleTracker = self->_toggleTracker;
  if (!toggleTracker)
  {
    v4 = objc_alloc(getPETScalarEventTrackerClass());
    v5 = [(AssistantMetrics *)self __toggleTrackerNameProperty];
    v12[0] = v5;
    v6 = [(AssistantMetrics *)self __onOffProperty];
    v12[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    v8 = [v4 initWithFeatureId:@"SiriSettings" event:@"Toggle" registerProperties:v7];
    v9 = self->_toggleTracker;
    self->_toggleTracker = v8;

    toggleTracker = self->_toggleTracker;
  }

  v10 = *MEMORY[0x277D85DE8];

  return toggleTracker;
}

- (id)__startEnrollmentTracker
{
  v11[1] = *MEMORY[0x277D85DE8];
  startEnrollmentTracker = self->_startEnrollmentTracker;
  if (!startEnrollmentTracker)
  {
    v4 = objc_alloc(getPETScalarEventTrackerClass());
    v5 = [(AssistantMetrics *)self __confirmedTrueFalseProperty];
    v11[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v7 = [v4 initWithFeatureId:@"SiriSettings" event:@"VoiceEnroll" registerProperties:v6];
    v8 = self->_startEnrollmentTracker;
    self->_startEnrollmentTracker = v7;

    startEnrollmentTracker = self->_startEnrollmentTracker;
  }

  v9 = *MEMORY[0x277D85DE8];

  return startEnrollmentTracker;
}

- (id)__detailVisitTracker
{
  detailVisitTracker = self->_detailVisitTracker;
  if (!detailVisitTracker)
  {
    v4 = [objc_alloc(getPETScalarEventTrackerClass()) initWithFeatureId:@"SiriSettings" event:@"DetailVisit" registerProperties:MEMORY[0x277CBEBF8]];
    v5 = self->_detailVisitTracker;
    self->_detailVisitTracker = v4;

    detailVisitTracker = self->_detailVisitTracker;
  }

  return detailVisitTracker;
}

- (id)__detailVisitFoundInAppsTracker
{
  v11[1] = *MEMORY[0x277D85DE8];
  detailVisitFoundInAppsTracker = self->_detailVisitFoundInAppsTracker;
  if (!detailVisitFoundInAppsTracker)
  {
    v4 = objc_alloc(getPETScalarEventTrackerClass());
    v5 = [(AssistantMetrics *)self __foundInAppsProperty];
    v11[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v7 = [v4 initWithFeatureId:@"SiriSettings" event:@"DetailVisitFIA" registerProperties:v6];
    v8 = self->_detailVisitFoundInAppsTracker;
    self->_detailVisitFoundInAppsTracker = v7;

    detailVisitFoundInAppsTracker = self->_detailVisitFoundInAppsTracker;
  }

  v9 = *MEMORY[0x277D85DE8];

  return detailVisitFoundInAppsTracker;
}

- (id)__detailToggleFoundInAppsTracker
{
  v13[3] = *MEMORY[0x277D85DE8];
  detailToggleFoundInAppsTracker = self->_detailToggleFoundInAppsTracker;
  if (!detailToggleFoundInAppsTracker)
  {
    v4 = objc_alloc(getPETScalarEventTrackerClass());
    v5 = [(AssistantMetrics *)self __detailToggleTrackerNameProperty];
    v6 = [(AssistantMetrics *)self __foundInAppsProperty];
    v13[1] = v6;
    v7 = [(AssistantMetrics *)self __onOffProperty];
    v13[2] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
    v9 = [v4 initWithFeatureId:@"SiriSettings" event:@"DetailToggleFIA" registerProperties:v8];
    v10 = self->_detailToggleFoundInAppsTracker;
    self->_detailToggleFoundInAppsTracker = v9;

    detailToggleFoundInAppsTracker = self->_detailToggleFoundInAppsTracker;
  }

  v11 = *MEMORY[0x277D85DE8];

  return detailToggleFoundInAppsTracker;
}

- (id)__detailToggleSearchTracker
{
  v11[1] = *MEMORY[0x277D85DE8];
  detailToggleSearchTracker = self->_detailToggleSearchTracker;
  if (!detailToggleSearchTracker)
  {
    v4 = objc_alloc(getPETScalarEventTrackerClass());
    v5 = [(AssistantMetrics *)self __onOffProperty];
    v11[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v7 = [v4 initWithFeatureId:@"SiriSettings" event:@"DetailToggleSearch" registerProperties:v6];
    v8 = self->_detailToggleSearchTracker;
    self->_detailToggleSearchTracker = v7;

    detailToggleSearchTracker = self->_detailToggleSearchTracker;
  }

  v9 = *MEMORY[0x277D85DE8];

  return detailToggleSearchTracker;
}

- (id)__detailToggleSiriKitTracker
{
  v11[1] = *MEMORY[0x277D85DE8];
  detailToggleSiriKitTracker = self->_detailToggleSiriKitTracker;
  if (!detailToggleSiriKitTracker)
  {
    v4 = objc_alloc(getPETScalarEventTrackerClass());
    v5 = [(AssistantMetrics *)self __onOffProperty];
    v11[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v7 = [v4 initWithFeatureId:@"SiriSettings" event:@"DetailToggleSiriKit" registerProperties:v6];
    v8 = self->_detailToggleSiriKitTracker;
    self->_detailToggleSiriKitTracker = v7;

    detailToggleSiriKitTracker = self->_detailToggleSiriKitTracker;
  }

  v9 = *MEMORY[0x277D85DE8];

  return detailToggleSiriKitTracker;
}

- (void)logVisit
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __28__AssistantMetrics_logVisit__block_invoke;
  v2[3] = &unk_278CD1548;
  v2[4] = self;
  doAsync(v2);
}

void __28__AssistantMetrics_logVisit__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) __visitTracker];
  [v1 trackEventWithPropertyValues:MEMORY[0x277CBEBF8]];
}

- (void)logEnableSiriConfirmed:(BOOL)a3 source:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__AssistantMetrics_logEnableSiriConfirmed_source___block_invoke;
  v8[3] = &unk_278CD16B8;
  v8[4] = self;
  v9 = v6;
  v10 = a3;
  v7 = v6;
  doAsync(v8);
}

void __50__AssistantMetrics_logEnableSiriConfirmed_source___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) __siriSourceProperty];
  v3 = [v2 isValidValue:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) __enableSiriTracker];
    if (*(a1 + 48))
    {
      v5 = @"true";
    }

    else
    {
      v5 = @"false";
    }

    v8[0] = *(a1 + 40);
    v8[1] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
    [v4 trackEventWithPropertyValues:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)logDisableSiriConfirmed:(BOOL)a3 source:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__AssistantMetrics_logDisableSiriConfirmed_source___block_invoke;
  v8[3] = &unk_278CD16B8;
  v8[4] = self;
  v9 = v6;
  v10 = a3;
  v7 = v6;
  doAsync(v8);
}

void __51__AssistantMetrics_logDisableSiriConfirmed_source___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) __siriSourceProperty];
  v3 = [v2 isValidValue:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) __disableSiriTracker];
    if (*(a1 + 48))
    {
      v5 = @"true";
    }

    else
    {
      v5 = @"false";
    }

    v8[0] = *(a1 + 40);
    v8[1] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
    [v4 trackEventWithPropertyValues:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)logStartEnrollment:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__AssistantMetrics_logStartEnrollment___block_invoke;
  v3[3] = &unk_278CD16E0;
  v3[4] = self;
  v4 = a3;
  doAsync(v3);
}

void __39__AssistantMetrics_logStartEnrollment___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) __startEnrollmentTracker];
  v3 = @"false";
  if (*(a1 + 40))
  {
    v3 = @"true";
  }

  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v2 trackEventWithPropertyValues:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)logToggle:(id)a3 on:(BOOL)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__AssistantMetrics_logToggle_on___block_invoke;
  v8[3] = &unk_278CD16B8;
  v8[4] = self;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  doAsync(v8);
}

void __33__AssistantMetrics_logToggle_on___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) __toggleTrackerNameProperty];
  v3 = [v2 isValidValue:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) __toggleTracker];
    if (*(a1 + 48))
    {
      v5 = @"on";
    }

    else
    {
      v5 = @"off";
    }

    v8[0] = *(a1 + 40);
    v8[1] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
    [v4 trackEventWithPropertyValues:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)logDetailVisit:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__AssistantMetrics_logDetailVisit___block_invoke;
  v6[3] = &unk_278CD1708;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  doAsync(v6);
}

void __35__AssistantMetrics_logDetailVisit___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) __foundInAppsProperty];
  v3 = [v2 isValidValue:*(a1 + 40)];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 __detailVisitFoundInAppsTracker];
    v10[0] = *(a1 + 40);
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [v5 trackEventWithPropertyValues:v6];

    v7 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = [v4 __detailVisitTracker];
    [v9 trackEventWithPropertyValues:MEMORY[0x277CBEBF8]];
    v8 = *MEMORY[0x277D85DE8];
  }
}

- (void)logDetailToggle:(id)a3 bundleId:(id)a4 on:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__AssistantMetrics_logDetailToggle_bundleId_on___block_invoke;
  v12[3] = &unk_278CD1730;
  v12[4] = self;
  v13 = v9;
  v14 = v8;
  v15 = a5;
  v10 = v8;
  v11 = v9;
  doAsync(v12);
}

void __48__AssistantMetrics_logDetailToggle_bundleId_on___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) __foundInAppsProperty];
  v3 = [v2 isValidValue:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) __detailToggleFoundInAppsTracker];
    v5 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = v5;
    v6 = @"off";
    if (*(a1 + 56))
    {
      v6 = @"on";
    }

    v18 = v6;
    v7 = MEMORY[0x277CBEA60];
    v8 = &v16;
    v9 = 3;
    goto LABEL_14;
  }

  if ([*(a1 + 48) isEqualToString:@"sirikit"])
  {
    v4 = [*(a1 + 32) __detailToggleSiriKitTracker];
    v10 = @"off";
    if (*(a1 + 56))
    {
      v10 = @"on";
    }

    v15 = v10;
    v7 = MEMORY[0x277CBEA60];
    v8 = &v15;
LABEL_13:
    v9 = 1;
LABEL_14:
    v12 = [v7 arrayWithObjects:v8 count:{v9, v14, v15, v16, v17, v18}];
    [v4 trackEventWithPropertyValues:v12];

    goto LABEL_15;
  }

  if ([*(a1 + 48) isEqualToString:@"sirisearch"])
  {
    v4 = [*(a1 + 32) __detailToggleSearchTracker];
    v11 = @"off";
    if (*(a1 + 56))
    {
      v11 = @"on";
    }

    v14 = v11;
    v7 = MEMORY[0x277CBEA60];
    v8 = &v14;
    goto LABEL_13;
  }

LABEL_15:
  v13 = *MEMORY[0x277D85DE8];
}

@end