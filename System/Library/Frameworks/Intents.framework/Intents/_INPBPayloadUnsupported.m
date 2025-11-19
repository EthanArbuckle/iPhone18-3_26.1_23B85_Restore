@interface _INPBPayloadUnsupported
- (BOOL)isEqual:(id)a3;
- (_INPBPayloadUnsupported)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsAddCallParticipantIntentParticipantsUnsupportedReason:(id)a3;
- (int)StringAsAddMediaIntentMediaDestinationUnsupportedReason:(id)a3;
- (int)StringAsAddMediaIntentMediaItemsUnsupportedReason:(id)a3;
- (int)StringAsAddTasksIntentContactEventTriggerUnsupportedReason:(id)a3;
- (int)StringAsAddTasksIntentTemporalEventTriggerUnsupportedReason:(id)a3;
- (int)StringAsChangeAlarmStatusIntentAlarmsUnsupportedReason:(id)a3;
- (int)StringAsDeleteAlarmIntentAlarmsUnsupportedReason:(id)a3;
- (int)StringAsDeleteTasksIntentTaskUnsupportedReason:(id)a3;
- (int)StringAsFindDeviceAndPlaySoundIntentDeviceUnsupportedReason:(id)a3;
- (int)StringAsJoinCallIntentGroupConversationUnsupportedReason:(id)a3;
- (int)StringAsParticipantUnsupportedReason:(id)a3;
- (int)StringAsPlayMediaIntentMediaItemsUnsupportedReason:(id)a3;
- (int)StringAsPlayMediaIntentPlaybackSpeedUnsupportedReason:(id)a3;
- (int)StringAsReason:(id)a3;
- (int)StringAsReportIncidentIntentIncidentTypeUnsupportedReason:(id)a3;
- (int)StringAsRequestPaymentIntentCurrencyAmountUnsupportedReason:(id)a3;
- (int)StringAsRequestPaymentIntentPayerUnsupportedReason:(id)a3;
- (int)StringAsRunWorkflowIntentWorkflowUnsupportedReason:(id)a3;
- (int)StringAsSaveHealthSampleIntentRecordDateUnsupportedReason:(id)a3;
- (int)StringAsSearchAlarmIntentAlarmsUnsupportedReason:(id)a3;
- (int)StringAsSearchForMediaIntentMediaItemsUnsupportedReason:(id)a3;
- (int)StringAsSendAnnouncementIntentRecipientsUnsupportedReason:(id)a3;
- (int)StringAsSendMessageIntentRecipientUnsupportedReason:(id)a3;
- (int)StringAsSendPaymentIntentCurrencyAmountUnsupportedReason:(id)a3;
- (int)StringAsSendPaymentIntentPayeeUnsupportedReason:(id)a3;
- (int)StringAsSetTaskAttributeIntentContactEventTriggerUnsupportedReason:(id)a3;
- (int)StringAsSetTaskAttributeIntentTemporalEventTriggerUnsupportedReason:(id)a3;
- (int)StringAsSetTimerAttributeIntentTargetTimerUnsupportedReason:(id)a3;
- (int)StringAsShareETAIntentRecipientUnsupportedReason:(id)a3;
- (int)StringAsSnoozeAlarmIntentAlarmsUnsupportedReason:(id)a3;
- (int)StringAsStartCallIntentCallCapabilityUnsupportedReason:(id)a3;
- (int)StringAsStartCallIntentContactsUnsupportedReason:(id)a3;
- (int)StringAsStartCallIntentPreferredCallProviderUnsupportedReason:(id)a3;
- (int)StringAsStopShareETAIntentRecipientUnsupportedReason:(id)a3;
- (int)StringAsTargetEventUnsupportedReason:(id)a3;
- (int)StringAsUpdateAlarmIntentAlarmUnsupportedReason:(id)a3;
- (int)StringAsUpdateMediaAffinityIntentMediaItemsUnsupportedReason:(id)a3;
- (unint64_t)hash;
- (void)addConflictingParameters:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAddCallParticipantIntentParticipantsUnsupportedReason:(int)a3;
- (void)setAddMediaIntentMediaDestinationUnsupportedReason:(int)a3;
- (void)setAddMediaIntentMediaItemsUnsupportedReason:(int)a3;
- (void)setAddTasksIntentContactEventTriggerUnsupportedReason:(int)a3;
- (void)setAddTasksIntentTargetTaskListMembersUnsupportedReason:(int)a3;
- (void)setAddTasksIntentTemporalEventTriggerUnsupportedReason:(int)a3;
- (void)setChangeAlarmStatusIntentAlarmsUnsupportedReason:(int)a3;
- (void)setConflictingParameters:(id)a3;
- (void)setCreateTimerIntentLabelUnsupportedReason:(int)a3;
- (void)setDateTimeRangeUnsupportedReason:(int)a3;
- (void)setDeleteAlarmIntentAlarmsUnsupportedReason:(int)a3;
- (void)setDeleteTasksIntentTaskListUnsupportedReason:(int)a3;
- (void)setDeleteTasksIntentTaskUnsupportedReason:(int)a3;
- (void)setFindDeviceAndPlaySoundIntentDeviceUnsupportedReason:(int)a3;
- (void)setHasAddCallParticipantIntentParticipantsUnsupportedReason:(BOOL)a3;
- (void)setHasAddMediaIntentMediaDestinationUnsupportedReason:(BOOL)a3;
- (void)setHasAddMediaIntentMediaItemsUnsupportedReason:(BOOL)a3;
- (void)setHasAddTasksIntentContactEventTriggerUnsupportedReason:(BOOL)a3;
- (void)setHasAddTasksIntentTargetTaskListMembersUnsupportedReason:(BOOL)a3;
- (void)setHasAddTasksIntentTemporalEventTriggerUnsupportedReason:(BOOL)a3;
- (void)setHasChangeAlarmStatusIntentAlarmsUnsupportedReason:(BOOL)a3;
- (void)setHasCreateTimerIntentLabelUnsupportedReason:(BOOL)a3;
- (void)setHasCustomUnsupportedReason:(BOOL)a3;
- (void)setHasDateTimeRangeUnsupportedReason:(BOOL)a3;
- (void)setHasDeleteAlarmIntentAlarmsUnsupportedReason:(BOOL)a3;
- (void)setHasDeleteTasksIntentTaskListUnsupportedReason:(BOOL)a3;
- (void)setHasDeleteTasksIntentTaskUnsupportedReason:(BOOL)a3;
- (void)setHasFindDeviceAndPlaySoundIntentDeviceUnsupportedReason:(BOOL)a3;
- (void)setHasJoinCallIntentGroupConversationUnsupportedReason:(BOOL)a3;
- (void)setHasParticipantUnsupportedReason:(BOOL)a3;
- (void)setHasPlayMediaIntentMediaItemsUnsupportedReason:(BOOL)a3;
- (void)setHasPlayMediaIntentPlaybackSpeedUnsupportedReason:(BOOL)a3;
- (void)setHasReason:(BOOL)a3;
- (void)setHasReportIncidentIntentIncidentTypeUnsupportedReason:(BOOL)a3;
- (void)setHasRequestPaymentIntentCurrencyAmountUnsupportedReason:(BOOL)a3;
- (void)setHasRequestPaymentIntentPayerUnsupportedReason:(BOOL)a3;
- (void)setHasRunWorkflowIntentWorkflowUnsupportedReason:(BOOL)a3;
- (void)setHasSaveHealthSampleIntentRecordDateUnsupportedReason:(BOOL)a3;
- (void)setHasSearchAlarmIntentAlarmsUnsupportedReason:(BOOL)a3;
- (void)setHasSearchForMediaIntentMediaItemsUnsupportedReason:(BOOL)a3;
- (void)setHasSendAnnouncementIntentAnnouncementUnsupportedReason:(BOOL)a3;
- (void)setHasSendAnnouncementIntentRecipientsUnsupportedReason:(BOOL)a3;
- (void)setHasSendMessageIntentRecipientUnsupportedReason:(BOOL)a3;
- (void)setHasSendPaymentIntentCurrencyAmountUnsupportedReason:(BOOL)a3;
- (void)setHasSendPaymentIntentPayeeUnsupportedReason:(BOOL)a3;
- (void)setHasSetTaskAttributeIntentContactEventTriggerUnsupportedReason:(BOOL)a3;
- (void)setHasSetTaskAttributeIntentTemporalEventTriggerUnsupportedReason:(BOOL)a3;
- (void)setHasSetTimerAttributeIntentTargetTimerUnsupportedReason:(BOOL)a3;
- (void)setHasShareETAIntentRecipientUnsupportedReason:(BOOL)a3;
- (void)setHasSnoozeAlarmIntentAlarmsUnsupportedReason:(BOOL)a3;
- (void)setHasSnoozeTasksIntentTaskUnsupportedReason:(BOOL)a3;
- (void)setHasStartCallIntentCallCapabilityUnsupportedReason:(BOOL)a3;
- (void)setHasStartCallIntentCallRecordToCallBackUnsupportedReason:(BOOL)a3;
- (void)setHasStartCallIntentContactsUnsupportedReason:(BOOL)a3;
- (void)setHasStartCallIntentPreferredCallProviderUnsupportedReason:(BOOL)a3;
- (void)setHasStopShareETAIntentRecipientUnsupportedReason:(BOOL)a3;
- (void)setHasTargetEventUnsupportedReason:(BOOL)a3;
- (void)setHasUpdateMediaAffinityIntentMediaItemsUnsupportedReason:(BOOL)a3;
- (void)setJoinCallIntentGroupConversationUnsupportedReason:(int)a3;
- (void)setParticipantUnsupportedReason:(int)a3;
- (void)setPlayMediaIntentMediaItemsUnsupportedReason:(int)a3;
- (void)setPlayMediaIntentPlaybackSpeedUnsupportedReason:(int)a3;
- (void)setReason:(int)a3;
- (void)setReportIncidentIntentIncidentTypeUnsupportedReason:(int)a3;
- (void)setRequestPaymentIntentCurrencyAmountUnsupportedReason:(int)a3;
- (void)setRequestPaymentIntentPayerUnsupportedReason:(int)a3;
- (void)setRunWorkflowIntentWorkflowUnsupportedReason:(int)a3;
- (void)setSaveHealthSampleIntentRecordDateUnsupportedReason:(int)a3;
- (void)setSearchAlarmIntentAlarmsUnsupportedReason:(int)a3;
- (void)setSearchForMediaIntentMediaItemsUnsupportedReason:(int)a3;
- (void)setSendAnnouncementIntentAnnouncementUnsupportedReason:(int)a3;
- (void)setSendAnnouncementIntentRecipientsUnsupportedReason:(int)a3;
- (void)setSendMessageIntentRecipientUnsupportedReason:(int)a3;
- (void)setSendPaymentIntentCurrencyAmountUnsupportedReason:(int)a3;
- (void)setSendPaymentIntentPayeeUnsupportedReason:(int)a3;
- (void)setSetTaskAttributeIntentContactEventTriggerUnsupportedReason:(int)a3;
- (void)setSetTaskAttributeIntentTemporalEventTriggerUnsupportedReason:(int)a3;
- (void)setSetTimerAttributeIntentTargetTimerUnsupportedReason:(int)a3;
- (void)setShareETAIntentRecipientUnsupportedReason:(int)a3;
- (void)setSnoozeAlarmIntentAlarmsUnsupportedReason:(int)a3;
- (void)setSnoozeTasksIntentTaskUnsupportedReason:(int)a3;
- (void)setStartCallIntentCallCapabilityUnsupportedReason:(int)a3;
- (void)setStartCallIntentCallRecordToCallBackUnsupportedReason:(int)a3;
- (void)setStartCallIntentContactsUnsupportedReason:(int)a3;
- (void)setStartCallIntentPreferredCallProviderUnsupportedReason:(int)a3;
- (void)setStopShareETAIntentRecipientUnsupportedReason:(int)a3;
- (void)setTargetEventUnsupportedReason:(int)a3;
- (void)setUpdateAlarmIntentAlarmUnsupportedReason:(int)a3;
- (void)setUpdateMediaAffinityIntentMediaItemsUnsupportedReason:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBPayloadUnsupported

