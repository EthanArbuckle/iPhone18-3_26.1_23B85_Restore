@interface ATXActionResponse
- (ATXActionResponse)initWithCoder:(id)coder;
- (ATXActionResponse)initWithProactiveSuggestions:(id)suggestions blendingModelUICacheUpdateUUID:(id)d consumerSubType:(unsigned __int8)type error:(id)error;
- (ATXActionResponse)initWithScoredActions:(id)actions cacheFileData:(id)data consumerSubType:(unsigned __int8)type error:(id)error;
- (ATXActionResponse)initWithScoredActions:(id)actions cacheFileData:(id)data proactiveSuggestions:(id)suggestions blendingModelUICacheUpdateUUID:(id)d consumerSubType:(unsigned __int8)type predictionDate:(id)date error:(id)error;
- (BOOL)isActionSpotlightCaptureRateAppEngagementType;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToActionResponse:(id)response;
- (NSArray)explicitlyDismissedActions;
- (NSArray)shownActions;
- (id)json;
- (id)jsonData;
- (id)jsonDescription;
- (id)routeDestinationTypeString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)jsonData;
- (void)updateConsumerSubType:(unsigned __int8)type engagedAction:(id)action shownActions:(id)actions feedbackStage:(unint64_t)stage explicitlyDismissedActions:(id)dismissedActions searchedActionType:(unint64_t)actionType engagedAppString:(id)string uiFeedbackDate:(id)self0;
- (void)updateWithMatchingIntentDonatedAction:(id)action intentDonationDate:(id)date matchingIntentWasCompleteMatch:(BOOL)match;
@end

@implementation ATXActionResponse

- (ATXActionResponse)initWithScoredActions:(id)actions cacheFileData:(id)data consumerSubType:(unsigned __int8)type error:(id)error
{
  typeCopy = type;
  errorCopy = error;
  dataCopy = data;
  actionsCopy = actions;
  v13 = objc_opt_new();
  v14 = [(ATXActionResponse *)self initWithScoredActions:actionsCopy cacheFileData:dataCopy proactiveSuggestions:0 blendingModelUICacheUpdateUUID:0 consumerSubType:typeCopy predictionDate:v13 error:errorCopy];

  return v14;
}

- (ATXActionResponse)initWithProactiveSuggestions:(id)suggestions blendingModelUICacheUpdateUUID:(id)d consumerSubType:(unsigned __int8)type error:(id)error
{
  typeCopy = type;
  errorCopy = error;
  dCopy = d;
  suggestionsCopy = suggestions;
  v13 = objc_opt_new();
  v14 = [(ATXActionResponse *)self initWithScoredActions:0 cacheFileData:0 proactiveSuggestions:suggestionsCopy blendingModelUICacheUpdateUUID:dCopy consumerSubType:typeCopy predictionDate:v13 error:errorCopy];

  return v14;
}

- (ATXActionResponse)initWithScoredActions:(id)actions cacheFileData:(id)data proactiveSuggestions:(id)suggestions blendingModelUICacheUpdateUUID:(id)d consumerSubType:(unsigned __int8)type predictionDate:(id)date error:(id)error
{
  actionsCopy = actions;
  dataCopy = data;
  suggestionsCopy = suggestions;
  dCopy = d;
  dateCopy = date;
  errorCopy = error;
  v30.receiver = self;
  v30.super_class = ATXActionResponse;
  v18 = [(ATXActionResponse *)&v30 init];
  if (v18)
  {
    v19 = objc_opt_new();
    uuid = v18->_uuid;
    v18->_uuid = v19;

    objc_storeStrong(&v18->_scoredActions, actions);
    objc_storeStrong(&v18->_cacheFileData, data);
    objc_storeStrong(&v18->_proactiveSuggestions, suggestions);
    objc_storeStrong(&v18->_blendingModelUICacheUpdateUUID, d);
    v18->_consumerSubType = type;
    v18->_feedbackStage = 1;
    objc_storeStrong(&v18->_error, error);
    v21 = objc_opt_new();
    shownActionIndices = v18->_shownActionIndices;
    v18->_shownActionIndices = v21;

    v23 = objc_opt_new();
    explicitlyDismissedActionIndices = v18->_explicitlyDismissedActionIndices;
    v18->_explicitlyDismissedActionIndices = v23;

    objc_storeStrong(&v18->_predictionDate, date);
    v18->_searchedActionType = 4;
  }

  return v18;
}

