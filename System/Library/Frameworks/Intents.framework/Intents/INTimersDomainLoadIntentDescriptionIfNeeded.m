@interface INTimersDomainLoadIntentDescriptionIfNeeded
@end

@implementation INTimersDomainLoadIntentDescriptionIfNeeded

void ___INTimersDomainLoadIntentDescriptionIfNeeded_block_invoke()
{
  v89[7] = *MEMORY[0x1E69E9840];
  v0 = [INIntentDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v76 = [[INIntentSlotDescription alloc] initWithName:@"label" tag:3 facadePropertyName:@"label" dataPropertyName:@"label" isExtended:0 isPrivate:0 valueType:12 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB118 provideOptionsSelectorStrings:&unk_1F02DB130 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveLabelForCreateTimer_withCompletion_, sel_resolveLabelForCreateTimer_completion_, 0];
  v88[0] = v76;
  v75 = [[INIntentSlotDescription alloc] initWithName:@"duration" tag:2 facadePropertyName:@"duration" dataPropertyName:@"duration" isExtended:0 isPrivate:0 valueType:3 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB148 provideOptionsSelectorStrings:&unk_1F02DB160 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveDurationForCreateTimer_withCompletion_, sel_resolveDurationForCreateTimer_completion_, 0];
  v88[1] = v75;
  v74 = [[INIntentSlotDescription alloc] initWithName:@"type" tag:4 facadePropertyName:@"type" dataPropertyName:@"type" isExtended:0 isPrivate:0 valueType:191 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB178 provideOptionsSelectorStrings:&unk_1F02DB190 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTypeForCreateTimer_withCompletion_, sel_resolveTypeForCreateTimer_completion_, 0];
  v88[2] = v74;
  v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:3];
  v72 = _INIntentSchemaBuildIntentSlotDescriptionMap(v73);
  v71 = [(INIntentDescription *)v0 initWithName:@"CreateTimerIntent" responseName:@"CreateTimerIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.timer.CreateTimerIntent" isPrivate:0 handleSelector:sel_handleCreateTimer_completion_ confirmSelector:sel_confirmCreateTimer_completion_ slotsByName:v72];
  v89[0] = v71;
  v3 = [INIntentDescription alloc];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v70 = [[INIntentSlotDescription alloc] initWithName:@"targetTimer" tag:3 facadePropertyName:@"targetTimer" dataPropertyName:@"targetTimer" isExtended:0 isPrivate:0 valueType:189 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB1A8 provideOptionsSelectorStrings:&unk_1F02DB1C0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTargetTimerForDeleteTimer_withCompletion_, sel_resolveTargetTimerForDeleteTimer_completion_, 0];
  v87[0] = v70;
  v69 = [[INIntentSlotDescription alloc] initWithName:@"deleteMultiple" tag:2 facadePropertyName:@"deleteMultiple" dataPropertyName:@"deleteMultiple" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB1D8 provideOptionsSelectorStrings:&unk_1F02DB1F0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveDeleteMultipleForDeleteTimer_withCompletion_, sel_resolveDeleteMultipleForDeleteTimer_completion_, 0];
  v87[1] = v69;
  v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:2];
  v67 = _INIntentSchemaBuildIntentSlotDescriptionMap(v68);
  v66 = [(INIntentDescription *)v3 initWithName:@"DeleteTimerIntent" responseName:@"DeleteTimerIntentResponse" facadeClass:v4 dataClass:v5 type:@"sirikit.intent.timer.DeleteTimerIntent" isPrivate:0 handleSelector:sel_handleDeleteTimer_completion_ confirmSelector:sel_confirmDeleteTimer_completion_ slotsByName:v67];
  v89[1] = v66;
  v6 = [INIntentDescription alloc];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v65 = [[INIntentSlotDescription alloc] initWithName:@"targetTimer" tag:3 facadePropertyName:@"targetTimer" dataPropertyName:@"targetTimer" isExtended:0 isPrivate:0 valueType:189 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB208 provideOptionsSelectorStrings:&unk_1F02DB220 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTargetTimerForPauseTimer_withCompletion_, sel_resolveTargetTimerForPauseTimer_completion_, 0];
  v86[0] = v65;
  v64 = [[INIntentSlotDescription alloc] initWithName:@"pauseMultiple" tag:2 facadePropertyName:@"pauseMultiple" dataPropertyName:@"pauseMultiple" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB238 provideOptionsSelectorStrings:&unk_1F02DB250 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolvePauseMultipleForPauseTimer_withCompletion_, sel_resolvePauseMultipleForPauseTimer_completion_, 0];
  v86[1] = v64;
  v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:2];
  v62 = _INIntentSchemaBuildIntentSlotDescriptionMap(v63);
  v61 = [(INIntentDescription *)v6 initWithName:@"PauseTimerIntent" responseName:@"PauseTimerIntentResponse" facadeClass:v7 dataClass:v8 type:@"sirikit.intent.timer.PauseTimerIntent" isPrivate:0 handleSelector:sel_handlePauseTimer_completion_ confirmSelector:sel_confirmPauseTimer_completion_ slotsByName:v62];
  v89[2] = v61;
  v9 = [INIntentDescription alloc];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v60 = [[INIntentSlotDescription alloc] initWithName:@"targetTimer" tag:3 facadePropertyName:@"targetTimer" dataPropertyName:@"targetTimer" isExtended:0 isPrivate:0 valueType:189 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB268 provideOptionsSelectorStrings:&unk_1F02DB280 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTargetTimerForResetTimer_withCompletion_, sel_resolveTargetTimerForResetTimer_completion_, 0];
  v85[0] = v60;
  v59 = [[INIntentSlotDescription alloc] initWithName:@"resetMultiple" tag:2 facadePropertyName:@"resetMultiple" dataPropertyName:@"resetMultiple" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB298 provideOptionsSelectorStrings:&unk_1F02DB2B0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveResetMultipleForResetTimer_withCompletion_, sel_resolveResetMultipleForResetTimer_completion_, 0];
  v85[1] = v59;
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:2];
  v57 = _INIntentSchemaBuildIntentSlotDescriptionMap(v58);
  v56 = [(INIntentDescription *)v9 initWithName:@"ResetTimerIntent" responseName:@"ResetTimerIntentResponse" facadeClass:v10 dataClass:v11 type:@"sirikit.intent.timer.ResetTimerIntent" isPrivate:0 handleSelector:sel_handleResetTimer_completion_ confirmSelector:sel_confirmResetTimer_completion_ slotsByName:v57];
  v89[3] = v56;
  v12 = [INIntentDescription alloc];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v55 = [[INIntentSlotDescription alloc] initWithName:@"targetTimer" tag:3 facadePropertyName:@"targetTimer" dataPropertyName:@"targetTimer" isExtended:0 isPrivate:0 valueType:189 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB2C8 provideOptionsSelectorStrings:&unk_1F02DB2E0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTargetTimerForResumeTimer_withCompletion_, sel_resolveTargetTimerForResumeTimer_completion_, 0];
  v84[0] = v55;
  v54 = [[INIntentSlotDescription alloc] initWithName:@"resumeMultiple" tag:2 facadePropertyName:@"resumeMultiple" dataPropertyName:@"resumeMultiple" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB2F8 provideOptionsSelectorStrings:&unk_1F02DB310 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveResumeMultipleForResumeTimer_withCompletion_, sel_resolveResumeMultipleForResumeTimer_completion_, 0];
  v84[1] = v54;
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:2];
  v52 = _INIntentSchemaBuildIntentSlotDescriptionMap(v53);
  v51 = [(INIntentDescription *)v12 initWithName:@"ResumeTimerIntent" responseName:@"ResumeTimerIntentResponse" facadeClass:v13 dataClass:v14 type:@"sirikit.intent.timer.ResumeTimerIntent" isPrivate:0 handleSelector:sel_handleResumeTimer_completion_ confirmSelector:sel_confirmResumeTimer_completion_ slotsByName:v52];
  v89[4] = v51;
  v15 = [INIntentDescription alloc];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v50 = [[INIntentSlotDescription alloc] initWithName:@"label" tag:2 facadePropertyName:@"label" dataPropertyName:@"label" isExtended:0 isPrivate:0 valueType:12 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB328 provideOptionsSelectorStrings:&unk_1F02DB340 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveLabelForSearchForTimers_withCompletion_, sel_resolveLabelForSearchForTimers_completion_, 0];
  v83[0] = v50;
  v49 = [[INIntentSlotDescription alloc] initWithName:@"duration" tag:3 facadePropertyName:@"duration" dataPropertyName:@"duration" isExtended:0 isPrivate:0 valueType:3 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB358 provideOptionsSelectorStrings:&unk_1F02DB370 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveDurationForSearchForTimers_withCompletion_, sel_resolveDurationForSearchForTimers_completion_, 0];
  v83[1] = v49;
  v48 = [[INIntentSlotDescription alloc] initWithName:@"state" tag:4 facadePropertyName:@"state" dataPropertyName:@"state" isExtended:0 isPrivate:0 valueType:190 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB388 provideOptionsSelectorStrings:&unk_1F02DB3A0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveStateForSearchForTimers_withCompletion_, sel_resolveStateForSearchForTimers_completion_, 0];
  v83[2] = v48;
  v47 = [[INIntentSlotDescription alloc] initWithName:@"type" tag:5 facadePropertyName:@"type" dataPropertyName:@"type" isExtended:0 isPrivate:0 valueType:191 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB3B8 provideOptionsSelectorStrings:&unk_1F02DB3D0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTypeForSearchForTimers_withCompletion_, sel_resolveTypeForSearchForTimers_completion_, 0];
  v83[3] = v47;
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:4];
  v45 = _INIntentSchemaBuildIntentSlotDescriptionMap(v46);
  v18 = [(INIntentDescription *)v15 initWithName:@"SearchForTimersIntent" responseName:@"SearchForTimersIntentResponse" facadeClass:v16 dataClass:v17 type:@"sirikit.intent.timer.SearchForTimersIntent" isPrivate:0 handleSelector:sel_handleSearchForTimers_completion_ confirmSelector:sel_confirmSearchForTimers_completion_ slotsByName:v45];
  v89[5] = v18;
  v44 = [INIntentDescription alloc];
  v43 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = [[INIntentSlotDescription alloc] initWithName:@"targetTimer" tag:2 facadePropertyName:@"targetTimer" dataPropertyName:@"targetTimer" isExtended:0 isPrivate:0 valueType:189 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB3E8 provideOptionsSelectorStrings:&unk_1F02DB400 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTargetTimerForSetTimerAttribute_withCompletion_, sel_resolveTargetTimerForSetTimerAttribute_completion_, 0];
  v82[0] = v20;
  v21 = [[INIntentSlotDescription alloc] initWithName:@"toDuration" tag:3 facadePropertyName:@"toDuration" dataPropertyName:@"toDuration" isExtended:0 isPrivate:0 valueType:3 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB418 provideOptionsSelectorStrings:&unk_1F02DB430 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveToDurationForSetTimerAttribute_withCompletion_, sel_resolveToDurationForSetTimerAttribute_completion_, 0];
  v82[1] = v21;
  v22 = [[INIntentSlotDescription alloc] initWithName:@"toLabel" tag:4 facadePropertyName:@"toLabel" dataPropertyName:@"toLabel" isExtended:0 isPrivate:0 valueType:12 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB448 provideOptionsSelectorStrings:&unk_1F02DB460 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveToLabelForSetTimerAttribute_withCompletion_, sel_resolveToLabelForSetTimerAttribute_completion_, 0];
  v82[2] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:3];
  v24 = _INIntentSchemaBuildIntentSlotDescriptionMap(v23);
  v25 = [(INIntentDescription *)v44 initWithName:@"SetTimerAttributeIntent" responseName:@"SetTimerAttributeIntentResponse" facadeClass:v43 dataClass:v19 type:@"sirikit.intent.timer.SetTimerAttributeIntent" isPrivate:0 handleSelector:sel_handleSetTimerAttribute_completion_ confirmSelector:sel_confirmSetTimerAttribute_completion_ slotsByName:v24];
  v89[6] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:7];

  v27 = [v26 count];
  v28 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v27];
  v29 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v27];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v30 = v26;
  v31 = [v30 countByEnumeratingWithState:&v77 objects:v81 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v78;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v78 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v77 + 1) + 8 * i);
        v36 = [v35 name];
        [v28 setObject:v35 forKey:v36];

        v37 = [v35 type];
        [v29 setObject:v35 forKey:v37];
      }

      v32 = [v30 countByEnumeratingWithState:&v77 objects:v81 count:16];
    }

    while (v32);
  }

  v38 = [v28 copy];
  v39 = sTimersDomain_intentDescsByName;
  sTimersDomain_intentDescsByName = v38;

  v40 = [v29 copy];
  v41 = sTimersDomain_intentDescsByType;
  sTimersDomain_intentDescsByType = v40;

  v42 = *MEMORY[0x1E69E9840];
}

@end