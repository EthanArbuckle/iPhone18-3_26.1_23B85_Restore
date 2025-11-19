@interface INRadioDomainLoadIntentDescriptionIfNeeded
@end

@implementation INRadioDomainLoadIntentDescriptionIfNeeded

void ___INRadioDomainLoadIntentDescriptionIfNeeded_block_invoke()
{
  v34[1] = *MEMORY[0x1E69E9840];
  v27 = [INIntentDescription alloc];
  v26 = objc_opt_class();
  v25 = objc_opt_class();
  v0 = [[INIntentSlotDescription alloc] initWithName:@"radioType" tag:2 facadePropertyName:@"radioType" dataPropertyName:@"radioType" isExtended:0 isPrivate:0 valueType:149 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DAAE8 provideOptionsSelectorStrings:&unk_1F02DAB00 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveRadioTypeForSetRadioStation_withCompletion_, sel_resolveRadioTypeForSetRadioStation_completion_, 0];
  v33[0] = v0;
  v1 = [[INIntentSlotDescription alloc] initWithName:@"frequency" tag:3 facadePropertyName:@"frequency" dataPropertyName:@"frequency" isExtended:0 isPrivate:0 valueType:21 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DAB18 provideOptionsSelectorStrings:&unk_1F02DAB30 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveFrequencyForSetRadioStation_withCompletion_, sel_resolveFrequencyForSetRadioStation_completion_, 0];
  v33[1] = v1;
  v2 = [[INIntentSlotDescription alloc] initWithName:@"stationName" tag:4 facadePropertyName:@"stationName" dataPropertyName:@"stationName" isExtended:0 isPrivate:0 valueType:30 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DAB48 provideOptionsSelectorStrings:&unk_1F02DAB60 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveStationNameForSetRadioStation_withCompletion_, sel_resolveStationNameForSetRadioStation_completion_, 0];
  v33[2] = v2;
  v3 = [[INIntentSlotDescription alloc] initWithName:@"channel" tag:5 facadePropertyName:@"channel" dataPropertyName:@"channel" isExtended:0 isPrivate:0 valueType:30 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DAB78 provideOptionsSelectorStrings:&unk_1F02DAB90 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveChannelForSetRadioStation_withCompletion_, sel_resolveChannelForSetRadioStation_completion_, 0];
  v33[3] = v3;
  v4 = [[INIntentSlotDescription alloc] initWithName:@"presetNumber" tag:6 facadePropertyName:@"presetNumber" dataPropertyName:@"presetNumber" isExtended:0 isPrivate:0 valueType:24 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DABA8 provideOptionsSelectorStrings:&unk_1F02DABC0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolvePresetNumberForSetRadioStation_withCompletion_, sel_resolvePresetNumberForSetRadioStation_completion_, 0];
  v33[4] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:5];
  v6 = _INIntentSchemaBuildIntentSlotDescriptionMap(v5);
  v7 = [(INIntentDescription *)v27 initWithName:@"SetRadioStationIntent" responseName:@"SetRadioStationIntentResponse" facadeClass:v26 dataClass:v25 type:@"sirikit.intent.media_player.SetRadioStationIntent" isPrivate:0 handleSelector:sel_handleSetRadioStation_completion_ confirmSelector:sel_confirmSetRadioStation_completion_ slotsByName:v6];
  v34[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];

  v9 = [v8 count];
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v9];
  v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v9];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        v18 = [v17 name];
        [v10 setObject:v17 forKey:v18];

        v19 = [v17 type];
        [v11 setObject:v17 forKey:v19];
      }

      v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v14);
  }

  v20 = [v10 copy];
  v21 = sRadioDomain_intentDescsByName;
  sRadioDomain_intentDescsByName = v20;

  v22 = [v11 copy];
  v23 = sRadioDomain_intentDescsByType;
  sRadioDomain_intentDescsByType = v22;

  v24 = *MEMORY[0x1E69E9840];
}

@end