- (void)updateConsumerSubType:(unsigned __int8)type engagedAction:(id)action shownActions:(id)actions feedbackStage:(unint64_t)stage explicitlyDismissedActions:(id)dismissedActions searchedActionType:(unint64_t)actionType engagedAppString:(id)string uiFeedbackDate:(id)self0
{
  actionCopy = action;
  stringCopy = string;
  dateCopy = date;
  self->_consumerSubType = type;
  dismissedActionsCopy = dismissedActions;
  actionsCopy = actions;
  actions = [(ATXActionResponse *)self actions];
  v21 = actionsToIndexSet(actionsCopy, actions);

  shownActionIndices = self->_shownActionIndices;
  self->_shownActionIndices = v21;

  engagedAction = self->_engagedAction;
  self->_engagedAction = actionCopy;
  v24 = actionCopy;

  v25 = actionsToIndexSet(dismissedActionsCopy, actions);

  explicitlyDismissedActionIndices = self->_explicitlyDismissedActionIndices;
  self->_explicitlyDismissedActionIndices = v25;

  matchingIntentDonatedAction = self->_matchingIntentDonatedAction;
  self->_matchingIntentDonatedAction = 0;

  uiFeedbackDate = self->_uiFeedbackDate;
  self->_feedbackStage = stage;
  self->_uiFeedbackDate = dateCopy;
  v29 = dateCopy;

  engagedAppString = self->_engagedAppString;
  self->_searchedActionType = actionType;
  self->_engagedAppString = stringCopy;
}

- (void)updateWithMatchingIntentDonatedAction:(id)action intentDonationDate:(id)date matchingIntentWasCompleteMatch:(BOOL)match
{
  actionCopy = action;
  dateCopy = date;
  matchingIntentDonatedAction = self->_matchingIntentDonatedAction;
  self->_matchingIntentDonatedAction = actionCopy;
  v11 = actionCopy;

  donatedIntentDate = self->_donatedIntentDate;
  self->_donatedIntentDate = dateCopy;

  self->_feedbackStage = 3;
  self->_matchingIntentWasCompleteMatch = match;
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
    selfCopy = self;
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
  selfCopy = self;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXActionResponse *)self isEqualToActionResponse:v5];
  }

  return v6;
}

