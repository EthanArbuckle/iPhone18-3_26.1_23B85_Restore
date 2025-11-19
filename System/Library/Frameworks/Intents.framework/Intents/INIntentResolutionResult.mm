@interface INIntentResolutionResult
+ (INIntentResolutionResult)confirmationRequiredWithItemToConfirm:(id)itemToConfirm forReason:(NSInteger)reason;
+ (INIntentResolutionResult)needsValue;
+ (INIntentResolutionResult)notRequired;
+ (INIntentResolutionResult)unsupported;
+ (id)_dataForResolutionMethodUnimplemented;
+ (id)_resolutionResultWithData:(id)a3 slotDescription:(id)a4;
+ (id)requiresExecutionOfIntent:(id)a3;
+ (id)resolutionResultConfirmationRequiredWithItemToConfirm:(id)a3;
+ (id)resolutionResultDisambiguationWithItemsToDisambiguate:(id)a3;
+ (id)resolutionResultSuccessWithResolvedValue:(id)a3;
+ (id)resolutionResultUnsupportedWithReason:(unint64_t)a3;
+ (id)resolutionResultUnsupportedWithReason:(unint64_t)a3 alternativeItems:(id)a4;
- (INIntentResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
- (id)_JSONDictionaryRepresentationForIntent:(id)a3 parameterName:(id)a4;
- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)a3;
- (id)_dataForIntentSlotDescription:(id)a3;
- (id)_initWithIntentSlotResolutionResult:(id)a3 slotDescription:(id)a4;
- (id)_initWithResolutionResult:(id)a3;
- (id)_initWithResultCode:(int64_t)a3;
- (id)_objectForIntentSlotValue:(id)a3 slotDescription:(id)a4;
- (id)_stringForResultCode:(int64_t)a3;
- (id)descriptionAtIndent:(unint64_t)a3;
- (id)dictionaryRepresentation;
- (id)resolutionResultDataForIntent:(id)a3 intentSlotDescription:(id)a4 error:(id *)a5;
- (void)transformResolutionResultForIntent:(id)a3 intentSlotDescription:(id)a4 withOptionsProvider:(id)a5 completion:(id)a6;
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
  v5 = disambiguationItems;
  if (!disambiguationItems)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v5;
  v14[2] = @"resolvedValue";
  resolvedValue = self->_resolvedValue;
  v7 = resolvedValue;
  if (!resolvedValue)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v7;
  v14[3] = @"itemToConfirm";
  itemToConfirm = self->_itemToConfirm;
  v9 = itemToConfirm;
  if (!itemToConfirm)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = v9;
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
  v3 = [(_INPBIntentSlotResolutionResult *)v2 data];

  return v3;
}

