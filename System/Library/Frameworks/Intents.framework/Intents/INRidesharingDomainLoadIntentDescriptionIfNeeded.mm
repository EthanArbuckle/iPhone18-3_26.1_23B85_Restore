@interface INRidesharingDomainLoadIntentDescriptionIfNeeded
@end

@implementation INRidesharingDomainLoadIntentDescriptionIfNeeded

void ___INRidesharingDomainLoadIntentDescriptionIfNeeded_block_invoke()
{
  v49[3] = *MEMORY[0x1E69E9840];
  v0 = [INIntentDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v41 = _INIntentSchemaBuildIntentSlotDescriptionMap(MEMORY[0x1E695E0F0]);
  v40 = [(INIntentDescription *)v0 initWithName:@"GetRideStatusIntent" responseName:@"GetRideStatusIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.ride.GetRideStatusIntent" isPrivate:0 handleSelector:sel_handleGetRideStatus_completion_ confirmSelector:sel_confirmGetRideStatus_completion_ slotsByName:v41];
  v49[0] = v40;
  v34 = [INIntentDescription alloc];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v39 = [[INIntentSlotDescription alloc] initWithName:@"pickupLocation" tag:2 facadePropertyName:@"pickupLocation" dataPropertyName:@"pickupLocation" isExtended:0 isPrivate:0 valueType:27 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DAC38 provideOptionsSelectorStrings:&unk_1F02DAC50 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolvePickupLocationForListRideOptions_withCompletion_, sel_resolvePickupLocationForListRideOptions_completion_, 0];
  v48[0] = v39;
  v38 = [[INIntentSlotDescription alloc] initWithName:@"dropOffLocation" tag:3 facadePropertyName:@"dropOffLocation" dataPropertyName:@"dropOffLocation" isExtended:0 isPrivate:0 valueType:27 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DAC68 provideOptionsSelectorStrings:&unk_1F02DAC80 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveDropOffLocationForListRideOptions_withCompletion_, sel_resolveDropOffLocationForListRideOptions_completion_, 0];
  v48[1] = v38;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
  v36 = _INIntentSchemaBuildIntentSlotDescriptionMap(v37);
  v5 = [(INIntentDescription *)v34 initWithName:@"ListRideOptionsIntent" responseName:@"ListRideOptionsIntentResponse" facadeClass:v3 dataClass:v4 type:@"sirikit.intent.ride.ListRideOptionsIntent" isPrivate:0 handleSelector:sel_handleListRideOptions_completion_ confirmSelector:sel_confirmListRideOptions_completion_ slotsByName:v36];
  v49[1] = v5;
  v35 = [INIntentDescription alloc];
  v33 = objc_opt_class();
  v31 = objc_opt_class();
  v32 = [[INIntentSlotDescription alloc] initWithName:@"pickupLocation" tag:2 facadePropertyName:@"pickupLocation" dataPropertyName:@"pickupLocation" isExtended:0 isPrivate:0 valueType:27 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DAC98 provideOptionsSelectorStrings:&unk_1F02DACB0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolvePickupLocationForRequestRide_withCompletion_, sel_resolvePickupLocationForRequestRide_completion_, 0];
  v47[0] = v32;
  v6 = [[INIntentSlotDescription alloc] initWithName:@"dropOffLocation" tag:3 facadePropertyName:@"dropOffLocation" dataPropertyName:@"dropOffLocation" isExtended:0 isPrivate:0 valueType:27 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DACC8 provideOptionsSelectorStrings:&unk_1F02DACE0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveDropOffLocationForRequestRide_withCompletion_, sel_resolveDropOffLocationForRequestRide_completion_, 0];
  v47[1] = v6;
  v7 = [[INIntentSlotDescription alloc] initWithName:@"rideOptionName" tag:4 facadePropertyName:@"rideOptionName" dataPropertyName:@"rideOptionName" isExtended:0 isPrivate:0 valueType:12 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DACF8 provideOptionsSelectorStrings:&unk_1F02DAD10 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveRideOptionNameForRequestRide_withCompletion_, sel_resolveRideOptionNameForRequestRide_completion_, 0];
  v47[2] = v7;
  v8 = [[INIntentSlotDescription alloc] initWithName:@"partySize" tag:5 facadePropertyName:@"partySize" dataPropertyName:@"partySize" isExtended:0 isPrivate:0 valueType:24 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DAD28 provideOptionsSelectorStrings:&unk_1F02DAD40 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolvePartySizeForRequestRide_withCompletion_, sel_resolvePartySizeForRequestRide_completion_, 0];
  v47[3] = v8;
  v9 = [[INIntentSlotDescription alloc] initWithName:@"paymentMethod" tag:8 facadePropertyName:@"paymentMethod" dataPropertyName:@"paymentMethod" isExtended:0 isPrivate:0 valueType:54 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v47[4] = v9;
  v10 = [[INIntentSlotDescription alloc] initWithName:@"scheduledPickupTime" tag:10 facadePropertyName:@"scheduledPickupTime" dataPropertyName:@"scheduledPickupTime" isExtended:0 isPrivate:0 valueType:16 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DAD58 provideOptionsSelectorStrings:&unk_1F02DAD70 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveScheduledPickupTimeForRequestRide_withCompletion_, sel_resolveScheduledPickupTimeForRequestRide_completion_, 0];
  v47[5] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:6];
  v12 = _INIntentSchemaBuildIntentSlotDescriptionMap(v11);
  v13 = [(INIntentDescription *)v35 initWithName:@"RequestRideIntent" responseName:@"RequestRideIntentResponse" facadeClass:v33 dataClass:v31 type:@"sirikit.intent.ride.RequestRideIntent" isPrivate:0 handleSelector:sel_handleRequestRide_completion_ confirmSelector:sel_confirmRequestRide_completion_ slotsByName:v12];
  v49[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:3];

  v15 = [v14 count];
  v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v15];
  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v15];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v18 = v14;
  v19 = [v18 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v43;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v43 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v42 + 1) + 8 * i);
        v24 = [v23 name];
        [v16 setObject:v23 forKey:v24];

        v25 = [v23 type];
        [v17 setObject:v23 forKey:v25];
      }

      v20 = [v18 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v20);
  }

  v26 = [v16 copy];
  v27 = sRidesharingDomain_intentDescsByName;
  sRidesharingDomain_intentDescsByName = v26;

  v28 = [v17 copy];
  v29 = sRidesharingDomain_intentDescsByType;
  sRidesharingDomain_intentDescsByType = v28;

  v30 = *MEMORY[0x1E69E9840];
}

@end