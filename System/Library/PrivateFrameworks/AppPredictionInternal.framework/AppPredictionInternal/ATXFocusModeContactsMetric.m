@interface ATXFocusModeContactsMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXFocusModeContactsMetric

- (id)coreAnalyticsDictionary
{
  v107[36] = *MEMORY[0x277D85DE8];
  v106[0] = @"FocusMode";
  [(ATXFocusModeContactsMetric *)self focusMode];
  v3 = ATXModeToString();
  v95 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB68] null];
  }

  v75 = v3;
  v107[0] = v3;
  v106[1] = @"ActiveConfigurationType";
  v4 = [(ATXFocusModeContactsMetric *)self activeConfigurationType];
  v5 = v4;
  if (!v4)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v74 = v4;
  v107[1] = v4;
  v106[2] = @"EntityModeEntityScore";
  v6 = [(ATXFocusModeContactsMetric *)self entityModeEntityScore];
  v7 = v6;
  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v73 = v6;
  v107[2] = v6;
  v106[3] = @"ClassConditionalProbability";
  v8 = [(ATXFocusModeContactsMetric *)self classConditionalProbability];
  v9 = v8;
  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v72 = v8;
  v107[3] = v8;
  v106[4] = @"ContactMuted";
  v10 = [(ATXFocusModeContactsMetric *)self contactMuted];
  v11 = v10;
  if (!v10)
  {
    v10 = [MEMORY[0x277CBEB68] null];
  }

  v71 = v10;
  v107[4] = v10;
  v106[5] = @"GlobalPopularity";
  v12 = [(ATXFocusModeContactsMetric *)self globalPopularity];
  v13 = v12;
  if (!v12)
  {
    v12 = [MEMORY[0x277CBEB68] null];
  }

  v70 = v12;
  v107[5] = v12;
  v106[6] = @"ModePopularity";
  v14 = [(ATXFocusModeContactsMetric *)self modePopularity];
  v15 = v14;
  if (!v14)
  {
    v14 = [MEMORY[0x277CBEB68] null];
  }

  v69 = v14;
  v107[6] = v14;
  v106[7] = @"RatioOfModePopularityToGlobalPopularityOfEntity";
  v16 = [(ATXFocusModeContactsMetric *)self ratioOfModePopularityToGlobalPopularityOfEntity];
  v17 = v16;
  if (!v16)
  {
    v16 = [MEMORY[0x277CBEB68] null];
  }

  v68 = v16;
  v107[7] = v16;
  v106[8] = @"LocalNotificationsClearanceRateForEntity";
  v18 = [(ATXFocusModeContactsMetric *)self localNotificationsClearedRateForEntity];
  v19 = v18;
  if (!v18)
  {
    v18 = [MEMORY[0x277CBEB68] null];
  }

  v67 = v18;
  v107[8] = v18;
  v106[9] = @"GlobalNotificationsClearanceRateForEntity";
  v20 = [(ATXFocusModeContactsMetric *)self globalNotificationsClearedRateForEntity];
  v21 = v20;
  if (!v20)
  {
    v20 = [MEMORY[0x277CBEB68] null];
  }

  v66 = v20;
  v107[9] = v20;
  v106[10] = @"NotificationsClearedInMode";
  v22 = [(ATXFocusModeContactsMetric *)self notificationsClearedInMode];
  v105 = v22;
  if (!v22)
  {
    v22 = [MEMORY[0x277CBEB68] null];
  }

  v65 = v22;
  v107[10] = v22;
  v106[11] = @"NotificationsClearedGlobally";
  v23 = [(ATXFocusModeContactsMetric *)self notificationsClearedGlobally];
  v104 = v23;
  if (!v23)
  {
    v23 = [MEMORY[0x277CBEB68] null];
  }

  v64 = v23;
  v107[11] = v23;
  v106[12] = @"PosteriorProbability";
  v24 = [(ATXFocusModeContactsMetric *)self posteriorProbability];
  v103 = v24;
  if (!v24)
  {
    v24 = [MEMORY[0x277CBEB68] null];
  }

  v63 = v24;
  v107[12] = v24;
  v106[13] = @"RatioOfLocalToGlobalNotificationsClearedRateForEntity";
  v25 = [(ATXFocusModeContactsMetric *)self ratioOfLocalToGlobalNotificationsClearedRateForEntity];
  v102 = v25;
  if (!v25)
  {
    v25 = [MEMORY[0x277CBEB68] null];
  }

  v62 = v25;
  v107[13] = v25;
  v106[14] = @"ClassConditionalOfNotificationsClearedForEntity";
  v26 = [(ATXFocusModeContactsMetric *)self classConditionalOfNotificationsClearedForEntity];
  v101 = v26;
  if (!v26)
  {
    v26 = [MEMORY[0x277CBEB68] null];
  }

  v61 = v26;
  v107[14] = v26;
  v106[15] = @"NotificationsReceivedGlobally";
  v27 = [(ATXFocusModeContactsMetric *)self notificationsReceivedGlobally];
  v100 = v27;
  if (!v27)
  {
    v27 = [MEMORY[0x277CBEB68] null];
  }

  v60 = v27;
  v107[15] = v27;
  v106[16] = @"NotificationsReceivedInMode";
  v28 = [(ATXFocusModeContactsMetric *)self notificationsReceivedInMode];
  v99 = v28;
  if (!v28)
  {
    v28 = [MEMORY[0x277CBEB68] null];
  }

  v59 = v28;
  v107[16] = v28;
  v106[17] = @"LocalPopularityOfNotificationsReceivedForEntity";
  v29 = [(ATXFocusModeContactsMetric *)self localPopularityOfNotificationsReceivedForEntity];
  v98 = v29;
  if (!v29)
  {
    v29 = [MEMORY[0x277CBEB68] null];
  }

  v58 = v29;
  v107[17] = v29;
  v106[18] = @"GlobalPopularityOfNotificationsReceivedForEntity";
  v30 = [(ATXFocusModeContactsMetric *)self globalPopularityOfNotificationsReceivedForEntity];
  v97 = v30;
  if (!v30)
  {
    v30 = [MEMORY[0x277CBEB68] null];
  }

  v57 = v30;
  v107[18] = v30;
  v106[19] = @"RatioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity";
  v31 = [(ATXFocusModeContactsMetric *)self ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity];
  v96 = v31;
  if (!v31)
  {
    v31 = [MEMORY[0x277CBEB68] null];
  }

  v87 = v19;
  v88 = v17;
  v89 = v15;
  v90 = v13;
  v92 = v9;
  v93 = v7;
  v94 = v5;
  v56 = v31;
  v107[19] = v31;
  v106[20] = @"ClassConditionalOfNotificationsReceivedForEntity";
  v32 = [(ATXFocusModeContactsMetric *)self classConditionalOfNotificationsReceivedForEntity];
  v85 = v32;
  if (!v32)
  {
    v32 = [MEMORY[0x277CBEB68] null];
  }

  v86 = v21;
  v91 = v11;
  v55 = v32;
  v107[20] = v32;
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
  v37 = [(ATXFocusModeContactsMetric *)self treatmentId];
  v38 = v37;
  if (!v37)
  {
    v38 = [MEMORY[0x277CBEB68] null];
  }

  v107[33] = v38;
  v106[34] = @"ExperimentId";
  v39 = [(ATXFocusModeContactsMetric *)self experimentId];
  v40 = v39;
  if (!v39)
  {
    v40 = [MEMORY[0x277CBEB68] null];
  }

  v107[34] = v40;
  v106[35] = @"DeploymentId";
  v41 = [(ATXFocusModeContactsMetric *)self deploymentId];
  v42 = v41;
  if (!v41)
  {
    v42 = [MEMORY[0x277CBEB68] null];
  }

  v107[35] = v42;
  v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:36];
  if (!v41)
  {
  }

  if (!v39)
  {
  }

  if (!v37)
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