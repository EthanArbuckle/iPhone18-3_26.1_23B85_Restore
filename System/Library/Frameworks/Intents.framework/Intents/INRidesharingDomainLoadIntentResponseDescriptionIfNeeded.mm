@interface INRidesharingDomainLoadIntentResponseDescriptionIfNeeded
@end

@implementation INRidesharingDomainLoadIntentResponseDescriptionIfNeeded

void ___INRidesharingDomainLoadIntentResponseDescriptionIfNeeded_block_invoke()
{
  v48[3] = *MEMORY[0x1E69E9840];
  v0 = [INIntentResponseDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v39 = [[INIntentSlotDescription alloc] initWithName:@"rideStatus" tag:1 facadePropertyName:@"rideStatus" dataPropertyName:@"rideStatus" isExtended:0 isPrivate:0 valueType:0 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v47 = v39;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
  v37 = _INIntentSchemaBuildIntentSlotDescriptionMap(v38);
  v36 = [(INIntentResponseDescription *)v0 initWithName:@"GetRideStatusIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.ride.GetRideStatusIntentResponse" isPrivate:0 slotsByName:v37];
  v48[0] = v36;
  v3 = [INIntentResponseDescription alloc];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v35 = [[INIntentSlotDescription alloc] initWithName:@"rideOptions" tag:1 facadePropertyName:@"rideOptions" dataPropertyName:@"rideOptions" isExtended:0 isPrivate:0 valueType:0 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v46[0] = v35;
  v34 = [[INIntentSlotDescription alloc] initWithName:@"paymentMethods" tag:2 facadePropertyName:@"paymentMethods" dataPropertyName:@"paymentMethods" isExtended:0 isPrivate:0 valueType:54 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v46[1] = v34;
  v33 = [[INIntentSlotDescription alloc] initWithName:@"expirationDate" tag:4 facadePropertyName:@"expirationDate" dataPropertyName:@"expirationDate" isExtended:0 isPrivate:0 valueType:34 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v46[2] = v33;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:3];
  v7 = _INIntentSchemaBuildIntentSlotDescriptionMap(v6);
  v8 = [(INIntentResponseDescription *)v3 initWithName:@"ListRideOptionsIntentResponse" facadeClass:v4 dataClass:v5 type:@"sirikit.intent.ride.ListRideOptionsIntentResponse" isPrivate:0 slotsByName:v7];
  v48[1] = v8;
  v9 = [INIntentResponseDescription alloc];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [[INIntentSlotDescription alloc] initWithName:@"rideStatus" tag:1 facadePropertyName:@"rideStatus" dataPropertyName:@"rideStatus" isExtended:0 isPrivate:0 valueType:0 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v45 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
  v14 = _INIntentSchemaBuildIntentSlotDescriptionMap(v13);
  v15 = [(INIntentResponseDescription *)v9 initWithName:@"RequestRideIntentResponse" facadeClass:v10 dataClass:v11 type:@"sirikit.intent.ride.RequestRideIntentResponse" isPrivate:0 slotsByName:v14];
  v48[2] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:3];

  v17 = [v16 count];
  v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v17];
  v19 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v17];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v20 = v16;
  v21 = [v20 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v41;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v41 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v40 + 1) + 8 * i);
        v26 = [v25 name];
        [v18 setObject:v25 forKey:v26];

        v27 = [v25 type];
        [v19 setObject:v25 forKey:v27];
      }

      v22 = [v20 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v22);
  }

  v28 = [v18 copy];
  v29 = sRidesharingDomain_intentResponseDescsByName;
  sRidesharingDomain_intentResponseDescsByName = v28;

  v30 = [v19 copy];
  v31 = sRidesharingDomain_intentResponseDescsByType;
  sRidesharingDomain_intentResponseDescsByType = v30;

  v32 = *MEMORY[0x1E69E9840];
}

@end