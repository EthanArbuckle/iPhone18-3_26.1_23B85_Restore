@interface INIntentResolutionResult
+ (INIntentResolutionResult)confirmationRequiredWithItemToConfirm:(id)itemToConfirm forReason:(NSInteger)reason;
+ (INIntentResolutionResult)needsValue;
+ (INIntentResolutionResult)notRequired;
+ (INIntentResolutionResult)unsupported;
+ (id)_dataForResolutionMethodUnimplemented;
+ (id)_resolutionResultWithData:(id)data slotDescription:(id)description;
+ (id)requiresExecutionOfIntent:(id)intent;
+ (id)resolutionResultConfirmationRequiredWithItemToConfirm:(id)confirm;
+ (id)resolutionResultDisambiguationWithItemsToDisambiguate:(id)disambiguate;
+ (id)resolutionResultSuccessWithResolvedValue:(id)value;
+ (id)resolutionResultUnsupportedWithReason:(unint64_t)reason;
+ (id)resolutionResultUnsupportedWithReason:(unint64_t)reason alternativeItems:(id)items;
- (INIntentResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
- (id)_JSONDictionaryRepresentationForIntent:(id)intent parameterName:(id)name;
- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description;
- (id)_dataForIntentSlotDescription:(id)description;
- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description;
- (id)_initWithResolutionResult:(id)result;
- (id)_initWithResultCode:(int64_t)code;
- (id)_objectForIntentSlotValue:(id)value slotDescription:(id)description;
- (id)_stringForResultCode:(int64_t)code;
- (id)descriptionAtIndent:(unint64_t)indent;
- (id)dictionaryRepresentation;
- (id)resolutionResultDataForIntent:(id)intent intentSlotDescription:(id)description error:(id *)error;
- (void)transformResolutionResultForIntent:(id)intent intentSlotDescription:(id)description withOptionsProvider:(id)provider completion:(id)completion;
@end

@implementation INIntentResolutionResult

- (id)dictionaryRepresentation
{
  v15[5] = *MEMORY[0x1E69E9840];
  v14[0] = @"resolutionResultCode";
  v3 = [(INIntentResolutionResult *)self _stringForResultCode:[(INIntentResolutionResult *)self resolutionResultCode]];
  v15[0] = v3;
  v14[1] = @"disambiguationItems";
  disambiguationItems = self->_disambiguationItems;
  null = disambiguationItems;
  if (!disambiguationItems)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null;
  v14[2] = @"resolvedValue";
  resolvedValue = self->_resolvedValue;
  null2 = resolvedValue;
  if (!resolvedValue)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null2;
  v14[3] = @"itemToConfirm";
  itemToConfirm = self->_itemToConfirm;
  null3 = itemToConfirm;
  if (!itemToConfirm)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = null3;
  v14[4] = @"unsupportedReason";
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_unsupportedReason];
  v15[4] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:5];

  if (itemToConfirm)
  {
    if (resolvedValue)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (disambiguationItems)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!resolvedValue)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (disambiguationItems)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)_dataForResolutionMethodUnimplemented
{
  v2 = objc_alloc_init(_INPBIntentSlotResolutionResult);
  [(_INPBIntentSlotResolutionResult *)v2 setType:9];
  data = [(_INPBIntentSlotResolutionResult *)v2 data];

  return data;
}