- (id)_objectForIntentSlotValue:(id)a3 slotDescription:(id)a4
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 valueStyle];
  if ([v5 payloadStringValuesCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadStringValues];
      INIntentSlotValueTransformFromStringValues(v8);
    }

    else
    {
      v8 = [v5 payloadStringValueAtIndex:0];
      INIntentSlotValueTransformFromStringValue(v8);
    }

    v48 = LABEL_564:;
    v13 = v48;
    goto LABEL_67;
  }

  if ([v5 payloadDoubleValuesCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadDoubleValues];
      INIntentSlotValueTransformFromDoubleValues(v8);
    }

    else
    {
      v8 = [v5 payloadDoubleValueAtIndex:0];
      INIntentSlotValueTransformFromDoubleValue(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadIntegerValuesCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadIntegerValues];
      INIntentSlotValueTransformFromIntegerValues(v8);
    }

    else
    {
      v8 = [v5 payloadIntegerValueAtIndex:0];
      INIntentSlotValueTransformFromIntegerValue(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadContactValuesCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadContactValues];
      INIntentSlotValueTransformFromContactValues(v8);
    }

    else
    {
      v8 = [v5 payloadContactValueAtIndex:0];
      INIntentSlotValueTransformFromContactValueWithAlternatives(v8, 0);
    }

    goto LABEL_564;
  }

  if ([v5 payloadDateTimeRangeValuesCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadDateTimeRangeValues];
      INIntentSlotValueTransformFromDateTimeRangeValues(v8);
    }

    else
    {
      v8 = [v5 payloadDateTimeRangeValueAtIndex:0];
      INIntentSlotValueTransformFromDateTimeRangeValue(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadLocationsCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadLocations];
      INIntentSlotValueTransformFromLocationValues(v8);
    }

    else
    {
      v8 = [v5 payloadLocationAtIndex:0];
      INIntentSlotValueTransformFromLocationValue(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadDataStringsCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadDataStrings];
      INIntentSlotValueTransformFromDataStrings(v8);
    }

    else
    {
      v8 = [v5 payloadDataStringAtIndex:0];
      INIntentSlotValueTransformFromDataString(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadLongValuesCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadLongValues];
      INIntentSlotValueTransformFromLongValues(v8);
    }

    else
    {
      v8 = [v5 payloadLongValueAtIndex:0];
      INIntentSlotValueTransformFromLongValue(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadPaymentMethodValuesCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadPaymentMethodValues];
      INIntentSlotValueTransformFromPaymentMethodValues(v8);
    }

    else
    {
      v8 = [v5 payloadPaymentMethodValueAtIndex:0];
      INIntentSlotValueTransformFromPaymentMethodValue(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadTemperatureValuesCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadTemperatureValues];
      INIntentSlotValueTransformFromTemperatureValues(v8);
    }

    else
    {
      v8 = [v5 payloadTemperatureValueAtIndex:0];
      INIntentSlotValueTransformFromTemperatureValue(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadDistanceValuesCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadDistanceValues];
      INIntentSlotValueTransformFromDistanceValues(v8);
    }

    else
    {
      v8 = [v5 payloadDistanceValueAtIndex:0];
      INIntentSlotValueTransformFromDistanceValue(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadDateTimeValuesCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadDateTimeValues];
      INIntentSlotValueTransformFromDateTimes(v8);
    }

    else
    {
      v8 = [v5 payloadDateTimeValueAtIndex:0];
      INIntentSlotValueTransformFromDateTime(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadMassValuesCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadMassValues];
      INIntentSlotValueTransformFromMassValues(v8);
    }

    else
    {
      v8 = [v5 payloadMassValueAtIndex:0];
      INIntentSlotValueTransformFromMassValue(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadVolumeValuesCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadVolumeValues];
      INIntentSlotValueTransformFromVolumeValues(v8);
    }

    else
    {
      v8 = [v5 payloadVolumeValueAtIndex:0];
      INIntentSlotValueTransformFromVolumeValue(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadSpeedValuesCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadSpeedValues];
      INIntentSlotValueTransformFromSpeedValues(v8);
    }

    else
    {
      v8 = [v5 payloadSpeedValueAtIndex:0];
      INIntentSlotValueTransformFromSpeedValue(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadEnergyValuesCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadEnergyValues];
      INIntentSlotValueTransformFromEnergyValues(v8);
    }

    else
    {
      v8 = [v5 payloadEnergyValueAtIndex:0];
      INIntentSlotValueTransformFromEnergyValue(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadStringListsCount])
  {
    v8 = [v5 payloadStringListAtIndex:0];
    v9 = [(INStartCallRequestMetadata *)v8 dataStrings];
    v10 = INIntentSlotValueTransformFromStrings(v9);
LABEL_91:
    v13 = v10;

LABEL_67:
    goto LABEL_68;
  }

  if ([v5 payloadDoubleListsCount])
  {
    v8 = [v5 payloadDoubleListAtIndex:0];
    v9 = [(INStartCallRequestMetadata *)v8 dataStrings];
    v10 = INIntentSlotValueTransformFromDoubles(v9);
    goto LABEL_91;
  }

  if ([v5 payloadIntegerListsCount])
  {
    v8 = [v5 payloadIntegerListAtIndex:0];
    v9 = [(INStartCallRequestMetadata *)v8 dataStrings];
    v10 = INIntentSlotValueTransformFromIntegers(v9);
    goto LABEL_91;
  }

  if ([v5 payloadContactListsCount])
  {
    v8 = [v5 payloadContactListAtIndex:0];
    v9 = [(INStartCallRequestMetadata *)v8 contacts];
    v10 = INIntentSlotValueTransformFromContacts(v9);
    goto LABEL_91;
  }

  if ([v5 payloadDateTimeRangeListsCount])
  {
    v8 = [v5 payloadDateTimeRangeListAtIndex:0];
    v9 = [(INStartCallRequestMetadata *)v8 dateRanges];
    v10 = INIntentSlotValueTransformFromDateTimeRanges(v9);
    goto LABEL_91;
  }

  if ([v5 payloadLocationListsCount])
  {
    v8 = [v5 payloadLocationListAtIndex:0];
    v9 = [(INStartCallRequestMetadata *)v8 locations];
    v10 = INIntentSlotValueTransformFromLocations(v9);
    goto LABEL_91;
  }

  if ([v5 payloadDataStringListsCount])
  {
    v8 = [v5 payloadDataStringListAtIndex:0];
    v9 = [(INStartCallRequestMetadata *)v8 dataStrings];
    v10 = INIntentSlotValueTransformFromDataStrings(v9);
    goto LABEL_91;
  }

  if ([v5 payloadLongListsCount])
  {
    v8 = [v5 payloadLongListAtIndex:0];
    v9 = [(INStartCallRequestMetadata *)v8 dataStrings];
    v10 = INIntentSlotValueTransformFromLongs(v9);
    goto LABEL_91;
  }

  if ([v5 payloadPaymentMethodListsCount])
  {
    v8 = [v5 payloadPaymentMethodListAtIndex:0];
    v9 = [(INStartCallRequestMetadata *)v8 paymentMethods];
    v10 = INIntentSlotValueTransformFromPaymentMethods(v9);
    goto LABEL_91;
  }

  if ([v5 payloadTemperatureListsCount])
  {
    v8 = [v5 payloadTemperatureListAtIndex:0];
    v9 = [(INStartCallRequestMetadata *)v8 temperatures];
    v10 = INIntentSlotValueTransformFromTemperatures(v9);
    goto LABEL_91;
  }

  if ([v5 payloadDistanceListsCount])
  {
    v8 = [v5 payloadDistanceListAtIndex:0];
    v9 = [(INStartCallRequestMetadata *)v8 distances];
    v10 = INIntentSlotValueTransformFromDistances(v9);
    goto LABEL_91;
  }

  if ([v5 payloadPrimitiveBoolsCount])
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "payloadPrimitiveBoolAtIndex:", 0)}];
LABEL_102:
    v13 = v14;
    goto LABEL_68;
  }

  if ([v5 payloadPrimitiveIntsCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadPrimitiveIntAtIndex:0];
LABEL_96:
    v14 = [v15 numberWithInt:v16];
    goto LABEL_102;
  }

  if ([v5 payloadPrimitiveLongsCount])
  {
    v17 = MEMORY[0x1E696AD98];
    v18 = [v5 payloadPrimitiveLongAtIndex:0];
LABEL_99:
    v14 = [v17 numberWithLongLong:v18];
    goto LABEL_102;
  }

  if ([v5 payloadPrimitiveDoublesCount])
  {
    v19 = MEMORY[0x1E696AD98];
    [v5 payloadPrimitiveDoubleAtIndex:0];
    v14 = [v19 numberWithDouble:?];
    goto LABEL_102;
  }

  if ([v5 payloadPrimitiveStringsCount])
  {
    if (v7 == 3)
    {
      [v5 payloadPrimitiveStrings];
    }

    else
    {
      [v5 payloadPrimitiveStringAtIndex:0];
    }

    v14 = LABEL_106:;
    goto LABEL_102;
  }

  if ([v5 payloadIntentsCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadIntents];
      INIntentSlotValueTransformFromIntents(v8);
    }

    else
    {
      v8 = [v5 payloadIntentAtIndex:0];
      INIntentSlotValueTransformFromIntent(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadModifyRelationshipsCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadModifyRelationships];
      INIntentSlotValueTransformFromModifyRelationships(v8);
    }

    else
    {
      v8 = [v5 payloadModifyRelationshipAtIndex:0];
      INIntentSlotValueTransformFromModifyRelationship(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadModifyNicknamesCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadModifyNicknames];
      INIntentSlotValueTransformFromModifyNicknames(v8);
    }

    else
    {
      v8 = [v5 payloadModifyNicknameAtIndex:0];
      INIntentSlotValueTransformFromModifyNickname(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadCalendarEventsCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadCalendarEvents];
      INIntentSlotValueTransformFromCalendarEvents(v8);
    }

    else
    {
      v8 = [v5 payloadCalendarEventAtIndex:0];
      INIntentSlotValueTransformFromCalendarEvent(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadEventParticipantsCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadEventParticipants];
      INIntentSlotValueTransformFromEventParticipants(v8);
    }

    else
    {
      v8 = [v5 payloadEventParticipantAtIndex:0];
      INIntentSlotValueTransformFromEventParticipant(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadEventAttributesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadEventAttributeAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadEnumerationsCount])
  {
    v17 = MEMORY[0x1E696AD98];
    v18 = [v5 payloadEnumerationAtIndex:0];
    goto LABEL_99;
  }

  if ([v5 payloadAlarmsCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadAlarms];
      INIntentSlotValueTransformFromAlarms(v8);
    }

    else
    {
      v8 = [v5 payloadAlarmAtIndex:0];
      INIntentSlotValueTransformFromAlarm(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadAlarmPeriodsCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadAlarmPeriodAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadAlarmRepeatSchedulesCount])
  {
    if (v7 != 3)
    {
      v15 = MEMORY[0x1E696AD98];
      v16 = [v5 payloadAlarmRepeatScheduleAtIndex:0];
      goto LABEL_96;
    }

    v58 = 0;
    if ([v5 payloadAlarmRepeatSchedulesCount])
    {
      v20 = 0;
      do
      {
        INAlarmRepeatScheduleOptionsAddBackingType(&v58, [v5 payloadAlarmRepeatScheduleAtIndex:v20++]);
      }

      while (v20 < [v5 payloadAlarmRepeatSchedulesCount]);
LABEL_557:
      v34 = v58;
LABEL_559:
      v33 = MEMORY[0x1E696AD98];
      goto LABEL_560;
    }

    goto LABEL_558;
  }

  if ([v5 payloadAlarmSearchsCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadAlarmSearchs];
      INIntentSlotValueTransformFromAlarmSearchs(v8);
    }

    else
    {
      v8 = [v5 payloadAlarmSearchAtIndex:0];
      INIntentSlotValueTransformFromAlarmSearch(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadAlarmSearchTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadAlarmSearchTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadChangeAlarmStatusOperationsCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadChangeAlarmStatusOperationAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadSleepAlarmAttributesCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadSleepAlarmAttributes];
      INIntentSlotValueTransformFromSleepAlarmAttributes(v8);
    }

    else
    {
      v8 = [v5 payloadSleepAlarmAttributeAtIndex:0];
      INIntentSlotValueTransformFromSleepAlarmAttribute(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadUpdateAlarmOperationsCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadUpdateAlarmOperationAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadCallAudioRoutesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadCallAudioRouteAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadCallCapabilitiesCount])
  {
    if (v7 != 3)
    {
      v15 = MEMORY[0x1E696AD98];
      v16 = [v5 payloadCallCapabilityAtIndex:0];
      goto LABEL_96;
    }

    v21 = 0;
    if ([v5 payloadCallCapabilitiesCount])
    {
      v22 = 0;
      do
      {
        v23 = [v5 payloadCallCapabilityAtIndex:v22];
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

      while (v22 < [v5 payloadCallCapabilitiesCount]);
    }

    goto LABEL_369;
  }

  if ([v5 payloadCallDestinationTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadCallDestinationTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadCallGroupsCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadCallGroups];
      INIntentSlotValueTransformFromCallGroups(v8);
    }

    else
    {
      v8 = [v5 payloadCallGroupAtIndex:0];
      INIntentSlotValueTransformFromCallGroup(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadCallGroupConversationsCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadCallGroupConversations];
      INIntentSlotValueTransformFromCallGroupConversations(v8);
    }

    else
    {
      v8 = [v5 payloadCallGroupConversationAtIndex:0];
      INIntentSlotValueTransformFromCallGroupConversation(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadCallRecordFiltersCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadCallRecordFilters];
      INIntentSlotValueTransformFromCallRecordFilters(v8);
    }

    else
    {
      v8 = [v5 payloadCallRecordFilterAtIndex:0];
      INIntentSlotValueTransformFromCallRecordFilter(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadCallRecordTypesCount])
  {
    if (v7 != 3)
    {
      v15 = MEMORY[0x1E696AD98];
      v16 = [v5 payloadCallRecordTypeAtIndex:0];
      goto LABEL_96;
    }

    v58 = 0;
    if ([v5 payloadCallRecordTypesCount])
    {
      v25 = 0;
      do
      {
        INCallRecordTypeOptionsAddBackingType(&v58, [v5 payloadCallRecordTypeAtIndex:v25++]);
      }

      while (v25 < [v5 payloadCallRecordTypesCount]);
      goto LABEL_557;
    }

LABEL_558:
    v34 = 0;
    goto LABEL_559;
  }

  if ([v5 payloadCallRecordValuesCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadCallRecordValues];
      INIntentSlotValueTransformFromCallRecordValues(v8);
    }

    else
    {
      v8 = [v5 payloadCallRecordValueAtIndex:0];
      INIntentSlotValueTransformFromCallRecordValue(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadDialingContactsCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadDialingContacts];
      INIntentSlotValueTransformFromDialingContacts(v8);
    }

    else
    {
      v8 = [v5 payloadDialingContactAtIndex:0];
      INIntentSlotValueTransformFromDialingContact(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadPreferredCallProvidersCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadPreferredCallProviderAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadStartCallRequestMetadatasCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadStartCallRequestMetadatas];
      INIntentSlotValueTransformFromStartCallRequestMetadatas(v8);
    }

    else
    {
      v8 = [v5 payloadStartCallRequestMetadataAtIndex:0];
      INIntentSlotValueTransformFromStartCallRequestMetadata(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadCarAirCirculationModesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadCarAirCirculationModeAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadCarAudioSourcesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadCarAudioSourceAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadCarDefrostersCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadCarDefrosterAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadCarSeatsCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadCarSeatAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadCarSignalIdentifiersCount])
  {
    if (v7 != 3)
    {
      v15 = MEMORY[0x1E696AD98];
      v16 = [v5 payloadCarSignalIdentifierAtIndex:0];
      goto LABEL_96;
    }

    v21 = 0;
    if ([v5 payloadCarSignalIdentifiersCount])
    {
      v26 = 0;
      do
      {
        v27 = [v5 payloadCarSignalIdentifierAtIndex:v26];
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

      while (v26 < [v5 payloadCarSignalIdentifiersCount]);
    }

    goto LABEL_369;
  }

  if ([v5 payloadChargingConnectorTypesCount])
  {
    if (v7 == 3)
    {
      [v5 payloadChargingConnectorTypes];
    }

    else
    {
      [v5 payloadChargingConnectorTypeAtIndex:0];
    }

    goto LABEL_106;
  }

  if ([v5 payloadRelativeReferencesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadRelativeReferenceAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadRelativeSettingsCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadRelativeSettingAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadDeviceDetailsCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadDeviceDetails];
      INIntentSlotValueTransformFromDeviceDetails(v8);
    }

    else
    {
      v8 = [v5 payloadDeviceDetailAtIndex:0];
      INIntentSlotValueTransformFromDeviceDetail(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadSupportedTrafficIncidentTypesCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadSupportedTrafficIncidentTypes];
      INIntentSlotValueTransformFromSupportedTrafficIncidentTypes(v8);
    }

    else
    {
      v8 = [v5 payloadSupportedTrafficIncidentTypeAtIndex:0];
      INIntentSlotValueTransformFromSupportedTrafficIncidentType(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadHomeAttributesCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadHomeAttributes];
      INIntentSlotValueTransformFromHomeAttributes(v8);
    }

    else
    {
      v8 = [v5 payloadHomeAttributeAtIndex:0];
      INIntentSlotValueTransformFromHomeAttribute(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadHomeAttributeTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadHomeAttributeTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadHomeAttributeValueTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadHomeAttributeValueTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadHomeDeviceTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadHomeDeviceTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadHomeEntitiesCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadHomeEntities];
      INIntentSlotValueTransformFromHomeEntities(v8);
    }

    else
    {
      v8 = [v5 payloadHomeEntityAtIndex:0];
      INIntentSlotValueTransformFromHomeEntity(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadHomeEntityTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadHomeEntityTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadHomeFiltersCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadHomeFilters];
      INIntentSlotValueTransformFromHomeFilters(v8);
    }

    else
    {
      v8 = [v5 payloadHomeFilterAtIndex:0];
      INIntentSlotValueTransformFromHomeFilter(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadHomeUserTasksCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadHomeUserTasks];
      INIntentSlotValueTransformFromHomeUserTasks(v8);
    }

    else
    {
      v8 = [v5 payloadHomeUserTaskAtIndex:0];
      INIntentSlotValueTransformFromHomeUserTask(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadAnnouncementsCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadAnnouncements];
      INIntentSlotValueTransformFromAnnouncements(v8);
    }

    else
    {
      v8 = [v5 payloadAnnouncementAtIndex:0];
      INIntentSlotValueTransformFromAnnouncement(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadReadActionTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadReadActionTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadUserNotificationTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadUserNotificationTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadMediaAffinityTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadMediaAffinityTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadMediaDestinationsCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadMediaDestinations];
      INIntentSlotValueTransformFromMediaDestinations(v8);
    }

    else
    {
      v8 = [v5 payloadMediaDestinationAtIndex:0];
      INIntentSlotValueTransformFromMediaDestination(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadMediaItemGroupsCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadMediaItemGroups];
      INIntentSlotValueTransformFromMediaItemGroups(v8);
    }

    else
    {
      v8 = [v5 payloadMediaItemGroupAtIndex:0];
      INIntentSlotValueTransformFromMediaItemGroup(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadMediaItemValuesCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadMediaItemValues];
      INIntentSlotValueTransformFromMediaItemValues(v8);
    }

    else
    {
      v8 = [v5 payloadMediaItemValueAtIndex:0];
      INIntentSlotValueTransformFromMediaItemValue(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadMediaSearchsCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadMediaSearchs];
      INIntentSlotValueTransformFromMediaSearchs(v8);
    }

    else
    {
      v8 = [v5 payloadMediaSearchAtIndex:0];
      INIntentSlotValueTransformFromMediaSearch(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadParsecCategoriesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadParsecCategoryAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadPlaybackQueueLocationsCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadPlaybackQueueLocationAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadPlaybackRepeatModesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadPlaybackRepeatModeAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadPrivateAddMediaIntentDatasCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadPrivateAddMediaIntentDatas];
      INIntentSlotValueTransformFromPrivateAddMediaIntentDatas(v8);
    }

    else
    {
      v8 = [v5 payloadPrivateAddMediaIntentDataAtIndex:0];
      INIntentSlotValueTransformFromPrivateAddMediaIntentData(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadPrivatePlayMediaIntentDatasCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadPrivatePlayMediaIntentDatas];
      INIntentSlotValueTransformFromPrivatePlayMediaIntentDatas(v8);
    }

    else
    {
      v8 = [v5 payloadPrivatePlayMediaIntentDataAtIndex:0];
      INIntentSlotValueTransformFromPrivatePlayMediaIntentData(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadPrivateSearchForMediaIntentDatasCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadPrivateSearchForMediaIntentDatas];
      INIntentSlotValueTransformFromPrivateSearchForMediaIntentDatas(v8);
    }

    else
    {
      v8 = [v5 payloadPrivateSearchForMediaIntentDataAtIndex:0];
      INIntentSlotValueTransformFromPrivateSearchForMediaIntentData(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadPrivateUpdateMediaAffinityIntentDatasCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadPrivateUpdateMediaAffinityIntentDatas];
      INIntentSlotValueTransformFromPrivateUpdateMediaAffinityIntentDatas(v8);
    }

    else
    {
      v8 = [v5 payloadPrivateUpdateMediaAffinityIntentDataAtIndex:0];
      INIntentSlotValueTransformFromPrivateUpdateMediaAffinityIntentData(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadRadioTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadRadioTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadContactEventTriggersCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadContactEventTriggers];
      INIntentSlotValueTransformFromContactEventTriggers(v8);
    }

    else
    {
      v8 = [v5 payloadContactEventTriggerAtIndex:0];
      INIntentSlotValueTransformFromContactEventTrigger(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadDateSearchTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadDateSearchTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadLocationSearchTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadLocationSearchTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadNotesCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadNotes];
      INIntentSlotValueTransformFromNotes(v8);
    }

    else
    {
      v8 = [v5 payloadNoteAtIndex:0];
      INIntentSlotValueTransformFromNote(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadNoteContentsCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadNoteContents];
      INIntentSlotValueTransformFromNoteContents(v8);
    }

    else
    {
      v8 = [v5 payloadNoteContentAtIndex:0];
      INIntentSlotValueTransformFromNoteContent(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadNotebookItemTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadNotebookItemTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadSpatialEventTriggersCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadSpatialEventTriggers];
      INIntentSlotValueTransformFromSpatialEventTriggers(v8);
    }

    else
    {
      v8 = [v5 payloadSpatialEventTriggerAtIndex:0];
      INIntentSlotValueTransformFromSpatialEventTrigger(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadTasksCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadTasks];
      INIntentSlotValueTransformFromTasks(v8);
    }

    else
    {
      v8 = [v5 payloadTaskAtIndex:0];
      INIntentSlotValueTransformFromTask(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadTaskListsCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadTaskLists];
      INIntentSlotValueTransformFromTaskLists(v8);
    }

    else
    {
      v8 = [v5 payloadTaskListAtIndex:0];
      INIntentSlotValueTransformFromTaskList(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadTaskPrioritiesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadTaskPriorityAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadTaskReferencesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadTaskReferenceAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadTaskStatusCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadTaskStatusAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadTemporalEventTriggersCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadTemporalEventTriggers];
      INIntentSlotValueTransformFromTemporalEventTriggers(v8);
    }

    else
    {
      v8 = [v5 payloadTemporalEventTriggerAtIndex:0];
      INIntentSlotValueTransformFromTemporalEventTrigger(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadTemporalEventTriggerTypesCount])
  {
    if (v7 != 3)
    {
      v15 = MEMORY[0x1E696AD98];
      v16 = [v5 payloadTemporalEventTriggerTypeAtIndex:0];
      goto LABEL_96;
    }

    v21 = 0;
    if ([v5 payloadTemporalEventTriggerTypesCount])
    {
      v29 = 0;
      do
      {
        v30 = [v5 payloadTemporalEventTriggerTypeAtIndex:v29];
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

      while (v29 < [v5 payloadTemporalEventTriggerTypesCount]);
    }

LABEL_369:
    v33 = MEMORY[0x1E696AD98];
    v34 = v21;
LABEL_560:
    v14 = [v33 numberWithUnsignedInteger:v34];
    goto LABEL_102;
  }

  if ([v5 payloadAccountTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadAccountTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadBalanceTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadBalanceTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadBillDetailsValuesCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadBillDetailsValues];
      INIntentSlotValueTransformFromBillDetailsValues(v8);
    }

    else
    {
      v8 = [v5 payloadBillDetailsValueAtIndex:0];
      INIntentSlotValueTransformFromBillDetailsValue(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadBillPayeeValuesCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadBillPayeeValues];
      INIntentSlotValueTransformFromBillPayeeValues(v8);
    }

    else
    {
      v8 = [v5 payloadBillPayeeValueAtIndex:0];
      INIntentSlotValueTransformFromBillPayeeValue(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadBillTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadBillTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadCurrencyAmountsCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadCurrencyAmounts];
      INIntentSlotValueTransformFromCurrencyAmounts(v8);
    }

    else
    {
      v8 = [v5 payloadCurrencyAmountAtIndex:0];
      INIntentSlotValueTransformFromCurrencyAmount(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadFinancialAccountValuesCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadFinancialAccountValues];
      INIntentSlotValueTransformFromFinancialAccountValues(v8);
    }

    else
    {
      v8 = [v5 payloadFinancialAccountValueAtIndex:0];
      INIntentSlotValueTransformFromFinancialAccountValue(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadPaymentAmountValuesCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadPaymentAmountValues];
      INIntentSlotValueTransformFromPaymentAmountValues(v8);
    }

    else
    {
      v8 = [v5 payloadPaymentAmountValueAtIndex:0];
      INIntentSlotValueTransformFromPaymentAmountValue(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadPaymentStatusCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadPaymentStatusAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadBinarySettingValuesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadBinarySettingValueAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadBoundedSettingValuesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadBoundedSettingValueAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadDevicesCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadDevices];
      INIntentSlotValueTransformFromDevices(v8);
    }

    else
    {
      v8 = [v5 payloadDeviceAtIndex:0];
      INIntentSlotValueTransformFromDevice(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadGetSettingResponseDatasCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadGetSettingResponseDatas];
      INIntentSlotValueTransformFromGetSettingResponseDatas(v8);
    }

    else
    {
      v8 = [v5 payloadGetSettingResponseDataAtIndex:0];
      INIntentSlotValueTransformFromGetSettingResponseData(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadNumericSettingUnitsCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadNumericSettingUnitAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadNumericSettingValuesCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadNumericSettingValues];
      INIntentSlotValueTransformFromNumericSettingValues(v8);
    }

    else
    {
      v8 = [v5 payloadNumericSettingValueAtIndex:0];
      INIntentSlotValueTransformFromNumericSettingValue(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadSettingActionsCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadSettingActionAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadSettingMetadatasCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadSettingMetadatas];
      INIntentSlotValueTransformFromSettingMetadatas(v8);
    }

    else
    {
      v8 = [v5 payloadSettingMetadataAtIndex:0];
      INIntentSlotValueTransformFromSettingMetadata(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadTimersCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadTimers];
      INIntentSlotValueTransformFromTimers(v8);
    }

    else
    {
      v8 = [v5 payloadTimerAtIndex:0];
      INIntentSlotValueTransformFromTimer(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadTimerStatesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadTimerStateAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadTimerTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadTimerTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadVisualCodeTypesCount])
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 payloadVisualCodeTypeAtIndex:0];
    goto LABEL_96;
  }

  if ([v5 payloadAppIdentifiersCount])
  {
    if (v7 == 3)
    {
      v8 = [v5 payloadAppIdentifiers];
      INIntentSlotValueTransformFromAppIdentifiers(v8);
    }

    else
    {
      v8 = [v5 payloadAppIdentifierAtIndex:0];
      INIntentSlotValueTransformFromAppIdentifier(v8);
    }

    goto LABEL_564;
  }

  if ([v5 payloadArchivedObjectsCount])
  {
    if ([v6 valueType] != 225)
    {
      if (v7 == 3)
      {
        v8 = [v5 payloadArchivedObjects];
        INIntentSlotValueTransformFromArchivedObjects(v8);
      }

      else
      {
        v8 = [v5 payloadArchivedObjectAtIndex:0];
        INIntentSlotValueTransformFromArchivedObject(v8);
      }

      goto LABEL_564;
    }

    v35 = [v6 codableAttribute];
    if (v35)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v36 = v35;
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

    v38 = [v37 codableDescription];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __81__INIntentResolutionResult_Transform___objectForIntentSlotValue_slotDescription___block_invoke;
    v55[3] = &unk_1E7280AE8;
    v50 = v38;
    v56 = v50;
    v49 = v37;
    v57 = v49;
    v39 = MEMORY[0x193AD7780](v55);
    if (v7 == 3)
    {
      v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "payloadArchivedObjectsCount")}];
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v40 = [v5 payloadArchivedObjects];
      v41 = [v40 countByEnumeratingWithState:&v51 objects:v59 count:16];
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
              objc_enumerationMutation(v40);
            }

            v45 = v39[2](v39, *(*(&v51 + 1) + 8 * i));
            [v13 addObject:v45];
          }

          v42 = [v40 countByEnumeratingWithState:&v51 objects:v59 count:16];
        }

        while (v42);
      }
    }

    else
    {
      v40 = [v5 payloadArchivedObjectAtIndex:0];
      v13 = (v39)[2](v39, v40);
    }
  }

  else
  {
    if ([v5 payloadCustomObjectsCount])
    {
      if (v7 == 3)
      {
        v8 = [v5 payloadCustomObjects];
        INIntentSlotValueTransformFromCustomObjects(v8);
      }

      else
      {
        v8 = [v5 payloadCustomObjectAtIndex:0];
        INIntentSlotValueTransformFromCustomObject(v8);
      }

      goto LABEL_564;
    }

    if ([v5 payloadFilesCount])
    {
      if (v7 == 3)
      {
        v8 = [v5 payloadFiles];
        INIntentSlotValueTransformFromFiles(v8);
      }

      else
      {
        v8 = [v5 payloadFileAtIndex:0];
        INIntentSlotValueTransformFromFile(v8);
      }

      goto LABEL_564;
    }

    if ([v5 payloadIntentExecutionResultsCount])
    {
      if (v7 == 3)
      {
        v8 = [v5 payloadIntentExecutionResults];
        INIntentSlotValueTransformFromIntentExecutionResults(v8);
      }

      else
      {
        v8 = [v5 payloadIntentExecutionResultAtIndex:0];
        INIntentSlotValueTransformFromIntentExecutionResult(v8);
      }

      goto LABEL_564;
    }

    if ([v5 payloadURLValuesCount])
    {
      if (v7 == 3)
      {
        v8 = [v5 payloadURLValues];
        INIntentSlotValueTransformFromURLValues(v8);
      }

      else
      {
        v8 = [v5 payloadURLValueAtIndex:0];
        INIntentSlotValueTransformFromURLValue(v8);
      }

      goto LABEL_564;
    }

    if ([v5 payloadVoiceCommandDeviceInformationsCount])
    {
      if (v7 == 3)
      {
        v8 = [v5 payloadVoiceCommandDeviceInformations];
        INIntentSlotValueTransformFromVoiceCommandDeviceInformations(v8);
      }

      else
      {
        v8 = [v5 payloadVoiceCommandDeviceInformationAtIndex:0];
        INIntentSlotValueTransformFromVoiceCommandDeviceInformation(v8);
      }

      goto LABEL_564;
    }

    if ([v5 payloadWellnessMetadataPairsCount])
    {
      if (v7 == 3)
      {
        v8 = [v5 payloadWellnessMetadataPairs];
        INIntentSlotValueTransformFromWellnessMetadataPairs(v8);
      }

      else
      {
        v8 = [v5 payloadWellnessMetadataPairAtIndex:0];
        INIntentSlotValueTransformFromWellnessMetadataPair(v8);
      }

      goto LABEL_564;
    }

    if ([v5 payloadWellnessObjectResultValuesCount])
    {
      if (v7 == 3)
      {
        v8 = [v5 payloadWellnessObjectResultValues];
        INIntentSlotValueTransformFromWellnessObjectResultValues(v8);
      }

      else
      {
        v8 = [v5 payloadWellnessObjectResultValueAtIndex:0];
        INIntentSlotValueTransformFromWellnessObjectResultValue(v8);
      }

      goto LABEL_564;
    }

    if ([v5 payloadWellnessObjectTypesCount])
    {
      v15 = MEMORY[0x1E696AD98];
      v16 = [v5 payloadWellnessObjectTypeAtIndex:0];
      goto LABEL_96;
    }

    if ([v5 payloadWellnessQueryResultTypesCount])
    {
      v15 = MEMORY[0x1E696AD98];
      v16 = [v5 payloadWellnessQueryResultTypeAtIndex:0];
      goto LABEL_96;
    }

    if ([v5 payloadWellnessQuestionTypesCount])
    {
      v15 = MEMORY[0x1E696AD98];
      v16 = [v5 payloadWellnessQuestionTypeAtIndex:0];
      goto LABEL_96;
    }

    if ([v5 payloadWellnessUnitTypesCount])
    {
      if (v7 == 3)
      {
        v8 = [v5 payloadWellnessUnitTypes];
        INIntentSlotValueTransformFromWellnessUnitTypes(v8);
      }

      else
      {
        v8 = [v5 payloadWellnessUnitTypeAtIndex:0];
        INIntentSlotValueTransformFromWellnessUnitType(v8);
      }

      goto LABEL_564;
    }

    if ([v5 payloadWellnessValuesCount])
    {
      if (v7 == 3)
      {
        v8 = [v5 payloadWellnessValues];
        INIntentSlotValueTransformFromWellnessValues(v8);
      }

      else
      {
        v8 = [v5 payloadWellnessValueAtIndex:0];
        INIntentSlotValueTransformFromWellnessValue(v8);
      }

      goto LABEL_564;
    }

    if ([v5 payloadWorkoutAssociatedItemsCount])
    {
      if (v7 == 3)
      {
        v8 = [v5 payloadWorkoutAssociatedItems];
        INIntentSlotValueTransformFromWorkoutAssociatedItems(v8);
      }

      else
      {
        v8 = [v5 payloadWorkoutAssociatedItemAtIndex:0];
        INIntentSlotValueTransformFromWorkoutAssociatedItem(v8);
      }

      goto LABEL_564;
    }

    if ([v5 payloadWorkoutCustomizationsCount])
    {
      if (v7 == 3)
      {
        v8 = [v5 payloadWorkoutCustomizations];
        INIntentSlotValueTransformFromWorkoutCustomizations(v8);
      }

      else
      {
        v8 = [v5 payloadWorkoutCustomizationAtIndex:0];
        INIntentSlotValueTransformFromWorkoutCustomization(v8);
      }

      goto LABEL_564;
    }

    if ([v5 payloadWorkoutGoalUnitTypesCount])
    {
      v15 = MEMORY[0x1E696AD98];
      v16 = [v5 payloadWorkoutGoalUnitTypeAtIndex:0];
      goto LABEL_96;
    }

    if ([v5 payloadWorkoutLocationTypesCount])
    {
      v15 = MEMORY[0x1E696AD98];
      v16 = [v5 payloadWorkoutLocationTypeAtIndex:0];
      goto LABEL_96;
    }

    if ([v5 payloadWorkoutSequenceLabelsCount])
    {
      v15 = MEMORY[0x1E696AD98];
      v16 = [v5 payloadWorkoutSequenceLabelAtIndex:0];
      goto LABEL_96;
    }

    if ([v5 payloadMessageAttributesCount])
    {
      if (v7 != 3)
      {
        v15 = MEMORY[0x1E696AD98];
        v16 = [v5 payloadMessageAttributeAtIndex:0];
        goto LABEL_96;
      }

      v58 = 0;
      if ([v5 payloadMessageAttributesCount])
      {
        v46 = 0;
        do
        {
          INMessageAttributeOptionsAddBackingType(&v58, [v5 payloadMessageAttributeAtIndex:v46++]);
        }

        while (v46 < [v5 payloadMessageAttributesCount]);
        goto LABEL_557;
      }

      goto LABEL_558;
    }

    if ([v5 payloadMessageEffectsCount])
    {
      v15 = MEMORY[0x1E696AD98];
      v16 = [v5 payloadMessageEffectAtIndex:0];
      goto LABEL_96;
    }

    if ([v5 payloadMessageTypesCount])
    {
      v15 = MEMORY[0x1E696AD98];
      v16 = [v5 payloadMessageTypeAtIndex:0];
      goto LABEL_96;
    }

    if ([v5 payloadOutgoingMessageTypesCount])
    {
      v15 = MEMORY[0x1E696AD98];
      v16 = [v5 payloadOutgoingMessageTypeAtIndex:0];
      goto LABEL_96;
    }

    if ([v5 payloadSendMessageAttachmentsCount])
    {
      if (v7 == 3)
      {
        v8 = [v5 payloadSendMessageAttachments];
        INIntentSlotValueTransformFromSendMessageAttachments(v8);
      }

      else
      {
        v8 = [v5 payloadSendMessageAttachmentAtIndex:0];
        INIntentSlotValueTransformFromSendMessageAttachment(v8);
      }

      goto LABEL_564;
    }

    if ([v5 payloadActivitiesCount])
    {
      if (v7 == 3)
      {
        v8 = [v5 payloadActivities];
        INIntentSlotValueTransformFromActivities(v8);
      }

      else
      {
        v8 = [v5 payloadActivityAtIndex:0];
        INIntentSlotValueTransformFromActivity(v8);
      }

      goto LABEL_564;
    }

    if ([v5 payloadActivityListsCount])
    {
      v8 = [v5 payloadActivityListAtIndex:0];
      v9 = [(INStartCallRequestMetadata *)v8 activities];
      v10 = INIntentSlotValueTransformFromActivities(v9);
      goto LABEL_91;
    }

    if ([v5 payloadEventsCount])
    {
      if (v7 == 3)
      {
        v8 = [v5 payloadEvents];
        INIntentSlotValueTransformFromEvents(v8);
      }

      else
      {
        v8 = [v5 payloadEventAtIndex:0];
        INIntentSlotValueTransformFromEvent(v8);
      }

      goto LABEL_564;
    }

    if ([v5 payloadEventListsCount])
    {
      v8 = [v5 payloadEventListAtIndex:0];
      v9 = [(INStartCallRequestMetadata *)v8 events];
      v10 = INIntentSlotValueTransformFromEvents(v9);
      goto LABEL_91;
    }

    if ([v5 payloadGeographicalFeaturesCount])
    {
      if (v7 == 3)
      {
        v8 = [v5 payloadGeographicalFeatures];
        INIntentSlotValueTransformFromGeographicalFeatures(v8);
      }

      else
      {
        v8 = [v5 payloadGeographicalFeatureAtIndex:0];
        INIntentSlotValueTransformFromGeographicalFeature(v8);
      }

      goto LABEL_564;
    }

    if ([v5 payloadGeographicalFeatureListsCount])
    {
      v8 = [v5 payloadGeographicalFeatureListAtIndex:0];
      v9 = [(INStartCallRequestMetadata *)v8 geographicalFeatures];
      v10 = INIntentSlotValueTransformFromGeographicalFeatures(v9);
      goto LABEL_91;
    }

    if ([v5 payloadPersonalPlaceTypesCount])
    {
      v15 = MEMORY[0x1E696AD98];
      v16 = [v5 payloadPersonalPlaceTypeAtIndex:0];
      goto LABEL_96;
    }

    if ([v5 payloadPhotoAttributesCount])
    {
      if (v7 != 3)
      {
        v15 = MEMORY[0x1E696AD98];
        v16 = [v5 payloadPhotoAttributeAtIndex:0];
        goto LABEL_96;
      }

      v58 = 0;
      if ([v5 payloadPhotoAttributesCount])
      {
        v47 = 0;
        do
        {
          INPhotoAttributeOptionsAddBackingType(&v58, [v5 payloadPhotoAttributeAtIndex:v47++]);
        }

        while (v47 < [v5 payloadPhotoAttributesCount]);
        goto LABEL_557;
      }

      goto LABEL_558;
    }

    if ([v5 payloadPlacesCount])
    {
      if (v7 == 3)
      {
        v8 = [v5 payloadPlaces];
        INIntentSlotValueTransformFromPlaces(v8);
      }

      else
      {
        v8 = [v5 payloadPlaceAtIndex:0];
        INIntentSlotValueTransformFromPlace(v8);
      }

      goto LABEL_564;
    }

    if ([v5 payloadPlaceListsCount])
    {
      v8 = [v5 payloadPlaceListAtIndex:0];
      v9 = [(INStartCallRequestMetadata *)v8 places];
      v10 = INIntentSlotValueTransformFromPlaces(v9);
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
  v5 = [a1 resolutionResultConfirmationRequiredWithItemToConfirm:itemToConfirm];
  [v5 setConfirmationReason:reason];

  return v5;
}

- (id)_stringForResultCode:(int64_t)a3
{
  if (a3 > 7)
  {
    return &stru_1F01E0850;
  }

  else
  {
    return off_1E72840A8[a3];
  }
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INIntentResolutionResult;
  v6 = [(INIntentResolutionResult *)&v11 description];
  v7 = [(INIntentResolutionResult *)self dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_JSONDictionaryRepresentationForIntent:(id)a3 parameterName:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [INJSONEncoder alloc];
  v9 = objc_alloc_init(INJSONEncoderConfiguration);
  v10 = +[INPreferences siriLanguageCode];
  [(INJSONEncoderConfiguration *)v9 setLanguageCode:v10];

  v43 = [(INJSONEncoder *)v8 initWithConfiguration:v9];
  v11 = [v6 _codableDescription];
  v12 = [v11 attributeByName:v7];

  v13 = [v6 _intentInstanceDescription];
  v42 = [v13 slotByName:v7];

  v14 = [(INIntentResolutionResult *)self resolutionResultCode];
  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = [(INIntentResolutionResult *)self _stringForResultCode:v14];
  [v15 if_setObjectIfNonNil:v16 forKey:@"status"];

  if (v14 == 3)
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
    v20 = [v19 code];
    [v15 if_setObjectIfNonNil:v20 forKey:@"reason"];
  }

  else
  {
    [v15 if_setObjectIfNonNil:0 forKey:@"reason"];
  }

  v21 = [(INIntentResolutionResult *)self disambiguationItems];

  if (v21)
  {
    v38 = v15;
    v39 = v7;
    v40 = v6;
    v22 = objc_alloc(MEMORY[0x1E695DF70]);
    v23 = [(INIntentResolutionResult *)self disambiguationItems];
    v24 = [v22 initWithCapacity:{objc_msgSend(v23, "count")}];

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
          v29 = self;
          if (*v45 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v44 + 1) + 8 * i);
          v31 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
          v32 = [MEMORY[0x1E696AFB0] UUID];
          v33 = [v32 UUIDString];
          [v31 if_setObjectIfNonNil:v33 forKey:@"uuid"];

          v34 = [(INJSONEncoder *)v43 encodeObject:v30 withCodableAttribute:v12];
          [v31 if_setObjectIfNonNil:v34 forKey:@"value"];

          self = v29;
          v35 = [(INIntentResolutionResult *)v29 _vocabularyValueForObject:v30 slotDescription:v42];
          [v31 if_setObjectIfNonNil:v35 forKey:@"vocabularyValue"];

          [v24 addObject:v31];
        }

        v26 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v26);
    }

    v15 = v38;
    [v38 setObject:v24 forKey:@"selectionItems"];

    v7 = v39;
    v6 = v40;
  }

  [v15 if_setObjectIfNonNil:v7 forKey:{@"keyPath", v38}];

  v36 = *MEMORY[0x1E69E9840];

  return v15;
}

