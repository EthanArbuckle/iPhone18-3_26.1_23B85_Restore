@interface ATXModeEntityScoringFeatures
- (ATXModeEntityScoringFeatures)init;
- (BOOL)entityOccurredOverLastNDays:(unint64_t)a3 withHistogram:(id)a4;
- (id)description;
- (id)initFromJSON:(id)a3;
- (id)jsonRepresentation;
@end

@implementation ATXModeEntityScoringFeatures

- (ATXModeEntityScoringFeatures)init
{
  v20.receiver = self;
  v20.super_class = ATXModeEntityScoringFeatures;
  v2 = [(ATXModeEntityScoringFeatures *)&v20 init];
  if (v2)
  {
    v3 = objc_opt_new();
    totalModeLaunchesHistogramForLast28Days = v2->_totalModeLaunchesHistogramForLast28Days;
    v2->_totalModeLaunchesHistogramForLast28Days = v3;

    v5 = objc_opt_new();
    totalGlobalLaunchesHistogramForLast28Days = v2->_totalGlobalLaunchesHistogramForLast28Days;
    v2->_totalGlobalLaunchesHistogramForLast28Days = v5;

    v7 = objc_opt_new();
    macPortableGlobalAppLaunchesHistogramForLast28Days = v2->_macPortableGlobalAppLaunchesHistogramForLast28Days;
    v2->_macPortableGlobalAppLaunchesHistogramForLast28Days = v7;

    v9 = objc_opt_new();
    macPortableModeAppLaunchesHistogramForLast28Days = v2->_macPortableModeAppLaunchesHistogramForLast28Days;
    v2->_macPortableModeAppLaunchesHistogramForLast28Days = v9;

    v11 = objc_opt_new();
    macDesktopGlobalAppLaunchesHistogramForLast28Days = v2->_macDesktopGlobalAppLaunchesHistogramForLast28Days;
    v2->_macDesktopGlobalAppLaunchesHistogramForLast28Days = v11;

    v13 = objc_opt_new();
    macDesktopModeAppLaunchesHistogramForLast28Days = v2->_macDesktopModeAppLaunchesHistogramForLast28Days;
    v2->_macDesktopModeAppLaunchesHistogramForLast28Days = v13;

    v15 = objc_opt_new();
    localDeviceGlobalAppLaunchesHistogramForLast28Days = v2->_localDeviceGlobalAppLaunchesHistogramForLast28Days;
    v2->_localDeviceGlobalAppLaunchesHistogramForLast28Days = v15;

    v17 = objc_opt_new();
    localDeviceModeAppLaunchesHistogramForLast28Days = v2->_localDeviceModeAppLaunchesHistogramForLast28Days;
    v2->_localDeviceModeAppLaunchesHistogramForLast28Days = v17;
  }

  return v2;
}