- (id)_objectForIntentSlotValue:(id)value slotDescription:(id)description
{
  v60 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  descriptionCopy = description;
  valueStyle = [descriptionCopy valueStyle];
  if ([valueCopy payloadStringValuesCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadStringValues];
      INIntentSlotValueTransformFromStringValues(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadStringValueAtIndex:0];
      INIntentSlotValueTransformFromStringValue(payloadStringValues);
    }

    v48 = LABEL_564:;
    v13 = v48;
    goto LABEL_67;
  }

  if ([valueCopy payloadDoubleValuesCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadDoubleValues];
      INIntentSlotValueTransformFromDoubleValues(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadDoubleValueAtIndex:0];
      INIntentSlotValueTransformFromDoubleValue(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadIntegerValuesCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadIntegerValues];
      INIntentSlotValueTransformFromIntegerValues(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadIntegerValueAtIndex:0];
      INIntentSlotValueTransformFromIntegerValue(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadContactValuesCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadContactValues];
      INIntentSlotValueTransformFromContactValues(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadContactValueAtIndex:0];
      INIntentSlotValueTransformFromContactValueWithAlternatives(payloadStringValues, 0);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadDateTimeRangeValuesCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadDateTimeRangeValues];
      INIntentSlotValueTransformFromDateTimeRangeValues(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadDateTimeRangeValueAtIndex:0];
      INIntentSlotValueTransformFromDateTimeRangeValue(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadLocationsCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadLocations];
      INIntentSlotValueTransformFromLocationValues(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadLocationAtIndex:0];
      INIntentSlotValueTransformFromLocationValue(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadDataStringsCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadDataStrings];
      INIntentSlotValueTransformFromDataStrings(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadDataStringAtIndex:0];
      INIntentSlotValueTransformFromDataString(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadLongValuesCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadLongValues];
      INIntentSlotValueTransformFromLongValues(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadLongValueAtIndex:0];
      INIntentSlotValueTransformFromLongValue(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadPaymentMethodValuesCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadPaymentMethodValues];
      INIntentSlotValueTransformFromPaymentMethodValues(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadPaymentMethodValueAtIndex:0];
      INIntentSlotValueTransformFromPaymentMethodValue(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadTemperatureValuesCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadTemperatureValues];
      INIntentSlotValueTransformFromTemperatureValues(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadTemperatureValueAtIndex:0];
      INIntentSlotValueTransformFromTemperatureValue(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadDistanceValuesCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadDistanceValues];
      INIntentSlotValueTransformFromDistanceValues(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadDistanceValueAtIndex:0];
      INIntentSlotValueTransformFromDistanceValue(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadDateTimeValuesCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadDateTimeValues];
      INIntentSlotValueTransformFromDateTimes(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadDateTimeValueAtIndex:0];
      INIntentSlotValueTransformFromDateTime(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadMassValuesCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadMassValues];
      INIntentSlotValueTransformFromMassValues(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadMassValueAtIndex:0];
      INIntentSlotValueTransformFromMassValue(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadVolumeValuesCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadVolumeValues];
      INIntentSlotValueTransformFromVolumeValues(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadVolumeValueAtIndex:0];
      INIntentSlotValueTransformFromVolumeValue(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadSpeedValuesCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadSpeedValues];
      INIntentSlotValueTransformFromSpeedValues(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadSpeedValueAtIndex:0];
      INIntentSlotValueTransformFromSpeedValue(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadEnergyValuesCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadEnergyValues];
      INIntentSlotValueTransformFromEnergyValues(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadEnergyValueAtIndex:0];
      INIntentSlotValueTransformFromEnergyValue(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadStringListsCount])
  {
    payloadStringValues = [valueCopy payloadStringListAtIndex:0];
    dataStrings = [(INStartCallRequestMetadata *)payloadStringValues dataStrings];
    v10 = INIntentSlotValueTransformFromStrings(dataStrings);
LABEL_91:
    v13 = v10;

LABEL_67:
    goto LABEL_68;
  }

  if ([valueCopy payloadDoubleListsCount])
  {
    payloadStringValues = [valueCopy payloadDoubleListAtIndex:0];
    dataStrings = [(INStartCallRequestMetadata *)payloadStringValues dataStrings];
    v10 = INIntentSlotValueTransformFromDoubles(dataStrings);
    goto LABEL_91;
  }

  if ([valueCopy payloadIntegerListsCount])
  {
    payloadStringValues = [valueCopy payloadIntegerListAtIndex:0];
    dataStrings = [(INStartCallRequestMetadata *)payloadStringValues dataStrings];
    v10 = INIntentSlotValueTransformFromIntegers(dataStrings);
    goto LABEL_91;
  }

  if ([valueCopy payloadContactListsCount])
  {
    payloadStringValues = [valueCopy payloadContactListAtIndex:0];
    dataStrings = [(INStartCallRequestMetadata *)payloadStringValues contacts];
    v10 = INIntentSlotValueTransformFromContacts(dataStrings);
    goto LABEL_91;
  }

  if ([valueCopy payloadDateTimeRangeListsCount])
  {
    payloadStringValues = [valueCopy payloadDateTimeRangeListAtIndex:0];
    dataStrings = [(INStartCallRequestMetadata *)payloadStringValues dateRanges];
    v10 = INIntentSlotValueTransformFromDateTimeRanges(dataStrings);
    goto LABEL_91;
  }

  if ([valueCopy payloadLocationListsCount])
  {
    payloadStringValues = [valueCopy payloadLocationListAtIndex:0];
    dataStrings = [(INStartCallRequestMetadata *)payloadStringValues locations];
    v10 = INIntentSlotValueTransformFromLocations(dataStrings);
    goto LABEL_91;
  }

  if ([valueCopy payloadDataStringListsCount])
  {
    payloadStringValues = [valueCopy payloadDataStringListAtIndex:0];
    dataStrings = [(INStartCallRequestMetadata *)payloadStringValues dataStrings];
    v10 = INIntentSlotValueTransformFromDataStrings(dataStrings);
    goto LABEL_91;
  }

  if ([valueCopy payloadLongListsCount])
  {
    payloadStringValues = [valueCopy payloadLongListAtIndex:0];
    dataStrings = [(INStartCallRequestMetadata *)payloadStringValues dataStrings];
    v10 = INIntentSlotValueTransformFromLongs(dataStrings);
    goto LABEL_91;
  }

  if ([valueCopy payloadPaymentMethodListsCount])
  {
    payloadStringValues = [valueCopy payloadPaymentMethodListAtIndex:0];
    dataStrings = [(INStartCallRequestMetadata *)payloadStringValues paymentMethods];
    v10 = INIntentSlotValueTransformFromPaymentMethods(dataStrings);
    goto LABEL_91;
  }

  if ([valueCopy payloadTemperatureListsCount])
  {
    payloadStringValues = [valueCopy payloadTemperatureListAtIndex:0];
    dataStrings = [(INStartCallRequestMetadata *)payloadStringValues temperatures];
    v10 = INIntentSlotValueTransformFromTemperatures(dataStrings);
    goto LABEL_91;
  }

  if ([valueCopy payloadDistanceListsCount])
  {
    payloadStringValues = [valueCopy payloadDistanceListAtIndex:0];
    dataStrings = [(INStartCallRequestMetadata *)payloadStringValues distances];
    v10 = INIntentSlotValueTransformFromDistances(dataStrings);
    goto LABEL_91;
  }

  if ([valueCopy payloadPrimitiveBoolsCount])
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(valueCopy, "payloadPrimitiveBoolAtIndex:", 0)}];
LABEL_102:
    v13 = v14;
    goto LABEL_68;
  }

  if ([valueCopy payloadPrimitiveIntsCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadPrimitiveIntAtIndex:0];
LABEL_96:
    v14 = [v15 numberWithInt:v16];
    goto LABEL_102;
  }

  if ([valueCopy payloadPrimitiveLongsCount])
  {
    v17 = MEMORY[0x1E696AD98];
    v18 = [valueCopy payloadPrimitiveLongAtIndex:0];
LABEL_99:
    v14 = [v17 numberWithLongLong:v18];
    goto LABEL_102;
  }

  if ([valueCopy payloadPrimitiveDoublesCount])
  {
    v19 = MEMORY[0x1E696AD98];
    [valueCopy payloadPrimitiveDoubleAtIndex:0];
    v14 = [v19 numberWithDouble:?];
    goto LABEL_102;
  }

  if ([valueCopy payloadPrimitiveStringsCount])
  {
    if (valueStyle == 3)
    {
      [valueCopy payloadPrimitiveStrings];
    }

    else
    {
      [valueCopy payloadPrimitiveStringAtIndex:0];
    }

    v14 = LABEL_106:;
    goto LABEL_102;
  }

  if ([valueCopy payloadIntentsCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadIntents];
      INIntentSlotValueTransformFromIntents(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadIntentAtIndex:0];
      INIntentSlotValueTransformFromIntent(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadModifyRelationshipsCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadModifyRelationships];
      INIntentSlotValueTransformFromModifyRelationships(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadModifyRelationshipAtIndex:0];
      INIntentSlotValueTransformFromModifyRelationship(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadModifyNicknamesCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadModifyNicknames];
      INIntentSlotValueTransformFromModifyNicknames(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadModifyNicknameAtIndex:0];
      INIntentSlotValueTransformFromModifyNickname(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadCalendarEventsCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadCalendarEvents];
      INIntentSlotValueTransformFromCalendarEvents(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadCalendarEventAtIndex:0];
      INIntentSlotValueTransformFromCalendarEvent(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadEventParticipantsCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadEventParticipants];
      INIntentSlotValueTransformFromEventParticipants(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadEventParticipantAtIndex:0];
      INIntentSlotValueTransformFromEventParticipant(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadEventAttributesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadEventAttributeAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadEnumerationsCount])
  {
    v17 = MEMORY[0x1E696AD98];
    v18 = [valueCopy payloadEnumerationAtIndex:0];
    goto LABEL_99;
  }

  if ([valueCopy payloadAlarmsCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadAlarms];
      INIntentSlotValueTransformFromAlarms(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadAlarmAtIndex:0];
      INIntentSlotValueTransformFromAlarm(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadAlarmPeriodsCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadAlarmPeriodAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadAlarmRepeatSchedulesCount])
  {
    if (valueStyle != 3)
    {
      v15 = MEMORY[0x1E696AD98];
      v16 = [valueCopy payloadAlarmRepeatScheduleAtIndex:0];
      goto LABEL_96;
    }

    v58 = 0;
    if ([valueCopy payloadAlarmRepeatSchedulesCount])
    {
      v20 = 0;
      do
      {
        INAlarmRepeatScheduleOptionsAddBackingType(&v58, [valueCopy payloadAlarmRepeatScheduleAtIndex:v20++]);
      }

      while (v20 < [valueCopy payloadAlarmRepeatSchedulesCount]);
LABEL_557:
      v34 = v58;
LABEL_559:
      v33 = MEMORY[0x1E696AD98];
      goto LABEL_560;
    }

    goto LABEL_558;
  }

  if ([valueCopy payloadAlarmSearchsCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadAlarmSearchs];
      INIntentSlotValueTransformFromAlarmSearchs(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadAlarmSearchAtIndex:0];
      INIntentSlotValueTransformFromAlarmSearch(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadAlarmSearchTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadAlarmSearchTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadChangeAlarmStatusOperationsCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadChangeAlarmStatusOperationAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadSleepAlarmAttributesCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadSleepAlarmAttributes];
      INIntentSlotValueTransformFromSleepAlarmAttributes(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadSleepAlarmAttributeAtIndex:0];
      INIntentSlotValueTransformFromSleepAlarmAttribute(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadUpdateAlarmOperationsCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadUpdateAlarmOperationAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadCallAudioRoutesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadCallAudioRouteAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadCallCapabilitiesCount])
  {
    if (valueStyle != 3)
    {
      v15 = MEMORY[0x1E696AD98];
      v16 = [valueCopy payloadCallCapabilityAtIndex:0];
      goto LABEL_96;
    }

    v21 = 0;
    if ([valueCopy payloadCallCapabilitiesCount])
    {
      v22 = 0;
      do
      {
        v23 = [valueCopy payloadCallCapabilityAtIndex:v22];
        v24 = v21 | 1;
        if (v23 != 1)
        {
          v24 = v21;
        }

        if (v23 == 2)
        {
          v21 |= 2uLL;
        }

        else
        {
          v21 = v24;
        }

        ++v22;
      }

      while (v22 < [valueCopy payloadCallCapabilitiesCount]);
    }

    goto LABEL_369;
  }

  if ([valueCopy payloadCallDestinationTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadCallDestinationTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadCallGroupsCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadCallGroups];
      INIntentSlotValueTransformFromCallGroups(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadCallGroupAtIndex:0];
      INIntentSlotValueTransformFromCallGroup(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadCallGroupConversationsCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadCallGroupConversations];
      INIntentSlotValueTransformFromCallGroupConversations(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadCallGroupConversationAtIndex:0];
      INIntentSlotValueTransformFromCallGroupConversation(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadCallRecordFiltersCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadCallRecordFilters];
      INIntentSlotValueTransformFromCallRecordFilters(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadCallRecordFilterAtIndex:0];
      INIntentSlotValueTransformFromCallRecordFilter(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadCallRecordTypesCount])
  {
    if (valueStyle != 3)
    {
      v15 = MEMORY[0x1E696AD98];
      v16 = [valueCopy payloadCallRecordTypeAtIndex:0];
      goto LABEL_96;
    }

    v58 = 0;
    if ([valueCopy payloadCallRecordTypesCount])
    {
      v25 = 0;
      do
      {
        INCallRecordTypeOptionsAddBackingType(&v58, [valueCopy payloadCallRecordTypeAtIndex:v25++]);
      }

      while (v25 < [valueCopy payloadCallRecordTypesCount]);
      goto LABEL_557;
    }

LABEL_558:
    v34 = 0;
    goto LABEL_559;
  }

  if ([valueCopy payloadCallRecordValuesCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadCallRecordValues];
      INIntentSlotValueTransformFromCallRecordValues(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadCallRecordValueAtIndex:0];
      INIntentSlotValueTransformFromCallRecordValue(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadDialingContactsCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadDialingContacts];
      INIntentSlotValueTransformFromDialingContacts(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadDialingContactAtIndex:0];
      INIntentSlotValueTransformFromDialingContact(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadPreferredCallProvidersCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadPreferredCallProviderAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadStartCallRequestMetadatasCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadStartCallRequestMetadatas];
      INIntentSlotValueTransformFromStartCallRequestMetadatas(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadStartCallRequestMetadataAtIndex:0];
      INIntentSlotValueTransformFromStartCallRequestMetadata(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadCarAirCirculationModesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadCarAirCirculationModeAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadCarAudioSourcesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadCarAudioSourceAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadCarDefrostersCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadCarDefrosterAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadCarSeatsCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadCarSeatAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadCarSignalIdentifiersCount])
  {
    if (valueStyle != 3)
    {
      v15 = MEMORY[0x1E696AD98];
      v16 = [valueCopy payloadCarSignalIdentifierAtIndex:0];
      goto LABEL_96;
    }

    v21 = 0;
    if ([valueCopy payloadCarSignalIdentifiersCount])
    {
      v26 = 0;
      do
      {
        v27 = [valueCopy payloadCarSignalIdentifierAtIndex:v26];
        v28 = v21 | 1;
        if (v27 != 1)
        {
          v28 = v21;
        }

        if (v27 == 2)
        {
          v21 |= 2uLL;
        }

        else
        {
          v21 = v28;
        }

        ++v26;
      }

      while (v26 < [valueCopy payloadCarSignalIdentifiersCount]);
    }

    goto LABEL_369;
  }

  if ([valueCopy payloadChargingConnectorTypesCount])
  {
    if (valueStyle == 3)
    {
      [valueCopy payloadChargingConnectorTypes];
    }

    else
    {
      [valueCopy payloadChargingConnectorTypeAtIndex:0];
    }

    goto LABEL_106;
  }

  if ([valueCopy payloadRelativeReferencesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadRelativeReferenceAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadRelativeSettingsCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadRelativeSettingAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadDeviceDetailsCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadDeviceDetails];
      INIntentSlotValueTransformFromDeviceDetails(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadDeviceDetailAtIndex:0];
      INIntentSlotValueTransformFromDeviceDetail(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadSupportedTrafficIncidentTypesCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadSupportedTrafficIncidentTypes];
      INIntentSlotValueTransformFromSupportedTrafficIncidentTypes(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadSupportedTrafficIncidentTypeAtIndex:0];
      INIntentSlotValueTransformFromSupportedTrafficIncidentType(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadHomeAttributesCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadHomeAttributes];
      INIntentSlotValueTransformFromHomeAttributes(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadHomeAttributeAtIndex:0];
      INIntentSlotValueTransformFromHomeAttribute(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadHomeAttributeTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadHomeAttributeTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadHomeAttributeValueTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadHomeAttributeValueTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadHomeDeviceTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadHomeDeviceTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadHomeEntitiesCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadHomeEntities];
      INIntentSlotValueTransformFromHomeEntities(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadHomeEntityAtIndex:0];
      INIntentSlotValueTransformFromHomeEntity(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadHomeEntityTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadHomeEntityTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadHomeFiltersCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadHomeFilters];
      INIntentSlotValueTransformFromHomeFilters(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadHomeFilterAtIndex:0];
      INIntentSlotValueTransformFromHomeFilter(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadHomeUserTasksCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadHomeUserTasks];
      INIntentSlotValueTransformFromHomeUserTasks(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadHomeUserTaskAtIndex:0];
      INIntentSlotValueTransformFromHomeUserTask(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadAnnouncementsCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadAnnouncements];
      INIntentSlotValueTransformFromAnnouncements(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadAnnouncementAtIndex:0];
      INIntentSlotValueTransformFromAnnouncement(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadReadActionTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadReadActionTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadUserNotificationTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadUserNotificationTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadMediaAffinityTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadMediaAffinityTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadMediaDestinationsCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadMediaDestinations];
      INIntentSlotValueTransformFromMediaDestinations(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadMediaDestinationAtIndex:0];
      INIntentSlotValueTransformFromMediaDestination(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadMediaItemGroupsCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadMediaItemGroups];
      INIntentSlotValueTransformFromMediaItemGroups(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadMediaItemGroupAtIndex:0];
      INIntentSlotValueTransformFromMediaItemGroup(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadMediaItemValuesCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadMediaItemValues];
      INIntentSlotValueTransformFromMediaItemValues(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadMediaItemValueAtIndex:0];
      INIntentSlotValueTransformFromMediaItemValue(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadMediaSearchsCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadMediaSearchs];
      INIntentSlotValueTransformFromMediaSearchs(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadMediaSearchAtIndex:0];
      INIntentSlotValueTransformFromMediaSearch(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadParsecCategoriesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadParsecCategoryAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadPlaybackQueueLocationsCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadPlaybackQueueLocationAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadPlaybackRepeatModesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadPlaybackRepeatModeAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadPrivateAddMediaIntentDatasCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadPrivateAddMediaIntentDatas];
      INIntentSlotValueTransformFromPrivateAddMediaIntentDatas(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadPrivateAddMediaIntentDataAtIndex:0];
      INIntentSlotValueTransformFromPrivateAddMediaIntentData(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadPrivatePlayMediaIntentDatasCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadPrivatePlayMediaIntentDatas];
      INIntentSlotValueTransformFromPrivatePlayMediaIntentDatas(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadPrivatePlayMediaIntentDataAtIndex:0];
      INIntentSlotValueTransformFromPrivatePlayMediaIntentData(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadPrivateSearchForMediaIntentDatasCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadPrivateSearchForMediaIntentDatas];
      INIntentSlotValueTransformFromPrivateSearchForMediaIntentDatas(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadPrivateSearchForMediaIntentDataAtIndex:0];
      INIntentSlotValueTransformFromPrivateSearchForMediaIntentData(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadPrivateUpdateMediaAffinityIntentDatasCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadPrivateUpdateMediaAffinityIntentDatas];
      INIntentSlotValueTransformFromPrivateUpdateMediaAffinityIntentDatas(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadPrivateUpdateMediaAffinityIntentDataAtIndex:0];
      INIntentSlotValueTransformFromPrivateUpdateMediaAffinityIntentData(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadRadioTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadRadioTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadContactEventTriggersCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadContactEventTriggers];
      INIntentSlotValueTransformFromContactEventTriggers(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadContactEventTriggerAtIndex:0];
      INIntentSlotValueTransformFromContactEventTrigger(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadDateSearchTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadDateSearchTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadLocationSearchTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadLocationSearchTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadNotesCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadNotes];
      INIntentSlotValueTransformFromNotes(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadNoteAtIndex:0];
      INIntentSlotValueTransformFromNote(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadNoteContentsCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadNoteContents];
      INIntentSlotValueTransformFromNoteContents(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadNoteContentAtIndex:0];
      INIntentSlotValueTransformFromNoteContent(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadNotebookItemTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadNotebookItemTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadSpatialEventTriggersCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadSpatialEventTriggers];
      INIntentSlotValueTransformFromSpatialEventTriggers(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadSpatialEventTriggerAtIndex:0];
      INIntentSlotValueTransformFromSpatialEventTrigger(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadTasksCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadTasks];
      INIntentSlotValueTransformFromTasks(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadTaskAtIndex:0];
      INIntentSlotValueTransformFromTask(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadTaskListsCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadTaskLists];
      INIntentSlotValueTransformFromTaskLists(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadTaskListAtIndex:0];
      INIntentSlotValueTransformFromTaskList(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadTaskPrioritiesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadTaskPriorityAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadTaskReferencesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadTaskReferenceAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadTaskStatusCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadTaskStatusAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadTemporalEventTriggersCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadTemporalEventTriggers];
      INIntentSlotValueTransformFromTemporalEventTriggers(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadTemporalEventTriggerAtIndex:0];
      INIntentSlotValueTransformFromTemporalEventTrigger(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadTemporalEventTriggerTypesCount])
  {
    if (valueStyle != 3)
    {
      v15 = MEMORY[0x1E696AD98];
      v16 = [valueCopy payloadTemporalEventTriggerTypeAtIndex:0];
      goto LABEL_96;
    }

    v21 = 0;
    if ([valueCopy payloadTemporalEventTriggerTypesCount])
    {
      v29 = 0;
      do
      {
        v30 = [valueCopy payloadTemporalEventTriggerTypeAtIndex:v29];
        v31 = v21 | 2;
        v32 = v21 | 1;
        if (v30 != 1)
        {
          v32 = v21;
        }

        if (v30 != 2)
        {
          v31 = v32;
        }

        if (v30 == 3)
        {
          v21 |= 4uLL;
        }

        else
        {
          v21 = v31;
        }

        ++v29;
      }

      while (v29 < [valueCopy payloadTemporalEventTriggerTypesCount]);
    }

LABEL_369:
    v33 = MEMORY[0x1E696AD98];
    v34 = v21;
LABEL_560:
    v14 = [v33 numberWithUnsignedInteger:v34];
    goto LABEL_102;
  }

  if ([valueCopy payloadAccountTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadAccountTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadBalanceTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadBalanceTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadBillDetailsValuesCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadBillDetailsValues];
      INIntentSlotValueTransformFromBillDetailsValues(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadBillDetailsValueAtIndex:0];
      INIntentSlotValueTransformFromBillDetailsValue(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadBillPayeeValuesCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadBillPayeeValues];
      INIntentSlotValueTransformFromBillPayeeValues(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadBillPayeeValueAtIndex:0];
      INIntentSlotValueTransformFromBillPayeeValue(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadBillTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadBillTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadCurrencyAmountsCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadCurrencyAmounts];
      INIntentSlotValueTransformFromCurrencyAmounts(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadCurrencyAmountAtIndex:0];
      INIntentSlotValueTransformFromCurrencyAmount(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadFinancialAccountValuesCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadFinancialAccountValues];
      INIntentSlotValueTransformFromFinancialAccountValues(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadFinancialAccountValueAtIndex:0];
      INIntentSlotValueTransformFromFinancialAccountValue(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadPaymentAmountValuesCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadPaymentAmountValues];
      INIntentSlotValueTransformFromPaymentAmountValues(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadPaymentAmountValueAtIndex:0];
      INIntentSlotValueTransformFromPaymentAmountValue(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadPaymentStatusCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadPaymentStatusAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadBinarySettingValuesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadBinarySettingValueAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadBoundedSettingValuesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadBoundedSettingValueAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadDevicesCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadDevices];
      INIntentSlotValueTransformFromDevices(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadDeviceAtIndex:0];
      INIntentSlotValueTransformFromDevice(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadGetSettingResponseDatasCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadGetSettingResponseDatas];
      INIntentSlotValueTransformFromGetSettingResponseDatas(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadGetSettingResponseDataAtIndex:0];
      INIntentSlotValueTransformFromGetSettingResponseData(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadNumericSettingUnitsCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadNumericSettingUnitAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadNumericSettingValuesCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadNumericSettingValues];
      INIntentSlotValueTransformFromNumericSettingValues(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadNumericSettingValueAtIndex:0];
      INIntentSlotValueTransformFromNumericSettingValue(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadSettingActionsCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadSettingActionAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadSettingMetadatasCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadSettingMetadatas];
      INIntentSlotValueTransformFromSettingMetadatas(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadSettingMetadataAtIndex:0];
      INIntentSlotValueTransformFromSettingMetadata(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadTimersCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadTimers];
      INIntentSlotValueTransformFromTimers(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadTimerAtIndex:0];
      INIntentSlotValueTransformFromTimer(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadTimerStatesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadTimerStateAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadTimerTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadTimerTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadVisualCodeTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [valueCopy payloadVisualCodeTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([valueCopy payloadAppIdentifiersCount])
  {
    if (valueStyle == 3)
    {
      payloadStringValues = [valueCopy payloadAppIdentifiers];
      INIntentSlotValueTransformFromAppIdentifiers(payloadStringValues);
    }

    else
    {
      payloadStringValues = [valueCopy payloadAppIdentifierAtIndex:0];
      INIntentSlotValueTransformFromAppIdentifier(payloadStringValues);
    }

    goto LABEL_564;
  }

  if ([valueCopy payloadArchivedObjectsCount])
  {
    if ([descriptionCopy valueType] != 225)
    {
      if (valueStyle == 3)
      {
        payloadStringValues = [valueCopy payloadArchivedObjects];
        INIntentSlotValueTransformFromArchivedObjects(payloadStringValues);
      }

      else
      {
        payloadStringValues = [valueCopy payloadArchivedObjectAtIndex:0];
        INIntentSlotValueTransformFromArchivedObject(payloadStringValues);
      }

      goto LABEL_564;
    }

    codableAttribute = [descriptionCopy codableAttribute];
    if (codableAttribute)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v36 = codableAttribute;
      }

      else
      {
        v36 = 0;
      }
    }

    else
    {
      v36 = 0;
    }

    v37 = v36;

    codableDescription = [v37 codableDescription];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __81__INIntentResolutionResult_Transform___objectForIntentSlotValue_slotDescription___block_invoke;
    v55[3] = &unk_1E7280AE8;
    v50 = codableDescription;
    v56 = v50;
    v49 = v37;
    v57 = v49;
    v39 = MEMORY[0x193AD7780](v55);
    if (valueStyle == 3)
    {
      v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(valueCopy, "payloadArchivedObjectsCount")}];
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      payloadArchivedObjects = [valueCopy payloadArchivedObjects];
      v41 = [payloadArchivedObjects countByEnumeratingWithState:&v51 objects:v59 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v52;
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v52 != v43)
            {
              objc_enumerationMutation(payloadArchivedObjects);
            }

            v45 = v39[2](v39, *(*(&v51 + 1) + 8 * i));
            [v13 addObject:v45];
          }

          v42 = [payloadArchivedObjects countByEnumeratingWithState:&v51 objects:v59 count:16];
        }

        while (v42);
      }
    }

    else
    {
      payloadArchivedObjects = [valueCopy payloadArchivedObjectAtIndex:0];
      v13 = (v39)[2](v39, payloadArchivedObjects);
    }
  }

  else
  {
    if ([valueCopy payloadCustomObjectsCount])
    {
      if (valueStyle == 3)
      {
        payloadStringValues = [valueCopy payloadCustomObjects];
        INIntentSlotValueTransformFromCustomObjects(payloadStringValues);
      }

      else
      {
        payloadStringValues = [valueCopy payloadCustomObjectAtIndex:0];
        INIntentSlotValueTransformFromCustomObject(payloadStringValues);
      }

      goto LABEL_564;
    }

    if ([valueCopy payloadFilesCount])
    {
      if (valueStyle == 3)
      {
        payloadStringValues = [valueCopy payloadFiles];
        INIntentSlotValueTransformFromFiles(payloadStringValues);
      }

      else
      {
        payloadStringValues = [valueCopy payloadFileAtIndex:0];
        INIntentSlotValueTransformFromFile(payloadStringValues);
      }

      goto LABEL_564;
    }

    if ([valueCopy payloadIntentExecutionResultsCount])
    {
      if (valueStyle == 3)
      {
        payloadStringValues = [valueCopy payloadIntentExecutionResults];
        INIntentSlotValueTransformFromIntentExecutionResults(payloadStringValues);
      }

      else
      {
        payloadStringValues = [valueCopy payloadIntentExecutionResultAtIndex:0];
        INIntentSlotValueTransformFromIntentExecutionResult(payloadStringValues);
      }

      goto LABEL_564;
    }

    if ([valueCopy payloadURLValuesCount])
    {
      if (valueStyle == 3)
      {
        payloadStringValues = [valueCopy payloadURLValues];
        INIntentSlotValueTransformFromURLValues(payloadStringValues);
      }

      else
      {
        payloadStringValues = [valueCopy payloadURLValueAtIndex:0];
        INIntentSlotValueTransformFromURLValue(payloadStringValues);
      }

      goto LABEL_564;
    }

    if ([valueCopy payloadVoiceCommandDeviceInformationsCount])
    {
      if (valueStyle == 3)
      {
        payloadStringValues = [valueCopy payloadVoiceCommandDeviceInformations];
        INIntentSlotValueTransformFromVoiceCommandDeviceInformations(payloadStringValues);
      }

      else
      {
        payloadStringValues = [valueCopy payloadVoiceCommandDeviceInformationAtIndex:0];
        INIntentSlotValueTransformFromVoiceCommandDeviceInformation(payloadStringValues);
      }

      goto LABEL_564;
    }

    if ([valueCopy payloadWellnessMetadataPairsCount])
    {
      if (valueStyle == 3)
      {
        payloadStringValues = [valueCopy payloadWellnessMetadataPairs];
        INIntentSlotValueTransformFromWellnessMetadataPairs(payloadStringValues);
      }

      else
      {
        payloadStringValues = [valueCopy payloadWellnessMetadataPairAtIndex:0];
        INIntentSlotValueTransformFromWellnessMetadataPair(payloadStringValues);
      }

      goto LABEL_564;
    }

    if ([valueCopy payloadWellnessObjectResultValuesCount])
    {
      if (valueStyle == 3)
      {
        payloadStringValues = [valueCopy payloadWellnessObjectResultValues];
        INIntentSlotValueTransformFromWellnessObjectResultValues(payloadStringValues);
      }

      else
      {
        payloadStringValues = [valueCopy payloadWellnessObjectResultValueAtIndex:0];
        INIntentSlotValueTransformFromWellnessObjectResultValue(payloadStringValues);
      }

      goto LABEL_564;
    }

    if ([valueCopy payloadWellnessObjectTypesCount])
    {
      v15 = MEMORY[0x1E696AD98];
      v16 = [valueCopy payloadWellnessObjectTypeAtIndex:0];
      goto LABEL_96;
    }

    if ([valueCopy payloadWellnessQueryResultTypesCount])
    {
      v15 = MEMORY[0x1E696AD98];
      v16 = [valueCopy payloadWellnessQueryResultTypeAtIndex:0];
      goto LABEL_96;
    }

    if ([valueCopy payloadWellnessQuestionTypesCount])
    {
      v15 = MEMORY[0x1E696AD98];
      v16 = [valueCopy payloadWellnessQuestionTypeAtIndex:0];
      goto LABEL_96;
    }

    if ([valueCopy payloadWellnessUnitTypesCount])
    {
      if (valueStyle == 3)
      {
        payloadStringValues = [valueCopy payloadWellnessUnitTypes];
        INIntentSlotValueTransformFromWellnessUnitTypes(payloadStringValues);
      }

      else
      {
        payloadStringValues = [valueCopy payloadWellnessUnitTypeAtIndex:0];
        INIntentSlotValueTransformFromWellnessUnitType(payloadStringValues);
      }

      goto LABEL_564;
    }

    if ([valueCopy payloadWellnessValuesCount])
    {
      if (valueStyle == 3)
      {
        payloadStringValues = [valueCopy payloadWellnessValues];
        INIntentSlotValueTransformFromWellnessValues(payloadStringValues);
      }

      else
      {
        payloadStringValues = [valueCopy payloadWellnessValueAtIndex:0];
        INIntentSlotValueTransformFromWellnessValue(payloadStringValues);
      }

      goto LABEL_564;
    }

    if ([valueCopy payloadWorkoutAssociatedItemsCount])
    {
      if (valueStyle == 3)
      {
        payloadStringValues = [valueCopy payloadWorkoutAssociatedItems];
        INIntentSlotValueTransformFromWorkoutAssociatedItems(payloadStringValues);
      }

      else
      {
        payloadStringValues = [valueCopy payloadWorkoutAssociatedItemAtIndex:0];
        INIntentSlotValueTransformFromWorkoutAssociatedItem(payloadStringValues);
      }

      goto LABEL_564;
    }

    if ([valueCopy payloadWorkoutCustomizationsCount])
    {
      if (valueStyle == 3)
      {
        payloadStringValues = [valueCopy payloadWorkoutCustomizations];
        INIntentSlotValueTransformFromWorkoutCustomizations(payloadStringValues);
      }

      else
      {
        payloadStringValues = [valueCopy payloadWorkoutCustomizationAtIndex:0];
        INIntentSlotValueTransformFromWorkoutCustomization(payloadStringValues);
      }

      goto LABEL_564;
    }

    if ([valueCopy payloadWorkoutGoalUnitTypesCount])
    {
      v15 = MEMORY[0x1E696AD98];
      v16 = [valueCopy payloadWorkoutGoalUnitTypeAtIndex:0];
      goto LABEL_96;
    }

    if ([valueCopy payloadWorkoutLocationTypesCount])
    {
      v15 = MEMORY[0x1E696AD98];
      v16 = [valueCopy payloadWorkoutLocationTypeAtIndex:0];
      goto LABEL_96;
    }

    if ([valueCopy payloadWorkoutSequenceLabelsCount])
    {
      v15 = MEMORY[0x1E696AD98];
      v16 = [valueCopy payloadWorkoutSequenceLabelAtIndex:0];
      goto LABEL_96;
    }

    if ([valueCopy payloadMessageAttributesCount])
    {
      if (valueStyle != 3)
      {
        v15 = MEMORY[0x1E696AD98];
        v16 = [valueCopy payloadMessageAttributeAtIndex:0];
        goto LABEL_96;
      }

      v58 = 0;
      if ([valueCopy payloadMessageAttributesCount])
      {
        v46 = 0;
        do
        {
          INMessageAttributeOptionsAddBackingType(&v58, [valueCopy payloadMessageAttributeAtIndex:v46++]);
        }

        while (v46 < [valueCopy payloadMessageAttributesCount]);
        goto LABEL_557;
      }

      goto LABEL_558;
    }

    if ([valueCopy payloadMessageEffectsCount])
    {
      v15 = MEMORY[0x1E696AD98];
      v16 = [valueCopy payloadMessageEffectAtIndex:0];
      goto LABEL_96;
    }

    if ([valueCopy payloadMessageTypesCount])
    {
      v15 = MEMORY[0x1E696AD98];
      v16 = [valueCopy payloadMessageTypeAtIndex:0];
      goto LABEL_96;
    }

    if ([valueCopy payloadOutgoingMessageTypesCount])
    {
      v15 = MEMORY[0x1E696AD98];
      v16 = [valueCopy payloadOutgoingMessageTypeAtIndex:0];
      goto LABEL_96;
    }

    if ([valueCopy payloadSendMessageAttachmentsCount])
    {
      if (valueStyle == 3)
      {
        payloadStringValues = [valueCopy payloadSendMessageAttachments];
        INIntentSlotValueTransformFromSendMessageAttachments(payloadStringValues);
      }

      else
      {
        payloadStringValues = [valueCopy payloadSendMessageAttachmentAtIndex:0];
        INIntentSlotValueTransformFromSendMessageAttachment(payloadStringValues);
      }

      goto LABEL_564;
    }

    if ([valueCopy payloadActivitiesCount])
    {
      if (valueStyle == 3)
      {
        payloadStringValues = [valueCopy payloadActivities];
        INIntentSlotValueTransformFromActivities(payloadStringValues);
      }

      else
      {
        payloadStringValues = [valueCopy payloadActivityAtIndex:0];
        INIntentSlotValueTransformFromActivity(payloadStringValues);
      }

      goto LABEL_564;
    }

    if ([valueCopy payloadActivityListsCount])
    {
      payloadStringValues = [valueCopy payloadActivityListAtIndex:0];
      dataStrings = [(INStartCallRequestMetadata *)payloadStringValues activities];
      v10 = INIntentSlotValueTransformFromActivities(dataStrings);
      goto LABEL_91;
    }

    if ([valueCopy payloadEventsCount])
    {
      if (valueStyle == 3)
      {
        payloadStringValues = [valueCopy payloadEvents];
        INIntentSlotValueTransformFromEvents(payloadStringValues);
      }

      else
      {
        payloadStringValues = [valueCopy payloadEventAtIndex:0];
        INIntentSlotValueTransformFromEvent(payloadStringValues);
      }

      goto LABEL_564;
    }

    if ([valueCopy payloadEventListsCount])
    {
      payloadStringValues = [valueCopy payloadEventListAtIndex:0];
      dataStrings = [(INStartCallRequestMetadata *)payloadStringValues events];
      v10 = INIntentSlotValueTransformFromEvents(dataStrings);
      goto LABEL_91;
    }

    if ([valueCopy payloadGeographicalFeaturesCount])
    {
      if (valueStyle == 3)
      {
        payloadStringValues = [valueCopy payloadGeographicalFeatures];
        INIntentSlotValueTransformFromGeographicalFeatures(payloadStringValues);
      }

      else
      {
        payloadStringValues = [valueCopy payloadGeographicalFeatureAtIndex:0];
        INIntentSlotValueTransformFromGeographicalFeature(payloadStringValues);
      }

      goto LABEL_564;
    }

    if ([valueCopy payloadGeographicalFeatureListsCount])
    {
      payloadStringValues = [valueCopy payloadGeographicalFeatureListAtIndex:0];
      dataStrings = [(INStartCallRequestMetadata *)payloadStringValues geographicalFeatures];
      v10 = INIntentSlotValueTransformFromGeographicalFeatures(dataStrings);
      goto LABEL_91;
    }

    if ([valueCopy payloadPersonalPlaceTypesCount])
    {
      v15 = MEMORY[0x1E696AD98];
      v16 = [valueCopy payloadPersonalPlaceTypeAtIndex:0];
      goto LABEL_96;
    }

    if ([valueCopy payloadPhotoAttributesCount])
    {
      if (valueStyle != 3)
      {
        v15 = MEMORY[0x1E696AD98];
        v16 = [valueCopy payloadPhotoAttributeAtIndex:0];
        goto LABEL_96;
      }

      v58 = 0;
      if ([valueCopy payloadPhotoAttributesCount])
      {
        v47 = 0;
        do
        {
          INPhotoAttributeOptionsAddBackingType(&v58, [valueCopy payloadPhotoAttributeAtIndex:v47++]);
        }

        while (v47 < [valueCopy payloadPhotoAttributesCount]);
        goto LABEL_557;
      }

      goto LABEL_558;
    }

    if ([valueCopy payloadPlacesCount])
    {
      if (valueStyle == 3)
      {
        payloadStringValues = [valueCopy payloadPlaces];
        INIntentSlotValueTransformFromPlaces(payloadStringValues);
      }

      else
      {
        payloadStringValues = [valueCopy payloadPlaceAtIndex:0];
        INIntentSlotValueTransformFromPlace(payloadStringValues);
      }

      goto LABEL_564;
    }

    if ([valueCopy payloadPlaceListsCount])
    {
      payloadStringValues = [valueCopy payloadPlaceListAtIndex:0];
      dataStrings = [(INStartCallRequestMetadata *)payloadStringValues places];
      v10 = INIntentSlotValueTransformFromPlaces(dataStrings);
      goto LABEL_91;
    }

    v13 = 0;
  }