- (INIntentResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v57 = "[INIntentResolutionResult initWithJSONDictionary:forIntent:]";
    _os_log_debug_impl(&dword_18E991000, v8, OS_LOG_TYPE_DEBUG, "%s _initWithJSONDictionary called", buf, 0xCu);
  }

  v9 = [v6 objectForKey:@"status"];
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
      v14 = [v6 objectForKey:@"keyPath"];
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

      v17 = [v7 _codableDescription];
      v47 = v16;
      v18 = [v17 attributeByName:v16];

      v19 = [v18 resolutionResultClass];
      if (v19)
      {
        v20 = [v6 objectForKey:@"value"];
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

      v24 = [v6 objectForKey:@"reason"];
      if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v25 = [v18 unsupportedReasons];
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __61__INIntentResolutionResult_initWithJSONDictionary_forIntent___block_invoke;
        v53[3] = &unk_1E7284060;
        v46 = v24;
        v54 = v46;
        v26 = [v25 if_firstObjectPassingTest:v53];

        v13[6] = [v18 indexForUnsupportedReason:v26];
        v24 = v54;
      }

      else
      {
        v46 = 0;
      }

      v27 = [v6 objectForKey:@"selectionItems"];
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

        if (v19 && (isKindOfClass & 1) != 0)
        {
          v43 = v13;
          v44 = v7;
          v45 = v6;
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

          v7 = v44;
          v6 = v45;
        }
      }

      else
      {
        v31 = 0;
      }
    }

    self = v13;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  v41 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t __61__INIntentResolutionResult_initWithJSONDictionary_forIntent___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)_initWithIntentSlotResolutionResult:(id)a3 slotDescription:(id)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v55.receiver = self;
  v55.super_class = INIntentResolutionResult;
  v8 = [(INIntentResolutionResult *)&v55 init];
  if (!v8)
  {
    goto LABEL_36;
  }

  v9 = [v6 type];
  if (v9 > 6)
  {
    v14 = 0;
    if (v9 <= 8)
    {
      if (v9 != 7)
      {
        goto LABEL_46;
      }

      v30 = v8;
      v31 = 5;
    }

    else
    {
      if (v9 != 9)
      {
        if (v9 == 10)
        {
          goto LABEL_46;
        }

        if (v9 == 11)
        {
          [(INIntentResolutionResult *)v8 setResolutionResultCode:6];
          v15 = [v6 payloadNeedsExecuteIntent];
          v16 = [v15 intentExecution];

          v17 = [v16 encodedIntent];
          v18 = [v17 dataUsingEncoding:4];
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

  if (v9 > 2)
  {
    switch(v9)
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
        v10 = [v6 payloadConfirmation];
        v11 = [v10 confirmationItem];
        v12 = [v11 value];
        v13 = [(INIntentResolutionResult *)v8 _objectForIntentSlotValue:v12 slotDescription:v7];
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

  if (v9 == 1)
  {
    [(INIntentResolutionResult *)v8 setResolutionResultCode:0];
    v10 = [v6 payloadSuccess];
    v11 = [v10 resolvedValue];
    v12 = [(INIntentResolutionResult *)v8 _objectForIntentSlotValue:v11 slotDescription:v7];
    [(INIntentResolutionResult *)v8 setResolvedValue:v12];
    goto LABEL_29;
  }

  if (v9 == 2)
  {
    [(INIntentResolutionResult *)v8 setResolutionResultCode:1];
    v10 = [v6 payloadUnsupported];
    if ([v10 hasCustomUnsupportedReason])
    {
      -[INIntentResolutionResult setUnsupportedReason:](v8, "setUnsupportedReason:", [v10 customUnsupportedReason]);
    }

    v20 = [v10 conflictingParameters];
    v21 = [v20 firstObject];
    v11 = [v21 alternateItems];

    if ([v11 count])
    {
      v46 = v10;
      v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v45 = v11;
      v23 = v11;
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

            v28 = [*(*(&v51 + 1) + 8 * v27) value];
            v29 = [(INIntentResolutionResult *)v8 _objectForIntentSlotValue:v28 slotDescription:v7];
            [v22 addObject:v29];

            ++v27;
          }

          while (v25 != v27);
          v25 = [v23 countByEnumeratingWithState:&v51 objects:v57 count:16];
        }

        while (v25);
      }

      [(INIntentResolutionResult *)v8 setAlternatives:v22];
      v11 = v45;
      v10 = v46;
    }

    goto LABEL_30;
  }

LABEL_36:
  v32 = [v6 payloadNeedsDisambiguation];
  v33 = [v32 disambiguationItemsCount];

  if (v33)
  {
    v34 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v33];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v35 = [v6 payloadNeedsDisambiguation];
    v36 = [v35 disambiguationItems];

    v37 = [v36 countByEnumeratingWithState:&v47 objects:v56 count:16];
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
            objc_enumerationMutation(v36);
          }

          v41 = [*(*(&v47 + 1) + 8 * v40) value];
          v42 = [(INIntentResolutionResult *)v8 _objectForIntentSlotValue:v41 slotDescription:v7];
          [v34 addObject:v42];

          ++v40;
        }

        while (v38 != v40);
        v38 = [v36 countByEnumeratingWithState:&v47 objects:v56 count:16];
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

