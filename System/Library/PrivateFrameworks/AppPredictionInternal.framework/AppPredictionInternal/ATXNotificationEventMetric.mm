@interface ATXNotificationEventMetric
+ (id)atxComputedModeStringForTimestamp:(id)timestamp;
- (ATXNotificationEventMetric)initWithQueryResult:(id)result;
- (id)coreAnalyticsDictionaryFromQueryResult:(id)result;
@end

@implementation ATXNotificationEventMetric

- (ATXNotificationEventMetric)initWithQueryResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = ATXNotificationEventMetric;
  v6 = [(_ATXCoreAnalyticsMetric *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queryResult, result);
  }

  return v7;
}

+ (id)atxComputedModeStringForTimestamp:(id)timestamp
{
  v3 = [MEMORY[0x277D41C60] currrentModeEventAtGivenTime:timestamp];
  v4 = v3;
  if (v3)
  {
    eventBody = [v3 eventBody];
    [eventBody atx_dndModeSemanticType];
    ATXModeForDNDSemanticType();
    v6 = ATXModeToString();
  }

  else
  {
    v6 = ATXModeToString();
  }

  return v6;
}

- (id)coreAnalyticsDictionaryFromQueryResult:(id)result
{
  v98[31] = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v97[0] = @"bundleId";
  bundleId = [resultCopy bundleId];
  v5 = bundleId;
  if (!bundleId)
  {
    bundleId = [MEMORY[0x277CBEB68] null];
  }

  v55 = bundleId;
  v98[0] = bundleId;
  v97[1] = @"destinationReason";
  destinationReason = [resultCopy destinationReason];
  v7 = destinationReason;
  if (!destinationReason)
  {
    destinationReason = [MEMORY[0x277CBEB68] null];
  }

  v93 = v5;
  v54 = destinationReason;
  v98[1] = destinationReason;
  v97[2] = @"handleDestination";
  finalDestination = [resultCopy finalDestination];
  v91 = finalDestination;
  if (!finalDestination)
  {
    finalDestination = [MEMORY[0x277CBEB68] null];
  }

  v92 = v7;
  v53 = finalDestination;
  v98[2] = finalDestination;
  v97[3] = @"handleMode";
  resolution = [resultCopy resolution];
  resolutionTimestamp = [resolution resolutionTimestamp];
  null = [ATXNotificationEventMetric atxComputedModeStringForTimestamp:?];
  v10 = null;
  if (!null)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v52 = null;
  v98[3] = null;
  v97[4] = @"isMessage";
  v87 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(resultCopy, "isMessage")}];
  v98[4] = v87;
  v97[5] = @"notificationUrgency";
  [resultCopy urgency];
  null2 = ATXUserNotificationDeliveryUrgencyToString();
  v12 = null2;
  if (!null2)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v51 = null2;
  v98[5] = null2;
  v97[6] = @"originalDestination";
  originalDestination = [resultCopy originalDestination];
  receiveTimestamp4 = originalDestination;
  if (!originalDestination)
  {
    originalDestination = [MEMORY[0x277CBEB68] null];
  }

  v50 = originalDestination;
  v98[6] = originalDestination;
  v97[7] = @"deliveryMethod";
  [resultCopy deliveryMethod];
  null3 = ATXUserNotificationDeliveryMethodToString();
  nextAppLaunchTimestamp2 = null3;
  if (!null3)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v49 = null3;
  v98[7] = null3;
  v97[8] = @"receiveDestination";
  [resultCopy deliveryMethod];
  null4 = ATXUserNotificationDeliveryMethodToString();
  v18 = null4;
  if (!null4)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v48 = null4;
  v98[8] = null4;
  v97[9] = @"receiveMode";
  receiveTimestamp = [resultCopy receiveTimestamp];
  null5 = [ATXNotificationEventMetric atxComputedModeStringForTimestamp:?];
  v20 = null5;
  if (!null5)
  {
    null5 = [MEMORY[0x277CBEB68] null];
  }

  v47 = null5;
  v98[9] = null5;
  v97[10] = @"resolutionType";
  resolution2 = [resultCopy resolution];
  null6 = ATXUserNotificationResolutionTypeToString([resolution2 resolutionType]);
  v96 = null6;
  if (!null6)
  {
    null6 = [MEMORY[0x277CBEB68] null];
  }

  v46 = null6;
  v98[10] = null6;
  v97[11] = @"secureBundleId";
  bundleId2 = [resultCopy bundleId];
  null7 = [ATXCoreAnalyticsFieldUtilities hashBoundString:?];
  v95 = null7;
  if (!null7)
  {
    null7 = [MEMORY[0x277CBEB68] null];
  }

  v45 = null7;
  v98[11] = null7;
  v97[12] = @"timeToResolution";
  v23 = MEMORY[0x277CCABB0];
  resolution3 = [resultCopy resolution];
  resolutionTimestamp2 = [resolution3 resolutionTimestamp];
  receiveTimestamp2 = [resultCopy receiveTimestamp];
  v77 = resolutionTimestamp2;
  [resolutionTimestamp2 timeIntervalSinceDate:?];
  v75 = [v23 numberWithDouble:?];
  v98[12] = v75;
  v97[13] = @"receiveInferredMode";
  v25 = MEMORY[0x277D41C68];
  receiveTimestamp3 = [resultCopy receiveTimestamp];
  v73 = [v25 currentModeEventAtGivenTime:?];
  eventBody = [v73 eventBody];
  [eventBody modeType];
  BMUserFocusInferredModeTypeToActivity();
  ATXModeFromActivityType();
  null8 = ATXModeToString();
  v94 = null8;
  if (!null8)
  {
    null8 = [MEMORY[0x277CBEB68] null];
  }

  v81 = v20;
  v83 = v18;
  v86 = v12;
  v44 = null8;
  v98[13] = null8;
  v97[14] = @"handleInferredMode";
  v27 = MEMORY[0x277D41C68];
  resolution4 = [resultCopy resolution];
  resolutionTimestamp3 = [resolution4 resolutionTimestamp];
  v69 = [v27 currentModeEventAtGivenTime:?];
  eventBody2 = [v69 eventBody];
  [eventBody2 modeType];
  BMUserFocusInferredModeTypeToActivity();
  ATXModeFromActivityType();
  null9 = ATXModeToString();
  v67 = null9;
  if (!null9)
  {
    null9 = [MEMORY[0x277CBEB68] null];
  }

  v84 = nextAppLaunchTimestamp2;
  v85 = receiveTimestamp4;
  v88 = v10;
  v98[14] = null9;
  v97[15] = @"lengthOfNotificationBody";
  v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(resultCopy, "bodyLength", null9)}];
  v98[15] = v66;
  v97[16] = @"bodyLength";
  v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(resultCopy, "bodyLength")}];
  v98[16] = v65;
  v97[17] = @"titleLength";
  v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(resultCopy, "titleLength")}];
  v98[17] = v64;
  v97[18] = @"subtitleLength";
  v63 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(resultCopy, "subtitleLength")}];
  v98[18] = v63;
  v97[19] = @"summaryTopLineLength";
  v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(resultCopy, "summaryLength")}];
  v98[19] = v62;
  v97[20] = @"deliveredInPrioritySection";
  v61 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(resultCopy, "isDeliveredInPrioritySection")}];
  v98[20] = v61;
  v97[21] = @"isSummarized";
  v60 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(resultCopy, "isSummarized")}];
  v98[21] = v60;
  v97[22] = @"isPartOfStack";
  v59 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(resultCopy, "isPartOfStack")}];
  v98[22] = v59;
  v97[23] = @"isStackSummary";
  v58 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(resultCopy, "isStackSummary")}];
  v98[23] = v58;
  v97[24] = @"numberOfNotificationsInStack";
  v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(resultCopy, "numberOfNotificationsInStack")}];
  v98[24] = v57;
  v97[25] = @"notificationPriorityStatus";
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(resultCopy, "notificationPriorityStatus")}];
  v98[25] = v29;
  v97[26] = @"notificationSummaryStatus";
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(resultCopy, "notificationSummaryStatus")}];
  v98[26] = v30;
  v97[27] = @"isPriorityNotificationEnabled";
  v31 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(resultCopy, "isPriorityNotificationEnabled")}];
  v98[27] = v31;
  v97[28] = @"isNotificationSummaryEnabled";
  v32 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(resultCopy, "isNotificationSummaryEnabled")}];
  v98[28] = v32;
  v97[29] = @"timeToNextAppLaunch";
  nextAppLaunchTimestamp = [resultCopy nextAppLaunchTimestamp];
  if (nextAppLaunchTimestamp)
  {
    v34 = MEMORY[0x277CCABB0];
    nextAppLaunchTimestamp2 = [resultCopy nextAppLaunchTimestamp];
    receiveTimestamp4 = [resultCopy receiveTimestamp];
    [nextAppLaunchTimestamp2 timeIntervalSinceDate:receiveTimestamp4];
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
  [resultCopy queryTimeInterval];
  v37 = [v36 numberWithDouble:?];
  v98[30] = v37;
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:31];

  if (nextAppLaunchTimestamp)
  {

    v35 = nextAppLaunchTimestamp2;
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