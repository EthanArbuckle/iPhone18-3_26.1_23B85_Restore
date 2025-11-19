@interface INWellnessDomainLoadIntentDescriptionIfNeeded
@end

@implementation INWellnessDomainLoadIntentDescriptionIfNeeded

void ___INWellnessDomainLoadIntentDescriptionIfNeeded_block_invoke()
{
  v55[3] = *MEMORY[0x1E69E9840];
  v0 = [INIntentDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v46 = [[INIntentSlotDescription alloc] initWithName:@"sampleUuids" tag:2 facadePropertyName:@"sampleUuids" dataPropertyName:@"sampleUuids" isExtended:0 isPrivate:0 valueType:30 valueStyle:3 defaultValueSelectorStrings:&unk_1F02DB538 provideOptionsSelectorStrings:&unk_1F02DB550 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveSampleUuidsForDeleteHealthSample_withCompletion_, sel_resolveSampleUuidsForDeleteHealthSample_completion_, 0];
  v54 = v46;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
  v44 = _INIntentSchemaBuildIntentSlotDescriptionMap(v45);
  v43 = [(INIntentDescription *)v0 initWithName:@"DeleteHealthSampleIntent" responseName:@"DeleteHealthSampleIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.wellness.DeleteHealthSampleIntent" isPrivate:0 handleSelector:sel_handleDeleteHealthSample_completion_ confirmSelector:sel_confirmDeleteHealthSample_completion_ slotsByName:v44];
  v55[0] = v43;
  v33 = [INIntentDescription alloc];
  v31 = objc_opt_class();
  v3 = objc_opt_class();
  v42 = [[INIntentSlotDescription alloc] initWithName:@"objectType" tag:2 facadePropertyName:@"objectType" dataPropertyName:@"objectType" isExtended:0 isPrivate:0 valueType:172 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB568 provideOptionsSelectorStrings:&unk_1F02DB580 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveObjectTypeForQueryHealthSample_withCompletion_, sel_resolveObjectTypeForQueryHealthSample_completion_, 0];
  v53[0] = v42;
  v41 = [[INIntentSlotDescription alloc] initWithName:@"recordDate" tag:3 facadePropertyName:@"recordDates" dataPropertyName:@"recordDates" isExtended:0 isPrivate:0 valueType:16 valueStyle:3 defaultValueSelectorStrings:&unk_1F02DB598 provideOptionsSelectorStrings:&unk_1F02DB5B0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveRecordDatesForQueryHealthSample_withCompletion_, sel_resolveRecordDatesForQueryHealthSample_completion_, 0];
  v53[1] = v41;
  v40 = [[INIntentSlotDescription alloc] initWithName:@"unit" tag:4 facadePropertyName:@"unit" dataPropertyName:@"unit" isExtended:0 isPrivate:0 valueType:174 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB5C8 provideOptionsSelectorStrings:&unk_1F02DB5E0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveUnitForQueryHealthSample_withCompletion_, sel_resolveUnitForQueryHealthSample_completion_, 0];
  v53[2] = v40;
  v39 = [[INIntentSlotDescription alloc] initWithName:@"questionType" tag:5 facadePropertyName:@"questionType" dataPropertyName:@"questionType" isExtended:0 isPrivate:0 valueType:177 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB5F8 provideOptionsSelectorStrings:&unk_1F02DB610 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveQuestionTypeForQueryHealthSample_withCompletion_, sel_resolveQuestionTypeForQueryHealthSample_completion_, 0];
  v53[3] = v39;
  v38 = [[INIntentSlotDescription alloc] initWithName:@"thresholdValues" tag:6 facadePropertyName:@"thresholdValues" dataPropertyName:@"thresholdValues" isExtended:0 isPrivate:0 valueType:173 valueStyle:3 defaultValueSelectorStrings:&unk_1F02DB628 provideOptionsSelectorStrings:&unk_1F02DB640 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveThresholdValuesForQueryHealthSample_withCompletion_, sel_resolveThresholdValuesForQueryHealthSample_completion_, 0];
  v53[4] = v38;
  v37 = [[INIntentSlotDescription alloc] initWithName:@"expectedResultType" tag:7 facadePropertyName:@"expectedResultType" dataPropertyName:@"expectedResultType" isExtended:0 isPrivate:0 valueType:178 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB658 provideOptionsSelectorStrings:&unk_1F02DB670 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveExpectedResultTypeForQueryHealthSample_withCompletion_, sel_resolveExpectedResultTypeForQueryHealthSample_completion_, 0];
  v53[5] = v37;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:6];
  v35 = _INIntentSchemaBuildIntentSlotDescriptionMap(v36);
  v4 = [(INIntentDescription *)v33 initWithName:@"QueryHealthSampleIntent" responseName:@"QueryHealthSampleIntentResponse" facadeClass:v31 dataClass:v3 type:@"sirikit.intent.wellness.QueryHealthSampleIntent" isPrivate:0 handleSelector:sel_handleQueryHealthSample_completion_ confirmSelector:sel_confirmQueryHealthSample_completion_ slotsByName:v35];
  v55[1] = v4;
  v34 = [INIntentDescription alloc];
  v32 = objc_opt_class();
  v30 = objc_opt_class();
  v5 = [[INIntentSlotDescription alloc] initWithName:@"recordDate" tag:2 facadePropertyName:@"recordDate" dataPropertyName:@"recordDate" isExtended:0 isPrivate:0 valueType:16 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB688 provideOptionsSelectorStrings:&unk_1F02DB6A0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveRecordDateForSaveHealthSample_withCompletion_, sel_resolveRecordDateForSaveHealthSample_completion_, 0];
  v52[0] = v5;
  v6 = [[INIntentSlotDescription alloc] initWithName:@"objectType" tag:3 facadePropertyName:@"objectType" dataPropertyName:@"objectType" isExtended:0 isPrivate:0 valueType:172 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB6B8 provideOptionsSelectorStrings:&unk_1F02DB6D0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveObjectTypeForSaveHealthSample_withCompletion_, sel_resolveObjectTypeForSaveHealthSample_completion_, 0];
  v52[1] = v6;
  v7 = [[INIntentSlotDescription alloc] initWithName:@"values" tag:4 facadePropertyName:@"values" dataPropertyName:@"values" isExtended:0 isPrivate:0 valueType:173 valueStyle:3 defaultValueSelectorStrings:&unk_1F02DB6E8 provideOptionsSelectorStrings:&unk_1F02DB700 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveValuesForSaveHealthSample_withCompletion_, sel_resolveValuesForSaveHealthSample_completion_, 0];
  v52[2] = v7;
  v8 = [[INIntentSlotDescription alloc] initWithName:@"unit" tag:5 facadePropertyName:@"unit" dataPropertyName:@"unit" isExtended:0 isPrivate:0 valueType:174 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB718 provideOptionsSelectorStrings:&unk_1F02DB730 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveUnitForSaveHealthSample_withCompletion_, sel_resolveUnitForSaveHealthSample_completion_, 0];
  v52[3] = v8;
  v9 = [[INIntentSlotDescription alloc] initWithName:@"sampleMetadata" tag:6 facadePropertyName:@"sampleMetadatas" dataPropertyName:@"sampleMetadatas" isExtended:0 isPrivate:0 valueType:175 valueStyle:3 defaultValueSelectorStrings:&unk_1F02DB748 provideOptionsSelectorStrings:&unk_1F02DB760 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveSampleMetadatasForSaveHealthSample_withCompletion_, sel_resolveSampleMetadatasForSaveHealthSample_completion_, 0];
  v52[4] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:5];
  v11 = _INIntentSchemaBuildIntentSlotDescriptionMap(v10);
  v12 = [(INIntentDescription *)v34 initWithName:@"SaveHealthSampleIntent" responseName:@"SaveHealthSampleIntentResponse" facadeClass:v32 dataClass:v30 type:@"sirikit.intent.wellness.SaveHealthSampleIntent" isPrivate:0 handleSelector:sel_handleSaveHealthSample_completion_ confirmSelector:sel_confirmSaveHealthSample_completion_ slotsByName:v11];
  v55[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:3];

  v14 = [v13 count];
  v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v14];
  v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v14];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v17 = v13;
  v18 = [v17 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v48;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v48 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v47 + 1) + 8 * i);
        v23 = [v22 name];
        [v15 setObject:v22 forKey:v23];

        v24 = [v22 type];
        [v16 setObject:v22 forKey:v24];
      }

      v19 = [v17 countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v19);
  }

  v25 = [v15 copy];
  v26 = sWellnessDomain_intentDescsByName;
  sWellnessDomain_intentDescsByName = v25;

  v27 = [v16 copy];
  v28 = sWellnessDomain_intentDescsByType;
  sWellnessDomain_intentDescsByType = v27;

  v29 = *MEMORY[0x1E69E9840];
}

@end