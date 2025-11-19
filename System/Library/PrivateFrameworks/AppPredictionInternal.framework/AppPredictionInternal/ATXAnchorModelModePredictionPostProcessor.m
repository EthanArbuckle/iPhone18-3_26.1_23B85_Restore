@interface ATXAnchorModelModePredictionPostProcessor
- (ATXAnchorModelModePredictionPostProcessor)initWithAnchorModelPrediction:(id)a3;
- (BOOL)shouldPredictAnchorModelModePrediction;
- (NSArray)serializedTriggers;
- (id)_triggerForAnchorType;
@end

@implementation ATXAnchorModelModePredictionPostProcessor

- (ATXAnchorModelModePredictionPostProcessor)initWithAnchorModelPrediction:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXAnchorModelModePredictionPostProcessor;
  v6 = [(ATXAnchorModelModePredictionPostProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_anchorModelPrediction, a3);
  }

  return v7;
}

- (BOOL)shouldPredictAnchorModelModePrediction
{
  v3 = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction candidateType];
  v4 = [v3 isEqualToString:@"mode"];

  if (v4)
  {
    v5 = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction candidateId];
    v6 = [ATXAnchorModelDataStoreWrapper modeDetailsFromModeCandidateId:v5];

    if (!self->_modeStream)
    {
      v7 = BiomeLibrary();
      v8 = [v7 UserFocus];
      v9 = [v8 ComputedMode];
      modeStream = self->_modeStream;
      self->_modeStream = v9;
    }

    v11 = [objc_alloc(MEMORY[0x277D41C60]) initWithStream:self->_modeStream];
    v12 = [v11 currentModeUUID];
    v13 = [v12 UUIDString];

    if ([v6 isStart])
    {
      if (v13)
      {
        v14 = [v6 modeUUID];
        v15 = [v14 isEqualToString:v13];

        if (v15)
        {
LABEL_11:
          LOBYTE(v4) = 0;
          goto LABEL_12;
        }
      }
    }

    else if (v13)
    {
      v16 = [v6 modeUUID];
      v17 = [v16 isEqualToString:v13];

      if (!v17)
      {
        goto LABEL_11;
      }
    }

    LOBYTE(v4) = 1;
LABEL_12:
  }

  return v4;
}

- (NSArray)serializedTriggers
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction candidateClassifier];
  v4 = [v3 classifierType];

  if (v4 == 3)
  {
    v5 = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction candidateClassifier];
    v6 = [v5 tree];

    if (v6)
    {
      v7 = __atxlog_handle_modes();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = "ATXAnchorModelModePredictionPostProcessor: GamePlayKitDecisionTree is not empty, not creating any triggers";
LABEL_11:
        _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
      }
    }

    else
    {
      v10 = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction offsetFromAnchorToShowPrediction];
      [v10 startSecondsAfterAnchor];
      v12 = v11;

      if (v12 <= 900.0)
      {
        v15 = [(ATXAnchorModelModePredictionPostProcessor *)self _triggerForAnchorType];
        v7 = v15;
        if (v15)
        {
          v18 = v15;
          v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
          v9 = ATXSerializeTriggers();
        }

        else
        {
          v16 = __atxlog_handle_modes();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction anchorType];
            *buf = 138412290;
            v20 = v17;
            _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "ATXAnchorModelModePredictionPostProcessor: No valid trigger for anchor type: %@", buf, 0xCu);
          }

          v9 = 0;
        }

        goto LABEL_13;
      }

      v7 = __atxlog_handle_modes();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = "ATXAnchorModelModePredictionPostProcessor: AnchorModelPrediction offset startSecondsAfterAnchor is too long after anchor, not creating any triggers";
        goto LABEL_11;
      }
    }

    v9 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v5 = __atxlog_handle_modes();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "ATXAnchorModelModePredictionPostProcessor: classifier is not of type GamePlayKitDecisionTree, not creating any triggers", buf, 2u);
  }

  v9 = 0;
LABEL_14:

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_triggerForAnchorType
{
  v3 = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction anchorType];
  v4 = [ATXAnchor stringToAnchorType:v3];

  v5 = 0;
  switch(v4)
  {
    case 1:
      v6 = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction anchorEvent];
      v7 = MEMORY[0x277D41BA8];
      goto LABEL_6;
    case 2:
      v6 = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction anchorEvent];
      v7 = MEMORY[0x277D41BB0];
LABEL_6:
      v13 = [v7 alloc];
      v10 = [v6 deviceIdentifier];
      v11 = [v6 deviceName];
      v12 = [v13 initWithDeviceIdentifier:v10 deviceName:v11];
      goto LABEL_7;
    case 3:
    case 4:
    case 5:
    case 6:
    case 9:
    case 18:
      v5 = objc_opt_new();
      break;
    case 7:
      v6 = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction anchorEvent];
      v14 = MEMORY[0x277D41BE8];
      goto LABEL_10;
    case 8:
      v6 = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction anchorEvent];
      v14 = MEMORY[0x277D41BF0];
LABEL_10:
      v15 = [v14 alloc];
      v10 = [v6 identifier];
      v16 = [v15 initWithLocationIdentifier:v10 namedLOI:0];
      goto LABEL_13;
    case 16:
      v6 = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction anchorEvent];
      v8 = MEMORY[0x277D41C78];
      goto LABEL_12;
    case 17:
      v6 = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction anchorEvent];
      v8 = MEMORY[0x277D41C80];
LABEL_12:
      v17 = [v8 alloc];
      v10 = [v6 deviceIdentifier];
      v16 = [v17 initWithDeviceIdentifier:v10];
LABEL_13:
      v5 = v16;
      goto LABEL_14;
    case 19:
      v6 = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction anchorEvent];
      v9 = objc_alloc(MEMORY[0x277D41C20]);
      v10 = [v6 dominantMicrolocationUUID];
      v11 = [v10 UUIDString];
      v12 = [v9 initWithLocationUUID:v11];
LABEL_7:
      v5 = v12;

LABEL_14:
      break;
    default:
      break;
  }

  return v5;
}

@end