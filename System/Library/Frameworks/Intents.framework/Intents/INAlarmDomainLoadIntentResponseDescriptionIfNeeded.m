@interface INAlarmDomainLoadIntentResponseDescriptionIfNeeded
@end

@implementation INAlarmDomainLoadIntentResponseDescriptionIfNeeded

void ___INAlarmDomainLoadIntentResponseDescriptionIfNeeded_block_invoke()
{
  v64[6] = *MEMORY[0x1E69E9840];
  v0 = [INIntentResponseDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v55 = [[INIntentSlotDescription alloc] initWithName:@"modifiedAlarms" tag:1 facadePropertyName:@"modifiedAlarms" dataPropertyName:@"modifiedAlarms" isExtended:0 isPrivate:0 valueType:179 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v63 = v55;
  v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
  v53 = _INIntentSchemaBuildIntentSlotDescriptionMap(v54);
  v52 = [(INIntentResponseDescription *)v0 initWithName:@"ChangeAlarmStatusIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.alarm.ChangeAlarmStatusIntentResponse" isPrivate:0 slotsByName:v53];
  v64[0] = v52;
  v3 = [INIntentResponseDescription alloc];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v51 = [[INIntentSlotDescription alloc] initWithName:@"createdAlarm" tag:1 facadePropertyName:@"createdAlarm" dataPropertyName:@"createdAlarm" isExtended:0 isPrivate:0 valueType:179 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v62[0] = v51;
  v50 = [[INIntentSlotDescription alloc] initWithName:@"successCode" tag:2 facadePropertyName:@"successCode" dataPropertyName:@"successCode" isExtended:0 isPrivate:0 valueType:185 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v62[1] = v50;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
  v48 = _INIntentSchemaBuildIntentSlotDescriptionMap(v49);
  v47 = [(INIntentResponseDescription *)v3 initWithName:@"CreateAlarmIntentResponse" facadeClass:v4 dataClass:v5 type:@"sirikit.intent.alarm.CreateAlarmIntentResponse" isPrivate:0 slotsByName:v48];
  v64[1] = v47;
  v6 = [INIntentResponseDescription alloc];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = MEMORY[0x1E695E0F0];
  v46 = _INIntentSchemaBuildIntentSlotDescriptionMap(MEMORY[0x1E695E0F0]);
  v45 = [(INIntentResponseDescription *)v6 initWithName:@"DeleteAlarmIntentResponse" facadeClass:v7 dataClass:v8 type:@"sirikit.intent.alarm.DeleteAlarmIntentResponse" isPrivate:0 slotsByName:v46];
  v64[2] = v45;
  v10 = [INIntentResponseDescription alloc];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v44 = _INIntentSchemaBuildIntentSlotDescriptionMap(v9);
  v43 = [(INIntentResponseDescription *)v10 initWithName:@"SearchAlarmIntentResponse" facadeClass:v11 dataClass:v12 type:@"sirikit.intent.alarm.SearchAlarmIntentResponse" isPrivate:0 slotsByName:v44];
  v64[3] = v43;
  v13 = [INIntentResponseDescription alloc];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = _INIntentSchemaBuildIntentSlotDescriptionMap(v9);
  v17 = [(INIntentResponseDescription *)v13 initWithName:@"SnoozeAlarmIntentResponse" facadeClass:v14 dataClass:v15 type:@"sirikit.intent.alarm.SnoozeAlarmIntentResponse" isPrivate:0 slotsByName:v16];
  v64[4] = v17;
  v18 = [INIntentResponseDescription alloc];
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = [[INIntentSlotDescription alloc] initWithName:@"updatedAlarm" tag:1 facadePropertyName:@"updatedAlarm" dataPropertyName:@"updatedAlarm" isExtended:0 isPrivate:0 valueType:179 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v61[0] = v21;
  v22 = [[INIntentSlotDescription alloc] initWithName:@"conflictAlarms" tag:2 facadePropertyName:@"conflictAlarms" dataPropertyName:@"conflictAlarms" isExtended:0 isPrivate:0 valueType:179 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v61[1] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
  v24 = _INIntentSchemaBuildIntentSlotDescriptionMap(v23);
  v25 = [(INIntentResponseDescription *)v18 initWithName:@"UpdateAlarmIntentResponse" facadeClass:v19 dataClass:v20 type:@"sirikit.intent.alarm.UpdateAlarmIntentResponse" isPrivate:0 slotsByName:v24];
  v64[5] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:6];

  v27 = [v26 count];
  v28 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v27];
  v29 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v27];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v30 = v26;
  v31 = [v30 countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v57;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v57 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v56 + 1) + 8 * i);
        v36 = [v35 name];
        [v28 setObject:v35 forKey:v36];

        v37 = [v35 type];
        [v29 setObject:v35 forKey:v37];
      }

      v32 = [v30 countByEnumeratingWithState:&v56 objects:v60 count:16];
    }

    while (v32);
  }

  v38 = [v28 copy];
  v39 = sAlarmDomain_intentResponseDescsByName;
  sAlarmDomain_intentResponseDescsByName = v38;

  v40 = [v29 copy];
  v41 = sAlarmDomain_intentResponseDescsByType;
  sAlarmDomain_intentResponseDescsByType = v40;

  v42 = *MEMORY[0x1E69E9840];
}

@end