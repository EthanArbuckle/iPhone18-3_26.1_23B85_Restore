uint64_t _INPBStringValueReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = PBReaderReadString();
        [a1 setValue:v13];
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_INPBValueMetadata);
    v16[0] = 0;
    v16[1] = 0;
    if (!PBReaderPlaceMark() || !_INPBValueMetadataReadFrom(v13, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    [a1 setValueMetadata:v13];
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

void INImageProxyInjectionUtilitiesInjectProxiesIntoSlotComposer(void *a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v19 = a2;
  v17 = a3;
  v18 = [v5 copyWithZone:0];
  v6 = dispatch_group_create();
  v16 = dispatch_queue_create("com.apple.intents.slot-composer-queue", MEMORY[0x1E69E96A8]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [v5 intentSlotDescriptions];
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = [v12 valueForSlotComposer:v5];
        v14 = v13;
        if (v13 && [v13 conformsToProtocol:&unk_1F02E20C8])
        {
          dispatch_group_enter(v6);
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __INImageProxyInjectionUtilitiesInjectProxiesIntoSlotComposer_block_invoke;
          v23[3] = &unk_1E727D7F8;
          v23[4] = v12;
          v24 = v18;
          v25 = v6;
          [v14 _injectProxiesForImages:v19 completion:v23];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  if (v17)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __INImageProxyInjectionUtilitiesInjectProxiesIntoSlotComposer_block_invoke_2;
    block[3] = &unk_1E7287140;
    v22 = v17;
    v21 = v18;
    dispatch_group_notify(v6, v16, block);
  }

  v15 = *MEMORY[0x1E69E9840];
}

INPrivatePlayMediaIntentData *INIntentSlotValueTransformFromPrivatePlayMediaIntentData(INPrivatePlayMediaIntentData *a1)
{
  if (a1)
  {
    v2 = a1;
    v17 = [INPrivatePlayMediaIntentData alloc];
    v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[INPrivatePlayMediaIntentData appSelectionEnabled](v2, "appSelectionEnabled")}];
    v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[INPrivatePlayMediaIntentData appInferred](v2, "appInferred")}];
    v21 = [(INPrivatePlayMediaIntentData *)v2 audioSearchResults];
    v25 = INIntentSlotValueTransformFromMediaItemValues(v21);
    v20 = [(INPrivatePlayMediaIntentData *)v2 privateMediaIntentData];
    v19 = INIntentSlotValueTransformFromPrivateMediaIntentData(v20);
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[INPrivatePlayMediaIntentData appSelectionSignalsEnabled](v2, "appSelectionSignalsEnabled")}];
    v15 = [MEMORY[0x1E696AD98] numberWithInt:{-[INPrivatePlayMediaIntentData appSelectionSignalsFrequencyDenominator](v2, "appSelectionSignalsFrequencyDenominator")}];
    v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[INPrivatePlayMediaIntentData shouldSuppressCommonWholeHouseAudioRoutes](v2, "shouldSuppressCommonWholeHouseAudioRoutes")}];
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[INPrivatePlayMediaIntentData immediatelyStartPlayback](v2, "immediatelyStartPlayback")}];
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[INPrivatePlayMediaIntentData isAmbiguousPlay](v2, "isAmbiguousPlay")}];
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[INPrivatePlayMediaIntentData isPersonalizedRequest](v2, "isPersonalizedRequest")}];
    v12 = [(INPrivatePlayMediaIntentData *)v2 internalSignals];
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[INPrivatePlayMediaIntentData entityConfidenceSignalsEnabled](v2, "entityConfidenceSignalsEnabled")}];
    v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[INPrivatePlayMediaIntentData entityConfidenceSignalsFrequencyDenominatorInternal](v2, "entityConfidenceSignalsFrequencyDenominatorInternal")}];
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[INPrivatePlayMediaIntentData entityConfidenceSignalsFrequencyDenominatorProd](v2, "entityConfidenceSignalsFrequencyDenominatorProd")}];
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[INPrivatePlayMediaIntentData entityConfidenceSignalsMaxItemsToDisambiguate](v2, "entityConfidenceSignalsMaxItemsToDisambiguate")}];
    v3 = [(INPrivatePlayMediaIntentData *)v2 alternativeProviderBundleIdentifier];
    v4 = INIntentSlotValueTransformFromString(v3);
    v5 = [(INPrivatePlayMediaIntentData *)v2 ampPAFDataSetID];
    v6 = INIntentSlotValueTransformFromString(v5);
    v7 = [(INPrivatePlayMediaIntentData *)v2 pegasusMetaData];

    v18 = [(INPrivatePlayMediaIntentData *)v17 initWithAppSelectionEnabled:v27 appInferred:v26 audioSearchResults:v25 privateMediaIntentData:v19 appSelectionSignalsEnabled:v16 appSelectionSignalsFrequencyDenominator:v15 shouldSuppressCommonWholeHouseAudioRoutes:v24 immediatelyStartPlayback:v23 isAmbiguousPlay:v22 isPersonalizedRequest:v14 internalSignals:v12 entityConfidenceSignalsEnabled:v13 entityConfidenceSignalsFrequencyDenominatorInternal:v11 entityConfidenceSignalsFrequencyDenominatorProd:v10 entityConfidenceSignalsMaxItemsToDisambiguate:v9 alternativeProviderBundleIdentifier:v4 ampPAFDataSetID:v6 pegasusMetaData:v7];
    a1 = v18;
    v1 = vars8;
  }

  return a1;
}

id INIntentSlotValueTransformFromMediaItemValues(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromMediaItemValue(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

INPrivateMediaIntentData *INIntentSlotValueTransformFromPrivateMediaIntentData(INPrivateMediaIntentData *a1)
{
  if (a1)
  {
    v2 = a1;
    v19 = [INPrivateMediaIntentData alloc];
    v27 = [(INPrivateMediaIntentData *)v2 speakerIDInfo];
    v30 = INIntentSlotValueTransformFromSpeakerIDInfo(v27);
    v26 = [(INPrivateMediaIntentData *)v2 proxiedThirdPartyAppInfo];
    v29 = INIntentSlotValueTransformFromAppIdentifier(v26);
    v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[INPrivateMediaIntentData isAppAttributionRequired](v2, "isAppAttributionRequired")}];
    v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[INPrivateMediaIntentData useDialogMemoryForAttribution](v2, "useDialogMemoryForAttribution")}];
    v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[INPrivateMediaIntentData isAppCorrection](v2, "isAppCorrection")}];
    v23 = [(INPrivateMediaIntentData *)v2 fallbackUsername];
    v22 = INIntentSlotValueTransformFromString(v23);
    v21 = [(INPrivateMediaIntentData *)v2 wholeHouseAudioMetadata];
    v3 = INIntentSlotValueTransformFromWholeHouseAudioMetadata(v21);
    v4 = MEMORY[0x1E696AD98];
    [(INPrivateMediaIntentData *)v2 nlConfidenceScore];
    v5 = [v4 numberWithFloat:?];
    v6 = [(INPrivateMediaIntentData *)v2 hasNlConfidenceLevel];
    v7 = [(INPrivateMediaIntentData *)v2 nlConfidenceLevel];
    if (!v6)
    {
      goto LABEL_7;
    }

    switch(v7)
    {
      case 30:
        v8 = 3;
        break;
      case 20:
        v8 = 2;
        break;
      case 10:
        v8 = 1;
        break;
      default:
LABEL_7:
        v8 = 0;
        break;
    }

    v9 = MEMORY[0x1E696AD98];
    [(INPrivateMediaIntentData *)v2 asrConfidenceScore];
    v10 = [v9 numberWithFloat:?];
    v11 = [(INPrivateMediaIntentData *)v2 hasAsrConfidenceLevel];
    v12 = [(INPrivateMediaIntentData *)v2 asrConfidenceLevel];
    if (!v11)
    {
      goto LABEL_13;
    }

    switch(v12)
    {
      case 30:
        v13 = 3;
        break;
      case 20:
        v13 = 2;
        break;
      case 10:
        v13 = 1;
        break;
      default:
LABEL_13:
        v13 = 0;
        break;
    }

    v14 = [(INPrivateMediaIntentData *)v2 resolvedSharedUserID];
    v15 = INIntentSlotValueTransformFromString(v14);
    v16 = [(INPrivateMediaIntentData *)v2 homeAutomationEntityProvider];

    v17 = INIntentSlotValueTransformFromHomeAutomationEntityProvider(v16);
    v20 = [(INPrivateMediaIntentData *)v19 initWithSpeakerIDInfo:v30 proxiedThirdPartyAppInfo:v29 isAppAttributionRequired:v28 useDialogMemoryForAttribution:v25 isAppCorrection:v24 fallbackUsername:v22 wholeHouseAudioMetadata:v3 nlConfidenceScore:v5 nlConfidenceLevel:v8 asrConfidenceScore:v10 asrConfidenceLevel:v13 resolvedSharedUserID:v15 homeAutomationEntityProvider:v17];

    a1 = v20;
    v1 = vars8;
  }

  return a1;
}

INSpeakerIDInfo *INIntentSlotValueTransformFromSpeakerIDInfo(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INSpeakerIDInfo alloc];
    v3 = [v1 sharedUserID];
    v4 = INIntentSlotValueTransformFromString(v3);
    v5 = [v1 hasSpeakerIDConfidence];
    v6 = [v1 speakerIDConfidence];

    if (((v6 - 1 < 5) & v5) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = [(INSpeakerIDInfo *)v2 initWithSharedUserID:v4 speakerIDConfidence:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

INAppIdentifier *INIntentSlotValueTransformFromAppIdentifier(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INAppIdentifier alloc];
    v3 = [v1 bundleIdentifier];
    v4 = [v1 bundleVersion];
    v5 = [v1 appName];

    v6 = [(INAppIdentifier *)v2 initWithBundleIdentifier:v3 bundleVersion:v4 appName:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

INWholeHouseAudioMetadata *INIntentSlotValueTransformFromWholeHouseAudioMetadata(INWholeHouseAudioMetadata *a1)
{
  if (a1)
  {
    v2 = a1;
    v18 = [INWholeHouseAudioMetadata alloc];
    v27 = [(INWholeHouseAudioMetadata *)v2 speakerNames];
    v32 = INIntentSlotValueTransformFromStrings(v27);
    v26 = [(INWholeHouseAudioMetadata *)v2 speakerRooms];
    v31 = INIntentSlotValueTransformFromStrings(v26);
    v25 = [(INWholeHouseAudioMetadata *)v2 permanentNames];
    v30 = INIntentSlotValueTransformFromStrings(v25);
    v24 = [(INWholeHouseAudioMetadata *)v2 intentSpeakerNames];
    v29 = INIntentSlotValueTransformFromStrings(v24);
    v23 = [(INWholeHouseAudioMetadata *)v2 intentSpeakerRooms];
    v16 = INIntentSlotValueTransformFromStrings(v23);
    v22 = [(INWholeHouseAudioMetadata *)v2 intentDestinationSpeakers];
    v15 = INIntentSlotValueTransformFromStrings(v22);
    v21 = [(INWholeHouseAudioMetadata *)v2 intentPermanentNames];
    v28 = INIntentSlotValueTransformFromStrings(v21);
    v20 = [(INWholeHouseAudioMetadata *)v2 spokenEntityTypes];
    v14 = INIntentSlotValueTransformFromStrings(v20);
    v17 = [(INWholeHouseAudioMetadata *)v2 spokenEntityNames];
    v3 = INIntentSlotValueTransformFromStrings(v17);
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[INWholeHouseAudioMetadata numberOfHomeAutomationWords](v2, "numberOfHomeAutomationWords")}];
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[INWholeHouseAudioMetadata isAllSpeakers](v2, "isAllSpeakers")}];
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[INWholeHouseAudioMetadata isPauseOrStop](v2, "isPauseOrStop")}];
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[INWholeHouseAudioMetadata isWholeHouseAudioCommand](v2, "isWholeHouseAudioCommand")}];
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[INWholeHouseAudioMetadata isInHere](v2, "isInHere")}];
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[INWholeHouseAudioMetadata hasExcept](v2, "hasExcept")}];
    v9 = MEMORY[0x1E696AD98];
    v10 = [(INWholeHouseAudioMetadata *)v2 isParticipatingSpeaker];

    v11 = [v9 numberWithBool:v10];
    v19 = [(INWholeHouseAudioMetadata *)v18 initWithSpeakerNames:v32 speakerRooms:v31 permanentNames:v30 intentSpeakerNames:v29 intentSpeakerRooms:v16 intentDestinationSpeakers:v15 intentPermanentNames:v28 spokenEntityTypes:v14 spokenEntityNames:v3 numberOfHomeAutomationWords:v4 isAllSpeakers:v13 isPauseOrStop:v5 isWholeHouseAudioCommand:v6 isInHere:v7 hasExcept:v8 isParticipatingSpeaker:v11];

    a1 = v19;
    v1 = vars8;
  }

  return a1;
}

INHomeAutomationEntityProvider *INIntentSlotValueTransformFromHomeAutomationEntityProvider(INHomeAutomationEntityProvider *a1)
{
  if (a1)
  {
    v2 = a1;
    v17 = [INHomeAutomationEntityProvider alloc];
    v26 = [(INHomeAutomationEntityProvider *)v2 roomNames];
    v29 = INIntentSlotValueTransformFromStrings(v26);
    v25 = [(INHomeAutomationEntityProvider *)v2 homeName];
    v28 = INIntentSlotValueTransformFromString(v25);
    v24 = [(INHomeAutomationEntityProvider *)v2 zoneNames];
    v27 = INIntentSlotValueTransformFromStrings(v24);
    v23 = [(INHomeAutomationEntityProvider *)v2 accessoryNames];
    v16 = INIntentSlotValueTransformFromStrings(v23);
    v22 = [(INHomeAutomationEntityProvider *)v2 serviceNames];
    v15 = INIntentSlotValueTransformFromStrings(v22);
    v21 = [(INHomeAutomationEntityProvider *)v2 serviceGroups];
    v13 = INIntentSlotValueTransformFromStrings(v21);
    v20 = [(INHomeAutomationEntityProvider *)v2 intentFromEntities];
    v12 = INIntentSlotValueTransformFromHomeAutomationFromEntities(v20);
    v19 = [(INHomeAutomationEntityProvider *)v2 intentDeviceQuantifier];
    v11 = INIntentSlotValueTransformFromString(v19);
    v14 = [(INHomeAutomationEntityProvider *)v2 destinationDeviceId];
    v3 = INIntentSlotValueTransformFromString(v14);
    v4 = [(INHomeAutomationEntityProvider *)v2 intentDeviceType];
    v5 = INIntentSlotValueTransformFromString(v4);
    v6 = [(INHomeAutomationEntityProvider *)v2 intentPlaceHint];
    v7 = INIntentSlotValueTransformFromString(v6);
    v8 = [(INHomeAutomationEntityProvider *)v2 intentReference];

    v9 = INIntentSlotValueTransformFromString(v8);
    v18 = [(INHomeAutomationEntityProvider *)v17 initWithRoomNames:v29 homeName:v28 zoneNames:v27 accessoryNames:v16 serviceNames:v15 serviceGroups:v13 intentFromEntities:v12 intentDeviceQuantifier:v11 destinationDeviceId:v3 intentDeviceType:v5 intentPlaceHint:v7 intentReference:v9];

    a1 = v18;
    v1 = vars8;
  }

  return a1;
}

id INMediaDomainGetIntentDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INMediaDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INMediaDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_5008);
    }

    v2 = [sMediaDomain_intentDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id _INVCIntentDefinitionManagerClass()
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v0 = getVCIntentDefinitionManagerClass_softClass;
  v9 = getVCIntentDefinitionManagerClass_softClass;
  if (!getVCIntentDefinitionManagerClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v11 = __getVCIntentDefinitionManagerClass_block_invoke;
    v12 = &unk_1E72888B8;
    v13 = &v6;
    __getVCIntentDefinitionManagerClass_block_invoke(&buf);
    v0 = v7[3];
  }

  v1 = v0;
  _Block_object_dispose(&v6, 8);
  if ([v1 conformsToProtocol:{&unk_1F0361818, v6}])
  {
    v2 = v1;
  }

  else
  {
    v3 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "_INVCIntentDefinitionManagerClass";
      _os_log_fault_impl(&dword_18E991000, v3, OS_LOG_TYPE_FAULT, "%s VCIntentDefinitionManager doesn't conform to the INVCIntentDefinitionManager protocol.", &buf, 0xCu);
    }

    v2 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];

  return v2;
}

