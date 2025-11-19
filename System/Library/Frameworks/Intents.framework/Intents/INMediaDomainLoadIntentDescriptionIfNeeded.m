@interface INMediaDomainLoadIntentDescriptionIfNeeded
@end

@implementation INMediaDomainLoadIntentDescriptionIfNeeded

void ___INMediaDomainLoadIntentDescriptionIfNeeded_block_invoke()
{
  v78[4] = *MEMORY[0x1E69E9840];
  v0 = [INIntentDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v68 = [[INIntentSlotDescription alloc] initWithName:@"mediaItems" tag:2 facadePropertyName:@"mediaItems" dataPropertyName:@"mediaItems" isExtended:0 isPrivate:0 valueType:153 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D9858 provideOptionsSelectorStrings:&unk_1F02D9870 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveMediaItemsForAddMedia_withCompletion_, sel_resolveMediaItemsForAddMedia_completion_, 0];
  v77[0] = v68;
  v67 = [[INIntentSlotDescription alloc] initWithName:@"mediaSearch" tag:3 facadePropertyName:@"mediaSearch" dataPropertyName:@"mediaSearch" isExtended:0 isPrivate:0 valueType:157 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v77[1] = v67;
  v66 = [[INIntentSlotDescription alloc] initWithName:@"mediaDestination" tag:4 facadePropertyName:@"mediaDestination" dataPropertyName:@"mediaDestination" isExtended:0 isPrivate:0 valueType:159 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9888 provideOptionsSelectorStrings:&unk_1F02D98A0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveMediaDestinationForAddMedia_withCompletion_, sel_resolveMediaDestinationForAddMedia_completion_, 0];
  v77[2] = v66;
  v65 = [[INIntentSlotDescription alloc] initWithName:@"privateAddMediaIntentData" tag:6 facadePropertyName:@"privateAddMediaIntentData" dataPropertyName:@"privateAddMediaIntentData" isExtended:0 isPrivate:1 valueType:164 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v77[3] = v65;
  v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:4];
  v63 = _INIntentSchemaBuildIntentSlotDescriptionMap(v64);
  v62 = [(INIntentDescription *)v0 initWithName:@"AddMediaIntent" responseName:@"AddMediaIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.media.AddMediaIntent" isPrivate:0 handleSelector:sel_handleAddMedia_completion_ confirmSelector:sel_confirmAddMedia_completion_ slotsByName:v63];
  v78[0] = v62;
  v3 = [INIntentDescription alloc];
  v48 = objc_opt_class();
  v46 = objc_opt_class();
  v61 = [[INIntentSlotDescription alloc] initWithName:@"mediaItems" tag:2 facadePropertyName:@"mediaItems" dataPropertyName:@"mediaItems" isExtended:0 isPrivate:0 valueType:153 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D98B8 provideOptionsSelectorStrings:&unk_1F02D98D0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveMediaItemsForPlayMedia_withCompletion_, sel_resolveMediaItemsForPlayMedia_completion_, 0];
  v76[0] = v61;
  v60 = [[INIntentSlotDescription alloc] initWithName:@"mediaContainer" tag:3 facadePropertyName:@"mediaContainer" dataPropertyName:@"mediaContainer" isExtended:0 isPrivate:0 valueType:153 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v76[1] = v60;
  v59 = [[INIntentSlotDescription alloc] initWithName:@"playShuffled" tag:4 facadePropertyName:@"playShuffled" dataPropertyName:@"playShuffled" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D98E8 provideOptionsSelectorStrings:&unk_1F02D9900 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolvePlayShuffledForPlayMedia_withCompletion_, sel_resolvePlayShuffledForPlayMedia_completion_, 0];
  v76[2] = v59;
  v58 = [[INIntentSlotDescription alloc] initWithName:@"playbackRepeatMode" tag:5 facadePropertyName:@"playbackRepeatMode" dataPropertyName:@"playbackRepeatMode" isExtended:0 isPrivate:0 valueType:155 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9918 provideOptionsSelectorStrings:&unk_1F02D9930 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolvePlaybackRepeatModeForPlayMedia_withCompletion_, sel_resolvePlaybackRepeatModeForPlayMedia_completion_, 0];
  v76[3] = v58;
  v57 = [[INIntentSlotDescription alloc] initWithName:@"resumePlayback" tag:6 facadePropertyName:@"resumePlayback" dataPropertyName:@"resumePlayback" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9948 provideOptionsSelectorStrings:&unk_1F02D9960 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveResumePlaybackForPlayMedia_withCompletion_, sel_resolveResumePlaybackForPlayMedia_completion_, 0];
  v76[4] = v57;
  v56 = [[INIntentSlotDescription alloc] initWithName:@"expirationDate" tag:7 facadePropertyName:@"expirationDate" dataPropertyName:@"expirationDate" isExtended:0 isPrivate:1 valueType:34 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v76[5] = v56;
  v55 = [[INIntentSlotDescription alloc] initWithName:@"bucket" tag:8 facadePropertyName:@"buckets" dataPropertyName:@"buckets" isExtended:0 isPrivate:1 valueType:12 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v76[6] = v55;
  v54 = [[INIntentSlotDescription alloc] initWithName:@"recoID" tag:9 facadePropertyName:@"recoID" dataPropertyName:@"recoID" isExtended:0 isPrivate:1 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v76[7] = v54;
  v53 = [[INIntentSlotDescription alloc] initWithName:@"playbackQueueLocation" tag:10 facadePropertyName:@"playbackQueueLocation" dataPropertyName:@"playbackQueueLocation" isExtended:0 isPrivate:0 valueType:156 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9978 provideOptionsSelectorStrings:&unk_1F02D9990 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolvePlaybackQueueLocationForPlayMedia_withCompletion_, sel_resolvePlaybackQueueLocationForPlayMedia_completion_, 0];
  v76[8] = v53;
  v52 = [[INIntentSlotDescription alloc] initWithName:@"playbackSpeed" tag:11 facadePropertyName:@"playbackSpeed" dataPropertyName:@"playbackSpeed" isExtended:0 isPrivate:0 valueType:3 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D99A8 provideOptionsSelectorStrings:&unk_1F02D99C0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolvePlaybackSpeedForPlayMedia_withCompletion_, sel_resolvePlaybackSpeedForPlayMedia_completion_, 0];
  v76[9] = v52;
  v51 = [[INIntentSlotDescription alloc] initWithName:@"mediaSearch" tag:12 facadePropertyName:@"mediaSearch" dataPropertyName:@"mediaSearch" isExtended:0 isPrivate:0 valueType:157 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v76[10] = v51;
  v50 = [[INIntentSlotDescription alloc] initWithName:@"hashedRouteUIDs" tag:13 facadePropertyName:@"hashedRouteUIDs" dataPropertyName:@"hashedRouteUIDs" isExtended:0 isPrivate:1 valueType:30 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v76[11] = v50;
  v45 = [[INIntentSlotDescription alloc] initWithName:@"audioSearchResults" tag:20 facadePropertyName:@"audioSearchResults" dataPropertyName:@"audioSearchResults" isExtended:0 isPrivate:1 valueType:160 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v76[12] = v45;
  v44 = [[INIntentSlotDescription alloc] initWithName:@"alternativeResults" tag:21 facadePropertyName:@"alternativeResults" dataPropertyName:@"alternativeResults" isExtended:0 isPrivate:1 valueType:160 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v76[13] = v44;
  v43 = [[INIntentSlotDescription alloc] initWithName:@"parsecCategory" tag:22 facadePropertyName:@"parsecCategory" dataPropertyName:@"parsecCategory" isExtended:0 isPrivate:1 valueType:161 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v76[14] = v43;
  v42 = [[INIntentSlotDescription alloc] initWithName:@"proxiedBundleIdentifier" tag:100 facadePropertyName:@"proxiedBundleIdentifier" dataPropertyName:@"proxiedBundleIdentifier" isExtended:0 isPrivate:1 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v76[15] = v42;
  v41 = [[INIntentSlotDescription alloc] initWithName:@"privatePlayMediaIntentData" tag:110 facadePropertyName:@"privatePlayMediaIntentData" dataPropertyName:@"privatePlayMediaIntentData" isExtended:0 isPrivate:1 valueType:163 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v76[16] = v41;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:17];
  v39 = _INIntentSchemaBuildIntentSlotDescriptionMap(v40);
  v49 = [(INIntentDescription *)v3 initWithName:@"PlayMediaIntent" responseName:@"PlayMediaIntentResponse" facadeClass:v48 dataClass:v46 type:@"sirikit.intent.media.PlayMediaIntent" isPrivate:0 handleSelector:sel_handlePlayMedia_completion_ confirmSelector:sel_confirmPlayMedia_completion_ slotsByName:v39];
  v78[1] = v49;
  v4 = [INIntentDescription alloc];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v47 = [INIntentSlotDescription initWithName:"initWithName:tag:facadePropertyName:dataPropertyName:isExtended:isPrivate:valueType:valueStyle:defaultValueSelectorStrings:provideOptionsSelectorStrings:resolutionResultClass:resolveSelectors:" tag:153 facadePropertyName:3 dataPropertyName:&unk_1F02D99D8 isExtended:&unk_1F02D99F0 isPrivate:objc_opt_class() valueType:sel_resolveMediaItemsForSearchForMedia_withCompletion_ valueStyle:sel_resolveMediaItemsForSearchForMedia_completion_ defaultValueSelectorStrings:0 provideOptionsSelectorStrings:? resolutionResultClass:? resolveSelectors:?];
  v75[0] = v47;
  v38 = [INIntentSlotDescription initWithName:"initWithName:tag:facadePropertyName:dataPropertyName:isExtended:isPrivate:valueType:valueStyle:defaultValueSelectorStrings:provideOptionsSelectorStrings:resolutionResultClass:resolveSelectors:" tag:157 facadePropertyName:1 dataPropertyName:0 isExtended:0 isPrivate:0 valueType:0 valueStyle:? defaultValueSelectorStrings:? provideOptionsSelectorStrings:? resolutionResultClass:? resolveSelectors:?];
  v75[1] = v38;
  v37 = [[INIntentSlotDescription alloc] initWithName:@"privateSearchForMediaIntentData" tag:100 facadePropertyName:@"privateSearchForMediaIntentData" dataPropertyName:@"privateSearchForMediaIntentData" isExtended:0 isPrivate:1 valueType:166 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v75[2] = v37;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:3];
  v35 = _INIntentSchemaBuildIntentSlotDescriptionMap(v36);
  v7 = [(INIntentDescription *)v4 initWithName:@"SearchForMediaIntent" responseName:@"SearchForMediaIntentResponse" facadeClass:v5 dataClass:v6 type:@"sirikit.intent.media.SearchForMediaIntent" isPrivate:0 handleSelector:sel_handleSearchForMedia_completion_ confirmSelector:sel_confirmSearchForMedia_completion_ slotsByName:v35];
  v78[2] = v7;
  v34 = [INIntentDescription alloc];
  v33 = objc_opt_class();
  v32 = objc_opt_class();
  v8 = [[INIntentSlotDescription alloc] initWithName:@"mediaItems" tag:2 facadePropertyName:@"mediaItems" dataPropertyName:@"mediaItems" isExtended:0 isPrivate:0 valueType:153 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D9A08 provideOptionsSelectorStrings:&unk_1F02D9A20 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveMediaItemsForUpdateMediaAffinity_withCompletion_, sel_resolveMediaItemsForUpdateMediaAffinity_completion_, 0];
  v74[0] = v8;
  v9 = [[INIntentSlotDescription alloc] initWithName:@"mediaSearch" tag:3 facadePropertyName:@"mediaSearch" dataPropertyName:@"mediaSearch" isExtended:0 isPrivate:0 valueType:157 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v74[1] = v9;
  v10 = [[INIntentSlotDescription alloc] initWithName:@"affinityType" tag:4 facadePropertyName:@"affinityType" dataPropertyName:@"affinityType" isExtended:0 isPrivate:0 valueType:158 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9A38 provideOptionsSelectorStrings:&unk_1F02D9A50 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveAffinityTypeForUpdateMediaAffinity_withCompletion_, sel_resolveAffinityTypeForUpdateMediaAffinity_completion_, 0];
  v74[2] = v10;
  v11 = [[INIntentSlotDescription alloc] initWithName:@"privateUpdateMediaAffinityIntentData" tag:6 facadePropertyName:@"privateUpdateMediaAffinityIntentData" dataPropertyName:@"privateUpdateMediaAffinityIntentData" isExtended:0 isPrivate:1 valueType:165 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v74[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:4];
  v13 = _INIntentSchemaBuildIntentSlotDescriptionMap(v12);
  v14 = [(INIntentDescription *)v34 initWithName:@"UpdateMediaAffinityIntent" responseName:@"UpdateMediaAffinityIntentResponse" facadeClass:v33 dataClass:v32 type:@"sirikit.intent.media.UpdateMediaAffinityIntent" isPrivate:0 handleSelector:sel_handleUpdateMediaAffinity_completion_ confirmSelector:sel_confirmUpdateMediaAffinity_completion_ slotsByName:v13];
  v78[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:4];

  v16 = [v15 count];
  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v16];
  v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v16];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v19 = v15;
  v20 = [v19 countByEnumeratingWithState:&v69 objects:v73 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v70;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v70 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v69 + 1) + 8 * i);
        v25 = [v24 name];
        [v17 setObject:v24 forKey:v25];

        v26 = [v24 type];
        [v18 setObject:v24 forKey:v26];
      }

      v21 = [v19 countByEnumeratingWithState:&v69 objects:v73 count:16];
    }

    while (v21);
  }

  v27 = [v17 copy];
  v28 = sMediaDomain_intentDescsByName;
  sMediaDomain_intentDescsByName = v27;

  v29 = [v18 copy];
  v30 = sMediaDomain_intentDescsByType;
  sMediaDomain_intentDescsByType = v29;

  v31 = *MEMORY[0x1E69E9840];
}

@end