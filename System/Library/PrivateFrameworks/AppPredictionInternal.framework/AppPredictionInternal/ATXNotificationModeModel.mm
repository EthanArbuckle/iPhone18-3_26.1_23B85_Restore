@interface ATXNotificationModeModel
- (ATXNotificationModeModel)initWithMode:(unint64_t)a3 contactStore:(id)a4;
- (double)scoreFromEngagementFeatures:(id)a3 dismissalFeatures:(id)a4 hiddenFeatures:(id)a5 clearedFeatures:(id)a6 expiredFeatures:(id)a7 scoredApp:(id)a8 scoredContact:(id)a9;
- (id)modeEntityScoreFromEngagementFeatures:(id)a3 dismissalFeatures:(id)a4 hiddenFeatures:(id)a5 clearedFeatures:(id)a6 expiredFeatures:(id)a7 scoredApp:(id)a8 scoredContact:(id)a9;
- (id)scoredEntitiesWithScoredAppEntities:(id)a3 scoredContactEntities:(id)a4;
- (void)addSubFeaturesToFeatureDict:(id)a3 subFeatures:(id)a4 prefix:(id)a5;
@end

@implementation ATXNotificationModeModel

- (ATXNotificationModeModel)initWithMode:(unint64_t)a3 contactStore:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = ATXNotificationModeModel;
  v8 = [(ATXNotificationModeModel *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_mode = a3;
    v10 = objc_opt_new();
    notificationModeEntityModelWeights = v9->_notificationModeEntityModelWeights;
    v9->_notificationModeEntityModelWeights = v10;

    objc_storeStrong(&v9->_contactStore, a4);
  }

  return v9;
}

- (id)scoredEntitiesWithScoredAppEntities:(id)a3 scoredContactEntities:(id)a4
{
  v37 = a3;
  v39 = a4;
  context = objc_autoreleasePoolPush();
  v6 = objc_opt_new();
  v7 = [ATXModeEntityModelTrainer eventProviderForMode:self->_mode];
  v51 = [[ATXNotificationEventProvider alloc] initWithEventType:1 contactStore:self->_contactStore];
  v50 = [[ATXModeEntityCorrelator alloc] initWithModeEventProvider:v7 entityEventProvider:v51];
  v36 = [(ATXModeEntityCorrelator *)v50 entityFeaturesForModeEntityScoring];
  v49 = [[ATXNotificationEventProvider alloc] initWithEventType:8 contactStore:self->_contactStore];
  v48 = [[ATXModeEntityCorrelator alloc] initWithModeEventProvider:v7 entityEventProvider:v49];
  v8 = [(ATXModeEntityCorrelator *)v48 entityFeaturesForModeEntityScoring];
  v47 = [[ATXNotificationEventProvider alloc] initWithEventType:6 contactStore:self->_contactStore];
  v46 = [[ATXModeEntityCorrelator alloc] initWithModeEventProvider:v7 entityEventProvider:v47];
  v9 = [(ATXModeEntityCorrelator *)v46 entityFeaturesForModeEntityScoring];
  v45 = [[ATXNotificationEventProvider alloc] initWithEventType:3 contactStore:self->_contactStore];
  v44 = v7;
  v43 = [[ATXModeEntityCorrelator alloc] initWithModeEventProvider:v7 entityEventProvider:v45];
  v10 = [(ATXModeEntityCorrelator *)v43 entityFeaturesForModeEntityScoring];
  v35 = self;
  v42 = [[ATXNotificationEventProvider alloc] initWithEventType:10 contactStore:self->_contactStore];
  v41 = [[ATXModeEntityCorrelator alloc] initWithModeEventProvider:v7 entityEventProvider:v42];
  v11 = [(ATXModeEntityCorrelator *)v41 entityFeaturesForModeEntityScoring];
  v12 = objc_opt_new();
  v13 = objc_opt_new();
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __86__ATXNotificationModeModel_scoredEntitiesWithScoredAppEntities_scoredContactEntities___block_invoke;
  v62[3] = &unk_2785A0A80;
  v14 = v8;
  v63 = v14;
  v15 = v9;
  v64 = v15;
  v16 = v10;
  v65 = v16;
  v17 = v11;
  v66 = v17;
  v67 = v12;
  v18 = v37;
  v68 = v18;
  v69 = v13;
  v40 = v39;
  v70 = v40;
  v71 = self;
  v19 = v6;
  v72 = v19;
  v38 = v13;
  v20 = v12;
  [v36 enumerateKeysAndObjectsUsingBlock:v62];
  v21 = objc_alloc(MEMORY[0x277CBEB58]);
  v22 = [v18 allKeys];
  v23 = [v21 initWithArray:v22];

  v24 = v20;
  [v23 minusSet:v20];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __86__ATXNotificationModeModel_scoredEntitiesWithScoredAppEntities_scoredContactEntities___block_invoke_2;
  v53[3] = &unk_2785A0AA8;
  v25 = v18;
  v54 = v25;
  v55 = v36;
  v56 = v14;
  v57 = v15;
  v58 = v16;
  v59 = v17;
  v60 = v35;
  v26 = v19;
  v61 = v26;
  v27 = v17;
  v28 = v16;
  v29 = v15;
  v30 = v14;
  v31 = v36;
  [v23 enumerateObjectsUsingBlock:v53];
  v32 = v61;
  v33 = v26;

  objc_autoreleasePoolPop(context);

  return v33;
}