- (id)initFromJSON:(id)a3
{
  v4 = a3;
  v48.receiver = self;
  v48.super_class = ATXModeEntityScoringFeatures;
  v5 = [(ATXModeEntityScoringFeatures *)&v48 init];
  v6 = v5;
  if (v5)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    modeDescription = v5->_modeDescription;
    v5->_modeDescription = &stru_2839A6058;

    entityDescription = v6->_entityDescription;
    v6->_entityDescription = &stru_2839A6058;

    v10 = [v4 objectForKeyedSubscript:@"correlationPosteriorProbability"];
    [v10 doubleValue];
    v6->_posteriorProbability = v11;

    v12 = [v4 objectForKeyedSubscript:@"correlationClassConditionalProbability"];
    [v12 doubleValue];
    v6->_classConditionalProbability = v13;

    entity = v6->_entity;
    v6->_entity = 0;

    v15 = [v4 objectForKeyedSubscript:@"correlationUniqueOccurrencesInMode"];
    v6->_uniqueOccurrencesInMode = [v15 unsignedIntegerValue];

    v16 = [v4 objectForKeyedSubscript:@"correlationNumLocalOccurrences"];
    v6->_localOccurrences = [v16 unsignedIntegerValue];

    v17 = [v4 objectForKeyedSubscript:@"correlationNumGlobalOccurrences"];
    v6->_globalOccurrences = [v17 unsignedIntegerValue];

    v18 = [v4 objectForKeyedSubscript:@"correlationModePopularity"];
    [v18 doubleValue];
    v6->_modePopularity = v19;

    v20 = [v4 objectForKeyedSubscript:@"correlationRatioModeAndGlobalPopularity"];
    [v20 doubleValue];
    v6->_ratioModeAndGlobalPopularity = v21;

    v22 = [v4 objectForKeyedSubscript:@"correlationGlobalPopularity"];
    [v22 doubleValue];
    v6->_globalPopularity = v23;

    v24 = [v4 objectForKeyedSubscript:@"totalModeLaunchesHistogram"];
    totalModeLaunchesHistogramForLast28Days = v6->_totalModeLaunchesHistogramForLast28Days;
    v6->_totalModeLaunchesHistogramForLast28Days = v24;

    v26 = [v4 objectForKeyedSubscript:@"totalGlobalLaunchesHistogram"];
    totalGlobalLaunchesHistogramForLast28Days = v6->_totalGlobalLaunchesHistogramForLast28Days;
    v6->_totalGlobalLaunchesHistogramForLast28Days = v26;

    v28 = [v4 objectForKeyedSubscript:@"macPortableGlobalAppLaunchesHistogram"];
    macPortableGlobalAppLaunchesHistogramForLast28Days = v6->_macPortableGlobalAppLaunchesHistogramForLast28Days;
    v6->_macPortableGlobalAppLaunchesHistogramForLast28Days = v28;

    v30 = [v4 objectForKeyedSubscript:@"macPortableModeAppLaunchesHistogram"];
    macPortableModeAppLaunchesHistogramForLast28Days = v6->_macPortableModeAppLaunchesHistogramForLast28Days;
    v6->_macPortableModeAppLaunchesHistogramForLast28Days = v30;

    v32 = [v4 objectForKeyedSubscript:@"macDesktopGlobalAppLaunchesHistogram"];
    macDesktopGlobalAppLaunchesHistogramForLast28Days = v6->_macDesktopGlobalAppLaunchesHistogramForLast28Days;
    v6->_macDesktopGlobalAppLaunchesHistogramForLast28Days = v32;

    v34 = [v4 objectForKeyedSubscript:@"macDesktopModeAppLaunchesHistogram"];
    macDesktopModeAppLaunchesHistogramForLast28Days = v6->_macDesktopModeAppLaunchesHistogramForLast28Days;
    v6->_macDesktopModeAppLaunchesHistogramForLast28Days = v34;

    v36 = [v4 objectForKeyedSubscript:@"localDeviceGlobalAppLaunchesHistogram"];
    localDeviceGlobalAppLaunchesHistogramForLast28Days = v6->_localDeviceGlobalAppLaunchesHistogramForLast28Days;
    v6->_localDeviceGlobalAppLaunchesHistogramForLast28Days = v36;

    v38 = [v4 objectForKeyedSubscript:@"localDeviceModeAppLaunchesHistogram"];
    localDeviceModeAppLaunchesHistogramForLast28Days = v6->_localDeviceModeAppLaunchesHistogramForLast28Days;
    v6->_localDeviceModeAppLaunchesHistogramForLast28Days = v38;

    v40 = [v4 objectForKeyedSubscript:@"correlationEntityFeaturesType"];

    if (v40)
    {
      v41 = [v4 objectForKeyedSubscript:@"correlationEntityFeaturesType"];
      v42 = NSClassFromString(v41);

      if (v42)
      {
        v43 = [v42 alloc];
        v44 = [v4 objectForKeyedSubscript:@"correlationEntitySpecificFeatures"];
        v45 = [v43 initFromJSON:v44];
        entitySpecificFeatures = v6->_entitySpecificFeatures;
        v6->_entitySpecificFeatures = v45;
      }
    }
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  ratioModeAndGlobalPopularity = self->_ratioModeAndGlobalPopularity;
  uniqueOccurrencesInMode = self->_uniqueOccurrencesInMode;
  v6 = [v3 initWithFormat:@"entityDescription: %@, posteriorProbability: %.3f, globalPopularity: %.3f, modePopularity: %.3f, ratio between mode popularity and global popularity: %.3f, classConditionalProbability: %.3f, unique occurrences in mode: %lu, local occurrences: %lu, global occurrences: %lu, entity specific features: %@, total mode launches histogram: %@, total global launches histogram: %@, macPortable global app launches histogram: %@, macPortable mode app launches histogram: %@, macDesktop global app launches histogram: %@, macDesktop mode app launches histogram: %@local device global app launches histogram: %@local device mode app launches histogram: %@", self->_entityDescription, *&self->_posteriorProbability, *&self->_globalPopularity, *&self->_modePopularity, *&ratioModeAndGlobalPopularity, *&self->_classConditionalProbability, uniqueOccurrencesInMode, self->_localOccurrences, self->_globalOccurrences, self->_entitySpecificFeatures, self->_totalModeLaunchesHistogramForLast28Days, self->_totalGlobalLaunchesHistogramForLast28Days, self->_macPortableGlobalAppLaunchesHistogramForLast28Days, self->_macPortableModeAppLaunchesHistogramForLast28Days, self->_macDesktopGlobalAppLaunchesHistogramForLast28Days, self->_macDesktopModeAppLaunchesHistogramForLast28Days, self->_localDeviceGlobalAppLaunchesHistogramForLast28Days, self->_localDeviceModeAppLaunchesHistogramForLast28Days];

  return v6;
}

