@interface AXMPhotoVisionSupport
+ (BOOL)_validatePhotosFormatSoftLinkSymbols;
+ (BOOL)axmIsSceneClassId:(unsigned int)a3 childOfSceneClassId:(unsigned int)a4;
+ (id)_collectLabelsIncludingLeafNodes:(BOOL)a3 nonLeafNodes:(BOOL)a4;
+ (id)_deniedVoiceOverObjectClassificationLabels;
+ (id)_deniedVoiceOverSceneClassificationLabels;
+ (id)axmTaxonomyNodeForObjectObservation:(id)a3;
+ (id)axmTaxonomyNodeForSceneTaxonomyNode:(id)a3;
+ (id)buildGraphStatisticsDescription;
+ (id)buildParentChainDescriptionForAllNodes;
+ (id)buildTaxonomyDescription;
+ (id)findLeastCommonAncestorForSceneClassIds:(id)a3 withKnownAncestorSceneClassId:(unsigned int)a4;
+ (id)localizedLabelForClassificationObservation:(id)a3;
+ (id)processSceneClassifications:(id)a3 withOptions:(unsigned int)a4;
+ (void)_addNode:(id)a3 toDescription:(id)a4 atLevel:(int64_t)a5;
@end

@implementation AXMPhotoVisionSupport

+ (id)_deniedVoiceOverSceneClassificationLabels
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__AXMPhotoVisionSupport__deniedVoiceOverSceneClassificationLabels__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_deniedVoiceOverSceneClassificationLabels_onceToken != -1)
  {
    dispatch_once(&_deniedVoiceOverSceneClassificationLabels_onceToken, block);
  }

  v2 = _deniedVoiceOverSceneClassificationLabels__DeniedLabels;

  return v2;
}

void __66__AXMPhotoVisionSupport__deniedVoiceOverSceneClassificationLabels__block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:*(a1 + 32)];
  v1 = [v5 pathForResource:@"AXDeniedSceneClassificationLabelsForVoiceOver" ofType:@"plist"];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v1];
  v3 = [v2 objectForKeyedSubscript:@"labels"];
  v4 = _deniedVoiceOverSceneClassificationLabels__DeniedLabels;
  _deniedVoiceOverSceneClassificationLabels__DeniedLabels = v3;
}

+ (id)_deniedVoiceOverObjectClassificationLabels
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__AXMPhotoVisionSupport__deniedVoiceOverObjectClassificationLabels__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_deniedVoiceOverObjectClassificationLabels_onceToken != -1)
  {
    dispatch_once(&_deniedVoiceOverObjectClassificationLabels_onceToken, block);
  }

  v2 = _deniedVoiceOverObjectClassificationLabels__DeniedLabels;

  return v2;
}

void __67__AXMPhotoVisionSupport__deniedVoiceOverObjectClassificationLabels__block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:*(a1 + 32)];
  v1 = [v5 pathForResource:@"AXDeniedObjectClassificationLabelsForVoiceOver" ofType:@"plist"];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v1];
  v3 = [v2 objectForKeyedSubscript:@"labels"];
  v4 = _deniedVoiceOverObjectClassificationLabels__DeniedLabels;
  _deniedVoiceOverObjectClassificationLabels__DeniedLabels = v3;
}

+ (id)processSceneClassifications:(id)a3 withOptions:(unsigned int)a4
{
  v4 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] array];
  v32 = [getPFSceneTaxonomyClass() sharedTaxonomy];
  v30 = [MEMORY[0x1E695DFA8] set];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v40;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        if ((v4 & 4) != 0)
        {
          v13 = [a1 _deniedVoiceOverSceneClassificationLabels];
          v14 = [v12 identifier];
          v15 = [v13 containsObject:v14];

          if (v15)
          {
            continue;
          }
        }

        v16 = [v12 identifier];
        v17 = [v32 nodeForName:v16];

        if (v17)
        {
          if ((v4 & 1) == 0 || ([v12 confidence], v19 = v18, objc_msgSend(v17, "searchThreshold"), v20 < v19))
          {
            [v30 addObject:v17];
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v9);
  }

  if ((v4 & 2) != 0)
  {
    v21 = [MEMORY[0x1E695DFA8] set];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __65__AXMPhotoVisionSupport_processSceneClassifications_withOptions___block_invoke;
    v37[3] = &unk_1E7A1D768;
    v38 = v21;
    v22 = v21;
    [v30 enumerateObjectsUsingBlock:v37];
    [v30 minusSet:v22];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v23 = v30;
  v24 = [v23 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v34;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [AXMPhotoVisionSupport axmTaxonomyNodeForSceneTaxonomyNode:*(*(&v33 + 1) + 8 * j)];
        [v7 addObject:v28];
      }

      v25 = [v23 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v25);
  }

  return v7;
}