- (id)_initWithResolutionResult:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = INIntentResolutionResult;
  v5 = [(INIntentResolutionResult *)&v11 init];
  if (v5)
  {
    -[INIntentResolutionResult setResolutionResultCode:](v5, "setResolutionResultCode:", [v4 resolutionResultCode]);
    v6 = [v4 disambiguationItems];
    [(INIntentResolutionResult *)v5 setDisambiguationItems:v6];

    v7 = [v4 alternatives];
    [(INIntentResolutionResult *)v5 setAlternatives:v7];

    v8 = [v4 resolvedValue];
    [(INIntentResolutionResult *)v5 setResolvedValue:v8];

    v9 = [v4 itemToConfirm];
    [(INIntentResolutionResult *)v5 setItemToConfirm:v9];

    -[INIntentResolutionResult setUnsupportedReason:](v5, "setUnsupportedReason:", [v4 unsupportedReason]);
    -[INIntentResolutionResult setConfirmationReason:](v5, "setConfirmationReason:", [v4 confirmationReason]);
  }

  return v5;
}

- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)a3
{
  v88 = *MEMORY[0x1E69E9840];
  v76 = a3;
  v4 = objc_alloc_init(_INPBIntentSlotResolutionResult);
  v5 = [(INIntentResolutionResult *)self resolutionResultCode];
  v6 = 2;
  v75 = self;
  if (v5 <= 3)
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v6 = 4;
      }

      else
      {
        v10 = objc_alloc_init(_INPBPayloadConfirmation);
        v11 = objc_alloc_init(_INPBSelectionItem);
        v12 = [MEMORY[0x1E696AFB0] UUID];
        v13 = [v12 UUIDString];
        [(_INPBSelectionItem *)v11 setUuid:v13];

        v14 = [(INIntentResolutionResult *)self itemToConfirm];
        v15 = [(INIntentResolutionResult *)self _intentSlotValueForObject:v14 slotDescription:v76];
        [(_INPBSelectionItem *)v11 setValue:v15];

        v16 = [(INIntentResolutionResult *)self itemToConfirm];
        v17 = [(INIntentResolutionResult *)self _vocabularyValueForObject:v16 slotDescription:v76];
        [(_INPBSelectionItem *)v11 setVocabularyValue:v17];

        [(_INPBPayloadConfirmation *)v10 setConfirmationItem:v11];
        [(_INPBIntentSlotResolutionResult *)v4 setPayloadConfirmation:v10];

        v6 = 6;
      }
    }

    else if (v5)
    {
      if (v5 == 1)
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

        v44 = [(INIntentResolutionResult *)self alternatives];
        if ([v44 count])
        {
          v71 = v4;
          v45 = objc_alloc_init(_INPBConflictingParameter);
          v82 = 0u;
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v70 = v44;
          obj = v44;
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
                v52 = [MEMORY[0x1E696AFB0] UUID];
                v53 = [v52 UUIDString];
                [(_INPBSelectionItem *)v51 setUuid:v53];

                v54 = [(INIntentResolutionResult *)v75 _intentSlotValueForObject:v50 slotDescription:v76];
                [(_INPBSelectionItem *)v51 setValue:v54];

                v55 = [(INIntentResolutionResult *)v75 _vocabularyValueForObject:v50 slotDescription:v76];
                [(_INPBSelectionItem *)v51 setVocabularyValue:v55];

                [(_INPBConflictingParameter *)v45 addAlternateItems:v51];
              }

              v47 = [obj countByEnumeratingWithState:&v82 objects:v87 count:16];
            }

            while (v47);
          }

          [(_INPBPayloadUnsupported *)v7 addConflictingParameters:v45];
          v4 = v71;
          self = v75;
          v44 = v70;
        }

        [(_INPBIntentSlotResolutionResult *)v4 setPayloadUnsupported:v7];

        v6 = 2;
      }
    }

    else
    {
      v18 = objc_alloc_init(_INPBPayloadSuccess);
      v19 = [v76 name];
      [(_INPBPayloadSuccess *)v18 setResolvedKeyPath:v19];

      v20 = [(INIntentResolutionResult *)self resolvedValue];
      v21 = [(INIntentResolutionResult *)self _intentSlotValueForObject:v20 slotDescription:v76];

      [(_INPBPayloadSuccess *)v18 setResolvedValue:v21];
      [(_INPBIntentSlotResolutionResult *)v4 setPayloadSuccess:v18];

      v6 = 1;
    }

    goto LABEL_36;
  }

  if (v5 <= 5)
  {
    if (v5 == 4)
    {
      v22 = objc_alloc_init(_INPBPayloadNeedsValue);
      [(_INPBIntentSlotResolutionResult *)v4 setPayloadNeedsValue:v22];

      v6 = 3;
      goto LABEL_36;
    }

    v8 = v5 == 5;
    v9 = 7;
    goto LABEL_14;
  }

  if (v5 != 6)
  {
    v8 = v5 == 7;
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
  v26 = [(INIntentResolutionResult *)self intentToExecute];
  v27 = [v26 launchId];
  [(_INPBAppIdentifier *)v25 setBundleIdentifier:v27];

  [(_INPBIntentExecutionRequest *)v24 setAppIdentifier:v25];
  [(_INPBIntentExecutionRequest *)v24 setEncodingFormat:1];
  v28 = [(INIntentResolutionResult *)self intentToExecute];
  v29 = [v28 _JSONDictionaryRepresentation];
  v30 = [v29 if_JSONStringRepresentation];
  [(_INPBIntentExecutionRequest *)v24 setEncodedIntent:v30];

  v31 = [(INIntentResolutionResult *)self intentToExecute];
  v32 = [v31 _codableDescription];

  v33 = [v32 schema];
  if (!v33)
  {
    v34 = [(INIntentResolutionResult *)self intentToExecute];
    v35 = [v34 extensionBundleId];

    if (!v35)
    {
      v36 = [(INIntentResolutionResult *)self intentToExecute];
      v37 = [v36 launchId];
      v81 = 0;
      INExtractAppInfoFromSiriLaunchId(v37, &v81, 0);
      v35 = v81;
    }

    v38 = [v32 className];
    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@.%@", @"sirikit.intents.custom.", v35, v38];

    v33 = INSchemaWithTypeName(v39, 0, 0);
  }

  v40 = [(INIntentResolutionResult *)self intentToExecute];
  v41 = +[INStringLocalizer siriLocalizer];
  v42 = [v33 dictionaryRepresentationForIntent:v40 localizer:v41];

  v43 = [v42 if_JSONStringRepresentation];
  [(_INPBIntentExecutionRequest *)v24 setEncodedIntentDefinition:v43];

  [(_INPBPayloadNeedsExecuteIntent *)v23 setIntentExecution:v24];
  [(_INPBIntentSlotResolutionResult *)v4 setPayloadNeedsExecuteIntent:v23];

  v6 = 11;
LABEL_36:
  v56 = [(INIntentResolutionResult *)self disambiguationItems];
  if (v56)
  {
    v72 = v4;
    v57 = objc_alloc_init(_INPBPayloadNeedsDisambiguation);
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    obja = v56;
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
          v64 = [MEMORY[0x1E696AFB0] UUID];
          v65 = [v64 UUIDString];
          [(_INPBSelectionItem *)v63 setUuid:v65];

          v66 = [(INIntentResolutionResult *)v75 _intentSlotValueForObject:v62 slotDescription:v76];
          [(_INPBSelectionItem *)v63 setValue:v66];

          v67 = [(INIntentResolutionResult *)v75 _vocabularyValueForObject:v62 slotDescription:v76];
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

- (id)_dataForIntentSlotDescription:(id)a3
{
  v3 = [(INIntentResolutionResult *)self _buildIntentSlotResolutionResultWithIntentSlotDescription:a3];
  v4 = [v3 data];

  return v4;
}

- (void)transformResolutionResultForIntent:(id)a3 intentSlotDescription:(id)a4 withOptionsProvider:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(INIntentResolutionResult *)self resolutionResultCode];
  v15 = [v10 _metadata];
  v16 = [v11 facadePropertyName];
  v17 = [v15 forceNeedsValueForParameters];
  v18 = [v17 containsObject:v16];

  if (v18)
  {
    v19 = [v10 valueForKey:v16];
    if (v19 || v14 == 2)
    {
    }

    else if (v14 != 3)
    {
      v14 = 4;
      [(INIntentResolutionResult *)self setResolutionResultCode:4];
    }

    v17 = [v15 forceNeedsValueForParameters];
    v20 = [v17 if_arrayByRemovingObject:v16];
    [v15 setForceNeedsValueForParameters:v20];
  }

  if (v14 == 4 || v14 == 1)
  {
    v17 = [v11 provideOptionsSelectorStrings];
    v21 = [v17 count] != 0;
  }

  else
  {
    v21 = 0;
  }

  if (v14 == 4 || v14 == 1)
  {
  }

  if (v21)
  {
    v22 = [v11 name];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __116__INIntentResolutionResult_transformResolutionResultForIntent_intentSlotDescription_withOptionsProvider_completion___block_invoke;
    v23[3] = &unk_1E7284038;
    v24 = v11;
    v28 = v13;
    v25 = self;
    v26 = v12;
    v27 = v10;
    v29 = v14;
    [v26 getSupportsParameterOptionsForParameterNamed:v22 intent:v27 completionHandler:v23];
  }

  else
  {
    (*(v13 + 2))(v13, self);
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

- (id)resolutionResultDataForIntent:(id)a3 intentSlotDescription:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = 0;
  }

  return [(INIntentResolutionResult *)self _dataForIntentSlotDescription:a4];
}

