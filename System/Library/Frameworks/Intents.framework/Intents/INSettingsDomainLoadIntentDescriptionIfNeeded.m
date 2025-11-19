@interface INSettingsDomainLoadIntentDescriptionIfNeeded
@end

@implementation INSettingsDomainLoadIntentDescriptionIfNeeded

void ___INSettingsDomainLoadIntentDescriptionIfNeeded_block_invoke()
{
  v84[6] = *MEMORY[0x1E69E9840];
  v0 = [INIntentDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v72 = [[INIntentSlotDescription alloc] initWithName:@"settingMetadata" tag:2 facadePropertyName:@"settingMetadata" dataPropertyName:@"settingMetadata" isExtended:0 isPrivate:0 valueType:230 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DAD88 provideOptionsSelectorStrings:&unk_1F02DADA0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveSettingMetadataForGetSetting_withCompletion_, sel_resolveSettingMetadataForGetSetting_completion_, 0];
  v83[0] = v72;
  v71 = [[INIntentSlotDescription alloc] initWithName:@"confirmationValue" tag:3 facadePropertyName:@"confirmationValue" dataPropertyName:@"confirmationValue" isExtended:0 isPrivate:0 valueType:234 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DADB8 provideOptionsSelectorStrings:&unk_1F02DADD0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveConfirmationValueForGetSetting_withCompletion_, sel_resolveConfirmationValueForGetSetting_completion_, 0];
  v83[1] = v71;
  v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];
  v69 = _INIntentSchemaBuildIntentSlotDescriptionMap(v70);
  v68 = [(INIntentDescription *)v0 initWithName:@"GetSettingIntent" responseName:@"GetSettingIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.settings.GetSettingIntent" isPrivate:0 handleSelector:sel_handleGetSetting_completion_ confirmSelector:sel_confirmGetSetting_completion_ slotsByName:v69];
  v84[0] = v68;
  v3 = [INIntentDescription alloc];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v67 = [[INIntentSlotDescription alloc] initWithName:@"settingMetadata" tag:2 facadePropertyName:@"settingMetadata" dataPropertyName:@"settingMetadata" isExtended:0 isPrivate:0 valueType:230 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DADE8 provideOptionsSelectorStrings:&unk_1F02DAE00 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveSettingMetadataForOpenSetting_withCompletion_, sel_resolveSettingMetadataForOpenSetting_completion_, 0];
  v82[0] = v67;
  v66 = [[INIntentSlotDescription alloc] initWithName:@"searchQuery" tag:3 facadePropertyName:@"searchQuery" dataPropertyName:@"searchQuery" isExtended:0 isPrivate:0 valueType:12 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DAE18 provideOptionsSelectorStrings:&unk_1F02DAE30 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveSearchQueryForOpenSetting_withCompletion_, sel_resolveSearchQueryForOpenSetting_completion_, 0];
  v82[1] = v66;
  v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:2];
  v64 = _INIntentSchemaBuildIntentSlotDescriptionMap(v65);
  v63 = [(INIntentDescription *)v3 initWithName:@"OpenSettingIntent" responseName:@"OpenSettingIntentResponse" facadeClass:v4 dataClass:v5 type:@"sirikit.intent.settings.OpenSettingIntent" isPrivate:0 handleSelector:sel_handleOpenSetting_completion_ confirmSelector:sel_confirmOpenSetting_completion_ slotsByName:v64];
  v84[1] = v63;
  v6 = [INIntentDescription alloc];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v62 = [[INIntentSlotDescription alloc] initWithName:@"settingMetadata" tag:2 facadePropertyName:@"settingMetadata" dataPropertyName:@"settingMetadata" isExtended:0 isPrivate:0 valueType:230 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DAE48 provideOptionsSelectorStrings:&unk_1F02DAE60 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveSettingMetadataForSetBinarySetting_withCompletion_, sel_resolveSettingMetadataForSetBinarySetting_completion_, 0];
  v81[0] = v62;
  v61 = [[INIntentSlotDescription alloc] initWithName:@"binaryValue" tag:3 facadePropertyName:@"binaryValue" dataPropertyName:@"binaryValue" isExtended:0 isPrivate:0 valueType:234 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DAE78 provideOptionsSelectorStrings:&unk_1F02DAE90 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveBinaryValueForSetBinarySetting_withCompletion_, sel_resolveBinaryValueForSetBinarySetting_completion_, 0];
  v81[1] = v61;
  v60 = [[INIntentSlotDescription alloc] initWithName:@"temporalEventTrigger" tag:4 facadePropertyName:@"temporalEventTrigger" dataPropertyName:@"temporalEventTrigger" isExtended:0 isPrivate:0 valueType:137 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DAEA8 provideOptionsSelectorStrings:&unk_1F02DAEC0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTemporalEventTriggerForSetBinarySetting_withCompletion_, sel_resolveTemporalEventTriggerForSetBinarySetting_completion_, 0];
  v81[2] = v60;
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:3];
  v58 = _INIntentSchemaBuildIntentSlotDescriptionMap(v59);
  v57 = [(INIntentDescription *)v6 initWithName:@"SetBinarySettingIntent" responseName:@"SetBinarySettingIntentResponse" facadeClass:v7 dataClass:v8 type:@"sirikit.intent.settings.SetBinarySettingIntent" isPrivate:0 handleSelector:sel_handleSetBinarySetting_completion_ confirmSelector:sel_confirmSetBinarySetting_completion_ slotsByName:v58];
  v84[2] = v57;
  v9 = [INIntentDescription alloc];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v56 = [[INIntentSlotDescription alloc] initWithName:@"settingMetadata" tag:2 facadePropertyName:@"settingMetadata" dataPropertyName:@"settingMetadata" isExtended:0 isPrivate:0 valueType:230 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DAED8 provideOptionsSelectorStrings:&unk_1F02DAEF0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveSettingMetadataForSetLabeledSetting_withCompletion_, sel_resolveSettingMetadataForSetLabeledSetting_completion_, 0];
  v80[0] = v56;
  v55 = [[INIntentSlotDescription alloc] initWithName:@"labeledValue" tag:3 facadePropertyName:@"labeledValue" dataPropertyName:@"labeledValue" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DAF08 provideOptionsSelectorStrings:&unk_1F02DAF20 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveLabeledValueForSetLabeledSetting_withCompletion_, sel_resolveLabeledValueForSetLabeledSetting_completion_, 0];
  v80[1] = v55;
  v12 = @"temporalEventTrigger";
  v54 = [[INIntentSlotDescription alloc] initWithName:@"temporalEventTrigger" tag:4 facadePropertyName:@"temporalEventTrigger" dataPropertyName:@"temporalEventTrigger" isExtended:0 isPrivate:0 valueType:137 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DAF38 provideOptionsSelectorStrings:&unk_1F02DAF50 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTemporalEventTriggerForSetLabeledSetting_withCompletion_, sel_resolveTemporalEventTriggerForSetLabeledSetting_completion_, 0];
  v80[2] = v54;
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:3];
  v52 = _INIntentSchemaBuildIntentSlotDescriptionMap(v53);
  v51 = [(INIntentDescription *)v9 initWithName:@"SetLabeledSettingIntent" responseName:@"SetLabeledSettingIntentResponse" facadeClass:v10 dataClass:v11 type:@"sirikit.intent.settings.SetLabeledSettingIntent" isPrivate:0 handleSelector:sel_handleSetLabeledSetting_completion_ confirmSelector:sel_confirmSetLabeledSetting_completion_ slotsByName:v52];
  v84[3] = v51;
  v43 = [INIntentDescription alloc];
  v41 = objc_opt_class();
  v39 = objc_opt_class();
  v50 = [INIntentSlotDescription initWithName:"initWithName:tag:facadePropertyName:dataPropertyName:isExtended:isPrivate:valueType:valueStyle:defaultValueSelectorStrings:provideOptionsSelectorStrings:resolutionResultClass:resolveSelectors:" tag:230 facadePropertyName:1 dataPropertyName:&unk_1F02DAF68 isExtended:&unk_1F02DAF80 isPrivate:objc_opt_class() valueType:sel_resolveSettingMetadataForSetNumericSetting_withCompletion_ valueStyle:sel_resolveSettingMetadataForSetNumericSetting_completion_ defaultValueSelectorStrings:0 provideOptionsSelectorStrings:? resolutionResultClass:? resolveSelectors:?];
  v79[0] = v50;
  v49 = [[INIntentSlotDescription alloc] initWithName:@"numericValue" tag:3 facadePropertyName:@"numericValue" dataPropertyName:@"numericValue" isExtended:0 isPrivate:0 valueType:233 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DAF98 provideOptionsSelectorStrings:&unk_1F02DAFB0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveNumericValueForSetNumericSetting_withCompletion_, sel_resolveNumericValueForSetNumericSetting_completion_, 0];
  v79[1] = v49;
  v48 = [[INIntentSlotDescription alloc] initWithName:@"boundedValue" tag:4 facadePropertyName:@"boundedValue" dataPropertyName:@"boundedValue" isExtended:0 isPrivate:0 valueType:235 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DAFC8 provideOptionsSelectorStrings:&unk_1F02DAFE0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveBoundedValueForSetNumericSetting_withCompletion_, sel_resolveBoundedValueForSetNumericSetting_completion_, 0];
  v79[2] = v48;
  v47 = [[INIntentSlotDescription alloc] initWithName:@"action" tag:5 facadePropertyName:@"action" dataPropertyName:@"action" isExtended:0 isPrivate:0 valueType:236 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DAFF8 provideOptionsSelectorStrings:&unk_1F02DB010 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveActionForSetNumericSetting_withCompletion_, sel_resolveActionForSetNumericSetting_completion_, 0];
  v79[3] = v47;
  v46 = [[INIntentSlotDescription alloc] initWithName:v12 tag:6 facadePropertyName:v12 dataPropertyName:v12 isExtended:0 isPrivate:0 valueType:137 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB028 provideOptionsSelectorStrings:&unk_1F02DB040 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTemporalEventTriggerForSetNumericSetting_withCompletion_, sel_resolveTemporalEventTriggerForSetNumericSetting_completion_, 0];
  v79[4] = v46;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:5];
  v13 = _INIntentSchemaBuildIntentSlotDescriptionMap(v45);
  v14 = [(INIntentDescription *)v43 initWithName:@"SetNumericSettingIntent" responseName:@"SetNumericSettingIntentResponse" facadeClass:v41 dataClass:v39 type:@"sirikit.intent.settings.SetNumericSettingIntent" isPrivate:0 handleSelector:sel_handleSetNumericSetting_completion_ confirmSelector:sel_confirmSetNumericSetting_completion_ slotsByName:v13];
  v84[4] = v14;
  v44 = [INIntentDescription alloc];
  v42 = objc_opt_class();
  v40 = objc_opt_class();
  v15 = [[INIntentSlotDescription alloc] initWithName:@"settingMetadata" tag:2 facadePropertyName:@"settingMetadata" dataPropertyName:@"settingMetadata" isExtended:0 isPrivate:0 valueType:230 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB058 provideOptionsSelectorStrings:&unk_1F02DB070 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveSettingMetadataForSetTemporalSetting_withCompletion_, sel_resolveSettingMetadataForSetTemporalSetting_completion_, 0];
  v78[0] = v15;
  v16 = [[INIntentSlotDescription alloc] initWithName:@"timeValue" tag:3 facadePropertyName:@"timeValue" dataPropertyName:@"timeValue" isExtended:0 isPrivate:0 valueType:16 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB088 provideOptionsSelectorStrings:&unk_1F02DB0A0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTimeValueForSetTemporalSetting_withCompletion_, sel_resolveTimeValueForSetTemporalSetting_completion_, 0];
  v78[1] = v16;
  v17 = [[INIntentSlotDescription alloc] initWithName:v12 tag:4 facadePropertyName:v12 dataPropertyName:v12 isExtended:0 isPrivate:0 valueType:137 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB0B8 provideOptionsSelectorStrings:&unk_1F02DB0D0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTemporalEventTriggerForSetTemporalSetting_withCompletion_, sel_resolveTemporalEventTriggerForSetTemporalSetting_completion_, 0];
  v78[2] = v17;
  v18 = [[INIntentSlotDescription alloc] initWithName:@"action" tag:5 facadePropertyName:@"action" dataPropertyName:@"action" isExtended:0 isPrivate:0 valueType:236 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB0E8 provideOptionsSelectorStrings:&unk_1F02DB100 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveActionForSetTemporalSetting_withCompletion_, sel_resolveActionForSetTemporalSetting_completion_, 0];
  v78[3] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:4];
  v20 = _INIntentSchemaBuildIntentSlotDescriptionMap(v19);
  v21 = [(INIntentDescription *)v44 initWithName:@"SetTemporalSettingIntent" responseName:@"SetTemporalSettingIntentResponse" facadeClass:v42 dataClass:v40 type:@"sirikit.intent.settings.SetTemporalSettingIntent" isPrivate:0 handleSelector:sel_handleSetTemporalSetting_completion_ confirmSelector:sel_confirmSetTemporalSetting_completion_ slotsByName:v20];
  v84[5] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:6];

  v23 = [v22 count];
  v24 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v23];
  v25 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v23];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v26 = v22;
  v27 = [v26 countByEnumeratingWithState:&v73 objects:v77 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v74;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v74 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v73 + 1) + 8 * i);
        v32 = [v31 name];
        [v24 setObject:v31 forKey:v32];

        v33 = [v31 type];
        [v25 setObject:v31 forKey:v33];
      }

      v28 = [v26 countByEnumeratingWithState:&v73 objects:v77 count:16];
    }

    while (v28);
  }

  v34 = [v24 copy];
  v35 = sSettingsDomain_intentDescsByName;
  sSettingsDomain_intentDescsByName = v34;

  v36 = [v25 copy];
  v37 = sSettingsDomain_intentDescsByType;
  sSettingsDomain_intentDescsByType = v36;

  v38 = *MEMORY[0x1E69E9840];
}

@end