void __65__AXMPhotoVisionSupport_processSceneClassifications_withOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__AXMPhotoVisionSupport_processSceneClassifications_withOptions___block_invoke_2;
  v5[3] = &unk_1E7A1D740;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  [v4 traverse:0 visitor:v5];
}

uint64_t __65__AXMPhotoVisionSupport_processSceneClassifications_withOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isEqual:*(a1 + 32)] & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }

  return 0;
}

+ (id)localizedLabelForClassificationObservation:(id)a3
{
  v3 = a3;
  v4 = [getPFSceneTaxonomyClass() sharedTaxonomy];
  v5 = [v3 identifier];

  v6 = [v4 nodeForName:v5];

  v7 = [v6 localizedLabel];

  return v7;
}

+ (id)axmTaxonomyNodeForObjectObservation:(id)a3
{
  v3 = a3;
  v4 = [getPFSceneTaxonomyClass() sharedTaxonomy];
  v5 = [v3 labels];

  v6 = [v5 firstObject];
  v7 = [v6 identifier];
  v8 = [v4 nodeForName:v7];

  v9 = [AXMPhotoVisionSupport axmTaxonomyNodeForSceneTaxonomyNode:v8];

  return v9;
}

+ (BOOL)axmIsSceneClassId:(unsigned int)a3 childOfSceneClassId:(unsigned int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  v6 = [getPFSceneTaxonomyClass() sharedTaxonomy];
  v7 = [v6 nodeForSceneClassId:v5];
  v8 = [v6 nodeForSceneClassId:v4];
  v9 = [v8 parents];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__AXMPhotoVisionSupport_axmIsSceneClassId_childOfSceneClassId___block_invoke;
  v15[3] = &unk_1E7A1D790;
  v16 = v7;
  v10 = v7;
  v11 = [v9 ax_filteredSetUsingBlock:v15];
  v12 = [v8 isEqualToNode:v10] ^ 1;
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  return v13;
}

+ (id)findLeastCommonAncestorForSceneClassIds:(id)a3 withKnownAncestorSceneClassId:(unsigned int)a4
{
  v5 = a3;
  v6 = [getPFSceneTaxonomyClass() sharedTaxonomy];
  v7 = [MEMORY[0x1E695DFA8] set];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __95__AXMPhotoVisionSupport_findLeastCommonAncestorForSceneClassIds_withKnownAncestorSceneClassId___block_invoke;
  v40[3] = &unk_1E7A1C9B0;
  v8 = v6;
  v41 = v8;
  v9 = v7;
  v42 = v9;
  [v5 enumerateObjectsUsingBlock:v40];
  v10 = [MEMORY[0x1E695DF90] dictionary];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __95__AXMPhotoVisionSupport_findLeastCommonAncestorForSceneClassIds_withKnownAncestorSceneClassId___block_invoke_2;
  v37[3] = &unk_1E7A1D7E0;
  v39 = a4;
  v11 = v10;
  v38 = v11;
  [v9 enumerateObjectsUsingBlock:v37];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0xFFFFFFFFLL;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __95__AXMPhotoVisionSupport_findLeastCommonAncestorForSceneClassIds_withKnownAncestorSceneClassId___block_invoke_4;
  v32[3] = &unk_1E7A1D808;
  v32[4] = &v33;
  [v11 enumerateKeysAndObjectsUsingBlock:v32];
  v30 = v9;
  v31 = v8;
  v12 = [v11 allValues];
  v13 = [v12 objectAtIndexedSubscript:0];
  v14 = [v13 objectAtIndexedSubscript:v34[3] - 1];
  v15 = [v14 sceneClassId];
  v29 = a4;

  v16 = v34[3];
LABEL_2:
  v17 = [v12 objectAtIndexedSubscript:0];
  v18 = [v17 objectAtIndexedSubscript:--v16];
  v19 = [v18 sceneClassId];

  v20 = 1;
  do
  {
    if (v20 >= [v5 count])
    {
      v15 = v19;
      goto LABEL_2;
    }

    v21 = [v12 objectAtIndexedSubscript:v20];
    v22 = [v21 objectAtIndexedSubscript:v16];
    v23 = [v22 sceneClassId];

    ++v20;
  }

  while (v19 == v23);
  if ([AXMPhotoVisionSupport axmIsSceneClassId:v15 childOfSceneClassId:v29])
  {
    v25 = v15;
  }

  else
  {
    v25 = v29;
  }

  v26 = [v31 nodeForSceneClassId:v25];
  v27 = [AXMPhotoVisionSupport axmTaxonomyNodeForSceneTaxonomyNode:v26];

  _Block_object_dispose(&v33, 8);

  return v27;
}