- (id)_initWithResultCode:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = INIntentResolutionResult;
  v4 = [(INIntentResolutionResult *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(INIntentResolutionResult *)v4 setResolutionResultCode:a3];
  }

  return v5;
}

+ (id)_resolutionResultWithData:(id)a3 slotDescription:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [[_INPBIntentSlotResolutionMulticardinalResult alloc] initWithData:v5];
  if ([(_INPBIntentSlotResolutionMulticardinalResult *)v7 resolutionResultsCount])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[_INPBIntentSlotResolutionMulticardinalResult resolutionResultsCount](v7, "resolutionResultsCount")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [(_INPBIntentSlotResolutionMulticardinalResult *)v7 resolutionResults];
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = [objc_alloc(objc_opt_class()) _initWithIntentSlotResolutionResult:*(*(&v18 + 1) + 8 * i) slotDescription:v6];
          __70__INIntentResolutionResult__resolutionResultWithData_slotDescription___block_invoke(v14);
          [(_INPBIntentSlotResolutionResult *)v8 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    v15 = [(_INPBIntentSlotResolutionResult *)v8 copy];
  }

  else
  {
    v8 = [[_INPBIntentSlotResolutionResult alloc] initWithData:v5];
    v15 = [objc_alloc(objc_opt_class()) _initWithIntentSlotResolutionResult:v8 slotDescription:v6];
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

+ (id)requiresExecutionOfIntent:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithResultCode:6];
  v6 = [v4 _metadata];
  v7 = MEMORY[0x1E695DEF0];
  v8 = [MEMORY[0x1E696AE30] processInfo];
  v9 = v8;
  if (v8)
  {
    [v8 if_auditToken];
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  v10 = [v7 if_dataWithAuditToken:v12];
  [v6 setAuditTokenData:v10];

  [v5 setIntentToExecute:v4];

  return v5;
}