void __86__ATXNotificationModeModel_scoredEntitiesWithScoredAppEntities_scoredContactEntities___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [*(a1 + 40) objectForKeyedSubscript:v6];
  v9 = [*(a1 + 48) objectForKeyedSubscript:v6];
  v10 = [*(a1 + 56) objectForKeyedSubscript:v6];

  v11 = [v36 entity];
  v12 = [v11 appEntity];

  v13 = [v36 entity];
  v14 = [v13 contactEntity];

  if (v12)
  {
    v15 = *(a1 + 64);
    v16 = [v12 identifier];
    [v15 addObject:v16];

    v17 = *(a1 + 72);
    v18 = [v12 identifier];
    v19 = [v17 objectForKeyedSubscript:v18];
  }

  else
  {
    v19 = 0;
  }

  v34 = v14;
  v35 = v12;
  if (v14)
  {
    v20 = *(a1 + 80);
    v21 = [v14 identifier];
    [v20 addObject:v21];

    v22 = *(a1 + 88);
    v23 = [v14 identifier];
    v24 = [v22 objectForKeyedSubscript:v23];
  }

  else
  {
    v24 = 0;
  }

  v25 = [*(a1 + 96) modeEntityScoreFromEngagementFeatures:v36 dismissalFeatures:v7 hiddenFeatures:v8 clearedFeatures:v9 expiredFeatures:v10 scoredApp:v19 scoredContact:v24];
  [v36 entity];
  v26 = v33 = v7;
  [v26 setScoreMetadata:v25];

  v27 = *(a1 + 104);
  v28 = [v36 entity];
  [v36 entity];
  v30 = v29 = v8;
  [v30 identifier];
  v32 = v31 = v9;
  [v27 setObject:v28 forKey:v32];
}

void __86__ATXNotificationModeModel_scoredEntitiesWithScoredAppEntities_scoredContactEntities___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v22 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v3 = [objc_alloc(MEMORY[0x277CEB720]) initWithAppEntity:v22];
  v4 = *(a1 + 40);
  v5 = [v3 identifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = *(a1 + 48);
  v8 = [v3 identifier];
  v9 = [v7 objectForKeyedSubscript:v8];

  v10 = *(a1 + 56);
  v11 = [v3 identifier];
  v12 = [v10 objectForKeyedSubscript:v11];

  v13 = *(a1 + 64);
  v14 = [v3 identifier];
  v15 = [v13 objectForKeyedSubscript:v14];

  v16 = *(a1 + 72);
  v17 = [v3 identifier];
  v18 = [v16 objectForKeyedSubscript:v17];

  v19 = [*(a1 + 80) modeEntityScoreFromEngagementFeatures:v6 dismissalFeatures:v9 hiddenFeatures:v12 clearedFeatures:v15 expiredFeatures:v18 scoredApp:v22 scoredContact:0];
  [v3 setScoreMetadata:v19];
  v20 = *(a1 + 88);
  v21 = [v3 identifier];
  [v20 setObject:v3 forKey:v21];
}

