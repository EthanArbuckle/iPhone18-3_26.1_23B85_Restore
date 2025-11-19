@interface ATXActivity
- (ATXActivity)initWithBMInferredModeEvent:(id)a3;
- (ATXActivity)initWithBiomeInferredModeEvent:(id)a3;
- (ATXActivity)initWithModeUUID:(id)a3 userModeName:(id)a4 activityType:(unint64_t)a5 origin:(int64_t)a6 originBundleId:(id)a7 originAnchorType:(id)a8 allowsSmartEntry:(BOOL)a9 suggestionUUID:(id)a10 triggers:(id)a11 location:(unint64_t)a12 shouldSuggestTriggers:(BOOL)a13;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXActivity:(id)a3;
- (NSString)localizedSuggestionReason;
- (id)_anchorSuggestionReasonLocalizationKey;
- (id)_heuristicSuggestionReasonLocalizationKey;
- (id)_suggestionReasonLocalizationKey;
- (unint64_t)hash;
- (void)_heuristicSuggestionReasonLocalizationKey;
- (void)localizedSuggestionReason;
@end

@implementation ATXActivity

- (ATXActivity)initWithBMInferredModeEvent:(id)a3
{
  v3 = a3;
  v19 = [v3 modeUUID];
  v18 = [v3 userModeName];
  [v3 modeType];
  v17 = BMInferredModeTypeToActivity();
  v4 = [v3 origin];
  v5 = [v3 originBundleId];
  v6 = [v3 originAnchorType];
  v7 = [v3 isAutomationEnabled];
  v8 = [v3 suggestionUUID];
  v9 = [v3 serializedTriggers];
  v10 = ATXDeserializeTriggers();
  v11 = [v3 uiLocation];
  v12 = [v3 shouldSuggestTriggers];

  LOBYTE(v16) = v12;
  LOBYTE(v15) = v7;
  v13 = [(ATXActivity *)self initWithModeUUID:v19 userModeName:v18 activityType:v17 origin:v4 originBundleId:v5 originAnchorType:v6 allowsSmartEntry:v15 suggestionUUID:v8 triggers:v10 location:v11 shouldSuggestTriggers:v16];

  return v13;
}

- (ATXActivity)initWithBiomeInferredModeEvent:(id)a3
{
  v3 = a3;
  v19 = [v3 modeIdentifier];
  v18 = [v3 userModeName];
  [v3 modeType];
  v17 = BMUserFocusInferredModeTypeToActivity();
  [v3 origin];
  v4 = BMUserFocusInferredModeOriginToLegacy();
  v5 = [v3 originBundleID];
  v6 = [v3 originAnchorType];
  v7 = [v3 isAutomationEnabled];
  v8 = [v3 uuid];
  v9 = [v3 serializedTriggers];
  v10 = ATXDeserializeTriggers();
  v11 = [v3 uiLocation];
  v12 = [v3 shouldSuggestTriggers];

  LOBYTE(v16) = v12;
  LOBYTE(v15) = v7;
  v13 = [(ATXActivity *)self initWithModeUUID:v19 userModeName:v18 activityType:v17 origin:v4 originBundleId:v5 originAnchorType:v6 allowsSmartEntry:v15 suggestionUUID:v8 triggers:v10 location:v11 shouldSuggestTriggers:v16];

  return v13;
}