- (id)jsonRepresentation
{
  v33 = *MEMORY[0x277D85DE8];
  v27[0] = @"correlationModePopularity";
  v26 = [MEMORY[0x277CCABB0] numberWithDouble:self->_modePopularity];
  v28[0] = v26;
  v27[1] = @"correlationGlobalPopularity";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_globalPopularity];
  v28[1] = v3;
  v27[2] = @"correlationPosteriorProbability";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_posteriorProbability];
  v28[2] = v4;
  v27[3] = @"correlationRatioModeAndGlobalPopularity";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_ratioModeAndGlobalPopularity];
  v28[3] = v5;
  v27[4] = @"correlationClassConditionalProbability";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_classConditionalProbability];
  v28[4] = v6;
  v27[5] = @"correlationUniqueOccurrencesInMode";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_uniqueOccurrencesInMode];
  v28[5] = v7;
  v27[6] = @"correlationNumLocalOccurrences";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_localOccurrences];
  v28[6] = v8;
  v27[7] = @"correlationNumGlobalOccurrences";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_globalOccurrences];
  v28[7] = v9;
  v27[8] = @"correlationEntityFeaturesType";
  entitySpecificFeatures = self->_entitySpecificFeatures;
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = v12;
  v14 = &stru_2839A6058;
  if (v12)
  {
    v14 = v12;
  }

  v28[8] = v14;
  v27[9] = @"correlationEntitySpecificFeatures";
  v15 = [self->_entitySpecificFeatures jsonRepresentation];
  v16 = v15;
  v17 = vdupq_n_s64(MEMORY[0x277CBEBF8]);
  v18 = vbslq_s8(vceqzq_s64(*&self->_totalModeLaunchesHistogramForLast28Days), v17, *&self->_totalModeLaunchesHistogramForLast28Days);
  v19 = vbslq_s8(vceqzq_s64(*&self->_macPortableGlobalAppLaunchesHistogramForLast28Days), v17, *&self->_macPortableGlobalAppLaunchesHistogramForLast28Days);
  v20 = vbslq_s8(vceqzq_s64(*&self->_macDesktopGlobalAppLaunchesHistogramForLast28Days), v17, *&self->_macDesktopGlobalAppLaunchesHistogramForLast28Days);
  v21 = vbslq_s8(vceqzq_s64(*&self->_localDeviceGlobalAppLaunchesHistogramForLast28Days), v17, *&self->_localDeviceGlobalAppLaunchesHistogramForLast28Days);
  v22 = MEMORY[0x277CBEC10];
  if (v15)
  {
    v22 = v15;
  }

  v28[9] = v22;
  v27[10] = @"totalModeLaunchesHistogram";
  v27[11] = @"totalGlobalLaunchesHistogram";
  v27[12] = @"macPortableGlobalAppLaunchesHistogram";
  v27[13] = @"macPortableModeAppLaunchesHistogram";
  v29 = v18;
  v30 = v19;
  v27[14] = @"macDesktopGlobalAppLaunchesHistogram";
  v27[15] = @"macDesktopModeAppLaunchesHistogram";
  v27[16] = @"localDeviceGlobalAppLaunchesHistogram";
  v27[17] = @"localDeviceModeAppLaunchesHistogram";
  v31 = v20;
  v32 = v21;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:18];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (BOOL)entityOccurredOverLastNDays:(unint64_t)a3 withHistogram:(id)a4
{
  v5 = a4;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__ATXModeEntityScoringFeatures_entityOccurredOverLastNDays_withHistogram___block_invoke;
  v7[3] = &unk_2785A1E40;
  v7[4] = &v8;
  v7[5] = a3;
  [v5 enumerateObjectsUsingBlock:v7];
  LOBYTE(a3) = v9[3] != 0;
  _Block_object_dispose(&v8, 8);

  return a3;
}

void __74__ATXModeEntityScoringFeatures_entityOccurredOverLastNDays_withHistogram___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (*(a1 + 40) < a3 || (v11 = v7, v8 = [v7 unsignedIntegerValue], v9 = *(*(a1 + 32) + 8), v10 = *(v9 + 24) + v8, v7 = v11, *(v9 + 24) = v10, *(*(*(a1 + 32) + 8) + 24)))
  {
    *a4 = 1;
  }
}

@end