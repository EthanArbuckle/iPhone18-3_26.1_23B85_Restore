@interface INWorkoutsDomainLoadIntentDescriptionIfNeeded
@end

@implementation INWorkoutsDomainLoadIntentDescriptionIfNeeded

void ___INWorkoutsDomainLoadIntentDescriptionIfNeeded_block_invoke()
{
  v71[5] = *MEMORY[0x1E69E9840];
  v0 = [INIntentDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v60 = [[INIntentSlotDescription alloc] initWithName:@"workoutName" tag:2 facadePropertyName:@"workoutName" dataPropertyName:@"workoutName" isExtended:0 isPrivate:0 valueType:12 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB7A8 provideOptionsSelectorStrings:&unk_1F02DB7C0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveWorkoutNameForCancelWorkout_withCompletion_, sel_resolveWorkoutNameForCancelWorkout_completion_, 0];
  v70 = v60;
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
  v58 = _INIntentSchemaBuildIntentSlotDescriptionMap(v59);
  v57 = [(INIntentDescription *)v0 initWithName:@"CancelWorkoutIntent" responseName:@"CancelWorkoutIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.fitness.CancelWorkoutIntent" isPrivate:0 handleSelector:sel_handleCancelWorkout_completion_ confirmSelector:sel_confirmCancelWorkout_completion_ slotsByName:v58];
  v71[0] = v57;
  v3 = [INIntentDescription alloc];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v56 = [[INIntentSlotDescription alloc] initWithName:@"workoutName" tag:2 facadePropertyName:@"workoutName" dataPropertyName:@"workoutName" isExtended:0 isPrivate:0 valueType:12 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB7D8 provideOptionsSelectorStrings:&unk_1F02DB7F0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveWorkoutNameForEndWorkout_withCompletion_, sel_resolveWorkoutNameForEndWorkout_completion_, 0];
  v69 = v56;
  v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1];
  v54 = _INIntentSchemaBuildIntentSlotDescriptionMap(v55);
  v53 = [(INIntentDescription *)v3 initWithName:@"EndWorkoutIntent" responseName:@"EndWorkoutIntentResponse" facadeClass:v4 dataClass:v5 type:@"sirikit.intent.fitness.EndWorkoutIntent" isPrivate:0 handleSelector:sel_handleEndWorkout_completion_ confirmSelector:sel_confirmEndWorkout_completion_ slotsByName:v54];
  v71[1] = v53;
  v6 = [INIntentDescription alloc];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v52 = [[INIntentSlotDescription alloc] initWithName:@"workoutName" tag:2 facadePropertyName:@"workoutName" dataPropertyName:@"workoutName" isExtended:0 isPrivate:0 valueType:12 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB808 provideOptionsSelectorStrings:&unk_1F02DB820 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveWorkoutNameForPauseWorkout_withCompletion_, sel_resolveWorkoutNameForPauseWorkout_completion_, 0];
  v68 = v52;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
  v50 = _INIntentSchemaBuildIntentSlotDescriptionMap(v51);
  v49 = [(INIntentDescription *)v6 initWithName:@"PauseWorkoutIntent" responseName:@"PauseWorkoutIntentResponse" facadeClass:v7 dataClass:v8 type:@"sirikit.intent.fitness.PauseWorkoutIntent" isPrivate:0 handleSelector:sel_handlePauseWorkout_completion_ confirmSelector:sel_confirmPauseWorkout_completion_ slotsByName:v50];
  v71[2] = v49;
  v9 = [INIntentDescription alloc];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v48 = [[INIntentSlotDescription alloc] initWithName:@"workoutName" tag:2 facadePropertyName:@"workoutName" dataPropertyName:@"workoutName" isExtended:0 isPrivate:0 valueType:12 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB838 provideOptionsSelectorStrings:&unk_1F02DB850 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveWorkoutNameForResumeWorkout_withCompletion_, sel_resolveWorkoutNameForResumeWorkout_completion_, 0];
  v67 = v48;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
  v46 = _INIntentSchemaBuildIntentSlotDescriptionMap(v47);
  v45 = [(INIntentDescription *)v9 initWithName:@"ResumeWorkoutIntent" responseName:@"ResumeWorkoutIntentResponse" facadeClass:v10 dataClass:v11 type:@"sirikit.intent.fitness.ResumeWorkoutIntent" isPrivate:0 handleSelector:sel_handleResumeWorkout_completion_ confirmSelector:sel_confirmResumeWorkout_completion_ slotsByName:v46];
  v71[3] = v45;
  v42 = [INIntentDescription alloc];
  v43 = objc_opt_class();
  v41 = objc_opt_class();
  v44 = [[INIntentSlotDescription alloc] initWithName:@"workoutName" tag:2 facadePropertyName:@"workoutName" dataPropertyName:@"workoutName" isExtended:0 isPrivate:0 valueType:12 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB868 provideOptionsSelectorStrings:&unk_1F02DB880 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveWorkoutNameForStartWorkout_withCompletion_, sel_resolveWorkoutNameForStartWorkout_completion_, 0];
  v66[0] = v44;
  v40 = [[INIntentSlotDescription alloc] initWithName:@"goalValue" tag:3 facadePropertyName:@"goalValue" dataPropertyName:@"goalValue" isExtended:0 isPrivate:0 valueType:21 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB898 provideOptionsSelectorStrings:&unk_1F02DB8B0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveGoalValueForStartWorkout_withCompletion_, sel_resolveGoalValueForStartWorkout_completion_, 0];
  v66[1] = v40;
  v39 = [[INIntentSlotDescription alloc] initWithName:@"workoutGoalUnitType" tag:4 facadePropertyName:@"workoutGoalUnitType" dataPropertyName:@"workoutGoalUnitType" isExtended:0 isPrivate:0 valueType:115 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB8C8 provideOptionsSelectorStrings:&unk_1F02DB8E0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveWorkoutGoalUnitTypeForStartWorkout_withCompletion_, sel_resolveWorkoutGoalUnitTypeForStartWorkout_completion_, 0];
  v66[2] = v39;
  v38 = [[INIntentSlotDescription alloc] initWithName:@"workoutLocationType" tag:5 facadePropertyName:@"workoutLocationType" dataPropertyName:@"workoutLocationType" isExtended:0 isPrivate:0 valueType:116 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB8F8 provideOptionsSelectorStrings:&unk_1F02DB910 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveWorkoutLocationTypeForStartWorkout_withCompletion_, sel_resolveWorkoutLocationTypeForStartWorkout_completion_, 0];
  v66[3] = v38;
  v12 = [[INIntentSlotDescription alloc] initWithName:@"isOpenEnded" tag:6 facadePropertyName:@"isOpenEnded" dataPropertyName:@"isOpenEnded" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB928 provideOptionsSelectorStrings:&unk_1F02DB940 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveIsOpenEndedForStartWorkout_withCompletion_, sel_resolveIsOpenEndedForStartWorkout_completion_, 0];
  v66[4] = v12;
  v13 = [[INIntentSlotDescription alloc] initWithName:@"associatedItems" tag:7 facadePropertyName:@"associatedItems" dataPropertyName:@"associatedItems" isExtended:0 isPrivate:1 valueType:117 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v66[5] = v13;
  v14 = [[INIntentSlotDescription alloc] initWithName:@"isBuiltInWorkoutType" tag:8 facadePropertyName:@"isBuiltInWorkoutType" dataPropertyName:@"isBuiltInWorkoutType" isExtended:0 isPrivate:1 valueType:1 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v66[6] = v14;
  v15 = [[INIntentSlotDescription alloc] initWithName:@"isVoiceOnly" tag:9 facadePropertyName:@"isVoiceOnly" dataPropertyName:@"isVoiceOnly" isExtended:0 isPrivate:1 valueType:1 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v66[7] = v15;
  v16 = [[INIntentSlotDescription alloc] initWithName:@"sequenceLabel" tag:10 facadePropertyName:@"sequenceLabel" dataPropertyName:@"sequenceLabel" isExtended:0 isPrivate:1 valueType:118 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v66[8] = v16;
  v17 = [[INIntentSlotDescription alloc] initWithName:@"customization" tag:11 facadePropertyName:@"customization" dataPropertyName:@"customization" isExtended:0 isPrivate:1 valueType:119 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v66[9] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:10];
  v19 = _INIntentSchemaBuildIntentSlotDescriptionMap(v18);
  v20 = [(INIntentDescription *)v42 initWithName:@"StartWorkoutIntent" responseName:@"StartWorkoutIntentResponse" facadeClass:v43 dataClass:v41 type:@"sirikit.intent.fitness.StartWorkoutIntent" isPrivate:0 handleSelector:sel_handleStartWorkout_completion_ confirmSelector:sel_confirmStartWorkout_completion_ slotsByName:v19];
  v71[4] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:5];

  v22 = [v21 count];
  v23 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v22];
  v24 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v22];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v25 = v21;
  v26 = [v25 countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v62;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v62 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v61 + 1) + 8 * i);
        v31 = [v30 name];
        [v23 setObject:v30 forKey:v31];

        v32 = [v30 type];
        [v24 setObject:v30 forKey:v32];
      }

      v27 = [v25 countByEnumeratingWithState:&v61 objects:v65 count:16];
    }

    while (v27);
  }

  v33 = [v23 copy];
  v34 = sWorkoutsDomain_intentDescsByName;
  sWorkoutsDomain_intentDescsByName = v33;

  v35 = [v24 copy];
  v36 = sWorkoutsDomain_intentDescsByType;
  sWorkoutsDomain_intentDescsByType = v35;

  v37 = *MEMORY[0x1E69E9840];
}

@end