LABEL_68:

  v11 = *MEMORY[0x1E69E9840];

  return v13;
}

id __81__INIntentResolutionResult_Transform___objectForIntentSlotValue_slotDescription___block_invoke(uint64_t a1, void *a2)
{
  v3 = INIntentSlotValueTransformFromArchivedObject(a2);
  v4 = [INCodable alloc];
  v5 = *(a1 + 32);
  v6 = [v3 messageData];
  v7 = [(INCodable *)v4 initWithCodableDescription:v5 data:v6];

  v8 = [*(a1 + 40) valueTransformer];
  v9 = [v8 reverseTransformedValue:v7];

  return v9;
}

+ (INIntentResolutionResult)confirmationRequiredWithItemToConfirm:(id)itemToConfirm forReason:(NSInteger)reason
{
  v5 = [self resolutionResultConfirmationRequiredWithItemToConfirm:itemToConfirm];
  [v5 setConfirmationReason:reason];

  return v5;
}

- (id)_stringForResultCode:(int64_t)code
{
  if (code > 7)
  {
    return &stru_1F01E0850;
  }

  else
  {
    return off_1E72840A8[code];
  }
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INIntentResolutionResult;
  v6 = [(INIntentResolutionResult *)&v11 description];
  dictionaryRepresentation = [(INIntentResolutionResult *)self dictionaryRepresentation];
  v8 = [dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_JSONDictionaryRepresentationForIntent:(id)intent parameterName:(id)name
{
  v49 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  nameCopy = name;
  v8 = [INJSONEncoder alloc];
  v9 = objc_alloc_init(INJSONEncoderConfiguration);
  v10 = +[INPreferences siriLanguageCode];
  [(INJSONEncoderConfiguration *)v9 setLanguageCode:v10];

  v43 = [(INJSONEncoder *)v8 initWithConfiguration:v9];
  _codableDescription = [intentCopy _codableDescription];
  v12 = [_codableDescription attributeByName:nameCopy];

  _intentInstanceDescription = [intentCopy _intentInstanceDescription];
  v42 = [_intentInstanceDescription slotByName:nameCopy];

  resolutionResultCode = [(INIntentResolutionResult *)self resolutionResultCode];
  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = [(INIntentResolutionResult *)self _stringForResultCode:resolutionResultCode];
  [v15 if_setObjectIfNonNil:v16 forKey:@"status"];

  if (resolutionResultCode == 3)
  {
    [(INIntentResolutionResult *)self itemToConfirm];
  }

  else
  {
    [(INIntentResolutionResult *)self resolvedValue];
  }
  v17 = ;
  v18 = [(INJSONEncoder *)v43 encodeObject:v17 withCodableAttribute:v12];
  [v15 if_setObjectIfNonNil:v18 forKey:@"value"];

  if ([(INIntentResolutionResult *)self unsupportedReason])
  {
    v19 = [v12 unsupportedReasonWithIndex:{-[INIntentResolutionResult unsupportedReason](self, "unsupportedReason")}];
    code = [v19 code];
    [v15 if_setObjectIfNonNil:code forKey:@"reason"];
  }

  else
  {
    [v15 if_setObjectIfNonNil:0 forKey:@"reason"];
  }

  disambiguationItems = [(INIntentResolutionResult *)self disambiguationItems];

  if (disambiguationItems)
  {
    v38 = v15;
    v39 = nameCopy;
    v40 = intentCopy;
    v22 = objc_alloc(MEMORY[0x1E695DF70]);
    disambiguationItems2 = [(INIntentResolutionResult *)self disambiguationItems];
    v24 = [v22 initWithCapacity:{objc_msgSend(disambiguationItems2, "count")}];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = [(INIntentResolutionResult *)self disambiguationItems];
    v25 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v45;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          selfCopy = self;
          if (*v45 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v44 + 1) + 8 * i);
          v31 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
          uUID = [MEMORY[0x1E696AFB0] UUID];
          uUIDString = [uUID UUIDString];
          [v31 if_setObjectIfNonNil:uUIDString forKey:@"uuid"];

          v34 = [(INJSONEncoder *)v43 encodeObject:v30 withCodableAttribute:v12];
          [v31 if_setObjectIfNonNil:v34 forKey:@"value"];

          self = selfCopy;
          v35 = [(INIntentResolutionResult *)selfCopy _vocabularyValueForObject:v30 slotDescription:v42];
          [v31 if_setObjectIfNonNil:v35 forKey:@"vocabularyValue"];

          [v24 addObject:v31];
        }

        v26 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v26);
    }

    v15 = v38;
    [v38 setObject:v24 forKey:@"selectionItems"];

    nameCopy = v39;
    intentCopy = v40;
  }

  [v15 if_setObjectIfNonNil:nameCopy forKey:{@"keyPath", v38}];

  v36 = *MEMORY[0x1E69E9840];

  return v15;
}

