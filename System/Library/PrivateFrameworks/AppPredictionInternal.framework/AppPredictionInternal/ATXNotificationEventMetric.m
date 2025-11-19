@interface ATXNotificationEventMetric
+ (id)atxComputedModeStringForTimestamp:(id)a3;
- (ATXNotificationEventMetric)initWithQueryResult:(id)a3;
- (id)coreAnalyticsDictionaryFromQueryResult:(id)a3;
@end

@implementation ATXNotificationEventMetric

- (ATXNotificationEventMetric)initWithQueryResult:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXNotificationEventMetric;
  v6 = [(_ATXCoreAnalyticsMetric *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queryResult, a3);
  }

  return v7;
}

+ (id)atxComputedModeStringForTimestamp:(id)a3
{
  v3 = [MEMORY[0x277D41C60] currrentModeEventAtGivenTime:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 eventBody];
    [v5 atx_dndModeSemanticType];
    ATXModeForDNDSemanticType();
    v6 = ATXModeToString();
  }

  else
  {
    v6 = ATXModeToString();
  }

  return v6;
}

- (id)coreAnalyticsDictionaryFromQueryResult:(id)a3
{
  v98[31] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v97[0] = @"bundleId";
  v4 = [v3 bundleId];
  v5 = v4;
  if (!v4)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v55 = v4;
  v98[0] = v4;
  v97[1] = @"destinationReason";
  v6 = [v3 destinationReason];
  v7 = v6;
  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v93 = v5;
  v54 = v6;
  v98[1] = v6;
  v97[2] = @"handleDestination";
  v8 = [v3 finalDestination];
  v91 = v8;
  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v92 = v7;
  v53 = v8;
  v98[2] = v8;
  v97[3] = @"handleMode";
  v90 = [v3 resolution];
  v89 = [v90 resolutionTimestamp];
  v9 = [ATXNotificationEventMetric atxComputedModeStringForTimestamp:?];
  v10 = v9;
  if (!v9)
  {
    v9 = [MEMORY[0x277CBEB68] null];
  }

  v52 = v9;
  v98[3] = v9;
  v97[4] = @"isMessage";
  v87 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isMessage")}];
  v98[4] = v87;
  v97[5] = @"notificationUrgency";
  [v3 urgency];
  v11 = ATXUserNotificationDeliveryUrgencyToString();
  v12 = v11;
  if (!v11)
  {
    v11 = [MEMORY[0x277CBEB68] null];
  }

  v51 = v11;
  v98[5] = v11;
  v97[6] = @"originalDestination";
  v13 = [v3 originalDestination];
  v14 = v13;
  if (!v13)
  {
    v13 = [MEMORY[0x277CBEB68] null];
  }

  v50 = v13;
  v98[6] = v13;
  v97[7] = @"deliveryMethod";
  [v3 deliveryMethod];
  v15 = ATXUserNotificationDeliveryMethodToString();
  v16 = v15;
  if (!v15)
  {
    v15 = [MEMORY[0x277CBEB68] null];
  }

  v49 = v15;
  v98[7] = v15;
  v97[8] = @"receiveDestination";
  [v3 deliveryMethod];
  v17 = ATXUserNotificationDeliveryMethodToString();
  v18 = v17;
  if (!v17)
  {
    v17 = [MEMORY[0x277CBEB68] null];
  }

  v48 = v17;
  v98[8] = v17;
  v97[9] = @"receiveMode";
  v82 = [v3 receiveTimestamp];
  v19 = [ATXNotificationEventMetric atxComputedModeStringForTimestamp:?];
  v20 = v19;
  if (!v19)
  {
    v19 = [MEMORY[0x277CBEB68] null];
  }

  v47 = v19;
  v98[9] = v19;
  v97[10] = @"resolutionType";
  v80 = [v3 resolution];
  v21 = ATXUserNotificationResolutionTypeToString([v80 resolutionType]);
  v96 = v21;
  if (!v21)
  {
    v21 = [MEMORY[0x277CBEB68] null];
  }

  v46 = v21;
  v98[10] = v21;
  v97[11] = @"secureBundleId";
  v79 = [v3 bundleId];
  v22 = [ATXCoreAnalyticsFieldUtilities hashBoundString:?];
  v95 = v22;
  if (!v22)
  {
    v22 = [MEMORY[0x277CBEB68] null];
  }

  v45 = v22;
  v98[11] = v22;
  v97[12] = @"timeToResolution";
  v23 = MEMORY[0x277CCABB0];
  v78 = [v3 resolution];
  v24 = [v78 resolutionTimestamp];
  v76 = [v3 receiveTimestamp];
  v77 = v24;
  [v24 timeIntervalSinceDate:?];
  v75 = [v23 numberWithDouble:?];
  v98[12] = v75;
  v97[13] = @"receiveInferredMode";
  v25 = MEMORY[0x277D41C68];
  v74 = [v3 receiveTimestamp];
  v73 = [v25 currentModeEventAtGivenTime:?];
  v72 = [v73 eventBody];
  [v72 modeType];
  BMUserFocusInferredModeTypeToActivity();
  ATXModeFromActivityType();
  v26 = ATXModeToString();
  v94 = v26;
  if (!v26)
  {
    v26 = [MEMORY[0x277CBEB68] null];
  }

  v81 = v20;
  v83 = v18;
  v86 = v12;
  v44 = v26;
  v98[13] = v26;
  v97[14] = @"handleInferredMode";
  v27 = MEMORY[0x277D41C68];
  v71 = [v3 resolution];
  v70 = [v71 resolutionTimestamp];
  v69 = [v27 currentModeEventAtGivenTime:?];
  v68 = [v69 eventBody];
  [v68 modeType];
  BMUserFocusInferredModeTypeToActivity();
  ATXModeFromActivityType();
  v28 = ATXModeToString();
  v67 = v28;
  if (!v28)
  {
    v28 = [MEMORY[0x277CBEB68] null];
  }

  v84 = v16;
  v85 = v14;
  v88 = v10;
  v98[14] = v28;
  v97[15] = @"lengthOfNotificationBody";
  v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "bodyLength", v28)}];
  v98[15] = v66;
  v97[16] = @"bodyLength";
  v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "bodyLength")}];
  v98[16] = v65;
  v97[17] = @"titleLength";
  v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "titleLength")}];
  v98[17] = v64;
  v97[18] = @"subtitleLength";
  v63 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "subtitleLength")}];
  v98[18] = v63;
  v97[19] = @"summaryTopLineLength";
  v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "summaryLength")}];
  v98[19] = v62;
  v97[20] = @"deliveredInPrioritySection";
  v61 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isDeliveredInPrioritySection")}];
  v98[20] = v61;
  v97[21] = @"isSummarized";
  v60 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isSummarized")}];
  v98[21] = v60;
  v97[22] = @"isPartOfStack";
  v59 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isPartOfStack")}];
  v98[22] = v59;
  v97[23] = @"isStackSummary";
  v58 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isStackSummary")}];
  v98[23] = v58;
  v97[24] = @"numberOfNotificationsInStack";
  v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "numberOfNotificationsInStack")}];
  v98[24] = v57;
  v97[25] = @"notificationPriorityStatus";
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "notificationPriorityStatus")}];
  v98[25] = v29;
  v97[26] = @"notificationSummaryStatus";
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "notificationSummaryStatus")}];
  v98[26] = v30;
  v97[27] = @"isPriorityNotificationEnabled";
  v31 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isPriorityNotificationEnabled")}];
  v98[27] = v31;
  v97[28] = @"isNotificationSummaryEnabled";
  v32 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isNotificationSummaryEnabled")}];
  v98[28] = v32;
  v97[29] = @"timeToNextAppLaunch";
  v33 = [v3 nextAppLaunchTimestamp];
  if (v33)
  {
    v34 = MEMORY[0x277CCABB0];
    v16 = [v3 nextAppLaunchTimestamp];
    v14 = [v3 receiveTimestamp];
    [v16 timeIntervalSinceDate:v14];
    [v34 numberWithDouble:?];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v35 = ;
  v98[29] = v35;
  v97[30] = @"queryTimeInterval";
  v36 = MEMORY[0x277CCABB0];
  [v3 queryTimeInterval];
  v37 = [v36 numberWithDouble:?];
  v98[30] = v37;
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:31];

  if (v33)
  {

    v35 = v16;
  }

  if (!v67)
  {
  }

  v38 = v94;
  if (!v94)
  {

    v38 = 0;
  }

  v39 = v95;
  if (!v95)
  {

    v39 = 0;
  }

  v40 = v96;
  if (!v96)
  {

    v40 = 0;
  }

  if (!v81)
  {
  }

  if (!v83)
  {
  }

  if (!v84)
  {
  }

  if (!v85)
  {
  }

  if (!v86)
  {
  }

  if (!v88)
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

  v41 = *MEMORY[0x277D85DE8];

  return v56;
}

@end