+ (id)resolutionResultUnsupportedWithReason:(unint64_t)a3 alternativeItems:(id)a4
{
  v6 = a4;
  v7 = [a1 resolutionResultUnsupportedWithReason:a3];
  [v7 setAlternatives:v6];

  return v7;
}

+ (id)resolutionResultUnsupportedWithReason:(unint64_t)a3
{
  v4 = [[a1 alloc] _initWithResultCode:1];
  [v4 setUnsupportedReason:a3];

  return v4;
}

+ (id)resolutionResultConfirmationRequiredWithItemToConfirm:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithResultCode:3];
  v6 = v5;
  if (v5)
  {
    [v5 setItemToConfirm:v4];
  }

  return v6;
}

+ (id)resolutionResultDisambiguationWithItemsToDisambiguate:(id)a3
{
  v4 = a3;
  if ([v4 count] >= 2 && (v5 = objc_msgSend([a1 alloc], "_initWithResultCode:", 2)) != 0)
  {
    v6 = v5;
    [v5 setDisambiguationItems:v4];
  }

  else if ([v4 count] == 1)
  {
    v6 = [[a1 alloc] _initWithResultCode:3];
    if (v6)
    {
      v7 = [v4 firstObject];
      [v6 setItemToConfirm:v7];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)resolutionResultSuccessWithResolvedValue:(id)a3
{
  v4 = a3;
  if (v4 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v4 count]))
  {
    v5 = [[a1 alloc] _initWithResultCode:0];
    v6 = v5;
    if (v5)
    {
      [v5 setResolvedValue:v4];
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
  v2 = [[a1 alloc] _initWithResultCode:1];

  return v2;
}

+ (INIntentResolutionResult)notRequired
{
  v2 = [[a1 alloc] _initWithResultCode:5];

  return v2;
}

+ (INIntentResolutionResult)needsValue
{
  v2 = [[a1 alloc] _initWithResultCode:4];

  return v2;
}

@end