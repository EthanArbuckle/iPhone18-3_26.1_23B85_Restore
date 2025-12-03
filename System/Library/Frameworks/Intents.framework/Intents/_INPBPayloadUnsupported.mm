@interface _INPBPayloadUnsupported
- (BOOL)isEqual:(id)equal;
- (_INPBPayloadUnsupported)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsAddCallParticipantIntentParticipantsUnsupportedReason:(id)reason;
- (int)StringAsAddMediaIntentMediaDestinationUnsupportedReason:(id)reason;
- (int)StringAsAddMediaIntentMediaItemsUnsupportedReason:(id)reason;
- (int)StringAsAddTasksIntentContactEventTriggerUnsupportedReason:(id)reason;
- (int)StringAsAddTasksIntentTemporalEventTriggerUnsupportedReason:(id)reason;
- (int)StringAsChangeAlarmStatusIntentAlarmsUnsupportedReason:(id)reason;
- (int)StringAsDeleteAlarmIntentAlarmsUnsupportedReason:(id)reason;
- (int)StringAsDeleteTasksIntentTaskUnsupportedReason:(id)reason;
- (int)StringAsFindDeviceAndPlaySoundIntentDeviceUnsupportedReason:(id)reason;
- (int)StringAsJoinCallIntentGroupConversationUnsupportedReason:(id)reason;
- (int)StringAsParticipantUnsupportedReason:(id)reason;
- (int)StringAsPlayMediaIntentMediaItemsUnsupportedReason:(id)reason;
- (int)StringAsPlayMediaIntentPlaybackSpeedUnsupportedReason:(id)reason;
- (int)StringAsReason:(id)reason;
- (int)StringAsReportIncidentIntentIncidentTypeUnsupportedReason:(id)reason;
- (int)StringAsRequestPaymentIntentCurrencyAmountUnsupportedReason:(id)reason;
- (int)StringAsRequestPaymentIntentPayerUnsupportedReason:(id)reason;
- (int)StringAsRunWorkflowIntentWorkflowUnsupportedReason:(id)reason;
- (int)StringAsSaveHealthSampleIntentRecordDateUnsupportedReason:(id)reason;
- (int)StringAsSearchAlarmIntentAlarmsUnsupportedReason:(id)reason;
- (int)StringAsSearchForMediaIntentMediaItemsUnsupportedReason:(id)reason;
- (int)StringAsSendAnnouncementIntentRecipientsUnsupportedReason:(id)reason;
- (int)StringAsSendMessageIntentRecipientUnsupportedReason:(id)reason;
- (int)StringAsSendPaymentIntentCurrencyAmountUnsupportedReason:(id)reason;
- (int)StringAsSendPaymentIntentPayeeUnsupportedReason:(id)reason;
- (int)StringAsSetTaskAttributeIntentContactEventTriggerUnsupportedReason:(id)reason;
- (int)StringAsSetTaskAttributeIntentTemporalEventTriggerUnsupportedReason:(id)reason;
- (int)StringAsSetTimerAttributeIntentTargetTimerUnsupportedReason:(id)reason;
- (int)StringAsShareETAIntentRecipientUnsupportedReason:(id)reason;
- (int)StringAsSnoozeAlarmIntentAlarmsUnsupportedReason:(id)reason;
- (int)StringAsStartCallIntentCallCapabilityUnsupportedReason:(id)reason;
- (int)StringAsStartCallIntentContactsUnsupportedReason:(id)reason;
- (int)StringAsStartCallIntentPreferredCallProviderUnsupportedReason:(id)reason;
- (int)StringAsStopShareETAIntentRecipientUnsupportedReason:(id)reason;
- (int)StringAsTargetEventUnsupportedReason:(id)reason;
- (int)StringAsUpdateAlarmIntentAlarmUnsupportedReason:(id)reason;
- (int)StringAsUpdateMediaAffinityIntentMediaItemsUnsupportedReason:(id)reason;
- (unint64_t)hash;
- (void)addConflictingParameters:(id)parameters;
- (void)encodeWithCoder:(id)coder;
- (void)setAddCallParticipantIntentParticipantsUnsupportedReason:(int)reason;
- (void)setAddMediaIntentMediaDestinationUnsupportedReason:(int)reason;
- (void)setAddMediaIntentMediaItemsUnsupportedReason:(int)reason;
- (void)setAddTasksIntentContactEventTriggerUnsupportedReason:(int)reason;
- (void)setAddTasksIntentTargetTaskListMembersUnsupportedReason:(int)reason;
- (void)setAddTasksIntentTemporalEventTriggerUnsupportedReason:(int)reason;
- (void)setChangeAlarmStatusIntentAlarmsUnsupportedReason:(int)reason;
- (void)setConflictingParameters:(id)parameters;
- (void)setCreateTimerIntentLabelUnsupportedReason:(int)reason;
- (void)setDateTimeRangeUnsupportedReason:(int)reason;
- (void)setDeleteAlarmIntentAlarmsUnsupportedReason:(int)reason;
- (void)setDeleteTasksIntentTaskListUnsupportedReason:(int)reason;
- (void)setDeleteTasksIntentTaskUnsupportedReason:(int)reason;
- (void)setFindDeviceAndPlaySoundIntentDeviceUnsupportedReason:(int)reason;
- (void)setHasAddCallParticipantIntentParticipantsUnsupportedReason:(BOOL)reason;
- (void)setHasAddMediaIntentMediaDestinationUnsupportedReason:(BOOL)reason;
- (void)setHasAddMediaIntentMediaItemsUnsupportedReason:(BOOL)reason;
- (void)setHasAddTasksIntentContactEventTriggerUnsupportedReason:(BOOL)reason;
- (void)setHasAddTasksIntentTargetTaskListMembersUnsupportedReason:(BOOL)reason;
- (void)setHasAddTasksIntentTemporalEventTriggerUnsupportedReason:(BOOL)reason;
- (void)setHasChangeAlarmStatusIntentAlarmsUnsupportedReason:(BOOL)reason;
- (void)setHasCreateTimerIntentLabelUnsupportedReason:(BOOL)reason;
- (void)setHasCustomUnsupportedReason:(BOOL)reason;
- (void)setHasDateTimeRangeUnsupportedReason:(BOOL)reason;
- (void)setHasDeleteAlarmIntentAlarmsUnsupportedReason:(BOOL)reason;
- (void)setHasDeleteTasksIntentTaskListUnsupportedReason:(BOOL)reason;
- (void)setHasDeleteTasksIntentTaskUnsupportedReason:(BOOL)reason;
- (void)setHasFindDeviceAndPlaySoundIntentDeviceUnsupportedReason:(BOOL)reason;
- (void)setHasJoinCallIntentGroupConversationUnsupportedReason:(BOOL)reason;
- (void)setHasParticipantUnsupportedReason:(BOOL)reason;
- (void)setHasPlayMediaIntentMediaItemsUnsupportedReason:(BOOL)reason;
- (void)setHasPlayMediaIntentPlaybackSpeedUnsupportedReason:(BOOL)reason;
- (void)setHasReason:(BOOL)reason;
- (void)setHasReportIncidentIntentIncidentTypeUnsupportedReason:(BOOL)reason;
- (void)setHasRequestPaymentIntentCurrencyAmountUnsupportedReason:(BOOL)reason;
- (void)setHasRequestPaymentIntentPayerUnsupportedReason:(BOOL)reason;
- (void)setHasRunWorkflowIntentWorkflowUnsupportedReason:(BOOL)reason;
- (void)setHasSaveHealthSampleIntentRecordDateUnsupportedReason:(BOOL)reason;
- (void)setHasSearchAlarmIntentAlarmsUnsupportedReason:(BOOL)reason;
- (void)setHasSearchForMediaIntentMediaItemsUnsupportedReason:(BOOL)reason;
- (void)setHasSendAnnouncementIntentAnnouncementUnsupportedReason:(BOOL)reason;
- (void)setHasSendAnnouncementIntentRecipientsUnsupportedReason:(BOOL)reason;
- (void)setHasSendMessageIntentRecipientUnsupportedReason:(BOOL)reason;
- (void)setHasSendPaymentIntentCurrencyAmountUnsupportedReason:(BOOL)reason;
- (void)setHasSendPaymentIntentPayeeUnsupportedReason:(BOOL)reason;
- (void)setHasSetTaskAttributeIntentContactEventTriggerUnsupportedReason:(BOOL)reason;
- (void)setHasSetTaskAttributeIntentTemporalEventTriggerUnsupportedReason:(BOOL)reason;
- (void)setHasSetTimerAttributeIntentTargetTimerUnsupportedReason:(BOOL)reason;
- (void)setHasShareETAIntentRecipientUnsupportedReason:(BOOL)reason;
- (void)setHasSnoozeAlarmIntentAlarmsUnsupportedReason:(BOOL)reason;
- (void)setHasSnoozeTasksIntentTaskUnsupportedReason:(BOOL)reason;
- (void)setHasStartCallIntentCallCapabilityUnsupportedReason:(BOOL)reason;
- (void)setHasStartCallIntentCallRecordToCallBackUnsupportedReason:(BOOL)reason;
- (void)setHasStartCallIntentContactsUnsupportedReason:(BOOL)reason;
- (void)setHasStartCallIntentPreferredCallProviderUnsupportedReason:(BOOL)reason;
- (void)setHasStopShareETAIntentRecipientUnsupportedReason:(BOOL)reason;
- (void)setHasTargetEventUnsupportedReason:(BOOL)reason;
- (void)setHasUpdateMediaAffinityIntentMediaItemsUnsupportedReason:(BOOL)reason;
- (void)setJoinCallIntentGroupConversationUnsupportedReason:(int)reason;
- (void)setParticipantUnsupportedReason:(int)reason;
- (void)setPlayMediaIntentMediaItemsUnsupportedReason:(int)reason;
- (void)setPlayMediaIntentPlaybackSpeedUnsupportedReason:(int)reason;
- (void)setReason:(int)reason;
- (void)setReportIncidentIntentIncidentTypeUnsupportedReason:(int)reason;
- (void)setRequestPaymentIntentCurrencyAmountUnsupportedReason:(int)reason;
- (void)setRequestPaymentIntentPayerUnsupportedReason:(int)reason;
- (void)setRunWorkflowIntentWorkflowUnsupportedReason:(int)reason;
- (void)setSaveHealthSampleIntentRecordDateUnsupportedReason:(int)reason;
- (void)setSearchAlarmIntentAlarmsUnsupportedReason:(int)reason;
- (void)setSearchForMediaIntentMediaItemsUnsupportedReason:(int)reason;
- (void)setSendAnnouncementIntentAnnouncementUnsupportedReason:(int)reason;
- (void)setSendAnnouncementIntentRecipientsUnsupportedReason:(int)reason;
- (void)setSendMessageIntentRecipientUnsupportedReason:(int)reason;
- (void)setSendPaymentIntentCurrencyAmountUnsupportedReason:(int)reason;
- (void)setSendPaymentIntentPayeeUnsupportedReason:(int)reason;
- (void)setSetTaskAttributeIntentContactEventTriggerUnsupportedReason:(int)reason;
- (void)setSetTaskAttributeIntentTemporalEventTriggerUnsupportedReason:(int)reason;
- (void)setSetTimerAttributeIntentTargetTimerUnsupportedReason:(int)reason;
- (void)setShareETAIntentRecipientUnsupportedReason:(int)reason;
- (void)setSnoozeAlarmIntentAlarmsUnsupportedReason:(int)reason;
- (void)setSnoozeTasksIntentTaskUnsupportedReason:(int)reason;
- (void)setStartCallIntentCallCapabilityUnsupportedReason:(int)reason;
- (void)setStartCallIntentCallRecordToCallBackUnsupportedReason:(int)reason;
- (void)setStartCallIntentContactsUnsupportedReason:(int)reason;
- (void)setStartCallIntentPreferredCallProviderUnsupportedReason:(int)reason;
- (void)setStopShareETAIntentRecipientUnsupportedReason:(int)reason;
- (void)setTargetEventUnsupportedReason:(int)reason;
- (void)setUpdateAlarmIntentAlarmUnsupportedReason:(int)reason;
- (void)setUpdateMediaAffinityIntentMediaItemsUnsupportedReason:(int)reason;
- (void)writeTo:(id)to;
@end

@implementation _INPBPayloadUnsupported