- (INIntentResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  v58 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  intentCopy = intent;
  v8 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v57 = "[INIntentResolutionResult initWithJSONDictionary:forIntent:]";
    _os_log_debug_impl(&dword_18E991000, v8, OS_LOG_TYPE_DEBUG, "%s _initWithJSONDictionary called", buf, 0xCu);
  }

  v9 = [dictionaryCopy objectForKey:@"status"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = v9;
    if ([v10 isEqualToString:@"Success"])
    {
      v11 = 0;
    }

    else if ([v10 isEqualToString:@"Unsupported"])
    {
      v11 = 1;
    }

    else if ([v10 isEqualToString:@"NeedsDisambiguation"])
    {
      v11 = 2;
    }

    else if ([v10 isEqualToString:@"NeedsConfirmation"])
    {
      v11 = 3;
    }

    else if ([v10 isEqualToString:@"NeedsValue"])
    {
      v11 = 4;
    }

    else if ([v10 isEqualToString:@"NotRequired"])
    {
      v11 = 5;
    }

    else if ([v10 isEqualToString:@"NeedsExecuteIntent"])
    {
      v11 = 6;
    }

    else if ([v10 isEqualToString:@"CalleeNotImplemented"])
    {
      v11 = 7;
    }

    else
    {
      v11 = 1;
    }

    v13 = [(INIntentResolutionResult *)self _initWithResultCode:v11];
    if (v13)
    {
      v48 = objc_alloc_init(INJSONDecoder);
      v14 = [dictionaryCopy objectForKey:@"keyPath"];
      if (v14)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      _codableDescription = [intentCopy _codableDescription];
      v47 = v16;
      v18 = [_codableDescription attributeByName:v16];

      resolutionResultClass = [v18 resolutionResultClass];
      if (resolutionResultClass)
      {
        v20 = [dictionaryCopy objectForKey:@"value"];
        if (v20)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = [(INJSONDecoder *)v48 decodeWithCodableAttribute:v18 from:v20];
            v22 = 4;
            if (v13[1] == 3)
            {
              v22 = 5;
            }

            v23 = v13[v22];
            v13[v22] = v21;
          }
        }
      }

      v24 = [dictionaryCopy objectForKey:@"reason"];
      if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        unsupportedReasons = [v18 unsupportedReasons];
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __61__INIntentResolutionResult_initWithJSONDictionary_forIntent___block_invoke;
        v53[3] = &unk_1E7284060;
        v46 = v24;
        v54 = v46;
        v26 = [unsupportedReasons if_firstObjectPassingTest:v53];

        v13[6] = [v18 indexForUnsupportedReason:v26];
        v24 = v54;
      }

      else
      {
        v46 = 0;
      }

      v27 = [dictionaryCopy objectForKey:@"selectionItems"];
      if (v27)
      {
        v28 = v27;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v30 = v28;
        }

        else
        {
          v30 = 0;
        }

        v31 = v30;

        if (resolutionResultClass && (isKindOfClass & 1) != 0)
        {
          v43 = v13;
          v44 = intentCopy;
          v45 = dictionaryCopy;
          v32 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v31, "count")}];
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v31 = v31;
          v33 = [v31 countByEnumeratingWithState:&v49 objects:v55 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v50;
            do
            {
              for (i = 0; i != v34; ++i)
              {
                if (*v50 != v35)
                {
                  objc_enumerationMutation(v31);
                }

                v37 = [*(*(&v49 + 1) + 8 * i) objectForKey:@"value"];
                if (v37)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v38 = [(INJSONDecoder *)v48 decodeWithCodableAttribute:v18 from:v37];
                    [v32 addObject:v38];
                  }
                }
              }

              v34 = [v31 countByEnumeratingWithState:&v49 objects:v55 count:16];
            }

            while (v34);
          }

          v39 = [v32 copy];
          v13 = v43;
          v40 = v43[2];
          v43[2] = v39;

          intentCopy = v44;
          dictionaryCopy = v45;
        }
      }

      else
      {
        v31 = 0;
      }
    }

    self = v13;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v41 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

