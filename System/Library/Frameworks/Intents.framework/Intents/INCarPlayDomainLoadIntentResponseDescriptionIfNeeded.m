@interface INCarPlayDomainLoadIntentResponseDescriptionIfNeeded
@end

@implementation INCarPlayDomainLoadIntentResponseDescriptionIfNeeded

void ___INCarPlayDomainLoadIntentResponseDescriptionIfNeeded_block_invoke()
{
  v107[11] = *MEMORY[0x1E69E9840];
  v0 = [INIntentResponseDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v97 = [[INIntentSlotDescription alloc] initWithName:@"signals" tag:1 facadePropertyName:@"signals" dataPropertyName:@"signals" isExtended:0 isPrivate:0 valueType:143 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v106 = v97;
  v96 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v106 count:1];
  v95 = _INIntentSchemaBuildIntentSlotDescriptionMap(v96);
  v94 = [(INIntentResponseDescription *)v0 initWithName:@"ActivateCarSignalIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.car_commands.ActivateCarSignalIntentResponse" isPrivate:0 slotsByName:v95];
  v107[0] = v94;
  v3 = [INIntentResponseDescription alloc];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v93 = [[INIntentSlotDescription alloc] initWithName:@"locked" tag:1 facadePropertyName:@"locked" dataPropertyName:@"locked" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v105 = v93;
  v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v105 count:1];
  v91 = _INIntentSchemaBuildIntentSlotDescriptionMap(v92);
  v90 = [(INIntentResponseDescription *)v3 initWithName:@"GetCarLockStatusIntentResponse" facadeClass:v4 dataClass:v5 type:@"sirikit.intent.car_commands.GetCarLockStatusIntentResponse" isPrivate:0 slotsByName:v91];
  v107[1] = v90;
  v6 = [INIntentResponseDescription alloc];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v89 = [[INIntentSlotDescription alloc] initWithName:@"carIdentifier" tag:17 facadePropertyName:@"carIdentifier" dataPropertyName:@"carIdentifier" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v104[0] = v89;
  v88 = [[INIntentSlotDescription alloc] initWithName:@"fuelPercentRemaining" tag:1 facadePropertyName:@"fuelPercentRemaining" dataPropertyName:@"fuelPercentRemaining" isExtended:0 isPrivate:0 valueType:21 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v104[1] = v88;
  v87 = [[INIntentSlotDescription alloc] initWithName:@"chargePercentRemaining" tag:2 facadePropertyName:@"chargePercentRemaining" dataPropertyName:@"chargePercentRemaining" isExtended:0 isPrivate:0 valueType:21 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v104[2] = v87;
  v86 = [[INIntentSlotDescription alloc] initWithName:@"distanceRemaining" tag:3 facadePropertyName:@"distanceRemaining" dataPropertyName:@"distanceRemaining" isExtended:0 isPrivate:0 valueType:0 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v104[3] = v86;
  v85 = [[INIntentSlotDescription alloc] initWithName:@"charging" tag:4 facadePropertyName:@"charging" dataPropertyName:@"charging" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v104[4] = v85;
  v84 = [[INIntentSlotDescription alloc] initWithName:@"minutesToFull" tag:5 facadePropertyName:@"minutesToFull" dataPropertyName:@"minutesToFull" isExtended:0 isPrivate:0 valueType:24 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v104[5] = v84;
  v83 = [[INIntentSlotDescription alloc] initWithName:@"maximumDistance" tag:6 facadePropertyName:@"maximumDistance" dataPropertyName:@"maximumDistance" isExtended:0 isPrivate:0 valueType:0 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v104[6] = v83;
  v82 = [[INIntentSlotDescription alloc] initWithName:@"distanceRemainingElectric" tag:7 facadePropertyName:@"distanceRemainingElectric" dataPropertyName:@"distanceRemainingElectric" isExtended:0 isPrivate:0 valueType:0 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v104[7] = v82;
  v81 = [[INIntentSlotDescription alloc] initWithName:@"maximumDistanceElectric" tag:8 facadePropertyName:@"maximumDistanceElectric" dataPropertyName:@"maximumDistanceElectric" isExtended:0 isPrivate:0 valueType:0 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v104[8] = v81;
  v80 = [[INIntentSlotDescription alloc] initWithName:@"distanceRemainingFuel" tag:9 facadePropertyName:@"distanceRemainingFuel" dataPropertyName:@"distanceRemainingFuel" isExtended:0 isPrivate:0 valueType:0 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v104[9] = v80;
  v79 = [[INIntentSlotDescription alloc] initWithName:@"maximumDistanceFuel" tag:10 facadePropertyName:@"maximumDistanceFuel" dataPropertyName:@"maximumDistanceFuel" isExtended:0 isPrivate:0 valueType:0 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v104[10] = v79;
  v78 = [[INIntentSlotDescription alloc] initWithName:@"consumptionFormulaArguments" tag:15 facadePropertyName:@"consumptionFormulaArguments" dataPropertyName:@"consumptionFormulaArguments" isExtended:0 isPrivate:0 valueType:237 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v104[11] = v78;
  v77 = [[INIntentSlotDescription alloc] initWithName:@"chargingFormulaArguments" tag:16 facadePropertyName:@"chargingFormulaArguments" dataPropertyName:@"chargingFormulaArguments" isExtended:0 isPrivate:0 valueType:237 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v104[12] = v77;
  v76 = [[INIntentSlotDescription alloc] initWithName:@"dateOfLastStateUpdate" tag:18 facadePropertyName:@"dateOfLastStateUpdate" dataPropertyName:@"dateOfLastStateUpdate" isExtended:0 isPrivate:0 valueType:14 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v104[13] = v76;
  v75 = [[INIntentSlotDescription alloc] initWithName:@"activeConnector" tag:19 facadePropertyName:@"activeConnector" dataPropertyName:@"activeConnector" isExtended:0 isPrivate:0 valueType:148 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v104[14] = v75;
  v74 = [[INIntentSlotDescription alloc] initWithName:@"maximumBatteryCapacity" tag:20 facadePropertyName:@"maximumBatteryCapacity" dataPropertyName:@"maximumBatteryCapacity" isExtended:0 isPrivate:0 valueType:0 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v104[15] = v74;
  v73 = [[INIntentSlotDescription alloc] initWithName:@"currentBatteryCapacity" tag:21 facadePropertyName:@"currentBatteryCapacity" dataPropertyName:@"currentBatteryCapacity" isExtended:0 isPrivate:0 valueType:0 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v104[16] = v73;
  v72 = [[INIntentSlotDescription alloc] initWithName:@"minimumBatteryCapacity" tag:22 facadePropertyName:@"minimumBatteryCapacity" dataPropertyName:@"minimumBatteryCapacity" isExtended:0 isPrivate:0 valueType:0 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v104[17] = v72;
  v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:18];
  v70 = _INIntentSchemaBuildIntentSlotDescriptionMap(v71);
  v69 = [(INIntentResponseDescription *)v6 initWithName:@"GetCarPowerLevelStatusIntentResponse" facadeClass:v7 dataClass:v8 type:@"sirikit.intent.car_commands.GetCarPowerLevelStatusIntentResponse" isPrivate:0 slotsByName:v70];
  v107[2] = v69;
  v9 = [INIntentResponseDescription alloc];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v68 = [[INIntentSlotDescription alloc] initWithName:@"cars" tag:1 facadePropertyName:@"cars" dataPropertyName:@"cars" isExtended:0 isPrivate:0 valueType:144 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v103 = v68;
  v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v103 count:1];
  v66 = _INIntentSchemaBuildIntentSlotDescriptionMap(v67);
  v65 = [(INIntentResponseDescription *)v9 initWithName:@"ListCarsIntentResponse" facadeClass:v10 dataClass:v11 type:@"sirikit.intent.car_commands.ListCarsIntentResponse" isPrivate:0 slotsByName:v66];
  v107[3] = v65;
  v12 = [INIntentResponseDescription alloc];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = MEMORY[0x1E695E0F0];
  v64 = _INIntentSchemaBuildIntentSlotDescriptionMap(MEMORY[0x1E695E0F0]);
  v63 = [(INIntentResponseDescription *)v12 initWithName:@"SaveProfileInCarIntentResponse" facadeClass:v13 dataClass:v14 type:@"sirikit.intent.car_commands.SaveProfileInCarIntentResponse" isPrivate:0 slotsByName:v64];
  v107[4] = v63;
  v16 = [INIntentResponseDescription alloc];
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v62 = _INIntentSchemaBuildIntentSlotDescriptionMap(v15);
  v61 = [(INIntentResponseDescription *)v16 initWithName:@"SetAudioSourceInCarIntentResponse" facadeClass:v17 dataClass:v18 type:@"sirikit.intent.car_commands.SetAudioSourceInCarIntentResponse" isPrivate:0 slotsByName:v62];
  v107[5] = v61;
  v19 = [INIntentResponseDescription alloc];
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v60 = _INIntentSchemaBuildIntentSlotDescriptionMap(v15);
  v59 = [(INIntentResponseDescription *)v19 initWithName:@"SetCarLockStatusIntentResponse" facadeClass:v20 dataClass:v21 type:@"sirikit.intent.car_commands.SetCarLockStatusIntentResponse" isPrivate:0 slotsByName:v60];
  v107[6] = v59;
  v22 = [INIntentResponseDescription alloc];
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = _INIntentSchemaBuildIntentSlotDescriptionMap(v15);
  v26 = [(INIntentResponseDescription *)v22 initWithName:@"SetClimateSettingsInCarIntentResponse" facadeClass:v23 dataClass:v24 type:@"sirikit.intent.car_commands.SetClimateSettingsInCarIntentResponse" isPrivate:0 slotsByName:v25];
  v107[7] = v26;
  v27 = [INIntentResponseDescription alloc];
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = _INIntentSchemaBuildIntentSlotDescriptionMap(v15);
  v31 = [(INIntentResponseDescription *)v27 initWithName:@"SetDefrosterSettingsInCarIntentResponse" facadeClass:v28 dataClass:v29 type:@"sirikit.intent.car_commands.SetDefrosterSettingsInCarIntentResponse" isPrivate:0 slotsByName:v30];
  v107[8] = v31;
  v32 = [INIntentResponseDescription alloc];
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = _INIntentSchemaBuildIntentSlotDescriptionMap(v15);
  v36 = [(INIntentResponseDescription *)v32 initWithName:@"SetProfileInCarIntentResponse" facadeClass:v33 dataClass:v34 type:@"sirikit.intent.car_commands.SetProfileInCarIntentResponse" isPrivate:0 slotsByName:v35];
  v107[9] = v36;
  v37 = [INIntentResponseDescription alloc];
  v38 = objc_opt_class();
  v39 = objc_opt_class();
  v40 = _INIntentSchemaBuildIntentSlotDescriptionMap(v15);
  v41 = [(INIntentResponseDescription *)v37 initWithName:@"SetSeatSettingsInCarIntentResponse" facadeClass:v38 dataClass:v39 type:@"sirikit.intent.car_commands.SetSeatSettingsInCarIntentResponse" isPrivate:0 slotsByName:v40];
  v107[10] = v41;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v107 count:11];

  v43 = [v42 count];
  v44 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v43];
  v45 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v43];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v46 = v42;
  v47 = [v46 countByEnumeratingWithState:&v98 objects:v102 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v99;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v99 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v51 = *(*(&v98 + 1) + 8 * i);
        v52 = [v51 name];
        [v44 setObject:v51 forKey:v52];

        v53 = [v51 type];
        [v45 setObject:v51 forKey:v53];
      }

      v48 = [v46 countByEnumeratingWithState:&v98 objects:v102 count:16];
    }

    while (v48);
  }

  v54 = [v44 copy];
  v55 = sCarPlayDomain_intentResponseDescsByName;
  sCarPlayDomain_intentResponseDescsByName = v54;

  v56 = [v45 copy];
  v57 = sCarPlayDomain_intentResponseDescsByType;
  sCarPlayDomain_intentResponseDescsByType = v56;

  v58 = *MEMORY[0x1E69E9840];
}

@end