- (id)dictionaryRepresentation
{
  v109 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBPayloadUnsupported *)self hasUpdateAlarmIntentAlarmUnsupportedReason])
  {
    updateAlarmIntentAlarmUnsupportedReason = [(_INPBPayloadUnsupported *)self updateAlarmIntentAlarmUnsupportedReason];
    if (updateAlarmIntentAlarmUnsupportedReason)
    {
      if (updateAlarmIntentAlarmUnsupportedReason == 3)
      {
        v5 = @"SLEEP_ALARM_NOT_SUPPORTED";
      }

      else if (updateAlarmIntentAlarmUnsupportedReason == 1)
      {
        v5 = @"NO_ALARM_EXISTS";
      }

      else
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", updateAlarmIntentAlarmUnsupportedReason];
      }
    }

    else
    {
      v5 = @"NOT_FOUND";
    }

    [dictionary setObject:v5 forKeyedSubscript:@"alarmUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasChangeAlarmStatusIntentAlarmsUnsupportedReason])
  {
    changeAlarmStatusIntentAlarmsUnsupportedReason = [(_INPBPayloadUnsupported *)self changeAlarmStatusIntentAlarmsUnsupportedReason];
    if (changeAlarmStatusIntentAlarmsUnsupportedReason >= 6)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", changeAlarmStatusIntentAlarmsUnsupportedReason];
    }

    else
    {
      v7 = off_1E7282430[changeAlarmStatusIntentAlarmsUnsupportedReason];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"alarmsUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasDeleteAlarmIntentAlarmsUnsupportedReason])
  {
    deleteAlarmIntentAlarmsUnsupportedReason = [(_INPBPayloadUnsupported *)self deleteAlarmIntentAlarmsUnsupportedReason];
    if (deleteAlarmIntentAlarmsUnsupportedReason)
    {
      if (deleteAlarmIntentAlarmsUnsupportedReason == 1)
      {
        v9 = @"NO_ALARM_EXISTS";
      }

      else
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", deleteAlarmIntentAlarmsUnsupportedReason];
      }
    }

    else
    {
      v9 = @"NOT_FOUND";
    }

    [dictionary setObject:v9 forKeyedSubscript:@"alarmsUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasSearchAlarmIntentAlarmsUnsupportedReason])
  {
    searchAlarmIntentAlarmsUnsupportedReason = [(_INPBPayloadUnsupported *)self searchAlarmIntentAlarmsUnsupportedReason];
    if (searchAlarmIntentAlarmsUnsupportedReason)
    {
      if (searchAlarmIntentAlarmsUnsupportedReason == 1)
      {
        v11 = @"NO_ALARM_EXISTS";
      }

      else
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", searchAlarmIntentAlarmsUnsupportedReason];
      }
    }

    else
    {
      v11 = @"NOT_FOUND";
    }

    [dictionary setObject:v11 forKeyedSubscript:@"alarmsUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasSnoozeAlarmIntentAlarmsUnsupportedReason])
  {
    snoozeAlarmIntentAlarmsUnsupportedReason = [(_INPBPayloadUnsupported *)self snoozeAlarmIntentAlarmsUnsupportedReason];
    if (snoozeAlarmIntentAlarmsUnsupportedReason)
    {
      if (snoozeAlarmIntentAlarmsUnsupportedReason == 1)
      {
        v13 = @"CANT_SNOOZE_MUSIC_ALARM";
      }

      else
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", snoozeAlarmIntentAlarmsUnsupportedReason];
      }
    }

    else
    {
      v13 = @"NO_ALARM_FIRING";
    }

    [dictionary setObject:v13 forKeyedSubscript:@"alarmsUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasSendAnnouncementIntentAnnouncementUnsupportedReason])
  {
    sendAnnouncementIntentAnnouncementUnsupportedReason = [(_INPBPayloadUnsupported *)self sendAnnouncementIntentAnnouncementUnsupportedReason];
    if (sendAnnouncementIntentAnnouncementUnsupportedReason == 1)
    {
      v15 = @"NO_ANNOUNCEMENT_TO_REPLY_TO";
    }

    else
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", sendAnnouncementIntentAnnouncementUnsupportedReason];
    }

    [dictionary setObject:v15 forKeyedSubscript:@"announcementUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasStartCallIntentCallCapabilityUnsupportedReason])
  {
    startCallIntentCallCapabilityUnsupportedReason = [(_INPBPayloadUnsupported *)self startCallIntentCallCapabilityUnsupportedReason];
    if ((startCallIntentCallCapabilityUnsupportedReason - 1) >= 3)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", startCallIntentCallCapabilityUnsupportedReason];
    }

    else
    {
      v17 = off_1E7282460[(startCallIntentCallCapabilityUnsupportedReason - 1)];
    }

    [dictionary setObject:v17 forKeyedSubscript:@"callCapabilityUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasStartCallIntentCallRecordToCallBackUnsupportedReason])
  {
    startCallIntentCallRecordToCallBackUnsupportedReason = [(_INPBPayloadUnsupported *)self startCallIntentCallRecordToCallBackUnsupportedReason];
    if (startCallIntentCallRecordToCallBackUnsupportedReason == 1)
    {
      v19 = @"NO_MATCHING_CALL";
    }

    else
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", startCallIntentCallRecordToCallBackUnsupportedReason];
    }

    [dictionary setObject:v19 forKeyedSubscript:@"callRecordToCallBackUnsupportedReason"];
  }

  if ([(NSArray *)self->_conflictingParameters count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v104 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v104 objects:v108 count:16];
      }

      while (v23);
    }

    [dictionary setObject:array forKeyedSubscript:@"conflictingParameters"];
  }

  if ([(_INPBPayloadUnsupported *)self hasAddTasksIntentContactEventTriggerUnsupportedReason])
  {
    addTasksIntentContactEventTriggerUnsupportedReason = [(_INPBPayloadUnsupported *)self addTasksIntentContactEventTriggerUnsupportedReason];
    if (addTasksIntentContactEventTriggerUnsupportedReason == 1)
    {
      v28 = @"ACCOUNT_DOES_NOT_SUPPORT";
    }

    else if (addTasksIntentContactEventTriggerUnsupportedReason == 2)
    {
      v28 = @"CLOUDKIT_NOT_UPGRADED";
    }

    else
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", addTasksIntentContactEventTriggerUnsupportedReason];
    }

    [dictionary setObject:v28 forKeyedSubscript:@"contactEventTriggerUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasSetTaskAttributeIntentContactEventTriggerUnsupportedReason])
  {
    setTaskAttributeIntentContactEventTriggerUnsupportedReason = [(_INPBPayloadUnsupported *)self setTaskAttributeIntentContactEventTriggerUnsupportedReason];
    if (setTaskAttributeIntentContactEventTriggerUnsupportedReason == 1)
    {
      v30 = @"ACCOUNT_DOES_NOT_SUPPORT";
    }

    else if (setTaskAttributeIntentContactEventTriggerUnsupportedReason == 2)
    {
      v30 = @"CLOUDKIT_NOT_UPGRADED";
    }

    else
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", setTaskAttributeIntentContactEventTriggerUnsupportedReason];
    }

    [dictionary setObject:v30 forKeyedSubscript:@"contactEventTriggerUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasStartCallIntentContactsUnsupportedReason])
  {
    startCallIntentContactsUnsupportedReason = [(_INPBPayloadUnsupported *)self startCallIntentContactsUnsupportedReason];
    v32 = startCallIntentContactsUnsupportedReason - 1;
    if (startCallIntentContactsUnsupportedReason - 1) < 0xA && ((0x2FFu >> v32))
    {
      v33 = off_1E7282478[v32];
    }

    else
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", startCallIntentContactsUnsupportedReason];
    }

    [dictionary setObject:v33 forKeyedSubscript:@"contactsUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasRequestPaymentIntentCurrencyAmountUnsupportedReason])
  {
    requestPaymentIntentCurrencyAmountUnsupportedReason = [(_INPBPayloadUnsupported *)self requestPaymentIntentCurrencyAmountUnsupportedReason];
    if ((requestPaymentIntentCurrencyAmountUnsupportedReason - 1) >= 3)
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", requestPaymentIntentCurrencyAmountUnsupportedReason];
    }

    else
    {
      v35 = off_1E72824C8[(requestPaymentIntentCurrencyAmountUnsupportedReason - 1)];
    }

    [dictionary setObject:v35 forKeyedSubscript:@"currencyAmountUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasSendPaymentIntentCurrencyAmountUnsupportedReason])
  {
    sendPaymentIntentCurrencyAmountUnsupportedReason = [(_INPBPayloadUnsupported *)self sendPaymentIntentCurrencyAmountUnsupportedReason];
    if ((sendPaymentIntentCurrencyAmountUnsupportedReason - 1) >= 3)
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", sendPaymentIntentCurrencyAmountUnsupportedReason];
    }

    else
    {
      v37 = off_1E72824C8[(sendPaymentIntentCurrencyAmountUnsupportedReason - 1)];
    }

    [dictionary setObject:v37 forKeyedSubscript:@"currencyAmountUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasCustomUnsupportedReason])
  {
    v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_INPBPayloadUnsupported customUnsupportedReason](self, "customUnsupportedReason")}];
    [dictionary setObject:v38 forKeyedSubscript:@"customUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasDateTimeRangeUnsupportedReason])
  {
    dateTimeRangeUnsupportedReason = [(_INPBPayloadUnsupported *)self dateTimeRangeUnsupportedReason];
    if (dateTimeRangeUnsupportedReason == 1)
    {
      v40 = @"PAST_DATE_TIME";
    }

    else
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", dateTimeRangeUnsupportedReason];
    }

    [dictionary setObject:v40 forKeyedSubscript:@"dateTimeRangeUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasFindDeviceAndPlaySoundIntentDeviceUnsupportedReason])
  {
    findDeviceAndPlaySoundIntentDeviceUnsupportedReason = [(_INPBPayloadUnsupported *)self findDeviceAndPlaySoundIntentDeviceUnsupportedReason];
    if (findDeviceAndPlaySoundIntentDeviceUnsupportedReason == 1)
    {
      v42 = @"UNKNOWN";
    }

    else if (findDeviceAndPlaySoundIntentDeviceUnsupportedReason == 2)
    {
      v42 = @"SERVICE_UNAVAILABLE";
    }

    else
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", findDeviceAndPlaySoundIntentDeviceUnsupportedReason];
    }

    [dictionary setObject:v42 forKeyedSubscript:@"deviceUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasJoinCallIntentGroupConversationUnsupportedReason])
  {
    joinCallIntentGroupConversationUnsupportedReason = [(_INPBPayloadUnsupported *)self joinCallIntentGroupConversationUnsupportedReason];
    if (joinCallIntentGroupConversationUnsupportedReason == 1)
    {
      v44 = @"NO_ACTIVE_NOTIFICATIONS";
    }

    else if (joinCallIntentGroupConversationUnsupportedReason == 2)
    {
      v44 = @"NO_MATCHING_NOTIFICATIONS";
    }

    else
    {
      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", joinCallIntentGroupConversationUnsupportedReason];
    }

    [dictionary setObject:v44 forKeyedSubscript:@"groupConversationUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasReportIncidentIntentIncidentTypeUnsupportedReason])
  {
    reportIncidentIntentIncidentTypeUnsupportedReason = [(_INPBPayloadUnsupported *)self reportIncidentIntentIncidentTypeUnsupportedReason];
    if (reportIncidentIntentIncidentTypeUnsupportedReason >= 5)
    {
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", reportIncidentIntentIncidentTypeUnsupportedReason];
    }

    else
    {
      v46 = off_1E72824E0[reportIncidentIntentIncidentTypeUnsupportedReason];
    }

    [dictionary setObject:v46 forKeyedSubscript:@"incidentTypeUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasCreateTimerIntentLabelUnsupportedReason])
  {
    createTimerIntentLabelUnsupportedReason = [(_INPBPayloadUnsupported *)self createTimerIntentLabelUnsupportedReason];
    if (createTimerIntentLabelUnsupportedReason)
    {
      v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", createTimerIntentLabelUnsupportedReason];
    }

    else
    {
      v48 = @"AMBIGUOUS_UNNAMED_TIMER";
    }

    [dictionary setObject:v48 forKeyedSubscript:@"labelUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasAddMediaIntentMediaDestinationUnsupportedReason])
  {
    addMediaIntentMediaDestinationUnsupportedReason = [(_INPBPayloadUnsupported *)self addMediaIntentMediaDestinationUnsupportedReason];
    if (addMediaIntentMediaDestinationUnsupportedReason == 1)
    {
      v50 = @"PLAYLIST_NAME_NOT_FOUND";
    }

    else if (addMediaIntentMediaDestinationUnsupportedReason == 2)
    {
      v50 = @"PLAYLIST_NOT_EDITABLE";
    }

    else
    {
      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", addMediaIntentMediaDestinationUnsupportedReason];
    }

    [dictionary setObject:v50 forKeyedSubscript:@"mediaDestinationUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasAddMediaIntentMediaItemsUnsupportedReason])
  {
    addMediaIntentMediaItemsUnsupportedReason = [(_INPBPayloadUnsupported *)self addMediaIntentMediaItemsUnsupportedReason];
    if (addMediaIntentMediaItemsUnsupportedReason <= 7)
    {
      if (addMediaIntentMediaItemsUnsupportedReason > 3)
      {
        if (addMediaIntentMediaItemsUnsupportedReason > 5)
        {
          if (addMediaIntentMediaItemsUnsupportedReason == 6)
          {
            v52 = @"RESTRICTED_CONTENT";
          }

          else
          {
            v52 = @"SERVICE_UNAVAILABLE";
          }
        }

        else if (addMediaIntentMediaItemsUnsupportedReason == 4)
        {
          v52 = @"EXPLICIT_CONTENT_SETTINGS";
        }

        else
        {
          v52 = @"CELLULAR_DATA_SETTINGS";
        }

        goto LABEL_162;
      }

      switch(addMediaIntentMediaItemsUnsupportedReason)
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

    else if (addMediaIntentMediaItemsUnsupportedReason > 102)
    {
      if (addMediaIntentMediaItemsUnsupportedReason <= 104)
      {
        if (addMediaIntentMediaItemsUnsupportedReason == 103)
        {
          v52 = @"APP_DOESNT_SUPPORT_INTENT";
        }

        else
        {
          v52 = @"ALREADY_IN_LIBRARY";
        }

        goto LABEL_162;
      }

      if (addMediaIntentMediaItemsUnsupportedReason == 105)
      {
        v52 = @"CLOUD_SYNC_OFF";
        goto LABEL_162;
      }

      if (addMediaIntentMediaItemsUnsupportedReason == 106)
      {
        v52 = @"GET_NOWPLAYING_FAILURE";
        goto LABEL_162;
      }
    }

    else
    {
      if (addMediaIntentMediaItemsUnsupportedReason > 100)
      {
        if (addMediaIntentMediaItemsUnsupportedReason == 101)
        {
          v52 = @"APP_NOT_AVAILABLE";
        }

        else
        {
          v52 = @"APP_ACCOUNT_FAILURE";
        }

        goto LABEL_162;
      }

      if (addMediaIntentMediaItemsUnsupportedReason == 8)
      {
        v52 = @"REGION_RESTRICTION";
        goto LABEL_162;
      }

      if (addMediaIntentMediaItemsUnsupportedReason == 100)
      {
        v52 = @"APP_NOT_CONFIGURED";
LABEL_162:
        [dictionary setObject:v52 forKeyedSubscript:@"mediaItemsUnsupportedReason"];

        goto LABEL_163;
      }
    }

    v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", addMediaIntentMediaItemsUnsupportedReason];
    goto LABEL_162;
  }

LABEL_163:
  if (![(_INPBPayloadUnsupported *)self hasPlayMediaIntentMediaItemsUnsupportedReason])
  {
    goto LABEL_213;
  }

  playMediaIntentMediaItemsUnsupportedReason = [(_INPBPayloadUnsupported *)self playMediaIntentMediaItemsUnsupportedReason];
  if (playMediaIntentMediaItemsUnsupportedReason <= 101)
  {
    if (playMediaIntentMediaItemsUnsupportedReason <= 5)
    {
      if (playMediaIntentMediaItemsUnsupportedReason > 2)
      {
        if (playMediaIntentMediaItemsUnsupportedReason == 3)
        {
          v54 = @"UNSUPPORTED_MEDIA_TYPE";
        }

        else if (playMediaIntentMediaItemsUnsupportedReason == 4)
        {
          v54 = @"EXPLICIT_CONTENT_SETTINGS";
        }

        else
        {
          v54 = @"CELLULAR_DATA_SETTINGS";
        }

        goto LABEL_212;
      }

      if (playMediaIntentMediaItemsUnsupportedReason == 1)
      {
        v54 = @"LOGIN_REQUIRED";
        goto LABEL_212;
      }

      if (playMediaIntentMediaItemsUnsupportedReason == 2)
      {
        v54 = @"SUBSCRIPTION_REQUIRED";
        goto LABEL_212;
      }
    }

    else
    {
      if (playMediaIntentMediaItemsUnsupportedReason <= 8)
      {
        if (playMediaIntentMediaItemsUnsupportedReason == 6)
        {
          v54 = @"RESTRICTED_CONTENT";
        }

        else if (playMediaIntentMediaItemsUnsupportedReason == 7)
        {
          v54 = @"SERVICE_UNAVAILABLE";
        }

        else
        {
          v54 = @"REGION_RESTRICTION";
        }

        goto LABEL_212;
      }

      switch(playMediaIntentMediaItemsUnsupportedReason)
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
    v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", playMediaIntentMediaItemsUnsupportedReason];
    goto LABEL_212;
  }

  if (playMediaIntentMediaItemsUnsupportedReason > 1000)
  {
    if (playMediaIntentMediaItemsUnsupportedReason <= 1003)
    {
      if (playMediaIntentMediaItemsUnsupportedReason == 1001)
      {
        v54 = @"EMPTY_LIBRARY";
      }

      else if (playMediaIntentMediaItemsUnsupportedReason == 1002)
      {
        v54 = @"CREATE_RADIO_FAILED";
      }

      else
      {
        v54 = @"UNSUPPORTED_PLAYBACK_QUEUE_LOCATION";
      }

      goto LABEL_212;
    }

    switch(playMediaIntentMediaItemsUnsupportedReason)
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

  if (playMediaIntentMediaItemsUnsupportedReason <= 103)
  {
    if (playMediaIntentMediaItemsUnsupportedReason == 102)
    {
      v54 = @"APP_ACCOUNT_FAILURE";
    }

    else
    {
      v54 = @"APP_DOESNT_SUPPORT_INTENT";
    }

    goto LABEL_212;
  }

  if (playMediaIntentMediaItemsUnsupportedReason == 104)
  {
    v54 = @"MS_LIMIT_REACHED";
    goto LABEL_212;
  }

  if (playMediaIntentMediaItemsUnsupportedReason == 105)
  {
    v54 = @"MEDIA_PLAYBACK_DISABLED";
    goto LABEL_212;
  }

  if (playMediaIntentMediaItemsUnsupportedReason != 1000)
  {
    goto LABEL_211;
  }

  v54 = @"PLAYBACK_DEVICE_NOT_FOUND";
LABEL_212:
  [dictionary setObject:v54 forKeyedSubscript:@"mediaItemsUnsupportedReason"];

LABEL_213:
  if (![(_INPBPayloadUnsupported *)self hasSearchForMediaIntentMediaItemsUnsupportedReason])
  {
    goto LABEL_242;
  }

  searchForMediaIntentMediaItemsUnsupportedReason = [(_INPBPayloadUnsupported *)self searchForMediaIntentMediaItemsUnsupportedReason];
  if (searchForMediaIntentMediaItemsUnsupportedReason > 6)
  {
    if (searchForMediaIntentMediaItemsUnsupportedReason > 100)
    {
      switch(searchForMediaIntentMediaItemsUnsupportedReason)
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
      switch(searchForMediaIntentMediaItemsUnsupportedReason)
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
    v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", searchForMediaIntentMediaItemsUnsupportedReason];
    goto LABEL_241;
  }

  if (searchForMediaIntentMediaItemsUnsupportedReason > 3)
  {
    if (searchForMediaIntentMediaItemsUnsupportedReason == 4)
    {
      v56 = @"EXPLICIT_CONTENT_SETTINGS";
    }

    else if (searchForMediaIntentMediaItemsUnsupportedReason == 5)
    {
      v56 = @"CELLULAR_DATA_SETTINGS";
    }

    else
    {
      v56 = @"RESTRICTED_CONTENT";
    }

    goto LABEL_241;
  }

  if (searchForMediaIntentMediaItemsUnsupportedReason == 1)
  {
    v56 = @"LOGIN_REQUIRED";
    goto LABEL_241;
  }

  if (searchForMediaIntentMediaItemsUnsupportedReason == 2)
  {
    v56 = @"SUBSCRIPTION_REQUIRED";
    goto LABEL_241;
  }

  if (searchForMediaIntentMediaItemsUnsupportedReason != 3)
  {
    goto LABEL_240;
  }

  v56 = @"UNSUPPORTED_MEDIA_TYPE";
LABEL_241:
  [dictionary setObject:v56 forKeyedSubscript:@"mediaItemsUnsupportedReason"];

LABEL_242:
  if (![(_INPBPayloadUnsupported *)self hasUpdateMediaAffinityIntentMediaItemsUnsupportedReason])
  {
    goto LABEL_271;
  }

  updateMediaAffinityIntentMediaItemsUnsupportedReason = [(_INPBPayloadUnsupported *)self updateMediaAffinityIntentMediaItemsUnsupportedReason];
  if (updateMediaAffinityIntentMediaItemsUnsupportedReason > 6)
  {
    if (updateMediaAffinityIntentMediaItemsUnsupportedReason > 100)
    {
      switch(updateMediaAffinityIntentMediaItemsUnsupportedReason)
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
      switch(updateMediaAffinityIntentMediaItemsUnsupportedReason)
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
    v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", updateMediaAffinityIntentMediaItemsUnsupportedReason];
    goto LABEL_270;
  }

  if (updateMediaAffinityIntentMediaItemsUnsupportedReason > 3)
  {
    if (updateMediaAffinityIntentMediaItemsUnsupportedReason == 4)
    {
      v58 = @"EXPLICIT_CONTENT_SETTINGS";
    }

    else if (updateMediaAffinityIntentMediaItemsUnsupportedReason == 5)
    {
      v58 = @"CELLULAR_DATA_SETTINGS";
    }

    else
    {
      v58 = @"RESTRICTED_CONTENT";
    }

    goto LABEL_270;
  }

  if (updateMediaAffinityIntentMediaItemsUnsupportedReason == 1)
  {
    v58 = @"LOGIN_REQUIRED";
    goto LABEL_270;
  }

  if (updateMediaAffinityIntentMediaItemsUnsupportedReason == 2)
  {
    v58 = @"SUBSCRIPTION_REQUIRED";
    goto LABEL_270;
  }

  if (updateMediaAffinityIntentMediaItemsUnsupportedReason != 3)
  {
    goto LABEL_269;
  }

  v58 = @"UNSUPPORTED_MEDIA_TYPE";
LABEL_270:
  [dictionary setObject:v58 forKeyedSubscript:@"mediaItemsUnsupportedReason"];

LABEL_271:
  if ([(_INPBPayloadUnsupported *)self hasParticipantUnsupportedReason])
  {
    participantUnsupportedReason = [(_INPBPayloadUnsupported *)self participantUnsupportedReason];
    if (participantUnsupportedReason == 1)
    {
      v60 = @"INVALID_PARTICIPANT";
    }

    else if (participantUnsupportedReason == 2)
    {
      v60 = @"PARTICIPANT_NOT_FOUND";
    }

    else
    {
      v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", participantUnsupportedReason];
    }

    [dictionary setObject:v60 forKeyedSubscript:@"participantUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasAddCallParticipantIntentParticipantsUnsupportedReason])
  {
    addCallParticipantIntentParticipantsUnsupportedReason = [(_INPBPayloadUnsupported *)self addCallParticipantIntentParticipantsUnsupportedReason];
    if ((addCallParticipantIntentParticipantsUnsupportedReason - 1) >= 6)
    {
      v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", addCallParticipantIntentParticipantsUnsupportedReason];
    }

    else
    {
      v62 = off_1E7282508[(addCallParticipantIntentParticipantsUnsupportedReason - 1)];
    }

    [dictionary setObject:v62 forKeyedSubscript:@"participantsUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasSendPaymentIntentPayeeUnsupportedReason])
  {
    sendPaymentIntentPayeeUnsupportedReason = [(_INPBPayloadUnsupported *)self sendPaymentIntentPayeeUnsupportedReason];
    if ((sendPaymentIntentPayeeUnsupportedReason - 1) >= 4)
    {
      v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", sendPaymentIntentPayeeUnsupportedReason];
    }

    else
    {
      v64 = off_1E7282538[(sendPaymentIntentPayeeUnsupportedReason - 1)];
    }

    [dictionary setObject:v64 forKeyedSubscript:@"payeeUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasRequestPaymentIntentPayerUnsupportedReason])
  {
    requestPaymentIntentPayerUnsupportedReason = [(_INPBPayloadUnsupported *)self requestPaymentIntentPayerUnsupportedReason];
    if ((requestPaymentIntentPayerUnsupportedReason - 1) >= 3)
    {
      v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", requestPaymentIntentPayerUnsupportedReason];
    }

    else
    {
      v66 = off_1E7282558[(requestPaymentIntentPayerUnsupportedReason - 1)];
    }

    [dictionary setObject:v66 forKeyedSubscript:@"payerUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasPlayMediaIntentPlaybackSpeedUnsupportedReason])
  {
    playMediaIntentPlaybackSpeedUnsupportedReason = [(_INPBPayloadUnsupported *)self playMediaIntentPlaybackSpeedUnsupportedReason];
    if (playMediaIntentPlaybackSpeedUnsupportedReason == 1)
    {
      v68 = @"BELOW_MINIMUM";
    }

    else if (playMediaIntentPlaybackSpeedUnsupportedReason == 2)
    {
      v68 = @"ABOVE_MAXIMUM";
    }

    else
    {
      v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", playMediaIntentPlaybackSpeedUnsupportedReason];
    }

    [dictionary setObject:v68 forKeyedSubscript:@"playbackSpeedUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasStartCallIntentPreferredCallProviderUnsupportedReason])
  {
    startCallIntentPreferredCallProviderUnsupportedReason = [(_INPBPayloadUnsupported *)self startCallIntentPreferredCallProviderUnsupportedReason];
    if ((startCallIntentPreferredCallProviderUnsupportedReason - 1) >= 6)
    {
      v70 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", startCallIntentPreferredCallProviderUnsupportedReason];
    }

    else
    {
      v70 = off_1E7282570[(startCallIntentPreferredCallProviderUnsupportedReason - 1)];
    }

    [dictionary setObject:v70 forKeyedSubscript:@"preferredCallProviderUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasReason])
  {
    reason = [(_INPBPayloadUnsupported *)self reason];
    if (reason <= 2)
    {
      if (reason == 1)
      {
        v72 = @"None";
        goto LABEL_318;
      }

      if (reason == 2)
      {
        v72 = @"NotNow";
        goto LABEL_318;
      }
    }

    else
    {
      switch(reason)
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
          [dictionary setObject:v72 forKeyedSubscript:@"reason"];

          goto LABEL_319;
      }
    }

    v72 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", reason];
    goto LABEL_318;
  }

LABEL_319:
  if ([(_INPBPayloadUnsupported *)self hasShareETAIntentRecipientUnsupportedReason])
  {
    shareETAIntentRecipientUnsupportedReason = [(_INPBPayloadUnsupported *)self shareETAIntentRecipientUnsupportedReason];
    if (shareETAIntentRecipientUnsupportedReason >= 5)
    {
      v74 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", shareETAIntentRecipientUnsupportedReason];
    }

    else
    {
      v74 = off_1E72825A0[shareETAIntentRecipientUnsupportedReason];
    }

    [dictionary setObject:v74 forKeyedSubscript:@"recipientUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasStopShareETAIntentRecipientUnsupportedReason])
  {
    stopShareETAIntentRecipientUnsupportedReason = [(_INPBPayloadUnsupported *)self stopShareETAIntentRecipientUnsupportedReason];
    if (stopShareETAIntentRecipientUnsupportedReason >= 5)
    {
      v76 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", stopShareETAIntentRecipientUnsupportedReason];
    }

    else
    {
      v76 = off_1E72825A0[stopShareETAIntentRecipientUnsupportedReason];
    }

    [dictionary setObject:v76 forKeyedSubscript:@"recipientUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasSendMessageIntentRecipientUnsupportedReason])
  {
    sendMessageIntentRecipientUnsupportedReason = [(_INPBPayloadUnsupported *)self sendMessageIntentRecipientUnsupportedReason];
    if ((sendMessageIntentRecipientUnsupportedReason - 1) >= 0xB)
    {
      v78 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", sendMessageIntentRecipientUnsupportedReason];
    }

    else
    {
      v78 = off_1E72825C8[(sendMessageIntentRecipientUnsupportedReason - 1)];
    }

    [dictionary setObject:v78 forKeyedSubscript:@"recipientUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasSendAnnouncementIntentRecipientsUnsupportedReason])
  {
    sendAnnouncementIntentRecipientsUnsupportedReason = [(_INPBPayloadUnsupported *)self sendAnnouncementIntentRecipientsUnsupportedReason];
    if ((sendAnnouncementIntentRecipientsUnsupportedReason - 1) >= 4)
    {
      v80 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", sendAnnouncementIntentRecipientsUnsupportedReason];
    }

    else
    {
      v80 = off_1E7282620[(sendAnnouncementIntentRecipientsUnsupportedReason - 1)];
    }

    [dictionary setObject:v80 forKeyedSubscript:@"recipientsUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasSaveHealthSampleIntentRecordDateUnsupportedReason])
  {
    saveHealthSampleIntentRecordDateUnsupportedReason = [(_INPBPayloadUnsupported *)self saveHealthSampleIntentRecordDateUnsupportedReason];
    if ((saveHealthSampleIntentRecordDateUnsupportedReason - 1) >= 3)
    {
      v82 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", saveHealthSampleIntentRecordDateUnsupportedReason];
    }

    else
    {
      v82 = off_1E7282640[(saveHealthSampleIntentRecordDateUnsupportedReason - 1)];
    }

    [dictionary setObject:v82 forKeyedSubscript:@"recordDateUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasTargetEventUnsupportedReason])
  {
    targetEventUnsupportedReason = [(_INPBPayloadUnsupported *)self targetEventUnsupportedReason];
    if (targetEventUnsupportedReason == 1)
    {
      v84 = @"TARGET_EVENT_NOT_FOUND";
    }

    else if (targetEventUnsupportedReason == 2)
    {
      v84 = @"TARGET_EVENT_NOT_CREATED_BY_USER";
    }

    else
    {
      v84 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", targetEventUnsupportedReason];
    }

    [dictionary setObject:v84 forKeyedSubscript:@"targetEventUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasAddTasksIntentTargetTaskListMembersUnsupportedReason])
  {
    addTasksIntentTargetTaskListMembersUnsupportedReason = [(_INPBPayloadUnsupported *)self addTasksIntentTargetTaskListMembersUnsupportedReason];
    if (addTasksIntentTargetTaskListMembersUnsupportedReason == 1)
    {
      v86 = @"NO_SHARED_LIST_WITH_CONTACT";
    }

    else
    {
      v86 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", addTasksIntentTargetTaskListMembersUnsupportedReason];
    }

    [dictionary setObject:v86 forKeyedSubscript:@"targetTaskListMembersUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasSetTimerAttributeIntentTargetTimerUnsupportedReason])
  {
    setTimerAttributeIntentTargetTimerUnsupportedReason = [(_INPBPayloadUnsupported *)self setTimerAttributeIntentTargetTimerUnsupportedReason];
    if (setTimerAttributeIntentTargetTimerUnsupportedReason)
    {
      if (setTimerAttributeIntentTargetTimerUnsupportedReason == 1)
      {
        v88 = @"NO_TIMERS";
      }

      else
      {
        v88 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", setTimerAttributeIntentTargetTimerUnsupportedReason];
      }
    }

    else
    {
      v88 = @"NOT_FOUND";
    }

    [dictionary setObject:v88 forKeyedSubscript:@"targetTimerUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasDeleteTasksIntentTaskListUnsupportedReason])
  {
    deleteTasksIntentTaskListUnsupportedReason = [(_INPBPayloadUnsupported *)self deleteTasksIntentTaskListUnsupportedReason];
    if (deleteTasksIntentTaskListUnsupportedReason == 1)
    {
      v90 = @"NO_TASK_LIST_FOUND";
    }

    else
    {
      v90 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", deleteTasksIntentTaskListUnsupportedReason];
    }

    [dictionary setObject:v90 forKeyedSubscript:@"taskListUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasDeleteTasksIntentTaskUnsupportedReason])
  {
    deleteTasksIntentTaskUnsupportedReason = [(_INPBPayloadUnsupported *)self deleteTasksIntentTaskUnsupportedReason];
    if (deleteTasksIntentTaskUnsupportedReason == 1)
    {
      v92 = @"NO_TASKS_FOUND";
    }

    else if (deleteTasksIntentTaskUnsupportedReason == 2)
    {
      v92 = @"NO_TASKS_IN_APP";
    }

    else
    {
      v92 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", deleteTasksIntentTaskUnsupportedReason];
    }

    [dictionary setObject:v92 forKeyedSubscript:@"taskUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasSnoozeTasksIntentTaskUnsupportedReason])
  {
    snoozeTasksIntentTaskUnsupportedReason = [(_INPBPayloadUnsupported *)self snoozeTasksIntentTaskUnsupportedReason];
    if (snoozeTasksIntentTaskUnsupportedReason == 1)
    {
      v94 = @"NO_TASKS_FOUND";
    }

    else
    {
      v94 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", snoozeTasksIntentTaskUnsupportedReason];
    }

    [dictionary setObject:v94 forKeyedSubscript:@"taskUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasAddTasksIntentTemporalEventTriggerUnsupportedReason])
  {
    addTasksIntentTemporalEventTriggerUnsupportedReason = [(_INPBPayloadUnsupported *)self addTasksIntentTemporalEventTriggerUnsupportedReason];
    if (addTasksIntentTemporalEventTriggerUnsupportedReason == 1)
    {
      v96 = @"TIME_IN_PAST";
    }

    else if (addTasksIntentTemporalEventTriggerUnsupportedReason == 2)
    {
      v96 = @"INVALID_RECURRENCE";
    }

    else
    {
      v96 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", addTasksIntentTemporalEventTriggerUnsupportedReason];
    }

    [dictionary setObject:v96 forKeyedSubscript:@"temporalEventTriggerUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasSetTaskAttributeIntentTemporalEventTriggerUnsupportedReason])
  {
    setTaskAttributeIntentTemporalEventTriggerUnsupportedReason = [(_INPBPayloadUnsupported *)self setTaskAttributeIntentTemporalEventTriggerUnsupportedReason];
    if (setTaskAttributeIntentTemporalEventTriggerUnsupportedReason == 1)
    {
      v98 = @"TIME_IN_PAST";
    }

    else if (setTaskAttributeIntentTemporalEventTriggerUnsupportedReason == 2)
    {
      v98 = @"INVALID_RECURRENCE";
    }

    else
    {
      v98 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", setTaskAttributeIntentTemporalEventTriggerUnsupportedReason];
    }

    [dictionary setObject:v98 forKeyedSubscript:@"temporalEventTriggerUnsupportedReason"];
  }

  if ([(_INPBPayloadUnsupported *)self hasRunWorkflowIntentWorkflowUnsupportedReason])
  {
    runWorkflowIntentWorkflowUnsupportedReason = [(_INPBPayloadUnsupported *)self runWorkflowIntentWorkflowUnsupportedReason];
    if (runWorkflowIntentWorkflowUnsupportedReason)
    {
      if (runWorkflowIntentWorkflowUnsupportedReason == 1)
      {
        v100 = @"NO_WORKFLOWS";
      }

      else
      {
        v100 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", runWorkflowIntentWorkflowUnsupportedReason];
      }
    }

    else
    {
      v100 = @"NOT_FOUND";
    }

    [dictionary setObject:v100 forKeyedSubscript:@"workflowUnsupportedReason"];
  }

  v101 = dictionary;

  v102 = *MEMORY[0x1E69E9840];
  return dictionary;
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
    hasTargetEventUnsupportedReason = [(_INPBPayloadUnsupported *)self hasTargetEventUnsupportedReason];
  }

  else
  {
    hasTargetEventUnsupportedReason = [(_INPBPayloadUnsupported *)self hasTargetEventUnsupportedReason];
  }

  if (hasTargetEventUnsupportedReason)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_189;
  }

  hasUpdateAlarmIntentAlarmUnsupportedReason = [(_INPBPayloadUnsupported *)self hasUpdateAlarmIntentAlarmUnsupportedReason];
  if (hasUpdateAlarmIntentAlarmUnsupportedReason != [equalCopy hasUpdateAlarmIntentAlarmUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasUpdateAlarmIntentAlarmUnsupportedReason])
  {
    if ([equalCopy hasUpdateAlarmIntentAlarmUnsupportedReason])
    {
      updateAlarmIntentAlarmUnsupportedReason = self->_updateAlarmIntentAlarmUnsupportedReason;
      if (updateAlarmIntentAlarmUnsupportedReason != [equalCopy updateAlarmIntentAlarmUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasChangeAlarmStatusIntentAlarmsUnsupportedReason = [(_INPBPayloadUnsupported *)self hasChangeAlarmStatusIntentAlarmsUnsupportedReason];
  if (hasChangeAlarmStatusIntentAlarmsUnsupportedReason != [equalCopy hasChangeAlarmStatusIntentAlarmsUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasChangeAlarmStatusIntentAlarmsUnsupportedReason])
  {
    if ([equalCopy hasChangeAlarmStatusIntentAlarmsUnsupportedReason])
    {
      changeAlarmStatusIntentAlarmsUnsupportedReason = self->_changeAlarmStatusIntentAlarmsUnsupportedReason;
      if (changeAlarmStatusIntentAlarmsUnsupportedReason != [equalCopy changeAlarmStatusIntentAlarmsUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasDeleteAlarmIntentAlarmsUnsupportedReason = [(_INPBPayloadUnsupported *)self hasDeleteAlarmIntentAlarmsUnsupportedReason];
  if (hasDeleteAlarmIntentAlarmsUnsupportedReason != [equalCopy hasDeleteAlarmIntentAlarmsUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasDeleteAlarmIntentAlarmsUnsupportedReason])
  {
    if ([equalCopy hasDeleteAlarmIntentAlarmsUnsupportedReason])
    {
      deleteAlarmIntentAlarmsUnsupportedReason = self->_deleteAlarmIntentAlarmsUnsupportedReason;
      if (deleteAlarmIntentAlarmsUnsupportedReason != [equalCopy deleteAlarmIntentAlarmsUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasSearchAlarmIntentAlarmsUnsupportedReason = [(_INPBPayloadUnsupported *)self hasSearchAlarmIntentAlarmsUnsupportedReason];
  if (hasSearchAlarmIntentAlarmsUnsupportedReason != [equalCopy hasSearchAlarmIntentAlarmsUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasSearchAlarmIntentAlarmsUnsupportedReason])
  {
    if ([equalCopy hasSearchAlarmIntentAlarmsUnsupportedReason])
    {
      searchAlarmIntentAlarmsUnsupportedReason = self->_searchAlarmIntentAlarmsUnsupportedReason;
      if (searchAlarmIntentAlarmsUnsupportedReason != [equalCopy searchAlarmIntentAlarmsUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasSnoozeAlarmIntentAlarmsUnsupportedReason = [(_INPBPayloadUnsupported *)self hasSnoozeAlarmIntentAlarmsUnsupportedReason];
  if (hasSnoozeAlarmIntentAlarmsUnsupportedReason != [equalCopy hasSnoozeAlarmIntentAlarmsUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasSnoozeAlarmIntentAlarmsUnsupportedReason])
  {
    if ([equalCopy hasSnoozeAlarmIntentAlarmsUnsupportedReason])
    {
      snoozeAlarmIntentAlarmsUnsupportedReason = self->_snoozeAlarmIntentAlarmsUnsupportedReason;
      if (snoozeAlarmIntentAlarmsUnsupportedReason != [equalCopy snoozeAlarmIntentAlarmsUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasSendAnnouncementIntentAnnouncementUnsupportedReason = [(_INPBPayloadUnsupported *)self hasSendAnnouncementIntentAnnouncementUnsupportedReason];
  if (hasSendAnnouncementIntentAnnouncementUnsupportedReason != [equalCopy hasSendAnnouncementIntentAnnouncementUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasSendAnnouncementIntentAnnouncementUnsupportedReason])
  {
    if ([equalCopy hasSendAnnouncementIntentAnnouncementUnsupportedReason])
    {
      sendAnnouncementIntentAnnouncementUnsupportedReason = self->_sendAnnouncementIntentAnnouncementUnsupportedReason;
      if (sendAnnouncementIntentAnnouncementUnsupportedReason != [equalCopy sendAnnouncementIntentAnnouncementUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasStartCallIntentCallCapabilityUnsupportedReason = [(_INPBPayloadUnsupported *)self hasStartCallIntentCallCapabilityUnsupportedReason];
  if (hasStartCallIntentCallCapabilityUnsupportedReason != [equalCopy hasStartCallIntentCallCapabilityUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasStartCallIntentCallCapabilityUnsupportedReason])
  {
    if ([equalCopy hasStartCallIntentCallCapabilityUnsupportedReason])
    {
      startCallIntentCallCapabilityUnsupportedReason = self->_startCallIntentCallCapabilityUnsupportedReason;
      if (startCallIntentCallCapabilityUnsupportedReason != [equalCopy startCallIntentCallCapabilityUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasStartCallIntentCallRecordToCallBackUnsupportedReason = [(_INPBPayloadUnsupported *)self hasStartCallIntentCallRecordToCallBackUnsupportedReason];
  if (hasStartCallIntentCallRecordToCallBackUnsupportedReason != [equalCopy hasStartCallIntentCallRecordToCallBackUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasStartCallIntentCallRecordToCallBackUnsupportedReason])
  {
    if ([equalCopy hasStartCallIntentCallRecordToCallBackUnsupportedReason])
    {
      startCallIntentCallRecordToCallBackUnsupportedReason = self->_startCallIntentCallRecordToCallBackUnsupportedReason;
      if (startCallIntentCallRecordToCallBackUnsupportedReason != [equalCopy startCallIntentCallRecordToCallBackUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  conflictingParameters = [(_INPBPayloadUnsupported *)self conflictingParameters];
  conflictingParameters2 = [equalCopy conflictingParameters];
  v23 = conflictingParameters2;
  if ((conflictingParameters != 0) == (conflictingParameters2 == 0))
  {

LABEL_189:
    v103 = 0;
    goto LABEL_190;
  }

  conflictingParameters3 = [(_INPBPayloadUnsupported *)self conflictingParameters];
  if (conflictingParameters3)
  {
    v25 = conflictingParameters3;
    conflictingParameters4 = [(_INPBPayloadUnsupported *)self conflictingParameters];
    conflictingParameters5 = [equalCopy conflictingParameters];
    v28 = [conflictingParameters4 isEqual:conflictingParameters5];

    if (!v28)
    {
      goto LABEL_189;
    }
  }

  else
  {
  }

  hasAddTasksIntentContactEventTriggerUnsupportedReason = [(_INPBPayloadUnsupported *)self hasAddTasksIntentContactEventTriggerUnsupportedReason];
  if (hasAddTasksIntentContactEventTriggerUnsupportedReason != [equalCopy hasAddTasksIntentContactEventTriggerUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasAddTasksIntentContactEventTriggerUnsupportedReason])
  {
    if ([equalCopy hasAddTasksIntentContactEventTriggerUnsupportedReason])
    {
      addTasksIntentContactEventTriggerUnsupportedReason = self->_addTasksIntentContactEventTriggerUnsupportedReason;
      if (addTasksIntentContactEventTriggerUnsupportedReason != [equalCopy addTasksIntentContactEventTriggerUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasSetTaskAttributeIntentContactEventTriggerUnsupportedReason = [(_INPBPayloadUnsupported *)self hasSetTaskAttributeIntentContactEventTriggerUnsupportedReason];
  if (hasSetTaskAttributeIntentContactEventTriggerUnsupportedReason != [equalCopy hasSetTaskAttributeIntentContactEventTriggerUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasSetTaskAttributeIntentContactEventTriggerUnsupportedReason])
  {
    if ([equalCopy hasSetTaskAttributeIntentContactEventTriggerUnsupportedReason])
    {
      setTaskAttributeIntentContactEventTriggerUnsupportedReason = self->_setTaskAttributeIntentContactEventTriggerUnsupportedReason;
      if (setTaskAttributeIntentContactEventTriggerUnsupportedReason != [equalCopy setTaskAttributeIntentContactEventTriggerUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasStartCallIntentContactsUnsupportedReason = [(_INPBPayloadUnsupported *)self hasStartCallIntentContactsUnsupportedReason];
  if (hasStartCallIntentContactsUnsupportedReason != [equalCopy hasStartCallIntentContactsUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasStartCallIntentContactsUnsupportedReason])
  {
    if ([equalCopy hasStartCallIntentContactsUnsupportedReason])
    {
      startCallIntentContactsUnsupportedReason = self->_startCallIntentContactsUnsupportedReason;
      if (startCallIntentContactsUnsupportedReason != [equalCopy startCallIntentContactsUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasRequestPaymentIntentCurrencyAmountUnsupportedReason = [(_INPBPayloadUnsupported *)self hasRequestPaymentIntentCurrencyAmountUnsupportedReason];
  if (hasRequestPaymentIntentCurrencyAmountUnsupportedReason != [equalCopy hasRequestPaymentIntentCurrencyAmountUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasRequestPaymentIntentCurrencyAmountUnsupportedReason])
  {
    if ([equalCopy hasRequestPaymentIntentCurrencyAmountUnsupportedReason])
    {
      requestPaymentIntentCurrencyAmountUnsupportedReason = self->_requestPaymentIntentCurrencyAmountUnsupportedReason;
      if (requestPaymentIntentCurrencyAmountUnsupportedReason != [equalCopy requestPaymentIntentCurrencyAmountUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasSendPaymentIntentCurrencyAmountUnsupportedReason = [(_INPBPayloadUnsupported *)self hasSendPaymentIntentCurrencyAmountUnsupportedReason];
  if (hasSendPaymentIntentCurrencyAmountUnsupportedReason != [equalCopy hasSendPaymentIntentCurrencyAmountUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasSendPaymentIntentCurrencyAmountUnsupportedReason])
  {
    if ([equalCopy hasSendPaymentIntentCurrencyAmountUnsupportedReason])
    {
      sendPaymentIntentCurrencyAmountUnsupportedReason = self->_sendPaymentIntentCurrencyAmountUnsupportedReason;
      if (sendPaymentIntentCurrencyAmountUnsupportedReason != [equalCopy sendPaymentIntentCurrencyAmountUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasCustomUnsupportedReason = [(_INPBPayloadUnsupported *)self hasCustomUnsupportedReason];
  if (hasCustomUnsupportedReason != [equalCopy hasCustomUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasCustomUnsupportedReason])
  {
    if ([equalCopy hasCustomUnsupportedReason])
    {
      customUnsupportedReason = self->_customUnsupportedReason;
      if (customUnsupportedReason != [equalCopy customUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasDateTimeRangeUnsupportedReason = [(_INPBPayloadUnsupported *)self hasDateTimeRangeUnsupportedReason];
  if (hasDateTimeRangeUnsupportedReason != [equalCopy hasDateTimeRangeUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasDateTimeRangeUnsupportedReason])
  {
    if ([equalCopy hasDateTimeRangeUnsupportedReason])
    {
      dateTimeRangeUnsupportedReason = self->_dateTimeRangeUnsupportedReason;
      if (dateTimeRangeUnsupportedReason != [equalCopy dateTimeRangeUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasFindDeviceAndPlaySoundIntentDeviceUnsupportedReason = [(_INPBPayloadUnsupported *)self hasFindDeviceAndPlaySoundIntentDeviceUnsupportedReason];
  if (hasFindDeviceAndPlaySoundIntentDeviceUnsupportedReason != [equalCopy hasFindDeviceAndPlaySoundIntentDeviceUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasFindDeviceAndPlaySoundIntentDeviceUnsupportedReason])
  {
    if ([equalCopy hasFindDeviceAndPlaySoundIntentDeviceUnsupportedReason])
    {
      findDeviceAndPlaySoundIntentDeviceUnsupportedReason = self->_findDeviceAndPlaySoundIntentDeviceUnsupportedReason;
      if (findDeviceAndPlaySoundIntentDeviceUnsupportedReason != [equalCopy findDeviceAndPlaySoundIntentDeviceUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasJoinCallIntentGroupConversationUnsupportedReason = [(_INPBPayloadUnsupported *)self hasJoinCallIntentGroupConversationUnsupportedReason];
  if (hasJoinCallIntentGroupConversationUnsupportedReason != [equalCopy hasJoinCallIntentGroupConversationUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasJoinCallIntentGroupConversationUnsupportedReason])
  {
    if ([equalCopy hasJoinCallIntentGroupConversationUnsupportedReason])
    {
      joinCallIntentGroupConversationUnsupportedReason = self->_joinCallIntentGroupConversationUnsupportedReason;
      if (joinCallIntentGroupConversationUnsupportedReason != [equalCopy joinCallIntentGroupConversationUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasReportIncidentIntentIncidentTypeUnsupportedReason = [(_INPBPayloadUnsupported *)self hasReportIncidentIntentIncidentTypeUnsupportedReason];
  if (hasReportIncidentIntentIncidentTypeUnsupportedReason != [equalCopy hasReportIncidentIntentIncidentTypeUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasReportIncidentIntentIncidentTypeUnsupportedReason])
  {
    if ([equalCopy hasReportIncidentIntentIncidentTypeUnsupportedReason])
    {
      reportIncidentIntentIncidentTypeUnsupportedReason = self->_reportIncidentIntentIncidentTypeUnsupportedReason;
      if (reportIncidentIntentIncidentTypeUnsupportedReason != [equalCopy reportIncidentIntentIncidentTypeUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasCreateTimerIntentLabelUnsupportedReason = [(_INPBPayloadUnsupported *)self hasCreateTimerIntentLabelUnsupportedReason];
  if (hasCreateTimerIntentLabelUnsupportedReason != [equalCopy hasCreateTimerIntentLabelUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasCreateTimerIntentLabelUnsupportedReason])
  {
    if ([equalCopy hasCreateTimerIntentLabelUnsupportedReason])
    {
      createTimerIntentLabelUnsupportedReason = self->_createTimerIntentLabelUnsupportedReason;
      if (createTimerIntentLabelUnsupportedReason != [equalCopy createTimerIntentLabelUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasAddMediaIntentMediaDestinationUnsupportedReason = [(_INPBPayloadUnsupported *)self hasAddMediaIntentMediaDestinationUnsupportedReason];
  if (hasAddMediaIntentMediaDestinationUnsupportedReason != [equalCopy hasAddMediaIntentMediaDestinationUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasAddMediaIntentMediaDestinationUnsupportedReason])
  {
    if ([equalCopy hasAddMediaIntentMediaDestinationUnsupportedReason])
    {
      addMediaIntentMediaDestinationUnsupportedReason = self->_addMediaIntentMediaDestinationUnsupportedReason;
      if (addMediaIntentMediaDestinationUnsupportedReason != [equalCopy addMediaIntentMediaDestinationUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasAddMediaIntentMediaItemsUnsupportedReason = [(_INPBPayloadUnsupported *)self hasAddMediaIntentMediaItemsUnsupportedReason];
  if (hasAddMediaIntentMediaItemsUnsupportedReason != [equalCopy hasAddMediaIntentMediaItemsUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasAddMediaIntentMediaItemsUnsupportedReason])
  {
    if ([equalCopy hasAddMediaIntentMediaItemsUnsupportedReason])
    {
      addMediaIntentMediaItemsUnsupportedReason = self->_addMediaIntentMediaItemsUnsupportedReason;
      if (addMediaIntentMediaItemsUnsupportedReason != [equalCopy addMediaIntentMediaItemsUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasPlayMediaIntentMediaItemsUnsupportedReason = [(_INPBPayloadUnsupported *)self hasPlayMediaIntentMediaItemsUnsupportedReason];
  if (hasPlayMediaIntentMediaItemsUnsupportedReason != [equalCopy hasPlayMediaIntentMediaItemsUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasPlayMediaIntentMediaItemsUnsupportedReason])
  {
    if ([equalCopy hasPlayMediaIntentMediaItemsUnsupportedReason])
    {
      playMediaIntentMediaItemsUnsupportedReason = self->_playMediaIntentMediaItemsUnsupportedReason;
      if (playMediaIntentMediaItemsUnsupportedReason != [equalCopy playMediaIntentMediaItemsUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasSearchForMediaIntentMediaItemsUnsupportedReason = [(_INPBPayloadUnsupported *)self hasSearchForMediaIntentMediaItemsUnsupportedReason];
  if (hasSearchForMediaIntentMediaItemsUnsupportedReason != [equalCopy hasSearchForMediaIntentMediaItemsUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasSearchForMediaIntentMediaItemsUnsupportedReason])
  {
    if ([equalCopy hasSearchForMediaIntentMediaItemsUnsupportedReason])
    {
      searchForMediaIntentMediaItemsUnsupportedReason = self->_searchForMediaIntentMediaItemsUnsupportedReason;
      if (searchForMediaIntentMediaItemsUnsupportedReason != [equalCopy searchForMediaIntentMediaItemsUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasUpdateMediaAffinityIntentMediaItemsUnsupportedReason = [(_INPBPayloadUnsupported *)self hasUpdateMediaAffinityIntentMediaItemsUnsupportedReason];
  if (hasUpdateMediaAffinityIntentMediaItemsUnsupportedReason != [equalCopy hasUpdateMediaAffinityIntentMediaItemsUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasUpdateMediaAffinityIntentMediaItemsUnsupportedReason])
  {
    if ([equalCopy hasUpdateMediaAffinityIntentMediaItemsUnsupportedReason])
    {
      updateMediaAffinityIntentMediaItemsUnsupportedReason = self->_updateMediaAffinityIntentMediaItemsUnsupportedReason;
      if (updateMediaAffinityIntentMediaItemsUnsupportedReason != [equalCopy updateMediaAffinityIntentMediaItemsUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasParticipantUnsupportedReason = [(_INPBPayloadUnsupported *)self hasParticipantUnsupportedReason];
  if (hasParticipantUnsupportedReason != [equalCopy hasParticipantUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasParticipantUnsupportedReason])
  {
    if ([equalCopy hasParticipantUnsupportedReason])
    {
      participantUnsupportedReason = self->_participantUnsupportedReason;
      if (participantUnsupportedReason != [equalCopy participantUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasAddCallParticipantIntentParticipantsUnsupportedReason = [(_INPBPayloadUnsupported *)self hasAddCallParticipantIntentParticipantsUnsupportedReason];
  if (hasAddCallParticipantIntentParticipantsUnsupportedReason != [equalCopy hasAddCallParticipantIntentParticipantsUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasAddCallParticipantIntentParticipantsUnsupportedReason])
  {
    if ([equalCopy hasAddCallParticipantIntentParticipantsUnsupportedReason])
    {
      addCallParticipantIntentParticipantsUnsupportedReason = self->_addCallParticipantIntentParticipantsUnsupportedReason;
      if (addCallParticipantIntentParticipantsUnsupportedReason != [equalCopy addCallParticipantIntentParticipantsUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasSendPaymentIntentPayeeUnsupportedReason = [(_INPBPayloadUnsupported *)self hasSendPaymentIntentPayeeUnsupportedReason];
  if (hasSendPaymentIntentPayeeUnsupportedReason != [equalCopy hasSendPaymentIntentPayeeUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasSendPaymentIntentPayeeUnsupportedReason])
  {
    if ([equalCopy hasSendPaymentIntentPayeeUnsupportedReason])
    {
      sendPaymentIntentPayeeUnsupportedReason = self->_sendPaymentIntentPayeeUnsupportedReason;
      if (sendPaymentIntentPayeeUnsupportedReason != [equalCopy sendPaymentIntentPayeeUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasRequestPaymentIntentPayerUnsupportedReason = [(_INPBPayloadUnsupported *)self hasRequestPaymentIntentPayerUnsupportedReason];
  if (hasRequestPaymentIntentPayerUnsupportedReason != [equalCopy hasRequestPaymentIntentPayerUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasRequestPaymentIntentPayerUnsupportedReason])
  {
    if ([equalCopy hasRequestPaymentIntentPayerUnsupportedReason])
    {
      requestPaymentIntentPayerUnsupportedReason = self->_requestPaymentIntentPayerUnsupportedReason;
      if (requestPaymentIntentPayerUnsupportedReason != [equalCopy requestPaymentIntentPayerUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasPlayMediaIntentPlaybackSpeedUnsupportedReason = [(_INPBPayloadUnsupported *)self hasPlayMediaIntentPlaybackSpeedUnsupportedReason];
  if (hasPlayMediaIntentPlaybackSpeedUnsupportedReason != [equalCopy hasPlayMediaIntentPlaybackSpeedUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasPlayMediaIntentPlaybackSpeedUnsupportedReason])
  {
    if ([equalCopy hasPlayMediaIntentPlaybackSpeedUnsupportedReason])
    {
      playMediaIntentPlaybackSpeedUnsupportedReason = self->_playMediaIntentPlaybackSpeedUnsupportedReason;
      if (playMediaIntentPlaybackSpeedUnsupportedReason != [equalCopy playMediaIntentPlaybackSpeedUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasStartCallIntentPreferredCallProviderUnsupportedReason = [(_INPBPayloadUnsupported *)self hasStartCallIntentPreferredCallProviderUnsupportedReason];
  if (hasStartCallIntentPreferredCallProviderUnsupportedReason != [equalCopy hasStartCallIntentPreferredCallProviderUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasStartCallIntentPreferredCallProviderUnsupportedReason])
  {
    if ([equalCopy hasStartCallIntentPreferredCallProviderUnsupportedReason])
    {
      startCallIntentPreferredCallProviderUnsupportedReason = self->_startCallIntentPreferredCallProviderUnsupportedReason;
      if (startCallIntentPreferredCallProviderUnsupportedReason != [equalCopy startCallIntentPreferredCallProviderUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasReason = [(_INPBPayloadUnsupported *)self hasReason];
  if (hasReason != [equalCopy hasReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasReason])
  {
    if ([equalCopy hasReason])
    {
      reason = self->_reason;
      if (reason != [equalCopy reason])
      {
        goto LABEL_189;
      }
    }
  }

  hasShareETAIntentRecipientUnsupportedReason = [(_INPBPayloadUnsupported *)self hasShareETAIntentRecipientUnsupportedReason];
  if (hasShareETAIntentRecipientUnsupportedReason != [equalCopy hasShareETAIntentRecipientUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasShareETAIntentRecipientUnsupportedReason])
  {
    if ([equalCopy hasShareETAIntentRecipientUnsupportedReason])
    {
      shareETAIntentRecipientUnsupportedReason = self->_shareETAIntentRecipientUnsupportedReason;
      if (shareETAIntentRecipientUnsupportedReason != [equalCopy shareETAIntentRecipientUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasStopShareETAIntentRecipientUnsupportedReason = [(_INPBPayloadUnsupported *)self hasStopShareETAIntentRecipientUnsupportedReason];
  if (hasStopShareETAIntentRecipientUnsupportedReason != [equalCopy hasStopShareETAIntentRecipientUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasStopShareETAIntentRecipientUnsupportedReason])
  {
    if ([equalCopy hasStopShareETAIntentRecipientUnsupportedReason])
    {
      stopShareETAIntentRecipientUnsupportedReason = self->_stopShareETAIntentRecipientUnsupportedReason;
      if (stopShareETAIntentRecipientUnsupportedReason != [equalCopy stopShareETAIntentRecipientUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasSendMessageIntentRecipientUnsupportedReason = [(_INPBPayloadUnsupported *)self hasSendMessageIntentRecipientUnsupportedReason];
  if (hasSendMessageIntentRecipientUnsupportedReason != [equalCopy hasSendMessageIntentRecipientUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasSendMessageIntentRecipientUnsupportedReason])
  {
    if ([equalCopy hasSendMessageIntentRecipientUnsupportedReason])
    {
      sendMessageIntentRecipientUnsupportedReason = self->_sendMessageIntentRecipientUnsupportedReason;
      if (sendMessageIntentRecipientUnsupportedReason != [equalCopy sendMessageIntentRecipientUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasSendAnnouncementIntentRecipientsUnsupportedReason = [(_INPBPayloadUnsupported *)self hasSendAnnouncementIntentRecipientsUnsupportedReason];
  if (hasSendAnnouncementIntentRecipientsUnsupportedReason != [equalCopy hasSendAnnouncementIntentRecipientsUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasSendAnnouncementIntentRecipientsUnsupportedReason])
  {
    if ([equalCopy hasSendAnnouncementIntentRecipientsUnsupportedReason])
    {
      sendAnnouncementIntentRecipientsUnsupportedReason = self->_sendAnnouncementIntentRecipientsUnsupportedReason;
      if (sendAnnouncementIntentRecipientsUnsupportedReason != [equalCopy sendAnnouncementIntentRecipientsUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasSaveHealthSampleIntentRecordDateUnsupportedReason = [(_INPBPayloadUnsupported *)self hasSaveHealthSampleIntentRecordDateUnsupportedReason];
  if (hasSaveHealthSampleIntentRecordDateUnsupportedReason != [equalCopy hasSaveHealthSampleIntentRecordDateUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasSaveHealthSampleIntentRecordDateUnsupportedReason])
  {
    if ([equalCopy hasSaveHealthSampleIntentRecordDateUnsupportedReason])
    {
      saveHealthSampleIntentRecordDateUnsupportedReason = self->_saveHealthSampleIntentRecordDateUnsupportedReason;
      if (saveHealthSampleIntentRecordDateUnsupportedReason != [equalCopy saveHealthSampleIntentRecordDateUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasTargetEventUnsupportedReason = [(_INPBPayloadUnsupported *)self hasTargetEventUnsupportedReason];
  if (hasTargetEventUnsupportedReason != [equalCopy hasTargetEventUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasTargetEventUnsupportedReason])
  {
    if ([equalCopy hasTargetEventUnsupportedReason])
    {
      targetEventUnsupportedReason = self->_targetEventUnsupportedReason;
      if (targetEventUnsupportedReason != [equalCopy targetEventUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasAddTasksIntentTargetTaskListMembersUnsupportedReason = [(_INPBPayloadUnsupported *)self hasAddTasksIntentTargetTaskListMembersUnsupportedReason];
  if (hasAddTasksIntentTargetTaskListMembersUnsupportedReason != [equalCopy hasAddTasksIntentTargetTaskListMembersUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasAddTasksIntentTargetTaskListMembersUnsupportedReason])
  {
    if ([equalCopy hasAddTasksIntentTargetTaskListMembersUnsupportedReason])
    {
      addTasksIntentTargetTaskListMembersUnsupportedReason = self->_addTasksIntentTargetTaskListMembersUnsupportedReason;
      if (addTasksIntentTargetTaskListMembersUnsupportedReason != [equalCopy addTasksIntentTargetTaskListMembersUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasSetTimerAttributeIntentTargetTimerUnsupportedReason = [(_INPBPayloadUnsupported *)self hasSetTimerAttributeIntentTargetTimerUnsupportedReason];
  if (hasSetTimerAttributeIntentTargetTimerUnsupportedReason != [equalCopy hasSetTimerAttributeIntentTargetTimerUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasSetTimerAttributeIntentTargetTimerUnsupportedReason])
  {
    if ([equalCopy hasSetTimerAttributeIntentTargetTimerUnsupportedReason])
    {
      setTimerAttributeIntentTargetTimerUnsupportedReason = self->_setTimerAttributeIntentTargetTimerUnsupportedReason;
      if (setTimerAttributeIntentTargetTimerUnsupportedReason != [equalCopy setTimerAttributeIntentTargetTimerUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasDeleteTasksIntentTaskListUnsupportedReason = [(_INPBPayloadUnsupported *)self hasDeleteTasksIntentTaskListUnsupportedReason];
  if (hasDeleteTasksIntentTaskListUnsupportedReason != [equalCopy hasDeleteTasksIntentTaskListUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasDeleteTasksIntentTaskListUnsupportedReason])
  {
    if ([equalCopy hasDeleteTasksIntentTaskListUnsupportedReason])
    {
      deleteTasksIntentTaskListUnsupportedReason = self->_deleteTasksIntentTaskListUnsupportedReason;
      if (deleteTasksIntentTaskListUnsupportedReason != [equalCopy deleteTasksIntentTaskListUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasDeleteTasksIntentTaskUnsupportedReason = [(_INPBPayloadUnsupported *)self hasDeleteTasksIntentTaskUnsupportedReason];
  if (hasDeleteTasksIntentTaskUnsupportedReason != [equalCopy hasDeleteTasksIntentTaskUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasDeleteTasksIntentTaskUnsupportedReason])
  {
    if ([equalCopy hasDeleteTasksIntentTaskUnsupportedReason])
    {
      deleteTasksIntentTaskUnsupportedReason = self->_deleteTasksIntentTaskUnsupportedReason;
      if (deleteTasksIntentTaskUnsupportedReason != [equalCopy deleteTasksIntentTaskUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasSnoozeTasksIntentTaskUnsupportedReason = [(_INPBPayloadUnsupported *)self hasSnoozeTasksIntentTaskUnsupportedReason];
  if (hasSnoozeTasksIntentTaskUnsupportedReason != [equalCopy hasSnoozeTasksIntentTaskUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasSnoozeTasksIntentTaskUnsupportedReason])
  {
    if ([equalCopy hasSnoozeTasksIntentTaskUnsupportedReason])
    {
      snoozeTasksIntentTaskUnsupportedReason = self->_snoozeTasksIntentTaskUnsupportedReason;
      if (snoozeTasksIntentTaskUnsupportedReason != [equalCopy snoozeTasksIntentTaskUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasAddTasksIntentTemporalEventTriggerUnsupportedReason = [(_INPBPayloadUnsupported *)self hasAddTasksIntentTemporalEventTriggerUnsupportedReason];
  if (hasAddTasksIntentTemporalEventTriggerUnsupportedReason != [equalCopy hasAddTasksIntentTemporalEventTriggerUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasAddTasksIntentTemporalEventTriggerUnsupportedReason])
  {
    if ([equalCopy hasAddTasksIntentTemporalEventTriggerUnsupportedReason])
    {
      addTasksIntentTemporalEventTriggerUnsupportedReason = self->_addTasksIntentTemporalEventTriggerUnsupportedReason;
      if (addTasksIntentTemporalEventTriggerUnsupportedReason != [equalCopy addTasksIntentTemporalEventTriggerUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasSetTaskAttributeIntentTemporalEventTriggerUnsupportedReason = [(_INPBPayloadUnsupported *)self hasSetTaskAttributeIntentTemporalEventTriggerUnsupportedReason];
  if (hasSetTaskAttributeIntentTemporalEventTriggerUnsupportedReason != [equalCopy hasSetTaskAttributeIntentTemporalEventTriggerUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasSetTaskAttributeIntentTemporalEventTriggerUnsupportedReason])
  {
    if ([equalCopy hasSetTaskAttributeIntentTemporalEventTriggerUnsupportedReason])
    {
      setTaskAttributeIntentTemporalEventTriggerUnsupportedReason = self->_setTaskAttributeIntentTemporalEventTriggerUnsupportedReason;
      if (setTaskAttributeIntentTemporalEventTriggerUnsupportedReason != [equalCopy setTaskAttributeIntentTemporalEventTriggerUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  hasRunWorkflowIntentWorkflowUnsupportedReason = [(_INPBPayloadUnsupported *)self hasRunWorkflowIntentWorkflowUnsupportedReason];
  if (hasRunWorkflowIntentWorkflowUnsupportedReason != [equalCopy hasRunWorkflowIntentWorkflowUnsupportedReason])
  {
    goto LABEL_189;
  }

  if ([(_INPBPayloadUnsupported *)self hasRunWorkflowIntentWorkflowUnsupportedReason])
  {
    if ([equalCopy hasRunWorkflowIntentWorkflowUnsupportedReason])
    {
      runWorkflowIntentWorkflowUnsupportedReason = self->_runWorkflowIntentWorkflowUnsupportedReason;
      if (runWorkflowIntentWorkflowUnsupportedReason != [equalCopy runWorkflowIntentWorkflowUnsupportedReason])
      {
        goto LABEL_189;
      }
    }
  }

  v103 = 1;
LABEL_190:

  return v103;
}

- (id)copyWithZone:(_NSZone *)zone
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

  v6 = [(NSArray *)self->_conflictingParameters copyWithZone:zone];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBPayloadUnsupported *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBPayloadUnsupported)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBPayloadUnsupported *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v62 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

- (int)StringAsRunWorkflowIntentWorkflowUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"NOT_FOUND"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [reasonCopy isEqualToString:@"NO_WORKFLOWS"];
  }

  return v4;
}

- (void)setHasRunWorkflowIntentWorkflowUnsupportedReason:(BOOL)reason
{
  v3 = 0x100000000000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFFFFFFFFFFLL | v3);
}

- (void)setRunWorkflowIntentWorkflowUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFEFFFFFFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x100000000000);
    self->_runWorkflowIntentWorkflowUnsupportedReason = reason;
  }
}

- (int)StringAsSetTaskAttributeIntentTemporalEventTriggerUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  v4 = 1;
  if (([reasonCopy isEqualToString:@"TIME_IN_PAST"] & 1) == 0)
  {
    if ([reasonCopy isEqualToString:@"INVALID_RECURRENCE"])
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

- (void)setHasSetTaskAttributeIntentTemporalEventTriggerUnsupportedReason:(BOOL)reason
{
  v3 = 0x80000000000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3);
}

- (void)setSetTaskAttributeIntentTemporalEventTriggerUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFF7FFFFFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x80000000000);
    self->_setTaskAttributeIntentTemporalEventTriggerUnsupportedReason = reason;
  }
}

- (int)StringAsAddTasksIntentTemporalEventTriggerUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  v4 = 1;
  if (([reasonCopy isEqualToString:@"TIME_IN_PAST"] & 1) == 0)
  {
    if ([reasonCopy isEqualToString:@"INVALID_RECURRENCE"])
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

- (void)setHasAddTasksIntentTemporalEventTriggerUnsupportedReason:(BOOL)reason
{
  v3 = 0x40000000000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3);
}

- (void)setAddTasksIntentTemporalEventTriggerUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFBFFFFFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x40000000000);
    self->_addTasksIntentTemporalEventTriggerUnsupportedReason = reason;
  }
}

- (void)setHasSnoozeTasksIntentTaskUnsupportedReason:(BOOL)reason
{
  v3 = 0x20000000000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3);
}

- (void)setSnoozeTasksIntentTaskUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFDFFFFFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x20000000000);
    self->_snoozeTasksIntentTaskUnsupportedReason = reason;
  }
}

- (int)StringAsDeleteTasksIntentTaskUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  v4 = 1;
  if (([reasonCopy isEqualToString:@"NO_TASKS_FOUND"] & 1) == 0)
  {
    if ([reasonCopy isEqualToString:@"NO_TASKS_IN_APP"])
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

- (void)setHasDeleteTasksIntentTaskUnsupportedReason:(BOOL)reason
{
  v3 = 0x10000000000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)setDeleteTasksIntentTaskUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFEFFFFFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x10000000000);
    self->_deleteTasksIntentTaskUnsupportedReason = reason;
  }
}

- (void)setHasDeleteTasksIntentTaskListUnsupportedReason:(BOOL)reason
{
  v3 = 0x8000000000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (void)setDeleteTasksIntentTaskListUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFF7FFFFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x8000000000);
    self->_deleteTasksIntentTaskListUnsupportedReason = reason;
  }
}

- (int)StringAsSetTimerAttributeIntentTargetTimerUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"NOT_FOUND"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [reasonCopy isEqualToString:@"NO_TIMERS"];
  }

  return v4;
}

- (void)setHasSetTimerAttributeIntentTargetTimerUnsupportedReason:(BOOL)reason
{
  v3 = 0x4000000000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3);
}

- (void)setSetTimerAttributeIntentTargetTimerUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFBFFFFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x4000000000);
    self->_setTimerAttributeIntentTargetTimerUnsupportedReason = reason;
  }
}

- (void)setHasAddTasksIntentTargetTaskListMembersUnsupportedReason:(BOOL)reason
{
  v3 = 0x2000000000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3);
}

- (void)setAddTasksIntentTargetTaskListMembersUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFDFFFFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x2000000000);
    self->_addTasksIntentTargetTaskListMembersUnsupportedReason = reason;
  }
}

- (int)StringAsTargetEventUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  v4 = 1;
  if (([reasonCopy isEqualToString:@"TARGET_EVENT_NOT_FOUND"] & 1) == 0)
  {
    if ([reasonCopy isEqualToString:@"TARGET_EVENT_NOT_CREATED_BY_USER"])
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

- (void)setHasTargetEventUnsupportedReason:(BOOL)reason
{
  v3 = 0x1000000000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setTargetEventUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFEFFFFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x1000000000);
    self->_targetEventUnsupportedReason = reason;
  }
}

- (int)StringAsSaveHealthSampleIntentRecordDateUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"NO_FUTURE_DATETIME"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"NO_FUZZY_TIME"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"NO_FUZZY_DATE"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasSaveHealthSampleIntentRecordDateUnsupportedReason:(BOOL)reason
{
  v3 = 0x800000000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setSaveHealthSampleIntentRecordDateUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFF7FFFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x800000000);
    self->_saveHealthSampleIntentRecordDateUnsupportedReason = reason;
  }
}

- (int)StringAsSendAnnouncementIntentRecipientsUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"TARGET_NOT_FOUND"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"ANNOUNCING_TO_SELF"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"SPEAKER_GROUPS_NOT_SUPPORTED"])
  {
    v4 = 3;
  }

  else if ([reasonCopy isEqualToString:@"INTERCOM_DISABLED_ON_ALL_DEVICES"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasSendAnnouncementIntentRecipientsUnsupportedReason:(BOOL)reason
{
  v3 = 0x400000000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setSendAnnouncementIntentRecipientsUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFBFFFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x400000000);
    self->_sendAnnouncementIntentRecipientsUnsupportedReason = reason;
  }
}

- (int)StringAsSendMessageIntentRecipientUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"NO_ACCOUNT"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"OFFLINE"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"MESSAGING_SERVICE_NOT_ENABLED_FOR_RECIPIENT"])
  {
    v4 = 3;
  }

  else if ([reasonCopy isEqualToString:@"NO_VALID_HANDLE"])
  {
    v4 = 4;
  }

  else if ([reasonCopy isEqualToString:@"REQUESTED_HANDLE_INVALID"])
  {
    v4 = 5;
  }

  else if ([reasonCopy isEqualToString:@"NO_HANDLE_FOR_LABEL"])
  {
    v4 = 6;
  }

  else if ([reasonCopy isEqualToString:@"SCREEN_TIME_RESTRICTION_ENABLED"])
  {
    v4 = 7;
  }

  else if ([reasonCopy isEqualToString:@"NOT_A_MEMBER_OF_CONVERSATION"])
  {
    v4 = 8;
  }

  else if ([reasonCopy isEqualToString:@"DOWN_TIME_RESTRICTION_ENABLED"])
  {
    v4 = 9;
  }

  else if ([reasonCopy isEqualToString:@"REQUIRING_IN_APP_AUTHENTICATION"])
  {
    v4 = 10;
  }

  else if ([reasonCopy isEqualToString:@"BLOCKED"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasSendMessageIntentRecipientUnsupportedReason:(BOOL)reason
{
  v3 = 0x200000000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setSendMessageIntentRecipientUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFDFFFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x200000000);
    self->_sendMessageIntentRecipientUnsupportedReason = reason;
  }
}

- (int)StringAsStopShareETAIntentRecipientUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"NO_RECIPIENTS"])
  {
    v4 = 0;
  }

  else if ([reasonCopy isEqualToString:@"CONTACT_ID_MISSING"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"CONTACT_NOT_FOUND"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"CONTACT_HANDLE_MISSING"])
  {
    v4 = 3;
  }

  else if ([reasonCopy isEqualToString:@"CONTACT_SHARED_TRIP_FAILED"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasStopShareETAIntentRecipientUnsupportedReason:(BOOL)reason
{
  v3 = 0x100000000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setStopShareETAIntentRecipientUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFEFFFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x100000000);
    self->_stopShareETAIntentRecipientUnsupportedReason = reason;
  }
}

- (int)StringAsShareETAIntentRecipientUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"NO_RECIPIENTS"])
  {
    v4 = 0;
  }

  else if ([reasonCopy isEqualToString:@"CONTACT_ID_MISSING"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"CONTACT_NOT_FOUND"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"CONTACT_HANDLE_MISSING"])
  {
    v4 = 3;
  }

  else if ([reasonCopy isEqualToString:@"CONTACT_SHARED_TRIP_FAILED"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasShareETAIntentRecipientUnsupportedReason:(BOOL)reason
{
  v3 = 0x80000000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setShareETAIntentRecipientUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFF7FFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x80000000);
    self->_shareETAIntentRecipientUnsupportedReason = reason;
  }
}

- (int)StringAsReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"None"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"NotNow"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"NotHere"])
  {
    v4 = 3;
  }

  else if ([reasonCopy isEqualToString:@"ConflictWithOtherFields"])
  {
    v4 = 4;
  }

  else if ([reasonCopy isEqualToString:@"UnsupportedReasonExtension"])
  {
    v4 = 1000;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasReason:(BOOL)reason
{
  v3 = 0x40000000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFBFFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x40000000);
    self->_reason = reason;
  }
}

- (int)StringAsStartCallIntentPreferredCallProviderUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"TELEPHONY_UNSUPPORTED"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"CALL_PROVIDER_NOT_ACCESSIBLE"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"EMERGENCY_CALL_PROVIDER_NOT_ACCESSIBLE"])
  {
    v4 = 3;
  }

  else if ([reasonCopy isEqualToString:@"SETTINGS_RESTRICTED"])
  {
    v4 = 4;
  }

  else if ([reasonCopy isEqualToString:@"ACCOUNT_SETUP_REQUIRED"])
  {
    v4 = 5;
  }

  else if ([reasonCopy isEqualToString:@"PROVIDER_DISABLED_IN_SETTINGS"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasStartCallIntentPreferredCallProviderUnsupportedReason:(BOOL)reason
{
  v3 = 0x20000000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setStartCallIntentPreferredCallProviderUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFDFFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x20000000);
    self->_startCallIntentPreferredCallProviderUnsupportedReason = reason;
  }
}

- (int)StringAsPlayMediaIntentPlaybackSpeedUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  v4 = 1;
  if (([reasonCopy isEqualToString:@"BELOW_MINIMUM"] & 1) == 0)
  {
    if ([reasonCopy isEqualToString:@"ABOVE_MAXIMUM"])
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

- (void)setHasPlayMediaIntentPlaybackSpeedUnsupportedReason:(BOOL)reason
{
  v3 = 0x10000000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setPlayMediaIntentPlaybackSpeedUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFEFFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x10000000);
    self->_playMediaIntentPlaybackSpeedUnsupportedReason = reason;
  }
}

- (int)StringAsRequestPaymentIntentPayerUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"CREDENTIALS_UNVERIFIED"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"NO_ACCOUNT"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"NO_VALID_HANDLE"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasRequestPaymentIntentPayerUnsupportedReason:(BOOL)reason
{
  v3 = 0x8000000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setRequestPaymentIntentPayerUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFF7FFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x8000000);
    self->_requestPaymentIntentPayerUnsupportedReason = reason;
  }
}

- (int)StringAsSendPaymentIntentPayeeUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"CREDENTIALS_UNVERIFIED"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"INSUFFICIENT_FUNDS"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"NO_ACCOUNT"])
  {
    v4 = 3;
  }

  else if ([reasonCopy isEqualToString:@"NO_VALID_HANDLE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasSendPaymentIntentPayeeUnsupportedReason:(BOOL)reason
{
  v3 = 0x4000000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setSendPaymentIntentPayeeUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFBFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x4000000);
    self->_sendPaymentIntentPayeeUnsupportedReason = reason;
  }
}

- (int)StringAsAddCallParticipantIntentParticipantsUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"NO_CONTACT_FOUND"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"MULTIPLE_CONTACTS_UNSUPPORTED"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"NO_HANDLE_FOUND"])
  {
    v4 = 3;
  }

  else if ([reasonCopy isEqualToString:@"INVALID_HANDLE"])
  {
    v4 = 4;
  }

  else if ([reasonCopy isEqualToString:@"LOCAL_EMERGENCY"])
  {
    v4 = 5;
  }

  else if ([reasonCopy isEqualToString:@"FOREIGN_EMERGENCY"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasAddCallParticipantIntentParticipantsUnsupportedReason:(BOOL)reason
{
  v3 = 0x2000000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setAddCallParticipantIntentParticipantsUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFDFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x2000000);
    self->_addCallParticipantIntentParticipantsUnsupportedReason = reason;
  }
}

- (int)StringAsParticipantUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  v4 = 1;
  if (([reasonCopy isEqualToString:@"INVALID_PARTICIPANT"] & 1) == 0)
  {
    if ([reasonCopy isEqualToString:@"PARTICIPANT_NOT_FOUND"])
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

- (void)setHasParticipantUnsupportedReason:(BOOL)reason
{
  v3 = 0x1000000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setParticipantUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFEFFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x1000000);
    self->_participantUnsupportedReason = reason;
  }
}

- (int)StringAsUpdateMediaAffinityIntentMediaItemsUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"LOGIN_REQUIRED"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"SUBSCRIPTION_REQUIRED"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"UNSUPPORTED_MEDIA_TYPE"])
  {
    v4 = 3;
  }

  else if ([reasonCopy isEqualToString:@"EXPLICIT_CONTENT_SETTINGS"])
  {
    v4 = 4;
  }

  else if ([reasonCopy isEqualToString:@"CELLULAR_DATA_SETTINGS"])
  {
    v4 = 5;
  }

  else if ([reasonCopy isEqualToString:@"RESTRICTED_CONTENT"])
  {
    v4 = 6;
  }

  else if ([reasonCopy isEqualToString:@"SERVICE_UNAVAILABLE"])
  {
    v4 = 7;
  }

  else if ([reasonCopy isEqualToString:@"REGION_RESTRICTION"])
  {
    v4 = 8;
  }

  else if ([reasonCopy isEqualToString:@"APP_NOT_CONFIGURED"])
  {
    v4 = 100;
  }

  else if ([reasonCopy isEqualToString:@"APP_NOT_AVAILABLE"])
  {
    v4 = 101;
  }

  else if ([reasonCopy isEqualToString:@"APP_ACCOUNT_FAILURE"])
  {
    v4 = 102;
  }

  else if ([reasonCopy isEqualToString:@"APP_DOESNT_SUPPORT_INTENT"])
  {
    v4 = 103;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasUpdateMediaAffinityIntentMediaItemsUnsupportedReason:(BOOL)reason
{
  v3 = 0x800000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setUpdateMediaAffinityIntentMediaItemsUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFF7FFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x800000);
    self->_updateMediaAffinityIntentMediaItemsUnsupportedReason = reason;
  }
}

- (int)StringAsSearchForMediaIntentMediaItemsUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"LOGIN_REQUIRED"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"SUBSCRIPTION_REQUIRED"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"UNSUPPORTED_MEDIA_TYPE"])
  {
    v4 = 3;
  }

  else if ([reasonCopy isEqualToString:@"EXPLICIT_CONTENT_SETTINGS"])
  {
    v4 = 4;
  }

  else if ([reasonCopy isEqualToString:@"CELLULAR_DATA_SETTINGS"])
  {
    v4 = 5;
  }

  else if ([reasonCopy isEqualToString:@"RESTRICTED_CONTENT"])
  {
    v4 = 6;
  }

  else if ([reasonCopy isEqualToString:@"SERVICE_UNAVAILABLE"])
  {
    v4 = 7;
  }

  else if ([reasonCopy isEqualToString:@"REGION_RESTRICTION"])
  {
    v4 = 8;
  }

  else if ([reasonCopy isEqualToString:@"APP_NOT_CONFIGURED"])
  {
    v4 = 100;
  }

  else if ([reasonCopy isEqualToString:@"APP_NOT_AVAILABLE"])
  {
    v4 = 101;
  }

  else if ([reasonCopy isEqualToString:@"APP_ACCOUNT_FAILURE"])
  {
    v4 = 102;
  }

  else if ([reasonCopy isEqualToString:@"APP_DOESNT_SUPPORT_INTENT"])
  {
    v4 = 103;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasSearchForMediaIntentMediaItemsUnsupportedReason:(BOOL)reason
{
  v3 = 0x400000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setSearchForMediaIntentMediaItemsUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFBFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x400000);
    self->_searchForMediaIntentMediaItemsUnsupportedReason = reason;
  }
}

- (int)StringAsPlayMediaIntentMediaItemsUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"LOGIN_REQUIRED"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"SUBSCRIPTION_REQUIRED"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"UNSUPPORTED_MEDIA_TYPE"])
  {
    v4 = 3;
  }

  else if ([reasonCopy isEqualToString:@"EXPLICIT_CONTENT_SETTINGS"])
  {
    v4 = 4;
  }

  else if ([reasonCopy isEqualToString:@"CELLULAR_DATA_SETTINGS"])
  {
    v4 = 5;
  }

  else if ([reasonCopy isEqualToString:@"RESTRICTED_CONTENT"])
  {
    v4 = 6;
  }

  else if ([reasonCopy isEqualToString:@"SERVICE_UNAVAILABLE"])
  {
    v4 = 7;
  }

  else if ([reasonCopy isEqualToString:@"REGION_RESTRICTION"])
  {
    v4 = 8;
  }

  else if ([reasonCopy isEqualToString:@"NOT_DOWNLOADED_FOR_OFFLINE"])
  {
    v4 = 9;
  }

  else if ([reasonCopy isEqualToString:@"APP_NOT_CONFIGURED"])
  {
    v4 = 100;
  }

  else if ([reasonCopy isEqualToString:@"APP_NOT_AVAILABLE"])
  {
    v4 = 101;
  }

  else if ([reasonCopy isEqualToString:@"APP_ACCOUNT_FAILURE"])
  {
    v4 = 102;
  }

  else if ([reasonCopy isEqualToString:@"APP_DOESNT_SUPPORT_INTENT"])
  {
    v4 = 103;
  }

  else if ([reasonCopy isEqualToString:@"MS_LIMIT_REACHED"])
  {
    v4 = 104;
  }

  else if ([reasonCopy isEqualToString:@"MEDIA_PLAYBACK_DISABLED"])
  {
    v4 = 105;
  }

  else if ([reasonCopy isEqualToString:@"PLAYBACK_DEVICE_NOT_FOUND"])
  {
    v4 = 1000;
  }

  else if ([reasonCopy isEqualToString:@"EMPTY_LIBRARY"])
  {
    v4 = 1001;
  }

  else if ([reasonCopy isEqualToString:@"CREATE_RADIO_FAILED"])
  {
    v4 = 1002;
  }

  else if ([reasonCopy isEqualToString:@"UNSUPPORTED_PLAYBACK_QUEUE_LOCATION"])
  {
    v4 = 1003;
  }

  else if ([reasonCopy isEqualToString:@"UNSUPPORTED_PLAYBACK_QUEUE_LOCATION_WITH_LIVE_RADIO"])
  {
    v4 = 1004;
  }

  else if ([reasonCopy isEqualToString:@"STILL_LOADING_CLOUD_LIBRARY"])
  {
    v4 = 1005;
  }

  else if ([reasonCopy isEqualToString:@"ITUNES_ACCOUNT_ERROR"])
  {
    v4 = 1006;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasPlayMediaIntentMediaItemsUnsupportedReason:(BOOL)reason
{
  v3 = 0x200000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setPlayMediaIntentMediaItemsUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFDFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x200000);
    self->_playMediaIntentMediaItemsUnsupportedReason = reason;
  }
}

- (int)StringAsAddMediaIntentMediaItemsUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"LOGIN_REQUIRED"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"SUBSCRIPTION_REQUIRED"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"UNSUPPORTED_MEDIA_TYPE"])
  {
    v4 = 3;
  }

  else if ([reasonCopy isEqualToString:@"EXPLICIT_CONTENT_SETTINGS"])
  {
    v4 = 4;
  }

  else if ([reasonCopy isEqualToString:@"CELLULAR_DATA_SETTINGS"])
  {
    v4 = 5;
  }

  else if ([reasonCopy isEqualToString:@"RESTRICTED_CONTENT"])
  {
    v4 = 6;
  }

  else if ([reasonCopy isEqualToString:@"SERVICE_UNAVAILABLE"])
  {
    v4 = 7;
  }

  else if ([reasonCopy isEqualToString:@"REGION_RESTRICTION"])
  {
    v4 = 8;
  }

  else if ([reasonCopy isEqualToString:@"APP_NOT_CONFIGURED"])
  {
    v4 = 100;
  }

  else if ([reasonCopy isEqualToString:@"APP_NOT_AVAILABLE"])
  {
    v4 = 101;
  }

  else if ([reasonCopy isEqualToString:@"APP_ACCOUNT_FAILURE"])
  {
    v4 = 102;
  }

  else if ([reasonCopy isEqualToString:@"APP_DOESNT_SUPPORT_INTENT"])
  {
    v4 = 103;
  }

  else if ([reasonCopy isEqualToString:@"ALREADY_IN_LIBRARY"])
  {
    v4 = 104;
  }

  else if ([reasonCopy isEqualToString:@"CLOUD_SYNC_OFF"])
  {
    v4 = 105;
  }

  else if ([reasonCopy isEqualToString:@"GET_NOWPLAYING_FAILURE"])
  {
    v4 = 106;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasAddMediaIntentMediaItemsUnsupportedReason:(BOOL)reason
{
  v3 = 0x100000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setAddMediaIntentMediaItemsUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFEFFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x100000);
    self->_addMediaIntentMediaItemsUnsupportedReason = reason;
  }
}

- (int)StringAsAddMediaIntentMediaDestinationUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  v4 = 1;
  if (([reasonCopy isEqualToString:@"PLAYLIST_NAME_NOT_FOUND"] & 1) == 0)
  {
    if ([reasonCopy isEqualToString:@"PLAYLIST_NOT_EDITABLE"])
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

- (void)setHasAddMediaIntentMediaDestinationUnsupportedReason:(BOOL)reason
{
  v3 = 0x80000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setAddMediaIntentMediaDestinationUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFF7FFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x80000);
    self->_addMediaIntentMediaDestinationUnsupportedReason = reason;
  }
}

- (void)setHasCreateTimerIntentLabelUnsupportedReason:(BOOL)reason
{
  v3 = 0x40000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setCreateTimerIntentLabelUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFBFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x40000);
    self->_createTimerIntentLabelUnsupportedReason = reason;
  }
}

- (int)StringAsReportIncidentIntentIncidentTypeUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"UNSUPPORTED"])
  {
    v4 = 0;
  }

  else if ([reasonCopy isEqualToString:@"UNSUPPORTED_INCIDENT_TYPE"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"UNSUPPORTED_REGION"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"MAPS_LOCATION_DISABLED"])
  {
    v4 = 3;
  }

  else if ([reasonCopy isEqualToString:@"UNKNOWN_INCIDENT_TYPE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasReportIncidentIntentIncidentTypeUnsupportedReason:(BOOL)reason
{
  v3 = 0x20000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setReportIncidentIntentIncidentTypeUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFDFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x20000);
    self->_reportIncidentIntentIncidentTypeUnsupportedReason = reason;
  }
}

- (int)StringAsJoinCallIntentGroupConversationUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  v4 = 1;
  if (([reasonCopy isEqualToString:@"NO_ACTIVE_NOTIFICATIONS"] & 1) == 0)
  {
    if ([reasonCopy isEqualToString:@"NO_MATCHING_NOTIFICATIONS"])
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

- (void)setHasJoinCallIntentGroupConversationUnsupportedReason:(BOOL)reason
{
  v3 = 0x10000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setJoinCallIntentGroupConversationUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFEFFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x10000);
    self->_joinCallIntentGroupConversationUnsupportedReason = reason;
  }
}

- (int)StringAsFindDeviceAndPlaySoundIntentDeviceUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  v4 = 1;
  if (([reasonCopy isEqualToString:@"UNKNOWN"] & 1) == 0)
  {
    if ([reasonCopy isEqualToString:@"SERVICE_UNAVAILABLE"])
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

- (void)setHasFindDeviceAndPlaySoundIntentDeviceUnsupportedReason:(BOOL)reason
{
  v3 = 0x8000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setFindDeviceAndPlaySoundIntentDeviceUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFF7FFFLL);
  }

  else
  {
    self->_has = (*&has | 0x8000);
    self->_findDeviceAndPlaySoundIntentDeviceUnsupportedReason = reason;
  }
}

- (void)setHasDateTimeRangeUnsupportedReason:(BOOL)reason
{
  v3 = 0x4000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setDateTimeRangeUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFFBFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x4000);
    self->_dateTimeRangeUnsupportedReason = reason;
  }
}

- (void)setHasCustomUnsupportedReason:(BOOL)reason
{
  v3 = 0x2000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (int)StringAsSendPaymentIntentCurrencyAmountUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"PAYMENTS_AMOUNT_BELOW_MINIMUM"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"PAYMENTS_AMOUNT_ABOVE_MAXIMUM"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"PAYMENTS_CURRENCY_UNSUPPORTED"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasSendPaymentIntentCurrencyAmountUnsupportedReason:(BOOL)reason
{
  v3 = 4096;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setSendPaymentIntentCurrencyAmountUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFFEFFFLL);
  }

  else
  {
    self->_has = (*&has | 0x1000);
    self->_sendPaymentIntentCurrencyAmountUnsupportedReason = reason;
  }
}

- (int)StringAsRequestPaymentIntentCurrencyAmountUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"PAYMENTS_AMOUNT_BELOW_MINIMUM"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"PAYMENTS_AMOUNT_ABOVE_MAXIMUM"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"PAYMENTS_CURRENCY_UNSUPPORTED"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasRequestPaymentIntentCurrencyAmountUnsupportedReason:(BOOL)reason
{
  v3 = 2048;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setRequestPaymentIntentCurrencyAmountUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFFF7FFLL);
  }

  else
  {
    self->_has = (*&has | 0x800);
    self->_requestPaymentIntentCurrencyAmountUnsupportedReason = reason;
  }
}

- (int)StringAsStartCallIntentContactsUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"NO_CONTACT_FOUND"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"MULTIPLE_CONTACTS_UNSUPPORTED"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"NO_HANDLE_FOR_LABEL"])
  {
    v4 = 3;
  }

  else if ([reasonCopy isEqualToString:@"INVALID_HANDLE"])
  {
    v4 = 4;
  }

  else if ([reasonCopy isEqualToString:@"UNSUPPORTED_MMI_USSD"])
  {
    v4 = 5;
  }

  else if ([reasonCopy isEqualToString:@"NO_CALL_HISTORY_FOR_REDIAL"])
  {
    v4 = 6;
  }

  else if ([reasonCopy isEqualToString:@"NO_USABLE_HANDLE_FOR_REDIAL"])
  {
    v4 = 7;
  }

  else if ([reasonCopy isEqualToString:@"FOREIGN_EMERGENCY_DISAMBIGUATION"])
  {
    v4 = 8;
  }

  else if ([reasonCopy isEqualToString:@"REQUIRING_IN_APP_AUTHENTICATION"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasStartCallIntentContactsUnsupportedReason:(BOOL)reason
{
  v3 = 1024;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setStartCallIntentContactsUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFFFBFFLL);
  }

  else
  {
    self->_has = (*&has | 0x400);
    self->_startCallIntentContactsUnsupportedReason = reason;
  }
}

- (int)StringAsSetTaskAttributeIntentContactEventTriggerUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  v4 = 1;
  if (([reasonCopy isEqualToString:@"ACCOUNT_DOES_NOT_SUPPORT"] & 1) == 0)
  {
    if ([reasonCopy isEqualToString:@"CLOUDKIT_NOT_UPGRADED"])
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

- (void)setHasSetTaskAttributeIntentContactEventTriggerUnsupportedReason:(BOOL)reason
{
  v3 = 512;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setSetTaskAttributeIntentContactEventTriggerUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFFFDFFLL);
  }

  else
  {
    self->_has = (*&has | 0x200);
    self->_setTaskAttributeIntentContactEventTriggerUnsupportedReason = reason;
  }
}

- (int)StringAsAddTasksIntentContactEventTriggerUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  v4 = 1;
  if (([reasonCopy isEqualToString:@"ACCOUNT_DOES_NOT_SUPPORT"] & 1) == 0)
  {
    if ([reasonCopy isEqualToString:@"CLOUDKIT_NOT_UPGRADED"])
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

- (void)setHasAddTasksIntentContactEventTriggerUnsupportedReason:(BOOL)reason
{
  v3 = 256;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setAddTasksIntentContactEventTriggerUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFFFEFFLL);
  }

  else
  {
    self->_has = (*&has | 0x100);
    self->_addTasksIntentContactEventTriggerUnsupportedReason = reason;
  }
}

- (void)addConflictingParameters:(id)parameters
{
  parametersCopy = parameters;
  conflictingParameters = self->_conflictingParameters;
  v8 = parametersCopy;
  if (!conflictingParameters)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_conflictingParameters;
    self->_conflictingParameters = array;

    parametersCopy = v8;
    conflictingParameters = self->_conflictingParameters;
  }

  [(NSArray *)conflictingParameters addObject:parametersCopy];
}

- (void)setConflictingParameters:(id)parameters
{
  v4 = [parameters mutableCopy];
  conflictingParameters = self->_conflictingParameters;
  self->_conflictingParameters = v4;

  MEMORY[0x1EEE66BB8](v4, conflictingParameters);
}

- (void)setHasStartCallIntentCallRecordToCallBackUnsupportedReason:(BOOL)reason
{
  v3 = 128;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setStartCallIntentCallRecordToCallBackUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFFFF7FLL);
  }

  else
  {
    self->_has = (*&has | 0x80);
    self->_startCallIntentCallRecordToCallBackUnsupportedReason = reason;
  }
}

- (int)StringAsStartCallIntentCallCapabilityUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"VIDEO_CALL_UNSUPPORTED"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"MICROPHONE_NOT_ACCESSIBLE"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"CAMERA_NOT_ACCESSIBLE"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasStartCallIntentCallCapabilityUnsupportedReason:(BOOL)reason
{
  v3 = 64;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setStartCallIntentCallCapabilityUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFFFFBFLL);
  }

  else
  {
    self->_has = (*&has | 0x40);
    self->_startCallIntentCallCapabilityUnsupportedReason = reason;
  }
}

- (void)setHasSendAnnouncementIntentAnnouncementUnsupportedReason:(BOOL)reason
{
  v3 = 32;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setSendAnnouncementIntentAnnouncementUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFFFFDFLL);
  }

  else
  {
    self->_has = (*&has | 0x20);
    self->_sendAnnouncementIntentAnnouncementUnsupportedReason = reason;
  }
}

- (int)StringAsSnoozeAlarmIntentAlarmsUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"NO_ALARM_FIRING"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [reasonCopy isEqualToString:@"CANT_SNOOZE_MUSIC_ALARM"];
  }

  return v4;
}

- (void)setHasSnoozeAlarmIntentAlarmsUnsupportedReason:(BOOL)reason
{
  v3 = 16;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setSnoozeAlarmIntentAlarmsUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFFFFEFLL);
  }

  else
  {
    self->_has = (*&has | 0x10);
    self->_snoozeAlarmIntentAlarmsUnsupportedReason = reason;
  }
}

- (int)StringAsSearchAlarmIntentAlarmsUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"NOT_FOUND"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [reasonCopy isEqualToString:@"NO_ALARM_EXISTS"];
  }

  return v4;
}

- (void)setHasSearchAlarmIntentAlarmsUnsupportedReason:(BOOL)reason
{
  v3 = 8;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setSearchAlarmIntentAlarmsUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFFFFF7);
  }

  else
  {
    self->_has = (*&has | 8);
    self->_searchAlarmIntentAlarmsUnsupportedReason = reason;
  }
}

- (int)StringAsDeleteAlarmIntentAlarmsUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"NOT_FOUND"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [reasonCopy isEqualToString:@"NO_ALARM_EXISTS"];
  }

  return v4;
}

- (void)setHasDeleteAlarmIntentAlarmsUnsupportedReason:(BOOL)reason
{
  v3 = 4;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setDeleteAlarmIntentAlarmsUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFFFFFBLL);
  }

  else
  {
    self->_has = (*&has | 4);
    self->_deleteAlarmIntentAlarmsUnsupportedReason = reason;
  }
}

- (int)StringAsChangeAlarmStatusIntentAlarmsUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"NOT_FOUND"])
  {
    v4 = 0;
  }

  else if ([reasonCopy isEqualToString:@"NO_ALARM_EXISTS"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"ALARM_ALREADY_ENABLED"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"ALARM_ALREADY_DISABLED"])
  {
    v4 = 3;
  }

  else if ([reasonCopy isEqualToString:@"ALARM_NOT_FIRING"])
  {
    v4 = 4;
  }

  else if ([reasonCopy isEqualToString:@"SLEEP_ALARM_NOT_SUPPORTED"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasChangeAlarmStatusIntentAlarmsUnsupportedReason:(BOOL)reason
{
  v3 = 2;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setChangeAlarmStatusIntentAlarmsUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFFFFFDLL);
  }

  else
  {
    self->_has = (*&has | 2);
    self->_changeAlarmStatusIntentAlarmsUnsupportedReason = reason;
  }
}

- (int)StringAsUpdateAlarmIntentAlarmUnsupportedReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"NOT_FOUND"])
  {
    v4 = 0;
  }

  else if ([reasonCopy isEqualToString:@"NO_ALARM_EXISTS"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"SLEEP_ALARM_NOT_SUPPORTED"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setUpdateAlarmIntentAlarmUnsupportedReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    self->_has = (*&has & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    self->_has = (*&has | 1);
    self->_updateAlarmIntentAlarmUnsupportedReason = reason;
  }
}

@end