uint64_t __61__INIntentResolutionResult_initWithJSONDictionary_forIntent___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description
{
  v58 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  descriptionCopy = description;
  v55.receiver = self;
  v55.super_class = INIntentResolutionResult;
  v8 = [(INIntentResolutionResult *)&v55 init];
  if (!v8)
  {
    goto LABEL_36;
  }

  type = [resultCopy type];
  if (type > 6)
  {
    v14 = 0;
    if (type <= 8)
    {
      if (type != 7)
      {
        goto LABEL_46;
      }

      v30 = v8;
      v31 = 5;
    }

    else
    {
      if (type != 9)
      {
        if (type == 10)
        {
          goto LABEL_46;
        }

        if (type == 11)
        {
          [(INIntentResolutionResult *)v8 setResolutionResultCode:6];
          payloadNeedsExecuteIntent = [resultCopy payloadNeedsExecuteIntent];
          intentExecution = [payloadNeedsExecuteIntent intentExecution];

          encodedIntent = [intentExecution encodedIntent];
          v18 = [encodedIntent dataUsingEncoding:4];
          v19 = INIntentCreate(0, v18);
          [(INIntentResolutionResult *)v8 setIntentToExecute:v19];
        }

        goto LABEL_36;
      }

      v30 = v8;
      v31 = 7;
    }

    goto LABEL_35;
  }

  if (type > 2)
  {
    switch(type)
    {
      case 3:
        v30 = v8;
        v31 = 4;
        break;
      case 4:
        v30 = v8;
        v31 = 2;
        break;
      case 6:
        [(INIntentResolutionResult *)v8 setResolutionResultCode:3];
        payloadConfirmation = [resultCopy payloadConfirmation];
        confirmationItem = [payloadConfirmation confirmationItem];
        value = [confirmationItem value];
        v13 = [(INIntentResolutionResult *)v8 _objectForIntentSlotValue:value slotDescription:descriptionCopy];
        [(INIntentResolutionResult *)v8 setItemToConfirm:v13];

LABEL_29:
LABEL_30:

        goto LABEL_36;
      default:
        goto LABEL_36;
    }

LABEL_35:
    [(INIntentResolutionResult *)v30 setResolutionResultCode:v31];
    goto LABEL_36;
  }

  if (type == 1)
  {
    [(INIntentResolutionResult *)v8 setResolutionResultCode:0];
    payloadConfirmation = [resultCopy payloadSuccess];
    confirmationItem = [payloadConfirmation resolvedValue];
    value = [(INIntentResolutionResult *)v8 _objectForIntentSlotValue:confirmationItem slotDescription:descriptionCopy];
    [(INIntentResolutionResult *)v8 setResolvedValue:value];
    goto LABEL_29;
  }

  if (type == 2)
  {
    [(INIntentResolutionResult *)v8 setResolutionResultCode:1];
    payloadConfirmation = [resultCopy payloadUnsupported];
    if ([payloadConfirmation hasCustomUnsupportedReason])
    {
      -[INIntentResolutionResult setUnsupportedReason:](v8, "setUnsupportedReason:", [payloadConfirmation customUnsupportedReason]);
    }

    conflictingParameters = [payloadConfirmation conflictingParameters];
    firstObject = [conflictingParameters firstObject];
    confirmationItem = [firstObject alternateItems];

    if ([confirmationItem count])
    {
      v46 = payloadConfirmation;
      v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v45 = confirmationItem;
      v23 = confirmationItem;
      v24 = [v23 countByEnumeratingWithState:&v51 objects:v57 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v52;
        do
        {
          v27 = 0;
          do
          {
            if (*v52 != v26)
            {
              objc_enumerationMutation(v23);
            }

            value2 = [*(*(&v51 + 1) + 8 * v27) value];
            v29 = [(INIntentResolutionResult *)v8 _objectForIntentSlotValue:value2 slotDescription:descriptionCopy];
            [v22 addObject:v29];

            ++v27;
          }

          while (v25 != v27);
          v25 = [v23 countByEnumeratingWithState:&v51 objects:v57 count:16];
        }

        while (v25);
      }

      [(INIntentResolutionResult *)v8 setAlternatives:v22];
      confirmationItem = v45;
      payloadConfirmation = v46;
    }

    goto LABEL_30;
  }

LABEL_36:
  payloadNeedsDisambiguation = [resultCopy payloadNeedsDisambiguation];
  disambiguationItemsCount = [payloadNeedsDisambiguation disambiguationItemsCount];

  if (disambiguationItemsCount)
  {
    v34 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:disambiguationItemsCount];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    payloadNeedsDisambiguation2 = [resultCopy payloadNeedsDisambiguation];
    disambiguationItems = [payloadNeedsDisambiguation2 disambiguationItems];

    v37 = [disambiguationItems countByEnumeratingWithState:&v47 objects:v56 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v48;
      do
      {
        v40 = 0;
        do
        {
          if (*v48 != v39)
          {
            objc_enumerationMutation(disambiguationItems);
          }

          value3 = [*(*(&v47 + 1) + 8 * v40) value];
          v42 = [(INIntentResolutionResult *)v8 _objectForIntentSlotValue:value3 slotDescription:descriptionCopy];
          [v34 addObject:v42];

          ++v40;
        }

        while (v38 != v40);
        v38 = [disambiguationItems countByEnumeratingWithState:&v47 objects:v56 count:16];
      }

      while (v38);
    }

    [(INIntentResolutionResult *)v8 setDisambiguationItems:v34];
  }

  v14 = v8;
