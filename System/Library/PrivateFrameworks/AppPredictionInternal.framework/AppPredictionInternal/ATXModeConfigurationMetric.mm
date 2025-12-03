@interface ATXModeConfigurationMetric
- (ATXModeConfigurationMetric)init;
- (id)coreAnalyticsDictionary;
- (id)description;
- (unint64_t)cappedForPrivacyWithValue:(int64_t)value;
@end

@implementation ATXModeConfigurationMetric

- (ATXModeConfigurationMetric)init
{
  v3.receiver = self;
  v3.super_class = ATXModeConfigurationMetric;
  result = [(_ATXCoreAnalyticsMetric *)&v3 init];
  if (result)
  {
    result->_numCustomHomeScreens = 0;
  }

  return result;
}

- (id)coreAnalyticsDictionary
{
  v58[36] = *MEMORY[0x277D85DE8];
  v57[0] = @"modeIdentifier";
  modeIdentifier = [(ATXModeConfigurationMetric *)self modeIdentifier];
  if (modeIdentifier)
  {
    modeIdentifier2 = [(ATXModeConfigurationMetric *)self modeIdentifier];
    null = [ATXCoreAnalyticsFieldUtilities hashBoundString:?];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    modeIdentifier2 = null;
  }

  v26 = null;
  v58[0] = null;
  v57[1] = @"modeSemanticType";
  modeSemanticType = [(ATXModeConfigurationMetric *)self modeSemanticType];
  v5 = modeSemanticType;
  if (!modeSemanticType)
  {
    modeSemanticType = [MEMORY[0x277CBEB68] null];
  }

  v25 = modeSemanticType;
  v58[1] = modeSemanticType;
  v57[2] = @"hasSmartTrigger";
  v53 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric hasSmartTrigger](self, "hasSmartTrigger")}];
  v58[2] = v53;
  v57[3] = @"hasAreaTrigger";
  v52 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric hasAreaTrigger](self, "hasAreaTrigger")}];
  v58[3] = v52;
  v57[4] = @"hasTimeTrigger";
  v51 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric hasTimeTrigger](self, "hasTimeTrigger")}];
  v58[4] = v51;
  v57[5] = @"hasAppTrigger";
  v50 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric hasAppTrigger](self, "hasAppTrigger")}];
  v58[5] = v50;
  v57[6] = @"hasScreenActivityTrigger";
  v49 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric hasScreenActivityTrigger](self, "hasScreenActivityTrigger")}];
  v58[6] = v49;
  v57[7] = @"hasWorkoutTrigger";
  v48 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric hasWorkoutTrigger](self, "hasWorkoutTrigger")}];
  v58[7] = v48;
  v57[8] = @"hasSleepTrigger";
  v47 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric hasSleepTrigger](self, "hasSleepTrigger")}];
  v58[8] = v47;
  v57[9] = @"hasDrivingTrigger";
  v46 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric hasDrivingTrigger](self, "hasDrivingTrigger")}];
  v58[9] = v46;
  v57[10] = @"numAllowedApps";
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationMetric cappedForPrivacyWithValue:](self, "cappedForPrivacyWithValue:", -[ATXModeConfigurationMetric numAllowedApps](self, "numAllowedApps"))}];
  v58[10] = v45;
  v57[11] = @"numAllowedContacts";
  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationMetric cappedForPrivacyWithValue:](self, "cappedForPrivacyWithValue:", -[ATXModeConfigurationMetric numAllowedContacts](self, "numAllowedContacts"))}];
  v58[11] = v44;
  v57[12] = @"isAutomaticallyGenerated";
  v43 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric isAutomaticallyGenerated](self, "isAutomaticallyGenerated")}];
  v58[12] = v43;
  v57[13] = @"doesImpactAvailability";
  v42 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric doesImpactAvailability](self, "doesImpactAvailability")}];
  v58[13] = v42;
  v57[14] = @"hasCustomHomeScreen";
  v41 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric hasCustomHomeScreen](self, "hasCustomHomeScreen")}];
  v58[14] = v41;
  v57[15] = @"numCustomHomeScreens";
  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationMetric numCustomHomeScreens](self, "numCustomHomeScreens")}];
  v58[15] = v40;
  v57[16] = @"hasCustomHomeScreenUsedInOtherModes";
  v39 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric hasCustomHomeScreenUsedInOtherModes](self, "hasCustomHomeScreenUsedInOtherModes")}];
  v58[16] = v39;
  v57[17] = @"numLockScreenPosters";
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationMetric cappedForPrivacyWithValue:](self, "cappedForPrivacyWithValue:", -[ATXModeConfigurationMetric numLockScreenPosters](self, "numLockScreenPosters"))}];
  v58[17] = v38;
  v57[18] = @"numDeniedApps";
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationMetric cappedForPrivacyWithValue:](self, "cappedForPrivacyWithValue:", -[ATXModeConfigurationMetric numDeniedApps](self, "numDeniedApps"))}];
  v58[18] = v37;
  v57[19] = @"numDeniedContacts";
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationMetric cappedForPrivacyWithValue:](self, "cappedForPrivacyWithValue:", -[ATXModeConfigurationMetric numDeniedContacts](self, "numDeniedContacts"))}];
  v58[19] = v36;
  v57[20] = @"appConfigurationType";
  appConfigurationType = [(ATXModeConfigurationMetric *)self appConfigurationType];
  v7 = appConfigurationType;
  if (!appConfigurationType)
  {
    appConfigurationType = [MEMORY[0x277CBEB68] null];
  }

  v24 = appConfigurationType;
  v58[20] = appConfigurationType;
  v57[21] = @"contactConfigurationType";
  contactConfigurationType = [(ATXModeConfigurationMetric *)self contactConfigurationType];
  v34 = contactConfigurationType;
  if (!contactConfigurationType)
  {
    contactConfigurationType = [MEMORY[0x277CBEB68] null];
  }

  v35 = v7;
  v23 = contactConfigurationType;
  v58[21] = contactConfigurationType;
  v57[22] = @"numAcceptedSuggestedHomePages";
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationMetric cappedForPrivacyWithValue:](self, "cappedForPrivacyWithValue:", -[ATXModeConfigurationMetric numAcceptedSuggestedHomePages](self, "numAcceptedSuggestedHomePages"))}];
  v58[22] = v33;
  v57[23] = @"numAcceptedSuggestedLockScreens";
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationMetric cappedForPrivacyWithValue:](self, "cappedForPrivacyWithValue:", -[ATXModeConfigurationMetric numAcceptedSuggestedLockScreens](self, "numAcceptedSuggestedLockScreens"))}];
  v58[23] = v32;
  v57[24] = @"numAcceptedSuggestedApps";
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationMetric cappedForPrivacyWithValue:](self, "cappedForPrivacyWithValue:", -[ATXModeConfigurationMetric numAcceptedSuggestedApps](self, "numAcceptedSuggestedApps"))}];
  v58[24] = v31;
  v57[25] = @"numAcceptedSuggestedContacts";
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationMetric cappedForPrivacyWithValue:](self, "cappedForPrivacyWithValue:", -[ATXModeConfigurationMetric numAcceptedSuggestedContacts](self, "numAcceptedSuggestedContacts"))}];
  v58[25] = v30;
  v57[26] = @"didRemoveSuggestedPage";
  v29 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric didRemoveSuggestedPage](self, "didRemoveSuggestedPage")}];
  v58[26] = v29;
  v57[27] = @"numAppConfigurations";
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationMetric cappedForPrivacyWithValue:](self, "cappedForPrivacyWithValue:", -[ATXModeConfigurationMetric numAppConfigurations](self, "numAppConfigurations"))}];
  v58[27] = v28;
  v57[28] = @"isSharingAcrossDevices";
  v27 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric isSharingAcrossDevices](self, "isSharingAcrossDevices")}];
  v58[28] = v27;
  v57[29] = @"treatmentId";
  treatmentId = [(ATXModeConfigurationMetric *)self treatmentId];
  v10 = treatmentId;
  if (!treatmentId)
  {
    treatmentId = [MEMORY[0x277CBEB68] null];
  }

  v22 = treatmentId;
  v58[29] = treatmentId;
  v57[30] = @"experimentId";
  experimentId = [(ATXModeConfigurationMetric *)self experimentId];
  null2 = experimentId;
  if (!experimentId)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v54 = v5;
  v58[30] = null2;
  v57[31] = @"deploymentId";
  deploymentId = [(ATXModeConfigurationMetric *)self deploymentId];
  null3 = deploymentId;
  if (!deploymentId)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v58[31] = null3;
  v57[32] = @"isSleepMigrated";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric isSleepMigrated](self, "isSleepMigrated")}];
  v58[32] = v15;
  v57[33] = @"wasQuickStartPlatterShown";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric wasQuickStartPlatterShown](self, "wasQuickStartPlatterShown")}];
  v58[33] = v16;
  v57[34] = @"wasColoringBookSeen";
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric wasColoringBookSeen](self, "wasColoringBookSeen")}];
  v58[34] = v17;
  v57[35] = @"intelligentBreakthroughEnabled";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeConfigurationMetric isIntelligentBreakthroughEnabled](self, "isIntelligentBreakthroughEnabled")}];
  v58[35] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:36];

  if (!deploymentId)
  {
  }

  if (!experimentId)
  {
  }

  if (!v10)
  {
  }

  if (!v34)
  {
  }

  if (!v35)
  {
  }

  if (!v54)
  {
  }

  if (modeIdentifier)
  {
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)description
{
  v37 = MEMORY[0x277CCACA8];
  modeIdentifier = [(ATXModeConfigurationMetric *)self modeIdentifier];
  modeSemanticType = [(ATXModeConfigurationMetric *)self modeSemanticType];
  hasSmartTrigger = [(ATXModeConfigurationMetric *)self hasSmartTrigger];
  hasAreaTrigger = [(ATXModeConfigurationMetric *)self hasAreaTrigger];
  hasTimeTrigger = [(ATXModeConfigurationMetric *)self hasTimeTrigger];
  hasAppTrigger = [(ATXModeConfigurationMetric *)self hasAppTrigger];
  hasScreenActivityTrigger = [(ATXModeConfigurationMetric *)self hasScreenActivityTrigger];
  hasWorkoutTrigger = [(ATXModeConfigurationMetric *)self hasWorkoutTrigger];
  hasSleepTrigger = [(ATXModeConfigurationMetric *)self hasSleepTrigger];
  hasDrivingTrigger = [(ATXModeConfigurationMetric *)self hasDrivingTrigger];
  numAllowedApps = [(ATXModeConfigurationMetric *)self numAllowedApps];
  numAllowedContacts = [(ATXModeConfigurationMetric *)self numAllowedContacts];
  isAutomaticallyGenerated = [(ATXModeConfigurationMetric *)self isAutomaticallyGenerated];
  doesImpactAvailability = [(ATXModeConfigurationMetric *)self doesImpactAvailability];
  hasCustomHomeScreen = [(ATXModeConfigurationMetric *)self hasCustomHomeScreen];
  numCustomHomeScreens = [(ATXModeConfigurationMetric *)self numCustomHomeScreens];
  hasCustomHomeScreenUsedInOtherModes = [(ATXModeConfigurationMetric *)self hasCustomHomeScreenUsedInOtherModes];
  numDeniedApps = [(ATXModeConfigurationMetric *)self numDeniedApps];
  numDeniedContacts = [(ATXModeConfigurationMetric *)self numDeniedContacts];
  appConfigurationType = [(ATXModeConfigurationMetric *)self appConfigurationType];
  contactConfigurationType = [(ATXModeConfigurationMetric *)self contactConfigurationType];
  numAcceptedSuggestedHomePages = [(ATXModeConfigurationMetric *)self numAcceptedSuggestedHomePages];
  numAcceptedSuggestedLockScreens = [(ATXModeConfigurationMetric *)self numAcceptedSuggestedLockScreens];
  numAcceptedSuggestedApps = [(ATXModeConfigurationMetric *)self numAcceptedSuggestedApps];
  numAcceptedSuggestedContacts = [(ATXModeConfigurationMetric *)self numAcceptedSuggestedContacts];
  didRemoveSuggestedPage = [(ATXModeConfigurationMetric *)self didRemoveSuggestedPage];
  numAppConfigurations = [(ATXModeConfigurationMetric *)self numAppConfigurations];
  isSharingAcrossDevices = [(ATXModeConfigurationMetric *)self isSharingAcrossDevices];
  numLockScreenPosters = [(ATXModeConfigurationMetric *)self numLockScreenPosters];
  treatmentId = [(ATXModeConfigurationMetric *)self treatmentId];
  experimentId = [(ATXModeConfigurationMetric *)self experimentId];
  deploymentId = [(ATXModeConfigurationMetric *)self deploymentId];
  v9 = [v37 stringWithFormat:@"ATXModeConfigurationMetric modeIdentifier:%@\nmodeSemanticType:%@\nhasSmartTrigger:%d\nhasAreaTrigger:%d\nhasTimeTrigger:%d\nhasAppTrigger:%d\nhasScreenActivityTrigger:%d\nhasWorkoutTrigger:%d\nhasSleepTrigger:%d\nhasDrivingTrigger:%d\nnumAllowedApps:%lu\nnumAllowedContacts:%lu\nisAutomaticallyGenerated:%d\ndoesImpactAvailability:%d\nhasCustomHomeScreen:%d\nnumCustomHomeScreens:%lu\nhasCustomHomeScreenUsedInOtherModes:%d\nnumDeniedApps:%lu\nnumDeniedContacts:%lu\nappConfigurationType:%@\ncontactConfigurationType:%@\nnumAcceptedSuggestedHomePages:%lu\nnumAcceptedSuggestedLockScreens:%lu\nnumAcceptedSuggestedApps:%lu\nnumAcceptedSuggestedContacts:%lu\ndidRemoveSuggestedPage:%d\nnumAppConfigurations:%lu\nisSharingAcrossDevices:%d\nnumLockScreenPosters:%lu\ntreatmentId:%@\nexperimentId:%@\ndeploymentId:%@\nisSleepMigrated:%d\nwasQuickStartPlatterShown:%d\nwasColoringBookSeen:%d\nintelligentBreakthroughEnabled:%d\n", modeIdentifier, modeSemanticType, hasSmartTrigger, hasAreaTrigger, hasTimeTrigger, hasAppTrigger, hasScreenActivityTrigger, hasWorkoutTrigger, hasSleepTrigger, hasDrivingTrigger, numAllowedApps, numAllowedContacts, isAutomaticallyGenerated, doesImpactAvailability, hasCustomHomeScreen, numCustomHomeScreens, hasCustomHomeScreenUsedInOtherModes, numDeniedApps, numDeniedContacts, appConfigurationType, contactConfigurationType, numAcceptedSuggestedHomePages, numAcceptedSuggestedLockScreens, numAcceptedSuggestedApps, numAcceptedSuggestedContacts, didRemoveSuggestedPage, numAppConfigurations, isSharingAcrossDevices, numLockScreenPosters, treatmentId, experimentId, deploymentId, -[ATXModeConfigurationMetric isSleepMigrated](self, "isSleepMigrated"), -[ATXModeConfigurationMetric wasQuickStartPlatterShown](self, "wasQuickStartPlatterShown"), -[ATXModeConfigurationMetric wasColoringBookSeen](self, "wasColoringBookSeen"), -[ATXModeConfigurationMetric isIntelligentBreakthroughEnabled](self, "isIntelligentBreakthroughEnabled")];

  return v9;
}

- (unint64_t)cappedForPrivacyWithValue:(int64_t)value
{
  if (value >= 0x14)
  {
    return 20;
  }

  else
  {
    return value;
  }
}

@end