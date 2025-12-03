@interface ATXFocusModeContactsMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXFocusModeContactsMetric

- (id)coreAnalyticsDictionary
{
  v107[36] = *MEMORY[0x277D85DE8];
  v106[0] = @"FocusMode";
  [(ATXFocusModeContactsMetric *)self focusMode];
  null = ATXModeToString();
  v95 = null;
  if (!null)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v75 = null;
  v107[0] = null;
  v106[1] = @"ActiveConfigurationType";
  activeConfigurationType = [(ATXFocusModeContactsMetric *)self activeConfigurationType];
  v5 = activeConfigurationType;
  if (!activeConfigurationType)
  {
    activeConfigurationType = [MEMORY[0x277CBEB68] null];
  }

  v74 = activeConfigurationType;
  v107[1] = activeConfigurationType;
  v106[2] = @"EntityModeEntityScore";
  entityModeEntityScore = [(ATXFocusModeContactsMetric *)self entityModeEntityScore];
  v7 = entityModeEntityScore;
  if (!entityModeEntityScore)
  {
    entityModeEntityScore = [MEMORY[0x277CBEB68] null];
  }

  v73 = entityModeEntityScore;
  v107[2] = entityModeEntityScore;
  v106[3] = @"ClassConditionalProbability";
  classConditionalProbability = [(ATXFocusModeContactsMetric *)self classConditionalProbability];
  v9 = classConditionalProbability;
  if (!classConditionalProbability)
  {
    classConditionalProbability = [MEMORY[0x277CBEB68] null];
  }

  v72 = classConditionalProbability;
  v107[3] = classConditionalProbability;
  v106[4] = @"ContactMuted";
  contactMuted = [(ATXFocusModeContactsMetric *)self contactMuted];
  v11 = contactMuted;
  if (!contactMuted)
  {
    contactMuted = [MEMORY[0x277CBEB68] null];
  }

  v71 = contactMuted;
  v107[4] = contactMuted;
  v106[5] = @"GlobalPopularity";
  globalPopularity = [(ATXFocusModeContactsMetric *)self globalPopularity];
  v13 = globalPopularity;
  if (!globalPopularity)
  {
    globalPopularity = [MEMORY[0x277CBEB68] null];
  }

  v70 = globalPopularity;
  v107[5] = globalPopularity;
  v106[6] = @"ModePopularity";
  modePopularity = [(ATXFocusModeContactsMetric *)self modePopularity];
  v15 = modePopularity;
  if (!modePopularity)
  {
    modePopularity = [MEMORY[0x277CBEB68] null];
  }

  v69 = modePopularity;
  v107[6] = modePopularity;
  v106[7] = @"RatioOfModePopularityToGlobalPopularityOfEntity";
  ratioOfModePopularityToGlobalPopularityOfEntity = [(ATXFocusModeContactsMetric *)self ratioOfModePopularityToGlobalPopularityOfEntity];
  v17 = ratioOfModePopularityToGlobalPopularityOfEntity;
  if (!ratioOfModePopularityToGlobalPopularityOfEntity)
  {
    ratioOfModePopularityToGlobalPopularityOfEntity = [MEMORY[0x277CBEB68] null];
  }

  v68 = ratioOfModePopularityToGlobalPopularityOfEntity;
  v107[7] = ratioOfModePopularityToGlobalPopularityOfEntity;
  v106[8] = @"LocalNotificationsClearanceRateForEntity";
  localNotificationsClearedRateForEntity = [(ATXFocusModeContactsMetric *)self localNotificationsClearedRateForEntity];
  v19 = localNotificationsClearedRateForEntity;
  if (!localNotificationsClearedRateForEntity)
  {
    localNotificationsClearedRateForEntity = [MEMORY[0x277CBEB68] null];
  }

  v67 = localNotificationsClearedRateForEntity;
  v107[8] = localNotificationsClearedRateForEntity;
  v106[9] = @"GlobalNotificationsClearanceRateForEntity";
  globalNotificationsClearedRateForEntity = [(ATXFocusModeContactsMetric *)self globalNotificationsClearedRateForEntity];
  v21 = globalNotificationsClearedRateForEntity;
  if (!globalNotificationsClearedRateForEntity)
  {
    globalNotificationsClearedRateForEntity = [MEMORY[0x277CBEB68] null];
  }

  v66 = globalNotificationsClearedRateForEntity;
  v107[9] = globalNotificationsClearedRateForEntity;
  v106[10] = @"NotificationsClearedInMode";
  notificationsClearedInMode = [(ATXFocusModeContactsMetric *)self notificationsClearedInMode];
  v105 = notificationsClearedInMode;
  if (!notificationsClearedInMode)
  {
    notificationsClearedInMode = [MEMORY[0x277CBEB68] null];
  }

  v65 = notificationsClearedInMode;
  v107[10] = notificationsClearedInMode;
  v106[11] = @"NotificationsClearedGlobally";
  notificationsClearedGlobally = [(ATXFocusModeContactsMetric *)self notificationsClearedGlobally];
  v104 = notificationsClearedGlobally;
  if (!notificationsClearedGlobally)
  {
    notificationsClearedGlobally = [MEMORY[0x277CBEB68] null];
  }

  v64 = notificationsClearedGlobally;
  v107[11] = notificationsClearedGlobally;
  v106[12] = @"PosteriorProbability";
  posteriorProbability = [(ATXFocusModeContactsMetric *)self posteriorProbability];
  v103 = posteriorProbability;
  if (!posteriorProbability)
  {
    posteriorProbability = [MEMORY[0x277CBEB68] null];
  }

  v63 = posteriorProbability;
  v107[12] = posteriorProbability;
  v106[13] = @"RatioOfLocalToGlobalNotificationsClearedRateForEntity";
  ratioOfLocalToGlobalNotificationsClearedRateForEntity = [(ATXFocusModeContactsMetric *)self ratioOfLocalToGlobalNotificationsClearedRateForEntity];
  v102 = ratioOfLocalToGlobalNotificationsClearedRateForEntity;
  if (!ratioOfLocalToGlobalNotificationsClearedRateForEntity)
  {
    ratioOfLocalToGlobalNotificationsClearedRateForEntity = [MEMORY[0x277CBEB68] null];
  }

  v62 = ratioOfLocalToGlobalNotificationsClearedRateForEntity;
  v107[13] = ratioOfLocalToGlobalNotificationsClearedRateForEntity;
  v106[14] = @"ClassConditionalOfNotificationsClearedForEntity";
  classConditionalOfNotificationsClearedForEntity = [(ATXFocusModeContactsMetric *)self classConditionalOfNotificationsClearedForEntity];
  v101 = classConditionalOfNotificationsClearedForEntity;
  if (!classConditionalOfNotificationsClearedForEntity)
  {
    classConditionalOfNotificationsClearedForEntity = [MEMORY[0x277CBEB68] null];
  }

  v61 = classConditionalOfNotificationsClearedForEntity;
  v107[14] = classConditionalOfNotificationsClearedForEntity;
  v106[15] = @"NotificationsReceivedGlobally";
  notificationsReceivedGlobally = [(ATXFocusModeContactsMetric *)self notificationsReceivedGlobally];
  v100 = notificationsReceivedGlobally;
  if (!notificationsReceivedGlobally)
  {
    notificationsReceivedGlobally = [MEMORY[0x277CBEB68] null];
  }

  v60 = notificationsReceivedGlobally;
  v107[15] = notificationsReceivedGlobally;
  v106[16] = @"NotificationsReceivedInMode";
  notificationsReceivedInMode = [(ATXFocusModeContactsMetric *)self notificationsReceivedInMode];
  v99 = notificationsReceivedInMode;
  if (!notificationsReceivedInMode)
  {
    notificationsReceivedInMode = [MEMORY[0x277CBEB68] null];
  }

  v59 = notificationsReceivedInMode;
  v107[16] = notificationsReceivedInMode;
  v106[17] = @"LocalPopularityOfNotificationsReceivedForEntity";
  localPopularityOfNotificationsReceivedForEntity = [(ATXFocusModeContactsMetric *)self localPopularityOfNotificationsReceivedForEntity];
  v98 = localPopularityOfNotificationsReceivedForEntity;
  if (!localPopularityOfNotificationsReceivedForEntity)
  {
    localPopularityOfNotificationsReceivedForEntity = [MEMORY[0x277CBEB68] null];
  }

  v58 = localPopularityOfNotificationsReceivedForEntity;
  v107[17] = localPopularityOfNotificationsReceivedForEntity;
  v106[18] = @"GlobalPopularityOfNotificationsReceivedForEntity";
  globalPopularityOfNotificationsReceivedForEntity = [(ATXFocusModeContactsMetric *)self globalPopularityOfNotificationsReceivedForEntity];
  v97 = globalPopularityOfNotificationsReceivedForEntity;
  if (!globalPopularityOfNotificationsReceivedForEntity)
  {
    globalPopularityOfNotificationsReceivedForEntity = [MEMORY[0x277CBEB68] null];
  }

  v57 = globalPopularityOfNotificationsReceivedForEntity;
  v107[18] = globalPopularityOfNotificationsReceivedForEntity;
  v106[19] = @"RatioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity";
  ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity = [(ATXFocusModeContactsMetric *)self ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity];
  v96 = ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity;
  if (!ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity)
  {
    ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity = [MEMORY[0x277CBEB68] null];
  }

  v87 = v19;
  v88 = v17;
  v89 = v15;
  v90 = v13;
  v92 = v9;
  v93 = v7;
  v94 = v5;
  v56 = ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity;
  v107[19] = ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity;
  v106[20] = @"ClassConditionalOfNotificationsReceivedForEntity";
  classConditionalOfNotificationsReceivedForEntity = [(ATXFocusModeContactsMetric *)self classConditionalOfNotificationsReceivedForEntity];
  v85 = classConditionalOfNotificationsReceivedForEntity;
  if (!classConditionalOfNotificationsReceivedForEntity)
  {
    classConditionalOfNotificationsReceivedForEntity = [MEMORY[0x277CBEB68] null];
  }

  v86 = v21;
  v91 = v11;
  v55 = classConditionalOfNotificationsReceivedForEntity;
  v107[20] = classConditionalOfNotificationsReceivedForEntity;
  v106[21] = @"ContactEngagedGloballyOverLastNDays";
  v84 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeContactsMetric contactEngagedGloballyOverLastNDays](self, "contactEngagedGloballyOverLastNDays")}];
  v107[21] = v84;
  v106[22] = @"ContactEngagedInModeOverLastNDays";
  v83 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeContactsMetric contactEngagedInModeOverLastNDays](self, "contactEngagedInModeOverLastNDays")}];
  v107[22] = v83;
  v106[23] = @"ContactIsEmergency";
  v82 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeContactsMetric contactIsEmergency](self, "contactIsEmergency")}];
  v107[23] = v82;
  v106[24] = @"ContactIsFavorite";
  v81 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeContactsMetric contactIsFavorite](self, "contactIsFavorite")}];
  v107[24] = v81;
  v106[25] = @"ContactIsiCloudFamilyMember";
  v80 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeContactsMetric contactIsiCloudFamilyMember](self, "contactIsiCloudFamilyMember")}];
  v107[25] = v80;
  v106[26] = @"ContactIsPinned";
  v79 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeContactsMetric contactIsPinned](self, "contactIsPinned")}];
  v107[26] = v79;
  v106[27] = @"ContactIsVIP";
  v78 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeContactsMetric contactIsVIP](self, "contactIsVIP")}];
  v107[27] = v78;
  v106[28] = @"ContactMessageHideAlerts";
  v77 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeContactsMetric contactMessageHideAlerts](self, "contactMessageHideAlerts")}];
  v107[28] = v77;
  v106[29] = @"IsContactCandidateSuggestion";
  v33 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeContactsMetric isContactCandidateSuggestion](self, "isContactCandidateSuggestion")}];
  v107[29] = v33;
  v106[30] = @"IsContactRecommendedSuggestion";
  v34 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeContactsMetric isContactRecommendedSuggestion](self, "isContactRecommendedSuggestion")}];
  v107[30] = v34;
  v106[31] = @"wasContactSuggestedDuringModeSetup";
  v35 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeContactsMetric wasContactSuggestedDuringModeSetup](self, "wasContactSuggestedDuringModeSetup")}];
  v107[31] = v35;
  v106[32] = @"wasContactSuggestionDuringModeSetupAccepted";
  v36 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeContactsMetric wasContactSuggestionDuringModeSetupAccepted](self, "wasContactSuggestionDuringModeSetupAccepted")}];
  v107[32] = v36;
  v106[33] = @"TreatmentId";
  treatmentId = [(ATXFocusModeContactsMetric *)self treatmentId];
  null2 = treatmentId;
  if (!treatmentId)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v107[33] = null2;
  v106[34] = @"ExperimentId";
  experimentId = [(ATXFocusModeContactsMetric *)self experimentId];
  null3 = experimentId;
  if (!experimentId)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v107[34] = null3;
  v106[35] = @"DeploymentId";
  deploymentId = [(ATXFocusModeContactsMetric *)self deploymentId];
  null4 = deploymentId;
  if (!deploymentId)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v107[35] = null4;
  v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:36];
  if (!deploymentId)
  {
  }

  if (!experimentId)
  {
  }

  if (!treatmentId)
  {
  }

  if (!v85)
  {
  }

  v43 = v96;
  if (!v96)
  {

    v43 = 0;
  }

  v44 = v97;
  if (!v97)
  {

    v44 = 0;
  }

  v45 = v98;
  if (!v98)
  {

    v45 = 0;
  }

  v46 = v99;
  if (!v99)
  {

    v46 = 0;
  }

  v47 = v100;
  if (!v100)
  {

    v47 = 0;
  }

  v48 = v101;
  if (!v101)
  {

    v48 = 0;
  }

  v49 = v102;
  if (!v102)
  {

    v49 = 0;
  }

  v50 = v103;
  if (!v103)
  {

    v50 = 0;
  }

  v51 = v104;
  if (!v104)
  {

    v51 = 0;
  }

  v52 = v105;
  if (!v105)
  {

    v52 = 0;
  }

  if (!v86)
  {
  }

  if (!v87)
  {
  }

  if (!v88)
  {
  }

  if (!v89)
  {
  }

  if (!v90)
  {
  }

  if (!v91)
  {
  }

  if (!v92)
  {
  }

  if (!v93)
  {
  }

  if (!v94)
  {
  }

  if (!v95)
  {
  }

  v53 = *MEMORY[0x277D85DE8];

  return v76;
}

@end