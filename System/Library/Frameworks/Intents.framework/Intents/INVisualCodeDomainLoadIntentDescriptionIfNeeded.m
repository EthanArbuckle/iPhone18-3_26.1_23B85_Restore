@interface INVisualCodeDomainLoadIntentDescriptionIfNeeded
@end

@implementation INVisualCodeDomainLoadIntentDescriptionIfNeeded

void ___INVisualCodeDomainLoadIntentDescriptionIfNeeded_block_invoke()
{
  v35[2] = *MEMORY[0x1E69E9840];
  v0 = [INIntentDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [[INIntentSlotDescription alloc] initWithName:@"visualCodeType" tag:2 facadePropertyName:@"visualCodeType" dataPropertyName:@"visualCodeType" isExtended:0 isPrivate:0 valueType:114 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DB478 provideOptionsSelectorStrings:&unk_1F02DB490 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveVisualCodeTypeForGetVisualCode_withCompletion_, sel_resolveVisualCodeTypeForGetVisualCode_completion_, 0];
  v34 = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v5 = _INIntentSchemaBuildIntentSlotDescriptionMap(v4);
  v6 = [(INIntentDescription *)v0 initWithName:@"GetVisualCodeIntent" responseName:@"GetVisualCodeIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.GetVisualCodeIntent" isPrivate:0 handleSelector:sel_handleGetVisualCode_completion_ confirmSelector:sel_confirmGetVisualCode_completion_ slotsByName:v5];
  v35[0] = v6;
  v7 = [INIntentDescription alloc];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = _INIntentSchemaBuildIntentSlotDescriptionMap(MEMORY[0x1E695E0F0]);
  v11 = [(INIntentDescription *)v7 initWithName:@"ScanVisualCodeIntent" responseName:@"ScanVisualCodeIntentResponse" facadeClass:v8 dataClass:v9 type:@"sirikit.intent.ScanVisualCodeIntent" isPrivate:0 handleSelector:sel_handleScanVisualCode_completion_ confirmSelector:sel_confirmScanVisualCode_completion_ slotsByName:v10];
  v35[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];

  v13 = [v12 count];
  v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v13];
  v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v13];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v16 = v12;
  v17 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v30;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v29 + 1) + 8 * i);
        v22 = [v21 name];
        [v14 setObject:v21 forKey:v22];

        v23 = [v21 type];
        [v15 setObject:v21 forKey:v23];
      }

      v18 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v18);
  }

  v24 = [v14 copy];
  v25 = sVisualCodeDomain_intentDescsByName;
  sVisualCodeDomain_intentDescsByName = v24;

  v26 = [v15 copy];
  v27 = sVisualCodeDomain_intentDescsByType;
  sVisualCodeDomain_intentDescsByType = v26;

  v28 = *MEMORY[0x1E69E9840];
}

@end