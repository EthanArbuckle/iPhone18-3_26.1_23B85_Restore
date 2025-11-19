@interface ATXAppEntityFeatures
- (ATXAppEntityFeatures)init;
- (id)initFromJSON:(id)a3;
- (id)jsonRepresentation;
@end

@implementation ATXAppEntityFeatures

- (ATXAppEntityFeatures)init
{
  v28.receiver = self;
  v28.super_class = ATXAppEntityFeatures;
  v2 = [(ATXAppEntityFeatures *)&v28 init];
  v3 = v2;
  if (v2)
  {
    appCategoryScore = v2->_appCategoryScore;
    v2->_appCategoryScore = &unk_283A553D0;

    appCategoryScore_v2 = v3->_appCategoryScore_v2;
    v3->_appCategoryScore_v2 = &unk_283A553D0;

    globalModeAffinityPrior = v3->_globalModeAffinityPrior;
    v3->_globalModeAffinityPrior = &unk_283A553D0;

    globalInterruptingPrior = v3->_globalInterruptingPrior;
    v3->_globalInterruptingPrior = &unk_283A553D0;

    notificationsReceivedInLastTwoWeeks = v3->_notificationsReceivedInLastTwoWeeks;
    v3->_notificationsReceivedInLastTwoWeeks = &unk_283A553D0;

    modeAppInterruptionsCountByEntity = v3->_modeAppInterruptionsCountByEntity;
    v3->_modeAppInterruptionsCountByEntity = &unk_283A553D0;

    modePopularityOfInterruptingEntity = v3->_modePopularityOfInterruptingEntity;
    v3->_modePopularityOfInterruptingEntity = &unk_283A553D0;

    modeAppInterruptionsClassConditionalProbabilityByEntity = v3->_modeAppInterruptionsClassConditionalProbabilityByEntity;
    v3->_modeAppInterruptionsClassConditionalProbabilityByEntity = &unk_283A553D0;

    globalAppInterruptionsCountByEntity = v3->_globalAppInterruptionsCountByEntity;
    v3->_globalAppInterruptionsCountByEntity = &unk_283A553D0;

    globalPopularityOfInterruptingEntity = v3->_globalPopularityOfInterruptingEntity;
    v3->_globalPopularityOfInterruptingEntity = &unk_283A553D0;

    ratioOfModePopularityToGlobalPopularityOfInterruptingEntity = v3->_ratioOfModePopularityToGlobalPopularityOfInterruptingEntity;
    v3->_ratioOfModePopularityToGlobalPopularityOfInterruptingEntity = &unk_283A553D0;

    modeCountOfNotificationsClearedForEntity = v3->_modeCountOfNotificationsClearedForEntity;
    v3->_modeCountOfNotificationsClearedForEntity = &unk_283A553D0;

    globalCountOfNotificationsClearedForEntity = v3->_globalCountOfNotificationsClearedForEntity;
    v3->_globalCountOfNotificationsClearedForEntity = &unk_283A553D0;

    localNotificationsClearedRateForEntity = v3->_localNotificationsClearedRateForEntity;
    v3->_localNotificationsClearedRateForEntity = &unk_283A553D0;

    globalNotificationsClearedRateForEntity = v3->_globalNotificationsClearedRateForEntity;
    v3->_globalNotificationsClearedRateForEntity = &unk_283A553D0;

    ratioOfLocalToGlobalNotificationsClearedRateForEntity = v3->_ratioOfLocalToGlobalNotificationsClearedRateForEntity;
    v3->_ratioOfLocalToGlobalNotificationsClearedRateForEntity = &unk_283A553D0;

    classConditionalOfNotificationsClearedForEntity = v3->_classConditionalOfNotificationsClearedForEntity;
    v3->_classConditionalOfNotificationsClearedForEntity = &unk_283A553D0;

    globalCountOfNotificationsReceivedForEntity = v3->_globalCountOfNotificationsReceivedForEntity;
    v3->_globalCountOfNotificationsReceivedForEntity = &unk_283A553D0;

    modeCountOfNotificationsReceivedForEntity = v3->_modeCountOfNotificationsReceivedForEntity;
    v3->_modeCountOfNotificationsReceivedForEntity = &unk_283A553D0;

    localPopularityOfNotificationsReceivedForEntity = v3->_localPopularityOfNotificationsReceivedForEntity;
    v3->_localPopularityOfNotificationsReceivedForEntity = &unk_283A553D0;

    globalPopularityOfNotificationsReceivedForEntity = v3->_globalPopularityOfNotificationsReceivedForEntity;
    v3->_globalPopularityOfNotificationsReceivedForEntity = &unk_283A553D0;

    ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity = v3->_ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity;
    v3->_ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity = &unk_283A553D0;

    classConditionalOfNotificationsReceivedForEntity = v3->_classConditionalOfNotificationsReceivedForEntity;
    v3->_classConditionalOfNotificationsReceivedForEntity = &unk_283A553D0;
  }

  return v3;
}