id INLocalizedFormatStringFromCodable(void *a1, void *a2, void *a3, __CFBundle *a4, void *a5, void *a6, void *a7, __CFString **a8, unsigned __int8 a9)
{
  v99 = *MEMORY[0x1E69E9840];
  v73 = a1;
  v16 = a2;
  v17 = a3;
  v81 = a5;
  v82 = a6;
  v18 = a7;
  if (a4)
  {
    v19 = CFBundleCopyBundleURL(a4);
    if (v19)
    {
      v20 = v19;
      v21 = [MEMORY[0x1E696AAE8] bundleWithURL:v19];
      CFRelease(v20);
      v22 = MEMORY[0x1E69AA8A8];
      v23 = [v81 languageCode];
      v24 = [v22 grammarCollectionNamed:v17 bundle:v21 language:v23];

      v25 = v73;
      if (v24)
      {
        v76 = [v24 sentenceWithIdentifier:v73];
        if (v76 || ([v24 sentenceWithIdentifier:v16], (v76 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v69 = v18;
          v71 = v17;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v26 = [v82 _nonNilAttributes];
          v27 = v76;
          v80 = [v26 countByEnumeratingWithState:&v92 objects:v98 count:16];
          if (!v80)
          {
            goto LABEL_23;
          }

          obj = *v93;
          v74 = v26;
          while (1)
          {
            for (i = 0; i != v80; ++i)
            {
              if (*v93 != obj)
              {
                objc_enumerationMutation(v26);
              }

              v29 = *(*(&v92 + 1) + 8 * i);
              v30 = [v82 _objectDescription];
              v31 = [v30 attributeByName:v29];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v32 = [v31 typeName];
                if ([v32 isEqualToString:@"Long"])
                {
                }

                else
                {
                  v39 = [v31 typeName];
                  v40 = [v39 isEqualToString:@"Double"];

                  if (!v40)
                  {
                    goto LABEL_21;
                  }
                }

                v34 = [v82 valueForKey:v29];
                [v27 setNumber:v34 forPlaceholder:v29];
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_21;
                }

                v33 = v21;
                v34 = [v82 valueForKey:v29];
                v35 = [v31 valueForIndex:{objc_msgSend(v34, "unsignedIntegerValue")}];
                v36 = [v35 displayNameLocID];
                v37 = [v24 tokenWithIdentifier:v36];

                if (!v37)
                {
                  v38 = [v35 displayName];
                  v37 = [v24 tokenWithIdentifier:v38];
                }

                v27 = v76;
                [v76 setToken:v37 forPlaceholder:v29];

                v21 = v33;
                v26 = v74;
              }

LABEL_21:
            }

            v80 = [v26 countByEnumeratingWithState:&v92 objects:v98 count:16];
            if (!v80)
            {
LABEL_23:

              v41 = [v27 resolvedSentence];
              v18 = v69;
              v17 = v71;
              v42 = v27;
              v16 = v67;
              goto LABEL_53;
            }
          }
        }
      }

      v77 = [v16 mutableCopy];
      if (a8)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v77 = [v16 mutableCopy];
      v25 = v73;
      if (a8)
      {
LABEL_29:
        v43 = CFBundleGetDevelopmentRegion(a4);
        goto LABEL_30;
      }
    }

LABEL_31:
    if (v25)
    {
      goto LABEL_32;
    }

LABEL_47:
    v21 = 0;
    v24 = 0;
    v63 = v77;
    if (v77)
    {
      goto LABEL_52;
    }

LABEL_48:
    v41 = 0;
    goto LABEL_54;
  }

  v77 = [v16 mutableCopy];
  if (a8)
  {
    v43 = @"en";
    v25 = v73;
LABEL_30:
    *a8 = v43;
    goto LABEL_31;
  }

  v25 = v73;
  if (!v73)
  {
    goto LABEL_47;
  }

LABEL_32:
  v75 = a4;
  v70 = v18;
  v72 = v17;
  v44 = [v25 mutableCopy];
  v45 = v16;
  v24 = [v16 mutableCopy];
  v46 = [v82 _nonNilAttributes];
  v47 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:1];
  v97 = v47;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v97 count:1];
  v49 = [v46 sortedArrayUsingDescriptors:v48];

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  obja = v49;
  v50 = [obja countByEnumeratingWithState:&v88 objects:v96 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v89;
    v21 = v44;
    do
    {
      v53 = 0;
      v54 = v21;
      v55 = v24;
      do
      {
        if (*v89 != v52)
        {
          objc_enumerationMutation(obja);
        }

        v56 = *(*(&v88 + 1) + 8 * v53);
        v57 = [v82 _objectDescription];
        v58 = [v57 attributeByName:v56];

        v86 = v55;
        v87 = v54;
        _INUpdateFinalLocalizedString(v82, v45, v58, v56, a9, v81, &v87, &v86);
        v21 = v87;

        v24 = v86;
        ++v53;
        v54 = v21;
        v55 = v24;
      }

      while (v51 != v53);
      v51 = [obja countByEnumeratingWithState:&v88 objects:v96 count:16];
    }

    while (v51);
  }

  else
  {
    v21 = v44;
  }

  if (v75)
  {
    v17 = v72;
    v59 = INLocalizedStringFromBundle(v21, v21, v72, v81, v75, v68);
    v18 = v70;
    v60 = v77;
    if ([v59 length] && (objc_msgSend(v21, "isEqualToString:", v59) & 1) == 0)
    {
      v63 = [v59 mutableCopy];
    }

    else
    {
      INLocalizedStringFromBundle(v24, v24, v72, v81, v75, v68);
      v62 = v61 = v21;
      v63 = [v62 mutableCopy];

      v60 = v62;
      v21 = v61;
    }

    v16 = v45;
  }

  else
  {
    v16 = v45;
    v18 = v70;
    v17 = v72;
    v63 = v77;
  }

  if (!v63)
  {
    goto LABEL_48;
  }

LABEL_52:
  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = __INLocalizedFormatStringFromCodable_block_invoke;
  v83[3] = &unk_1E7281EC8;
  v84 = v18;
  v85 = v82;
  v64 = INFillOutStringWithStringsDict(v24, v63, v83);
  v41 = [v64 mutableCopy];

  v42 = v84;
LABEL_53:

LABEL_54:
  v65 = *MEMORY[0x1E69E9840];

  return v41;
}

id INCallsDomainGetIntentDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INCallsDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INCallsDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_2423);
    }

    v2 = [sCallsDomain_intentDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

_INPBCallRecordFilter *INIntentSlotValueTransformToCallRecordFilter(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBCallRecordFilter);
    v3 = [v1 participants];
    v4 = INIntentSlotValueTransformToContacts(v3);
    [(_INPBCallRecordFilter *)v2 setParticipants:v4];

    v5 = [v1 callTypes];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __INIntentSlotValueTransformToCallRecordFilter_block_invoke;
    v13[3] = &unk_1E7288628;
    v6 = v2;
    v14 = v6;
    INCallRecordTypeOptionsEnumerateBackingTypes(v5, v13);
    v7 = [v1 callCapability];
    if (v7 == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 0x7FFFFFFF;
    }

    if (v7 == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = v8;
    }

    [(_INPBCallRecordFilter *)v6 setCallCapability:v9];
    v10 = [v1 preferredCallProvider];

    if ((v10 - 1) >= 3)
    {
      v11 = 0x7FFFFFFFLL;
    }

    else
    {
      v11 = (v10 + 1);
    }

    [(_INPBCallRecordFilter *)v6 setPreferredCallProvider:v11];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

_INPBCallRecordValue *INIntentSlotValueTransformToCallRecordValue(void *a1)
{
  v3 = a1;
  if (v3)
  {
    v4 = objc_alloc_init(_INPBCallRecordValue);
    v5 = [v3 identifier];
    [(_INPBCallRecordValue *)v4 setIdentifier:v5];

    v6 = [v3 dateCreated];

    if (v6)
    {
      v7 = [v3 dateCreated];
      if (v7)
      {
        v1 = [MEMORY[0x1E695DEE8] currentCalendar];
        v2 = [v3 dateCreated];
        v8 = [v1 components:3178748 fromDate:v2];
      }

      else
      {
        v8 = 0;
      }

      v9 = INIntentSlotValueTransformToDateTime(v8);
      [(_INPBCallRecordValue *)v4 setDateCreated:v9];

      if (v7)
      {
      }
    }

    v10 = [v3 callRecordType] - 1;
    if (v10 > 7)
    {
      v11 = 0x7FFFFFFFLL;
    }

    else
    {
      v11 = dword_18EE5EA60[v10];
    }

    [(_INPBCallRecordValue *)v4 setCallType:v11];
    v12 = [v3 callDuration];

    if (v12)
    {
      v13 = objc_alloc_init(_INPBCallMetricsValue);
      v14 = [v3 callDuration];
      [v14 floatValue];
      [(_INPBCallMetricsValue *)v13 setCallDuration:v15];

      v16 = objc_alloc_init(_INPBCallMetrics);
      [(_INPBCallMetrics *)v16 setValue:v13];
      [(_INPBCallRecordValue *)v4 setCallMetrics:v16];
    }

    v17 = [v3 unseen];
    -[_INPBCallRecordValue setUnseen:](v4, "setUnseen:", [v17 BOOLValue]);

    v18 = [v3 callCapability];
    if (v18 == 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = 0x7FFFFFFF;
    }

    if (v18 == 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = v19;
    }

    [(_INPBCallRecordValue *)v4 setCallCapability:v20];
    v21 = [v3 numberOfCalls];
    v22 = INIntentSlotValueTransformToInteger(v21);
    [(_INPBCallRecordValue *)v4 setNumberOfCalls:v22];

    v23 = [v3 preferredCallProvider];
    if ((v23 - 1) >= 3)
    {
      v24 = 0x7FFFFFFFLL;
    }

    else
    {
      v24 = (v23 + 1);
    }

    [(_INPBCallRecordValue *)v4 setPreferredCallProvider:v24];
    v25 = [v3 providerId];
    [(_INPBCallRecordValue *)v4 setProviderId:v25];

    v26 = [v3 providerBundleId];
    [(_INPBCallRecordValue *)v4 setProviderBundleId:v26];

    v27 = [v3 isCallerIdBlocked];
    -[_INPBCallRecordValue setIsCallerIdBlocked:](v4, "setIsCallerIdBlocked:", [v27 BOOLValue]);

    v28 = [v3 participants];
    v29 = INIntentSlotValueTransformToContactValues(v28);
    [(_INPBCallRecordValue *)v4 setParticipants:v29];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id INLocalizedDeferredString(void *a1, id *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a1;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v43 = v15;
  v44 = 0;
  v41 = v17;
  v42 = v16;
  v40 = v20;
  v22 = INLocalizedFormat(v15, v16, v17, v18, v20, v19, v21, &v44);
  v23 = v44;
  v24 = v22;
  v25 = v23;
  v26 = *a2;
  if ([v26 count])
  {
    v38 = v19;
    v39 = v18;
    v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v26, "count")}];
    v54[0] = 0;
    v54[1] = v54;
    v54[2] = 0x2020000000;
    v54[3] = 0;
    v53[0] = 0;
    v53[1] = v53;
    v53[2] = 0x2020000000;
    v53[3] = 0;
    v28 = [v24 mutableCopy];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __INPopulateFormatStringWithArguments_block_invoke;
    v45[3] = &unk_1E727F898;
    v51 = v54;
    v29 = v24;
    v46 = v29;
    v47 = v26;
    v48 = v25;
    v30 = v28;
    v49 = v30;
    v52 = v53;
    v31 = v27;
    v50 = v31;
    v32 = MEMORY[0x193AD7780](v45);
    v33 = INSharedFormatRegularExpression();
    [v33 enumerateMatchesInString:v29 options:0 range:0 usingBlock:{objc_msgSend(v29, "length"), v32}];

    [v30 replaceOccurrencesOfString:@"%%" withString:@"%" options:0 range:{0, objc_msgSend(v30, "length")}];
    v34 = *a2;
    *a2 = v31;
    v35 = v31;

    v36 = v30;
    _Block_object_dispose(v53, 8);
    _Block_object_dispose(v54, 8);
    v19 = v38;
    v18 = v39;
  }

  else
  {
    v36 = v24;
  }

  return v36;
}

void sub_18E9C5054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 120), 8);
  _Unwind_Resume(a1);
}

id INLocalizedFormat(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v63 = *MEMORY[0x1E69E9840];
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = INCreateUniqueBundle(v17, v18);
  if (v22)
  {
    v23 = v22;
    v24 = INLocalizedFormatForBundle(v22, v15, v16, v19, a8);
    CFRelease(v23);
  }

  else
  {
    if (!v17 || !v21)
    {
      goto LABEL_14;
    }

    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__26718;
    v53 = __Block_byref_object_dispose__26719;
    v54 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__26718;
    v47 = __Block_byref_object_dispose__26719;
    v48 = 0;
    v24 = [MEMORY[0x1E695DFD8] setWithObject:v17];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __INLocalizedFormat_block_invoke;
    v35[3] = &unk_1E727F870;
    v32 = v17;
    v36 = v32;
    v37 = v18;
    v41 = &v49;
    v25 = v15;
    v38 = v25;
    v39 = v16;
    v40 = v19;
    v42 = &v43;
    v34 = 0;
    [v21 accessBundleContentForBundleIdentifiers:v24 withBlock:v35 error:&v34];
    v31 = v25;
    v33 = v34;

    v26 = v50[5];
    if (v26)
    {
      if (a8)
      {
        *a8 = v44[5];
      }

      v24 = v50[5];
    }

    else if (v33)
    {
      log = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v56 = "INLocalizedFormat";
        v57 = 2114;
        v58 = v32;
        v59 = 2114;
        v60 = v31;
        v61 = 2114;
        v62 = v33;
        _os_log_error_impl(&dword_18E991000, log, OS_LOG_TYPE_ERROR, "%s Failed to access bundle %{public}@ to localize %{public}@: %{public}@", buf, 0x2Au);
      }
    }

    _Block_object_dispose(&v43, 8);
    _Block_object_dispose(&v49, 8);

    if (!v26)
    {
LABEL_14:
      if (v20)
      {
        v27 = v20;
      }

      else
      {
        if (a8)
        {
          *a8 = [MEMORY[0x1E695DF58] currentLocale];
        }

        v27 = v15;
      }

      v24 = v27;
    }
  }

  v28 = *MEMORY[0x1E69E9840];

  return v24;
}

void sub_18E9C5440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

uint64_t INCreateUniqueBundle(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [MEMORY[0x1E6963618] bundleProxyForCurrentProcess];
    v6 = [v5 bundleIdentifier];
    v7 = [v6 isEqualToString:v3];

    if ((v7 & 1) == 0)
    {
      v8 = [MEMORY[0x1E6963618] bundleProxyForIdentifier:v3];

      v5 = v8;
    }

    v9 = [v5 bundleURL];
    if ([v9 isFileURL] && (objc_msgSend(MEMORY[0x1E696AC08], "defaultManager"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "path"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isReadableFileAtPath:", v11), v11, v10, (v12 & 1) != 0))
    {
      v13 = *MEMORY[0x1E695E480];
      Unique = _CFBundleCreateUnique();

      if (Unique)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  if ([v4 isFileURL] && (objc_msgSend(MEMORY[0x1E696AC08], "defaultManager"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "path"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isReadableFileAtPath:", v16), v16, v15, v17))
  {
    v18 = *MEMORY[0x1E695E480];
    Unique = _CFBundleCreateUnique();
  }

  else
  {
    Unique = 0;
  }

LABEL_13:

  return Unique;
}

__CFString *INLocalizedFormatForBundle(__CFBundle *a1, void *a2, void *a3, void *a4, void *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (v11)
  {
    v26 = a5;
    v12 = [MEMORY[0x1E695DF58] preferredLanguages];
    v13 = [v12 mutableCopy];

    [v13 insertObject:v11 atIndex:0];
    v14 = CFBundleCopyBundleLocalizations(a1);
    v27 = v13;
    v15 = CFBundleCopyLocalizationsForPreferences(v14, v13);
    CFRelease(v14);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = v15;
    v17 = [(__CFArray *)v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v28 + 1) + 8 * i);
          v22 = CFBundleCopyLocalizedStringForLocalization();
          if (v22)
          {
            v23 = v22;
            if (v26)
            {
              *v26 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v21];
            }

            goto LABEL_14;
          }
        }

        v18 = [(__CFArray *)v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v23 = v9;
LABEL_14:
  }

  else
  {
    if (a5)
    {
      *a5 = [MEMORY[0x1E695DF58] currentLocale];
    }

    v23 = CFBundleCopyLocalizedString(a1, v9, v9, v10);
  }

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

uint64_t _INPBStartCallIntentReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v65) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v65 & 0x7F) << v5;
      if ((v65 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = objc_alloc_init(_INPBIntentMetadata);
        v65 = 0;
        v66 = 0;
        if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v13, a2))
        {
          goto LABEL_136;
        }

        PBReaderRecallMark();
        [a1 setIntentMetadata:v13];
        goto LABEL_96;
      case 2u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        while (1)
        {
          LOBYTE(v65) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v65 & 0x7F) << v35;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v41 = 0;
            goto LABEL_123;
          }
        }

        if ([a2 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v37;
        }

LABEL_123:
        [a1 setAudioRoute:v41];
        goto LABEL_97;
      case 3u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v65) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v65 & 0x7F) << v14;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_111;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_111:
        [a1 setDestinationType:v20];
        goto LABEL_97;
      case 4u:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          LOBYTE(v65) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v65 & 0x7F) << v21;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_115;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_115:
        [a1 setPreferredCallProvider:v27];
        goto LABEL_97;
      case 5u:
        v13 = objc_alloc_init(_INPBContact);
        v65 = 0;
        v66 = 0;
        if (!PBReaderPlaceMark() || !_INPBContactReadFrom(v13, a2))
        {
          goto LABEL_136;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addContacts:v13];
        }

        goto LABEL_96;
      case 6u:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        while (1)
        {
          LOBYTE(v65) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v65 & 0x7F) << v42;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            v48 = 0;
            goto LABEL_127;
          }
        }

        if ([a2 hasError])
        {
          v48 = 0;
        }

        else
        {
          v48 = v44;
        }

