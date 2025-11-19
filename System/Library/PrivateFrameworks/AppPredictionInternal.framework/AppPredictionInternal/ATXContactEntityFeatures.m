@interface ATXContactEntityFeatures
- (ATXContactEntityFeatures)init;
- (id)initFromJSON:(id)a3;
- (id)jsonRepresentation;
@end

@implementation ATXContactEntityFeatures

- (ATXContactEntityFeatures)init
{
  v17.receiver = self;
  v17.super_class = ATXContactEntityFeatures;
  v2 = [(ATXContactEntityFeatures *)&v17 init];
  v3 = v2;
  if (v2)
  {
    modeCountOfNotificationsClearedForEntity = v2->_modeCountOfNotificationsClearedForEntity;
    v2->_modeCountOfNotificationsClearedForEntity = &unk_283A57560;

    globalCountOfNotificationsClearedForEntity = v3->_globalCountOfNotificationsClearedForEntity;
    v3->_globalCountOfNotificationsClearedForEntity = &unk_283A57560;

    localNotificationsClearedRateForEntity = v3->_localNotificationsClearedRateForEntity;
    v3->_localNotificationsClearedRateForEntity = &unk_283A57560;

    globalNotificationsClearedRateForEntity = v3->_globalNotificationsClearedRateForEntity;
    v3->_globalNotificationsClearedRateForEntity = &unk_283A57560;

    ratioOfLocalToGlobalNotificationsClearedRateForEntity = v3->_ratioOfLocalToGlobalNotificationsClearedRateForEntity;
    v3->_ratioOfLocalToGlobalNotificationsClearedRateForEntity = &unk_283A57560;

    classConditionalOfNotificationsClearedForEntity = v3->_classConditionalOfNotificationsClearedForEntity;
    v3->_classConditionalOfNotificationsClearedForEntity = &unk_283A57560;

    globalCountOfNotificationsReceivedForEntity = v3->_globalCountOfNotificationsReceivedForEntity;
    v3->_globalCountOfNotificationsReceivedForEntity = &unk_283A57560;

    modeCountOfNotificationsReceivedForEntity = v3->_modeCountOfNotificationsReceivedForEntity;
    v3->_modeCountOfNotificationsReceivedForEntity = &unk_283A57560;

    localPopularityOfNotificationsReceivedForEntity = v3->_localPopularityOfNotificationsReceivedForEntity;
    v3->_localPopularityOfNotificationsReceivedForEntity = &unk_283A57560;

    globalPopularityOfNotificationsReceivedForEntity = v3->_globalPopularityOfNotificationsReceivedForEntity;
    v3->_globalPopularityOfNotificationsReceivedForEntity = &unk_283A57560;

    ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity = v3->_ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity;
    v3->_ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity = &unk_283A57560;

    classConditionalOfNotificationsReceivedForEntity = v3->_classConditionalOfNotificationsReceivedForEntity;
    v3->_classConditionalOfNotificationsReceivedForEntity = &unk_283A57560;
  }

  return v3;
}