- (id)modeEntityScoreFromEngagementFeatures:(id)a3 dismissalFeatures:(id)a4 hiddenFeatures:(id)a5 clearedFeatures:(id)a6 expiredFeatures:(id)a7 scoredApp:(id)a8 scoredContact:(id)a9
{
  v15 = a8;
  v16 = a9;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  [(ATXNotificationModeModel *)self scoreFromEngagementFeatures:v21 dismissalFeatures:v20 hiddenFeatures:v19 clearedFeatures:v18 expiredFeatures:v17 scoredApp:v15 scoredContact:v16];
  v23 = v22;
  v24 = objc_opt_new();
  [(ATXNotificationModeModel *)self addSubFeaturesToFeatureDict:v24 subFeatures:v21 prefix:@"engaged"];

  [(ATXNotificationModeModel *)self addSubFeaturesToFeatureDict:v24 subFeatures:v20 prefix:@"dismissed"];
  [(ATXNotificationModeModel *)self addSubFeaturesToFeatureDict:v24 subFeatures:v19 prefix:@"hidden"];

  [(ATXNotificationModeModel *)self addSubFeaturesToFeatureDict:v24 subFeatures:v18 prefix:@"cleared"];
  [(ATXNotificationModeModel *)self addSubFeaturesToFeatureDict:v24 subFeatures:v17 prefix:@"expired"];

  if (v15)
  {
    v25 = [ATXModeEntityScoringFeatures alloc];
    v26 = [v15 scoreMetadata];
    v27 = [v26 featureVector];
    v28 = [(ATXModeEntityScoringFeatures *)v25 initFromJSON:v27];

    [(ATXNotificationModeModel *)self addSubFeaturesToFeatureDict:v24 subFeatures:v28 prefix:@"app"];
  }

  if (v16)
  {
    v29 = [ATXModeEntityScoringFeatures alloc];
    v30 = [v16 scoreMetadata];
    v31 = [v30 featureVector];
    v32 = [(ATXModeEntityScoringFeatures *)v29 initFromJSON:v31];

    [(ATXNotificationModeModel *)self addSubFeaturesToFeatureDict:v24 subFeatures:v32 prefix:@"contact"];
  }

  v33 = objc_opt_new();
  [v33 setScore:v23];
  v34 = [v24 copy];
  [v33 setFeatureVector:v34];

  return v33;
}

- (void)addSubFeaturesToFeatureDict:(id)a3 subFeatures:(id)a4 prefix:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [a4 jsonRepresentation];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__ATXNotificationModeModel_addSubFeaturesToFeatureDict_subFeatures_prefix___block_invoke;
  v12[3] = &unk_2785A0AD0;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  [v9 enumerateKeysAndObjectsUsingBlock:v12];
}

void __75__ATXNotificationModeModel_addSubFeaturesToFeatureDict_subFeatures_prefix___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __75__ATXNotificationModeModel_addSubFeaturesToFeatureDict_subFeatures_prefix___block_invoke_2;
    v9[3] = &unk_2785A0AD0;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    [v6 enumerateKeysAndObjectsUsingBlock:v9];
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_%@", *(a1 + 40), v5];
    [v7 setObject:v6 forKey:v8];
  }
}

void __75__ATXNotificationModeModel_addSubFeaturesToFeatureDict_subFeatures_prefix___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v8 = [a3 copy];
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_%@", *(a1 + 40), v6];

  [v5 setObject:v8 forKey:v7];
}