- (ATXActivity)initWithModeUUID:(id)a3 userModeName:(id)a4 activityType:(unint64_t)a5 origin:(int64_t)a6 originBundleId:(id)a7 originAnchorType:(id)a8 allowsSmartEntry:(BOOL)a9 suggestionUUID:(id)a10 triggers:(id)a11 location:(unint64_t)a12 shouldSuggestTriggers:(BOOL)a13
{
  v19 = a3;
  v20 = a4;
  v21 = a7;
  v22 = a8;
  v23 = a10;
  v24 = a11;
  v39.receiver = self;
  v39.super_class = ATXActivity;
  v25 = [(ATXActivity *)&v39 init];
  if (v25)
  {
    v26 = [v19 copy];
    modeUUID = v25->_modeUUID;
    v25->_modeUUID = v26;

    v28 = [v20 copy];
    userModeName = v25->_userModeName;
    v25->_userModeName = v28;

    v25->_activityType = a5;
    v25->_origin = a6;
    v30 = [v21 copy];
    originBundleId = v25->_originBundleId;
    v25->_originBundleId = v30;

    v32 = [v22 copy];
    originAnchorType = v25->_originAnchorType;
    v25->_originAnchorType = v32;

    v34 = [v23 copy];
    suggestionUUID = v25->_suggestionUUID;
    v25->_suggestionUUID = v34;

    v25->_allowsSmartEntry = a9;
    v25->_location = a12;
    v36 = [v24 copy];
    triggers = v25->_triggers;
    v25->_triggers = v36;

    v25->_shouldSuggestTriggers = a13;
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

  v7 = [(ATXActivity *)self _suggestionReasonLocalizationKey];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:v7 value:0 table:0];
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
      v3 = [(ATXActivity *)self _heuristicSuggestionReasonLocalizationKey];
      goto LABEL_10;
    }

    if (((1 << v2) & 0x1003) == 0)
    {
      v3 = [(ATXActivity *)self _anchorSuggestionReasonLocalizationKey];
      goto LABEL_10;
    }
  }

  v3 = 0;
LABEL_10:

  return v3;
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

  v5 = [v3 integerValue];
  v6 = v5;
  v7 = 0;
  if (v5 > 4)
  {
    if (v5 > 7)
    {
      if ((v5 - 8) < 2)
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

    if (v5 == 5)
    {
      if (self->_origin == 4)
      {
        v7 = @"FOCUS_SUGGESTION_REASON_Heuristic_PersonalTime_CoreRoutine";
        goto LABEL_43;
      }
    }

    else if (v5 == 6)
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

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      if ((self->_origin - 1) < 3)
      {
        v7 = @"FOCUS_SUGGESTION_REASON_Heuristic_Driving_CoreMotion_OR_DNDWD_OR_CarPlay";
        goto LABEL_43;
      }
    }

    else if (v5 == 3)
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

  if (v5 != -1)
  {
    if (v5)
    {
      if (v5 == 1)
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXActivity *)self isEqualToATXActivity:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXActivity:(id)a3
{
  v4 = a3;
  modeUUID = self->_modeUUID;
  v6 = [v4 modeUUID];
  LODWORD(modeUUID) = [(NSString *)modeUUID isEqualToString:v6];

  if (!modeUUID)
  {
    goto LABEL_21;
  }

  suggestionUUID = self->_suggestionUUID;
  v8 = [v4 suggestionUUID];
  LODWORD(suggestionUUID) = [(NSString *)suggestionUUID isEqualToString:v8];

  if (!suggestionUUID)
  {
    goto LABEL_21;
  }

  activityType = self->_activityType;
  if (activityType != [v4 activityType])
  {
    goto LABEL_21;
  }

  allowsSmartEntry = self->_allowsSmartEntry;
  if (allowsSmartEntry != [v4 allowsSmartEntry])
  {
    goto LABEL_21;
  }

  origin = self->_origin;
  if (origin != [v4 origin])
  {
    goto LABEL_21;
  }

  location = self->_location;
  if (location != [v4 location])
  {
    goto LABEL_21;
  }

  originBundleId = self->_originBundleId;
  v14 = originBundleId;
  if (!originBundleId)
  {
    v15 = [v4 originBundleId];
    if (!v15)
    {
      goto LABEL_14;
    }

    location = v15;
    v14 = self->_originBundleId;
  }

  v16 = [v4 originBundleId];
  v17 = [(NSString *)v14 isEqualToString:v16];

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

  v20 = [v4 originAnchorType];
  if (v20)
  {
    location = v20;
    v19 = self->_originAnchorType;
LABEL_17:
    v21 = [v4 originAnchorType];
    v22 = [(NSString *)v19 isEqualToString:v21];

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
  v24 = shouldSuggestTriggers == [v4 shouldSuggestTriggers];
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