void __95__AXMPhotoVisionSupport_findLeastCommonAncestorForSceneClassIds_withKnownAncestorSceneClassId___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) nodeForSceneClassId:{objc_msgSend(a2, "intValue")}];
  [*(a1 + 40) addObject:v3];
}

void __95__AXMPhotoVisionSupport_findLeastCommonAncestorForSceneClassIds_withKnownAncestorSceneClassId___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a2;
  v5 = [v3 array];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __95__AXMPhotoVisionSupport_findLeastCommonAncestorForSceneClassIds_withKnownAncestorSceneClassId___block_invoke_3;
  v15 = &unk_1E7A1D7B8;
  v17 = *(a1 + 40);
  v16 = v5;
  v6 = v5;
  [v4 traverse:0 visitor:&v12];
  v7 = *(a1 + 32);
  v8 = MEMORY[0x1E696AD98];
  v9 = [v4 sceneClassId];

  v10 = [v8 numberWithUnsignedInt:v9];
  v11 = [v10 stringValue];
  [v7 setValue:v6 forKey:v11];
}

BOOL __95__AXMPhotoVisionSupport_findLeastCommonAncestorForSceneClassIds_withKnownAncestorSceneClassId___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sceneClassId];
  v5 = *(a1 + 40);
  if (v4 != v5)
  {
    [*(a1 + 32) addObject:v3];
  }

  return v4 == v5;
}

void __95__AXMPhotoVisionSupport_findLeastCommonAncestorForSceneClassIds_withKnownAncestorSceneClassId___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 count] < *(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = [v4 count];
  }
}

+ (BOOL)_validatePhotosFormatSoftLinkSymbols
{
  if (_validatePhotosFormatSoftLinkSymbols_onceToken != -1)
  {
    +[AXMPhotoVisionSupport _validatePhotosFormatSoftLinkSymbols];
  }

  return (_validatePhotosFormatSoftLinkSymbols__SymbolsValid & 1) == 0;
}

void __61__AXMPhotoVisionSupport__validatePhotosFormatSoftLinkSymbols__block_invoke()
{
  if (!PhotosFormatsLibraryCore())
  {
    v0 = AXMediaLogCommon();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      __61__AXMPhotoVisionSupport__validatePhotosFormatSoftLinkSymbols__block_invoke_cold_1(v0);
    }

    _validatePhotosFormatSoftLinkSymbols__SymbolsValid = 1;
  }
}

+ (id)buildTaxonomyDescription
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [getPFSceneTaxonomyClass() sharedTaxonomy];
  v5 = [v4 rootNode];
  [a1 _addNode:v5 toDescription:v3 atLevel:0];

  return v3;
}

+ (void)_addNode:(id)a3 toDescription:(id)a4 atLevel:(int64_t)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (a5 >= 1)
  {
    v10 = a5;
    do
    {
      [v9 appendString:@"   "];
      --v10;
    }

    while (v10);
  }

  v11 = [v8 name];
  v12 = [v8 localizedLabel];
  [v8 searchThreshold];
  [v9 appendFormat:@"%@ - localized:'%@' threshold:%.2f\n", v11, v12, v13];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = [v8 children];
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [a1 _addNode:*(*(&v19 + 1) + 8 * v18++) toDescription:v9 atLevel:a5 + 1];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v16);
  }
}

+ (id)buildParentChainDescriptionForAllNodes
{
  v2 = [MEMORY[0x1E696AD60] string];
  v3 = [getPFSceneTaxonomyClass() sharedTaxonomy];
  v4 = [v3 rootNode];
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__AXMPhotoVisionSupport_buildParentChainDescriptionForAllNodes__block_invoke;
  v7[3] = &unk_1E7A1D858;
  v5 = v2;
  v8 = v5;
  v9 = v10;
  [v4 traverse:1 visitor:v7];

  _Block_object_dispose(v10, 8);

  return v5;
}