- (BOOL)isEqualToActionResponse:(id)response
{
  responseCopy = response;
  v5 = self->_uuid;
  v6 = v5;
  if (v5 == responseCopy[5])
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
  if (v8 == responseCopy[6])
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
  if (v11 == responseCopy[17])
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
  if (v14 == responseCopy[8])
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
  if (v17 == responseCopy[7])
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

  if (self->_consumerSubType == *(responseCopy + 33))
  {
    v20 = self->_engagedAction;
    v21 = v20;
    if (v20 == responseCopy[10])
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
    if (v23 == responseCopy[2])
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
    if (v26 == responseCopy[13])
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

    if (self->_matchingIntentWasCompleteMatch == *(responseCopy + 34))
    {
      v29 = self->_shownActionIndices;
      v30 = v29;
      if (v29 == responseCopy[1])
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
      if (v32 == responseCopy[9])
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
      if (v35 == responseCopy[12])
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
      if (v38 == responseCopy[14])
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

      if (self->_feedbackStage != responseCopy[11] || self->_searchedActionType != responseCopy[15])
      {
        goto LABEL_55;
      }

      v41 = self->_engagedAppString;
      v42 = v41;
      if (v41 == responseCopy[16])
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

      v44 = self->_containsRouteInternal == *(responseCopy + 32);
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
  atx_asArray = [(NSIndexSet *)self->_explicitlyDismissedActionIndices atx_asArray];
  matchingIntentDonatedAction = self->_matchingIntentDonatedAction;
  if (!matchingIntentDonatedAction)
  {
    matchingIntentDonatedAction = @"NONE";
  }

  v39 = atx_asArray;
  v48[4] = atx_asArray;
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

        predictedItem = [*(*(&v43 + 1) + 8 * i) predictedItem];
        json = [predictedItem json];
        [v13 addObject:json];
      }

      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v16);
  }

  v48[7] = v13;
  v47[8] = @"shownActionIndices";
  atx_asArray2 = [(NSIndexSet *)self->_shownActionIndices atx_asArray];
  v48[8] = atx_asArray2;
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
  routeDestinationTypeString = [(ATXActionResponse *)self routeDestinationTypeString];
  v48[13] = routeDestinationTypeString;
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
  json = [(ATXActionResponse *)self json];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:json options:1 error:&v8];
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
  jsonData = [(ATXActionResponse *)self jsonData];
  if (jsonData)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:jsonData encoding:4];
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

  engagedAction = [(ATXActionResponse *)self engagedAction];
  if (engagedAction)
  {
    v4 = 0;
  }

  else
  {
    engagedAppString = [(ATXActionResponse *)self engagedAppString];
    if ([engagedAppString length])
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

- (ATXActionResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v39.receiver = self;
  v39.super_class = ATXActionResponse;
  v5 = [(ATXActionResponse *)&v39 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"scoredActions"];
    scoredActions = v5->_scoredActions;
    v5->_scoredActions = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cacheFileData"];
    cacheFileData = v5->_cacheFileData;
    v5->_cacheFileData = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"proactiveSuggestions"];
    proactiveSuggestions = v5->_proactiveSuggestions;
    v5->_proactiveSuggestions = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"blendingUICacheUpdateUUID"];
    blendingModelUICacheUpdateUUID = v5->_blendingModelUICacheUpdateUUID;
    v5->_blendingModelUICacheUpdateUUID = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v20;

    v5->_consumerSubType = [coderCopy decodeIntegerForKey:@"consumerSubType"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"engagedActionKey"];
    engagedAction = v5->_engagedAction;
    v5->_engagedAction = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"explicitlyDismissedActionIndices"];
    explicitlyDismissedActionIndices = v5->_explicitlyDismissedActionIndices;
    v5->_explicitlyDismissedActionIndices = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"matchingDonatedIntentActionKey"];
    matchingIntentDonatedAction = v5->_matchingIntentDonatedAction;
    v5->_matchingIntentDonatedAction = v26;

    v5->_matchingIntentWasCompleteMatch = [coderCopy decodeBoolForKey:@"matchingDonatedIntentWasCompleteMatch"];
    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shownActionIndices"];
    shownActionIndices = v5->_shownActionIndices;
    v5->_shownActionIndices = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predictionDate"];
    predictionDate = v5->_predictionDate;
    v5->_predictionDate = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uiFeedbackDate"];
    uiFeedbackDate = v5->_uiFeedbackDate;
    v5->_uiFeedbackDate = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"donatedIntentDate"];
    donatedIntentDate = v5->_donatedIntentDate;
    v5->_donatedIntentDate = v34;

    v5->_feedbackStage = [coderCopy decodeIntegerForKey:@"feedbackStage"];
    v5->_searchedActionType = [coderCopy decodeIntegerForKey:@"searchedActionType"];
    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"engagedAppString"];
    engagedAppString = v5->_engagedAppString;
    v5->_engagedAppString = v36;

    v5->_containsRouteInternal = [coderCopy decodeBoolForKey:@"containsRouteInternal"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  scoredActions = self->_scoredActions;
  coderCopy = coder;
  [coderCopy encodeObject:scoredActions forKey:@"scoredActions"];
  [coderCopy encodeObject:self->_cacheFileData forKey:@"cacheFileData"];
  [coderCopy encodeObject:self->_proactiveSuggestions forKey:@"proactiveSuggestions"];
  [coderCopy encodeObject:self->_blendingModelUICacheUpdateUUID forKey:@"blendingUICacheUpdateUUID"];
  [coderCopy encodeObject:self->_uuid forKey:@"uuid"];
  [coderCopy encodeInteger:self->_consumerSubType forKey:@"consumerSubType"];
  [coderCopy encodeObject:self->_engagedAction forKey:@"engagedActionKey"];
  [coderCopy encodeObject:self->_explicitlyDismissedActionIndices forKey:@"explicitlyDismissedActionIndices"];
  [coderCopy encodeObject:self->_matchingIntentDonatedAction forKey:@"matchingDonatedIntentActionKey"];
  [coderCopy encodeBool:self->_matchingIntentWasCompleteMatch forKey:@"matchingDonatedIntentWasCompleteMatch"];
  [coderCopy encodeObject:self->_shownActionIndices forKey:@"shownActionIndices"];
  [coderCopy encodeObject:self->_predictionDate forKey:@"predictionDate"];
  [coderCopy encodeObject:self->_uiFeedbackDate forKey:@"uiFeedbackDate"];
  [coderCopy encodeObject:self->_donatedIntentDate forKey:@"donatedIntentDate"];
  [coderCopy encodeInteger:self->_feedbackStage forKey:@"feedbackStage"];
  [coderCopy encodeInteger:self->_searchedActionType forKey:@"searchedActionType"];
  [coderCopy encodeObject:self->_engagedAppString forKey:@"engagedAppString"];
  [coderCopy encodeBool:self->_containsRouteInternal forKey:@"containsRouteInternal"];
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
  selfCopy = self;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "Unable to serialize ATXActionResponse. Error: %@", &v2, 0xCu);
}

@end