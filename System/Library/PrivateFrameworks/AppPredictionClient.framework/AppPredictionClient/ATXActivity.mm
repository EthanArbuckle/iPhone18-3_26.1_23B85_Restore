@interface ATXActivity
- (ATXActivity)initWithBMInferredModeEvent:(id)event;
- (ATXActivity)initWithBiomeInferredModeEvent:(id)event;
- (ATXActivity)initWithModeUUID:(id)d userModeName:(id)name activityType:(unint64_t)type origin:(int64_t)origin originBundleId:(id)id originAnchorType:(id)anchorType allowsSmartEntry:(BOOL)entry suggestionUUID:(id)self0 triggers:(id)self1 location:(unint64_t)self2 shouldSuggestTriggers:(BOOL)self3;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXActivity:(id)activity;
- (NSString)localizedSuggestionReason;
- (id)_anchorSuggestionReasonLocalizationKey;
- (id)_heuristicSuggestionReasonLocalizationKey;
- (id)_suggestionReasonLocalizationKey;
- (unint64_t)hash;
- (void)_heuristicSuggestionReasonLocalizationKey;
- (void)localizedSuggestionReason;
@end

@implementation ATXActivity

- (ATXActivity)initWithBMInferredModeEvent:(id)event
{
  eventCopy = event;
  modeUUID = [eventCopy modeUUID];
  userModeName = [eventCopy userModeName];
  [eventCopy modeType];
  v17 = BMInferredModeTypeToActivity();
  origin = [eventCopy origin];
  originBundleId = [eventCopy originBundleId];
  originAnchorType = [eventCopy originAnchorType];
  isAutomationEnabled = [eventCopy isAutomationEnabled];
  suggestionUUID = [eventCopy suggestionUUID];
  serializedTriggers = [eventCopy serializedTriggers];
  v10 = ATXDeserializeTriggers();
  uiLocation = [eventCopy uiLocation];
  shouldSuggestTriggers = [eventCopy shouldSuggestTriggers];

  LOBYTE(v16) = shouldSuggestTriggers;
  LOBYTE(v15) = isAutomationEnabled;
  v13 = [(ATXActivity *)self initWithModeUUID:modeUUID userModeName:userModeName activityType:v17 origin:origin originBundleId:originBundleId originAnchorType:originAnchorType allowsSmartEntry:v15 suggestionUUID:suggestionUUID triggers:v10 location:uiLocation shouldSuggestTriggers:v16];

  return v13;
}

- (ATXActivity)initWithBiomeInferredModeEvent:(id)event
{
  eventCopy = event;
  modeIdentifier = [eventCopy modeIdentifier];
  userModeName = [eventCopy userModeName];
  [eventCopy modeType];
  v17 = BMUserFocusInferredModeTypeToActivity();
  [eventCopy origin];
  v4 = BMUserFocusInferredModeOriginToLegacy();
  originBundleID = [eventCopy originBundleID];
  originAnchorType = [eventCopy originAnchorType];
  isAutomationEnabled = [eventCopy isAutomationEnabled];
  uuid = [eventCopy uuid];
  serializedTriggers = [eventCopy serializedTriggers];
  v10 = ATXDeserializeTriggers();
  uiLocation = [eventCopy uiLocation];
  shouldSuggestTriggers = [eventCopy shouldSuggestTriggers];

  LOBYTE(v16) = shouldSuggestTriggers;
  LOBYTE(v15) = isAutomationEnabled;
  v13 = [(ATXActivity *)self initWithModeUUID:modeIdentifier userModeName:userModeName activityType:v17 origin:v4 originBundleId:originBundleID originAnchorType:originAnchorType allowsSmartEntry:v15 suggestionUUID:uuid triggers:v10 location:uiLocation shouldSuggestTriggers:v16];

  return v13;
}

- (ATXActivity)initWithModeUUID:(id)d userModeName:(id)name activityType:(unint64_t)type origin:(int64_t)origin originBundleId:(id)id originAnchorType:(id)anchorType allowsSmartEntry:(BOOL)entry suggestionUUID:(id)self0 triggers:(id)self1 location:(unint64_t)self2 shouldSuggestTriggers:(BOOL)self3
{
  dCopy = d;
  nameCopy = name;
  idCopy = id;
  anchorTypeCopy = anchorType;
  iDCopy = iD;
  triggersCopy = triggers;
  v39.receiver = self;
  v39.super_class = ATXActivity;
  v25 = [(ATXActivity *)&v39 init];
  if (v25)
  {
    v26 = [dCopy copy];
    modeUUID = v25->_modeUUID;
    v25->_modeUUID = v26;

    v28 = [nameCopy copy];
    userModeName = v25->_userModeName;
    v25->_userModeName = v28;

    v25->_activityType = type;
    v25->_origin = origin;
    v30 = [idCopy copy];
    originBundleId = v25->_originBundleId;
    v25->_originBundleId = v30;

    v32 = [anchorTypeCopy copy];
    originAnchorType = v25->_originAnchorType;
    v25->_originAnchorType = v32;

    v34 = [iDCopy copy];
    suggestionUUID = v25->_suggestionUUID;
    v25->_suggestionUUID = v34;

    v25->_allowsSmartEntry = entry;
    v25->_location = location;
    v36 = [triggersCopy copy];
    triggers = v25->_triggers;
    v25->_triggers = v36;

    v25->_shouldSuggestTriggers = suggestTriggers;
  }

  return v25;
}