LABEL_127:
        [a1 setRecordTypeForRedialing:v48];
        goto LABEL_97;
      case 7u:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        while (1)
        {
          LOBYTE(v65) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v65 & 0x7F) << v49;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v11 = v50++ >= 9;
          if (v11)
          {
            v55 = 0;
            goto LABEL_131;
          }
        }

        if ([a2 hasError])
        {
          v55 = 0;
        }

        else
        {
          v55 = v51;
        }

LABEL_131:
        [a1 setTtyType:v55];
        goto LABEL_97;
      case 8u:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v65) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v65 & 0x7F) << v28;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_119;
          }
        }

        if ([a2 hasError])
        {
          v34 = 0;
        }

        else
        {
          v34 = v30;
        }

LABEL_119:
        [a1 setCallCapability:v34];
        goto LABEL_97;
      case 9u:
        v57 = 0;
        v58 = 0;
        v59 = 0;
        while (1)
        {
          LOBYTE(v65) = 0;
          v60 = [a2 position] + 1;
          if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
          {
            v62 = [a2 data];
            [v62 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v59 |= (v65 & 0x7F) << v57;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v11 = v58++ >= 9;
          if (v11)
          {
            v63 = 0;
            goto LABEL_133;
          }
        }

        v63 = (v59 != 0) & ~[a2 hasError];
LABEL_133:
        [a1 setIsGroupCall:v63];
        goto LABEL_97;
      case 0xAu:
        v13 = objc_alloc_init(_INPBCallGroup);
        v65 = 0;
        v66 = 0;
        if (!PBReaderPlaceMark() || !_INPBCallGroupReadFrom(v13, a2))
        {
          goto LABEL_136;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addCallGroups:v13];
        }

        goto LABEL_96;
      case 0xBu:
        v13 = PBReaderReadString();
        [a1 setNotificationThreadIdentifier:v13];
        goto LABEL_96;
      case 0xCu:
        v13 = PBReaderReadString();
        [a1 setFaceTimeLink:v13];
        goto LABEL_96;
      case 0xDu:
        v13 = objc_alloc_init(_INPBCallRecordFilter);
        v65 = 0;
        v66 = 0;
        if (!PBReaderPlaceMark() || !_INPBCallRecordFilterReadFrom(v13, a2))
        {
          goto LABEL_136;
        }

        PBReaderRecallMark();
        [a1 setCallRecordFilter:v13];
        goto LABEL_96;
      case 0xEu:
        v13 = objc_alloc_init(_INPBCallRecordValue);
        v65 = 0;
        v66 = 0;
        if (!PBReaderPlaceMark() || !_INPBCallRecordValueReadFrom(v13, a2))
        {
          goto LABEL_136;
        }

        PBReaderRecallMark();
        [a1 setCallRecordToCallBack:v13];
        goto LABEL_96;
      case 0xFu:
        v13 = objc_alloc_init(_INPBStartCallRequestMetadata);
        v65 = 0;
        v66 = 0;
        if (PBReaderPlaceMark() && _INPBStartCallRequestMetadataReadFrom(v13, a2))
        {
          PBReaderRecallMark();
          [a1 setCallRequestMetadata:v13];
LABEL_96:

LABEL_97:
          v56 = [a2 position];
          if (v56 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_136:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_97;
    }
  }
}

INCallRecordFilter *INIntentSlotValueTransformFromCallRecordFilter(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v17 = 0;
    if ([v1 callTypesCount])
    {
      v3 = 0;
      do
      {
        INCallRecordTypeOptionsAddBackingType(&v17, [v2 callTypesAtIndex:v3++]);
      }

      while (v3 < [v2 callTypesCount]);
    }

    v4 = [INCallRecordFilter alloc];
    v5 = [v2 participants];
    v6 = INIntentSlotValueTransformFromContacts(v5);
    v7 = v17;
    v8 = [v2 hasCallCapability];
    v9 = [v2 callCapability];
    v10 = 2 * (v9 == 2);
    if (v9 == 1)
    {
      v10 = 1;
    }

    if (v8)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [v2 hasPreferredCallProvider];
    v13 = [v2 preferredCallProvider];
    if ((((v13 - 2) < 3) & v12) != 0)
    {
      v14 = (v13 - 1);
    }

    else
    {
      v14 = 0;
    }

    v15 = [(INCallRecordFilter *)v4 initWithParticipants:v6 callTypes:v7 callCapability:v11 preferredCallProvider:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id INIntentSlotValueTransformFromCallRecordValue(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v31 = [INCallRecord alloc];
    v2 = [v1 identifier];
    v33 = [v1 dateCreated];
    if (v33)
    {
      v3 = [MEMORY[0x1E695DEE8] currentCalendar];
      v22 = [v1 dateCreated];
      INIntentSlotValueTransformFromDateTime(v22);
      v21 = v23 = v3;
      v4 = [v3 dateFromComponents:?];
    }

    else
    {
      v4 = 0;
    }

    v6 = [v1 hasCallType];
    v7 = [v1 callType];
    v34 = v2;
    if (v6 && (v7 - 2) <= 8)
    {
      v28 = qword_18EE5EA80[v7 - 2];
    }

    else
    {
      v28 = 0;
    }

    v8 = [v1 hasCallCapability];
    v9 = [v1 callCapability];
    v10 = 2 * (v9 == 2);
    if (v9 == 1)
    {
      v10 = 1;
    }

    if (!v8)
    {
      v10 = 0;
    }

    v27 = v10;
    v11 = MEMORY[0x1E696AD98];
    v30 = [v1 callMetrics];
    v29 = [v30 value];
    [v29 callDuration];
    v26 = [v11 numberWithDouble:?];
    v24 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v1, "unseen")}];
    LOBYTE(v11) = [v1 hasPreferredCallProvider];
    v12 = [v1 preferredCallProvider];
    if ((((v12 - 2) < 3) & v11) != 0)
    {
      v13 = (v12 - 1);
    }

    else
    {
      v13 = 0;
    }

    v25 = [v1 participants];
    v14 = INIntentSlotValueTransformFromContactValues(v25);
    v15 = [v1 numberOfCalls];
    v16 = INIntentSlotValueTransformFromInteger(v15);
    v17 = [v1 providerId];
    v18 = [v1 providerBundleId];
    v19 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v1, "isCallerIdBlocked")}];
    v32 = [(INCallRecord *)v31 initWithIdentifier:v34 dateCreated:v4 callRecordType:v28 callCapability:v27 callDuration:v26 unseen:v24 preferredCallProvider:v13 participants:v14 numberOfCalls:v16 providerId:v17 providerBundleId:v18 isCallerIdBlocked:v19];

    if (v33)
    {
    }

    v5 = v32;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id INCallsDomainGetIntentDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INCallsDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INCallsDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_2423);
    }

    v2 = [sCallsDomain_intentDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromCallGroups(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromCallGroup(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

INStartCallRequestMetadata *INIntentSlotValueTransformFromStartCallRequestMetadata(INStartCallRequestMetadata *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [INStartCallRequestMetadata alloc];
    v4 = [(INStartCallRequestMetadata *)v2 appInferred];

    a1 = [(INStartCallRequestMetadata *)v3 initWithAppInferred:v4];
    v1 = vars8;
  }

  return a1;
}

uint64_t INThisProcessIsAssistantd()
{
  if (INThisProcessIsAssistantd_onceToken != -1)
  {
    dispatch_once(&INThisProcessIsAssistantd_onceToken, &__block_literal_global_75004);
  }

  return INThisProcessIsAssistantd_isAssistantd;
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void *std::__tree<std::__value_type<std::string,INSystemApp>,std::__map_value_compare<std::string,std::__value_type<std::string,INSystemApp>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,INSystemApp>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_26:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_26;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_26;
    }
  }
}

void INIssueSandboxExtensionsForFileURLEnumerableToProcess(void *a1, __int128 *a2)
{
  v3 = a1;
  v4 = objc_opt_class();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __INIssueSandboxExtensionsForFileURLEnumerableToProcess_block_invoke;
  v6[3] = &__block_descriptor_64_e15_B16__0__NSURL_8l;
  v5 = a2[1];
  v7 = *a2;
  v8 = v5;
  [v3 _intents_enumerateObjectsOfClass:v4 withBlock:v6];
}

id _INExtensionAuxiliaryVendingXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F030AC78];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_confirmIntent_withCompletion_ argumentIndex:2 ofReply:1];

  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [v0 setClasses:v6 forSelector:sel_handleIntent_withCompletion_ argumentIndex:2 ofReply:1];

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
  [v0 setClasses:v10 forSelector:sel_resolveIntentSlots_forIntent_completionBlock_ argumentIndex:2 ofReply:1];

  v11 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F03618D8];
  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  [v11 setClasses:v14 forSelector:sel_intentResponseDidUpdate_withSerializedCacheItems_ argumentIndex:1 ofReply:0];

  [v0 setInterface:v11 forSelector:sel_startSendingUpdatesForIntent_toObserver_ argumentIndex:1 ofReply:0];

  return v0;
}

void __INExtensionInitialize(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v4 = [a1 instanceMethodForSelector:sel_beginRequestWithExtensionContext_];
    if (v4 != [a2 instanceMethodForSelector:sel_beginRequestWithExtensionContext_])
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = NSStringFromClass(a1);
      v7 = NSStringFromSelector(sel_beginRequestWithExtensionContext_);
      v9 = [v5 stringWithFormat:@"%@ is not allowed to override %@", v6, v7];

      v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:v9 userInfo:0];
      [v8 raise];
    }
  }
}

void __INIntentSchemaGetIntentDescriptionWithName_block_invoke()
{
  v0 = INIntentSchemaGetIntentDescriptionWithName_map;
  INIntentSchemaGetIntentDescriptionWithName_map = &unk_1F02DD218;
}

id _INExtensionContextWithContext(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [v3 inputItems];
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v19 = v3;
    v20 = v1;
    v7 = *v23;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v22 + 1) + 8 * i) userInfo];
        v10 = [v9 objectForKey:@"_INExtensionItemExtensionContextData"];

        if (v10)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = MEMORY[0x1E696ACD0];
            v12 = objc_opt_class();
            v21 = 0;
            v13 = [v11 unarchivedObjectOfClass:v12 fromData:v10 error:&v21];
            v14 = v21;
            v15 = v14;
            if (v13)
            {

              goto LABEL_22;
            }

            if (v14)
            {
              v16 = INSiriLogContextIntents;
              if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v27 = "_INExtensionContextWithContext";
                v28 = 2112;
                v29 = v15;
                _os_log_error_impl(&dword_18E991000, v16, OS_LOG_TYPE_ERROR, "%s Error decoding extension context: %@", buf, 0x16u);
              }
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

    v13 = 0;
LABEL_22:
    v3 = v19;
    v1 = v20;
  }

  else
  {
    v13 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v13;
}

id INIntentSlotValueTransformFromSendMessageAttachments(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromSendMessageAttachment(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id _INIntentSchemaBuildIntentSlotDescriptionMap(void *a1)
{
  v1 = MEMORY[0x1E695DF90];
  v2 = a1;
  v3 = [[v1 alloc] initWithCapacity:{objc_msgSend(v2, "count")}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___INIntentSchemaBuildIntentSlotDescriptionMap_block_invoke;
  v7[3] = &unk_1E727DE40;
  v8 = v3;
  v4 = v3;
  [v2 enumerateObjectsUsingBlock:v7];

  v5 = [v4 copy];

  return v5;
}

uint64_t _INExtensionValidateClass(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

uint64_t _INPBDataStringReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          [a1 setPronunciationHint:v14];
          goto LABEL_31;
        }

        if (v13 == 3)
        {
          v14 = objc_alloc_init(_INPBDataString);
          v17[0] = 0;
          v17[1] = 0;
          if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addAlternatives:v14];
          }

          goto LABEL_31;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          [a1 setLocalizedValue:v14];
          goto LABEL_31;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          [a1 setVocabularyIdentifier:v14];
LABEL_31:

          goto LABEL_32;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBCreateTimerIntentReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (LOBYTE(v27) & 0x7F) << v5;
        if ((LOBYTE(v27) & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v23 = objc_alloc_init(_INPBDataString);
          v27 = 0.0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v23, a2))
          {
LABEL_52:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setLabel:v23];
          goto LABEL_42;
        }

        if (v13 == 4)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            LOBYTE(v27) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (LOBYTE(v27) & 0x7F) << v16;
            if ((LOBYTE(v27) & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_46;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_46:
          [a1 setType:v22];
          goto LABEL_49;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v23 = objc_alloc_init(_INPBIntentMetadata);
          v27 = 0.0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v23, a2))
          {
            goto LABEL_52;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v23];
LABEL_42:

          goto LABEL_49;
        }

        if (v13 == 2)
        {
          v27 = 0.0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v24 = [a2 data];
            [v24 getBytes:&v27 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          [a1 setDuration:v27];
          goto LABEL_49;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_49:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBSendMessageIntentReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v37) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v37 & 0x7F) << v5;
      if ((v37 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = objc_alloc_init(_INPBIntentMetadata);
        v37 = 0;
        v38 = 0;
        if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v13, a2))
        {
          goto LABEL_89;
        }

        PBReaderRecallMark();
        [a1 setIntentMetadata:v13];
        goto LABEL_63;
      case 2u:
        v13 = objc_alloc_init(_INPBContact);
        v37 = 0;
        v38 = 0;
        if (!PBReaderPlaceMark() || !_INPBContactReadFrom(v13, a2))
        {
          goto LABEL_89;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addRecipient:v13];
        }

        goto LABEL_63;
      case 5u:
        v13 = objc_alloc_init(_INPBString);
        v37 = 0;
        v38 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v13, a2))
        {
          goto LABEL_89;
        }

        PBReaderRecallMark();
        [a1 setContent:v13];
        goto LABEL_63;
      case 6u:
        v13 = objc_alloc_init(_INPBString);
        v37 = 0;
        v38 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v13, a2))
        {
          goto LABEL_89;
        }

        PBReaderRecallMark();
        [a1 setGroupName:v13];
        goto LABEL_63;
      case 7u:
        v13 = objc_alloc_init(_INPBDataString);
        v37 = 0;
        v38 = 0;
        if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v13, a2))
        {
          goto LABEL_89;
        }

        PBReaderRecallMark();
        [a1 setSpeakableGroupName:v13];
        goto LABEL_63;
      case 8u:
        v13 = PBReaderReadString();
        [a1 setConversationIdentifier:v13];
        goto LABEL_63;
      case 9u:
        v13 = PBReaderReadString();
        [a1 setServiceName:v13];
        goto LABEL_63;
      case 0xAu:
        v13 = objc_alloc_init(_INPBContact);
        v37 = 0;
        v38 = 0;
        if (!PBReaderPlaceMark() || !_INPBContactReadFrom(v13, a2))
        {
          goto LABEL_89;
        }

        PBReaderRecallMark();
        [a1 setSender:v13];
        goto LABEL_63;
      case 0xCu:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        while (1)
        {
          LOBYTE(v37) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v37 & 0x7F) << v29;
          if ((v37 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_86;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v31;
        }

LABEL_86:
        [a1 setEffect:v35];
        goto LABEL_64;
      case 0xDu:
        v13 = objc_alloc_init(_INPBSendMessageAttachment);
        v37 = 0;
        v38 = 0;
        if (PBReaderPlaceMark() && _INPBSendMessageAttachmentReadFrom(v13, a2))
        {
          PBReaderRecallMark();
          if (v13)
          {
            [a1 addAttachments:v13];
          }

LABEL_63:

LABEL_64:
          v28 = [a2 position];
          if (v28 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_89:

        return 0;
      case 0xEu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          LOBYTE(v37) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v37 & 0x7F) << v21;
          if ((v37 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_82;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_82:
        [a1 setOutgoingMessageType:v27];
        goto LABEL_64;
      case 0xFu:
        v13 = PBReaderReadString();
        [a1 setNotificationThreadIdentifier:v13];
        goto LABEL_63;
      case 0x10u:
        v13 = PBReaderReadString();
        [a1 setAlternativeConversationIdentifier:v13];
        goto LABEL_63;
      case 0x13u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v37) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v37 & 0x7F) << v14;
          if ((v37 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_78;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_78:
        [a1 setShouldHideSiriAttribution:v20];
        goto LABEL_64;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_64;
    }
  }
}

id INTimersDomainGetIntentDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INTimersDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INTimersDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_9173);
    }

    v2 = [sTimersDomain_intentDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t _INPBPairReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v23) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v23 & 0x7F) << v5;
      if ((v23 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadString();
        [a1 setKey:v13];
        goto LABEL_85;
      case 2u:
        v13 = objc_alloc_init(_INPBStringValue);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringValueReadFrom(v13, a2))
        {
          goto LABEL_94;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addPairStringValue:v13];
        }

        goto LABEL_85;
      case 3u:
        v13 = objc_alloc_init(_INPBURLValue);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBURLValueReadFrom(v13, a2))
        {
          goto LABEL_94;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addPairUrlValue:v13];
        }

        goto LABEL_85;
      case 4u:
        v13 = objc_alloc_init(_INPBDoubleValue);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBDoubleValueReadFrom(v13, a2))
        {
          goto LABEL_94;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addPairDoubleValue:v13];
        }

        goto LABEL_85;
      case 5u:
        v13 = objc_alloc_init(_INPBImageValue);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBImageValueReadFrom(v13, a2))
        {
          goto LABEL_94;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addPairImageValue:v13];
        }

        goto LABEL_85;
      case 6u:
        v13 = objc_alloc_init(_INPBIntegerValue);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBIntegerValueReadFrom(v13, a2))
        {
          goto LABEL_94;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addPairIntegerValue:v13];
        }

        goto LABEL_85;
      case 7u:
        v13 = objc_alloc_init(_INPBDistanceValue);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBDistanceValueReadFrom(v13, a2))
        {
          goto LABEL_94;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addPairDistanceValue:v13];
        }

        goto LABEL_85;
      case 8u:
        v13 = objc_alloc_init(_INPBTemperatureValue);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBTemperatureValueReadFrom(v13, a2))
        {
          goto LABEL_94;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addPairTemperatureValue:v13];
        }

        goto LABEL_85;
      case 9u:
        v13 = objc_alloc_init(_INPBLocationValue);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBLocationValueReadFrom(v13, a2))
        {
          goto LABEL_94;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addPairLocationValue:v13];
        }

        goto LABEL_85;
      case 0xAu:
        v13 = objc_alloc_init(_INPBContactValue);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBContactValueReadFrom(v13, a2))
        {
          goto LABEL_94;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addPairPersonValue:v13];
        }

        goto LABEL_85;
      case 0xBu:
        v13 = objc_alloc_init(_INPBCurrencyAmountValue);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBCurrencyAmountValueReadFrom(v13, a2))
        {
          goto LABEL_94;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addPairCurrencyAmountValue:v13];
        }

        goto LABEL_85;
      case 0xCu:
        v13 = objc_alloc_init(_INPBPaymentMethodValue);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBPaymentMethodValueReadFrom(v13, a2))
        {
          goto LABEL_94;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addPairPaymentMethodValue:v13];
        }

        goto LABEL_85;
      case 0xDu:
        v13 = objc_alloc_init(_INPBDataString);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v13, a2))
        {
          goto LABEL_94;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addPairDataString:v13];
        }

        goto LABEL_85;
      case 0xEu:
        v13 = objc_alloc_init(_INPBCustomObject);
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !_INPBCustomObjectReadFrom(v13, a2))
        {
          goto LABEL_94;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addPairCustomObject:v13];
        }

        goto LABEL_85;
      case 0xFu:
        v13 = objc_alloc_init(_INPBDataValue);
        v23 = 0;
        v24 = 0;
        if (PBReaderPlaceMark() && _INPBDataValueReadFrom(v13, a2))
        {
          PBReaderRecallMark();
          if (v13)
          {
            [a1 addPairDataValue:v13];
          }

LABEL_85:

LABEL_86:
          v21 = [a2 position];
          if (v21 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_94:

        return 0;
      default:
        if ((v12 >> 3) == 1000)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            LOBYTE(v23) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v23 & 0x7F) << v14;
            if ((v23 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_91;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_91:
          [a1 setRepeated:v20];
        }

        else if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_86;
    }
  }
}

