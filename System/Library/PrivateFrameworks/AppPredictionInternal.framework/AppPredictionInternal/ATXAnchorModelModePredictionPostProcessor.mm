@interface ATXAnchorModelModePredictionPostProcessor
- (ATXAnchorModelModePredictionPostProcessor)initWithAnchorModelPrediction:(id)prediction;
- (BOOL)shouldPredictAnchorModelModePrediction;
- (NSArray)serializedTriggers;
- (id)_triggerForAnchorType;
@end

@implementation ATXAnchorModelModePredictionPostProcessor

- (ATXAnchorModelModePredictionPostProcessor)initWithAnchorModelPrediction:(id)prediction
{
  predictionCopy = prediction;
  v9.receiver = self;
  v9.super_class = ATXAnchorModelModePredictionPostProcessor;
  v6 = [(ATXAnchorModelModePredictionPostProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_anchorModelPrediction, prediction);
  }

  return v7;
}

- (BOOL)shouldPredictAnchorModelModePrediction
{
  candidateType = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction candidateType];
  v4 = [candidateType isEqualToString:@"mode"];

  if (v4)
  {
    candidateId = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction candidateId];
    v6 = [ATXAnchorModelDataStoreWrapper modeDetailsFromModeCandidateId:candidateId];

    if (!self->_modeStream)
    {
      v7 = BiomeLibrary();
      userFocus = [v7 UserFocus];
      computedMode = [userFocus ComputedMode];
      modeStream = self->_modeStream;
      self->_modeStream = computedMode;
    }

    v11 = [objc_alloc(MEMORY[0x277D41C60]) initWithStream:self->_modeStream];
    currentModeUUID = [v11 currentModeUUID];
    uUIDString = [currentModeUUID UUIDString];

    if ([v6 isStart])
    {
      if (uUIDString)
      {
        modeUUID = [v6 modeUUID];
        v15 = [modeUUID isEqualToString:uUIDString];

        if (v15)
        {
LABEL_11:
          LOBYTE(v4) = 0;
          goto LABEL_12;
        }
      }
    }

    else if (uUIDString)
    {
      modeUUID2 = [v6 modeUUID];
      v17 = [modeUUID2 isEqualToString:uUIDString];

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
  candidateClassifier = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction candidateClassifier];
  classifierType = [candidateClassifier classifierType];

  if (classifierType == 3)
  {
    candidateClassifier2 = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction candidateClassifier];
    tree = [candidateClassifier2 tree];

    if (tree)
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
      offsetFromAnchorToShowPrediction = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction offsetFromAnchorToShowPrediction];
      [offsetFromAnchorToShowPrediction startSecondsAfterAnchor];
      v12 = v11;

      if (v12 <= 900.0)
      {
        _triggerForAnchorType = [(ATXAnchorModelModePredictionPostProcessor *)self _triggerForAnchorType];
        v7 = _triggerForAnchorType;
        if (_triggerForAnchorType)
        {
          v18 = _triggerForAnchorType;
          v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
          v9 = ATXSerializeTriggers();
        }

        else
        {
          v16 = __atxlog_handle_modes();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            anchorType = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction anchorType];
            *buf = 138412290;
            v20 = anchorType;
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

  candidateClassifier2 = __atxlog_handle_modes();
  if (os_log_type_enabled(candidateClassifier2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, candidateClassifier2, OS_LOG_TYPE_DEFAULT, "ATXAnchorModelModePredictionPostProcessor: classifier is not of type GamePlayKitDecisionTree, not creating any triggers", buf, 2u);
  }

  v9 = 0;
LABEL_14:

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_triggerForAnchorType
{
  anchorType = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction anchorType];
  v4 = [ATXAnchor stringToAnchorType:anchorType];

  v5 = 0;
  switch(v4)
  {
    case 1:
      anchorEvent = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction anchorEvent];
      v7 = MEMORY[0x277D41BA8];
      goto LABEL_6;
    case 2:
      anchorEvent = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction anchorEvent];
      v7 = MEMORY[0x277D41BB0];
LABEL_6:
      v13 = [v7 alloc];
      deviceIdentifier = [anchorEvent deviceIdentifier];
      deviceName = [anchorEvent deviceName];
      v12 = [v13 initWithDeviceIdentifier:deviceIdentifier deviceName:deviceName];
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
      anchorEvent = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction anchorEvent];
      v14 = MEMORY[0x277D41BE8];
      goto LABEL_10;
    case 8:
      anchorEvent = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction anchorEvent];
      v14 = MEMORY[0x277D41BF0];
LABEL_10:
      v15 = [v14 alloc];
      deviceIdentifier = [anchorEvent identifier];
      v16 = [v15 initWithLocationIdentifier:deviceIdentifier namedLOI:0];
      goto LABEL_13;
    case 16:
      anchorEvent = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction anchorEvent];
      v8 = MEMORY[0x277D41C78];
      goto LABEL_12;
    case 17:
      anchorEvent = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction anchorEvent];
      v8 = MEMORY[0x277D41C80];
LABEL_12:
      v17 = [v8 alloc];
      deviceIdentifier = [anchorEvent deviceIdentifier];
      v16 = [v17 initWithDeviceIdentifier:deviceIdentifier];
LABEL_13:
      v5 = v16;
      goto LABEL_14;
    case 19:
      anchorEvent = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction anchorEvent];
      v9 = objc_alloc(MEMORY[0x277D41C20]);
      deviceIdentifier = [anchorEvent dominantMicrolocationUUID];
      deviceName = [deviceIdentifier UUIDString];
      v12 = [v9 initWithLocationUUID:deviceName];
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