- (NSString)localizedSuggestionReason
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = __atxlog_handle_modes();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    activityType = self->_activityType;
    origin = self->_origin;
    originAnchorType = self->_originAnchorType;
    v11 = 134218498;
    v12 = activityType;
    v13 = 2048;
    v14 = origin;
    v15 = 2112;
    v16 = originAnchorType;
    _os_log_impl(&dword_1BF549000, v3, OS_LOG_TYPE_DEFAULT, "ATXActivity - Generating localizedSuggestionReason for activity type %ld, origin %ld, and origin anchor type %@", &v11, 0x20u);
  }

  _suggestionReasonLocalizationKey = [(ATXActivity *)self _suggestionReasonLocalizationKey];
  if (_suggestionReasonLocalizationKey)
  {
    v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:_suggestionReasonLocalizationKey value:0 table:0];
  }

  else
  {
    v8 = __atxlog_handle_modes();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [ATXActivity localizedSuggestionReason];
    }

    v9 = 0;
  }

  return v9;
}

- (id)_suggestionReasonLocalizationKey
{
  v2 = self->_origin + 1;
  if (v2 > 0x11)
  {
    v4 = __atxlog_handle_modes();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [ATXActivity _suggestionReasonLocalizationKey];
    }
  }

  else
  {
    if (((1 << v2) & 0x3E7FC) != 0)
    {
      _heuristicSuggestionReasonLocalizationKey = [(ATXActivity *)self _heuristicSuggestionReasonLocalizationKey];
      goto LABEL_10;
    }

    if (((1 << v2) & 0x1003) == 0)
    {
      _heuristicSuggestionReasonLocalizationKey = [(ATXActivity *)self _anchorSuggestionReasonLocalizationKey];
      goto LABEL_10;
    }
  }

  _heuristicSuggestionReasonLocalizationKey = 0;
LABEL_10:

  return _heuristicSuggestionReasonLocalizationKey;
}

- (id)_anchorSuggestionReasonLocalizationKey
{
  p_originAnchorType = &self->_originAnchorType;
  if ([(NSString *)self->_originAnchorType isEqualToString:@"BluetoothConnectedAnchor"])
  {
    return @"FOCUS_SUGGESTION_REASON_Anchor_BluetoothConnected";
  }

  if ([(NSString *)*p_originAnchorType isEqualToString:@"BluetoothDisconnectedAnchor"])
  {
    return @"FOCUS_SUGGESTION_REASON_Anchor_BluetoothDisconnected";
  }

  if ([(NSString *)*p_originAnchorType isEqualToString:@"IdleTimeBeginAnchor"])
  {
    return @"FOCUS_SUGGESTION_REASON_Anchor_IdleTimeBegin";
  }

  if ([(NSString *)*p_originAnchorType isEqualToString:@"IdleTimeEndAnchor"])
  {
    return @"FOCUS_SUGGESTION_REASON_Anchor_IdleTimeEnd";
  }

  if ([(NSString *)*p_originAnchorType isEqualToString:@"CarPlayConnectedAnchor"])
  {
    return @"FOCUS_SUGGESTION_REASON_Anchor_CarPlayConnected";
  }

  if ([(NSString *)*p_originAnchorType isEqualToString:@"CarPlayDisconnectedAnchor"])
  {
    return @"FOCUS_SUGGESTION_REASON_Anchor_CarPlayDisconnected";
  }

  if ([(NSString *)*p_originAnchorType isEqualToString:@"LOIEntranceAnchor"])
  {
    return @"FOCUS_SUGGESTION_REASON_Anchor_LOIEntrance";
  }

  if ([(NSString *)*p_originAnchorType isEqualToString:@"LOIExitAnchor"])
  {
    return @"FOCUS_SUGGESTION_REASON_Anchor_LOIExit";
  }

  if ([(NSString *)*p_originAnchorType isEqualToString:@"WiredAudioDeviceConnectedAnchor"])
  {
    return @"FOCUS_SUGGESTION_REASON_Anchor_WiredAudioDeviceConnected";
  }

  if ([(NSString *)*p_originAnchorType isEqualToString:@"WiredAudioDeviceDisconnectedAnchor"])
  {
    return @"FOCUS_SUGGESTION_REASON_Anchor_WiredAudioDeviceDisconnected";
  }

  if ([(NSString *)*p_originAnchorType isEqualToString:@"ChargerConnectedAnchor"])
  {
    return @"FOCUS_SUGGESTION_REASON_Anchor_ChargerConnected";
  }

  if ([(NSString *)*p_originAnchorType isEqualToString:@"MicrolocationVisitAnchor"])
  {
    return @"FOCUS_SUGGESTION_REASON_Anchor_MicrolocationVisit";
  }

  if ([(NSString *)*p_originAnchorType isEqualToString:@"UpcomingCommuteToWorkAnchor"])
  {
    return @"FOCUS_SUGGESTION_REASON_Anchor_UpcomingCommuteToWork";
  }

  if ([(NSString *)*p_originAnchorType isEqualToString:@"UpcomingCommuteFromWorkAnchor"])
  {
    return @"FOCUS_SUGGESTION_REASON_Anchor_UpcomingCommuteFromWork";
  }

  if ([(NSString *)*p_originAnchorType isEqualToString:@"GymArrivalAnchor"])
  {
    return @"FOCUS_SUGGESTION_REASON_Anchor_GymArrival";
  }

  v4 = __atxlog_handle_modes();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [ATXActivity _anchorSuggestionReasonLocalizationKey];
  }

  return 0;
}