uint64_t _INPBLongReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_INPBLongValue);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBLongValueReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addValue:v13];
        }
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id INIntentSlotValueTransformFromLong(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = [a1 values];
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = INIntentSlotValueTransformFromLongValue(*(*(&v10 + 1) + 8 * i));
        if (v6)
        {
          v7 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id INIntentSlotValueTransformFromLongValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 valueMetadata], v3 = objc_claimAutoreleasedReturnValue(), INPrivacyEntitlementValidateValueMetadata(v3), v3, objc_msgSend(v2, "hasValue")))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v2, "value")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

_INPBDateTime *INIntentSlotValueTransformToDateTime(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v4 = 0;
    goto LABEL_63;
  }

  if ([v1 year] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v2 month] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v2 day] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([v2 weekday] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v3 = 0;
          goto LABEL_25;
        }

LABEL_18:
        v3 = objc_alloc_init(_INPBLocalDate);
        goto LABEL_19;
      }

LABEL_14:
      v3 = objc_alloc_init(_INPBLocalDate);
      goto LABEL_15;
    }

LABEL_10:
    v3 = objc_alloc_init(_INPBLocalDate);
    goto LABEL_11;
  }

  v3 = objc_alloc_init(_INPBLocalDate);
  -[_INPBLocalDate setYear:](v3, "setYear:", [v2 year]);
  if ([v2 month] == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_11:
  -[_INPBLocalDate setMonth:](v3, "setMonth:", [v2 month]);
LABEL_12:
  if ([v2 day] == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_16;
  }

  if (!v3)
  {
    goto LABEL_14;
  }

LABEL_15:
  -[_INPBLocalDate setDayOfMonth:](v3, "setDayOfMonth:", [v2 day]);
LABEL_16:
  if ([v2 weekday] == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  if (!v3)
  {
    goto LABEL_18;
  }

LABEL_19:
  if ([v2 weekday] == 1)
  {
    v5 = 7;
  }

  else
  {
    v5 = [v2 weekday] - 1;
  }

  [(_INPBLocalDate *)v3 setDayOfWeek:v5];
LABEL_23:
  if (v3)
  {
    v4 = objc_alloc_init(_INPBDateTime);
    [(_INPBDateTime *)v4 setDate:v3];
    goto LABEL_26;
  }

LABEL_25:
  v4 = 0;
LABEL_26:
  if ([v2 hour] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v2 minute] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v2 second] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([v2 nanosecond] == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_47;
        }

LABEL_41:
        v6 = objc_alloc_init(_INPBLocalTime);
        goto LABEL_42;
      }

LABEL_37:
      v6 = objc_alloc_init(_INPBLocalTime);
      goto LABEL_38;
    }

LABEL_33:
    v6 = objc_alloc_init(_INPBLocalTime);
    goto LABEL_34;
  }

  v6 = objc_alloc_init(_INPBLocalTime);
  -[_INPBLocalTime setHourOfDay:](v6, "setHourOfDay:", [v2 hour]);
  if ([v2 minute] == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_35;
  }

  if (!v6)
  {
    goto LABEL_33;
  }

LABEL_34:
  -[_INPBLocalTime setMinuteOfHour:](v6, "setMinuteOfHour:", [v2 minute]);
LABEL_35:
  if ([v2 second] == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_39;
  }

  if (!v6)
  {
    goto LABEL_37;
  }

LABEL_38:
  -[_INPBLocalTime setSecondOfMinute:](v6, "setSecondOfMinute:", [v2 second]);
LABEL_39:
  if ([v2 nanosecond] == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_43;
  }

  if (!v6)
  {
    goto LABEL_41;
  }

LABEL_42:
  -[_INPBLocalTime setMillisOfSecond:](v6, "setMillisOfSecond:", [v2 nanosecond] / 0xF4240uLL);
LABEL_43:
  if (v6)
  {
    if (!v4)
    {
      v4 = objc_alloc_init(_INPBDateTime);
    }

    [(_INPBDateTime *)v4 setTime:v6];
  }

LABEL_47:
  v7 = [v2 timeZone];
  if (v7)
  {
    if (!v4)
    {
      v4 = objc_alloc_init(_INPBDateTime);
    }

    v8 = [v7 name];
    [(_INPBDateTime *)v4 setTimeZoneID:v8];
  }

  v9 = [v2 calendar];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_62;
  }

  v11 = [v9 calendarIdentifier];
  if ([v11 isEqualToString:*MEMORY[0x1E695D850]])
  {
    v12 = 8;
LABEL_58:
    if (!v4)
    {
      v4 = objc_alloc_init(_INPBDateTime);
    }

    [(_INPBDateTime *)v4 setCalendarSystem:v12];
    goto LABEL_61;
  }

  if ([v11 isEqualToString:*MEMORY[0x1E695D820]])
  {
    v12 = 1;
    goto LABEL_58;
  }

  if ([v11 isEqualToString:*MEMORY[0x1E695D828]])
  {
    v12 = 2;
    goto LABEL_58;
  }

  if (([v11 isEqualToString:*MEMORY[0x1E695D830]] & 1) == 0 && (objc_msgSend(v11, "isEqualToString:", *MEMORY[0x1E695D848]) & 1) == 0 && (objc_msgSend(v11, "isEqualToString:", *MEMORY[0x1E695D840]) & 1) == 0)
  {
    if ([v11 isEqualToString:*MEMORY[0x1E695D860]])
    {
      v12 = 3;
      goto LABEL_58;
    }

    if (([v11 isEqualToString:*MEMORY[0x1E695D868]] & 1) == 0)
    {
      if ([v11 isEqualToString:*MEMORY[0x1E695D870]])
      {
        v12 = 5;
        goto LABEL_58;
      }

      if ([v11 isEqualToString:*MEMORY[0x1E695D878]])
      {
        v12 = 7;
        goto LABEL_58;
      }

      if (([v11 isEqualToString:*MEMORY[0x1E695D880]] & 1) == 0)
      {
        if ([v11 isEqualToString:*MEMORY[0x1E695D898]])
        {
          v12 = 9;
          goto LABEL_58;
        }

        if ([v11 isEqualToString:*MEMORY[0x1E695D8C0]])
        {
          v12 = 11;
          goto LABEL_58;
        }

        if ([v11 isEqualToString:*MEMORY[0x1E695D8C8]])
        {
          v12 = 12;
          goto LABEL_58;
        }

        if (([v11 isEqualToString:*MEMORY[0x1E695D888]] & 1) == 0 && objc_msgSend(v11, "isEqualToString:", *MEMORY[0x1E695D890]))
        {
          v12 = 6;
          goto LABEL_58;
        }
      }
    }
  }

LABEL_61:

LABEL_62:
LABEL_63:

  return v4;
}

uint64_t _INPBLongValueReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v20 = objc_alloc_init(_INPBValueMetadata);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBValueMetadataReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setValueMetadata:v20];
      }

      else if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        [a1 setValue:v19];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBCustomObjectReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 6:
            v14 = objc_alloc_init(_INPBImageValue);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBImageValueReadFrom(v14, a2))
            {
LABEL_41:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setDisplayImage:v14];
            goto LABEL_37;
          case 5:
            v14 = PBReaderReadString();
            [a1 setSubtitleString:v14];
            goto LABEL_37;
          case 4:
            v14 = objc_alloc_init(_INPBDataString);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
            {
              goto LABEL_41;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addAlternative:v14];
            }

            goto LABEL_37;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = PBReaderReadString();
            [a1 setIdentifier:v14];
            goto LABEL_37;
          case 2:
            v14 = PBReaderReadString();
            [a1 setDisplayString:v14];
            goto LABEL_37;
          case 3:
            v14 = PBReaderReadString();
            [a1 setPronunciationHint:v14];
LABEL_37:

            goto LABEL_38;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_38:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