- (double)scoreFromEngagementFeatures:(id)a3 dismissalFeatures:(id)a4 hiddenFeatures:(id)a5 clearedFeatures:(id)a6 expiredFeatures:(id)a7 scoredApp:(id)a8 scoredContact:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v144 = a7;
  v19 = a8;
  v20 = a9;
  v145 = v20;
  v143 = v19;
  if (v19)
  {
    v21 = [ATXModeEntityScoringFeatures alloc];
    v22 = [v19 scoreMetadata];
    v23 = [v22 featureVector];
    v24 = [(ATXModeEntityScoringFeatures *)v21 initFromJSON:v23];

    v25 = v145;
    if (!v145)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v25 = v20;
  v24 = 0;
  if (v20)
  {
LABEL_3:
    v26 = [ATXModeEntityScoringFeatures alloc];
    v27 = [v25 scoreMetadata];
    v28 = [v27 featureVector];
    v25 = [(ATXModeEntityScoringFeatures *)v26 initFromJSON:v28];
  }

LABEL_4:
  if (v24)
  {
    v29 = [v24 entitySpecificFeatures];
    v30 = [v29 appCategoryScore_v2];
    [v30 doubleValue];
    v32 = v31;

    [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights appCategoryScoreComponent];
    v34 = v32 * v33;
    [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights appClassConditionalProbabilityComponent];
    v36 = v35;
    [v24 classConditionalProbability];
    v38 = v36 * v37;
    [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights appGlobalPopularityComponent];
    v40 = v39;
    [v24 globalPopularity];
    v42 = v40 * v41;
    [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights appModePopularityComponent];
    v44 = v43;
    [v24 modePopularity];
    v46 = v44 * v45;
    [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights appPosteriorProbabilityComponent];
    v48 = v47;
    [v24 posteriorProbability];
    v50 = v48 * v49;
    [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights appGlobalOccurrencesComponent];
    v52 = v51;
    v53 = [v24 globalOccurrences];
    v54 = 1.0;
    if (!v53)
    {
      v54 = 0.0;
    }

    v55 = v34 + v38 + v42 + v46 + v50 + v52 * v54 + 0.0;
    if (v25)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v55 = 0.0;
    if (v25)
    {
LABEL_8:
      v56 = [v25 entitySpecificFeatures];
      v57 = [v56 isFavoriteContact];

      v58 = [v25 entitySpecificFeatures];
      LODWORD(v56) = [v58 isVIPContact];

      [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights contactClassConditionalProbabilityComponent];
      v60 = v59;
      [v25 classConditionalProbability];
      v62 = v60 * v61;
      [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights contactGlobalPopularityComponent];
      v64 = v63;
      [v25 globalPopularity];
      v66 = v64 * v65;
      [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights contactPosteriorProbabilityComponent];
      v68 = v67;
      [v25 posteriorProbability];
      v70 = v68 * v69;
      [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights contactGlobalOccurrencesComponent];
      v72 = v71 * [v25 entityOccurredGloballyOverLastNDays:{-[ATXNotificationModeEntityModelWeights numOfDays](self->_notificationModeEntityModelWeights, "numOfDays")}];
      [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights contactIsFavoriteComponent];
      v74 = v73 * v57;
      [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights contactIsVIPComponent];
      v55 = v55 + v62 + v66 + v70 + v72 + v74 + v75 * v56;
    }
  }

  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights engagementGlobalPopularityComponent];
  v77 = v76;
  [v15 globalPopularity];
  v79 = v77 * v78;
  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights engagementModePopularityComponent];
  v81 = v80;
  [v15 modePopularity];
  v83 = v81 * v82;
  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights engagementClassConditionalProbabilityComponent];
  v85 = v84;
  [v15 classConditionalProbability];
  v87 = v85 * v86;
  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights engagementPosteriorProbabilityComponent];
  v89 = v88;
  [v15 posteriorProbability];
  v91 = v55 + v79 + v83 + v87 + v89 * v90;
  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights clearGlobalPopularityComponent];
  v93 = v92;
  [v18 globalPopularity];
  v95 = v93 * v94;
  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights clearModePopularityComponent];
  v97 = v96;
  [v18 modePopularity];
  v99 = v97 * v98;
  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights clearClassConditionalProbabilityComponent];
  v101 = v100;
  [v18 classConditionalProbability];
  v103 = v101 * v102;
  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights clearPosteriorProbabilityComponent];
  v105 = v104;
  [v18 posteriorProbability];
  v107 = v91 + v95 + v99 + v103 + v105 * v106;
  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights hiddenGlobalPopularityComponent];
  v109 = v108;
  [v17 globalPopularity];
  v111 = v109 * v110;
  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights hiddenModePopularityComponent];
  v113 = v112;
  [v17 modePopularity];
  v115 = v113 * v114;
  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights hiddenClassConditionalProbabilityComponent];
  v117 = v116;
  [v17 classConditionalProbability];
  v119 = v117 * v118;
  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights hiddenPosteriorProbabilityComponent];
  v121 = v120;
  [v17 posteriorProbability];
  v123 = v107 + v111 + v115 + v119 + v121 * v122;
  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights dismissGlobalPopularityComponent];
  v125 = v124;
  [v16 globalPopularity];
  v127 = v125 * v126;
  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights dismissModePopularityComponent];
  v129 = v128;
  [v16 modePopularity];
  v131 = v129 * v130;
  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights dismissClassConditionalProbabilityComponent];
  v133 = v132;
  [v16 classConditionalProbability];
  v135 = v133 * v134;
  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights dismissPosteriorProbabilityComponent];
  v137 = v136;
  [v16 posteriorProbability];
  v139 = v123 + v127 + v131 + v135 + v137 * v138;
  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights bias];
  *&v140 = v140 + v139;
  v141 = (1.0 / (expf(-*&v140) + 1.0));
  if (v24 && [v24 uniqueOccurrencesInMode] < 3 || v25 && objc_msgSend(v25, "uniqueOccurrencesInMode") <= 2)
  {
    v141 = v141 * 0.5;
  }

  return v141;
}

@end