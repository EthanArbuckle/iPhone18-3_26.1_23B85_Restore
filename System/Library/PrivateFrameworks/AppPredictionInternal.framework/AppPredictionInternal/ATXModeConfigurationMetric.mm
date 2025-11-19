@interface ATXModeConfigurationMetric
- (ATXModeConfigurationMetric)init;
- (id)coreAnalyticsDictionary;
- (id)description;
- (unint64_t)cappedForPrivacyWithValue:(int64_t)a3;
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
  v56 = [(ATXModeConfigurationMetric *)self modeIdentifier];
  if (v56)
  {
    v55 = [(ATXModeConfigurationMetric *)self modeIdentifier];
    v3 = [ATXCoreAnalyticsFieldUtilities hashBoundString:?];
  }

  else
  {
    v3 = [MEMORY[0x277CBEB68] null];
    v55 = v3;
  }

  v26 = v3;
  v58[0] = v3;
  v57[1] = @"modeSemanticType";
  v4 = [(ATXModeConfigurationMetric *)self modeSemanticType];
  v5 = v4;
  if (!v4)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v25 = v4;
  v58[1] = v4;
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
  v6 = [(ATXModeConfigurationMetric *)self appConfigurationType];
  v7 = v6;
  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v24 = v6;
  v58[20] = v6;
  v57[21] = @"contactConfigurationType";
  v8 = [(ATXModeConfigurationMetric *)self contactConfigurationType];
  v34 = v8;
  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v35 = v7;
  v23 = v8;
  v58[21] = v8;
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
  v9 = [(ATXModeConfigurationMetric *)self treatmentId];
  v10 = v9;
  if (!v9)
  {
    v9 = [MEMORY[0x277CBEB68] null];
  }

  v22 = v9;
  v58[29] = v9;
  v57[30] = @"experimentId";
  v11 = [(ATXModeConfigurationMetric *)self experimentId];
  v12 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x277CBEB68] null];
  }

  v54 = v5;
  v58[30] = v12;
  v57[31] = @"deploymentId";
  v13 = [(ATXModeConfigurationMetric *)self deploymentId];
  v14 = v13;
  if (!v13)
  {
    v14 = [MEMORY[0x277CBEB68] null];
  }

  v58[31] = v14;
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

  if (!v13)
  {
  }

  if (!v11)
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

  if (v56)
  {
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)description
{
  v37 = MEMORY[0x277CCACA8];
  v36 = [(ATXModeConfigurationMetric *)self modeIdentifier];
  v35 = [(ATXModeConfigurationMetric *)self modeSemanticType];
  v34 = [(ATXModeConfigurationMetric *)self hasSmartTrigger];
  v33 = [(ATXModeConfigurationMetric *)self hasAreaTrigger];
  v32 = [(ATXModeConfigurationMetric *)self hasTimeTrigger];
  v31 = [(ATXModeConfigurationMetric *)self hasAppTrigger];
  v30 = [(ATXModeConfigurationMetric *)self hasScreenActivityTrigger];
  v29 = [(ATXModeConfigurationMetric *)self hasWorkoutTrigger];
  v28 = [(ATXModeConfigurationMetric *)self hasSleepTrigger];
  v27 = [(ATXModeConfigurationMetric *)self hasDrivingTrigger];
  v26 = [(ATXModeConfigurationMetric *)self numAllowedApps];
  v25 = [(ATXModeConfigurationMetric *)self numAllowedContacts];
  v24 = [(ATXModeConfigurationMetric *)self isAutomaticallyGenerated];
  v23 = [(ATXModeConfigurationMetric *)self doesImpactAvailability];
  v22 = [(ATXModeConfigurationMetric *)self hasCustomHomeScreen];
  v19 = [(ATXModeConfigurationMetric *)self numCustomHomeScreens];
  v18 = [(ATXModeConfigurationMetric *)self hasCustomHomeScreenUsedInOtherModes];
  v17 = [(ATXModeConfigurationMetric *)self numDeniedApps];
  v16 = [(ATXModeConfigurationMetric *)self numDeniedContacts];
  v21 = [(ATXModeConfigurationMetric *)self appConfigurationType];
  v20 = [(ATXModeConfigurationMetric *)self contactConfigurationType];
  v15 = [(ATXModeConfigurationMetric *)self numAcceptedSuggestedHomePages];
  v14 = [(ATXModeConfigurationMetric *)self numAcceptedSuggestedLockScreens];
  v13 = [(ATXModeConfigurationMetric *)self numAcceptedSuggestedApps];
  v12 = [(ATXModeConfigurationMetric *)self numAcceptedSuggestedContacts];
  v11 = [(ATXModeConfigurationMetric *)self didRemoveSuggestedPage];
  v3 = [(ATXModeConfigurationMetric *)self numAppConfigurations];
  v4 = [(ATXModeConfigurationMetric *)self isSharingAcrossDevices];
  v5 = [(ATXModeConfigurationMetric *)self numLockScreenPosters];
  v6 = [(ATXModeConfigurationMetric *)self treatmentId];
  v7 = [(ATXModeConfigurationMetric *)self experimentId];
  v8 = [(ATXModeConfigurationMetric *)self deploymentId];
  v9 = [v37 stringWithFormat:@"ATXModeConfigurationMetric modeIdentifier:%@\nmodeSemanticType:%@\nhasSmartTrigger:%d\nhasAreaTrigger:%d\nhasTimeTrigger:%d\nhasAppTrigger:%d\nhasScreenActivityTrigger:%d\nhasWorkoutTrigger:%d\nhasSleepTrigger:%d\nhasDrivingTrigger:%d\nnumAllowedApps:%lu\nnumAllowedContacts:%lu\nisAutomaticallyGenerated:%d\ndoesImpactAvailability:%d\nhasCustomHomeScreen:%d\nnumCustomHomeScreens:%lu\nhasCustomHomeScreenUsedInOtherModes:%d\nnumDeniedApps:%lu\nnumDeniedContacts:%lu\nappConfigurationType:%@\ncontactConfigurationType:%@\nnumAcceptedSuggestedHomePages:%lu\nnumAcceptedSuggestedLockScreens:%lu\nnumAcceptedSuggestedApps:%lu\nnumAcceptedSuggestedContacts:%lu\ndidRemoveSuggestedPage:%d\nnumAppConfigurations:%lu\nisSharingAcrossDevices:%d\nnumLockScreenPosters:%lu\ntreatmentId:%@\nexperimentId:%@\ndeploymentId:%@\nisSleepMigrated:%d\nwasQuickStartPlatterShown:%d\nwasColoringBookSeen:%d\nintelligentBreakthroughEnabled:%d\n", v36, v35, v34, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v19, v18, v17, v16, v21, v20, v15, v14, v13, v12, v11, v3, v4, v5, v6, v7, v8, -[ATXModeConfigurationMetric isSleepMigrated](self, "isSleepMigrated"), -[ATXModeConfigurationMetric wasQuickStartPlatterShown](self, "wasQuickStartPlatterShown"), -[ATXModeConfigurationMetric wasColoringBookSeen](self, "wasColoringBookSeen"), -[ATXModeConfigurationMetric isIntelligentBreakthroughEnabled](self, "isIntelligentBreakthroughEnabled")];

  return v9;
}

- (unint64_t)cappedForPrivacyWithValue:(int64_t)a3
{
  if (a3 >= 0x14)
  {
    return 20;
  }

  else
  {
    return a3;
  }
}

@end