INObject *INIntentSlotValueTransformFromCustomObject(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [INObject alloc];
    v3 = [v1 identifier];
    v4 = [v1 displayString];
    v5 = [v4 _intents_decodeFromProto];
    v6 = [v1 pronunciationHint];
    v7 = [(INObject *)v2 initWithIdentifier:v3 displayString:v5 pronunciationHint:v6];

    v8 = [v1 alternatives];
    v9 = INIntentSlotValueTransformFromDataStrings(v8);
    [(INObject *)v7 setAlternativeSpeakableMatches:v9];

    v10 = [v1 subtitleString];
    v11 = [v10 _intents_decodeFromProto];
    [(INObject *)v7 setSubtitleString:v11];

    v12 = [v1 displayImage];

    v13 = INIntentSlotValueTransformFromImageValue(v12);
    [(INObject *)v7 setDisplayImage:v13];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

_INPBLong *INIntentSlotValueTransformToLong(void *a1)
{
  v1 = INIntentSlotValueTransformToLongValue(a1);
  if (v1)
  {
    v2 = objc_alloc_init(_INPBLong);
    [(_INPBLong *)v2 addValue:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

_INPBLongValue *INIntentSlotValueTransformToLongValue(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBLongValue);
    v3 = [v1 intValue];

    [(_INPBLongValue *)v2 setValue:v3];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

_INPBCustomObject *INIntentSlotValueTransformToCustomObject(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(_INPBCustomObject);
    v3 = [v1 identifier];
    [(_INPBCustomObject *)v2 setIdentifier:v3];

    v4 = [v1 displayString];
    v5 = [v4 _intents_encodeForProto];
    [(_INPBCustomObject *)v2 setDisplayString:v5];

    v6 = [v1 pronunciationHint];
    [(_INPBCustomObject *)v2 setPronunciationHint:v6];

    v7 = [v1 alternativeSpeakableMatches];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v10 = INIntentSlotValueTransformToDataStrings(v9);

    [(_INPBCustomObject *)v2 setAlternatives:v10];
    v11 = [v1 subtitleString];
    v12 = [v11 _intents_encodeForProto];
    [(_INPBCustomObject *)v2 setSubtitleString:v12];

    v13 = [v1 displayImage];
    v14 = INIntentSlotValueTransformToImageValue(v13);
    [(_INPBCustomObject *)v2 setDisplayImage:v14];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

_INPBSpeakerIDInfo *INIntentSlotValueTransformToSpeakerIDInfo(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBSpeakerIDInfo);
    v3 = [v1 sharedUserID];
    v4 = INIntentSlotValueTransformToString(v3);
    [(_INPBSpeakerIDInfo *)v2 setSharedUserID:v4];

    v5 = [v1 speakerIDConfidence];
    if (v5 >= 6)
    {
      v6 = 0x7FFFFFFFLL;
    }

    else
    {
      v6 = v5;
    }

    [(_INPBSpeakerIDInfo *)v2 setSpeakerIDConfidence:v6];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

_INPBPrivateMediaIntentData *INIntentSlotValueTransformToPrivateMediaIntentData(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBPrivateMediaIntentData);
    v3 = [v1 speakerIDInfo];
    v4 = INIntentSlotValueTransformToSpeakerIDInfo(v3);
    [(_INPBPrivateMediaIntentData *)v2 setSpeakerIDInfo:v4];

    v5 = [v1 proxiedThirdPartyAppInfo];
    v6 = INIntentSlotValueTransformToAppIdentifier(v5);
    [(_INPBPrivateMediaIntentData *)v2 setProxiedThirdPartyAppInfo:v6];

    v7 = [v1 isAppAttributionRequired];
    -[_INPBPrivateMediaIntentData setIsAppAttributionRequired:](v2, "setIsAppAttributionRequired:", [v7 BOOLValue]);

    v8 = [v1 useDialogMemoryForAttribution];
    -[_INPBPrivateMediaIntentData setUseDialogMemoryForAttribution:](v2, "setUseDialogMemoryForAttribution:", [v8 BOOLValue]);

    v9 = [v1 isAppCorrection];
    -[_INPBPrivateMediaIntentData setIsAppCorrection:](v2, "setIsAppCorrection:", [v9 BOOLValue]);

    v10 = [v1 fallbackUsername];
    v11 = INIntentSlotValueTransformToString(v10);
    [(_INPBPrivateMediaIntentData *)v2 setFallbackUsername:v11];

    v12 = [v1 wholeHouseAudioMetadata];
    v13 = INIntentSlotValueTransformToWholeHouseAudioMetadata(v12);
    [(_INPBPrivateMediaIntentData *)v2 setWholeHouseAudioMetadata:v13];

    v14 = [v1 nlConfidenceScore];
    [v14 floatValue];
    [(_INPBPrivateMediaIntentData *)v2 setNlConfidenceScore:?];

    v15 = [v1 nlConfidenceLevel];
    if (v15 >= 4)
    {
      v16 = 0x7FFFFFFFLL;
    }

    else
    {
      v16 = (10 * v15);
    }

    [(_INPBPrivateMediaIntentData *)v2 setNlConfidenceLevel:v16];
    v17 = [v1 asrConfidenceScore];
    [v17 floatValue];
    [(_INPBPrivateMediaIntentData *)v2 setAsrConfidenceScore:?];

    v18 = [v1 asrConfidenceLevel];
    if (v18 >= 4)
    {
      v19 = 0x7FFFFFFFLL;
    }

    else
    {
      v19 = (10 * v18);
    }

    [(_INPBPrivateMediaIntentData *)v2 setAsrConfidenceLevel:v19];
    v20 = [v1 resolvedSharedUserID];
    v21 = INIntentSlotValueTransformToString(v20);
    [(_INPBPrivateMediaIntentData *)v2 setResolvedSharedUserID:v21];

    v22 = [v1 homeAutomationEntityProvider];

    v23 = INIntentSlotValueTransformToHomeAutomationEntityProvider(v22);
    [(_INPBPrivateMediaIntentData *)v2 setHomeAutomationEntityProvider:v23];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

_INPBPrivatePlayMediaIntentData *INIntentSlotValueTransformToPrivatePlayMediaIntentData(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBPrivatePlayMediaIntentData);
    v3 = [v1 appSelectionEnabled];
    -[_INPBPrivatePlayMediaIntentData setAppSelectionEnabled:](v2, "setAppSelectionEnabled:", [v3 BOOLValue]);

    v4 = [v1 appInferred];
    -[_INPBPrivatePlayMediaIntentData setAppInferred:](v2, "setAppInferred:", [v4 BOOLValue]);

    v5 = [v1 audioSearchResults];
    v6 = INIntentSlotValueTransformToMediaItemValues(v5);
    [(_INPBPrivatePlayMediaIntentData *)v2 setAudioSearchResults:v6];

    v7 = [v1 privateMediaIntentData];
    v8 = INIntentSlotValueTransformToPrivateMediaIntentData(v7);
    [(_INPBPrivatePlayMediaIntentData *)v2 setPrivateMediaIntentData:v8];

    v9 = [v1 appSelectionSignalsEnabled];
    -[_INPBPrivatePlayMediaIntentData setAppSelectionSignalsEnabled:](v2, "setAppSelectionSignalsEnabled:", [v9 BOOLValue]);

    v10 = [v1 appSelectionSignalsFrequencyDenominator];
    -[_INPBPrivatePlayMediaIntentData setAppSelectionSignalsFrequencyDenominator:](v2, "setAppSelectionSignalsFrequencyDenominator:", [v10 intValue]);

    v11 = [v1 shouldSuppressCommonWholeHouseAudioRoutes];
    -[_INPBPrivatePlayMediaIntentData setShouldSuppressCommonWholeHouseAudioRoutes:](v2, "setShouldSuppressCommonWholeHouseAudioRoutes:", [v11 BOOLValue]);

    v12 = [v1 immediatelyStartPlayback];
    -[_INPBPrivatePlayMediaIntentData setImmediatelyStartPlayback:](v2, "setImmediatelyStartPlayback:", [v12 BOOLValue]);

    v13 = [v1 isAmbiguousPlay];
    -[_INPBPrivatePlayMediaIntentData setIsAmbiguousPlay:](v2, "setIsAmbiguousPlay:", [v13 BOOLValue]);

    v14 = [v1 isPersonalizedRequest];
    -[_INPBPrivatePlayMediaIntentData setIsPersonalizedRequest:](v2, "setIsPersonalizedRequest:", [v14 BOOLValue]);

    v15 = [v1 internalSignals];
    [(_INPBPrivatePlayMediaIntentData *)v2 setInternalSignals:v15];

    v16 = [v1 entityConfidenceSignalsEnabled];
    -[_INPBPrivatePlayMediaIntentData setEntityConfidenceSignalsEnabled:](v2, "setEntityConfidenceSignalsEnabled:", [v16 BOOLValue]);

    v17 = [v1 entityConfidenceSignalsFrequencyDenominatorInternal];
    -[_INPBPrivatePlayMediaIntentData setEntityConfidenceSignalsFrequencyDenominatorInternal:](v2, "setEntityConfidenceSignalsFrequencyDenominatorInternal:", [v17 intValue]);

    v18 = [v1 entityConfidenceSignalsFrequencyDenominatorProd];
    -[_INPBPrivatePlayMediaIntentData setEntityConfidenceSignalsFrequencyDenominatorProd:](v2, "setEntityConfidenceSignalsFrequencyDenominatorProd:", [v18 intValue]);

    v19 = [v1 entityConfidenceSignalsMaxItemsToDisambiguate];
    -[_INPBPrivatePlayMediaIntentData setEntityConfidenceSignalsMaxItemsToDisambiguate:](v2, "setEntityConfidenceSignalsMaxItemsToDisambiguate:", [v19 intValue]);

    v20 = [v1 alternativeProviderBundleIdentifier];
    v21 = INIntentSlotValueTransformToString(v20);
    [(_INPBPrivatePlayMediaIntentData *)v2 setAlternativeProviderBundleIdentifier:v21];

    v22 = [v1 ampPAFDataSetID];
    v23 = INIntentSlotValueTransformToString(v22);
    [(_INPBPrivatePlayMediaIntentData *)v2 setAmpPAFDataSetID:v23];

    v24 = [v1 pegasusMetaData];

    [(_INPBPrivatePlayMediaIntentData *)v2 setPegasusMetaData:v24];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

_INPBAppIdentifier *INIntentSlotValueTransformToAppIdentifier(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBAppIdentifier);
    v3 = [v1 bundleIdentifier];
    [(_INPBAppIdentifier *)v2 setBundleIdentifier:v3];

    v4 = [v1 bundleVersion];
    [(_INPBAppIdentifier *)v2 setBundleVersion:v4];

    v5 = [v1 appName];

    [(_INPBAppIdentifier *)v2 setAppName:v5];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t INPrivacyEntitlementOptionsForIntentMetadata(void *a1)
{
  v1 = a1;
  v2 = [v1 requiredEntitlementsCount];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    for (i = 0; i != v3; ++i)
    {
      v6 = [v1 requiredEntitlementAtIndex:i];
      v7 = v4 | 1;
      if (v6 != 1)
      {
        v7 = v4;
      }

      if (v6 == 2)
      {
        v4 |= 2uLL;
      }

      else
      {
        v4 = v7;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void INIssueSandboxExtensionsForFileURLEnumerable(void *a1)
{
  v1 = a1;
  [v1 _intents_enumerateObjectsOfClass:objc_opt_class() withBlock:&__block_literal_global_3516];
}

uint64_t _INPBStringReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_INPBStringValue);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBStringValueReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addValue:v13];
        }
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *INSearchForMessagesIntentResponseCodeGetName(uint64_t a1)
{
  v1 = @"INSearchForMessagesIntentResponseCodeFailureMessageTooManyResults";
  v2 = @"INSearchForMessagesIntentResponseCodeFailureRequiringInAppAuthentication";
  v3 = @"INSearchForMessagesIntentResponseCodeFailureScreenTimeRestrictionEnabled";
  if (a1 != 1000)
  {
    v3 = 0;
  }

  if (a1 != 8)
  {
    v2 = v3;
  }

  if (a1 != 7)
  {
    v1 = v2;
  }

  v4 = @"INSearchForMessagesIntentResponseCodeFailureRequiringAppLaunch";
  v5 = @"INSearchForMessagesIntentResponseCodeFailureMessageServiceNotAvailable";
  if (a1 != 6)
  {
    v5 = 0;
  }

  if (a1 != 5)
  {
    v4 = v5;
  }

  if (a1 <= 6)
  {
    v1 = v4;
  }

  v6 = @"INSearchForMessagesIntentResponseCodeSuccess";
  v7 = @"INSearchForMessagesIntentResponseCodeFailure";
  if (a1 != 4)
  {
    v7 = 0;
  }

  if (a1 != 3)
  {
    v6 = v7;
  }

  if (a1 == 2)
  {
    v6 = @"INSearchForMessagesIntentResponseCodeInProgress";
  }

  v8 = @"INSearchForMessagesIntentResponseCodeReady";
  if (a1 != 1)
  {
    v8 = 0;
  }

  if (!a1)
  {
    v8 = @"INSearchForMessagesIntentResponseCodeUnspecified";
  }

  if (a1 <= 1)
  {
    v6 = v8;
  }

  if (a1 <= 4)
  {
    return v6;
  }

  else
  {
    return v1;
  }
}

id INIntentSlotValueTransformFromIntegerValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 valueMetadata], v3 = objc_claimAutoreleasedReturnValue(), INPrivacyEntitlementValidateValueMetadata(v3), v3, objc_msgSend(v2, "hasValue")))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v2, "value")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

_INPBDataString *INIntentSlotValueTransformToDataString(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBDataString);
    v3 = [v1 vocabularyIdentifier];
    [(_INPBDataString *)v2 setVocabularyIdentifier:v3];

    v4 = [v1 spokenPhrase];
    v5 = [v4 _intents_encodeForProto];
    [(_INPBDataString *)v2 setLocalizedValue:v5];

    v6 = [v1 pronunciationHint];

    v7 = [v6 _intents_encodeForProto];
    [(_INPBDataString *)v2 setPronunciationHint:v7];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformToSendMessageAttachments(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToSendMessageAttachment(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t _INPBPayloadNeedsValueReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_INPBSelectionItem);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBSelectionItemReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addPromptItems:v13];
        }
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBIntegerValueReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v20 = objc_alloc_init(_INPBValueMetadata);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBValueMetadataReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setValueMetadata:v20];
      }

      else if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        [a1 setValue:v19];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBIntegerReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_INPBIntegerValue);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBIntegerValueReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addValue:v13];
        }
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBSearchForMessagesIntentResponseReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(_INPBMessage);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBMessageReadFrom(v13, a2))
        {
          goto LABEL_32;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addMessages:v13];
        }

LABEL_27:

        goto LABEL_29;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_INPBMessage);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBMessageReadFrom(v13, a2))
    {
LABEL_32:

      return 0;
    }

    PBReaderRecallMark();
    if (v13)
    {
      [a1 addSearchResults:v13];
    }

    goto LABEL_27;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBIntentSlotResolutionMulticardinalResultReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_INPBIntentSlotResolutionResult);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBIntentSlotResolutionResultReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addResolutionResults:v13];
        }
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBPayloadSuccessReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = PBReaderReadString();
        [a1 setResolvedKeyPath:v13];
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_INPBIntentSlotValue);
    v16[0] = 0;
    v16[1] = 0;
    if (!PBReaderPlaceMark() || !_INPBIntentSlotValueReadFrom(v13, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    [a1 setResolvedValue:v13];
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

void INLogInitIfNeeded()
{
  if (INLogInitIfNeeded_once != -1)
  {
    dispatch_once(&INLogInitIfNeeded_once, &__block_literal_global_72043);
  }
}

uint64_t _INPBDateTimeRangeReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_INPBDateTimeRangeValue);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBDateTimeRangeValueReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addValue:v13];
        }
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBDateTimeRangeValueReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v38) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38 & 0x7F) << v5;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 > 7)
        {
          if (v13 == 8)
          {
            v30 = 0;
            v31 = 0;
            v32 = 0;
            while (1)
            {
              LOBYTE(v38) = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v38 & 0x7F) << v30;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_78;
              }
            }

            v36 = (v32 != 0) & ~[a2 hasError];
LABEL_78:
            [a1 setAllDay:v36];
            goto LABEL_51;
          }

          if (v13 == 9)
          {
            v21 = PBReaderReadString();
            [a1 setName:v21];
LABEL_50:

            goto LABEL_51;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v21 = objc_alloc_init(_INPBDateTime);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !_INPBDateTimeReadFrom(v21, a2))
            {
LABEL_85:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setEndDateTime:v21];
            goto LABEL_50;
          }

          if (v13 == 6)
          {
            v21 = objc_alloc_init(_INPBRecurrenceValue);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !_INPBRecurrenceValueReadFrom(v21, a2))
            {
              goto LABEL_85;
            }

            PBReaderRecallMark();
            [a1 setRecurrence:v21];
            goto LABEL_50;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          while (1)
          {
            LOBYTE(v38) = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v38 & 0x7F) << v23;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_76;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v25;
          }

LABEL_76:
          [a1 setEndCalendar:v29];
          goto LABEL_51;
        }

        if (v13 == 4)
        {
          v21 = objc_alloc_init(_INPBDateTime);
          v38 = 0;
          v39 = 0;
          if (!PBReaderPlaceMark() || !_INPBDateTimeReadFrom(v21, a2))
          {
            goto LABEL_85;
          }

          PBReaderRecallMark();
          [a1 setStartDateTime:v21];
          goto LABEL_50;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v21 = objc_alloc_init(_INPBValueMetadata);
          v38 = 0;
          v39 = 0;
          if (!PBReaderPlaceMark() || !_INPBValueMetadataReadFrom(v21, a2))
          {
            goto LABEL_85;
          }

          PBReaderRecallMark();
          [a1 setValueMetadata:v21];
          goto LABEL_50;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            LOBYTE(v38) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v38 & 0x7F) << v14;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_82;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_82:
          [a1 setStartCalendar:v20];
          goto LABEL_51;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_51:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

