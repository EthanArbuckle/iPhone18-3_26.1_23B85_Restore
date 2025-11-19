@interface INCarPlayDomainLoadIntentDescriptionIfNeeded
@end

@implementation INCarPlayDomainLoadIntentDescriptionIfNeeded

void ___INCarPlayDomainLoadIntentDescriptionIfNeeded_block_invoke()
{
  v133[11] = *MEMORY[0x1E69E9840];
  v0 = [INIntentDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v117 = [[INIntentSlotDescription alloc] initWithName:@"carName" tag:2 facadePropertyName:@"carName" dataPropertyName:@"carName" isExtended:0 isPrivate:0 valueType:12 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8D78 provideOptionsSelectorStrings:&unk_1F02D8D90 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveCarNameForActivateCarSignal_withCompletion_, sel_resolveCarNameForActivateCarSignal_completion_, 0];
  v132[0] = v117;
  v116 = [[INIntentSlotDescription alloc] initWithName:@"signals" tag:3 facadePropertyName:@"signals" dataPropertyName:@"signals" isExtended:0 isPrivate:0 valueType:143 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D8DA8 provideOptionsSelectorStrings:&unk_1F02D8DC0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveSignalsForActivateCarSignal_withCompletion_, sel_resolveSignalsForActivateCarSignal_completion_, 0];
  v132[1] = v116;
  v115 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:2];
  v114 = _INIntentSchemaBuildIntentSlotDescriptionMap(v115);
  v113 = [(INIntentDescription *)v0 initWithName:@"ActivateCarSignalIntent" responseName:@"ActivateCarSignalIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.car_commands.ActivateCarSignalIntent" isPrivate:0 handleSelector:sel_handleActivateCarSignal_completion_ confirmSelector:sel_confirmActivateCarSignal_completion_ slotsByName:v114];
  v133[0] = v113;
  v3 = [INIntentDescription alloc];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v112 = [[INIntentSlotDescription alloc] initWithName:@"carName" tag:2 facadePropertyName:@"carName" dataPropertyName:@"carName" isExtended:0 isPrivate:0 valueType:12 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8DD8 provideOptionsSelectorStrings:&unk_1F02D8DF0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveCarNameForGetCarLockStatus_withCompletion_, sel_resolveCarNameForGetCarLockStatus_completion_, 0];
  v131 = v112;
  v111 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v131 count:1];
  v110 = _INIntentSchemaBuildIntentSlotDescriptionMap(v111);
  v109 = [(INIntentDescription *)v3 initWithName:@"GetCarLockStatusIntent" responseName:@"GetCarLockStatusIntentResponse" facadeClass:v4 dataClass:v5 type:@"sirikit.intent.car_commands.GetCarLockStatusIntent" isPrivate:0 handleSelector:sel_handleGetCarLockStatus_completion_ confirmSelector:sel_confirmGetCarLockStatus_completion_ slotsByName:v110];
  v133[1] = v109;
  v6 = [INIntentDescription alloc];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v108 = [[INIntentSlotDescription alloc] initWithName:@"carName" tag:2 facadePropertyName:@"carName" dataPropertyName:@"carName" isExtended:0 isPrivate:0 valueType:12 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8E08 provideOptionsSelectorStrings:&unk_1F02D8E20 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveCarNameForGetCarPowerLevelStatus_withCompletion_, sel_resolveCarNameForGetCarPowerLevelStatus_completion_, 0];
  v130 = v108;
  v107 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v130 count:1];
  v106 = _INIntentSchemaBuildIntentSlotDescriptionMap(v107);
  v105 = [(INIntentDescription *)v6 initWithName:@"GetCarPowerLevelStatusIntent" responseName:@"GetCarPowerLevelStatusIntentResponse" facadeClass:v7 dataClass:v8 type:@"sirikit.intent.car_commands.GetCarPowerLevelStatusIntent" isPrivate:0 handleSelector:sel_handleGetCarPowerLevelStatus_completion_ confirmSelector:sel_confirmGetCarPowerLevelStatus_completion_ slotsByName:v106];
  v133[2] = v105;
  v9 = [INIntentDescription alloc];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v104 = _INIntentSchemaBuildIntentSlotDescriptionMap(MEMORY[0x1E695E0F0]);
  v103 = [(INIntentDescription *)v9 initWithName:@"ListCarsIntent" responseName:@"ListCarsIntentResponse" facadeClass:v10 dataClass:v11 type:@"sirikit.intent.car_commands.ListCarsIntent" isPrivate:0 handleSelector:sel_handleListCars_completion_ confirmSelector:sel_confirmListCars_completion_ slotsByName:v104];
  v133[3] = v103;
  v12 = [INIntentDescription alloc];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v102 = [[INIntentSlotDescription alloc] initWithName:@"profileNumber" tag:2 facadePropertyName:@"profileNumber" dataPropertyName:@"profileNumber" isExtended:0 isPrivate:0 valueType:24 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8E38 provideOptionsSelectorStrings:&unk_1F02D8E50 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveProfileNumberForSaveProfileInCar_withCompletion_, sel_resolveProfileNumberForSaveProfileInCar_completion_, 0];
  v129[0] = v102;
  v101 = [[INIntentSlotDescription alloc] initWithName:@"profileName" tag:3 facadePropertyName:@"profileName" dataPropertyName:@"profileName" isExtended:0 isPrivate:0 valueType:30 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8E68 provideOptionsSelectorStrings:&unk_1F02D8E80 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveProfileNameForSaveProfileInCar_withCompletion_, sel_resolveProfileNameForSaveProfileInCar_completion_, 0];
  v129[1] = v101;
  v100 = [MEMORY[0x1E695DEC8] arrayWithObjects:v129 count:2];
  v99 = _INIntentSchemaBuildIntentSlotDescriptionMap(v100);
  v98 = [(INIntentDescription *)v12 initWithName:@"SaveProfileInCarIntent" responseName:@"SaveProfileInCarIntentResponse" facadeClass:v13 dataClass:v14 type:@"sirikit.intent.car_commands.SaveProfileInCarIntent" isPrivate:0 handleSelector:sel_handleSaveProfileInCar_completion_ confirmSelector:sel_confirmSaveProfileInCar_completion_ slotsByName:v99];
  v133[4] = v98;
  v15 = [INIntentDescription alloc];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v97 = [[INIntentSlotDescription alloc] initWithName:@"audioSource" tag:2 facadePropertyName:@"audioSource" dataPropertyName:@"audioSource" isExtended:0 isPrivate:0 valueType:121 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8E98 provideOptionsSelectorStrings:&unk_1F02D8EB0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveAudioSourceForSetAudioSourceInCar_withCompletion_, sel_resolveAudioSourceForSetAudioSourceInCar_completion_, 0];
  v128[0] = v97;
  v96 = [[INIntentSlotDescription alloc] initWithName:@"relativeAudioSourceReference" tag:3 facadePropertyName:@"relativeAudioSourceReference" dataPropertyName:@"relativeAudioSourceReference" isExtended:0 isPrivate:0 valueType:124 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8EC8 provideOptionsSelectorStrings:&unk_1F02D8EE0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveRelativeAudioSourceReferenceForSetAudioSourceInCar_withCompletion_, sel_resolveRelativeAudioSourceReferenceForSetAudioSourceInCar_completion_, 0];
  v128[1] = v96;
  v95 = [MEMORY[0x1E695DEC8] arrayWithObjects:v128 count:2];
  v94 = _INIntentSchemaBuildIntentSlotDescriptionMap(v95);
  v93 = [(INIntentDescription *)v15 initWithName:@"SetAudioSourceInCarIntent" responseName:@"SetAudioSourceInCarIntentResponse" facadeClass:v16 dataClass:v17 type:@"sirikit.intent.car_commands.SetAudioSourceInCarIntent" isPrivate:0 handleSelector:sel_handleSetAudioSourceInCar_completion_ confirmSelector:sel_confirmSetAudioSourceInCar_completion_ slotsByName:v94];
  v133[5] = v93;
  v18 = [INIntentDescription alloc];
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v92 = [[INIntentSlotDescription alloc] initWithName:@"locked" tag:2 facadePropertyName:@"locked" dataPropertyName:@"locked" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8EF8 provideOptionsSelectorStrings:&unk_1F02D8F10 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveLockedForSetCarLockStatus_withCompletion_, sel_resolveLockedForSetCarLockStatus_completion_, 0];
  v127[0] = v92;
  v91 = [[INIntentSlotDescription alloc] initWithName:@"carName" tag:3 facadePropertyName:@"carName" dataPropertyName:@"carName" isExtended:0 isPrivate:0 valueType:12 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8F28 provideOptionsSelectorStrings:&unk_1F02D8F40 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveCarNameForSetCarLockStatus_withCompletion_, sel_resolveCarNameForSetCarLockStatus_completion_, 0];
  v127[1] = v91;
  v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:v127 count:2];
  v89 = _INIntentSchemaBuildIntentSlotDescriptionMap(v90);
  v88 = [(INIntentDescription *)v18 initWithName:@"SetCarLockStatusIntent" responseName:@"SetCarLockStatusIntentResponse" facadeClass:v19 dataClass:v20 type:@"sirikit.intent.car_commands.SetCarLockStatusIntent" isPrivate:0 handleSelector:sel_handleSetCarLockStatus_completion_ confirmSelector:sel_confirmSetCarLockStatus_completion_ slotsByName:v89];
  v133[6] = v88;
  v21 = [INIntentDescription alloc];
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v87 = [[INIntentSlotDescription alloc] initWithName:@"enableFan" tag:2 facadePropertyName:@"enableFan" dataPropertyName:@"enableFan" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8F58 provideOptionsSelectorStrings:&unk_1F02D8F70 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveEnableFanForSetClimateSettingsInCar_withCompletion_, sel_resolveEnableFanForSetClimateSettingsInCar_completion_, 0];
  v126[0] = v87;
  v86 = [[INIntentSlotDescription alloc] initWithName:@"enableAirConditioner" tag:3 facadePropertyName:@"enableAirConditioner" dataPropertyName:@"enableAirConditioner" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8F88 provideOptionsSelectorStrings:&unk_1F02D8FA0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveEnableAirConditionerForSetClimateSettingsInCar_withCompletion_, sel_resolveEnableAirConditionerForSetClimateSettingsInCar_completion_, 0];
  v126[1] = v86;
  v85 = [[INIntentSlotDescription alloc] initWithName:@"enableClimateControl" tag:4 facadePropertyName:@"enableClimateControl" dataPropertyName:@"enableClimateControl" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8FB8 provideOptionsSelectorStrings:&unk_1F02D8FD0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveEnableClimateControlForSetClimateSettingsInCar_withCompletion_, sel_resolveEnableClimateControlForSetClimateSettingsInCar_completion_, 0];
  v126[2] = v85;
  v84 = [[INIntentSlotDescription alloc] initWithName:@"enableAutoMode" tag:5 facadePropertyName:@"enableAutoMode" dataPropertyName:@"enableAutoMode" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D8FE8 provideOptionsSelectorStrings:&unk_1F02D9000 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveEnableAutoModeForSetClimateSettingsInCar_withCompletion_, sel_resolveEnableAutoModeForSetClimateSettingsInCar_completion_, 0];
  v126[3] = v84;
  v83 = [[INIntentSlotDescription alloc] initWithName:@"airCirculationMode" tag:6 facadePropertyName:@"airCirculationMode" dataPropertyName:@"airCirculationMode" isExtended:0 isPrivate:0 valueType:120 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9018 provideOptionsSelectorStrings:&unk_1F02D9030 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveAirCirculationModeForSetClimateSettingsInCar_withCompletion_, sel_resolveAirCirculationModeForSetClimateSettingsInCar_completion_, 0];
  v126[4] = v83;
  v82 = [[INIntentSlotDescription alloc] initWithName:@"fanSpeedIndex" tag:7 facadePropertyName:@"fanSpeedIndex" dataPropertyName:@"fanSpeedIndex" isExtended:0 isPrivate:0 valueType:24 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9048 provideOptionsSelectorStrings:&unk_1F02D9060 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveFanSpeedIndexForSetClimateSettingsInCar_withCompletion_, sel_resolveFanSpeedIndexForSetClimateSettingsInCar_completion_, 0];
  v126[5] = v82;
  v81 = [[INIntentSlotDescription alloc] initWithName:@"fanSpeedPercentage" tag:8 facadePropertyName:@"fanSpeedPercentage" dataPropertyName:@"fanSpeedPercentage" isExtended:0 isPrivate:0 valueType:21 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9078 provideOptionsSelectorStrings:&unk_1F02D9090 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveFanSpeedPercentageForSetClimateSettingsInCar_withCompletion_, sel_resolveFanSpeedPercentageForSetClimateSettingsInCar_completion_, 0];
  v126[6] = v81;
  v80 = [[INIntentSlotDescription alloc] initWithName:@"relativeFanSpeedSetting" tag:9 facadePropertyName:@"relativeFanSpeedSetting" dataPropertyName:@"relativeFanSpeedSetting" isExtended:0 isPrivate:0 valueType:125 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D90A8 provideOptionsSelectorStrings:&unk_1F02D90C0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveRelativeFanSpeedSettingForSetClimateSettingsInCar_withCompletion_, sel_resolveRelativeFanSpeedSettingForSetClimateSettingsInCar_completion_, 0];
  v126[7] = v80;
  v79 = [[INIntentSlotDescription alloc] initWithName:@"temperature" tag:11 facadePropertyName:@"temperature" dataPropertyName:@"temperature" isExtended:0 isPrivate:0 valueType:32 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D90D8 provideOptionsSelectorStrings:&unk_1F02D90F0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTemperatureForSetClimateSettingsInCar_withCompletion_, sel_resolveTemperatureForSetClimateSettingsInCar_completion_, 0];
  v126[8] = v79;
  v78 = [[INIntentSlotDescription alloc] initWithName:@"relativeTemperatureSetting" tag:12 facadePropertyName:@"relativeTemperatureSetting" dataPropertyName:@"relativeTemperatureSetting" isExtended:0 isPrivate:0 valueType:125 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9108 provideOptionsSelectorStrings:&unk_1F02D9120 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveRelativeTemperatureSettingForSetClimateSettingsInCar_withCompletion_, sel_resolveRelativeTemperatureSettingForSetClimateSettingsInCar_completion_, 0];
  v126[9] = v78;
  v77 = [[INIntentSlotDescription alloc] initWithName:@"climateZone" tag:13 facadePropertyName:@"climateZone" dataPropertyName:@"climateZone" isExtended:0 isPrivate:0 valueType:123 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9138 provideOptionsSelectorStrings:&unk_1F02D9150 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveClimateZoneForSetClimateSettingsInCar_withCompletion_, sel_resolveClimateZoneForSetClimateSettingsInCar_completion_, 0];
  v126[10] = v77;
  v76 = [[INIntentSlotDescription alloc] initWithName:@"carName" tag:14 facadePropertyName:@"carName" dataPropertyName:@"carName" isExtended:0 isPrivate:0 valueType:12 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9168 provideOptionsSelectorStrings:&unk_1F02D9180 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveCarNameForSetClimateSettingsInCar_withCompletion_, sel_resolveCarNameForSetClimateSettingsInCar_completion_, 0];
  v126[11] = v76;
  v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:12];
  v74 = _INIntentSchemaBuildIntentSlotDescriptionMap(v75);
  v73 = [(INIntentDescription *)v21 initWithName:@"SetClimateSettingsInCarIntent" responseName:@"SetClimateSettingsInCarIntentResponse" facadeClass:v22 dataClass:v23 type:@"sirikit.intent.car_commands.SetClimateSettingsInCarIntent" isPrivate:0 handleSelector:sel_handleSetClimateSettingsInCar_completion_ confirmSelector:sel_confirmSetClimateSettingsInCar_completion_ slotsByName:v74];
  v133[7] = v73;
  v24 = [INIntentDescription alloc];
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v72 = [[INIntentSlotDescription alloc] initWithName:@"enable" tag:2 facadePropertyName:@"enable" dataPropertyName:@"enable" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9198 provideOptionsSelectorStrings:&unk_1F02D91B0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveEnableForSetDefrosterSettingsInCar_withCompletion_, sel_resolveEnableForSetDefrosterSettingsInCar_completion_, 0];
  v125[0] = v72;
  v71 = [[INIntentSlotDescription alloc] initWithName:@"defroster" tag:3 facadePropertyName:@"defroster" dataPropertyName:@"defroster" isExtended:0 isPrivate:0 valueType:122 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D91C8 provideOptionsSelectorStrings:&unk_1F02D91E0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveDefrosterForSetDefrosterSettingsInCar_withCompletion_, sel_resolveDefrosterForSetDefrosterSettingsInCar_completion_, 0];
  v125[1] = v71;
  v70 = [[INIntentSlotDescription alloc] initWithName:@"carName" tag:4 facadePropertyName:@"carName" dataPropertyName:@"carName" isExtended:0 isPrivate:0 valueType:12 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D91F8 provideOptionsSelectorStrings:&unk_1F02D9210 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveCarNameForSetDefrosterSettingsInCar_withCompletion_, sel_resolveCarNameForSetDefrosterSettingsInCar_completion_, 0];
  v125[2] = v70;
  v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:v125 count:3];
  v68 = _INIntentSchemaBuildIntentSlotDescriptionMap(v69);
  v67 = [(INIntentDescription *)v24 initWithName:@"SetDefrosterSettingsInCarIntent" responseName:@"SetDefrosterSettingsInCarIntentResponse" facadeClass:v25 dataClass:v26 type:@"sirikit.intent.car_commands.SetDefrosterSettingsInCarIntent" isPrivate:0 handleSelector:sel_handleSetDefrosterSettingsInCar_completion_ confirmSelector:sel_confirmSetDefrosterSettingsInCar_completion_ slotsByName:v68];
  v133[8] = v67;
  v27 = [INIntentDescription alloc];
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v66 = [[INIntentSlotDescription alloc] initWithName:@"profileNumber" tag:2 facadePropertyName:@"profileNumber" dataPropertyName:@"profileNumber" isExtended:0 isPrivate:0 valueType:24 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9228 provideOptionsSelectorStrings:&unk_1F02D9240 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveProfileNumberForSetProfileInCar_withCompletion_, sel_resolveProfileNumberForSetProfileInCar_completion_, 0];
  v124[0] = v66;
  v65 = [[INIntentSlotDescription alloc] initWithName:@"profileName" tag:3 facadePropertyName:@"profileName" dataPropertyName:@"profileName" isExtended:0 isPrivate:0 valueType:30 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9258 provideOptionsSelectorStrings:&unk_1F02D9270 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveProfileNameForSetProfileInCar_withCompletion_, sel_resolveProfileNameForSetProfileInCar_completion_, 0];
  v124[1] = v65;
  v64 = [[INIntentSlotDescription alloc] initWithName:@"defaultProfile" tag:4 facadePropertyName:@"defaultProfile" dataPropertyName:@"defaultProfile" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v124[2] = v64;
  v63 = [INIntentSlotDescription initWithName:"initWithName:tag:facadePropertyName:dataPropertyName:isExtended:isPrivate:valueType:valueStyle:defaultValueSelectorStrings:provideOptionsSelectorStrings:resolutionResultClass:resolveSelectors:" tag:12 facadePropertyName:1 dataPropertyName:&unk_1F02D9288 isExtended:&unk_1F02D92A0 isPrivate:objc_opt_class() valueType:sel_resolveCarNameForSetProfileInCar_withCompletion_ valueStyle:sel_resolveCarNameForSetProfileInCar_completion_ defaultValueSelectorStrings:0 provideOptionsSelectorStrings:? resolutionResultClass:? resolveSelectors:?];
  v124[3] = v63;
  v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:4];
  v61 = _INIntentSchemaBuildIntentSlotDescriptionMap(v62);
  v60 = [(INIntentDescription *)v27 initWithName:@"SetProfileInCarIntent" responseName:@"SetProfileInCarIntentResponse" facadeClass:v28 dataClass:v29 type:@"sirikit.intent.car_commands.SetProfileInCarIntent" isPrivate:0 handleSelector:sel_handleSetProfileInCar_completion_ confirmSelector:sel_confirmSetProfileInCar_completion_ slotsByName:v61];
  v133[9] = v60;
  v59 = [INIntentDescription alloc];
  v57 = objc_opt_class();
  v56 = objc_opt_class();
  v58 = [[INIntentSlotDescription alloc] initWithName:@"enableHeating" tag:2 facadePropertyName:@"enableHeating" dataPropertyName:@"enableHeating" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D92B8 provideOptionsSelectorStrings:&unk_1F02D92D0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveEnableHeatingForSetSeatSettingsInCar_withCompletion_, sel_resolveEnableHeatingForSetSeatSettingsInCar_completion_, 0];
  v123[0] = v58;
  v30 = [[INIntentSlotDescription alloc] initWithName:@"enableCooling" tag:3 facadePropertyName:@"enableCooling" dataPropertyName:@"enableCooling" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D92E8 provideOptionsSelectorStrings:&unk_1F02D9300 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveEnableCoolingForSetSeatSettingsInCar_withCompletion_, sel_resolveEnableCoolingForSetSeatSettingsInCar_completion_, 0];
  v123[1] = v30;
  v31 = [[INIntentSlotDescription alloc] initWithName:@"enableMassage" tag:4 facadePropertyName:@"enableMassage" dataPropertyName:@"enableMassage" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9318 provideOptionsSelectorStrings:&unk_1F02D9330 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveEnableMassageForSetSeatSettingsInCar_withCompletion_, sel_resolveEnableMassageForSetSeatSettingsInCar_completion_, 0];
  v123[2] = v31;
  v32 = [[INIntentSlotDescription alloc] initWithName:@"seat" tag:5 facadePropertyName:@"seat" dataPropertyName:@"seat" isExtended:0 isPrivate:0 valueType:123 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9348 provideOptionsSelectorStrings:&unk_1F02D9360 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveSeatForSetSeatSettingsInCar_withCompletion_, sel_resolveSeatForSetSeatSettingsInCar_completion_, 0];
  v123[3] = v32;
  v33 = [[INIntentSlotDescription alloc] initWithName:@"level" tag:6 facadePropertyName:@"level" dataPropertyName:@"level" isExtended:0 isPrivate:0 valueType:24 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9378 provideOptionsSelectorStrings:&unk_1F02D9390 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveLevelForSetSeatSettingsInCar_withCompletion_, sel_resolveLevelForSetSeatSettingsInCar_completion_, 0];
  v123[4] = v33;
  v34 = [[INIntentSlotDescription alloc] initWithName:@"relativeLevelSetting" tag:7 facadePropertyName:@"relativeLevelSetting" dataPropertyName:@"relativeLevelSetting" isExtended:0 isPrivate:0 valueType:125 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D93A8 provideOptionsSelectorStrings:&unk_1F02D93C0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveRelativeLevelSettingForSetSeatSettingsInCar_withCompletion_, sel_resolveRelativeLevelSettingForSetSeatSettingsInCar_completion_, 0];
  v123[5] = v34;
  v35 = [[INIntentSlotDescription alloc] initWithName:@"carName" tag:8 facadePropertyName:@"carName" dataPropertyName:@"carName" isExtended:0 isPrivate:0 valueType:12 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D93D8 provideOptionsSelectorStrings:&unk_1F02D93F0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveCarNameForSetSeatSettingsInCar_withCompletion_, sel_resolveCarNameForSetSeatSettingsInCar_completion_, 0];
  v123[6] = v35;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v123 count:7];
  v37 = _INIntentSchemaBuildIntentSlotDescriptionMap(v36);
  v38 = [(INIntentDescription *)v59 initWithName:@"SetSeatSettingsInCarIntent" responseName:@"SetSeatSettingsInCarIntentResponse" facadeClass:v57 dataClass:v56 type:@"sirikit.intent.car_commands.SetSeatSettingsInCarIntent" isPrivate:0 handleSelector:sel_handleSetSeatSettingsInCar_completion_ confirmSelector:sel_confirmSetSeatSettingsInCar_completion_ slotsByName:v37];
  v133[10] = v38;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v133 count:11];

  v40 = [v39 count];
  v41 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v40];
  v42 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v40];
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v43 = v39;
  v44 = [v43 countByEnumeratingWithState:&v118 objects:v122 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v119;
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v119 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = *(*(&v118 + 1) + 8 * i);
        v49 = [v48 name];
        [v41 setObject:v48 forKey:v49];

        v50 = [v48 type];
        [v42 setObject:v48 forKey:v50];
      }

      v45 = [v43 countByEnumeratingWithState:&v118 objects:v122 count:16];
    }

    while (v45);
  }

  v51 = [v41 copy];
  v52 = sCarPlayDomain_intentDescsByName;
  sCarPlayDomain_intentDescsByName = v51;

  v53 = [v42 copy];
  v54 = sCarPlayDomain_intentDescsByType;
  sCarPlayDomain_intentDescsByType = v53;

  v55 = *MEMORY[0x1E69E9840];
}

@end