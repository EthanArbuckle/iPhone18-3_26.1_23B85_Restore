@interface ATXActionResponse
- (ATXActionResponse)initWithCoder:(id)a3;
- (ATXActionResponse)initWithProactiveSuggestions:(id)a3 blendingModelUICacheUpdateUUID:(id)a4 consumerSubType:(unsigned __int8)a5 error:(id)a6;
- (ATXActionResponse)initWithScoredActions:(id)a3 cacheFileData:(id)a4 consumerSubType:(unsigned __int8)a5 error:(id)a6;
- (ATXActionResponse)initWithScoredActions:(id)a3 cacheFileData:(id)a4 proactiveSuggestions:(id)a5 blendingModelUICacheUpdateUUID:(id)a6 consumerSubType:(unsigned __int8)a7 predictionDate:(id)a8 error:(id)a9;
- (BOOL)isActionSpotlightCaptureRateAppEngagementType;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToActionResponse:(id)a3;
- (NSArray)explicitlyDismissedActions;
- (NSArray)shownActions;
- (id)json;
- (id)jsonData;
- (id)jsonDescription;
- (id)routeDestinationTypeString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)jsonData;
- (void)updateConsumerSubType:(unsigned __int8)a3 engagedAction:(id)a4 shownActions:(id)a5 feedbackStage:(unint64_t)a6 explicitlyDismissedActions:(id)a7 searchedActionType:(unint64_t)a8 engagedAppString:(id)a9 uiFeedbackDate:(id)a10;
- (void)updateWithMatchingIntentDonatedAction:(id)a3 intentDonationDate:(id)a4 matchingIntentWasCompleteMatch:(BOOL)a5;
@end

@implementation ATXActionResponse

- (ATXActionResponse)initWithScoredActions:(id)a3 cacheFileData:(id)a4 consumerSubType:(unsigned __int8)a5 error:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  v14 = [(ATXActionResponse *)self initWithScoredActions:v12 cacheFileData:v11 proactiveSuggestions:0 blendingModelUICacheUpdateUUID:0 consumerSubType:v6 predictionDate:v13 error:v10];

  return v14;
}

- (ATXActionResponse)initWithProactiveSuggestions:(id)a3 blendingModelUICacheUpdateUUID:(id)a4 consumerSubType:(unsigned __int8)a5 error:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  v14 = [(ATXActionResponse *)self initWithScoredActions:0 cacheFileData:0 proactiveSuggestions:v12 blendingModelUICacheUpdateUUID:v11 consumerSubType:v6 predictionDate:v13 error:v10];

  return v14;
}

- (ATXActionResponse)initWithScoredActions:(id)a3 cacheFileData:(id)a4 proactiveSuggestions:(id)a5 blendingModelUICacheUpdateUUID:(id)a6 consumerSubType:(unsigned __int8)a7 predictionDate:(id)a8 error:(id)a9
{
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v15 = a6;
  v16 = a8;
  v17 = a9;
  v30.receiver = self;
  v30.super_class = ATXActionResponse;
  v18 = [(ATXActionResponse *)&v30 init];
  if (v18)
  {
    v19 = objc_opt_new();
    uuid = v18->_uuid;
    v18->_uuid = v19;

    objc_storeStrong(&v18->_scoredActions, a3);
    objc_storeStrong(&v18->_cacheFileData, a4);
    objc_storeStrong(&v18->_proactiveSuggestions, a5);
    objc_storeStrong(&v18->_blendingModelUICacheUpdateUUID, a6);
    v18->_consumerSubType = a7;
    v18->_feedbackStage = 1;
    objc_storeStrong(&v18->_error, a9);
    v21 = objc_opt_new();
    shownActionIndices = v18->_shownActionIndices;
    v18->_shownActionIndices = v21;

    v23 = objc_opt_new();
    explicitlyDismissedActionIndices = v18->_explicitlyDismissedActionIndices;
    v18->_explicitlyDismissedActionIndices = v23;

    objc_storeStrong(&v18->_predictionDate, a8);
    v18->_searchedActionType = 4;
  }

  return v18;
}