INDateComponentsRange *INIntentSlotValueTransformFromDateTimeRangeValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 valueMetadata];
    INPrivacyEntitlementValidateValueMetadata(v3);

    if ([v2 hasValueMetadata])
    {
      v4 = [v2 valueMetadata];
      if ([v4 hasInput])
      {
        v5 = [v4 input];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = [v2 startDateTime];
    v8 = INIntentSlotValueTransformFromDateTime(v7);

    v9 = [v2 endDateTime];
    v10 = INIntentSlotValueTransformFromDateTime(v9);

    if ([v2 hasRecurrence])
    {
      v30 = v5;
      v11 = [v2 recurrence];
      v12 = [v11 weeklyRecurrenceDaysCount];

      if (v12)
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v15 = [v2 recurrence];
          v16 = *([v15 weeklyRecurrenceDays] + 4 * v13);

          v14 |= 1 << (v16 - 1);
          ++v13;
          v17 = [v2 recurrence];
          v18 = [v17 weeklyRecurrenceDaysCount];
        }

        while (v13 < v18);
      }

      else
      {
        v14 = 0;
      }

      v20 = [INRecurrenceRule alloc];
      v21 = [v2 recurrence];
      v22 = [v21 interval];
      v23 = [v2 recurrence];
      v24 = [v23 hasFrequency];
      v25 = [v2 recurrence];
      v19 = -[INRecurrenceRule initWithInterval:frequency:weeklyRecurrenceDays:](v20, "initWithInterval:frequency:weeklyRecurrenceDays:", v22, INRecurrenceFrequencyGetFacadeType(v24, [v25 frequency]), v14);

      v26 = [v2 recurrence];
      LOBYTE(v20) = [v26 hasOrdinal];

      if (v20)
      {
        v27 = [v2 recurrence];
        [v8 setWeekdayOrdinal:{objc_msgSend(v27, "ordinal")}];
      }

      v5 = v30;
    }

    else
    {
      v19 = 0;
    }

    if ([v2 hasAllDay])
    {
      v28 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v2, "allDay")}];
    }

    else
    {
      v28 = 0;
    }

    v6 = [[INDateComponentsRange alloc] initWithStartDateComponents:v8 endDateComponents:v10 recurrenceRule:v19 userInput:v5 allDay:v28];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id INIntentSlotValueTransformToMessages(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = INIntentSlotValueTransformToMessage(*(*(&v12 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:{v8, v12}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INCacheableGetSerializationQueue()
{
  if (INCacheableGetSerializationQueue_onceToken != -1)
  {
    dispatch_once(&INCacheableGetSerializationQueue_onceToken, &__block_literal_global_43261);
  }

  v1 = INCacheableGetSerializationQueue_queue;

  return v1;
}

id INSchemaWithTypeName(void *a1, NSString **a2, void *a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v53 = 0;
  v54 = 0;
  v5 = INParseCustomIntentTypeName(a1, &v54, &v53);
  v6 = v54;
  v7 = v53;
  v8 = 0;
  if (v5)
  {
    if (a2)
    {
      v9 = v6;
      *a2 = v6;
    }

    if (a3)
    {
      v10 = v7;
      *a3 = v7;
    }

    v11 = objc_opt_class();
    v12 = NSClassFromString(v6);
    if (v12 && (v13 = v12, ([(objc_class *)v12 isSubclassOfClass:v11]& 1) != 0) || (v14 = objc_opt_class(), (v15 = NSClassFromString(v6)) != 0) && (v13 = v15, ([(objc_class *)v15 isSubclassOfClass:v14]& 1) != 0))
    {
      v16 = v13;
      v17 = v13;
      v18 = [MEMORY[0x1E696AAE8] bundleForClass:v17];
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    v19 = INIntentSchemaGetIntentDescriptionWithFacadeClass(v17);
    if (v19 && (v20 = v19, v21 = [v7 isEqualToString:@"com.apple.Intents"], v20, (v21 & 1) == 0))
    {
    }

    else if (v18)
    {
      v22 = [INSchema _defaultSchemaForBundle:v18];
      if (v22)
      {
        v23 = v22;
LABEL_37:
        v8 = v23;

        v18 = v8;
LABEL_48:

        goto LABEL_49;
      }

      v46 = INSiriLogContextIntents;
      if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
LABEL_47:
        v8 = 0;
        goto LABEL_48;
      }

      v24 = v46;
      v29 = [v18 bundleURL];
      *buf = 136315394;
      v56 = "INSchemaWithTypeName";
      v57 = 2112;
      v58 = v29;
      _os_log_error_impl(&dword_18E991000, v24, OS_LOG_TYPE_ERROR, "%s Did not find schema inside of bundle URL: %@", buf, 0x16u);
LABEL_46:

      goto LABEL_47;
    }

    v24 = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
    v25 = [v24 bundleIdentifier];
    if ([v25 isEqualToString:v7])
    {
    }

    else
    {
      CanMapLSDatabase = INThisProcessCanMapLSDatabase(0);

      if (CanMapLSDatabase)
      {
        v52 = 0;
        v27 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:v7 allowPlaceholder:0 error:&v52];
        v18 = v52;

        if (v18)
        {
          v28 = INSiriLogContextIntents;
          if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v56 = "INSchemaWithTypeName";
            v57 = 2112;
            v58 = v7;
            v59 = 2112;
            v60 = v18;
            _os_log_error_impl(&dword_18E991000, v28, OS_LOG_TYPE_ERROR, "%s Unable to create bundle record for bundle identifier: %@, %@", buf, 0x20u);
          }
        }

        v24 = v27;
LABEL_26:
        v29 = [v24 URL];
        if (!v29)
        {
          v32 = INSiriLogContextIntents;
          if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
          {
LABEL_41:
            v8 = 0;
            goto LABEL_42;
          }

          *buf = 136315394;
          v56 = "INSchemaWithTypeName";
          v57 = 2112;
          v58 = v7;
          v33 = "%s Unable to find bundle URL for bundle identifier: %@";
LABEL_55:
          _os_log_error_impl(&dword_18E991000, v32, OS_LOG_TYPE_ERROR, v33, buf, 0x16u);
          goto LABEL_41;
        }

        v30 = [MEMORY[0x1E696AC08] defaultManager];
        v31 = [v29 path];
        if (([v30 isReadableFileAtPath:v31] & 1) == 0)
        {
          HasEntitlement = INThisProcessHasEntitlement(@"com.apple.intents.extension.discovery", 0);

          if (!HasEntitlement)
          {
            goto LABEL_34;
          }

          v35 = +[INImageServiceConnection sharedConnection];
          v36 = [MEMORY[0x1E695DFD8] setWithObject:v7];
          v51 = 0;
          v31 = [v35 loadSchemasForBundleIdentifiers:v36 error:&v51];
          v30 = v51;

          if ([v31 count])
          {
            v37 = [v31 allValues];
            v8 = [v37 firstObject];

LABEL_42:
            goto LABEL_48;
          }

          v50 = INSiriLogContextIntents;
          if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v56 = "INSchemaWithTypeName";
            v57 = 2114;
            v58 = v30;
            _os_log_error_impl(&dword_18E991000, v50, OS_LOG_TYPE_ERROR, "%s Unable to load schema using intents helper: %{public}@", buf, 0x16u);
          }
        }

LABEL_34:
        v38 = [v24 intentDefinitionURLs];
        v39 = [v38 count];

        if (v39)
        {
          v40 = MEMORY[0x1E695DFB8];
          v41 = [v24 intentDefinitionURLs];
          v42 = [v41 allValues];
          v43 = [v40 orderedSetWithArray:v42];

          v44 = [v43 array];
          v45 = INApplicationBundleIdentifierFromBundleIdentifier(v7);
          v23 = [INSchema _schemaWithIntentDefinitionURLs:v44 bundleIdentifier:v7 mainBundleIdentifier:v45 contentOptions:31];

          if (v23)
          {

            v18 = 0;
            goto LABEL_37;
          }

          v47 = INSiriLogContextIntents;
          if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v56 = "INSchemaWithTypeName";
            v57 = 2112;
            v58 = v29;
            _os_log_error_impl(&dword_18E991000, v47, OS_LOG_TYPE_ERROR, "%s Did not find schema inside of bundle URL: %@", buf, 0x16u);
          }

          goto LABEL_46;
        }

        v32 = INSiriLogContextIntents;
        if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_41;
        }

        *buf = 136315394;
        v56 = "INSchemaWithTypeName";
        v57 = 2112;
        v58 = v7;
        v33 = "%s Intent Definition URLs count == 0 for %@";
        goto LABEL_55;
      }
    }

    v18 = 0;
    goto LABEL_26;
  }

LABEL_49:

  v48 = *MEMORY[0x1E69E9840];

  return v8;
}

uint64_t INParseCustomIntentTypeName(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [v5 hasPrefix:@"sirikit.intents.custom."];
  if (v6)
  {
    v7 = [v5 substringFromIndex:{objc_msgSend(@"sirikit.intents.custom.", "length")}];
    v8 = objc_alloc(MEMORY[0x1E695DF70]);
    v9 = [v7 componentsSeparatedByString:@"."];
    v10 = [v8 initWithArray:v9];

    v11 = [v10 lastObject];
    [v10 removeLastObject];
    v12 = [v10 componentsJoinedByString:@"."];
    if (a2)
    {
      v13 = v11;
      *a2 = v11;
    }

    if (a3)
    {
      v14 = v12;
      *a3 = v12;
    }
  }

  return v6;
}

id INUserActivitySerializeToData(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    [v1 _intentsPrepareForEncoding];
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__75144;
    v16 = __Block_byref_object_dispose__75145;
    v17 = 0;
    v3 = dispatch_semaphore_create(0);
    v4 = INUserActivityGetSerializationQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __INUserActivitySerializeToData_block_invoke;
    block[3] = &unk_1E7283018;
    v10 = v3;
    v11 = &v12;
    v9 = v2;
    v5 = v3;
    dispatch_async(v4, block);

    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    v6 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

_INPBMessage *INIntentSlotValueTransformToMessage(void *a1)
{
  v76 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(_INPBMessage);
    v3 = [v1 identifier];
    if (v3)
    {
      [(_INPBMessage *)v2 setIdentifier:v3];
    }

    v4 = [v1 conversationIdentifier];
    if (v4)
    {
      [(_INPBMessage *)v2 setConversationIdentifier:v4];
    }

    v5 = [v1 content];
    if (v5)
    {
      [(_INPBMessage *)v2 setContent:v5];
    }

    v68 = v5;
    v6 = [v1 dateSent];
    if (v6)
    {
      v7 = [MEMORY[0x1E695DEE8] currentCalendar];
      v8 = [v7 components:3178748 fromDate:v6];
      v9 = INIntentSlotValueTransformToDateTime(v8);
      [(_INPBMessage *)v2 setDateSent:v9];
    }

    v10 = [v1 sender];
    v11 = v10;
    if (v10)
    {
      v12 = INIntentSlotValueTransformToContact(v10);
      [(_INPBMessage *)v2 setSender:v12];
    }

    v66 = v11;
    v65 = [v1 recipients];
    v13 = INIntentSlotValueTransformToContacts(v65);
    [(_INPBMessage *)v2 setRecipients:v13];

    v14 = [v1 groupName];
    v15 = v14;
    if (v14)
    {
      v16 = INIntentSlotValueTransformToDataString(v14);
      [(_INPBMessage *)v2 setSpeakableGroupName:v16];
    }

    v64 = v15;
    v67 = v6;
    v17 = [v1 dateMessageWasLastRead];
    if (v17)
    {
      v18 = [MEMORY[0x1E695DEE8] currentCalendar];
      v19 = [v18 components:3178748 fromDate:v17];
      v20 = INIntentSlotValueTransformToDateTime(v19);
      [(_INPBMessage *)v2 setDateLastMessageRead:v20];
    }

    v21 = [v1 numberOfAttachments];
    v22 = v21;
    if (v21)
    {
      v23 = INIntentSlotValueTransformToInteger(v21);
      [(_INPBMessage *)v2 setNumberOfAttachments:v23];
    }

    v24 = [v1 messageType];
    v69 = v4;
    v70 = v3;
    if (v24 > 999)
    {
      if (v24 == 1100)
      {
        v26 = 35;
      }

      else
      {
        v26 = 0;
      }

      if (v24 == 1005)
      {
        v27 = 32;
      }

      else
      {
        v27 = v26;
      }

      if (v24 == 1004)
      {
        v28 = 31;
      }

      else
      {
        v28 = 0;
      }

      if (v24 == 1003)
      {
        v29 = 30;
      }

      else
      {
        v29 = v28;
      }

      if (v24 <= 1004)
      {
        v27 = v29;
      }

      if (v24 == 1002)
      {
        v30 = 29;
      }

      else
      {
        v30 = 0;
      }

      if (v24 == 1001)
      {
        v31 = 28;
      }

      else
      {
        v31 = v30;
      }

      if (v24 == 1000)
      {
        v32 = 27;
      }

      else
      {
        v32 = v31;
      }

      if (v24 <= 1002)
      {
        v25 = v32;
      }

      else
      {
        v25 = v27;
      }
    }

    else
    {
      switch(v24)
      {
        case 1:
          v25 = 1;
          break;
        case 2:
          v25 = 2;
          break;
        case 3:
          v25 = 3;
          break;
        case 4:
          v25 = 4;
          break;
        case 5:
          v25 = 5;
          break;
        case 6:
          v25 = 6;
          break;
        case 7:
          v25 = 7;
          break;
        case 8:
          v25 = 8;
          break;
        case 9:
          v25 = 9;
          break;
        case 10:
          v25 = 10;
          break;
        case 11:
          v25 = 11;
          break;
        case 12:
          v25 = 12;
          break;
        case 13:
          v25 = 13;
          break;
        case 14:
          v25 = 14;
          break;
        case 15:
          v25 = 15;
          break;
        case 16:
          v25 = 16;
          break;
        case 17:
          v25 = 17;
          break;
        case 18:
          v25 = 18;
          break;
        case 19:
          v25 = 19;
          break;
        case 20:
          v25 = 20;
          break;
        case 21:
          v25 = 21;
          break;
        case 22:
          v25 = 22;
          break;
        case 23:
          v25 = 23;
          break;
        case 24:
          v25 = 24;
          break;
        case 25:
          v25 = 25;
          break;
        case 26:
          v25 = 26;
          break;
        case 27:
          v25 = 33;
          break;
        case 28:
          v25 = 34;
          break;
        default:
          v25 = 0;
          break;
      }
    }

    [(_INPBMessage *)v2 setType:v25];
    v33 = [v1 messageEffectType] - 1;
    if (v33 < 0xD)
    {
      v34 = (v33 + 1);
    }

    else
    {
      v34 = 0x7FFFFFFFLL;
    }

    [(_INPBMessage *)v2 setEffect:v34];
    v35 = [v1 referencedMessage];
    v36 = INIntentSlotValueTransformToMessage();
    [(_INPBMessage *)v2 setReferencedMessage:v36];

    v37 = [v1 linkMetadata];
    v38 = INIntentSlotValueTransformToMessageLinkMetadata(v37);
    [(_INPBMessage *)v2 setLinkMetadata:v38];

    v39 = [v1 paymentAmount];
    v40 = INIntentSlotValueTransformToCurrencyAmountValue(v39);
    [(_INPBMessage *)v2 setPaymentAmount:v40];

    v41 = [v1 locationName];
    [(_INPBMessage *)v2 setLocationName:v41];

    v42 = [v1 fileExtension];
    [(_INPBMessage *)v2 setFileExtension:v42];

    v43 = [v1 serviceName];
    [(_INPBMessage *)v2 setServiceName:v43];

    v44 = [v1 audioMessageFile];
    v45 = INIntentSlotValueTransformToFile(v44);
    [(_INPBMessage *)v2 setAudioMessageFile:v45];

    v46 = [v1 attachmentFiles];
    v47 = INIntentSlotValueTransformToFiles(v46);
    [(_INPBMessage *)v2 setAttachmentFiles:v47];

    v48 = [v1 reaction];
    v49 = INIntentSlotValueTransformToMessageReaction(v48);
    [(_INPBMessage *)v2 setReaction:v49];

    v50 = [v1 location];
    v51 = INIntentSlotValueTransformToLocation(v50);
    [(_INPBMessage *)v2 setLocation:v51];

    v52 = [v1 linkMetadata];
    v53 = INIntentSlotValueTransformToMessageLinkMetadata(v52);
    [(_INPBMessage *)v2 setLinkMetadata:v53];

    v54 = [v1 translatedToLanguage];
    [(_INPBMessage *)v2 setTranslatedToLanguage:v54];

    v55 = [MEMORY[0x1E695DF70] array];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v56 = [v1 inlineGlyphContent];
    v57 = [v56 countByEnumeratingWithState:&v71 objects:v75 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v72;
      do
      {
        for (i = 0; i != v58; ++i)
        {
          if (*v72 != v59)
          {
            objc_enumerationMutation(v56);
          }

          v61 = INIntentSlotValueTransformToDictionary(*(*(&v71 + 1) + 8 * i));
          [v55 addObject:v61];
        }

        v58 = [v56 countByEnumeratingWithState:&v71 objects:v75 count:16];
      }

      while (v58);
    }

    [(_INPBMessage *)v2 setInlineGlyphContents:v55];
  }

  else
  {
    v2 = 0;
  }

  v62 = *MEMORY[0x1E69E9840];

  return v2;
}