LABEL_46:

  v43 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)_initWithResolutionResult:(id)result
{
  resultCopy = result;
  v11.receiver = self;
  v11.super_class = INIntentResolutionResult;
  v5 = [(INIntentResolutionResult *)&v11 init];
  if (v5)
  {
    -[INIntentResolutionResult setResolutionResultCode:](v5, "setResolutionResultCode:", [resultCopy resolutionResultCode]);
    disambiguationItems = [resultCopy disambiguationItems];
    [(INIntentResolutionResult *)v5 setDisambiguationItems:disambiguationItems];

    alternatives = [resultCopy alternatives];
    [(INIntentResolutionResult *)v5 setAlternatives:alternatives];

    resolvedValue = [resultCopy resolvedValue];
    [(INIntentResolutionResult *)v5 setResolvedValue:resolvedValue];

    itemToConfirm = [resultCopy itemToConfirm];
    [(INIntentResolutionResult *)v5 setItemToConfirm:itemToConfirm];

    -[INIntentResolutionResult setUnsupportedReason:](v5, "setUnsupportedReason:", [resultCopy unsupportedReason]);
    -[INIntentResolutionResult setConfirmationReason:](v5, "setConfirmationReason:", [resultCopy confirmationReason]);
  }

  return v5;
}

- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description
{
  v88 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  v4 = objc_alloc_init(_INPBIntentSlotResolutionResult);
  resolutionResultCode = [(INIntentResolutionResult *)self resolutionResultCode];
  v6 = 2;
  selfCopy = self;
  if (resolutionResultCode <= 3)
  {
    if (resolutionResultCode > 1)
    {
      if (resolutionResultCode == 2)
      {
        v6 = 4;
      }

      else
      {
        v10 = objc_alloc_init(_INPBPayloadConfirmation);
        v11 = objc_alloc_init(_INPBSelectionItem);
        uUID = [MEMORY[0x1E696AFB0] UUID];
        uUIDString = [uUID UUIDString];
        [(_INPBSelectionItem *)v11 setUuid:uUIDString];

        itemToConfirm = [(INIntentResolutionResult *)self itemToConfirm];
        v15 = [(INIntentResolutionResult *)self _intentSlotValueForObject:itemToConfirm slotDescription:descriptionCopy];
        [(_INPBSelectionItem *)v11 setValue:v15];

        itemToConfirm2 = [(INIntentResolutionResult *)self itemToConfirm];
        v17 = [(INIntentResolutionResult *)self _vocabularyValueForObject:itemToConfirm2 slotDescription:descriptionCopy];
        [(_INPBSelectionItem *)v11 setVocabularyValue:v17];

        [(_INPBPayloadConfirmation *)v10 setConfirmationItem:v11];
        [(_INPBIntentSlotResolutionResult *)v4 setPayloadConfirmation:v10];

        v6 = 6;
      }
    }

    else if (resolutionResultCode)
    {
      if (resolutionResultCode == 1)
      {
        v7 = objc_alloc_init(_INPBPayloadUnsupported);
        if ([(INIntentResolutionResult *)self unsupportedReason])
        {
          [(_INPBPayloadUnsupported *)v7 setReason:1000];
          [(_INPBPayloadUnsupported *)v7 setCustomUnsupportedReason:[(INIntentResolutionResult *)self unsupportedReason]];
        }

        else
        {
          [(_INPBPayloadUnsupported *)v7 setReason:1];
        }

        alternatives = [(INIntentResolutionResult *)self alternatives];
        if ([alternatives count])
        {
          v71 = v4;
          v45 = objc_alloc_init(_INPBConflictingParameter);
          v82 = 0u;
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v70 = alternatives;
          obj = alternatives;
          v46 = [obj countByEnumeratingWithState:&v82 objects:v87 count:16];
          if (v46)
          {
            v47 = v46;
            v48 = *v83;
            do
            {
              for (i = 0; i != v47; ++i)
              {
                if (*v83 != v48)
                {
                  objc_enumerationMutation(obj);
                }

                v50 = *(*(&v82 + 1) + 8 * i);
                v51 = objc_alloc_init(_INPBSelectionItem);
                uUID2 = [MEMORY[0x1E696AFB0] UUID];
                uUIDString2 = [uUID2 UUIDString];
                [(_INPBSelectionItem *)v51 setUuid:uUIDString2];

                v54 = [(INIntentResolutionResult *)selfCopy _intentSlotValueForObject:v50 slotDescription:descriptionCopy];
                [(_INPBSelectionItem *)v51 setValue:v54];

                v55 = [(INIntentResolutionResult *)selfCopy _vocabularyValueForObject:v50 slotDescription:descriptionCopy];
                [(_INPBSelectionItem *)v51 setVocabularyValue:v55];

                [(_INPBConflictingParameter *)v45 addAlternateItems:v51];
              }

              v47 = [obj countByEnumeratingWithState:&v82 objects:v87 count:16];
            }

            while (v47);
          }

          [(_INPBPayloadUnsupported *)v7 addConflictingParameters:v45];
          v4 = v71;
          self = selfCopy;
          alternatives = v70;
        }

        [(_INPBIntentSlotResolutionResult *)v4 setPayloadUnsupported:v7];

        v6 = 2;
      }
    }

    else
    {
      v18 = objc_alloc_init(_INPBPayloadSuccess);
      name = [descriptionCopy name];
      [(_INPBPayloadSuccess *)v18 setResolvedKeyPath:name];

      resolvedValue = [(INIntentResolutionResult *)self resolvedValue];
      v21 = [(INIntentResolutionResult *)self _intentSlotValueForObject:resolvedValue slotDescription:descriptionCopy];

      [(_INPBPayloadSuccess *)v18 setResolvedValue:v21];
      [(_INPBIntentSlotResolutionResult *)v4 setPayloadSuccess:v18];

      v6 = 1;
    }

    goto LABEL_36;
  }

  if (resolutionResultCode <= 5)
  {
    if (resolutionResultCode == 4)
    {
      v22 = objc_alloc_init(_INPBPayloadNeedsValue);
      [(_INPBIntentSlotResolutionResult *)v4 setPayloadNeedsValue:v22];

      v6 = 3;
      goto LABEL_36;
    }

    v8 = resolutionResultCode == 5;
    v9 = 7;
    goto LABEL_14;
  }

  if (resolutionResultCode != 6)
  {
    v8 = resolutionResultCode == 7;
    v9 = 9;
LABEL_14:
    if (v8)
    {
      v6 = v9;
    }

    else
    {
      v6 = 2;
    }

    goto LABEL_36;
  }

  v23 = objc_alloc_init(_INPBPayloadNeedsExecuteIntent);
  v24 = objc_alloc_init(_INPBIntentExecutionRequest);
  v25 = objc_alloc_init(_INPBAppIdentifier);
  intentToExecute = [(INIntentResolutionResult *)self intentToExecute];
  launchId = [intentToExecute launchId];
  [(_INPBAppIdentifier *)v25 setBundleIdentifier:launchId];

  [(_INPBIntentExecutionRequest *)v24 setAppIdentifier:v25];
  [(_INPBIntentExecutionRequest *)v24 setEncodingFormat:1];
  intentToExecute2 = [(INIntentResolutionResult *)self intentToExecute];
  _JSONDictionaryRepresentation = [intentToExecute2 _JSONDictionaryRepresentation];
  if_JSONStringRepresentation = [_JSONDictionaryRepresentation if_JSONStringRepresentation];
  [(_INPBIntentExecutionRequest *)v24 setEncodedIntent:if_JSONStringRepresentation];

  intentToExecute3 = [(INIntentResolutionResult *)self intentToExecute];
  _codableDescription = [intentToExecute3 _codableDescription];

  schema = [_codableDescription schema];
  if (!schema)
  {
    intentToExecute4 = [(INIntentResolutionResult *)self intentToExecute];
    extensionBundleId = [intentToExecute4 extensionBundleId];

    if (!extensionBundleId)
    {
      intentToExecute5 = [(INIntentResolutionResult *)self intentToExecute];
      launchId2 = [intentToExecute5 launchId];
      v81 = 0;
      INExtractAppInfoFromSiriLaunchId(launchId2, &v81, 0);
      extensionBundleId = v81;
    }

    className = [_codableDescription className];
    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@.%@", @"sirikit.intents.custom.", extensionBundleId, className];

    schema = INSchemaWithTypeName(v39, 0, 0);
  }

  intentToExecute6 = [(INIntentResolutionResult *)self intentToExecute];
  v41 = +[INStringLocalizer siriLocalizer];
  v42 = [schema dictionaryRepresentationForIntent:intentToExecute6 localizer:v41];

  if_JSONStringRepresentation2 = [v42 if_JSONStringRepresentation];
  [(_INPBIntentExecutionRequest *)v24 setEncodedIntentDefinition:if_JSONStringRepresentation2];

  [(_INPBPayloadNeedsExecuteIntent *)v23 setIntentExecution:v24];
  [(_INPBIntentSlotResolutionResult *)v4 setPayloadNeedsExecuteIntent:v23];

  v6 = 11;
LABEL_36:
  disambiguationItems = [(INIntentResolutionResult *)self disambiguationItems];
  if (disambiguationItems)
  {
    v72 = v4;
    v57 = objc_alloc_init(_INPBPayloadNeedsDisambiguation);
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    obja = disambiguationItems;
    v58 = [obja countByEnumeratingWithState:&v77 objects:v86 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = *v78;
      do
      {
        for (j = 0; j != v59; ++j)
        {
          if (*v78 != v60)
          {
            objc_enumerationMutation(obja);
          }

          v62 = *(*(&v77 + 1) + 8 * j);
          v63 = objc_alloc_init(_INPBSelectionItem);
          uUID3 = [MEMORY[0x1E696AFB0] UUID];
          uUIDString3 = [uUID3 UUIDString];
          [(_INPBSelectionItem *)v63 setUuid:uUIDString3];

          v66 = [(INIntentResolutionResult *)selfCopy _intentSlotValueForObject:v62 slotDescription:descriptionCopy];
          [(_INPBSelectionItem *)v63 setValue:v66];

          v67 = [(INIntentResolutionResult *)selfCopy _vocabularyValueForObject:v62 slotDescription:descriptionCopy];
          [(_INPBSelectionItem *)v63 setVocabularyValue:v67];
          [(_INPBPayloadNeedsDisambiguation *)v57 addDisambiguationItems:v63];
        }

        v59 = [obja countByEnumeratingWithState:&v77 objects:v86 count:16];
      }

      while (v59);
    }

    v4 = v72;
    [(_INPBIntentSlotResolutionResult *)v72 setPayloadNeedsDisambiguation:v57];

    v6 = v6;
  }

  [(_INPBIntentSlotResolutionResult *)v4 setType:v6];

  v68 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_dataForIntentSlotDescription:(id)description
{
  v3 = [(INIntentResolutionResult *)self _buildIntentSlotResolutionResultWithIntentSlotDescription:description];
  data = [v3 data];

  return data;
}

- (void)transformResolutionResultForIntent:(id)intent intentSlotDescription:(id)description withOptionsProvider:(id)provider completion:(id)completion
{
  intentCopy = intent;
  descriptionCopy = description;
  providerCopy = provider;
  completionCopy = completion;
  resolutionResultCode = [(INIntentResolutionResult *)self resolutionResultCode];
  _metadata = [intentCopy _metadata];
  facadePropertyName = [descriptionCopy facadePropertyName];
  forceNeedsValueForParameters = [_metadata forceNeedsValueForParameters];
  v18 = [forceNeedsValueForParameters containsObject:facadePropertyName];

  if (v18)
  {
    v19 = [intentCopy valueForKey:facadePropertyName];
    if (v19 || resolutionResultCode == 2)
    {
    }

    else if (resolutionResultCode != 3)
    {
      resolutionResultCode = 4;
      [(INIntentResolutionResult *)self setResolutionResultCode:4];
    }

    forceNeedsValueForParameters = [_metadata forceNeedsValueForParameters];
    v20 = [forceNeedsValueForParameters if_arrayByRemovingObject:facadePropertyName];
    [_metadata setForceNeedsValueForParameters:v20];
  }

  if (resolutionResultCode == 4 || resolutionResultCode == 1)
  {
    forceNeedsValueForParameters = [descriptionCopy provideOptionsSelectorStrings];
    v21 = [forceNeedsValueForParameters count] != 0;
  }

  else
  {
    v21 = 0;
  }

  if (resolutionResultCode == 4 || resolutionResultCode == 1)
  {
  }

  if (v21)
  {
    name = [descriptionCopy name];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __116__INIntentResolutionResult_transformResolutionResultForIntent_intentSlotDescription_withOptionsProvider_completion___block_invoke;
    v23[3] = &unk_1E7284038;
    v24 = descriptionCopy;
    v28 = completionCopy;
    selfCopy = self;
    v26 = providerCopy;
    v27 = intentCopy;
    v29 = resolutionResultCode;
    [v26 getSupportsParameterOptionsForParameterNamed:name intent:v27 completionHandler:v23];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, self);
  }
}

