@interface INWorkoutsDomainLoadIntentResponseDescriptionIfNeeded
@end

@implementation INWorkoutsDomainLoadIntentResponseDescriptionIfNeeded

void ___INWorkoutsDomainLoadIntentResponseDescriptionIfNeeded_block_invoke()
{
  v48[5] = *MEMORY[0x1E69E9840];
  v0 = [INIntentResponseDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = MEMORY[0x1E695E0F0];
  v42 = _INIntentSchemaBuildIntentSlotDescriptionMap(MEMORY[0x1E695E0F0]);
  v41 = [(INIntentResponseDescription *)v0 initWithName:@"CancelWorkoutIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.fitness.CancelWorkoutIntentResponse" isPrivate:0 slotsByName:v42];
  v48[0] = v41;
  v4 = [INIntentResponseDescription alloc];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v40 = _INIntentSchemaBuildIntentSlotDescriptionMap(v3);
  v7 = [(INIntentResponseDescription *)v4 initWithName:@"EndWorkoutIntentResponse" facadeClass:v5 dataClass:v6 type:@"sirikit.intent.fitness.EndWorkoutIntentResponse" isPrivate:0 slotsByName:v40];
  v48[1] = v7;
  v8 = [INIntentResponseDescription alloc];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = _INIntentSchemaBuildIntentSlotDescriptionMap(v3);
  v12 = [(INIntentResponseDescription *)v8 initWithName:@"PauseWorkoutIntentResponse" facadeClass:v9 dataClass:v10 type:@"sirikit.intent.fitness.PauseWorkoutIntentResponse" isPrivate:0 slotsByName:v11];
  v48[2] = v12;
  v13 = [INIntentResponseDescription alloc];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = _INIntentSchemaBuildIntentSlotDescriptionMap(v3);
  v17 = [(INIntentResponseDescription *)v13 initWithName:@"ResumeWorkoutIntentResponse" facadeClass:v14 dataClass:v15 type:@"sirikit.intent.fitness.ResumeWorkoutIntentResponse" isPrivate:0 slotsByName:v16];
  v48[3] = v17;
  v18 = [INIntentResponseDescription alloc];
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = _INIntentSchemaBuildIntentSlotDescriptionMap(v3);
  v22 = [(INIntentResponseDescription *)v18 initWithName:@"StartWorkoutIntentResponse" facadeClass:v19 dataClass:v20 type:@"sirikit.intent.fitness.StartWorkoutIntentResponse" isPrivate:0 slotsByName:v21];
  v48[4] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:5];

  v24 = [v23 count];
  v25 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v24];
  v26 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v24];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v27 = v23;
  v28 = [v27 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v44;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v44 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v43 + 1) + 8 * i);
        v33 = [v32 name];
        [v25 setObject:v32 forKey:v33];

        v34 = [v32 type];
        [v26 setObject:v32 forKey:v34];
      }

      v29 = [v27 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v29);
  }

  v35 = [v25 copy];
  v36 = sWorkoutsDomain_intentResponseDescsByName;
  sWorkoutsDomain_intentResponseDescsByName = v35;

  v37 = [v26 copy];
  v38 = sWorkoutsDomain_intentResponseDescsByType;
  sWorkoutsDomain_intentResponseDescsByType = v37;

  v39 = *MEMORY[0x1E69E9840];
}

@end