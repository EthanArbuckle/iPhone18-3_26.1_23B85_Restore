@interface ATXNotificationModeModel
- (ATXNotificationModeModel)initWithMode:(unint64_t)mode contactStore:(id)store;
- (double)scoreFromEngagementFeatures:(id)features dismissalFeatures:(id)dismissalFeatures hiddenFeatures:(id)hiddenFeatures clearedFeatures:(id)clearedFeatures expiredFeatures:(id)expiredFeatures scoredApp:(id)app scoredContact:(id)contact;
- (id)modeEntityScoreFromEngagementFeatures:(id)features dismissalFeatures:(id)dismissalFeatures hiddenFeatures:(id)hiddenFeatures clearedFeatures:(id)clearedFeatures expiredFeatures:(id)expiredFeatures scoredApp:(id)app scoredContact:(id)contact;
- (id)scoredEntitiesWithScoredAppEntities:(id)entities scoredContactEntities:(id)contactEntities;
- (void)addSubFeaturesToFeatureDict:(id)dict subFeatures:(id)features prefix:(id)prefix;
@end

@implementation ATXNotificationModeModel

- (ATXNotificationModeModel)initWithMode:(unint64_t)mode contactStore:(id)store
{
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = ATXNotificationModeModel;
  v8 = [(ATXNotificationModeModel *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_mode = mode;
    v10 = objc_opt_new();
    notificationModeEntityModelWeights = v9->_notificationModeEntityModelWeights;
    v9->_notificationModeEntityModelWeights = v10;

    objc_storeStrong(&v9->_contactStore, store);
  }

  return v9;
}

- (id)scoredEntitiesWithScoredAppEntities:(id)entities scoredContactEntities:(id)contactEntities
{
  entitiesCopy = entities;
  contactEntitiesCopy = contactEntities;
  context = objc_autoreleasePoolPush();
  v6 = objc_opt_new();
  v7 = [ATXModeEntityModelTrainer eventProviderForMode:self->_mode];
  v51 = [[ATXNotificationEventProvider alloc] initWithEventType:1 contactStore:self->_contactStore];
  v50 = [[ATXModeEntityCorrelator alloc] initWithModeEventProvider:v7 entityEventProvider:v51];
  entityFeaturesForModeEntityScoring = [(ATXModeEntityCorrelator *)v50 entityFeaturesForModeEntityScoring];
  v49 = [[ATXNotificationEventProvider alloc] initWithEventType:8 contactStore:self->_contactStore];
  v48 = [[ATXModeEntityCorrelator alloc] initWithModeEventProvider:v7 entityEventProvider:v49];
  entityFeaturesForModeEntityScoring2 = [(ATXModeEntityCorrelator *)v48 entityFeaturesForModeEntityScoring];
  v47 = [[ATXNotificationEventProvider alloc] initWithEventType:6 contactStore:self->_contactStore];
  v46 = [[ATXModeEntityCorrelator alloc] initWithModeEventProvider:v7 entityEventProvider:v47];
  entityFeaturesForModeEntityScoring3 = [(ATXModeEntityCorrelator *)v46 entityFeaturesForModeEntityScoring];
  v45 = [[ATXNotificationEventProvider alloc] initWithEventType:3 contactStore:self->_contactStore];
  v44 = v7;
  v43 = [[ATXModeEntityCorrelator alloc] initWithModeEventProvider:v7 entityEventProvider:v45];
  entityFeaturesForModeEntityScoring4 = [(ATXModeEntityCorrelator *)v43 entityFeaturesForModeEntityScoring];
  selfCopy = self;
  v42 = [[ATXNotificationEventProvider alloc] initWithEventType:10 contactStore:self->_contactStore];
  v41 = [[ATXModeEntityCorrelator alloc] initWithModeEventProvider:v7 entityEventProvider:v42];
  entityFeaturesForModeEntityScoring5 = [(ATXModeEntityCorrelator *)v41 entityFeaturesForModeEntityScoring];
  v12 = objc_opt_new();
  v13 = objc_opt_new();
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __86__ATXNotificationModeModel_scoredEntitiesWithScoredAppEntities_scoredContactEntities___block_invoke;
  v62[3] = &unk_2785A0A80;
  v14 = entityFeaturesForModeEntityScoring2;
  v63 = v14;
  v15 = entityFeaturesForModeEntityScoring3;
  v64 = v15;
  v16 = entityFeaturesForModeEntityScoring4;
  v65 = v16;
  v17 = entityFeaturesForModeEntityScoring5;
  v66 = v17;
  v67 = v12;
  v18 = entitiesCopy;
  v68 = v18;
  v69 = v13;
  v40 = contactEntitiesCopy;
  v70 = v40;
  selfCopy2 = self;
  v19 = v6;
  v72 = v19;
  v38 = v13;
  v20 = v12;
  [entityFeaturesForModeEntityScoring enumerateKeysAndObjectsUsingBlock:v62];
  v21 = objc_alloc(MEMORY[0x277CBEB58]);
  allKeys = [v18 allKeys];
  v23 = [v21 initWithArray:allKeys];

  v24 = v20;
  [v23 minusSet:v20];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __86__ATXNotificationModeModel_scoredEntitiesWithScoredAppEntities_scoredContactEntities___block_invoke_2;
  v53[3] = &unk_2785A0AA8;
  v25 = v18;
  v54 = v25;
  v55 = entityFeaturesForModeEntityScoring;
  v56 = v14;
  v57 = v15;
  v58 = v16;
  v59 = v17;
  v60 = selfCopy;
  v26 = v19;
  v61 = v26;
  v27 = v17;
  v28 = v16;
  v29 = v15;
  v30 = v14;
  v31 = entityFeaturesForModeEntityScoring;
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

- (id)modeEntityScoreFromEngagementFeatures:(id)features dismissalFeatures:(id)dismissalFeatures hiddenFeatures:(id)hiddenFeatures clearedFeatures:(id)clearedFeatures expiredFeatures:(id)expiredFeatures scoredApp:(id)app scoredContact:(id)contact
{
  appCopy = app;
  contactCopy = contact;
  expiredFeaturesCopy = expiredFeatures;
  clearedFeaturesCopy = clearedFeatures;
  hiddenFeaturesCopy = hiddenFeatures;
  dismissalFeaturesCopy = dismissalFeatures;
  featuresCopy = features;
  [(ATXNotificationModeModel *)self scoreFromEngagementFeatures:featuresCopy dismissalFeatures:dismissalFeaturesCopy hiddenFeatures:hiddenFeaturesCopy clearedFeatures:clearedFeaturesCopy expiredFeatures:expiredFeaturesCopy scoredApp:appCopy scoredContact:contactCopy];
  v23 = v22;
  v24 = objc_opt_new();
  [(ATXNotificationModeModel *)self addSubFeaturesToFeatureDict:v24 subFeatures:featuresCopy prefix:@"engaged"];

  [(ATXNotificationModeModel *)self addSubFeaturesToFeatureDict:v24 subFeatures:dismissalFeaturesCopy prefix:@"dismissed"];
  [(ATXNotificationModeModel *)self addSubFeaturesToFeatureDict:v24 subFeatures:hiddenFeaturesCopy prefix:@"hidden"];

  [(ATXNotificationModeModel *)self addSubFeaturesToFeatureDict:v24 subFeatures:clearedFeaturesCopy prefix:@"cleared"];
  [(ATXNotificationModeModel *)self addSubFeaturesToFeatureDict:v24 subFeatures:expiredFeaturesCopy prefix:@"expired"];

  if (appCopy)
  {
    v25 = [ATXModeEntityScoringFeatures alloc];
    scoreMetadata = [appCopy scoreMetadata];
    featureVector = [scoreMetadata featureVector];
    v28 = [(ATXModeEntityScoringFeatures *)v25 initFromJSON:featureVector];

    [(ATXNotificationModeModel *)self addSubFeaturesToFeatureDict:v24 subFeatures:v28 prefix:@"app"];
  }

  if (contactCopy)
  {
    v29 = [ATXModeEntityScoringFeatures alloc];
    scoreMetadata2 = [contactCopy scoreMetadata];
    featureVector2 = [scoreMetadata2 featureVector];
    v32 = [(ATXModeEntityScoringFeatures *)v29 initFromJSON:featureVector2];

    [(ATXNotificationModeModel *)self addSubFeaturesToFeatureDict:v24 subFeatures:v32 prefix:@"contact"];
  }

  v33 = objc_opt_new();
  [v33 setScore:v23];
  v34 = [v24 copy];
  [v33 setFeatureVector:v34];

  return v33;
}

- (void)addSubFeaturesToFeatureDict:(id)dict subFeatures:(id)features prefix:(id)prefix
{
  dictCopy = dict;
  prefixCopy = prefix;
  jsonRepresentation = [features jsonRepresentation];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__ATXNotificationModeModel_addSubFeaturesToFeatureDict_subFeatures_prefix___block_invoke;
  v12[3] = &unk_2785A0AD0;
  v13 = dictCopy;
  v14 = prefixCopy;
  v10 = prefixCopy;
  v11 = dictCopy;
  [jsonRepresentation enumerateKeysAndObjectsUsingBlock:v12];
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

- (double)scoreFromEngagementFeatures:(id)features dismissalFeatures:(id)dismissalFeatures hiddenFeatures:(id)hiddenFeatures clearedFeatures:(id)clearedFeatures expiredFeatures:(id)expiredFeatures scoredApp:(id)app scoredContact:(id)contact
{
  featuresCopy = features;
  dismissalFeaturesCopy = dismissalFeatures;
  hiddenFeaturesCopy = hiddenFeatures;
  clearedFeaturesCopy = clearedFeatures;
  expiredFeaturesCopy = expiredFeatures;
  appCopy = app;
  contactCopy = contact;
  v145 = contactCopy;
  v143 = appCopy;
  if (appCopy)
  {
    v21 = [ATXModeEntityScoringFeatures alloc];
    scoreMetadata = [appCopy scoreMetadata];
    featureVector = [scoreMetadata featureVector];
    v24 = [(ATXModeEntityScoringFeatures *)v21 initFromJSON:featureVector];

    v25 = v145;
    if (!v145)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v25 = contactCopy;
  v24 = 0;
  if (contactCopy)
  {
LABEL_3:
    v26 = [ATXModeEntityScoringFeatures alloc];
    scoreMetadata2 = [v25 scoreMetadata];
    featureVector2 = [scoreMetadata2 featureVector];
    v25 = [(ATXModeEntityScoringFeatures *)v26 initFromJSON:featureVector2];
  }

LABEL_4:
  if (v24)
  {
    entitySpecificFeatures = [v24 entitySpecificFeatures];
    appCategoryScore_v2 = [entitySpecificFeatures appCategoryScore_v2];
    [appCategoryScore_v2 doubleValue];
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
    globalOccurrences = [v24 globalOccurrences];
    v54 = 1.0;
    if (!globalOccurrences)
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
      entitySpecificFeatures2 = [v25 entitySpecificFeatures];
      isFavoriteContact = [entitySpecificFeatures2 isFavoriteContact];

      entitySpecificFeatures3 = [v25 entitySpecificFeatures];
      LODWORD(entitySpecificFeatures2) = [entitySpecificFeatures3 isVIPContact];

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
      v74 = v73 * isFavoriteContact;
      [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights contactIsVIPComponent];
      v55 = v55 + v62 + v66 + v70 + v72 + v74 + v75 * entitySpecificFeatures2;
    }
  }

  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights engagementGlobalPopularityComponent];
  v77 = v76;
  [featuresCopy globalPopularity];
  v79 = v77 * v78;
  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights engagementModePopularityComponent];
  v81 = v80;
  [featuresCopy modePopularity];
  v83 = v81 * v82;
  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights engagementClassConditionalProbabilityComponent];
  v85 = v84;
  [featuresCopy classConditionalProbability];
  v87 = v85 * v86;
  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights engagementPosteriorProbabilityComponent];
  v89 = v88;
  [featuresCopy posteriorProbability];
  v91 = v55 + v79 + v83 + v87 + v89 * v90;
  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights clearGlobalPopularityComponent];
  v93 = v92;
  [clearedFeaturesCopy globalPopularity];
  v95 = v93 * v94;
  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights clearModePopularityComponent];
  v97 = v96;
  [clearedFeaturesCopy modePopularity];
  v99 = v97 * v98;
  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights clearClassConditionalProbabilityComponent];
  v101 = v100;
  [clearedFeaturesCopy classConditionalProbability];
  v103 = v101 * v102;
  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights clearPosteriorProbabilityComponent];
  v105 = v104;
  [clearedFeaturesCopy posteriorProbability];
  v107 = v91 + v95 + v99 + v103 + v105 * v106;
  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights hiddenGlobalPopularityComponent];
  v109 = v108;
  [hiddenFeaturesCopy globalPopularity];
  v111 = v109 * v110;
  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights hiddenModePopularityComponent];
  v113 = v112;
  [hiddenFeaturesCopy modePopularity];
  v115 = v113 * v114;
  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights hiddenClassConditionalProbabilityComponent];
  v117 = v116;
  [hiddenFeaturesCopy classConditionalProbability];
  v119 = v117 * v118;
  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights hiddenPosteriorProbabilityComponent];
  v121 = v120;
  [hiddenFeaturesCopy posteriorProbability];
  v123 = v107 + v111 + v115 + v119 + v121 * v122;
  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights dismissGlobalPopularityComponent];
  v125 = v124;
  [dismissalFeaturesCopy globalPopularity];
  v127 = v125 * v126;
  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights dismissModePopularityComponent];
  v129 = v128;
  [dismissalFeaturesCopy modePopularity];
  v131 = v129 * v130;
  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights dismissClassConditionalProbabilityComponent];
  v133 = v132;
  [dismissalFeaturesCopy classConditionalProbability];
  v135 = v133 * v134;
  [(ATXNotificationModeEntityModelWeights *)self->_notificationModeEntityModelWeights dismissPosteriorProbabilityComponent];
  v137 = v136;
  [dismissalFeaturesCopy posteriorProbability];
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