void __116__INIntentResolutionResult_transformResolutionResultForIntent_intentSlotDescription_withOptionsProvider_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2 && ([*(a1 + 32) codableAttribute], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "supportsSearch"), v3, !v4))
  {
    v7 = *(a1 + 48);
    v8 = [*(a1 + 32) name];
    v10 = *(a1 + 56);
    v9 = *(a1 + 64);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __116__INIntentResolutionResult_transformResolutionResultForIntent_intentSlotDescription_withOptionsProvider_completion___block_invoke_2;
    v12[3] = &unk_1E7284010;
    v11 = *(a1 + 40);
    v14 = *(a1 + 72);
    v12[4] = v11;
    v13 = v9;
    [v7 getParameterOptionsForParameterNamed:v8 intent:v10 searchTerm:0 completionBlock:v12];
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 64) + 16);

    v6();
  }
}

void __116__INIntentResolutionResult_transformResolutionResultForIntent_intentSlotDescription_withOptionsProvider_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 allItems];
  if ([v6 count])
  {
    if (*(a1 + 48) == 4)
    {
      [*(a1 + 32) setResolutionResultCode:2];
    }

    [*(a1 + 32) setDisambiguationItems:v6];
  }

  else if (v5)
  {
    v7 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[INIntentResolutionResult transformResolutionResultForIntent:intentSlotDescription:withOptionsProvider:completion:]_block_invoke_2";
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_18E991000, v7, OS_LOG_TYPE_ERROR, "%s Failed updating needsValue to needsDisambiguate for custom object: %{public}@", &v10, 0x16u);
    }
  }

  v8 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  v9 = *MEMORY[0x1E69E9840];
}