_INPBContactHandle *INIntentSlotValueTransformToContactHandle(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(_INPBContactHandle);
    if (v2)
    {
      v3 = [v1 value];
      [(_INPBContactHandle *)v2 setValue:v3];

      v4 = [v1 type];
      v5 = 2 * (v4 == 2);
      if (v4 == 1)
      {
        v5 = 1;
      }

      if (v4 == 104)
      {
        v5 = 4;
      }

      if (v4 == 103)
      {
        v6 = 3;
      }

      else
      {
        v6 = v5;
      }

      [(_INPBContactHandle *)v2 setType:v6];
      v7 = [v1 label];
      [(_INPBContactHandle *)v2 setLabel:v7];

      v8 = [v1 emergencyType];
      if (v8 == 2)
      {
        v9 = 2;
      }

      else
      {
        v9 = v8 == 1;
      }

      [(_INPBContactHandle *)v2 setEmergencyType:v9];
      v10 = [v1 faceTimeType];
      if (v10 == 2)
      {
        v11 = 2;
      }

      else
      {
        v11 = v10 == 1;
      }

      [(_INPBContactHandle *)v2 setFaceTimeType:v11];
      -[_INPBContactHandle setSuggested:](v2, "setSuggested:", [v1 isSuggested]);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

_INPBInteger *INIntentSlotValueTransformToInteger(void *a1)
{
  v1 = INIntentSlotValueTransformToIntegerValue(a1);
  if (v1)
  {
    v2 = objc_alloc_init(_INPBInteger);
    [(_INPBInteger *)v2 addValue:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

_INPBIntegerValue *INIntentSlotValueTransformToIntegerValue(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBIntegerValue);
    v3 = [v1 intValue];

    [(_INPBIntegerValue *)v2 setValue:v3];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

_INPBMessageLinkMetadata *INIntentSlotValueTransformToMessageLinkMetadata(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBMessageLinkMetadata);
    v3 = [v1 siteName];
    [(_INPBMessageLinkMetadata *)v2 setSiteName:v3];

    v4 = [v1 summary];
    [(_INPBMessageLinkMetadata *)v2 setSummary:v4];

    v5 = [v1 title];
    [(_INPBMessageLinkMetadata *)v2 setTitle:v5];

    v6 = [v1 openGraphType];
    [(_INPBMessageLinkMetadata *)v2 setOpenGraphType:v6];

    v7 = [v1 itemType];
    [(_INPBMessageLinkMetadata *)v2 setItemType:v7];

    v8 = [v1 linkURL];
    v9 = INIntentSlotValueTransformToURLValue(v8);
    [(_INPBMessageLinkMetadata *)v2 setLinkURL:v9];

    v10 = [v1 originalURL];
    [(_INPBMessageLinkMetadata *)v2 setOriginalURL:v10];

    v11 = [v1 imageURLs];
    [(_INPBMessageLinkMetadata *)v2 setImageURLs:v11];

    v12 = [v1 iconURLs];
    [(_INPBMessageLinkMetadata *)v2 setIconURLs:v12];

    v13 = [v1 creator];
    [(_INPBMessageLinkMetadata *)v2 setCreator:v13];

    v14 = [v1 linkMediaType];
    if (v14 >= 0x12)
    {
      v15 = 0x7FFFFFFFLL;
    }

    else
    {
      v15 = (10 * v14 + 10);
    }

    [(_INPBMessageLinkMetadata *)v2 setLinkMediaType:v15];
    v16 = [v1 iTunesStoreIdentifier];
    [(_INPBMessageLinkMetadata *)v2 setITunesStoreIdentifier:v16];

    v17 = [v1 iTunesStoreFrontIdentifier];
    [(_INPBMessageLinkMetadata *)v2 setITunesStoreFrontIdentifier:v17];

    v18 = [v1 songTitle];
    [(_INPBMessageLinkMetadata *)v2 setSongTitle:v18];

    v19 = [v1 songArtist];
    [(_INPBMessageLinkMetadata *)v2 setSongArtist:v19];

    v20 = [v1 songAlbum];
    [(_INPBMessageLinkMetadata *)v2 setSongAlbum:v20];

    v21 = [v1 albumName];
    [(_INPBMessageLinkMetadata *)v2 setAlbumName:v21];

    v22 = [v1 albumArtist];
    [(_INPBMessageLinkMetadata *)v2 setAlbumArtist:v22];

    v23 = [v1 musicVideoName];
    [(_INPBMessageLinkMetadata *)v2 setMusicVideoName:v23];

    v24 = [v1 musicVideoArtist];
    [(_INPBMessageLinkMetadata *)v2 setMusicVideoArtist:v24];

    v25 = [v1 artistName];
    [(_INPBMessageLinkMetadata *)v2 setArtistName:v25];

    v26 = [v1 artistGenre];
    [(_INPBMessageLinkMetadata *)v2 setArtistGenre:v26];

    v27 = [v1 playlistName];
    [(_INPBMessageLinkMetadata *)v2 setPlaylistName:v27];

    v28 = [v1 playlistCurator];
    [(_INPBMessageLinkMetadata *)v2 setPlaylistCurator:v28];

    v29 = [v1 radioName];
    [(_INPBMessageLinkMetadata *)v2 setRadioName:v29];

    v30 = [v1 radioCurator];
    [(_INPBMessageLinkMetadata *)v2 setRadioCurator:v30];

    v31 = [v1 softwareName];
    [(_INPBMessageLinkMetadata *)v2 setSoftwareName:v31];

    v32 = [v1 softwareGenre];
    [(_INPBMessageLinkMetadata *)v2 setSoftwareGenre:v32];

    v33 = [v1 softwarePlatform];
    [(_INPBMessageLinkMetadata *)v2 setSoftwarePlatform:v33];

    v34 = [v1 bookName];
    [(_INPBMessageLinkMetadata *)v2 setBookName:v34];

    v35 = [v1 bookAuthor];
    [(_INPBMessageLinkMetadata *)v2 setBookAuthor:v35];

    v36 = [v1 audioBookName];
    [(_INPBMessageLinkMetadata *)v2 setAudioBookName:v36];

    v37 = [v1 audioBookAuthor];
    [(_INPBMessageLinkMetadata *)v2 setAudioBookAuthor:v37];

    v38 = [v1 audioBookNarrator];
    [(_INPBMessageLinkMetadata *)v2 setAudioBookNarrator:v38];

    v39 = [v1 podcastName];
    [(_INPBMessageLinkMetadata *)v2 setPodcastName:v39];

    v40 = [v1 podcastArtist];
    [(_INPBMessageLinkMetadata *)v2 setPodcastArtist:v40];

    v41 = [v1 podcastEpisodeName];
    [(_INPBMessageLinkMetadata *)v2 setPodcastEpisodeName:v41];

    v42 = [v1 podcastEpisodePodcastName];
    [(_INPBMessageLinkMetadata *)v2 setPodcastEpisodePodcastName:v42];

    v43 = [v1 podcastEpisodeArtist];
    [(_INPBMessageLinkMetadata *)v2 setPodcastEpisodeArtist:v43];

    v44 = [v1 podcastEpisodeReleaseDate];
    v45 = INIntentSlotValueTransformToDateTime(v44);
    [(_INPBMessageLinkMetadata *)v2 setPodcastEpisodeReleaseDate:v45];

    v46 = [v1 tvEpisodeEpisodeName];
    [(_INPBMessageLinkMetadata *)v2 setTvEpisodeEpisodeName:v46];

    v47 = [v1 tvEpisodeSeasonName];
    [(_INPBMessageLinkMetadata *)v2 setTvEpisodeSeasonName:v47];

    v48 = [v1 tvEpisodeGenre];
    [(_INPBMessageLinkMetadata *)v2 setTvEpisodeGenre:v48];

    v49 = [v1 tvSeasonName];
    [(_INPBMessageLinkMetadata *)v2 setTvSeasonName:v49];

    v50 = [v1 tvSeasonGenre];
    [(_INPBMessageLinkMetadata *)v2 setTvSeasonGenre:v50];

    v51 = [v1 movieName];
    [(_INPBMessageLinkMetadata *)v2 setMovieName:v51];

    v52 = [v1 movieGenre];
    [(_INPBMessageLinkMetadata *)v2 setMovieGenre:v52];

    v53 = [v1 tvShowName];
    [(_INPBMessageLinkMetadata *)v2 setTvShowName:v53];

    v54 = [v1 movieBundleName];
    [(_INPBMessageLinkMetadata *)v2 setMovieBundleName:v54];

    v55 = [v1 movieBundleGenre];
    [(_INPBMessageLinkMetadata *)v2 setMovieBundleGenre:v55];

    v56 = [v1 appleTvTitle];
    [(_INPBMessageLinkMetadata *)v2 setAppleTvTitle:v56];

    v57 = [v1 appleTvSubtitle];

    [(_INPBMessageLinkMetadata *)v2 setAppleTvSubtitle:v57];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

_INPBCurrencyAmountValue *INIntentSlotValueTransformToCurrencyAmountValue(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBCurrencyAmountValue);
    v3 = [v1 currencyCode];
    [(_INPBCurrencyAmountValue *)v2 setCurrencyCode:v3];

    v4 = [v1 amount];

    v5 = INIntentSlotValueTransformToDecimalNumberValue(v4);
    [(_INPBCurrencyAmountValue *)v2 setAmount:v5];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

_INPBFile *INIntentSlotValueTransformToFile(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(_INPBFile);
    if ([v1 _isFileURLBased])
    {
      v3 = [v1 fileURL];
      v4 = INIntentSlotValueTransformToURLValue(v3);
      [(_INPBFile *)v2 setFileURL:v4];
    }

    else
    {
      v5 = [v1 _bookmarkData];

      if (v5)
      {
        v3 = [v1 _bookmarkData];
        [(_INPBFile *)v2 setBookmarkData:v3];
      }

      else
      {
        v3 = [v1 data];
        [(_INPBFile *)v2 setData:v3];
      }
    }

    v6 = [v1 filename];
    [(_INPBFile *)v2 setFilename:v6];

    v7 = [v1 typeIdentifier];
    [(_INPBFile *)v2 setTypeIdentifier:v7];

    v8 = [v1 _removedOnCompletionValue];

    if (v8)
    {
      -[_INPBFile setRemovedOnCompletion:](v2, "setRemovedOnCompletion:", [v1 removedOnCompletion]);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformToFiles(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToFile(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

_INPBLocation *INIntentSlotValueTransformToLocation(void *a1)
{
  v1 = INIntentSlotValueTransformToLocationValue(a1);
  if (v1)
  {
    v2 = objc_alloc_init(_INPBLocation);
    [(_INPBLocation *)v2 addValue:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

_INPBMessageReaction *INIntentSlotValueTransformToMessageReaction(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBMessageReaction);
    -[_INPBMessageReaction setReactionType:](v2, "setReactionType:", INMessageReactionTypeGetBackingType([v1 reactionType]));
    v3 = [v1 reactionDescription];
    [(_INPBMessageReaction *)v2 setReactionDescription:v3];

    v4 = [v1 emoji];
    [(_INPBMessageReaction *)v2 setEmoji:v4];

    v5 = [v1 sticker];

    v6 = INIntentSlotValueTransformToSticker(v5);
    [(_INPBMessageReaction *)v2 setSticker:v6];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

_INPBLocationValue *INIntentSlotValueTransformToLocationValue(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v2 = 0;
    goto LABEL_17;
  }

  v2 = objc_alloc_init(_INPBLocationValue);
  v3 = [v1 _geoMapItem];
  if (v3)
  {
    v4 = v3;
    goto LABEL_6;
  }

  v5 = objc_alloc(MEMORY[0x1E69A1E70]);
  v6 = [v1 location];
  [v6 coordinate];
  v8 = v7;
  v9 = [v1 location];
  [v9 coordinate];
  v10 = [v5 initWithLatitude:v8 longitude:?];

  v11 = objc_alloc(MEMORY[0x1E69A21A0]);
  v12 = [v1 postalAddress];
  v13 = [v12 dictionaryRepresentation];
  v14 = [v1 name];
  LODWORD(v28) = 0;
  v4 = [v11 initWithWithLocation:v10 addressDictionary:v13 name:v14 businessURL:0 phoneNumber:0 sessionID:0 muid:0.0 attributionID:0 sampleSizeForUserRatingScore:0 normalizedUserRatingScore:v28];

  if (v4)
  {
LABEL_6:
    v15 = [v4 _placeData];
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = [v1 location];
      [v16 coordinate];
      latitude = v30.latitude;
      longitude = v30.longitude;
      if (!CLLocationCoordinate2DIsValid(v30))
      {
        goto LABEL_12;
      }

      v19 = [v1 name];
      v20 = __INGEOPDPlaceCreateFromCoordinate(v19, latitude, longitude);

      if (!v20)
      {
        goto LABEL_13;
      }

      v16 = v20;
    }

    [(_INPBLocationValue *)v2 setPlace:v16];
LABEL_12:

LABEL_13:
    v21 = [MEMORY[0x1E69A21E0] mapItemStorageForGEOMapItem:v4 clientAttributes:0];
    if (v21)
    {
      [(_INPBLocationValue *)v2 setMapItemStorage:v21];
    }

    goto LABEL_15;
  }

  v4 = [v1 location];
  [v4 coordinate];
  v23 = v31.latitude;
  v24 = v31.longitude;
  if (!CLLocationCoordinate2DIsValid(v31))
  {
    goto LABEL_16;
  }

  v25 = [v1 name];
  v21 = __INGEOPDPlaceCreateFromCoordinate(v25, v23, v24);

  if (v21)
  {
    [(_INPBLocationValue *)v2 setPlace:v21];
  }

  v26 = [objc_alloc(MEMORY[0x1E69A2348]) initWithLatitude:v23 longitude:v24];
  v27 = [MEMORY[0x1E69A21E0] mapItemStorageForPlace:v26];
  if (v27)
  {
    [(_INPBLocationValue *)v2 setMapItemStorage:v27];
  }

LABEL_15:
LABEL_16:

LABEL_17:

  return v2;
}

id INIntentResponseCreate(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    v6 = 0;
    v5 = 0;
LABEL_6:
    v7 = 1;
    if (!v3)
    {
      goto LABEL_18;
    }

    goto LABEL_7;
  }

  v19 = 0;
  v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v4 options:0 error:&v19];
  v6 = v19;
  if (!v5)
  {
    goto LABEL_6;
  }

  if (v3)
  {
    v4 = 0;
    v7 = 0;
    goto LABEL_7;
  }

  v3 = [v5 objectForKeyedSubscript:@"typeName"];
  v7 = 0;
  v4 = 0;
  if (!v3)
  {
LABEL_18:
    v15 = 0;
    goto LABEL_19;
  }

LABEL_7:
  v8 = INIntentSchemaGetIntentResponseDescriptionWithType(v3);
  if ([v8 facadeClass] || (v17 = 0, v18 = 0, INSchemaWithTypeName(v3, &v18, &v17), v9 = objc_claimAutoreleasedReturnValue(), v10 = v18, v9, v10, v9))
  {
    v11 = [[_INPBIntentResponse alloc] initWithData:v4];
    if (![(_INPBIntentResponse *)v11 hasPayloadSuccess])
    {
      v12 = objc_alloc_init(_INPBIntentResponsePayloadSuccess);
      [(_INPBIntentResponsePayloadSuccess *)v12 setResponseTypeName:v3];
      [(_INPBIntentResponse *)v11 setPayloadSuccess:v12];
    }

    v13 = [v8 facadeClass];
    if (!v13)
    {
      v13 = objc_opt_class();
    }

    v14 = [[v13 alloc] initWithBackingStore:v11];
    v15 = v14;
    if ((v7 & 1) == 0)
    {
      [v14 _updateWithJSONDictionary:v5];
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_19:

  return v15;
}

id INIntentSchemaGetIntentResponseDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (INIntentSchemaGetIntentResponseDescriptionWithType_onceToken != -1)
    {
      dispatch_once(&INIntentSchemaGetIntentResponseDescriptionWithType_onceToken, &__block_literal_global_1431);
    }

    v2 = [INIntentSchemaGetIntentResponseDescriptionWithType_map objectForKey:v1];
    v3 = [v2 integerValue];

    switch(v3)
    {
      case 1:
        v4 = INAlarmDomainGetIntentResponseDescriptionWithType(v1);
        break;
      case 2:
        v4 = INCalendarEventDomainGetIntentResponseDescriptionWithType(v1);
        break;
      case 3:
        v4 = INCallsDomainGetIntentResponseDescriptionWithType(v1);
        break;
      case 4:
        v4 = INCarPlayDomainGetIntentResponseDescriptionWithType(v1);
        break;
      case 5:
        v4 = INContactDomainGetIntentResponseDescriptionWithType(v1);
        break;
      case 6:
        v4 = INFilesDomainGetIntentResponseDescriptionWithType(v1);
        break;
      case 7:
        v4 = INFindDeviceDomainGetIntentResponseDescriptionWithType(v1);
        break;
      case 8:
        v4 = INFocusStatusDomainGetIntentResponseDescriptionWithType(v1);
        break;
      case 9:
        v4 = INGeoDomainGetIntentResponseDescriptionWithType(v1);
        break;
      case 10:
        v4 = INHomeCommunicationDomainGetIntentResponseDescriptionWithType(v1);
        break;
      case 11:
        v4 = INHomeKitDomainGetIntentResponseDescriptionWithType(v1);
        break;
      case 12:
        v4 = INMediaDomainGetIntentResponseDescriptionWithType(v1);
        break;
      case 13:
        v4 = INMessagesDomainGetIntentResponseDescriptionWithType(v1);
        break;
      case 14:
        v4 = INNotebookDomainGetIntentResponseDescriptionWithType(v1);
        break;
      case 15:
        v4 = INPaymentsDomainGetIntentResponseDescriptionWithType(v1);
        break;
      case 16:
        v4 = INPhotosDomainGetIntentResponseDescriptionWithType(v1);
        break;
      case 17:
        v4 = INRRaaSDomainGetIntentResponseDescriptionWithType(v1);
        break;
      case 18:
        v4 = INRadioDomainGetIntentResponseDescriptionWithType(v1);
        break;
      case 19:
        v4 = INReservationsDomainGetIntentResponseDescriptionWithType(v1);
        break;
      case 20:
        v4 = INRidesharingDomainGetIntentResponseDescriptionWithType(v1);
        break;
      case 21:
        v4 = INSettingsDomainGetIntentResponseDescriptionWithType(v1);
        break;
      case 22:
        v4 = INTimersDomainGetIntentResponseDescriptionWithType(v1);
        break;
      case 23:
        v4 = INVisualCodeDomainGetIntentResponseDescriptionWithType(v1);
        break;
      case 24:
        v4 = INVoiceCommandsDomainGetIntentResponseDescriptionWithType(v1);
        break;
      case 25:
        v4 = INWellnessDomainGetIntentResponseDescriptionWithType(v1);
        break;
      case 26:
        v4 = INWorkflowDomainGetIntentResponseDescriptionWithType(v1);
        break;
      case 27:
        v4 = INWorkoutsDomainGetIntentResponseDescriptionWithType(v1);
        break;
      case 28:
        v4 = INGenericDomainGetIntentResponseDescriptionWithType(v1);
        break;
      default:
        goto LABEL_6;
    }

    v5 = v4;
  }

  else
  {
LABEL_6:
    v5 = 0;
  }

  return v5;
}

id INMessagesDomainGetIntentResponseDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INMessagesDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INMessagesDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_5845);
    }

    v2 = [sMessagesDomain_intentResponseDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t _INPBIntentResponseReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v38) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38 & 0x7F) << v5;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = objc_alloc_init(_INPBUserActivity);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !_INPBUserActivityReadFrom(v14, a2))
            {
LABEL_74:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setUserActivity:v14];
            goto LABEL_53;
          case 5:
            v29 = 0;
            v30 = 0;
            v31 = 0;
            while (1)
            {
              LOBYTE(v38) = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v38 & 0x7F) << v29;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_70;
              }
            }

            v35 = (v31 != 0) & ~[a2 hasError];
LABEL_70:
            [a1 setRequiresAuthentication:v35];
            goto LABEL_71;
          case 6:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              LOBYTE(v38) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v38 & 0x7F) << v15;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_68;
              }
            }

            v21 = (v17 != 0) & ~[a2 hasError];