- (id)initFromJSON:(id)a3
{
  v4 = a3;
  v53.receiver = self;
  v53.super_class = ATXAppEntityFeatures;
  v5 = [(ATXAppEntityFeatures *)&v53 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"appCategoryScore"];
    appCategoryScore = v5->_appCategoryScore;
    v5->_appCategoryScore = v6;

    v8 = [v4 objectForKeyedSubscript:@"appCategoryScore_v2"];
    appCategoryScore_v2 = v5->_appCategoryScore_v2;
    v5->_appCategoryScore_v2 = v8;

    v10 = [v4 objectForKeyedSubscript:@"globalModeAffinityPrior"];
    globalModeAffinityPrior = v5->_globalModeAffinityPrior;
    v5->_globalModeAffinityPrior = v10;

    v12 = [v4 objectForKeyedSubscript:@"globalInterruptingPrior"];
    globalInterruptingPrior = v5->_globalInterruptingPrior;
    v5->_globalInterruptingPrior = v12;

    v14 = [v4 objectForKeyedSubscript:@"notificationsReceivedInLastTwoWeeks"];
    notificationsReceivedInLastTwoWeeks = v5->_notificationsReceivedInLastTwoWeeks;
    v5->_notificationsReceivedInLastTwoWeeks = v14;

    v16 = [v4 objectForKeyedSubscript:@"modeAppInterruptionsCountByEntity"];
    modeAppInterruptionsCountByEntity = v5->_modeAppInterruptionsCountByEntity;
    v5->_modeAppInterruptionsCountByEntity = v16;

    v18 = [v4 objectForKeyedSubscript:@"modePopularityOfInterruptingEntity"];
    modePopularityOfInterruptingEntity = v5->_modePopularityOfInterruptingEntity;
    v5->_modePopularityOfInterruptingEntity = v18;

    v20 = [v4 objectForKeyedSubscript:@"modeAppInterruptionsClassConditionalProbabilityByEntity"];
    modeAppInterruptionsClassConditionalProbabilityByEntity = v5->_modeAppInterruptionsClassConditionalProbabilityByEntity;
    v5->_modeAppInterruptionsClassConditionalProbabilityByEntity = v20;

    v22 = [v4 objectForKeyedSubscript:@"globalAppInterruptionsCountByEntity"];
    globalAppInterruptionsCountByEntity = v5->_globalAppInterruptionsCountByEntity;
    v5->_globalAppInterruptionsCountByEntity = v22;

    v24 = [v4 objectForKeyedSubscript:@"globalPopularityOfInterruptingEntity"];
    globalPopularityOfInterruptingEntity = v5->_globalPopularityOfInterruptingEntity;
    v5->_globalPopularityOfInterruptingEntity = v24;

    v26 = [v4 objectForKeyedSubscript:@"ratioOfModePopularityToGlobalPopularityOfInterruptingEntity"];
    ratioOfModePopularityToGlobalPopularityOfInterruptingEntity = v5->_ratioOfModePopularityToGlobalPopularityOfInterruptingEntity;
    v5->_ratioOfModePopularityToGlobalPopularityOfInterruptingEntity = v26;

    v28 = [v4 objectForKeyedSubscript:@"modeCountOfNotificationsClearedForEntity"];
    modeCountOfNotificationsClearedForEntity = v5->_modeCountOfNotificationsClearedForEntity;
    v5->_modeCountOfNotificationsClearedForEntity = v28;

    v30 = [v4 objectForKeyedSubscript:@"globalCountOfNotificationsClearedForEntity"];
    globalCountOfNotificationsClearedForEntity = v5->_globalCountOfNotificationsClearedForEntity;
    v5->_globalCountOfNotificationsClearedForEntity = v30;

    v32 = [v4 objectForKeyedSubscript:@"localNotificationsClearedRateForEntity"];
    localNotificationsClearedRateForEntity = v5->_localNotificationsClearedRateForEntity;
    v5->_localNotificationsClearedRateForEntity = v32;

    v34 = [v4 objectForKeyedSubscript:@"globalNotificationsClearedRateForEntity"];
    globalNotificationsClearedRateForEntity = v5->_globalNotificationsClearedRateForEntity;
    v5->_globalNotificationsClearedRateForEntity = v34;

    v36 = [v4 objectForKeyedSubscript:@"ratioOfLocalToGlobalNotificationsClearedRateForEntity"];
    ratioOfLocalToGlobalNotificationsClearedRateForEntity = v5->_ratioOfLocalToGlobalNotificationsClearedRateForEntity;
    v5->_ratioOfLocalToGlobalNotificationsClearedRateForEntity = v36;

    v38 = [v4 objectForKeyedSubscript:@"classConditionalOfNotificationsClearedForEntity"];
    classConditionalOfNotificationsClearedForEntity = v5->_classConditionalOfNotificationsClearedForEntity;
    v5->_classConditionalOfNotificationsClearedForEntity = v38;

    v40 = [v4 objectForKeyedSubscript:@"globalCountOfNotificationsReceivedForEntity"];
    globalCountOfNotificationsReceivedForEntity = v5->_globalCountOfNotificationsReceivedForEntity;
    v5->_globalCountOfNotificationsReceivedForEntity = v40;

    v42 = [v4 objectForKeyedSubscript:@"modeCountOfNotificationsReceivedForEntity"];
    modeCountOfNotificationsReceivedForEntity = v5->_modeCountOfNotificationsReceivedForEntity;
    v5->_modeCountOfNotificationsReceivedForEntity = v42;

    v44 = [v4 objectForKeyedSubscript:@"localPopularityOfNotificationsReceivedForEntity"];
    localPopularityOfNotificationsReceivedForEntity = v5->_localPopularityOfNotificationsReceivedForEntity;
    v5->_localPopularityOfNotificationsReceivedForEntity = v44;

    v46 = [v4 objectForKeyedSubscript:@"globalPopularityOfNotificationsReceivedForEntity"];
    globalPopularityOfNotificationsReceivedForEntity = v5->_globalPopularityOfNotificationsReceivedForEntity;
    v5->_globalPopularityOfNotificationsReceivedForEntity = v46;

    v48 = [v4 objectForKeyedSubscript:@"ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity"];
    ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity = v5->_ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity;
    v5->_ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity = v48;

    v50 = [v4 objectForKeyedSubscript:@"classConditionalOfNotificationsReceivedForEntity"];
    classConditionalOfNotificationsReceivedForEntity = v5->_classConditionalOfNotificationsReceivedForEntity;
    v5->_classConditionalOfNotificationsReceivedForEntity = v50;
  }

  return v5;
}