uint64_t __63__AXMPhotoVisionSupport_buildParentChainDescriptionForAllNodes__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 40) + 8) + 24);
  v5 = a2;
  v6 = [v5 name];
  [v3 appendFormat:@"%ld . %@\n"], v4, v6);

  v7 = [MEMORY[0x1E696AD60] string];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__AXMPhotoVisionSupport_buildParentChainDescriptionForAllNodes__block_invoke_2;
  v10[3] = &unk_1E7A1D830;
  v11 = v7;
  v8 = v7;
  [v5 traverse:0 visitor:v10];

  [*(a1 + 32) appendFormat:@"   %@\n\n", v8];
  ++*(*(*(a1 + 40) + 8) + 24);

  return 0;
}

uint64_t __63__AXMPhotoVisionSupport_buildParentChainDescriptionForAllNodes__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 length];
  v6 = *(a1 + 32);
  v7 = [v4 name];

  if (v5)
  {
    v8 = @" > %@";
  }

  else
  {
    v8 = @"%@";
  }

  [v6 appendFormat:v8, v7];

  return 0;
}

+ (id)_collectLabelsIncludingLeafNodes:(BOOL)a3 nonLeafNodes:(BOOL)a4
{
  v5 = a3;
  v6 = [MEMORY[0x1E695DFA8] set];
  v7 = [getPFSceneTaxonomyClass() sharedTaxonomy];
  v8 = [v7 rootNode];
  v9 = [MEMORY[0x1E695DF70] arrayWithObject:v8];
  v10 = v9;
  while ([v9 count])
  {
    v11 = [v10 firstObject];
    [v10 removeObjectAtIndex:0];
    v12 = [v11 children];
    if ([v12 count])
    {
      v13 = [v12 allObjects];
      [v10 addObjectsFromArray:v13];

      if (!a4)
      {
        goto LABEL_6;
      }

LABEL_5:
      v14 = [v11 name];
      [v6 addObject:v14];

      goto LABEL_6;
    }

    if (v5)
    {
      goto LABEL_5;
    }

LABEL_6:

    v9 = v10;
  }

  return v6;
}

+ (id)buildGraphStatisticsDescription
{
  v10 = [MEMORY[0x1E696AD60] string];
  v3 = [getPFSceneTaxonomyClass() sharedTaxonomy];
  v4 = [v3 rootNode];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = [MEMORY[0x1E695DFA8] set];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__AXMPhotoVisionSupport_buildGraphStatisticsDescription__block_invoke;
  v11[3] = &unk_1E7A1D880;
  v13 = &v14;
  v6 = v5;
  v12 = v6;
  [v4 traverse:1 visitor:v11];
  v7 = [a1 leafNodeLabels];
  v8 = [a1 nonLeafNodeLabels];
  [v10 appendFormat:@"Total nodes in graph via PV traverse API: %ld\nTotal nodes in graph via PV traverse API (removing visit duplicates): %ld\nLeaf nodes in graph via AX API: %ld\nNon-leaf nodes in graph via AX API: %ld\nTotal nodes in graph via AX API: %ld", v15[3], objc_msgSend(v6, "count"), objc_msgSend(v7, "count"), objc_msgSend(v8, "count"), objc_msgSend(v8, "count") + objc_msgSend(v7, "count")];

  _Block_object_dispose(&v14, 8);

  return v10;
}

uint64_t __56__AXMPhotoVisionSupport_buildGraphStatisticsDescription__block_invoke(uint64_t a1, uint64_t a2)
{
  ++*(*(*(a1 + 40) + 8) + 24);
  [*(a1 + 32) addObject:a2];
  return 0;
}

+ (id)axmTaxonomyNodeForSceneTaxonomyNode:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(AXMTaxonomyNode);
  [v3 searchThreshold];
  [(AXMTaxonomyNode *)v4 setConfidence:?];
  v5 = [v3 name];
  [(AXMTaxonomyNode *)v4 setLabel:v5];

  v6 = [v3 localizedLabel];
  [(AXMTaxonomyNode *)v4 setLocalizedName:v6];

  -[AXMTaxonomyNode setSceneClassId:](v4, "setSceneClassId:", [v3 sceneClassId]);
  v7 = [MEMORY[0x1E695DFA8] set];
  v8 = [v3 detectors];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__AXMPhotoVisionSupport_axmTaxonomyNodeForSceneTaxonomyNode___block_invoke;
  v11[3] = &unk_1E7A1D768;
  v12 = v7;
  v9 = v7;
  [v8 enumerateObjectsUsingBlock:v11];

  [(AXMTaxonomyNode *)v4 setDetectorSceneClassIds:v9];

  return v4;
}

void __61__AXMPhotoVisionSupport_axmTaxonomyNodeForSceneTaxonomyNode___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a2, "sceneClassId")}];
  v3 = [v4 stringValue];
  [v2 addObject:v3];
}

@end