- (id)_heuristicSuggestionReasonLocalizationKey
{
  v3 = ATXActivityTypeToDNDModeSemanticType();
  v4 = v3;
  if (!v3)
  {
    v9 = __atxlog_handle_modes();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [ATXActivity _heuristicSuggestionReasonLocalizationKey];
    }

    goto LABEL_12;
  }

  integerValue = [v3 integerValue];
  v6 = integerValue;
  v7 = 0;
  if (integerValue > 4)
  {
    if (integerValue > 7)
    {
      if ((integerValue - 8) < 2)
      {
        goto LABEL_43;
      }

LABEL_25:
      v9 = __atxlog_handle_modes();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [(ATXActivity *)v6 _heuristicSuggestionReasonLocalizationKey:v9];
      }

LABEL_12:

LABEL_42:
      v7 = 0;
      goto LABEL_43;
    }

    if (integerValue == 5)
    {
      if (self->_origin == 4)
      {
        v7 = @"FOCUS_SUGGESTION_REASON_Heuristic_PersonalTime_CoreRoutine";
        goto LABEL_43;
      }
    }

    else if (integerValue == 6)
    {
      if (self->_origin == 6)
      {
        v7 = @"FOCUS_SUGGESTION_REASON_Heuristic_Reading_AppLaunch";
        goto LABEL_43;
      }
    }

    else if (self->_origin == 6)
    {
      v7 = @"FOCUS_SUGGESTION_REASON_Heuristic_Gaming_AppLaunch";
      goto LABEL_43;
    }

LABEL_39:
    v19 = __atxlog_handle_modes();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [ATXActivity _heuristicSuggestionReasonLocalizationKey];
    }

    goto LABEL_42;
  }

  if (integerValue > 1)
  {
    if (integerValue == 2)
    {
      if ((self->_origin - 1) < 3)
      {
        v7 = @"FOCUS_SUGGESTION_REASON_Heuristic_Driving_CoreMotion_OR_DNDWD_OR_CarPlay";
        goto LABEL_43;
      }
    }

    else if (integerValue == 3)
    {
      origin = self->_origin;
      if (origin == 7)
      {
        v7 = @"FOCUS_SUGGESTION_REASON_Heuristic_Exercise_WatchWorkout";
        goto LABEL_43;
      }

      if (origin == 15)
      {
        v7 = @"FOCUS_SUGGESTION_REASON_Heuristic_Exercise_NearbyGym";
        goto LABEL_43;
      }
    }

    else
    {
      v10 = self->_origin;
      switch(v10)
      {
        case 4:
          v7 = @"FOCUS_SUGGESTION_REASON_Heuristic_Work_CoreRoutine";
          goto LABEL_43;
        case 8:
          v7 = @"FOCUS_SUGGESTION_REASON_Heuristic_Work_WFHClassifier";
          goto LABEL_43;
        case 9:
          v7 = @"FOCUS_SUGGESTION_REASON_Heuristic_Work_Calendar";
          goto LABEL_43;
      }
    }

    goto LABEL_39;
  }

  if (integerValue != -1)
  {
    if (integerValue)
    {
      if (integerValue == 1)
      {
        v8 = self->_origin;
        if (v8 == 5)
        {
          v7 = @"FOCUS_SUGGESTION_REASON_Heuristic_Sleep_Sleep";
          goto LABEL_43;
        }

        if (v8 == 16)
        {
          v7 = @"FOCUS_SUGGESTION_REASON_Heuristic_Sleep_BacklightData";
          goto LABEL_43;
        }

        goto LABEL_39;
      }

      goto LABEL_25;
    }

    v17 = self->_origin;
    if (v17 == 13)
    {
      v7 = @"FOCUS_SUGGESTION_REASON_Heuristic_Default_ScreenRecording";
      goto LABEL_43;
    }

    if (v17 == 12)
    {
      v7 = @"FOCUS_SUGGESTION_REASON_Heuristic_Default_ScreenShare";
      goto LABEL_43;
    }

    goto LABEL_39;
  }

