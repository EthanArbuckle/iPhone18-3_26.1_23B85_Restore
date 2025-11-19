@interface INFindDeviceDomainLoadIntentDescriptionIfNeeded
@end

@implementation INFindDeviceDomainLoadIntentDescriptionIfNeeded

void ___INFindDeviceDomainLoadIntentDescriptionIfNeeded_block_invoke()
{
  v31[1] = *MEMORY[0x1E69E9840];
  v0 = [INIntentDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [[INIntentSlotDescription alloc] initWithName:@"device" tag:2 facadePropertyName:@"devices" dataPropertyName:@"devices" isExtended:0 isPrivate:0 valueType:44 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D94C8 provideOptionsSelectorStrings:&unk_1F02D94E0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveDevicesForFindDeviceAndPlaySound_withCompletion_, sel_resolveDevicesForFindDeviceAndPlaySound_completion_, 0];
  v30[0] = v3;
  v4 = [[INIntentSlotDescription alloc] initWithName:@"isStopRequest" tag:3 facadePropertyName:@"isStopRequest" dataPropertyName:@"isStopRequest" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v30[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v6 = _INIntentSchemaBuildIntentSlotDescriptionMap(v5);
  v7 = [(INIntentDescription *)v0 initWithName:@"FindDeviceAndPlaySoundIntent" responseName:@"FindDeviceAndPlaySoundIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.find_my.FindDeviceAndPlaySoundIntent" isPrivate:0 handleSelector:sel_handleFindDeviceAndPlaySound_completion_ confirmSelector:sel_confirmFindDeviceAndPlaySound_completion_ slotsByName:v6];
  v31[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];

  v9 = [v8 count];
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v9];
  v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v9];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        v18 = [v17 name];
        [v10 setObject:v17 forKey:v18];

        v19 = [v17 type];
        [v11 setObject:v17 forKey:v19];
      }

      v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }

  v20 = [v10 copy];
  v21 = sFindDeviceDomain_intentDescsByName;
  sFindDeviceDomain_intentDescsByName = v20;

  v22 = [v11 copy];
  v23 = sFindDeviceDomain_intentDescsByType;
  sFindDeviceDomain_intentDescsByType = v22;

  v24 = *MEMORY[0x1E69E9840];
}

@end