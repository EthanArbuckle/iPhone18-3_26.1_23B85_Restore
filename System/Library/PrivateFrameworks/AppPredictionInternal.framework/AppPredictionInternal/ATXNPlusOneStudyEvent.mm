@interface ATXNPlusOneStudyEvent
- (id)coreAnalyticsEvent;
@end

@implementation ATXNPlusOneStudyEvent

- (id)coreAnalyticsEvent
{
  v36[18] = *MEMORY[0x277D85DE8];
  v35[0] = @"extensionBundleId";
  v34 = [(ATXNPlusOneStudyEvent *)self extensionBundleId];
  v36[0] = v34;
  v35[1] = @"widgetKind";
  v33 = [(ATXNPlusOneStudyEvent *)self widgetKind];
  v36[1] = v33;
  v35[2] = @"widgetExistsOnScreen";
  v32 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXNPlusOneStudyEvent widgetExistsOnScreen](self, "widgetExistsOnScreen")}];
  v36[2] = v32;
  v35[3] = @"appPushNotificationEnabled";
  v31 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXNPlusOneStudyEvent appPushNotificationEnabled](self, "appPushNotificationEnabled")}];
  v36[3] = v31;
  v35[4] = @"appLaunchPopularity";
  v3 = MEMORY[0x277CCABB0];
  [(ATXNPlusOneStudyEvent *)self appLaunchPopularity];
  v30 = [v3 numberWithDouble:?];
  v36[4] = v30;
  v35[5] = @"appScreenTimeCategory";
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXNPlusOneStudyEvent appScreenTimeCategory](self, "appScreenTimeCategory")}];
  v36[5] = v29;
  v35[6] = @"numAppLaunchPastDay";
  v4 = MEMORY[0x277CCABB0];
  v28 = [(ATXNPlusOneStudyEvent *)self appLaunchCounts];
  v27 = [v4 numberWithInteger:{objc_msgSend(v28, "numAppLaunchPastDay")}];
  v36[6] = v27;
  v35[7] = @"numAppLaunchPast3Day";
  v5 = MEMORY[0x277CCABB0];
  v26 = [(ATXNPlusOneStudyEvent *)self appLaunchCounts];
  v25 = [v5 numberWithInteger:{objc_msgSend(v26, "numAppLaunchPast3Day")}];
  v36[7] = v25;
  v35[8] = @"numAppLaunchPast7Day";
  v6 = MEMORY[0x277CCABB0];
  v24 = [(ATXNPlusOneStudyEvent *)self appLaunchCounts];
  v23 = [v6 numberWithInteger:{objc_msgSend(v24, "numAppLaunchPast7Day")}];
  v36[8] = v23;
  v35[9] = @"numAppLaunchPast14Day";
  v7 = MEMORY[0x277CCABB0];
  v22 = [(ATXNPlusOneStudyEvent *)self appLaunchCounts];
  v21 = [v7 numberWithInteger:{objc_msgSend(v22, "numAppLaunchPast14Day")}];
  v36[9] = v21;
  v35[10] = @"numAppLaunchPast28Day";
  v8 = MEMORY[0x277CCABB0];
  v9 = [(ATXNPlusOneStudyEvent *)self appLaunchCounts];
  v10 = [v8 numberWithInteger:{objc_msgSend(v9, "numAppLaunchPast28Day")}];
  v36[10] = v10;
  v35[11] = @"suggestionCountInfoHeuristic";
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ATXNPlusOneStudyEvent suggestionCountInfoHeuristicHigh](self, "suggestionCountInfoHeuristicHigh")}];
  v36[11] = v11;
  v35[12] = @"suggestionCountInfoHeuristicMED";
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ATXNPlusOneStudyEvent suggestionCountInfoHeuristicMed](self, "suggestionCountInfoHeuristicMed")}];
  v36[12] = v12;
  v35[13] = @"suggestionCountInfoHeuristicLOW";
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ATXNPlusOneStudyEvent suggestionCountInfoHeuristicLow](self, "suggestionCountInfoHeuristicLow")}];
  v36[13] = v13;
  v35[14] = @"suggestionCountRelevantShortcut";
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ATXNPlusOneStudyEvent suggestionCountRelevantShortcut](self, "suggestionCountRelevantShortcut")}];
  v36[14] = v14;
  v35[15] = @"suggestionCountShortcutConversion";
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ATXNPlusOneStudyEvent suggestionCountShortcutConversionHigh](self, "suggestionCountShortcutConversionHigh")}];
  v36[15] = v15;
  v35[16] = @"suggestionCountShortcutConversionMED";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ATXNPlusOneStudyEvent suggestionCountShortcutConversionMed](self, "suggestionCountShortcutConversionMed")}];
  v36[16] = v16;
  v35[17] = @"suggestionCountShortcutConversionLOW";
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ATXNPlusOneStudyEvent suggestionCountShortcutConversionLow](self, "suggestionCountShortcutConversionLow")}];
  v36[17] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:18];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

@end