- (void)updateConsumerSubType:(unsigned __int8)a3 engagedAction:(id)a4 shownActions:(id)a5 feedbackStage:(unint64_t)a6 explicitlyDismissedActions:(id)a7 searchedActionType:(unint64_t)a8 engagedAppString:(id)a9 uiFeedbackDate:(id)a10
{
  v16 = a4;
  v17 = a9;
  v18 = a10;
  self->_consumerSubType = a3;
  v19 = a7;
  v20 = a5;
  v31 = [(ATXActionResponse *)self actions];
  v21 = actionsToIndexSet(v20, v31);

  shownActionIndices = self->_shownActionIndices;
  self->_shownActionIndices = v21;

  engagedAction = self->_engagedAction;
  self->_engagedAction = v16;
  v24 = v16;

  v25 = actionsToIndexSet(v19, v31);

  explicitlyDismissedActionIndices = self->_explicitlyDismissedActionIndices;
  self->_explicitlyDismissedActionIndices = v25;

  matchingIntentDonatedAction = self->_matchingIntentDonatedAction;
  self->_matchingIntentDonatedAction = 0;

  uiFeedbackDate = self->_uiFeedbackDate;
  self->_feedbackStage = a6;
  self->_uiFeedbackDate = v18;
  v29 = v18;

  engagedAppString = self->_engagedAppString;
  self->_searchedActionType = a8;
  self->_engagedAppString = v17;
}

- (void)updateWithMatchingIntentDonatedAction:(id)a3 intentDonationDate:(id)a4 matchingIntentWasCompleteMatch:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  matchingIntentDonatedAction = self->_matchingIntentDonatedAction;
  self->_matchingIntentDonatedAction = v8;
  v11 = v8;

  donatedIntentDate = self->_donatedIntentDate;
  self->_donatedIntentDate = v9;

  self->_feedbackStage = 3;
  self->_matchingIntentWasCompleteMatch = a5;
}

- (NSArray)shownActions
{
  shownActionsCache = self->_shownActionsCache;
  if (!shownActionsCache)
  {
    v4 = objc_opt_new();
    shownActionIndices = self->_shownActionIndices;
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __33__ATXActionResponse_shownActions__block_invoke;
    v13 = &unk_1E80C1218;
    v14 = v4;
    v15 = self;
    v6 = v4;
    [(NSIndexSet *)shownActionIndices enumerateIndexesUsingBlock:&v10];
    v7 = [v6 copy];
    v8 = self->_shownActionsCache;
    self->_shownActionsCache = v7;

    shownActionsCache = self->_shownActionsCache;
  }

  return shownActionsCache;
}

void __33__ATXActionResponse_shownActions__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4 = [*(*(a1 + 40) + 48) objectAtIndexedSubscript:a2];
  v3 = [v4 predictedItem];
  [v2 addObject:v3];
}

- (NSArray)explicitlyDismissedActions
{
  v3 = objc_opt_new();
  explicitlyDismissedActionIndices = self->_explicitlyDismissedActionIndices;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __47__ATXActionResponse_explicitlyDismissedActions__block_invoke;
  v11 = &unk_1E80C1218;
  v12 = v3;
  v13 = self;
  v5 = v3;
  [(NSIndexSet *)explicitlyDismissedActionIndices enumerateIndexesUsingBlock:&v8];
  v6 = [v5 copy];

  return v6;
}

void __47__ATXActionResponse_explicitlyDismissedActions__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4 = [*(*(a1 + 40) + 48) objectAtIndexedSubscript:a2];
  v3 = [v4 predictedItem];
  [v2 addObject:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXActionResponse *)self isEqualToActionResponse:v5];
  }

  return v6;
}