LABEL_43:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_modeUUID hash];
  v4 = [(NSString *)self->_suggestionUUID hash];
  v5 = self->_activityType - (v4 - v3 + 32 * v3) + 32 * (v4 - v3 + 32 * v3);
  v6 = self->_allowsSmartEntry - v5 + 32 * v5;
  v7 = self->_origin - v6 + 32 * v6;
  v8 = self->_location - v7 + 32 * v7;
  v9 = [(NSString *)self->_originBundleId hash]- v8 + 32 * v8;
  v10 = [(NSString *)self->_originAnchorType hash];
  return self->_shouldSuggestTriggers - (v10 - v9 + 32 * v9) + 32 * (v10 - v9 + 32 * v9);
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXActivity *)self isEqualToATXActivity:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXActivity:(id)activity
{
  activityCopy = activity;
  modeUUID = self->_modeUUID;
  modeUUID = [activityCopy modeUUID];
  LODWORD(modeUUID) = [(NSString *)modeUUID isEqualToString:modeUUID];

  if (!modeUUID)
  {
    goto LABEL_21;
  }

  suggestionUUID = self->_suggestionUUID;
  suggestionUUID = [activityCopy suggestionUUID];
  LODWORD(suggestionUUID) = [(NSString *)suggestionUUID isEqualToString:suggestionUUID];

  if (!suggestionUUID)
  {
    goto LABEL_21;
  }

  activityType = self->_activityType;
  if (activityType != [activityCopy activityType])
  {
    goto LABEL_21;
  }

  allowsSmartEntry = self->_allowsSmartEntry;
  if (allowsSmartEntry != [activityCopy allowsSmartEntry])
  {
    goto LABEL_21;
  }

  origin = self->_origin;
  if (origin != [activityCopy origin])
  {
    goto LABEL_21;
  }

  location = self->_location;
  if (location != [activityCopy location])
  {
    goto LABEL_21;
  }

  originBundleId = self->_originBundleId;
  v14 = originBundleId;
  if (!originBundleId)
  {
    originBundleId = [activityCopy originBundleId];
    if (!originBundleId)
    {
      goto LABEL_14;
    }

    location = originBundleId;
    v14 = self->_originBundleId;
  }

  originBundleId2 = [activityCopy originBundleId];
  v17 = [(NSString *)v14 isEqualToString:originBundleId2];

  if (originBundleId)
  {
    if (!v17)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (!v17)
    {
      goto LABEL_21;
    }
  }

LABEL_14:
  originAnchorType = self->_originAnchorType;
  v19 = originAnchorType;
  if (originAnchorType)
  {
    goto LABEL_17;
  }

  originAnchorType = [activityCopy originAnchorType];
  if (originAnchorType)
  {
    location = originAnchorType;
    v19 = self->_originAnchorType;
LABEL_17:
    originAnchorType2 = [activityCopy originAnchorType];
    v22 = [(NSString *)v19 isEqualToString:originAnchorType2];

    if (originAnchorType)
    {
      if (v22)
      {
        goto LABEL_19;
      }
    }

    else
    {

      if (v22)
      {
        goto LABEL_19;
      }
    }

LABEL_21:
    v24 = 0;
    goto LABEL_22;
  }

LABEL_19:
  shouldSuggestTriggers = self->_shouldSuggestTriggers;
  v24 = shouldSuggestTriggers == [activityCopy shouldSuggestTriggers];
LABEL_22:

  return v24;
}

- (void)localizedSuggestionReason
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_10();
  v4 = 2048;
  v5 = v0;
  v6 = 2112;
  v7 = v1;
  _os_log_fault_impl(&dword_1BF549000, v2, OS_LOG_TYPE_FAULT, "ATXActivity - Nil localization key found for activity type %ld, origin %ld, and origin anchor type %@", v3, 0x20u);
}

- (void)_heuristicSuggestionReasonLocalizationKey
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_10();
  v3 = 2048;
  v4 = v0;
  _os_log_fault_impl(&dword_1BF549000, v1, OS_LOG_TYPE_FAULT, "Unexpected origin %ld found for DND semantic type: %ld", v2, 0x16u);
}

@end