- (id)resolutionResultDataForIntent:(id)intent intentSlotDescription:(id)description error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return [(INIntentResolutionResult *)self _dataForIntentSlotDescription:description];
}

- (id)_initWithResultCode:(int64_t)code
{
  v7.receiver = self;
  v7.super_class = INIntentResolutionResult;
  v4 = [(INIntentResolutionResult *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(INIntentResolutionResult *)v4 setResolutionResultCode:code];
  }

  return v5;
}

+ (id)_resolutionResultWithData:(id)data slotDescription:(id)description
{
  v23 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  descriptionCopy = description;
  v7 = [[_INPBIntentSlotResolutionMulticardinalResult alloc] initWithData:dataCopy];
  if ([(_INPBIntentSlotResolutionMulticardinalResult *)v7 resolutionResultsCount])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[_INPBIntentSlotResolutionMulticardinalResult resolutionResultsCount](v7, "resolutionResultsCount")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    resolutionResults = [(_INPBIntentSlotResolutionMulticardinalResult *)v7 resolutionResults];
    v10 = [resolutionResults countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(resolutionResults);
          }

          v14 = [objc_alloc(objc_opt_class()) _initWithIntentSlotResolutionResult:*(*(&v18 + 1) + 8 * i) slotDescription:descriptionCopy];
          __70__INIntentResolutionResult__resolutionResultWithData_slotDescription___block_invoke(v14);
          [(_INPBIntentSlotResolutionResult *)v8 addObject:v14];
        }

        v11 = [resolutionResults countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    v15 = [(_INPBIntentSlotResolutionResult *)v8 copy];
  }

  else
  {
    v8 = [[_INPBIntentSlotResolutionResult alloc] initWithData:dataCopy];
    v15 = [objc_alloc(objc_opt_class()) _initWithIntentSlotResolutionResult:v8 slotDescription:descriptionCopy];
    __70__INIntentResolutionResult__resolutionResultWithData_slotDescription___block_invoke(v15);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

void __70__INIntentResolutionResult__resolutionResultWithData_slotDescription___block_invoke(void *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 resolvedValue];
  v3 = [v1 itemToConfirm];
  v4 = [v1 disambiguationItems];
  v5 = [v1 alternatives];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v2 firstObject];
    [v1 setResolvedValue:v6];
  }

  else
  {
    [v1 setResolvedValue:v2];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v3 firstObject];
    [v1 setItemToConfirm:v7];
  }

  else
  {
    [v1 setItemToConfirm:v3];
  }

  v25 = v5;
  v26 = v4;
  if (v4)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v32;
      do
      {
        v13 = 0;
        do
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v31 + 1) + 8 * v13);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v14 firstObject];
            [v8 addObject:v15];
          }

          else
          {
            [v8 addObject:v14];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v11);
    }

    [v1 setDisambiguationItems:v8];
    v5 = v25;
    v4 = v26;
  }

  if (v5)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = v5;
    v18 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v28;
      do
      {
        v21 = 0;
        do
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v27 + 1) + 8 * v21);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = [v22 firstObject];
            [v16 addObject:v23];
          }

          else
          {
            [v16 addObject:v22];
          }

          ++v21;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v19);
    }

    [v1 setAlternatives:v16];
    v5 = v25;
    v4 = v26;
  }

  v24 = *MEMORY[0x1E69E9840];
}

+ (id)requiresExecutionOfIntent:(id)intent
{
  intentCopy = intent;
  v5 = [[self alloc] _initWithResultCode:6];
  _metadata = [intentCopy _metadata];
  v7 = MEMORY[0x1E695DEF0];
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  v9 = processInfo;
  if (processInfo)
  {
    [processInfo if_auditToken];
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  v10 = [v7 if_dataWithAuditToken:v12];
  [_metadata setAuditTokenData:v10];

  [v5 setIntentToExecute:intentCopy];

  return v5;
}

+ (id)resolutionResultUnsupportedWithReason:(unint64_t)reason alternativeItems:(id)items
{
  itemsCopy = items;
  v7 = [self resolutionResultUnsupportedWithReason:reason];
  [v7 setAlternatives:itemsCopy];

  return v7;
}

+ (id)resolutionResultUnsupportedWithReason:(unint64_t)reason
{
  v4 = [[self alloc] _initWithResultCode:1];
  [v4 setUnsupportedReason:reason];

  return v4;
}

+ (id)resolutionResultConfirmationRequiredWithItemToConfirm:(id)confirm
{
  confirmCopy = confirm;
  v5 = [[self alloc] _initWithResultCode:3];
  v6 = v5;
  if (v5)
  {
    [v5 setItemToConfirm:confirmCopy];
  }

  return v6;
}

+ (id)resolutionResultDisambiguationWithItemsToDisambiguate:(id)disambiguate
{
  disambiguateCopy = disambiguate;
  if ([disambiguateCopy count] >= 2 && (v5 = objc_msgSend([self alloc], "_initWithResultCode:", 2)) != 0)
  {
    v6 = v5;
    [v5 setDisambiguationItems:disambiguateCopy];
  }

  else if ([disambiguateCopy count] == 1)
  {
    v6 = [[self alloc] _initWithResultCode:3];
    if (v6)
    {
      firstObject = [disambiguateCopy firstObject];
      [v6 setItemToConfirm:firstObject];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)resolutionResultSuccessWithResolvedValue:(id)value
{
  valueCopy = value;
  if (valueCopy && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [valueCopy count]))
  {
    v5 = [[self alloc] _initWithResultCode:0];
    v6 = v5;
    if (v5)
    {
      [v5 setResolvedValue:valueCopy];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (INIntentResolutionResult)unsupported
{
  v2 = [[self alloc] _initWithResultCode:1];

  return v2;
}

+ (INIntentResolutionResult)notRequired
{
  v2 = [[self alloc] _initWithResultCode:5];

  return v2;
}

+ (INIntentResolutionResult)needsValue
{
  v2 = [[self alloc] _initWithResultCode:4];

  return v2;
}

@end