- (BOOL)isEqualToActionResponse:(id)a3
{
  v4 = a3;
  v5 = self->_uuid;
  v6 = v5;
  if (v5 == v4[5])
  {
  }

  else
  {
    v7 = [(NSUUID *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  v8 = self->_scoredActions;
  v9 = v8;
  if (v8 == v4[6])
  {
  }

  else
  {
    v10 = [(NSArray *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  v11 = self->_cacheFileData;
  v12 = v11;
  if (v11 == v4[17])
  {
  }

  else
  {
    v13 = [(NSData *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  v14 = self->_proactiveSuggestions;
  v15 = v14;
  if (v14 == v4[8])
  {
  }

  else
  {
    v16 = [(NSArray *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  v17 = self->_blendingModelUICacheUpdateUUID;
  v18 = v17;
  if (v17 == v4[7])
  {
  }

  else
  {
    v19 = [(NSUUID *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  if (self->_consumerSubType == *(v4 + 33))
  {
    v20 = self->_engagedAction;
    v21 = v20;
    if (v20 == v4[10])
    {
    }

    else
    {
      v22 = [(ATXAction *)v20 isEqual:?];

      if (!v22)
      {
        goto LABEL_55;
      }
    }

    v23 = self->_explicitlyDismissedActionIndices;
    v24 = v23;
    if (v23 == v4[2])
    {
    }

    else
    {
      v25 = [(NSIndexSet *)v23 isEqual:?];

      if ((v25 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    v26 = self->_matchingIntentDonatedAction;
    v27 = v26;
    if (v26 == v4[13])
    {
    }

    else
    {
      v28 = [(ATXAction *)v26 isEqual:?];

      if (!v28)
      {
        goto LABEL_55;
      }
    }

    if (self->_matchingIntentWasCompleteMatch == *(v4 + 34))
    {
      v29 = self->_shownActionIndices;
      v30 = v29;
      if (v29 == v4[1])
      {
      }

      else
      {
        v31 = [(NSIndexSet *)v29 isEqual:?];

        if ((v31 & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      v32 = self->_predictionDate;
      v33 = v32;
      if (v32 == v4[9])
      {
      }

      else
      {
        v34 = [(NSDate *)v32 isEqual:?];

        if ((v34 & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      v35 = self->_uiFeedbackDate;
      v36 = v35;
      if (v35 == v4[12])
      {
      }

      else
      {
        v37 = [(NSDate *)v35 isEqual:?];

        if ((v37 & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      v38 = self->_donatedIntentDate;
      v39 = v38;
      if (v38 == v4[14])
      {
      }

      else
      {
        v40 = [(NSDate *)v38 isEqual:?];

        if ((v40 & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      if (self->_feedbackStage != v4[11] || self->_searchedActionType != v4[15])
      {
        goto LABEL_55;
      }

      v41 = self->_engagedAppString;
      v42 = v41;
      if (v41 == v4[16])
      {
      }

      else
      {
        v43 = [(NSString *)v41 isEqual:?];

        if ((v43 & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      v44 = self->_containsRouteInternal == *(v4 + 32);
      goto LABEL_56;
    }
  }

LABEL_55:
  v44 = 0;
LABEL_56:

  return v44;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_uuid hash];
  v4 = [(NSArray *)self->_scoredActions hash]- v3 + 32 * v3;
  v5 = [(NSData *)self->_cacheFileData hash]- v4 + 32 * v4;
  v6 = [(NSUUID *)self->_blendingModelUICacheUpdateUUID hash];
  v7 = self->_consumerSubType - (v6 - v5 + 32 * v5) + 32 * (v6 - v5 + 32 * v5);
  v8 = [(ATXAction *)self->_engagedAction hash]- v7 + 32 * v7;
  v9 = [(NSIndexSet *)self->_explicitlyDismissedActionIndices hash]- v8 + 32 * v8;
  v10 = [(ATXAction *)self->_matchingIntentDonatedAction hash];
  v11 = self->_matchingIntentWasCompleteMatch - (v10 - v9 + 32 * v9) + 32 * (v10 - v9 + 32 * v9);
  v12 = [(NSIndexSet *)self->_shownActionIndices hash]- v11 + 32 * v11;
  v13 = [(NSDate *)self->_predictionDate hash]- v12 + 32 * v12;
  v14 = [(NSDate *)self->_uiFeedbackDate hash]- v13 + 32 * v13;
  v15 = [(NSDate *)self->_donatedIntentDate hash];
  v16 = self->_feedbackStage - (v15 - v14 + 32 * v14) + 32 * (v15 - v14 + 32 * v14);
  v17 = self->_searchedActionType - v16 + 32 * v16;
  v18 = [(NSString *)self->_engagedAppString hash];
  return self->_containsRouteInternal - (v18 - v17 + 32 * v17) + 32 * (v18 - v17 + 32 * v17);
}

- (id)json
{
  v50 = *MEMORY[0x1E69E9840];
  v47[0] = @"uuid";
  v3 = [(NSUUID *)self->_uuid description];
  v4 = @"NO_UUID";
  v42 = v3;
  if (v3)
  {
    v4 = v3;
  }

  v48[0] = v4;
  v47[1] = @"blendingUICacheUpdateUUID";
  v5 = [(NSUUID *)self->_blendingModelUICacheUpdateUUID description];
  v6 = @"NO_BLENDING_UI_CACHE_UPDATE_UUID";
  v41 = v5;
  if (v5)
  {
    v6 = v5;
  }

  v48[1] = v6;
  v47[2] = @"consumerSubType";
  v7 = [MEMORY[0x1E698B028] stringForConsumerSubtype:self->_consumerSubType];
  engagedAction = self->_engagedAction;
  if (!engagedAction)
  {
    engagedAction = @"NONE";
  }

  v40 = v7;
  v48[2] = v7;
  v48[3] = engagedAction;
  v47[3] = @"engagedActionKey";
  v47[4] = @"explicitlyDismissedActionIndices";
  v9 = [(NSIndexSet *)self->_explicitlyDismissedActionIndices atx_asArray];
  matchingIntentDonatedAction = self->_matchingIntentDonatedAction;
  if (!matchingIntentDonatedAction)
  {
    matchingIntentDonatedAction = @"NONE";
  }

  v39 = v9;
  v48[4] = v9;
  v48[5] = matchingIntentDonatedAction;
  v47[5] = @"matchingDonatedIntentActionKey";
  v47[6] = @"matchingDonatedIntentWasCompleteMatch";
  if (self->_matchingIntentWasCompleteMatch)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v48[6] = v11;
  v47[7] = @"scoredActions";
  v12 = self->_scoredActions;
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](v12, "count")}];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v14 = v12;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v44;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v44 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v43 + 1) + 8 * i) predictedItem];
        v20 = [v19 json];
        [v13 addObject:v20];
      }

      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v16);
  }

  v48[7] = v13;
  v47[8] = @"shownActionIndices";
  v38 = [(NSIndexSet *)self->_shownActionIndices atx_asArray];
  v48[8] = v38;
  v47[9] = @"predictionDate";
  v21 = [(NSDate *)self->_predictionDate description];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = @"NONE";
  }

  v48[9] = v23;
  v47[10] = @"uiFeedbackDate";
  v24 = [(NSDate *)self->_uiFeedbackDate description];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = @"NONE";
  }

  v48[10] = v26;
  v47[11] = @"donatedIntentDate";
  v27 = [(NSDate *)self->_donatedIntentDate description];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = @"NONE";
  }

  v48[11] = v29;
  v47[12] = @"feedbackStage";
  v30 = [ATXActionPredictionTypes actionFeedbackStageToString:self->_feedbackStage];
  v48[12] = v30;
  v47[13] = @"routeDestinationType";
  v31 = [(ATXActionResponse *)self routeDestinationTypeString];
  v48[13] = v31;
  v47[14] = @"cacheFileDataSize";
  v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lu", 8];
  v48[14] = v32;
  v47[15] = @"searchedActionType";
  v33 = [ATXActionPredictionTypes actionTypeToString:self->_searchedActionType];
  v34 = v33;
  v47[16] = @"engagedAppString";
  engagedAppString = self->_engagedAppString;
  if (!engagedAppString)
  {
    engagedAppString = @"NONE";
  }

  v48[15] = v33;
  v48[16] = engagedAppString;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:17];

  return v36;
}

- (id)jsonData
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(ATXActionResponse *)self json];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
  v5 = v8;

  if (!v4)
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ATXActionResponse *)v5 jsonData];
    }
  }

  return v4;
}

- (id)jsonDescription
{
  v2 = [(ATXActionResponse *)self jsonData];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v2 encoding:4];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isActionSpotlightCaptureRateAppEngagementType
{
  if (![MEMORY[0x1E698B028] isActionSpotlightConsumerSubType:{-[ATXActionResponse consumerSubType](self, "consumerSubType")}])
  {
    return 0;
  }

  v3 = [(ATXActionResponse *)self engagedAction];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(ATXActionResponse *)self engagedAppString];
    if ([v5 length])
    {
      v4 = [(ATXActionResponse *)self searchedActionType]== 4;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (ATXActionResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = ATXActionResponse;
  v5 = [(ATXActionResponse *)&v39 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"scoredActions"];
    scoredActions = v5->_scoredActions;
    v5->_scoredActions = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cacheFileData"];
    cacheFileData = v5->_cacheFileData;
    v5->_cacheFileData = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"proactiveSuggestions"];
    proactiveSuggestions = v5->_proactiveSuggestions;
    v5->_proactiveSuggestions = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"blendingUICacheUpdateUUID"];
    blendingModelUICacheUpdateUUID = v5->_blendingModelUICacheUpdateUUID;
    v5->_blendingModelUICacheUpdateUUID = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v20;

    v5->_consumerSubType = [v4 decodeIntegerForKey:@"consumerSubType"];
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"engagedActionKey"];
    engagedAction = v5->_engagedAction;
    v5->_engagedAction = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"explicitlyDismissedActionIndices"];
    explicitlyDismissedActionIndices = v5->_explicitlyDismissedActionIndices;
    v5->_explicitlyDismissedActionIndices = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"matchingDonatedIntentActionKey"];
    matchingIntentDonatedAction = v5->_matchingIntentDonatedAction;
    v5->_matchingIntentDonatedAction = v26;

    v5->_matchingIntentWasCompleteMatch = [v4 decodeBoolForKey:@"matchingDonatedIntentWasCompleteMatch"];
    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shownActionIndices"];
    shownActionIndices = v5->_shownActionIndices;
    v5->_shownActionIndices = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predictionDate"];
    predictionDate = v5->_predictionDate;
    v5->_predictionDate = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uiFeedbackDate"];
    uiFeedbackDate = v5->_uiFeedbackDate;
    v5->_uiFeedbackDate = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"donatedIntentDate"];
    donatedIntentDate = v5->_donatedIntentDate;
    v5->_donatedIntentDate = v34;

    v5->_feedbackStage = [v4 decodeIntegerForKey:@"feedbackStage"];
    v5->_searchedActionType = [v4 decodeIntegerForKey:@"searchedActionType"];
    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"engagedAppString"];
    engagedAppString = v5->_engagedAppString;
    v5->_engagedAppString = v36;

    v5->_containsRouteInternal = [v4 decodeBoolForKey:@"containsRouteInternal"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  scoredActions = self->_scoredActions;
  v5 = a3;
  [v5 encodeObject:scoredActions forKey:@"scoredActions"];
  [v5 encodeObject:self->_cacheFileData forKey:@"cacheFileData"];
  [v5 encodeObject:self->_proactiveSuggestions forKey:@"proactiveSuggestions"];
  [v5 encodeObject:self->_blendingModelUICacheUpdateUUID forKey:@"blendingUICacheUpdateUUID"];
  [v5 encodeObject:self->_uuid forKey:@"uuid"];
  [v5 encodeInteger:self->_consumerSubType forKey:@"consumerSubType"];
  [v5 encodeObject:self->_engagedAction forKey:@"engagedActionKey"];
  [v5 encodeObject:self->_explicitlyDismissedActionIndices forKey:@"explicitlyDismissedActionIndices"];
  [v5 encodeObject:self->_matchingIntentDonatedAction forKey:@"matchingDonatedIntentActionKey"];
  [v5 encodeBool:self->_matchingIntentWasCompleteMatch forKey:@"matchingDonatedIntentWasCompleteMatch"];
  [v5 encodeObject:self->_shownActionIndices forKey:@"shownActionIndices"];
  [v5 encodeObject:self->_predictionDate forKey:@"predictionDate"];
  [v5 encodeObject:self->_uiFeedbackDate forKey:@"uiFeedbackDate"];
  [v5 encodeObject:self->_donatedIntentDate forKey:@"donatedIntentDate"];
  [v5 encodeInteger:self->_feedbackStage forKey:@"feedbackStage"];
  [v5 encodeInteger:self->_searchedActionType forKey:@"searchedActionType"];
  [v5 encodeObject:self->_engagedAppString forKey:@"engagedAppString"];
  [v5 encodeBool:self->_containsRouteInternal forKey:@"containsRouteInternal"];
}

- (id)routeDestinationTypeString
{
  if (self->_containsRouteInternal)
  {
    return @"airplay";
  }

  else
  {
    return @"local";
  }
}

- (void)jsonData
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "Unable to serialize ATXActionResponse. Error: %@", &v2, 0xCu);
}

@end