- (id)dictionaryRepresentation
{
  v109 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBPayloadUnsupported *)self hasUpdateAlarmIntentAlarmUnsupportedReason])
  {
    v4 = [(_INPBPayloadUnsupported *)self updateAlarmIntentAlarmUnsupportedReason];
    if (v4)
    {
      if (v4 == 3)
      {
        v5 = @"SLEEP_ALARM_NOT_SUPPORTED";
      }

      else if (v4 == 1)
      {
        v5 = @"NO_ALARM_EXISTS";
      }

      else
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
      }
    }

    else
    {
      v5 = @"NOT_FOUND";
    }

    [v3 setObject:v5 forKeyedSubscript:@"alarmUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasChangeAlarmStatusIntentAlarmsUnsupportedReason])
  {
    v6 = [(_INPBPayloadUnsupported *)self changeAlarmStatusIntentAlarmsUnsupportedReason];
    if (v6 >= 6)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = off_1E7282430[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"alarmsUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasDeleteAlarmIntentAlarmsUnsupportedReason])
  {
    v8 = [(_INPBPayloadUnsupported *)self deleteAlarmIntentAlarmsUnsupportedReason];
    if (v8)
    {
      if (v8 == 1)
      {
        v9 = @"NO_ALARM_EXISTS";
      }

      else
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
      }
    }

    else
    {
      v9 = @"NOT_FOUND";
    }

    [v3 setObject:v9 forKeyedSubscript:@"alarmsUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasSearchAlarmIntentAlarmsUnsupportedReason])
  {
    v10 = [(_INPBPayloadUnsupported *)self searchAlarmIntentAlarmsUnsupportedReason];
    if (v10)
    {
      if (v10 == 1)
      {
        v11 = @"NO_ALARM_EXISTS";
      }

      else
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v10];
      }
    }

    else
    {
      v11 = @"NOT_FOUND";
    }

    [v3 setObject:v11 forKeyedSubscript:@"alarmsUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasSnoozeAlarmIntentAlarmsUnsupportedReason])
  {
    v12 = [(_INPBPayloadUnsupported *)self snoozeAlarmIntentAlarmsUnsupportedReason];
    if (v12)
    {
      if (v12 == 1)
      {
        v13 = @"CANT_SNOOZE_MUSIC_ALARM";
      }

      else
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v12];
      }
    }

    else
    {
      v13 = @"NO_ALARM_FIRING";
    }

    [v3 setObject:v13 forKeyedSubscript:@"alarmsUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasSendAnnouncementIntentAnnouncementUnsupportedReason])
  {
    v14 = [(_INPBPayloadUnsupported *)self sendAnnouncementIntentAnnouncementUnsupportedReason];
    if (v14 == 1)
    {
      v15 = @"NO_ANNOUNCEMENT_TO_REPLY_TO";
    }

    else
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v14];
    }

    [v3 setObject:v15 forKeyedSubscript:@"announcementUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasStartCallIntentCallCapabilityUnsupportedReason])
  {
    v16 = [(_INPBPayloadUnsupported *)self startCallIntentCallCapabilityUnsupportedReason];
    if ((v16 - 1) >= 3)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v16];
    }

    else
    {
      v17 = off_1E7282460[(v16 - 1)];
    }

    [v3 setObject:v17 forKeyedSubscript:@"callCapabilityUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasStartCallIntentCallRecordToCallBackUnsupportedReason])
  {
    v18 = [(_INPBPayloadUnsupported *)self startCallIntentCallRecordToCallBackUnsupportedReason];
    if (v18 == 1)
    {
      v19 = @"NO_MATCHING_CALL";
    }

    else
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v18];
    }

    [v3 setObject:v19 forKeyedSubscript:@"callRecordToCallBackUnsupportedReason"];
  }

  if ([(NSArray *)self->_conflictingParameters count])
  {
    v20 = [MEMORY[0x1E695DF70] array];
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v21 = self->_conflictingParameters;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v104 objects:v108 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v105;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v105 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v104 + 1) + 8 * i) dictionaryRepresentation];
          [v20 addObject:v26];
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v104 objects:v108 count:16];
      }

      while (v23);
    }

    [v3 setObject:v20 forKeyedSubscript:@"conflictingParameters"];
  }

  if ([(_INPBPayloadUnsupported *)self hasAddTasksIntentContactEventTriggerUnsupportedReason])
  {
    v27 = [(_INPBPayloadUnsupported *)self addTasksIntentContactEventTriggerUnsupportedReason];
    if (v27 == 1)
    {
      v28 = @"ACCOUNT_DOES_NOT_SUPPORT";
    }

    else if (v27 == 2)
    {
      v28 = @"CLOUDKIT_NOT_UPGRADED";
    }

    else
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v27];
    }

    [v3 setObject:v28 forKeyedSubscript:@"contactEventTriggerUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasSetTaskAttributeIntentContactEventTriggerUnsupportedReason])
  {
    v29 = [(_INPBPayloadUnsupported *)self setTaskAttributeIntentContactEventTriggerUnsupportedReason];
    if (v29 == 1)
    {
      v30 = @"ACCOUNT_DOES_NOT_SUPPORT";
    }

    else if (v29 == 2)
    {
      v30 = @"CLOUDKIT_NOT_UPGRADED";
    }

    else
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v29];
    }

    [v3 setObject:v30 forKeyedSubscript:@"contactEventTriggerUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasStartCallIntentContactsUnsupportedReason])
  {
    v31 = [(_INPBPayloadUnsupported *)self startCallIntentContactsUnsupportedReason];
    v32 = v31 - 1;
    if (v31 - 1) < 0xA && ((0x2FFu >> v32))
    {
      v33 = off_1E7282478[v32];
    }

    else
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v31];
    }

    [v3 setObject:v33 forKeyedSubscript:@"contactsUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasRequestPaymentIntentCurrencyAmountUnsupportedReason])
  {
    v34 = [(_INPBPayloadUnsupported *)self requestPaymentIntentCurrencyAmountUnsupportedReason];
    if ((v34 - 1) >= 3)
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v34];
    }

    else
    {
      v35 = off_1E72824C8[(v34 - 1)];
    }

    [v3 setObject:v35 forKeyedSubscript:@"currencyAmountUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasSendPaymentIntentCurrencyAmountUnsupportedReason])
  {
    v36 = [(_INPBPayloadUnsupported *)self sendPaymentIntentCurrencyAmountUnsupportedReason];
    if ((v36 - 1) >= 3)
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v36];
    }

    else
    {
      v37 = off_1E72824C8[(v36 - 1)];
    }

    [v3 setObject:v37 forKeyedSubscript:@"currencyAmountUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasCustomUnsupportedReason])
  {
    v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_INPBPayloadUnsupported customUnsupportedReason](self, "customUnsupportedReason")}];
    [v3 setObject:v38 forKeyedSubscript:@"customUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasDateTimeRangeUnsupportedReason])
  {
    v39 = [(_INPBPayloadUnsupported *)self dateTimeRangeUnsupportedReason];
    if (v39 == 1)
    {
      v40 = @"PAST_DATE_TIME";
    }

    else
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v39];
    }

    [v3 setObject:v40 forKeyedSubscript:@"dateTimeRangeUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasFindDeviceAndPlaySoundIntentDeviceUnsupportedReason])
  {
    v41 = [(_INPBPayloadUnsupported *)self findDeviceAndPlaySoundIntentDeviceUnsupportedReason];
    if (v41 == 1)
    {
      v42 = @"UNKNOWN";
    }

    else if (v41 == 2)
    {
      v42 = @"SERVICE_UNAVAILABLE";
    }

    else
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v41];
    }

    [v3 setObject:v42 forKeyedSubscript:@"deviceUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasJoinCallIntentGroupConversationUnsupportedReason])
  {
    v43 = [(_INPBPayloadUnsupported *)self joinCallIntentGroupConversationUnsupportedReason];
    if (v43 == 1)
    {
      v44 = @"NO_ACTIVE_NOTIFICATIONS";
    }

    else if (v43 == 2)
    {
      v44 = @"NO_MATCHING_NOTIFICATIONS";
    }

    else
    {
      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v43];
    }

    [v3 setObject:v44 forKeyedSubscript:@"groupConversationUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasReportIncidentIntentIncidentTypeUnsupportedReason])
  {
    v45 = [(_INPBPayloadUnsupported *)self reportIncidentIntentIncidentTypeUnsupportedReason];
    if (v45 >= 5)
    {
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v45];
    }

    else
    {
      v46 = off_1E72824E0[v45];
    }

    [v3 setObject:v46 forKeyedSubscript:@"incidentTypeUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasCreateTimerIntentLabelUnsupportedReason])
  {
    v47 = [(_INPBPayloadUnsupported *)self createTimerIntentLabelUnsupportedReason];
    if (v47)
    {
      v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v47];
    }

    else
    {
      v48 = @"AMBIGUOUS_UNNAMED_TIMER";
    }

    [v3 setObject:v48 forKeyedSubscript:@"labelUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasAddMediaIntentMediaDestinationUnsupportedReason])
  {
    v49 = [(_INPBPayloadUnsupported *)self addMediaIntentMediaDestinationUnsupportedReason];
    if (v49 == 1)
    {
      v50 = @"PLAYLIST_NAME_NOT_FOUND";
    }

    else if (v49 == 2)
    {
      v50 = @"PLAYLIST_NOT_EDITABLE";
    }

    else
    {
      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v49];
    }

    [v3 setObject:v50 forKeyedSubscript:@"mediaDestinationUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasAddMediaIntentMediaItemsUnsupportedReason])
  {
    v51 = [(_INPBPayloadUnsupported *)self addMediaIntentMediaItemsUnsupportedReason];
    if (v51 <= 7)
    {
      if (v51 > 3)
      {
        if (v51 > 5)
        {
          if (v51 == 6)
          {
            v52 = @"RESTRICTED_CONTENT";
          }

          else
          {
            v52 = @"SERVICE_UNAVAILABLE";
          }
        }

        else if (v51 == 4)
        {
          v52 = @"EXPLICIT_CONTENT_SETTINGS";
        }

        else
        {
          v52 = @"CELLULAR_DATA_SETTINGS";
        }

        goto LABEL_162;
      }

      switch(v51)
      {
        case 1:
          v52 = @"LOGIN_REQUIRED";
          goto LABEL_162;
        case 2:
          v52 = @"SUBSCRIPTION_REQUIRED";
          goto LABEL_162;
        case 3:
          v52 = @"UNSUPPORTED_MEDIA_TYPE";
          goto LABEL_162;
      }
    }

    else if (v51 > 102)
    {
      if (v51 <= 104)
      {
        if (v51 == 103)
        {
          v52 = @"APP_DOESNT_SUPPORT_INTENT";
        }

        else
        {
          v52 = @"ALREADY_IN_LIBRARY";
        }

        goto LABEL_162;
      }

      if (v51 == 105)
      {
        v52 = @"CLOUD_SYNC_OFF";
        goto LABEL_162;
      }

      if (v51 == 106)
      {
        v52 = @"GET_NOWPLAYING_FAILURE";
        goto LABEL_162;
      }
    }

    else
    {
      if (v51 > 100)
      {
        if (v51 == 101)
        {
          v52 = @"APP_NOT_AVAILABLE";
        }

        else
        {
          v52 = @"APP_ACCOUNT_FAILURE";
        }

        goto LABEL_162;
      }

      if (v51 == 8)
      {
        v52 = @"REGION_RESTRICTION";
        goto LABEL_162;
      }

      if (v51 == 100)
      {
        v52 = @"APP_NOT_CONFIGURED";
LABEL_162:
        [v3 setObject:v52 forKeyedSubscript:@"mediaItemsUnsupportedReason"];

        goto LABEL_163;
      }
    }

    v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v51];
    goto LABEL_162;
  }

LABEL_163:
  if (![(_INPBPayloadUnsupported *)self hasPlayMediaIntentMediaItemsUnsupportedReason])
  {
    goto LABEL_213;
  }

  v53 = [(_INPBPayloadUnsupported *)self playMediaIntentMediaItemsUnsupportedReason];
  if (v53 <= 101)
  {
    if (v53 <= 5)
    {
      if (v53 > 2)
      {
        if (v53 == 3)
        {
          v54 = @"UNSUPPORTED_MEDIA_TYPE";
        }

        else if (v53 == 4)
        {
          v54 = @"EXPLICIT_CONTENT_SETTINGS";
        }

        else
        {
          v54 = @"CELLULAR_DATA_SETTINGS";
        }

        goto LABEL_212;
      }

      if (v53 == 1)
      {
        v54 = @"LOGIN_REQUIRED";
        goto LABEL_212;
      }

      if (v53 == 2)
      {
        v54 = @"SUBSCRIPTION_REQUIRED";
        goto LABEL_212;
      }
    }

    else
    {
      if (v53 <= 8)
      {
        if (v53 == 6)
        {
          v54 = @"RESTRICTED_CONTENT";
        }

        else if (v53 == 7)
        {
          v54 = @"SERVICE_UNAVAILABLE";
        }

        else
        {
          v54 = @"REGION_RESTRICTION";
        }

        goto LABEL_212;
      }

      switch(v53)
      {
        case 9:
          v54 = @"NOT_DOWNLOADED_FOR_OFFLINE";
          goto LABEL_212;
        case 0x64:
          v54 = @"APP_NOT_CONFIGURED";
          goto LABEL_212;
        case 0x65:
          v54 = @"APP_NOT_AVAILABLE";
          goto LABEL_212;
      }
    }

LABEL_211:
    v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v53];
    goto LABEL_212;
  }

  if (v53 > 1000)
  {
    if (v53 <= 1003)
    {
      if (v53 == 1001)
      {
        v54 = @"EMPTY_LIBRARY";
      }

      else if (v53 == 1002)
      {
        v54 = @"CREATE_RADIO_FAILED";
      }

      else
      {
        v54 = @"UNSUPPORTED_PLAYBACK_QUEUE_LOCATION";
      }

      goto LABEL_212;
    }

    switch(v53)
    {
      case 0x3EC:
        v54 = @"UNSUPPORTED_PLAYBACK_QUEUE_LOCATION_WITH_LIVE_RADIO";
        goto LABEL_212;
      case 0x3ED:
        v54 = @"STILL_LOADING_CLOUD_LIBRARY";
        goto LABEL_212;
      case 0x3EE:
        v54 = @"ITUNES_ACCOUNT_ERROR";
        goto LABEL_212;
    }

    goto LABEL_211;
  }

  if (v53 <= 103)
  {
    if (v53 == 102)
    {
      v54 = @"APP_ACCOUNT_FAILURE";
    }

    else
    {
      v54 = @"APP_DOESNT_SUPPORT_INTENT";
    }

    goto LABEL_212;
  }

  if (v53 == 104)
  {
    v54 = @"MS_LIMIT_REACHED";
    goto LABEL_212;
  }

  if (v53 == 105)
  {
    v54 = @"MEDIA_PLAYBACK_DISABLED";
    goto LABEL_212;
  }

  if (v53 != 1000)
  {
    goto LABEL_211;
  }

  v54 = @"PLAYBACK_DEVICE_NOT_FOUND";
LABEL_212:
  [v3 setObject:v54 forKeyedSubscript:@"mediaItemsUnsupportedReason"];

LABEL_213:
  if (![(_INPBPayloadUnsupported *)self hasSearchForMediaIntentMediaItemsUnsupportedReason])
  {
    goto LABEL_242;
  }

  v55 = [(_INPBPayloadUnsupported *)self searchForMediaIntentMediaItemsUnsupportedReason];
  if (v55 > 6)
  {
    if (v55 > 100)
    {
      switch(v55)
      {
        case 'e':
          v56 = @"APP_NOT_AVAILABLE";
          goto LABEL_241;
        case 'f':
          v56 = @"APP_ACCOUNT_FAILURE";
          goto LABEL_241;
        case 'g':
          v56 = @"APP_DOESNT_SUPPORT_INTENT";
          goto LABEL_241;
      }
    }

    else
    {
      switch(v55)
      {
        case 7:
          v56 = @"SERVICE_UNAVAILABLE";
          goto LABEL_241;
        case 8:
          v56 = @"REGION_RESTRICTION";
          goto LABEL_241;
        case 0x64:
          v56 = @"APP_NOT_CONFIGURED";
          goto LABEL_241;
      }
    }

LABEL_240:
    v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v55];
    goto LABEL_241;
  }

  if (v55 > 3)
  {
    if (v55 == 4)
    {
      v56 = @"EXPLICIT_CONTENT_SETTINGS";
    }

    else if (v55 == 5)
    {
      v56 = @"CELLULAR_DATA_SETTINGS";
    }

    else
    {
      v56 = @"RESTRICTED_CONTENT";
    }

    goto LABEL_241;
  }

  if (v55 == 1)
  {
    v56 = @"LOGIN_REQUIRED";
    goto LABEL_241;
  }

  if (v55 == 2)
  {
    v56 = @"SUBSCRIPTION_REQUIRED";
    goto LABEL_241;
  }

  if (v55 != 3)
  {
    goto LABEL_240;
  }

  v56 = @"UNSUPPORTED_MEDIA_TYPE";
LABEL_241:
  [v3 setObject:v56 forKeyedSubscript:@"mediaItemsUnsupportedReason"];

LABEL_242:
  if (![(_INPBPayloadUnsupported *)self hasUpdateMediaAffinityIntentMediaItemsUnsupportedReason])
  {
    goto LABEL_271;
  }

  v57 = [(_INPBPayloadUnsupported *)self updateMediaAffinityIntentMediaItemsUnsupportedReason];
  if (v57 > 6)
  {
    if (v57 > 100)
    {
      switch(v57)
      {
        case 'e':
          v58 = @"APP_NOT_AVAILABLE";
          goto LABEL_270;
        case 'f':
          v58 = @"APP_ACCOUNT_FAILURE";
          goto LABEL_270;
        case 'g':
          v58 = @"APP_DOESNT_SUPPORT_INTENT";
          goto LABEL_270;
      }
    }

    else
    {
      switch(v57)
      {
        case 7:
          v58 = @"SERVICE_UNAVAILABLE";
          goto LABEL_270;
        case 8:
          v58 = @"REGION_RESTRICTION";
          goto LABEL_270;
        case 0x64:
          v58 = @"APP_NOT_CONFIGURED";
          goto LABEL_270;
      }
    }

LABEL_269:
    v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v57];
    goto LABEL_270;
  }

  if (v57 > 3)
  {
    if (v57 == 4)
    {
      v58 = @"EXPLICIT_CONTENT_SETTINGS";
    }

    else if (v57 == 5)
    {
      v58 = @"CELLULAR_DATA_SETTINGS";
    }

    else
    {
      v58 = @"RESTRICTED_CONTENT";
    }

    goto LABEL_270;
  }

  if (v57 == 1)
  {
    v58 = @"LOGIN_REQUIRED";
    goto LABEL_270;
  }

  if (v57 == 2)
  {
    v58 = @"SUBSCRIPTION_REQUIRED";
    goto LABEL_270;
  }

  if (v57 != 3)
  {
    goto LABEL_269;
  }

  v58 = @"UNSUPPORTED_MEDIA_TYPE";
LABEL_270:
  [v3 setObject:v58 forKeyedSubscript:@"mediaItemsUnsupportedReason"];

LABEL_271:
  if ([(_INPBPayloadUnsupported *)self hasParticipantUnsupportedReason])
  {
    v59 = [(_INPBPayloadUnsupported *)self participantUnsupportedReason];
    if (v59 == 1)
    {
      v60 = @"INVALID_PARTICIPANT";
    }

    else if (v59 == 2)
    {
      v60 = @"PARTICIPANT_NOT_FOUND";
    }

    else
    {
      v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v59];
    }

    [v3 setObject:v60 forKeyedSubscript:@"participantUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasAddCallParticipantIntentParticipantsUnsupportedReason])
  {
    v61 = [(_INPBPayloadUnsupported *)self addCallParticipantIntentParticipantsUnsupportedReason];
    if ((v61 - 1) >= 6)
    {
      v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v61];
    }

    else
    {
      v62 = off_1E7282508[(v61 - 1)];
    }

    [v3 setObject:v62 forKeyedSubscript:@"participantsUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasSendPaymentIntentPayeeUnsupportedReason])
  {
    v63 = [(_INPBPayloadUnsupported *)self sendPaymentIntentPayeeUnsupportedReason];
    if ((v63 - 1) >= 4)
    {
      v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v63];
    }

    else
    {
      v64 = off_1E7282538[(v63 - 1)];
    }

    [v3 setObject:v64 forKeyedSubscript:@"payeeUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasRequestPaymentIntentPayerUnsupportedReason])
  {
    v65 = [(_INPBPayloadUnsupported *)self requestPaymentIntentPayerUnsupportedReason];
    if ((v65 - 1) >= 3)
    {
      v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v65];
    }

    else
    {
      v66 = off_1E7282558[(v65 - 1)];
    }

    [v3 setObject:v66 forKeyedSubscript:@"payerUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasPlayMediaIntentPlaybackSpeedUnsupportedReason])
  {
    v67 = [(_INPBPayloadUnsupported *)self playMediaIntentPlaybackSpeedUnsupportedReason];
    if (v67 == 1)
    {
      v68 = @"BELOW_MINIMUM";
    }

    else if (v67 == 2)
    {
      v68 = @"ABOVE_MAXIMUM";
    }

    else
    {
      v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v67];
    }

    [v3 setObject:v68 forKeyedSubscript:@"playbackSpeedUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasStartCallIntentPreferredCallProviderUnsupportedReason])
  {
    v69 = [(_INPBPayloadUnsupported *)self startCallIntentPreferredCallProviderUnsupportedReason];
    if ((v69 - 1) >= 6)
    {
      v70 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v69];
    }

    else
    {
      v70 = off_1E7282570[(v69 - 1)];
    }

    [v3 setObject:v70 forKeyedSubscript:@"preferredCallProviderUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasReason])
  {
    v71 = [(_INPBPayloadUnsupported *)self reason];
    if (v71 <= 2)
    {
      if (v71 == 1)
      {
        v72 = @"None";
        goto LABEL_318;
      }

      if (v71 == 2)
      {
        v72 = @"NotNow";
        goto LABEL_318;
      }
    }

    else
    {
      switch(v71)
      {
        case 3:
          v72 = @"NotHere";
          goto LABEL_318;
        case 4:
          v72 = @"ConflictWithOtherFields";
          goto LABEL_318;
        case 0x3E8:
          v72 = @"UnsupportedReasonExtension";
LABEL_318:
          [v3 setObject:v72 forKeyedSubscript:@"reason"];

          goto LABEL_319;
      }
    }

    v72 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v71];
    goto LABEL_318;
  }

LABEL_319:
  if ([(_INPBPayloadUnsupported *)self hasShareETAIntentRecipientUnsupportedReason])
  {
    v73 = [(_INPBPayloadUnsupported *)self shareETAIntentRecipientUnsupportedReason];
    if (v73 >= 5)
    {
      v74 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v73];
    }

    else
    {
      v74 = off_1E72825A0[v73];
    }

    [v3 setObject:v74 forKeyedSubscript:@"recipientUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasStopShareETAIntentRecipientUnsupportedReason])
  {
    v75 = [(_INPBPayloadUnsupported *)self stopShareETAIntentRecipientUnsupportedReason];
    if (v75 >= 5)
    {
      v76 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v75];
    }

    else
    {
      v76 = off_1E72825A0[v75];
    }

    [v3 setObject:v76 forKeyedSubscript:@"recipientUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasSendMessageIntentRecipientUnsupportedReason])
  {
    v77 = [(_INPBPayloadUnsupported *)self sendMessageIntentRecipientUnsupportedReason];
    if ((v77 - 1) >= 0xB)
    {
      v78 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v77];
    }

    else
    {
      v78 = off_1E72825C8[(v77 - 1)];
    }

    [v3 setObject:v78 forKeyedSubscript:@"recipientUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasSendAnnouncementIntentRecipientsUnsupportedReason])
  {
    v79 = [(_INPBPayloadUnsupported *)self sendAnnouncementIntentRecipientsUnsupportedReason];
    if ((v79 - 1) >= 4)
    {
      v80 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v79];
    }

    else
    {
      v80 = off_1E7282620[(v79 - 1)];
    }

    [v3 setObject:v80 forKeyedSubscript:@"recipientsUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasSaveHealthSampleIntentRecordDateUnsupportedReason])
  {
    v81 = [(_INPBPayloadUnsupported *)self saveHealthSampleIntentRecordDateUnsupportedReason];
    if ((v81 - 1) >= 3)
    {
      v82 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v81];
    }

    else
    {
      v82 = off_1E7282640[(v81 - 1)];
    }

    [v3 setObject:v82 forKeyedSubscript:@"recordDateUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasTargetEventUnsupportedReason])
  {
    v83 = [(_INPBPayloadUnsupported *)self targetEventUnsupportedReason];
    if (v83 == 1)
    {
      v84 = @"TARGET_EVENT_NOT_FOUND";
    }

    else if (v83 == 2)
    {
      v84 = @"TARGET_EVENT_NOT_CREATED_BY_USER";
    }

    else
    {
      v84 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v83];
    }

    [v3 setObject:v84 forKeyedSubscript:@"targetEventUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasAddTasksIntentTargetTaskListMembersUnsupportedReason])
  {
    v85 = [(_INPBPayloadUnsupported *)self addTasksIntentTargetTaskListMembersUnsupportedReason];
    if (v85 == 1)
    {
      v86 = @"NO_SHARED_LIST_WITH_CONTACT";
    }

    else
    {
      v86 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v85];
    }

    [v3 setObject:v86 forKeyedSubscript:@"targetTaskListMembersUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasSetTimerAttributeIntentTargetTimerUnsupportedReason])
  {
    v87 = [(_INPBPayloadUnsupported *)self setTimerAttributeIntentTargetTimerUnsupportedReason];
    if (v87)
    {
      if (v87 == 1)
      {
        v88 = @"NO_TIMERS";
      }

      else
      {
        v88 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v87];
      }
    }

    else
    {
      v88 = @"NOT_FOUND";
    }

    [v3 setObject:v88 forKeyedSubscript:@"targetTimerUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasDeleteTasksIntentTaskListUnsupportedReason])
  {
    v89 = [(_INPBPayloadUnsupported *)self deleteTasksIntentTaskListUnsupportedReason];
    if (v89 == 1)
    {
      v90 = @"NO_TASK_LIST_FOUND";
    }

    else
    {
      v90 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v89];
    }

    [v3 setObject:v90 forKeyedSubscript:@"taskListUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasDeleteTasksIntentTaskUnsupportedReason])
  {
    v91 = [(_INPBPayloadUnsupported *)self deleteTasksIntentTaskUnsupportedReason];
    if (v91 == 1)
    {
      v92 = @"NO_TASKS_FOUND";
    }

    else if (v91 == 2)
    {
      v92 = @"NO_TASKS_IN_APP";
    }

    else
    {
      v92 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v91];
    }

    [v3 setObject:v92 forKeyedSubscript:@"taskUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasSnoozeTasksIntentTaskUnsupportedReason])
  {
    v93 = [(_INPBPayloadUnsupported *)self snoozeTasksIntentTaskUnsupportedReason];
    if (v93 == 1)
    {
      v94 = @"NO_TASKS_FOUND";
    }

    else
    {
      v94 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v93];
    }

    [v3 setObject:v94 forKeyedSubscript:@"taskUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasAddTasksIntentTemporalEventTriggerUnsupportedReason])
  {
    v95 = [(_INPBPayloadUnsupported *)self addTasksIntentTemporalEventTriggerUnsupportedReason];
    if (v95 == 1)
    {
      v96 = @"TIME_IN_PAST";
    }

    else if (v95 == 2)
    {
      v96 = @"INVALID_RECURRENCE";
    }

    else
    {
      v96 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v95];
    }

    [v3 setObject:v96 forKeyedSubscript:@"temporalEventTriggerUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasSetTaskAttributeIntentTemporalEventTriggerUnsupportedReason])
  {
    v97 = [(_INPBPayloadUnsupported *)self setTaskAttributeIntentTemporalEventTriggerUnsupportedReason];
    if (v97 == 1)
    {
      v98 = @"TIME_IN_PAST";
    }

    else if (v97 == 2)
    {
      v98 = @"INVALID_RECURRENCE";
    }

    else
    {
      v98 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v97];
    }

    [v3 setObject:v98 forKeyedSubscript:@"temporalEventTriggerUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasRunWorkflowIntentWorkflowUnsupportedReason])
  {
    v99 = [(_INPBPayloadUnsupported *)self runWorkflowIntentWorkflowUnsupportedReason];
    if (v99)
    {
      if (v99 == 1)
      {
        v100 = @"NO_WORKFLOWS";
      }

      else
      {
        v100 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v99];
      }
    }

    else
    {
      v100 = @"NOT_FOUND";
    }

    [v3 setObject:v100 forKeyedSubscript:@"workflowUnsupportedReason"];
  }

  v101 = v3;

  v102 = *MEMORY[0x1E69E9840];
  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBPayloadUnsupported *)self hasUpdateAlarmIntentAlarmUnsupportedReason])
  {
    v50 = 2654435761 * self->_updateAlarmIntentAlarmUnsupportedReason;
  }

  else
  {
    v50 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasChangeAlarmStatusIntentAlarmsUnsupportedReason])
  {
    v49 = 2654435761 * self->_changeAlarmStatusIntentAlarmsUnsupportedReason;
  }

  else
  {
    v49 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasDeleteAlarmIntentAlarmsUnsupportedReason])
  {
    v48 = 2654435761 * self->_deleteAlarmIntentAlarmsUnsupportedReason;
  }

  else
  {
    v48 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasSearchAlarmIntentAlarmsUnsupportedReason])
  {
    v47 = 2654435761 * self->_searchAlarmIntentAlarmsUnsupportedReason;
  }

  else
  {
    v47 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasSnoozeAlarmIntentAlarmsUnsupportedReason])
  {
    v46 = 2654435761 * self->_snoozeAlarmIntentAlarmsUnsupportedReason;
  }

  else
  {
    v46 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasSendAnnouncementIntentAnnouncementUnsupportedReason])
  {
    v45 = 2654435761 * self->_sendAnnouncementIntentAnnouncementUnsupportedReason;
  }

  else
  {
    v45 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasStartCallIntentCallCapabilityUnsupportedReason])
  {
    v44 = 2654435761 * self->_startCallIntentCallCapabilityUnsupportedReason;
  }

  else
  {
    v44 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasStartCallIntentCallRecordToCallBackUnsupportedReason])
  {
    v43 = 2654435761 * self->_startCallIntentCallRecordToCallBackUnsupportedReason;
  }

  else
  {
    v43 = 0;
  }

  v42 = [(NSArray *)self->_conflictingParameters hash];
  if ([(_INPBPayloadUnsupported *)self hasAddTasksIntentContactEventTriggerUnsupportedReason])
  {
    v41 = 2654435761 * self->_addTasksIntentContactEventTriggerUnsupportedReason;
  }

  else
  {
    v41 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasSetTaskAttributeIntentContactEventTriggerUnsupportedReason])
  {
    v40 = 2654435761 * self->_setTaskAttributeIntentContactEventTriggerUnsupportedReason;
  }

  else
  {
    v40 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasStartCallIntentContactsUnsupportedReason])
  {
    v39 = 2654435761 * self->_startCallIntentContactsUnsupportedReason;
  }

  else
  {
    v39 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasRequestPaymentIntentCurrencyAmountUnsupportedReason])
  {
    v38 = 2654435761 * self->_requestPaymentIntentCurrencyAmountUnsupportedReason;
  }

  else
  {
    v38 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasSendPaymentIntentCurrencyAmountUnsupportedReason])
  {
    v37 = 2654435761 * self->_sendPaymentIntentCurrencyAmountUnsupportedReason;
  }

  else
  {
    v37 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasCustomUnsupportedReason])
  {
    v36 = 2654435761 * self->_customUnsupportedReason;
  }

  else
  {
    v36 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasDateTimeRangeUnsupportedReason])
  {
    v35 = 2654435761 * self->_dateTimeRangeUnsupportedReason;
  }

  else
  {
    v35 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasFindDeviceAndPlaySoundIntentDeviceUnsupportedReason])
  {
    v34 = 2654435761 * self->_findDeviceAndPlaySoundIntentDeviceUnsupportedReason;
  }

  else
  {
    v34 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasJoinCallIntentGroupConversationUnsupportedReason])
  {
    v33 = 2654435761 * self->_joinCallIntentGroupConversationUnsupportedReason;
  }

  else
  {
    v33 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasReportIncidentIntentIncidentTypeUnsupportedReason])
  {
    v32 = 2654435761 * self->_reportIncidentIntentIncidentTypeUnsupportedReason;
  }

  else
  {
    v32 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasCreateTimerIntentLabelUnsupportedReason])
  {
    v31 = 2654435761 * self->_createTimerIntentLabelUnsupportedReason;
  }

  else
  {
    v31 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasAddMediaIntentMediaDestinationUnsupportedReason])
  {
    v30 = 2654435761 * self->_addMediaIntentMediaDestinationUnsupportedReason;
  }

  else
  {
    v30 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasAddMediaIntentMediaItemsUnsupportedReason])
  {
    v29 = 2654435761 * self->_addMediaIntentMediaItemsUnsupportedReason;
  }

  else
  {
    v29 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasPlayMediaIntentMediaItemsUnsupportedReason])
  {
    v28 = 2654435761 * self->_playMediaIntentMediaItemsUnsupportedReason;
  }

  else
  {
    v28 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasSearchForMediaIntentMediaItemsUnsupportedReason])
  {
    v27 = 2654435761 * self->_searchForMediaIntentMediaItemsUnsupportedReason;
  }

  else
  {
    v27 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasUpdateMediaAffinityIntentMediaItemsUnsupportedReason])
  {
    v26 = 2654435761 * self->_updateMediaAffinityIntentMediaItemsUnsupportedReason;
  }

  else
  {
    v26 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasParticipantUnsupportedReason])
  {
    v25 = 2654435761 * self->_participantUnsupportedReason;
  }

  else
  {
    v25 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasAddCallParticipantIntentParticipantsUnsupportedReason])
  {
    v24 = 2654435761 * self->_addCallParticipantIntentParticipantsUnsupportedReason;
  }

  else
  {
    v24 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasSendPaymentIntentPayeeUnsupportedReason])
  {
    v23 = 2654435761 * self->_sendPaymentIntentPayeeUnsupportedReason;
  }

  else
  {
    v23 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasRequestPaymentIntentPayerUnsupportedReason])
  {
    v22 = 2654435761 * self->_requestPaymentIntentPayerUnsupportedReason;
  }

  else
  {
    v22 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasPlayMediaIntentPlaybackSpeedUnsupportedReason])
  {
    v21 = 2654435761 * self->_playMediaIntentPlaybackSpeedUnsupportedReason;
  }

  else
  {
    v21 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasStartCallIntentPreferredCallProviderUnsupportedReason])
  {
    v20 = 2654435761 * self->_startCallIntentPreferredCallProviderUnsupportedReason;
  }

  else
  {
    v20 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasReason])
  {
    v19 = 2654435761 * self->_reason;
  }

  else
  {
    v19 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasShareETAIntentRecipientUnsupportedReason])
  {
    v18 = 2654435761 * self->_shareETAIntentRecipientUnsupportedReason;
  }

  else
  {
    v18 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasStopShareETAIntentRecipientUnsupportedReason])
  {
    v17 = 2654435761 * self->_stopShareETAIntentRecipientUnsupportedReason;
  }

  else
  {
    v17 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasSendMessageIntentRecipientUnsupportedReason])
  {
    v16 = 2654435761 * self->_sendMessageIntentRecipientUnsupportedReason;
  }

  else
  {
    v16 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasSendAnnouncementIntentRecipientsUnsupportedReason])
  {
    v15 = 2654435761 * self->_sendAnnouncementIntentRecipientsUnsupportedReason;
  }

  else
  {
    v15 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasSaveHealthSampleIntentRecordDateUnsupportedReason])
  {
    v3 = [(_INPBPayloadUnsupported *)self hasTargetEventUnsupportedReason];
  }

  else
  {
    v3 = [(_INPBPayloadUnsupported *)self hasTargetEventUnsupportedReason];
  }

  if (v3)
  {
    v4 = 2654435761 * self->_targetEventUnsupportedReason;
  }

  else
  {
    v4 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasAddTasksIntentTargetTaskListMembersUnsupportedReason])
  {
    v5 = 2654435761 * self->_addTasksIntentTargetTaskListMembersUnsupportedReason;
  }

  else
  {
    v5 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasSetTimerAttributeIntentTargetTimerUnsupportedReason])
  {
    v6 = 2654435761 * self->_setTimerAttributeIntentTargetTimerUnsupportedReason;
  }

  else
  {
    v6 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasDeleteTasksIntentTaskListUnsupportedReason])
  {
    v7 = 2654435761 * self->_deleteTasksIntentTaskListUnsupportedReason;
  }

  else
  {
    v7 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasDeleteTasksIntentTaskUnsupportedReason])
  {
    v8 = 2654435761 * self->_deleteTasksIntentTaskUnsupportedReason;
  }

  else
  {
    v8 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasSnoozeTasksIntentTaskUnsupportedReason])
  {
    v9 = 2654435761 * self->_snoozeTasksIntentTaskUnsupportedReason;
  }

  else
  {
    v9 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasAddTasksIntentTemporalEventTriggerUnsupportedReason])
  {
    v10 = 2654435761 * self->_addTasksIntentTemporalEventTriggerUnsupportedReason;
  }

  else
  {
    v10 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasSetTaskAttributeIntentTemporalEventTriggerUnsupportedReason])
  {
    v11 = 2654435761 * self->_setTaskAttributeIntentTemporalEventTriggerUnsupportedReason;
  }

  else
  {
    v11 = 0;
  }

  if ([(_INPBPayloadUnsupported *)self hasRunWorkflowIntentWorkflowUnsupportedReason])
  {
    v12 = 2654435761 * self->_runWorkflowIntentWorkflowUnsupportedReason;
  }

  else
  {
    v12 = 0;
  }

  return v49 ^ v50 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v42 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v14 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_189;
  }

  v5 = [(_INPBPayloadUnsupported *)self hasUpdateAlarmIntentAlarmUnsupportedReason];
  if (v5 != [v4 hasUpdateAlarmIntentAlarmUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasUpdateAlarmIntentAlarmUnsupportedReason])
  {
    if ([v4 hasUpdateAlarmIntentAlarmUnsupportedReason])
    {
      updateAlarmIntentAlarmUnsupportedReason = self->_updateAlarmIntentAlarmUnsupportedReason;
      if (updateAlarmIntentAlarmUnsupportedReason != [v4 updateAlarmIntentAlarmUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v7 = [(_INPBPayloadUnsupported *)self hasChangeAlarmStatusIntentAlarmsUnsupportedReason];
  if (v7 != [v4 hasChangeAlarmStatusIntentAlarmsUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasChangeAlarmStatusIntentAlarmsUnsupportedReason])
  {
    if ([v4 hasChangeAlarmStatusIntentAlarmsUnsupportedReason])
    {
      changeAlarmStatusIntentAlarmsUnsupportedReason = self->_changeAlarmStatusIntentAlarmsUnsupportedReason;
      if (changeAlarmStatusIntentAlarmsUnsupportedReason != [v4 changeAlarmStatusIntentAlarmsUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v9 = [(_INPBPayloadUnsupported *)self hasDeleteAlarmIntentAlarmsUnsupportedReason];
  if (v9 != [v4 hasDeleteAlarmIntentAlarmsUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasDeleteAlarmIntentAlarmsUnsupportedReason])
  {
    if ([v4 hasDeleteAlarmIntentAlarmsUnsupportedReason])
    {
      deleteAlarmIntentAlarmsUnsupportedReason = self->_deleteAlarmIntentAlarmsUnsupportedReason;
      if (deleteAlarmIntentAlarmsUnsupportedReason != [v4 deleteAlarmIntentAlarmsUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v11 = [(_INPBPayloadUnsupported *)self hasSearchAlarmIntentAlarmsUnsupportedReason];
  if (v11 != [v4 hasSearchAlarmIntentAlarmsUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasSearchAlarmIntentAlarmsUnsupportedReason])
  {
    if ([v4 hasSearchAlarmIntentAlarmsUnsupportedReason])
    {
      searchAlarmIntentAlarmsUnsupportedReason = self->_searchAlarmIntentAlarmsUnsupportedReason;
      if (searchAlarmIntentAlarmsUnsupportedReason != [v4 searchAlarmIntentAlarmsUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v13 = [(_INPBPayloadUnsupported *)self hasSnoozeAlarmIntentAlarmsUnsupportedReason];
  if (v13 != [v4 hasSnoozeAlarmIntentAlarmsUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasSnoozeAlarmIntentAlarmsUnsupportedReason])
  {
    if ([v4 hasSnoozeAlarmIntentAlarmsUnsupportedReason])
    {
      snoozeAlarmIntentAlarmsUnsupportedReason = self->_snoozeAlarmIntentAlarmsUnsupportedReason;
      if (snoozeAlarmIntentAlarmsUnsupportedReason != [v4 snoozeAlarmIntentAlarmsUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v15 = [(_INPBPayloadUnsupported *)self hasSendAnnouncementIntentAnnouncementUnsupportedReason];
  if (v15 != [v4 hasSendAnnouncementIntentAnnouncementUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasSendAnnouncementIntentAnnouncementUnsupportedReason])
  {
    if ([v4 hasSendAnnouncementIntentAnnouncementUnsupportedReason])
    {
      sendAnnouncementIntentAnnouncementUnsupportedReason = self->_sendAnnouncementIntentAnnouncementUnsupportedReason;
      if (sendAnnouncementIntentAnnouncementUnsupportedReason != [v4 sendAnnouncementIntentAnnouncementUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v17 = [(_INPBPayloadUnsupported *)self hasStartCallIntentCallCapabilityUnsupportedReason];
  if (v17 != [v4 hasStartCallIntentCallCapabilityUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasStartCallIntentCallCapabilityUnsupportedReason])
  {
    if ([v4 hasStartCallIntentCallCapabilityUnsupportedReason])
    {
      startCallIntentCallCapabilityUnsupportedReason = self->_startCallIntentCallCapabilityUnsupportedReason;
      if (startCallIntentCallCapabilityUnsupportedReason != [v4 startCallIntentCallCapabilityUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v19 = [(_INPBPayloadUnsupported *)self hasStartCallIntentCallRecordToCallBackUnsupportedReason];
  if (v19 != [v4 hasStartCallIntentCallRecordToCallBackUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasStartCallIntentCallRecordToCallBackUnsupportedReason])
  {
    if ([v4 hasStartCallIntentCallRecordToCallBackUnsupportedReason])
    {
      startCallIntentCallRecordToCallBackUnsupportedReason = self->_startCallIntentCallRecordToCallBackUnsupportedReason;
      if (startCallIntentCallRecordToCallBackUnsupportedReason != [v4 startCallIntentCallRecordToCallBackUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v21 = [(_INPBPayloadUnsupported *)self conflictingParameters];
  v22 = [v4 conflictingParameters];
  v23 = v22;
  if ((v21 != 0) == (v22 == 0))
  {

LABEL_189:
    v103 = 0;
    goto LABEL_190;
  }

  v24 = [(_INPBPayloadUnsupported *)self conflictingParameters];
  if (v24)
  {
    v25 = v24;
    v26 = [(_INPBPayloadUnsupported *)self conflictingParameters];
    v27 = [v4 conflictingParameters];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_189;
    }
  }

  else
  {
  }

  v29 = [(_INPBPayloadUnsupported *)self hasAddTasksIntentContactEventTriggerUnsupportedReason];
  if (v29 != [v4 hasAddTasksIntentContactEventTriggerUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasAddTasksIntentContactEventTriggerUnsupportedReason])
  {
    if ([v4 hasAddTasksIntentContactEventTriggerUnsupportedReason])
    {
      addTasksIntentContactEventTriggerUnsupportedReason = self->_addTasksIntentContactEventTriggerUnsupportedReason;
      if (addTasksIntentContactEventTriggerUnsupportedReason != [v4 addTasksIntentContactEventTriggerUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v31 = [(_INPBPayloadUnsupported *)self hasSetTaskAttributeIntentContactEventTriggerUnsupportedReason];
  if (v31 != [v4 hasSetTaskAttributeIntentContactEventTriggerUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasSetTaskAttributeIntentContactEventTriggerUnsupportedReason])
  {
    if ([v4 hasSetTaskAttributeIntentContactEventTriggerUnsupportedReason])
    {
      setTaskAttributeIntentContactEventTriggerUnsupportedReason = self->_setTaskAttributeIntentContactEventTriggerUnsupportedReason;
      if (setTaskAttributeIntentContactEventTriggerUnsupportedReason != [v4 setTaskAttributeIntentContactEventTriggerUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v33 = [(_INPBPayloadUnsupported *)self hasStartCallIntentContactsUnsupportedReason];
  if (v33 != [v4 hasStartCallIntentContactsUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasStartCallIntentContactsUnsupportedReason])
  {
    if ([v4 hasStartCallIntentContactsUnsupportedReason])
    {
      startCallIntentContactsUnsupportedReason = self->_startCallIntentContactsUnsupportedReason;
      if (startCallIntentContactsUnsupportedReason != [v4 startCallIntentContactsUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v35 = [(_INPBPayloadUnsupported *)self hasRequestPaymentIntentCurrencyAmountUnsupportedReason];
  if (v35 != [v4 hasRequestPaymentIntentCurrencyAmountUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasRequestPaymentIntentCurrencyAmountUnsupportedReason])
  {
    if ([v4 hasRequestPaymentIntentCurrencyAmountUnsupportedReason])
    {
      requestPaymentIntentCurrencyAmountUnsupportedReason = self->_requestPaymentIntentCurrencyAmountUnsupportedReason;
      if (requestPaymentIntentCurrencyAmountUnsupportedReason != [v4 requestPaymentIntentCurrencyAmountUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v37 = [(_INPBPayloadUnsupported *)self hasSendPaymentIntentCurrencyAmountUnsupportedReason];
  if (v37 != [v4 hasSendPaymentIntentCurrencyAmountUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasSendPaymentIntentCurrencyAmountUnsupportedReason])
  {
    if ([v4 hasSendPaymentIntentCurrencyAmountUnsupportedReason])
    {
      sendPaymentIntentCurrencyAmountUnsupportedReason = self->_sendPaymentIntentCurrencyAmountUnsupportedReason;
      if (sendPaymentIntentCurrencyAmountUnsupportedReason != [v4 sendPaymentIntentCurrencyAmountUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v39 = [(_INPBPayloadUnsupported *)self hasCustomUnsupportedReason];
  if (v39 != [v4 hasCustomUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasCustomUnsupportedReason])
  {
    if ([v4 hasCustomUnsupportedReason])
    {
      customUnsupportedReason = self->_customUnsupportedReason;
      if (customUnsupportedReason != [v4 customUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v41 = [(_INPBPayloadUnsupported *)self hasDateTimeRangeUnsupportedReason];
  if (v41 != [v4 hasDateTimeRangeUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasDateTimeRangeUnsupportedReason])
  {
    if ([v4 hasDateTimeRangeUnsupportedReason])
    {
      dateTimeRangeUnsupportedReason = self->_dateTimeRangeUnsupportedReason;
      if (dateTimeRangeUnsupportedReason != [v4 dateTimeRangeUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v43 = [(_INPBPayloadUnsupported *)self hasFindDeviceAndPlaySoundIntentDeviceUnsupportedReason];
  if (v43 != [v4 hasFindDeviceAndPlaySoundIntentDeviceUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasFindDeviceAndPlaySoundIntentDeviceUnsupportedReason])
  {
    if ([v4 hasFindDeviceAndPlaySoundIntentDeviceUnsupportedReason])
    {
      findDeviceAndPlaySoundIntentDeviceUnsupportedReason = self->_findDeviceAndPlaySoundIntentDeviceUnsupportedReason;
      if (findDeviceAndPlaySoundIntentDeviceUnsupportedReason != [v4 findDeviceAndPlaySoundIntentDeviceUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v45 = [(_INPBPayloadUnsupported *)self hasJoinCallIntentGroupConversationUnsupportedReason];
  if (v45 != [v4 hasJoinCallIntentGroupConversationUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasJoinCallIntentGroupConversationUnsupportedReason])
  {
    if ([v4 hasJoinCallIntentGroupConversationUnsupportedReason])
    {
      joinCallIntentGroupConversationUnsupportedReason = self->_joinCallIntentGroupConversationUnsupportedReason;
      if (joinCallIntentGroupConversationUnsupportedReason != [v4 joinCallIntentGroupConversationUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v47 = [(_INPBPayloadUnsupported *)self hasReportIncidentIntentIncidentTypeUnsupportedReason];
  if (v47 != [v4 hasReportIncidentIntentIncidentTypeUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasReportIncidentIntentIncidentTypeUnsupportedReason])
  {
    if ([v4 hasReportIncidentIntentIncidentTypeUnsupportedReason])
    {
      reportIncidentIntentIncidentTypeUnsupportedReason = self->_reportIncidentIntentIncidentTypeUnsupportedReason;
      if (reportIncidentIntentIncidentTypeUnsupportedReason != [v4 reportIncidentIntentIncidentTypeUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v49 = [(_INPBPayloadUnsupported *)self hasCreateTimerIntentLabelUnsupportedReason];
  if (v49 != [v4 hasCreateTimerIntentLabelUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasCreateTimerIntentLabelUnsupportedReason])
  {
    if ([v4 hasCreateTimerIntentLabelUnsupportedReason])
    {
      createTimerIntentLabelUnsupportedReason = self->_createTimerIntentLabelUnsupportedReason;
      if (createTimerIntentLabelUnsupportedReason != [v4 createTimerIntentLabelUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v51 = [(_INPBPayloadUnsupported *)self hasAddMediaIntentMediaDestinationUnsupportedReason];
  if (v51 != [v4 hasAddMediaIntentMediaDestinationUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasAddMediaIntentMediaDestinationUnsupportedReason])
  {
    if ([v4 hasAddMediaIntentMediaDestinationUnsupportedReason])
    {
      addMediaIntentMediaDestinationUnsupportedReason = self->_addMediaIntentMediaDestinationUnsupportedReason;
      if (addMediaIntentMediaDestinationUnsupportedReason != [v4 addMediaIntentMediaDestinationUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v53 = [(_INPBPayloadUnsupported *)self hasAddMediaIntentMediaItemsUnsupportedReason];
  if (v53 != [v4 hasAddMediaIntentMediaItemsUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasAddMediaIntentMediaItemsUnsupportedReason])
  {
    if ([v4 hasAddMediaIntentMediaItemsUnsupportedReason])
    {
      addMediaIntentMediaItemsUnsupportedReason = self->_addMediaIntentMediaItemsUnsupportedReason;
      if (addMediaIntentMediaItemsUnsupportedReason != [v4 addMediaIntentMediaItemsUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v55 = [(_INPBPayloadUnsupported *)self hasPlayMediaIntentMediaItemsUnsupportedReason];
  if (v55 != [v4 hasPlayMediaIntentMediaItemsUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasPlayMediaIntentMediaItemsUnsupportedReason])
  {
    if ([v4 hasPlayMediaIntentMediaItemsUnsupportedReason])
    {
      playMediaIntentMediaItemsUnsupportedReason = self->_playMediaIntentMediaItemsUnsupportedReason;
      if (playMediaIntentMediaItemsUnsupportedReason != [v4 playMediaIntentMediaItemsUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v57 = [(_INPBPayloadUnsupported *)self hasSearchForMediaIntentMediaItemsUnsupportedReason];
  if (v57 != [v4 hasSearchForMediaIntentMediaItemsUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasSearchForMediaIntentMediaItemsUnsupportedReason])
  {
    if ([v4 hasSearchForMediaIntentMediaItemsUnsupportedReason])
    {
      searchForMediaIntentMediaItemsUnsupportedReason = self->_searchForMediaIntentMediaItemsUnsupportedReason;
      if (searchForMediaIntentMediaItemsUnsupportedReason != [v4 searchForMediaIntentMediaItemsUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v59 = [(_INPBPayloadUnsupported *)self hasUpdateMediaAffinityIntentMediaItemsUnsupportedReason];
  if (v59 != [v4 hasUpdateMediaAffinityIntentMediaItemsUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasUpdateMediaAffinityIntentMediaItemsUnsupportedReason])
  {
    if ([v4 hasUpdateMediaAffinityIntentMediaItemsUnsupportedReason])
    {
      updateMediaAffinityIntentMediaItemsUnsupportedReason = self->_updateMediaAffinityIntentMediaItemsUnsupportedReason;
      if (updateMediaAffinityIntentMediaItemsUnsupportedReason != [v4 updateMediaAffinityIntentMediaItemsUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v61 = [(_INPBPayloadUnsupported *)self hasParticipantUnsupportedReason];
  if (v61 != [v4 hasParticipantUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasParticipantUnsupportedReason])
  {
    if ([v4 hasParticipantUnsupportedReason])
    {
      participantUnsupportedReason = self->_participantUnsupportedReason;
      if (participantUnsupportedReason != [v4 participantUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v63 = [(_INPBPayloadUnsupported *)self hasAddCallParticipantIntentParticipantsUnsupportedReason];
  if (v63 != [v4 hasAddCallParticipantIntentParticipantsUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasAddCallParticipantIntentParticipantsUnsupportedReason])
  {
    if ([v4 hasAddCallParticipantIntentParticipantsUnsupportedReason])
    {
      addCallParticipantIntentParticipantsUnsupportedReason = self->_addCallParticipantIntentParticipantsUnsupportedReason;
      if (addCallParticipantIntentParticipantsUnsupportedReason != [v4 addCallParticipantIntentParticipantsUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v65 = [(_INPBPayloadUnsupported *)self hasSendPaymentIntentPayeeUnsupportedReason];
  if (v65 != [v4 hasSendPaymentIntentPayeeUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasSendPaymentIntentPayeeUnsupportedReason])
  {
    if ([v4 hasSendPaymentIntentPayeeUnsupportedReason])
    {
      sendPaymentIntentPayeeUnsupportedReason = self->_sendPaymentIntentPayeeUnsupportedReason;
      if (sendPaymentIntentPayeeUnsupportedReason != [v4 sendPaymentIntentPayeeUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v67 = [(_INPBPayloadUnsupported *)self hasRequestPaymentIntentPayerUnsupportedReason];
  if (v67 != [v4 hasRequestPaymentIntentPayerUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasRequestPaymentIntentPayerUnsupportedReason])
  {
    if ([v4 hasRequestPaymentIntentPayerUnsupportedReason])
    {
      requestPaymentIntentPayerUnsupportedReason = self->_requestPaymentIntentPayerUnsupportedReason;
      if (requestPaymentIntentPayerUnsupportedReason != [v4 requestPaymentIntentPayerUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v69 = [(_INPBPayloadUnsupported *)self hasPlayMediaIntentPlaybackSpeedUnsupportedReason];
  if (v69 != [v4 hasPlayMediaIntentPlaybackSpeedUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasPlayMediaIntentPlaybackSpeedUnsupportedReason])
  {
    if ([v4 hasPlayMediaIntentPlaybackSpeedUnsupportedReason])
    {
      playMediaIntentPlaybackSpeedUnsupportedReason = self->_playMediaIntentPlaybackSpeedUnsupportedReason;
      if (playMediaIntentPlaybackSpeedUnsupportedReason != [v4 playMediaIntentPlaybackSpeedUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v71 = [(_INPBPayloadUnsupported *)self hasStartCallIntentPreferredCallProviderUnsupportedReason];
  if (v71 != [v4 hasStartCallIntentPreferredCallProviderUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasStartCallIntentPreferredCallProviderUnsupportedReason])
  {
    if ([v4 hasStartCallIntentPreferredCallProviderUnsupportedReason])
    {
      startCallIntentPreferredCallProviderUnsupportedReason = self->_startCallIntentPreferredCallProviderUnsupportedReason;
      if (startCallIntentPreferredCallProviderUnsupportedReason != [v4 startCallIntentPreferredCallProviderUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v73 = [(_INPBPayloadUnsupported *)self hasReason];
  if (v73 != [v4 hasReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasReason])
  {
    if ([v4 hasReason])
    {
      reason = self->_reason;
      if (reason != [v4 reason])
      {
        goto LABEL_189;
      }
    }
  }

  v75 = [(_INPBPayloadUnsupported *)self hasShareETAIntentRecipientUnsupportedReason];
  if (v75 != [v4 hasShareETAIntentRecipientUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasShareETAIntentRecipientUnsupportedReason])
  {
    if ([v4 hasShareETAIntentRecipientUnsupportedReason])
    {
      shareETAIntentRecipientUnsupportedReason = self->_shareETAIntentRecipientUnsupportedReason;
      if (shareETAIntentRecipientUnsupportedReason != [v4 shareETAIntentRecipientUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v77 = [(_INPBPayloadUnsupported *)self hasStopShareETAIntentRecipientUnsupportedReason];
  if (v77 != [v4 hasStopShareETAIntentRecipientUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasStopShareETAIntentRecipientUnsupportedReason])
  {
    if ([v4 hasStopShareETAIntentRecipientUnsupportedReason])
    {
      stopShareETAIntentRecipientUnsupportedReason = self->_stopShareETAIntentRecipientUnsupportedReason;
      if (stopShareETAIntentRecipientUnsupportedReason != [v4 stopShareETAIntentRecipientUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v79 = [(_INPBPayloadUnsupported *)self hasSendMessageIntentRecipientUnsupportedReason];
  if (v79 != [v4 hasSendMessageIntentRecipientUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasSendMessageIntentRecipientUnsupportedReason])
  {
    if ([v4 hasSendMessageIntentRecipientUnsupportedReason])
    {
      sendMessageIntentRecipientUnsupportedReason = self->_sendMessageIntentRecipientUnsupportedReason;
      if (sendMessageIntentRecipientUnsupportedReason != [v4 sendMessageIntentRecipientUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v81 = [(_INPBPayloadUnsupported *)self hasSendAnnouncementIntentRecipientsUnsupportedReason];
  if (v81 != [v4 hasSendAnnouncementIntentRecipientsUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasSendAnnouncementIntentRecipientsUnsupportedReason])
  {
    if ([v4 hasSendAnnouncementIntentRecipientsUnsupportedReason])
    {
      sendAnnouncementIntentRecipientsUnsupportedReason = self->_sendAnnouncementIntentRecipientsUnsupportedReason;
      if (sendAnnouncementIntentRecipientsUnsupportedReason != [v4 sendAnnouncementIntentRecipientsUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v83 = [(_INPBPayloadUnsupported *)self hasSaveHealthSampleIntentRecordDateUnsupportedReason];
  if (v83 != [v4 hasSaveHealthSampleIntentRecordDateUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasSaveHealthSampleIntentRecordDateUnsupportedReason])
  {
    if ([v4 hasSaveHealthSampleIntentRecordDateUnsupportedReason])
    {
      saveHealthSampleIntentRecordDateUnsupportedReason = self->_saveHealthSampleIntentRecordDateUnsupportedReason;
      if (saveHealthSampleIntentRecordDateUnsupportedReason != [v4 saveHealthSampleIntentRecordDateUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v85 = [(_INPBPayloadUnsupported *)self hasTargetEventUnsupportedReason];
  if (v85 != [v4 hasTargetEventUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasTargetEventUnsupportedReason])
  {
    if ([v4 hasTargetEventUnsupportedReason])
    {
      targetEventUnsupportedReason = self->_targetEventUnsupportedReason;
      if (targetEventUnsupportedReason != [v4 targetEventUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v87 = [(_INPBPayloadUnsupported *)self hasAddTasksIntentTargetTaskListMembersUnsupportedReason];
  if (v87 != [v4 hasAddTasksIntentTargetTaskListMembersUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasAddTasksIntentTargetTaskListMembersUnsupportedReason])
  {
    if ([v4 hasAddTasksIntentTargetTaskListMembersUnsupportedReason])
    {
      addTasksIntentTargetTaskListMembersUnsupportedReason = self->_addTasksIntentTargetTaskListMembersUnsupportedReason;
      if (addTasksIntentTargetTaskListMembersUnsupportedReason != [v4 addTasksIntentTargetTaskListMembersUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v89 = [(_INPBPayloadUnsupported *)self hasSetTimerAttributeIntentTargetTimerUnsupportedReason];
  if (v89 != [v4 hasSetTimerAttributeIntentTargetTimerUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasSetTimerAttributeIntentTargetTimerUnsupportedReason])
  {
    if ([v4 hasSetTimerAttributeIntentTargetTimerUnsupportedReason])
    {
      setTimerAttributeIntentTargetTimerUnsupportedReason = self->_setTimerAttributeIntentTargetTimerUnsupportedReason;
      if (setTimerAttributeIntentTargetTimerUnsupportedReason != [v4 setTimerAttributeIntentTargetTimerUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v91 = [(_INPBPayloadUnsupported *)self hasDeleteTasksIntentTaskListUnsupportedReason];
  if (v91 != [v4 hasDeleteTasksIntentTaskListUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasDeleteTasksIntentTaskListUnsupportedReason])
  {
    if ([v4 hasDeleteTasksIntentTaskListUnsupportedReason])
    {
      deleteTasksIntentTaskListUnsupportedReason = self->_deleteTasksIntentTaskListUnsupportedReason;
      if (deleteTasksIntentTaskListUnsupportedReason != [v4 deleteTasksIntentTaskListUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v93 = [(_INPBPayloadUnsupported *)self hasDeleteTasksIntentTaskUnsupportedReason];
  if (v93 != [v4 hasDeleteTasksIntentTaskUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasDeleteTasksIntentTaskUnsupportedReason])
  {
    if ([v4 hasDeleteTasksIntentTaskUnsupportedReason])
    {
      deleteTasksIntentTaskUnsupportedReason = self->_deleteTasksIntentTaskUnsupportedReason;
      if (deleteTasksIntentTaskUnsupportedReason != [v4 deleteTasksIntentTaskUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v95 = [(_INPBPayloadUnsupported *)self hasSnoozeTasksIntentTaskUnsupportedReason];
  if (v95 != [v4 hasSnoozeTasksIntentTaskUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasSnoozeTasksIntentTaskUnsupportedReason])
  {
    if ([v4 hasSnoozeTasksIntentTaskUnsupportedReason])
    {
      snoozeTasksIntentTaskUnsupportedReason = self->_snoozeTasksIntentTaskUnsupportedReason;
      if (snoozeTasksIntentTaskUnsupportedReason != [v4 snoozeTasksIntentTaskUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v97 = [(_INPBPayloadUnsupported *)self hasAddTasksIntentTemporalEventTriggerUnsupportedReason];
  if (v97 != [v4 hasAddTasksIntentTemporalEventTriggerUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasAddTasksIntentTemporalEventTriggerUnsupportedReason])
  {
    if ([v4 hasAddTasksIntentTemporalEventTriggerUnsupportedReason])
    {
      addTasksIntentTemporalEventTriggerUnsupportedReason = self->_addTasksIntentTemporalEventTriggerUnsupportedReason;
      if (addTasksIntentTemporalEventTriggerUnsupportedReason != [v4 addTasksIntentTemporalEventTriggerUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v99 = [(_INPBPayloadUnsupported *)self hasSetTaskAttributeIntentTemporalEventTriggerUnsupportedReason];
  if (v99 != [v4 hasSetTaskAttributeIntentTemporalEventTriggerUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasSetTaskAttributeIntentTemporalEventTriggerUnsupportedReason])
  {
    if ([v4 hasSetTaskAttributeIntentTemporalEventTriggerUnsupportedReason])
    {
      setTaskAttributeIntentTemporalEventTriggerUnsupportedReason = self->_setTaskAttributeIntentTemporalEventTriggerUnsupportedReason;
      if (setTaskAttributeIntentTemporalEventTriggerUnsupportedReason != [v4 setTaskAttributeIntentTemporalEventTriggerUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v101 = [(_INPBPayloadUnsupported *)self hasRunWorkflowIntentWorkflowUnsupportedReason];
  if (v101 != [v4 hasRunWorkflowIntentWorkflowUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasRunWorkflowIntentWorkflowUnsupportedReason])
  {
    if ([v4 hasRunWorkflowIntentWorkflowUnsupportedReason])
    {
      runWorkflowIntentWorkflowUnsupportedReason = self->_runWorkflowIntentWorkflowUnsupportedReason;
      if (runWorkflowIntentWorkflowUnsupportedReason != [v4 runWorkflowIntentWorkflowUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v103 = 1;
LABEL_190:

  return v103;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBPayloadUnsupported allocWithZone:](_INPBPayloadUnsupported init];
  if ([(_INPBPayloadUnsupported *)self hasUpdateAlarmIntentAlarmUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setUpdateAlarmIntentAlarmUnsupportedReason:[(_INPBPayloadUnsupported *)self updateAlarmIntentAlarmUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasChangeAlarmStatusIntentAlarmsUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setChangeAlarmStatusIntentAlarmsUnsupportedReason:[(_INPBPayloadUnsupported *)self changeAlarmStatusIntentAlarmsUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasDeleteAlarmIntentAlarmsUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setDeleteAlarmIntentAlarmsUnsupportedReason:[(_INPBPayloadUnsupported *)self deleteAlarmIntentAlarmsUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasSearchAlarmIntentAlarmsUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setSearchAlarmIntentAlarmsUnsupportedReason:[(_INPBPayloadUnsupported *)self searchAlarmIntentAlarmsUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasSnoozeAlarmIntentAlarmsUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setSnoozeAlarmIntentAlarmsUnsupportedReason:[(_INPBPayloadUnsupported *)self snoozeAlarmIntentAlarmsUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasSendAnnouncementIntentAnnouncementUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setSendAnnouncementIntentAnnouncementUnsupportedReason:[(_INPBPayloadUnsupported *)self sendAnnouncementIntentAnnouncementUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasStartCallIntentCallCapabilityUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setStartCallIntentCallCapabilityUnsupportedReason:[(_INPBPayloadUnsupported *)self startCallIntentCallCapabilityUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasStartCallIntentCallRecordToCallBackUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setStartCallIntentCallRecordToCallBackUnsupportedReason:[(_INPBPayloadUnsupported *)self startCallIntentCallRecordToCallBackUnsupportedReason]];
  }

  v6 = [(NSArray *)self->_conflictingParameters copyWithZone:a3];
  [(_INPBPayloadUnsupported *)v5 setConflictingParameters:v6];

  if ([(_INPBPayloadUnsupported *)self hasAddTasksIntentContactEventTriggerUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setAddTasksIntentContactEventTriggerUnsupportedReason:[(_INPBPayloadUnsupported *)self addTasksIntentContactEventTriggerUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasSetTaskAttributeIntentContactEventTriggerUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setSetTaskAttributeIntentContactEventTriggerUnsupportedReason:[(_INPBPayloadUnsupported *)self setTaskAttributeIntentContactEventTriggerUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasStartCallIntentContactsUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setStartCallIntentContactsUnsupportedReason:[(_INPBPayloadUnsupported *)self startCallIntentContactsUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasRequestPaymentIntentCurrencyAmountUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setRequestPaymentIntentCurrencyAmountUnsupportedReason:[(_INPBPayloadUnsupported *)self requestPaymentIntentCurrencyAmountUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasSendPaymentIntentCurrencyAmountUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setSendPaymentIntentCurrencyAmountUnsupportedReason:[(_INPBPayloadUnsupported *)self sendPaymentIntentCurrencyAmountUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasCustomUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setCustomUnsupportedReason:[(_INPBPayloadUnsupported *)self customUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasDateTimeRangeUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setDateTimeRangeUnsupportedReason:[(_INPBPayloadUnsupported *)self dateTimeRangeUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasFindDeviceAndPlaySoundIntentDeviceUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setFindDeviceAndPlaySoundIntentDeviceUnsupportedReason:[(_INPBPayloadUnsupported *)self findDeviceAndPlaySoundIntentDeviceUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasJoinCallIntentGroupConversationUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setJoinCallIntentGroupConversationUnsupportedReason:[(_INPBPayloadUnsupported *)self joinCallIntentGroupConversationUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasReportIncidentIntentIncidentTypeUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setReportIncidentIntentIncidentTypeUnsupportedReason:[(_INPBPayloadUnsupported *)self reportIncidentIntentIncidentTypeUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasCreateTimerIntentLabelUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setCreateTimerIntentLabelUnsupportedReason:[(_INPBPayloadUnsupported *)self createTimerIntentLabelUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasAddMediaIntentMediaDestinationUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setAddMediaIntentMediaDestinationUnsupportedReason:[(_INPBPayloadUnsupported *)self addMediaIntentMediaDestinationUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasAddMediaIntentMediaItemsUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setAddMediaIntentMediaItemsUnsupportedReason:[(_INPBPayloadUnsupported *)self addMediaIntentMediaItemsUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasPlayMediaIntentMediaItemsUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setPlayMediaIntentMediaItemsUnsupportedReason:[(_INPBPayloadUnsupported *)self playMediaIntentMediaItemsUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasSearchForMediaIntentMediaItemsUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setSearchForMediaIntentMediaItemsUnsupportedReason:[(_INPBPayloadUnsupported *)self searchForMediaIntentMediaItemsUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasUpdateMediaAffinityIntentMediaItemsUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setUpdateMediaAffinityIntentMediaItemsUnsupportedReason:[(_INPBPayloadUnsupported *)self updateMediaAffinityIntentMediaItemsUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasParticipantUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setParticipantUnsupportedReason:[(_INPBPayloadUnsupported *)self participantUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasAddCallParticipantIntentParticipantsUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setAddCallParticipantIntentParticipantsUnsupportedReason:[(_INPBPayloadUnsupported *)self addCallParticipantIntentParticipantsUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasSendPaymentIntentPayeeUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setSendPaymentIntentPayeeUnsupportedReason:[(_INPBPayloadUnsupported *)self sendPaymentIntentPayeeUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasRequestPaymentIntentPayerUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setRequestPaymentIntentPayerUnsupportedReason:[(_INPBPayloadUnsupported *)self requestPaymentIntentPayerUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasPlayMediaIntentPlaybackSpeedUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setPlayMediaIntentPlaybackSpeedUnsupportedReason:[(_INPBPayloadUnsupported *)self playMediaIntentPlaybackSpeedUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasStartCallIntentPreferredCallProviderUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setStartCallIntentPreferredCallProviderUnsupportedReason:[(_INPBPayloadUnsupported *)self startCallIntentPreferredCallProviderUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasReason])
  {
    [(_INPBPayloadUnsupported *)v5 setReason:[(_INPBPayloadUnsupported *)self reason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasShareETAIntentRecipientUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setShareETAIntentRecipientUnsupportedReason:[(_INPBPayloadUnsupported *)self shareETAIntentRecipientUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasStopShareETAIntentRecipientUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setStopShareETAIntentRecipientUnsupportedReason:[(_INPBPayloadUnsupported *)self stopShareETAIntentRecipientUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasSendMessageIntentRecipientUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setSendMessageIntentRecipientUnsupportedReason:[(_INPBPayloadUnsupported *)self sendMessageIntentRecipientUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasSendAnnouncementIntentRecipientsUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setSendAnnouncementIntentRecipientsUnsupportedReason:[(_INPBPayloadUnsupported *)self sendAnnouncementIntentRecipientsUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasSaveHealthSampleIntentRecordDateUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setSaveHealthSampleIntentRecordDateUnsupportedReason:[(_INPBPayloadUnsupported *)self saveHealthSampleIntentRecordDateUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasTargetEventUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setTargetEventUnsupportedReason:[(_INPBPayloadUnsupported *)self targetEventUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasAddTasksIntentTargetTaskListMembersUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setAddTasksIntentTargetTaskListMembersUnsupportedReason:[(_INPBPayloadUnsupported *)self addTasksIntentTargetTaskListMembersUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasSetTimerAttributeIntentTargetTimerUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setSetTimerAttributeIntentTargetTimerUnsupportedReason:[(_INPBPayloadUnsupported *)self setTimerAttributeIntentTargetTimerUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasDeleteTasksIntentTaskListUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setDeleteTasksIntentTaskListUnsupportedReason:[(_INPBPayloadUnsupported *)self deleteTasksIntentTaskListUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasDeleteTasksIntentTaskUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setDeleteTasksIntentTaskUnsupportedReason:[(_INPBPayloadUnsupported *)self deleteTasksIntentTaskUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasSnoozeTasksIntentTaskUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setSnoozeTasksIntentTaskUnsupportedReason:[(_INPBPayloadUnsupported *)self snoozeTasksIntentTaskUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasAddTasksIntentTemporalEventTriggerUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setAddTasksIntentTemporalEventTriggerUnsupportedReason:[(_INPBPayloadUnsupported *)self addTasksIntentTemporalEventTriggerUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasSetTaskAttributeIntentTemporalEventTriggerUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setSetTaskAttributeIntentTemporalEventTriggerUnsupportedReason:[(_INPBPayloadUnsupported *)self setTaskAttributeIntentTemporalEventTriggerUnsupportedReason]];
  }

  if ([(_INPBPayloadUnsupported *)self hasRunWorkflowIntentWorkflowUnsupportedReason])
  {
    [(_INPBPayloadUnsupported *)v5 setRunWorkflowIntentWorkflowUnsupportedReason:[(_INPBPayloadUnsupported *)self runWorkflowIntentWorkflowUnsupportedReason]];
  }

  v7 = v5;

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBPayloadUnsupported *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBPayloadUnsupported)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBPayloadUnsupported *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_INPBPayloadUnsupported *)self hasUpdateAlarmIntentAlarmUnsupportedReason])
  {
    updateAlarmIntentAlarmUnsupportedReason = self->_updateAlarmIntentAlarmUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasChangeAlarmStatusIntentAlarmsUnsupportedReason])
  {
    changeAlarmStatusIntentAlarmsUnsupportedReason = self->_changeAlarmStatusIntentAlarmsUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasDeleteAlarmIntentAlarmsUnsupportedReason])
  {
    deleteAlarmIntentAlarmsUnsupportedReason = self->_deleteAlarmIntentAlarmsUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasSearchAlarmIntentAlarmsUnsupportedReason])
  {
    searchAlarmIntentAlarmsUnsupportedReason = self->_searchAlarmIntentAlarmsUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasSnoozeAlarmIntentAlarmsUnsupportedReason])
  {
    snoozeAlarmIntentAlarmsUnsupportedReason = self->_snoozeAlarmIntentAlarmsUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasSendAnnouncementIntentAnnouncementUnsupportedReason])
  {
    sendAnnouncementIntentAnnouncementUnsupportedReason = self->_sendAnnouncementIntentAnnouncementUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasStartCallIntentCallCapabilityUnsupportedReason])
  {
    startCallIntentCallCapabilityUnsupportedReason = self->_startCallIntentCallCapabilityUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasStartCallIntentCallRecordToCallBackUnsupportedReason])
  {
    startCallIntentCallRecordToCallBackUnsupportedReason = self->_startCallIntentCallRecordToCallBackUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v13 = self->_conflictingParameters;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v58;
    do
    {
      v17 = 0;
      do
      {
        if (*v58 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v57 + 1) + 8 * v17);
        PBDataWriterWriteSubmessage();
        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v57 objects:v61 count:16];
    }

    while (v15);
  }

  if ([(_INPBPayloadUnsupported *)self hasAddTasksIntentContactEventTriggerUnsupportedReason])
  {
    addTasksIntentContactEventTriggerUnsupportedReason = self->_addTasksIntentContactEventTriggerUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasSetTaskAttributeIntentContactEventTriggerUnsupportedReason])
  {
    setTaskAttributeIntentContactEventTriggerUnsupportedReason = self->_setTaskAttributeIntentContactEventTriggerUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasStartCallIntentContactsUnsupportedReason])
  {
    startCallIntentContactsUnsupportedReason = self->_startCallIntentContactsUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasRequestPaymentIntentCurrencyAmountUnsupportedReason])
  {
    requestPaymentIntentCurrencyAmountUnsupportedReason = self->_requestPaymentIntentCurrencyAmountUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasSendPaymentIntentCurrencyAmountUnsupportedReason])
  {
    sendPaymentIntentCurrencyAmountUnsupportedReason = self->_sendPaymentIntentCurrencyAmountUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasCustomUnsupportedReason])
  {
    customUnsupportedReason = self->_customUnsupportedReason;
    PBDataWriterWriteUint32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasDateTimeRangeUnsupportedReason])
  {
    dateTimeRangeUnsupportedReason = self->_dateTimeRangeUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasFindDeviceAndPlaySoundIntentDeviceUnsupportedReason])
  {
    findDeviceAndPlaySoundIntentDeviceUnsupportedReason = self->_findDeviceAndPlaySoundIntentDeviceUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasJoinCallIntentGroupConversationUnsupportedReason])
  {
    joinCallIntentGroupConversationUnsupportedReason = self->_joinCallIntentGroupConversationUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasReportIncidentIntentIncidentTypeUnsupportedReason])
  {
    reportIncidentIntentIncidentTypeUnsupportedReason = self->_reportIncidentIntentIncidentTypeUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasCreateTimerIntentLabelUnsupportedReason])
  {
    createTimerIntentLabelUnsupportedReason = self->_createTimerIntentLabelUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasAddMediaIntentMediaDestinationUnsupportedReason])
  {
    addMediaIntentMediaDestinationUnsupportedReason = self->_addMediaIntentMediaDestinationUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasAddMediaIntentMediaItemsUnsupportedReason])
  {
    addMediaIntentMediaItemsUnsupportedReason = self->_addMediaIntentMediaItemsUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasPlayMediaIntentMediaItemsUnsupportedReason])
  {
    playMediaIntentMediaItemsUnsupportedReason = self->_playMediaIntentMediaItemsUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasSearchForMediaIntentMediaItemsUnsupportedReason])
  {
    searchForMediaIntentMediaItemsUnsupportedReason = self->_searchForMediaIntentMediaItemsUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasUpdateMediaAffinityIntentMediaItemsUnsupportedReason])
  {
    updateMediaAffinityIntentMediaItemsUnsupportedReason = self->_updateMediaAffinityIntentMediaItemsUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasParticipantUnsupportedReason])
  {
    participantUnsupportedReason = self->_participantUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasAddCallParticipantIntentParticipantsUnsupportedReason])
  {
    addCallParticipantIntentParticipantsUnsupportedReason = self->_addCallParticipantIntentParticipantsUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasSendPaymentIntentPayeeUnsupportedReason])
  {
    sendPaymentIntentPayeeUnsupportedReason = self->_sendPaymentIntentPayeeUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasRequestPaymentIntentPayerUnsupportedReason])
  {
    requestPaymentIntentPayerUnsupportedReason = self->_requestPaymentIntentPayerUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasPlayMediaIntentPlaybackSpeedUnsupportedReason])
  {
    playMediaIntentPlaybackSpeedUnsupportedReason = self->_playMediaIntentPlaybackSpeedUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasStartCallIntentPreferredCallProviderUnsupportedReason])
  {
    startCallIntentPreferredCallProviderUnsupportedReason = self->_startCallIntentPreferredCallProviderUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasReason])
  {
    reason = self->_reason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasShareETAIntentRecipientUnsupportedReason])
  {
    shareETAIntentRecipientUnsupportedReason = self->_shareETAIntentRecipientUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasStopShareETAIntentRecipientUnsupportedReason])
  {
    stopShareETAIntentRecipientUnsupportedReason = self->_stopShareETAIntentRecipientUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasSendMessageIntentRecipientUnsupportedReason])
  {
    sendMessageIntentRecipientUnsupportedReason = self->_sendMessageIntentRecipientUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasSendAnnouncementIntentRecipientsUnsupportedReason])
  {
    sendAnnouncementIntentRecipientsUnsupportedReason = self->_sendAnnouncementIntentRecipientsUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasSaveHealthSampleIntentRecordDateUnsupportedReason])
  {
    saveHealthSampleIntentRecordDateUnsupportedReason = self->_saveHealthSampleIntentRecordDateUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasTargetEventUnsupportedReason])
  {
    targetEventUnsupportedReason = self->_targetEventUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasAddTasksIntentTargetTaskListMembersUnsupportedReason])
  {
    addTasksIntentTargetTaskListMembersUnsupportedReason = self->_addTasksIntentTargetTaskListMembersUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasSetTimerAttributeIntentTargetTimerUnsupportedReason])
  {
    setTimerAttributeIntentTargetTimerUnsupportedReason = self->_setTimerAttributeIntentTargetTimerUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasDeleteTasksIntentTaskListUnsupportedReason])
  {
    deleteTasksIntentTaskListUnsupportedReason = self->_deleteTasksIntentTaskListUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasDeleteTasksIntentTaskUnsupportedReason])
  {
    deleteTasksIntentTaskUnsupportedReason = self->_deleteTasksIntentTaskUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasSnoozeTasksIntentTaskUnsupportedReason])
  {
    snoozeTasksIntentTaskUnsupportedReason = self->_snoozeTasksIntentTaskUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasAddTasksIntentTemporalEventTriggerUnsupportedReason])
  {
    addTasksIntentTemporalEventTriggerUnsupportedReason = self->_addTasksIntentTemporalEventTriggerUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasSetTaskAttributeIntentTemporalEventTriggerUnsupportedReason])
  {
    setTaskAttributeIntentTemporalEventTriggerUnsupportedReason = self->_setTaskAttributeIntentTemporalEventTriggerUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPayloadUnsupported *)self hasRunWorkflowIntentWorkflowUnsupportedReason])
  {
    runWorkflowIntentWorkflowUnsupportedReason = self->_runWorkflowIntentWorkflowUnsupportedReason;
    PBDataWriterWriteInt32Field();
  }

  v56 = *MEMORY[0x1E69E9840];
}

- (int)StringAsRunWorkflowIntentWorkflowUnsupportedReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NOT_FOUND"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"NO_WORKFLOWS"];
  }

  return v4;
}

- (void)setHasRunWorkflowIntentWorkflowUnsupportedReason:(BOOL)a3
{
  v3 = 0x100000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFFFFFFFFFFLL | v3);
}

- (void)setRunWorkflowIntentWorkflowUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFEFFFFFFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x100000000000);
    self->_runWorkflowIntentWorkflowUnsupportedReason = a3;
  }
}

- (int)StringAsSetTaskAttributeIntentTemporalEventTriggerUnsupportedReason:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"TIME_IN_PAST"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"INVALID_RECURRENCE"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)setHasSetTaskAttributeIntentTemporalEventTriggerUnsupportedReason:(BOOL)a3
{
  v3 = 0x80000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3);
}

- (void)setSetTaskAttributeIntentTemporalEventTriggerUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFF7FFFFFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x80000000000);
    self->_setTaskAttributeIntentTemporalEventTriggerUnsupportedReason = a3;
  }
}

- (int)StringAsAddTasksIntentTemporalEventTriggerUnsupportedReason:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"TIME_IN_PAST"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"INVALID_RECURRENCE"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)setHasAddTasksIntentTemporalEventTriggerUnsupportedReason:(BOOL)a3
{
  v3 = 0x40000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3);
}

- (void)setAddTasksIntentTemporalEventTriggerUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFBFFFFFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x40000000000);
    self->_addTasksIntentTemporalEventTriggerUnsupportedReason = a3;
  }
}

- (void)setHasSnoozeTasksIntentTaskUnsupportedReason:(BOOL)a3
{
  v3 = 0x20000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3);
}

- (void)setSnoozeTasksIntentTaskUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFDFFFFFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x20000000000);
    self->_snoozeTasksIntentTaskUnsupportedReason = a3;
  }
}

- (int)StringAsDeleteTasksIntentTaskUnsupportedReason:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"NO_TASKS_FOUND"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"NO_TASKS_IN_APP"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)setHasDeleteTasksIntentTaskUnsupportedReason:(BOOL)a3
{
  v3 = 0x10000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)setDeleteTasksIntentTaskUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFEFFFFFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x10000000000);
    self->_deleteTasksIntentTaskUnsupportedReason = a3;
  }
}

- (void)setHasDeleteTasksIntentTaskListUnsupportedReason:(BOOL)a3
{
  v3 = 0x8000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (void)setDeleteTasksIntentTaskListUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFF7FFFFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x8000000000);
    self->_deleteTasksIntentTaskListUnsupportedReason = a3;
  }
}

- (int)StringAsSetTimerAttributeIntentTargetTimerUnsupportedReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NOT_FOUND"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"NO_TIMERS"];
  }

  return v4;
}

- (void)setHasSetTimerAttributeIntentTargetTimerUnsupportedReason:(BOOL)a3
{
  v3 = 0x4000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3);
}

- (void)setSetTimerAttributeIntentTargetTimerUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFBFFFFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x4000000000);
    self->_setTimerAttributeIntentTargetTimerUnsupportedReason = a3;
  }
}

- (void)setHasAddTasksIntentTargetTaskListMembersUnsupportedReason:(BOOL)a3
{
  v3 = 0x2000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3);
}

- (void)setAddTasksIntentTargetTaskListMembersUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFDFFFFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x2000000000);
    self->_addTasksIntentTargetTaskListMembersUnsupportedReason = a3;
  }
}

- (int)StringAsTargetEventUnsupportedReason:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"TARGET_EVENT_NOT_FOUND"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"TARGET_EVENT_NOT_CREATED_BY_USER"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)setHasTargetEventUnsupportedReason:(BOOL)a3
{
  v3 = 0x1000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setTargetEventUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFEFFFFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x1000000000);
    self->_targetEventUnsupportedReason = a3;
  }
}

- (int)StringAsSaveHealthSampleIntentRecordDateUnsupportedReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NO_FUTURE_DATETIME"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"NO_FUZZY_TIME"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"NO_FUZZY_DATE"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasSaveHealthSampleIntentRecordDateUnsupportedReason:(BOOL)a3
{
  v3 = 0x800000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setSaveHealthSampleIntentRecordDateUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFF7FFFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x800000000);
    self->_saveHealthSampleIntentRecordDateUnsupportedReason = a3;
  }
}

- (int)StringAsSendAnnouncementIntentRecipientsUnsupportedReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"TARGET_NOT_FOUND"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ANNOUNCING_TO_SELF"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SPEAKER_GROUPS_NOT_SUPPORTED"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"INTERCOM_DISABLED_ON_ALL_DEVICES"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasSendAnnouncementIntentRecipientsUnsupportedReason:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setSendAnnouncementIntentRecipientsUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFBFFFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x400000000);
    self->_sendAnnouncementIntentRecipientsUnsupportedReason = a3;
  }
}

- (int)StringAsSendMessageIntentRecipientUnsupportedReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NO_ACCOUNT"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"OFFLINE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MESSAGING_SERVICE_NOT_ENABLED_FOR_RECIPIENT"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"NO_VALID_HANDLE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"REQUESTED_HANDLE_INVALID"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"NO_HANDLE_FOR_LABEL"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SCREEN_TIME_RESTRICTION_ENABLED"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"NOT_A_MEMBER_OF_CONVERSATION"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"DOWN_TIME_RESTRICTION_ENABLED"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"REQUIRING_IN_APP_AUTHENTICATION"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"BLOCKED"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasSendMessageIntentRecipientUnsupportedReason:(BOOL)a3
{
  v3 = 0x200000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setSendMessageIntentRecipientUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFDFFFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x200000000);
    self->_sendMessageIntentRecipientUnsupportedReason = a3;
  }
}

- (int)StringAsStopShareETAIntentRecipientUnsupportedReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NO_RECIPIENTS"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"CONTACT_ID_MISSING"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CONTACT_NOT_FOUND"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CONTACT_HANDLE_MISSING"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CONTACT_SHARED_TRIP_FAILED"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasStopShareETAIntentRecipientUnsupportedReason:(BOOL)a3
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setStopShareETAIntentRecipientUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFEFFFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x100000000);
    self->_stopShareETAIntentRecipientUnsupportedReason = a3;
  }
}

- (int)StringAsShareETAIntentRecipientUnsupportedReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NO_RECIPIENTS"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"CONTACT_ID_MISSING"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CONTACT_NOT_FOUND"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CONTACT_HANDLE_MISSING"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CONTACT_SHARED_TRIP_FAILED"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasShareETAIntentRecipientUnsupportedReason:(BOOL)a3
{
  v3 = 0x80000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setShareETAIntentRecipientUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFF7FFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x80000000);
    self->_shareETAIntentRecipientUnsupportedReason = a3;
  }
}

- (int)StringAsReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"NotNow"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"NotHere"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ConflictWithOtherFields"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"UnsupportedReasonExtension"])
  {
    v4 = 1000;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasReason:(BOOL)a3
{
  v3 = 0x40000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFBFFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x40000000);
    self->_reason = a3;
  }
}

- (int)StringAsStartCallIntentPreferredCallProviderUnsupportedReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"TELEPHONY_UNSUPPORTED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CALL_PROVIDER_NOT_ACCESSIBLE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"EMERGENCY_CALL_PROVIDER_NOT_ACCESSIBLE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SETTINGS_RESTRICTED"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"ACCOUNT_SETUP_REQUIRED"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"PROVIDER_DISABLED_IN_SETTINGS"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasStartCallIntentPreferredCallProviderUnsupportedReason:(BOOL)a3
{
  v3 = 0x20000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setStartCallIntentPreferredCallProviderUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFDFFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x20000000);
    self->_startCallIntentPreferredCallProviderUnsupportedReason = a3;
  }
}

- (int)StringAsPlayMediaIntentPlaybackSpeedUnsupportedReason:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"BELOW_MINIMUM"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"ABOVE_MAXIMUM"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)setHasPlayMediaIntentPlaybackSpeedUnsupportedReason:(BOOL)a3
{
  v3 = 0x10000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setPlayMediaIntentPlaybackSpeedUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFEFFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x10000000);
    self->_playMediaIntentPlaybackSpeedUnsupportedReason = a3;
  }
}

- (int)StringAsRequestPaymentIntentPayerUnsupportedReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"CREDENTIALS_UNVERIFIED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"NO_ACCOUNT"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"NO_VALID_HANDLE"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasRequestPaymentIntentPayerUnsupportedReason:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setRequestPaymentIntentPayerUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFF7FFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x8000000);
    self->_requestPaymentIntentPayerUnsupportedReason = a3;
  }
}

- (int)StringAsSendPaymentIntentPayeeUnsupportedReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"CREDENTIALS_UNVERIFIED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"INSUFFICIENT_FUNDS"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"NO_ACCOUNT"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"NO_VALID_HANDLE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasSendPaymentIntentPayeeUnsupportedReason:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setSendPaymentIntentPayeeUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFBFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x4000000);
    self->_sendPaymentIntentPayeeUnsupportedReason = a3;
  }
}

- (int)StringAsAddCallParticipantIntentParticipantsUnsupportedReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NO_CONTACT_FOUND"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"MULTIPLE_CONTACTS_UNSUPPORTED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"NO_HANDLE_FOUND"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"INVALID_HANDLE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"LOCAL_EMERGENCY"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"FOREIGN_EMERGENCY"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasAddCallParticipantIntentParticipantsUnsupportedReason:(BOOL)a3
{
  v3 = 0x2000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setAddCallParticipantIntentParticipantsUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFDFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x2000000);
    self->_addCallParticipantIntentParticipantsUnsupportedReason = a3;
  }
}

- (int)StringAsParticipantUnsupportedReason:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"INVALID_PARTICIPANT"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"PARTICIPANT_NOT_FOUND"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)setHasParticipantUnsupportedReason:(BOOL)a3
{
  v3 = 0x1000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setParticipantUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFEFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x1000000);
    self->_participantUnsupportedReason = a3;
  }
}

- (int)StringAsUpdateMediaAffinityIntentMediaItemsUnsupportedReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"LOGIN_REQUIRED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SUBSCRIPTION_REQUIRED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"UNSUPPORTED_MEDIA_TYPE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"EXPLICIT_CONTENT_SETTINGS"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"CELLULAR_DATA_SETTINGS"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"RESTRICTED_CONTENT"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SERVICE_UNAVAILABLE"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"REGION_RESTRICTION"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"APP_NOT_CONFIGURED"])
  {
    v4 = 100;
  }

  else if ([v3 isEqualToString:@"APP_NOT_AVAILABLE"])
  {
    v4 = 101;
  }

  else if ([v3 isEqualToString:@"APP_ACCOUNT_FAILURE"])
  {
    v4 = 102;
  }

  else if ([v3 isEqualToString:@"APP_DOESNT_SUPPORT_INTENT"])
  {
    v4 = 103;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasUpdateMediaAffinityIntentMediaItemsUnsupportedReason:(BOOL)a3
{
  v3 = 0x800000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setUpdateMediaAffinityIntentMediaItemsUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFF7FFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x800000);
    self->_updateMediaAffinityIntentMediaItemsUnsupportedReason = a3;
  }
}

- (int)StringAsSearchForMediaIntentMediaItemsUnsupportedReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"LOGIN_REQUIRED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SUBSCRIPTION_REQUIRED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"UNSUPPORTED_MEDIA_TYPE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"EXPLICIT_CONTENT_SETTINGS"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"CELLULAR_DATA_SETTINGS"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"RESTRICTED_CONTENT"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SERVICE_UNAVAILABLE"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"REGION_RESTRICTION"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"APP_NOT_CONFIGURED"])
  {
    v4 = 100;
  }

  else if ([v3 isEqualToString:@"APP_NOT_AVAILABLE"])
  {
    v4 = 101;
  }

  else if ([v3 isEqualToString:@"APP_ACCOUNT_FAILURE"])
  {
    v4 = 102;
  }

  else if ([v3 isEqualToString:@"APP_DOESNT_SUPPORT_INTENT"])
  {
    v4 = 103;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasSearchForMediaIntentMediaItemsUnsupportedReason:(BOOL)a3
{
  v3 = 0x400000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setSearchForMediaIntentMediaItemsUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFBFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x400000);
    self->_searchForMediaIntentMediaItemsUnsupportedReason = a3;
  }
}

- (int)StringAsPlayMediaIntentMediaItemsUnsupportedReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"LOGIN_REQUIRED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SUBSCRIPTION_REQUIRED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"UNSUPPORTED_MEDIA_TYPE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"EXPLICIT_CONTENT_SETTINGS"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"CELLULAR_DATA_SETTINGS"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"RESTRICTED_CONTENT"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SERVICE_UNAVAILABLE"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"REGION_RESTRICTION"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"NOT_DOWNLOADED_FOR_OFFLINE"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"APP_NOT_CONFIGURED"])
  {
    v4 = 100;
  }

  else if ([v3 isEqualToString:@"APP_NOT_AVAILABLE"])
  {
    v4 = 101;
  }

  else if ([v3 isEqualToString:@"APP_ACCOUNT_FAILURE"])
  {
    v4 = 102;
  }

  else if ([v3 isEqualToString:@"APP_DOESNT_SUPPORT_INTENT"])
  {
    v4 = 103;
  }

  else if ([v3 isEqualToString:@"MS_LIMIT_REACHED"])
  {
    v4 = 104;
  }

  else if ([v3 isEqualToString:@"MEDIA_PLAYBACK_DISABLED"])
  {
    v4 = 105;
  }

  else if ([v3 isEqualToString:@"PLAYBACK_DEVICE_NOT_FOUND"])
  {
    v4 = 1000;
  }

  else if ([v3 isEqualToString:@"EMPTY_LIBRARY"])
  {
    v4 = 1001;
  }

  else if ([v3 isEqualToString:@"CREATE_RADIO_FAILED"])
  {
    v4 = 1002;
  }

  else if ([v3 isEqualToString:@"UNSUPPORTED_PLAYBACK_QUEUE_LOCATION"])
  {
    v4 = 1003;
  }

  else if ([v3 isEqualToString:@"UNSUPPORTED_PLAYBACK_QUEUE_LOCATION_WITH_LIVE_RADIO"])
  {
    v4 = 1004;
  }

  else if ([v3 isEqualToString:@"STILL_LOADING_CLOUD_LIBRARY"])
  {
    v4 = 1005;
  }

  else if ([v3 isEqualToString:@"ITUNES_ACCOUNT_ERROR"])
  {
    v4 = 1006;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasPlayMediaIntentMediaItemsUnsupportedReason:(BOOL)a3
{
  v3 = 0x200000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setPlayMediaIntentMediaItemsUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFDFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x200000);
    self->_playMediaIntentMediaItemsUnsupportedReason = a3;
  }
}

- (int)StringAsAddMediaIntentMediaItemsUnsupportedReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"LOGIN_REQUIRED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SUBSCRIPTION_REQUIRED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"UNSUPPORTED_MEDIA_TYPE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"EXPLICIT_CONTENT_SETTINGS"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"CELLULAR_DATA_SETTINGS"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"RESTRICTED_CONTENT"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SERVICE_UNAVAILABLE"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"REGION_RESTRICTION"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"APP_NOT_CONFIGURED"])
  {
    v4 = 100;
  }

  else if ([v3 isEqualToString:@"APP_NOT_AVAILABLE"])
  {
    v4 = 101;
  }

  else if ([v3 isEqualToString:@"APP_ACCOUNT_FAILURE"])
  {
    v4 = 102;
  }

  else if ([v3 isEqualToString:@"APP_DOESNT_SUPPORT_INTENT"])
  {
    v4 = 103;
  }

  else if ([v3 isEqualToString:@"ALREADY_IN_LIBRARY"])
  {
    v4 = 104;
  }

  else if ([v3 isEqualToString:@"CLOUD_SYNC_OFF"])
  {
    v4 = 105;
  }

  else if ([v3 isEqualToString:@"GET_NOWPLAYING_FAILURE"])
  {
    v4 = 106;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasAddMediaIntentMediaItemsUnsupportedReason:(BOOL)a3
{
  v3 = 0x100000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setAddMediaIntentMediaItemsUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFEFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x100000);
    self->_addMediaIntentMediaItemsUnsupportedReason = a3;
  }
}

- (int)StringAsAddMediaIntentMediaDestinationUnsupportedReason:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"PLAYLIST_NAME_NOT_FOUND"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"PLAYLIST_NOT_EDITABLE"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)setHasAddMediaIntentMediaDestinationUnsupportedReason:(BOOL)a3
{
  v3 = 0x80000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setAddMediaIntentMediaDestinationUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFF7FFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x80000);
    self->_addMediaIntentMediaDestinationUnsupportedReason = a3;
  }
}

- (void)setHasCreateTimerIntentLabelUnsupportedReason:(BOOL)a3
{
  v3 = 0x40000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setCreateTimerIntentLabelUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFBFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x40000);
    self->_createTimerIntentLabelUnsupportedReason = a3;
  }
}

- (int)StringAsReportIncidentIntentIncidentTypeUnsupportedReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNSUPPORTED"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"UNSUPPORTED_INCIDENT_TYPE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"UNSUPPORTED_REGION"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MAPS_LOCATION_DISABLED"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"UNKNOWN_INCIDENT_TYPE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasReportIncidentIntentIncidentTypeUnsupportedReason:(BOOL)a3
{
  v3 = 0x20000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setReportIncidentIntentIncidentTypeUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFDFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x20000);
    self->_reportIncidentIntentIncidentTypeUnsupportedReason = a3;
  }
}

- (int)StringAsJoinCallIntentGroupConversationUnsupportedReason:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"NO_ACTIVE_NOTIFICATIONS"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"NO_MATCHING_NOTIFICATIONS"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)setHasJoinCallIntentGroupConversationUnsupportedReason:(BOOL)a3
{
  v3 = 0x10000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setJoinCallIntentGroupConversationUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFEFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x10000);
    self->_joinCallIntentGroupConversationUnsupportedReason = a3;
  }
}

- (int)StringAsFindDeviceAndPlaySoundIntentDeviceUnsupportedReason:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"UNKNOWN"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"SERVICE_UNAVAILABLE"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)setHasFindDeviceAndPlaySoundIntentDeviceUnsupportedReason:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setFindDeviceAndPlaySoundIntentDeviceUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFF7FFFLL);
  }

  else
  {
    self->_has = (*&has | 0x8000);
    self->_findDeviceAndPlaySoundIntentDeviceUnsupportedReason = a3;
  }
}

- (void)setHasDateTimeRangeUnsupportedReason:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setDateTimeRangeUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFFBFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x4000);
    self->_dateTimeRangeUnsupportedReason = a3;
  }
}

- (void)setHasCustomUnsupportedReason:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (int)StringAsSendPaymentIntentCurrencyAmountUnsupportedReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PAYMENTS_AMOUNT_BELOW_MINIMUM"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PAYMENTS_AMOUNT_ABOVE_MAXIMUM"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"PAYMENTS_CURRENCY_UNSUPPORTED"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasSendPaymentIntentCurrencyAmountUnsupportedReason:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setSendPaymentIntentCurrencyAmountUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFFEFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x1000);
    self->_sendPaymentIntentCurrencyAmountUnsupportedReason = a3;
  }
}

- (int)StringAsRequestPaymentIntentCurrencyAmountUnsupportedReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PAYMENTS_AMOUNT_BELOW_MINIMUM"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PAYMENTS_AMOUNT_ABOVE_MAXIMUM"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"PAYMENTS_CURRENCY_UNSUPPORTED"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasRequestPaymentIntentCurrencyAmountUnsupportedReason:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setRequestPaymentIntentCurrencyAmountUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFFF7FFLL);
  }

  else
  {
    self->_has = (*&has | 0x800);
    self->_requestPaymentIntentCurrencyAmountUnsupportedReason = a3;
  }
}

- (int)StringAsStartCallIntentContactsUnsupportedReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NO_CONTACT_FOUND"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"MULTIPLE_CONTACTS_UNSUPPORTED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"NO_HANDLE_FOR_LABEL"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"INVALID_HANDLE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"UNSUPPORTED_MMI_USSD"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"NO_CALL_HISTORY_FOR_REDIAL"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"NO_USABLE_HANDLE_FOR_REDIAL"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"FOREIGN_EMERGENCY_DISAMBIGUATION"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"REQUIRING_IN_APP_AUTHENTICATION"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasStartCallIntentContactsUnsupportedReason:(BOOL)a3
{
  v3 = 1024;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setStartCallIntentContactsUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFFFBFFLL);
  }

  else
  {
    self->_has = (*&has | 0x400);
    self->_startCallIntentContactsUnsupportedReason = a3;
  }
}

- (int)StringAsSetTaskAttributeIntentContactEventTriggerUnsupportedReason:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"ACCOUNT_DOES_NOT_SUPPORT"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"CLOUDKIT_NOT_UPGRADED"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)setHasSetTaskAttributeIntentContactEventTriggerUnsupportedReason:(BOOL)a3
{
  v3 = 512;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setSetTaskAttributeIntentContactEventTriggerUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFFFDFFLL);
  }

  else
  {
    self->_has = (*&has | 0x200);
    self->_setTaskAttributeIntentContactEventTriggerUnsupportedReason = a3;
  }
}

- (int)StringAsAddTasksIntentContactEventTriggerUnsupportedReason:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"ACCOUNT_DOES_NOT_SUPPORT"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"CLOUDKIT_NOT_UPGRADED"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)setHasAddTasksIntentContactEventTriggerUnsupportedReason:(BOOL)a3
{
  v3 = 256;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setAddTasksIntentContactEventTriggerUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFFFEFFLL);
  }

  else
  {
    self->_has = (*&has | 0x100);
    self->_addTasksIntentContactEventTriggerUnsupportedReason = a3;
  }
}

- (void)addConflictingParameters:(id)a3
{
  v4 = a3;
  conflictingParameters = self->_conflictingParameters;
  v8 = v4;
  if (!conflictingParameters)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_conflictingParameters;
    self->_conflictingParameters = v6;

    v4 = v8;
    conflictingParameters = self->_conflictingParameters;
  }

  [(NSArray *)conflictingParameters addObject:v4];
}

- (void)setConflictingParameters:(id)a3
{
  v4 = [a3 mutableCopy];
  conflictingParameters = self->_conflictingParameters;
  self->_conflictingParameters = v4;

  MEMORY[0x1EEE66BB8](v4, conflictingParameters);
}

- (void)setHasStartCallIntentCallRecordToCallBackUnsupportedReason:(BOOL)a3
{
  v3 = 128;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setStartCallIntentCallRecordToCallBackUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFFFF7FLL);
  }

  else
  {
    self->_has = (*&has | 0x80);
    self->_startCallIntentCallRecordToCallBackUnsupportedReason = a3;
  }
}

- (int)StringAsStartCallIntentCallCapabilityUnsupportedReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"VIDEO_CALL_UNSUPPORTED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"MICROPHONE_NOT_ACCESSIBLE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CAMERA_NOT_ACCESSIBLE"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasStartCallIntentCallCapabilityUnsupportedReason:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setStartCallIntentCallCapabilityUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFFFFBFLL);
  }

  else
  {
    self->_has = (*&has | 0x40);
    self->_startCallIntentCallCapabilityUnsupportedReason = a3;
  }
}

- (void)setHasSendAnnouncementIntentAnnouncementUnsupportedReason:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setSendAnnouncementIntentAnnouncementUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFFFFDFLL);
  }

  else
  {
    self->_has = (*&has | 0x20);
    self->_sendAnnouncementIntentAnnouncementUnsupportedReason = a3;
  }
}

- (int)StringAsSnoozeAlarmIntentAlarmsUnsupportedReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NO_ALARM_FIRING"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"CANT_SNOOZE_MUSIC_ALARM"];
  }

  return v4;
}

- (void)setHasSnoozeAlarmIntentAlarmsUnsupportedReason:(BOOL)a3
{
  v3 = 16;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setSnoozeAlarmIntentAlarmsUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFFFFEFLL);
  }

  else
  {
    self->_has = (*&has | 0x10);
    self->_snoozeAlarmIntentAlarmsUnsupportedReason = a3;
  }
}

- (int)StringAsSearchAlarmIntentAlarmsUnsupportedReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NOT_FOUND"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"NO_ALARM_EXISTS"];
  }

  return v4;
}

- (void)setHasSearchAlarmIntentAlarmsUnsupportedReason:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setSearchAlarmIntentAlarmsUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFFFFF7);
  }

  else
  {
    self->_has = (*&has | 8);
    self->_searchAlarmIntentAlarmsUnsupportedReason = a3;
  }
}

- (int)StringAsDeleteAlarmIntentAlarmsUnsupportedReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NOT_FOUND"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"NO_ALARM_EXISTS"];
  }

  return v4;
}

- (void)setHasDeleteAlarmIntentAlarmsUnsupportedReason:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setDeleteAlarmIntentAlarmsUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFFFFFBLL);
  }

  else
  {
    self->_has = (*&has | 4);
    self->_deleteAlarmIntentAlarmsUnsupportedReason = a3;
  }
}

- (int)StringAsChangeAlarmStatusIntentAlarmsUnsupportedReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NOT_FOUND"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NO_ALARM_EXISTS"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ALARM_ALREADY_ENABLED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ALARM_ALREADY_DISABLED"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ALARM_NOT_FIRING"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SLEEP_ALARM_NOT_SUPPORTED"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasChangeAlarmStatusIntentAlarmsUnsupportedReason:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setChangeAlarmStatusIntentAlarmsUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFFFFFDLL);
  }

  else
  {
    self->_has = (*&has | 2);
    self->_changeAlarmStatusIntentAlarmsUnsupportedReason = a3;
  }
}

- (int)StringAsUpdateAlarmIntentAlarmUnsupportedReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NOT_FOUND"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NO_ALARM_EXISTS"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SLEEP_ALARM_NOT_SUPPORTED"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setUpdateAlarmIntentAlarmUnsupportedReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    self->_has = (*&has | 1);
    self->_updateAlarmIntentAlarmUnsupportedReason = a3;
  }
}

@end