- (id)jsonRepresentation
{
  v34 = *MEMORY[0x277D85DE8];
  v15 = *&self->_appCategoryScore;
  v14[0] = @"appCategoryScore";
  v14[1] = @"appCategoryScore_v2";
  globalModeAffinityPrior = self->_globalModeAffinityPrior;
  v14[2] = @"globalModeAffinityPrior";
  v14[3] = @"globalInterruptingPrior";
  v17 = *&self->_globalInterruptingPrior;
  v14[4] = @"notificationsReceivedInLastTwoWeeks";
  v14[5] = @"modeAppInterruptionsCountByEntity";
  modeAppInterruptionsCountByEntity = self->_modeAppInterruptionsCountByEntity;
  v16 = globalModeAffinityPrior;
  v14[6] = @"modePopularityOfInterruptingEntity";
  v14[7] = @"modeAppInterruptionsClassConditionalProbabilityByEntity";
  v20 = *&self->_modeAppInterruptionsClassConditionalProbabilityByEntity;
  v14[8] = @"globalAppInterruptionsCountByEntity";
  v14[9] = @"globalPopularityOfInterruptingEntity";
  globalPopularityOfInterruptingEntity = self->_globalPopularityOfInterruptingEntity;
  modePopularityOfInterruptingEntity = self->_modePopularityOfInterruptingEntity;
  v18 = modeAppInterruptionsCountByEntity;
  v19 = modePopularityOfInterruptingEntity;
  v21 = globalPopularityOfInterruptingEntity;
  v22 = *&self->_ratioOfModePopularityToGlobalPopularityOfInterruptingEntity;
  v14[10] = @"ratioOfModePopularityToGlobalPopularityOfInterruptingEntity";
  v14[11] = @"modeCountOfNotificationsClearedForEntity";
  v14[12] = @"globalCountOfNotificationsClearedForEntity";
  v14[13] = @"localNotificationsClearedRateForEntity";
  localNotificationsClearedRateForEntity = self->_localNotificationsClearedRateForEntity;
  globalCountOfNotificationsClearedForEntity = self->_globalCountOfNotificationsClearedForEntity;
  v24 = localNotificationsClearedRateForEntity;
  v14[14] = @"globalNotificationsClearedRateForEntity";
  v14[15] = @"ratioOfLocalToGlobalNotificationsClearedRateForEntity";
  ratioOfLocalToGlobalNotificationsClearedRateForEntity = self->_ratioOfLocalToGlobalNotificationsClearedRateForEntity;
  globalNotificationsClearedRateForEntity = self->_globalNotificationsClearedRateForEntity;
  v26 = ratioOfLocalToGlobalNotificationsClearedRateForEntity;
  v14[16] = @"classConditionalOfNotificationsClearedForEntity";
  v14[17] = @"globalCountOfNotificationsReceivedForEntity";
  globalCountOfNotificationsReceivedForEntity = self->_globalCountOfNotificationsReceivedForEntity;
  classConditionalOfNotificationsClearedForEntity = self->_classConditionalOfNotificationsClearedForEntity;
  v28 = globalCountOfNotificationsReceivedForEntity;
  v14[18] = @"modeCountOfNotificationsReceivedForEntity";
  v14[19] = @"localPopularityOfNotificationsReceivedForEntity";
  localPopularityOfNotificationsReceivedForEntity = self->_localPopularityOfNotificationsReceivedForEntity;
  modeCountOfNotificationsReceivedForEntity = self->_modeCountOfNotificationsReceivedForEntity;
  v30 = localPopularityOfNotificationsReceivedForEntity;
  v14[20] = @"globalPopularityOfNotificationsReceivedForEntity";
  v14[21] = @"ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity";
  ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity = self->_ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity;
  globalPopularityOfNotificationsReceivedForEntity = self->_globalPopularityOfNotificationsReceivedForEntity;
  v32 = ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity;
  v14[22] = @"classConditionalOfNotificationsReceivedForEntity";
  classConditionalOfNotificationsReceivedForEntity = self->_classConditionalOfNotificationsReceivedForEntity;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:v14 count:23];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end