- (id)initFromJSON:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = ATXContactEntityFeatures;
  v5 = [(ATXContactEntityFeatures *)&v35 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isFavorite"];
    v5->_isFavoriteContact = [v6 BOOLValue];

    v7 = [v4 objectForKeyedSubscript:@"isVIP"];
    v5->_isVIPContact = [v7 BOOLValue];

    v8 = [v4 objectForKeyedSubscript:@"isEmergency"];
    v5->_isEmergencyContact = [v8 BOOLValue];

    v9 = [v4 objectForKeyedSubscript:@"isICloudFamilyMember"];
    v5->_isICloudFamilyMember = [v9 BOOLValue];

    v10 = [v4 objectForKeyedSubscript:@"modeCountOfNotificationsClearedForEntity"];
    modeCountOfNotificationsClearedForEntity = v5->_modeCountOfNotificationsClearedForEntity;
    v5->_modeCountOfNotificationsClearedForEntity = v10;

    v12 = [v4 objectForKeyedSubscript:@"globalCountOfNotificationsClearedForEntity"];
    globalCountOfNotificationsClearedForEntity = v5->_globalCountOfNotificationsClearedForEntity;
    v5->_globalCountOfNotificationsClearedForEntity = v12;

    v14 = [v4 objectForKeyedSubscript:@"localNotificationsClearedRateForEntity"];
    localNotificationsClearedRateForEntity = v5->_localNotificationsClearedRateForEntity;
    v5->_localNotificationsClearedRateForEntity = v14;

    v16 = [v4 objectForKeyedSubscript:@"globalNotificationsClearedRateForEntity"];
    globalNotificationsClearedRateForEntity = v5->_globalNotificationsClearedRateForEntity;
    v5->_globalNotificationsClearedRateForEntity = v16;

    v18 = [v4 objectForKeyedSubscript:@"ratioOfLocalToGlobalNotificationsClearedRateForEntity"];
    ratioOfLocalToGlobalNotificationsClearedRateForEntity = v5->_ratioOfLocalToGlobalNotificationsClearedRateForEntity;
    v5->_ratioOfLocalToGlobalNotificationsClearedRateForEntity = v18;

    v20 = [v4 objectForKeyedSubscript:@"classConditionalOfNotificationsClearedForEntity"];
    classConditionalOfNotificationsClearedForEntity = v5->_classConditionalOfNotificationsClearedForEntity;
    v5->_classConditionalOfNotificationsClearedForEntity = v20;

    v22 = [v4 objectForKeyedSubscript:@"globalCountOfNotificationsReceivedForEntity"];
    globalCountOfNotificationsReceivedForEntity = v5->_globalCountOfNotificationsReceivedForEntity;
    v5->_globalCountOfNotificationsReceivedForEntity = v22;

    v24 = [v4 objectForKeyedSubscript:@"modeCountOfNotificationsReceivedForEntity"];
    modeCountOfNotificationsReceivedForEntity = v5->_modeCountOfNotificationsReceivedForEntity;
    v5->_modeCountOfNotificationsReceivedForEntity = v24;

    v26 = [v4 objectForKeyedSubscript:@"localPopularityOfNotificationsReceivedForEntity"];
    localPopularityOfNotificationsReceivedForEntity = v5->_localPopularityOfNotificationsReceivedForEntity;
    v5->_localPopularityOfNotificationsReceivedForEntity = v26;

    v28 = [v4 objectForKeyedSubscript:@"globalPopularityOfNotificationsReceivedForEntity"];
    globalPopularityOfNotificationsReceivedForEntity = v5->_globalPopularityOfNotificationsReceivedForEntity;
    v5->_globalPopularityOfNotificationsReceivedForEntity = v28;

    v30 = [v4 objectForKeyedSubscript:@"ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity"];
    ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity = v5->_ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity;
    v5->_ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity = v30;

    v32 = [v4 objectForKeyedSubscript:@"classConditionalOfNotificationsReceivedForEntity"];
    classConditionalOfNotificationsReceivedForEntity = v5->_classConditionalOfNotificationsReceivedForEntity;
    v5->_classConditionalOfNotificationsReceivedForEntity = v32;
  }

  return v5;
}

- (id)jsonRepresentation
{
  v22 = *MEMORY[0x277D85DE8];
  v13[0] = @"isFavorite";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:self->_isFavoriteContact];
  v14[0] = v3;
  v13[1] = @"isVIP";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_isVIPContact];
  v14[1] = v4;
  v13[2] = @"isEmergency";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isEmergencyContact];
  v14[2] = v5;
  v13[3] = @"isICloudFamilyMember";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isICloudFamilyMember];
  modeCountOfNotificationsClearedForEntity = self->_modeCountOfNotificationsClearedForEntity;
  globalCountOfNotificationsClearedForEntity = self->_globalCountOfNotificationsClearedForEntity;
  v14[3] = v6;
  v14[4] = modeCountOfNotificationsClearedForEntity;
  v13[4] = @"modeCountOfNotificationsClearedForEntity";
  v13[5] = @"globalCountOfNotificationsClearedForEntity";
  v14[5] = globalCountOfNotificationsClearedForEntity;
  v15 = *&self->_localNotificationsClearedRateForEntity;
  v13[6] = @"localNotificationsClearedRateForEntity";
  v13[7] = @"globalNotificationsClearedRateForEntity";
  v13[8] = @"ratioOfLocalToGlobalNotificationsClearedRateForEntity";
  v13[9] = @"classConditionalOfNotificationsClearedForEntity";
  classConditionalOfNotificationsClearedForEntity = self->_classConditionalOfNotificationsClearedForEntity;
  ratioOfLocalToGlobalNotificationsClearedRateForEntity = self->_ratioOfLocalToGlobalNotificationsClearedRateForEntity;
  v17 = classConditionalOfNotificationsClearedForEntity;
  v18 = *&self->_globalCountOfNotificationsReceivedForEntity;
  v13[10] = @"globalCountOfNotificationsReceivedForEntity";
  v13[11] = @"modeCountOfNotificationsReceivedForEntity";
  localPopularityOfNotificationsReceivedForEntity = self->_localPopularityOfNotificationsReceivedForEntity;
  v13[12] = @"localPopularityOfNotificationsReceivedForEntity";
  v13[13] = @"globalPopularityOfNotificationsReceivedForEntity";
  v20 = *&self->_globalPopularityOfNotificationsReceivedForEntity;
  v13[14] = @"ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity";
  v13[15] = @"classConditionalOfNotificationsReceivedForEntity";
  classConditionalOfNotificationsReceivedForEntity = self->_classConditionalOfNotificationsReceivedForEntity;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:16];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end