LABEL_68:
            [a1 setRequiresProtectedData:v21];
            goto LABEL_71;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            while (1)
            {
              LOBYTE(v38) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v38 & 0x7F) << v22;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_66;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v24;
            }

LABEL_66:
            [a1 setType:v28];
            goto LABEL_71;
          case 2:
            v14 = objc_alloc_init(_INPBIntentResponsePayloadSuccess);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !_INPBIntentResponsePayloadSuccessReadFrom(v14, a2))
            {
              goto LABEL_74;
            }

            PBReaderRecallMark();
            [a1 setPayloadSuccess:v14];
            goto LABEL_53;
          case 3:
            v14 = objc_alloc_init(_INPBIntentResponsePayloadFailure);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !_INPBIntentResponsePayloadFailureReadFrom(v14, a2))
            {
              goto LABEL_74;
            }

            PBReaderRecallMark();
            [a1 setPayloadFailure:v14];
LABEL_53:

            goto LABEL_71;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_71:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBIntentResponsePayloadFailureReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v31 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v31 & 0x7F) << v6;
      if ((v31 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) == 3)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      while (1)
      {
        v32 = 0;
        v26 = [a2 position] + 1;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
        {
          v28 = [a2 data];
          [v28 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v25 |= (v32 & 0x7F) << v23;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v23 += 7;
        v12 = v24++ >= 9;
        if (v12)
        {
          v29 = 0;
          goto LABEL_43;
        }
      }

      v29 = (v25 != 0) & ~[a2 hasError];
LABEL_43:
      [a1 setAppLaunchRequested:v29];
    }

    else if (v14 == 2)
    {
      v22 = PBReaderReadString();
      [a1 setEnumTypeName:v22];
    }

    else if (v14 == 1)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v33 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v33 & 0x7F) << v15;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v12 = v16++ >= 9;
        if (v12)
        {
          v21 = 0;
          goto LABEL_47;
        }
      }

      if ([a2 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v17;
      }

LABEL_47:
      [a1 setErrorCode:v21];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBIntentResponsePayloadSuccessReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v24 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v24 & 0x7F) << v6;
      if ((v24 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) == 1)
    {
      v22 = PBReaderReadData();
      [a1 setResponseMessageData:v22];
      goto LABEL_32;
    }

    if (v14 == 2)
    {
      v22 = PBReaderReadString();
      [a1 setResponseTypeName:v22];
LABEL_32:

      continue;
    }

    if (v14 == 3)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v25 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v25 & 0x7F) << v15;
        if ((v25 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v12 = v16++ >= 9;
        if (v12)
        {
          v21 = 0;
          goto LABEL_36;
        }
      }

      v21 = (v17 != 0) & ~[a2 hasError];
LABEL_36:
      [a1 setShouldOpenContainingApplication:v21];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

id INUserActivityDeserializeFromBackingStore(void *a1)
{
  if (a1)
  {
    v1 = [a1 data];
    v2 = INUserActivityDeserializeFromData(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __INImageProxyInjectionUtilitiesInjectProxiesIntoSlotComposer_block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setValue:a2 forSlotComposer:*(a1 + 40)];
  v3 = *(a1 + 48);

  dispatch_group_leave(v3);
}

id INUserActivityDeserializeFromData(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E69636A8];
    v2 = a1;
    v3 = [[v1 alloc] _initWithUserActivityData:v2];

    v4 = [v3 _intentsIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

__CFString *INStartPhotoPlaybackIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E727D6D8[a1];
  }
}

uint64_t _INPBBillPayeeValueReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        if (v13 == 6)
        {
          v14 = objc_alloc_init(_INPBDataString);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
          {
LABEL_38:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setOrganizationName:v14];
          goto LABEL_34;
        }

        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          [a1 setAccountNumber:v14];
LABEL_34:

          goto LABEL_35;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBValueMetadata);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBValueMetadataReadFrom(v14, a2))
          {
            goto LABEL_38;
          }

          PBReaderRecallMark();
          [a1 setValueMetadata:v14];
          goto LABEL_34;
        }

        if (v13 == 3)
        {
          v14 = objc_alloc_init(_INPBDataString);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
          {
            goto LABEL_38;
          }

          PBReaderRecallMark();
          [a1 setNickname:v14];
          goto LABEL_34;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_35:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *INQueryHomeIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E727D708[a1];
  }
}

uint64_t _INPBSetTaskAttributeIntentReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31 & 0x7F) << v5;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 5)
      {
        if (v13 > 7)
        {
          if (v13 == 8)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            while (1)
            {
              LOBYTE(v31) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v31 & 0x7F) << v23;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_76;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v25;
            }

LABEL_76:
            [a1 setPriority:v29];
            goto LABEL_47;
          }

          if (v13 == 9)
          {
            v14 = objc_alloc_init(_INPBDataString);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
            {
LABEL_79:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setTaskTitle:v14];
            goto LABEL_46;
          }
        }

        else
        {
          if (v13 == 6)
          {
            v14 = objc_alloc_init(_INPBTemporalEventTrigger);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_INPBTemporalEventTriggerReadFrom(v14, a2))
            {
              goto LABEL_79;
            }

            PBReaderRecallMark();
            [a1 setTemporalEventTrigger:v14];
            goto LABEL_46;
          }

          if (v13 == 7)
          {
            v14 = objc_alloc_init(_INPBContactEventTrigger);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_INPBContactEventTriggerReadFrom(v14, a2))
            {
              goto LABEL_79;
            }

            PBReaderRecallMark();
            [a1 setContactEventTrigger:v14];
            goto LABEL_46;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            LOBYTE(v31) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v31 & 0x7F) << v16;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_72;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_72:
          [a1 setStatus:v22];
          goto LABEL_47;
        }

        if (v13 == 5)
        {
          v14 = objc_alloc_init(_INPBSpatialEventTrigger);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_INPBSpatialEventTriggerReadFrom(v14, a2))
          {
            goto LABEL_79;
          }

          PBReaderRecallMark();
          [a1 setSpatialEventTrigger:v14];
          goto LABEL_46;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBIntentMetadata);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v14, a2))
          {
            goto LABEL_79;
          }

          PBReaderRecallMark();
          [a1 setIntentMetadata:v14];
          goto LABEL_46;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBTask);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_INPBTaskReadFrom(v14, a2))
          {
            goto LABEL_79;
          }

          PBReaderRecallMark();
          [a1 setTargetTask:v14];
LABEL_46:

          goto LABEL_47;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_47:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void __INImageProxyInjectionQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.intents.INImageProxyInjectionUtilities.injection-queue", v2);
  v1 = INImageProxyInjectionQueue_injectionQueue;
  INImageProxyInjectionQueue_injectionQueue = v0;
}

void __INImageProxyInjectionUtilitiesInjectProxiesIntoObjectWithContinuationHandler_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 48)];
  v4 = [v2 stringWithFormat:@"Timing out after %@ seconds during proxy injection to %@", v3, *(a1 + 32)];

  v5 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v15 = "INImageProxyInjectionUtilitiesInjectProxiesIntoObjectWithContinuationHandler_block_invoke";
    v16 = 2112;
    v17 = v4;
    _os_log_error_impl(&dword_18E991000, v5, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = MEMORY[0x1E696ABC0];
  v12 = *MEMORY[0x1E696A278];
  v13 = v4;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v10 = [v8 errorWithDomain:@"IntentsErrorDomain" code:6007 userInfo:v9];
  (*(v6 + 16))(v6, v7, v10);

  os_activity_scope_leave((a1 + 56));
  v11 = *MEMORY[0x1E69E9840];
}

id INTrimToKeyImage(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = dispatch_semaphore_create(0);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v3 = [v1 _keyImage];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __INTrimToKeyImage_block_invoke;
  v14[3] = &unk_1E727D910;
  v4 = v3;
  v15 = v4;
  v16 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __INTrimToKeyImage_block_invoke_2;
  v11[3] = &unk_1E727D938;
  v13 = &v17;
  v5 = v2;
  v12 = v5;
  [v1 _injectProxiesForImages:v14 completion:v11];
  v6 = dispatch_time(0, 1000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    v7 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v24 = "INTrimToKeyImage";
      v25 = 2112;
      v26 = &unk_1F02D8458;
      v27 = 2112;
      v28 = v1;
      _os_log_error_impl(&dword_18E991000, v7, OS_LOG_TYPE_ERROR, "%s Timing out after %@ seconds during trimming to key image of %@", buf, 0x20u);
    }
  }

  v8 = v18[5];

  _Block_object_dispose(&v17, 8);
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void sub_18E9DFB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __INTrimToKeyImage_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (([v7 isEqual:*(a1 + 32)] & 1) != 0 || objc_msgSend(v7, "isEqual:", *(a1 + 40)))
  {
    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  (v5)[2](v5, v6);
}

void __INTrimToKeyImage_block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

id INExtractKeyImage(void *a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = dispatch_semaphore_create(0);
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = 0;
  v5 = [v3 _keyImage];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __INExtractKeyImage_block_invoke;
  v16[3] = &unk_1E727D960;
  v6 = v5;
  v17 = v6;
  v18 = 0;
  v19 = &v20;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __INExtractKeyImage_block_invoke_2;
  v13[3] = &unk_1E727D938;
  v15 = &v26;
  v7 = v4;
  v14 = v7;
  [v3 _injectProxiesForImages:v16 completion:v13];
  v8 = dispatch_time(0, 1000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    v9 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v33 = "INExtractKeyImage";
      v34 = 2112;
      v35 = &unk_1F02D8458;
      v36 = 2112;
      v37 = v3;
      _os_log_error_impl(&dword_18E991000, v9, OS_LOG_TYPE_ERROR, "%s Timing out after %@ seconds during key image extraction from %@", buf, 0x20u);
    }
  }

  *a2 = v21[5];
  v10 = v27[5];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void sub_18E9DFF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void __INExtractKeyImage_block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([v5 isEqual:a1[4]] & 1) == 0 && !objc_msgSend(v5, "isEqual:", a1[5]))
  {
    v6[2](v6, v5);
    goto LABEL_15;
  }

  if (!*(*(a1[6] + 8) + 40))
  {
    v7 = objc_alloc_init(INKeyImageExtraction);
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  if ([v5 isEqual:a1[4]])
  {
    v10 = 0;
LABEL_9:
    [*(*(a1[6] + 8) + 40) _setImageTypeToStore:v10];
    goto LABEL_10;
  }

  if ([v5 isEqual:a1[5]])
  {
    v10 = 1;
    goto LABEL_9;
  }

LABEL_10:
  v11 = *(*(a1[6] + 8) + 40);
  v15 = 0;
  v12 = [INRemoteImageProxy proxyImageSynchronously:v5 usingService:v11 error:&v15];
  v13 = v12;
  if (v15)
  {
    v14 = v5;
  }

  else
  {
    v14 = v12;
  }

  v6[2](v6, v14);

LABEL_15:
}

void __INExtractKeyImage_block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

id INInsertKeyImageExtraction(void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v5 = dispatch_semaphore_create(0);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __INInsertKeyImageExtraction_block_invoke;
  v16[3] = &unk_1E727D988;
  v6 = v4;
  v17 = v6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __INInsertKeyImageExtraction_block_invoke_2;
  v13[3] = &unk_1E727D938;
  v15 = &v18;
  v7 = v5;
  v14 = v7;
  [v3 _injectProxiesForImages:v16 completion:v13];
  v8 = dispatch_time(0, 1000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    v9 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v25 = "INInsertKeyImageExtraction";
      v26 = 2112;
      v27 = &unk_1F02D8458;
      v28 = 2112;
      v29 = v6;
      v30 = 2112;
      v31 = v3;
      _os_log_error_impl(&dword_18E991000, v9, OS_LOG_TYPE_ERROR, "%s Timing out after %@ seconds during insertion of key image extraction %@ to %@", buf, 0x2Au);
    }
  }

  v10 = v19[5];

  _Block_object_dispose(&v18, 8);
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void sub_18E9E034C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __INInsertKeyImageExtraction_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v11 _storageServiceIdentifier], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "serviceIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqualToString:", v7), v7, v6, v8))
  {
    v9 = [v11 retrieveProxiedImageSynchronouslyUsingService:*(a1 + 32) error:0];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v11;
    }

    (v5)[2](v5, v10);
  }

  else
  {
    (v5)[2](v5, v11);
  }
}

void __INInsertKeyImageExtraction_block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t _INPBConfigureHomeIntentReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(_INPBHomeEntity);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBHomeEntityReadFrom(v13, a2))
        {
          goto LABEL_31;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addEntities:v13];
        }

LABEL_26:

        goto LABEL_28;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_INPBIntentMetadata);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v13, a2))
    {
LABEL_31:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setIntentMetadata:v13];
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

INPaymentAccount *INIntentSlotValueTransformFromFinancialAccountValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 valueMetadata];
    INPrivacyEntitlementValidateValueMetadata(v3);

    v18 = [INPaymentAccount alloc];
    v19 = [v2 accountNickname];
    v4 = INIntentSlotValueTransformFromDataString(v19);
    v17 = v4;
    v5 = [v2 accountNumber];
    v6 = [v2 hasAccountType];
    v7 = [v2 accountType];
    if (((v7 - 1 < 7) & v6) != 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = [v2 organizationName];
    v10 = INIntentSlotValueTransformFromDataString(v9);
    v11 = [v2 balance];
    v12 = INIntentSlotValueTransformFromBalanceAmountValue(v11);
    v13 = [v2 secondaryBalance];
    v14 = INIntentSlotValueTransformFromBalanceAmountValue(v13);
    v15 = [(INPaymentAccount *)v18 initWithNickname:v4 number:v5 accountType:v8 organizationName:v10 balance:v12 secondaryBalance:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

_INPBFinancialAccountValue *INIntentSlotValueTransformToFinancialAccountValue(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBFinancialAccountValue);
    v3 = [v1 nickname];
    v4 = INIntentSlotValueTransformToDataString(v3);
    [(_INPBFinancialAccountValue *)v2 setAccountNickname:v4];

    v5 = [v1 accountNumber];
    [(_INPBFinancialAccountValue *)v2 setAccountNumber:v5];

    v6 = [v1 accountType] - 1;
    if (v6 < 7)
    {
      v7 = (v6 + 1);
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    [(_INPBFinancialAccountValue *)v2 setAccountType:v7];
    v8 = [v1 organizationName];
    v9 = INIntentSlotValueTransformToDataString(v8);
    [(_INPBFinancialAccountValue *)v2 setOrganizationName:v9];

    v10 = [v1 balance];
    v11 = INIntentSlotValueTransformToBalanceAmountValue(v10);
    [(_INPBFinancialAccountValue *)v2 setBalance:v11];

    v12 = [v1 secondaryBalance];

    v13 = INIntentSlotValueTransformToBalanceAmountValue(v12);
    [(_INPBFinancialAccountValue *)v2 setSecondaryBalance:v13];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromFinancialAccountValues(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromFinancialAccountValue(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToFinancialAccountValues(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToFinancialAccountValue(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

_INPBFinancialAccountValue *INIntentSlotValueRedactedFinancialAccountValueFromFinancialAccountValue(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [v5 valueMetadata];
  v8 = INPrivacyEntitlementOptionsForValueMetadata(v7);

  if ((v8 & a2) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = objc_alloc_init(_INPBFinancialAccountValue);
    v10 = [v5 accountNickname];
    [(_INPBFinancialAccountValue *)v9 setAccountNickname:v10];

    v11 = [v5 accountNumber];
    [(_INPBFinancialAccountValue *)v9 setAccountNumber:v11];

    -[_INPBFinancialAccountValue setAccountType:](v9, "setAccountType:", [v5 accountType]);
    v12 = [v5 organizationName];
    [(_INPBFinancialAccountValue *)v9 setOrganizationName:v12];

    v13 = [v5 balance];
    v14 = INIntentSlotValueRedactedBalanceAmountValueFromBalanceAmountValue(v13, a2, v6);
    [(_INPBFinancialAccountValue *)v9 setBalance:v14];

    v15 = [v5 secondaryBalance];
    v16 = INIntentSlotValueRedactedBalanceAmountValueFromBalanceAmountValue(v15, a2, v6);
    [(_INPBFinancialAccountValue *)v9 setSecondaryBalance:v16];
  }

  return v9;
}

__CFString *INActivateCarSignalIntentResponseCodeGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E727D9A8[a1];
  }
}

uint64_t _INPBPaymentMethodListReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(_INPBCondition);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBConditionReadFrom(v13, a2))
        {
          goto LABEL_31;
        }

        PBReaderRecallMark();
        [a1 setCondition:v13];
LABEL_26:

        goto LABEL_28;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_INPBPaymentMethod);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBPaymentMethodReadFrom(v13, a2))
    {
LABEL_31:

      return 0;
    }

    PBReaderRecallMark();
    if (v13)
    {
      [a1 addPaymentMethods:v13];
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}