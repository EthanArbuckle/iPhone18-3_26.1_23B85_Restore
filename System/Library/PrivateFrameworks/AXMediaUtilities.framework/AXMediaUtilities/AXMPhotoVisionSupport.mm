@interface AXMPhotoVisionSupport
+ (BOOL)_validatePhotosFormatSoftLinkSymbols;
+ (BOOL)axmIsSceneClassId:(unsigned int)id childOfSceneClassId:(unsigned int)classId;
+ (id)_collectLabelsIncludingLeafNodes:(BOOL)nodes nonLeafNodes:(BOOL)leafNodes;
+ (id)_deniedVoiceOverObjectClassificationLabels;
+ (id)_deniedVoiceOverSceneClassificationLabels;
+ (id)axmTaxonomyNodeForObjectObservation:(id)observation;
+ (id)axmTaxonomyNodeForSceneTaxonomyNode:(id)node;
+ (id)buildGraphStatisticsDescription;
+ (id)buildParentChainDescriptionForAllNodes;
+ (id)buildTaxonomyDescription;
+ (id)findLeastCommonAncestorForSceneClassIds:(id)ids withKnownAncestorSceneClassId:(unsigned int)id;
+ (id)localizedLabelForClassificationObservation:(id)observation;
+ (id)processSceneClassifications:(id)classifications withOptions:(unsigned int)options;
+ (void)_addNode:(id)node toDescription:(id)description atLevel:(int64_t)level;
@end

@implementation AXMPhotoVisionSupport

+ (id)_deniedVoiceOverSceneClassificationLabels
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__AXMPhotoVisionSupport__deniedVoiceOverSceneClassificationLabels__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
  block[4] = self;
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

+ (id)processSceneClassifications:(id)classifications withOptions:(unsigned int)options
{
  optionsCopy = options;
  v45 = *MEMORY[0x1E69E9840];
  classificationsCopy = classifications;
  array = [MEMORY[0x1E695DF70] array];
  sharedTaxonomy = [getPFSceneTaxonomyClass() sharedTaxonomy];
  v30 = [MEMORY[0x1E695DFA8] set];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = classificationsCopy;
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
        if ((optionsCopy & 4) != 0)
        {
          _deniedVoiceOverSceneClassificationLabels = [self _deniedVoiceOverSceneClassificationLabels];
          identifier = [v12 identifier];
          v15 = [_deniedVoiceOverSceneClassificationLabels containsObject:identifier];

          if (v15)
          {
            continue;
          }
        }

        identifier2 = [v12 identifier];
        v17 = [sharedTaxonomy nodeForName:identifier2];

        if (v17)
        {
          if ((optionsCopy & 1) == 0 || ([v12 confidence], v19 = v18, objc_msgSend(v17, "searchThreshold"), v20 < v19))
          {
            [v30 addObject:v17];
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v9);
  }

  if ((optionsCopy & 2) != 0)
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
        [array addObject:v28];
      }

      v25 = [v23 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v25);
  }

  return array;
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

+ (id)localizedLabelForClassificationObservation:(id)observation
{
  observationCopy = observation;
  sharedTaxonomy = [getPFSceneTaxonomyClass() sharedTaxonomy];
  identifier = [observationCopy identifier];

  v6 = [sharedTaxonomy nodeForName:identifier];

  localizedLabel = [v6 localizedLabel];

  return localizedLabel;
}

+ (id)axmTaxonomyNodeForObjectObservation:(id)observation
{
  observationCopy = observation;
  sharedTaxonomy = [getPFSceneTaxonomyClass() sharedTaxonomy];
  labels = [observationCopy labels];

  firstObject = [labels firstObject];
  identifier = [firstObject identifier];
  v8 = [sharedTaxonomy nodeForName:identifier];

  v9 = [AXMPhotoVisionSupport axmTaxonomyNodeForSceneTaxonomyNode:v8];

  return v9;
}

+ (BOOL)axmIsSceneClassId:(unsigned int)id childOfSceneClassId:(unsigned int)classId
{
  v4 = *&classId;
  v5 = *&id;
  sharedTaxonomy = [getPFSceneTaxonomyClass() sharedTaxonomy];
  v7 = [sharedTaxonomy nodeForSceneClassId:v5];
  v8 = [sharedTaxonomy nodeForSceneClassId:v4];
  parents = [v8 parents];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__AXMPhotoVisionSupport_axmIsSceneClassId_childOfSceneClassId___block_invoke;
  v15[3] = &unk_1E7A1D790;
  v16 = v7;
  v10 = v7;
  v11 = [parents ax_filteredSetUsingBlock:v15];
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

+ (id)findLeastCommonAncestorForSceneClassIds:(id)ids withKnownAncestorSceneClassId:(unsigned int)id
{
  idsCopy = ids;
  sharedTaxonomy = [getPFSceneTaxonomyClass() sharedTaxonomy];
  v7 = [MEMORY[0x1E695DFA8] set];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __95__AXMPhotoVisionSupport_findLeastCommonAncestorForSceneClassIds_withKnownAncestorSceneClassId___block_invoke;
  v40[3] = &unk_1E7A1C9B0;
  v8 = sharedTaxonomy;
  v41 = v8;
  v9 = v7;
  v42 = v9;
  [idsCopy enumerateObjectsUsingBlock:v40];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __95__AXMPhotoVisionSupport_findLeastCommonAncestorForSceneClassIds_withKnownAncestorSceneClassId___block_invoke_2;
  v37[3] = &unk_1E7A1D7E0;
  idCopy = id;
  v11 = dictionary;
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
  allValues = [v11 allValues];
  v13 = [allValues objectAtIndexedSubscript:0];
  v14 = [v13 objectAtIndexedSubscript:v34[3] - 1];
  sceneClassId = [v14 sceneClassId];
  idCopy2 = id;

  v16 = v34[3];
LABEL_2:
  v17 = [allValues objectAtIndexedSubscript:0];
  v18 = [v17 objectAtIndexedSubscript:--v16];
  sceneClassId2 = [v18 sceneClassId];

  v20 = 1;
  do
  {
    if (v20 >= [idsCopy count])
    {
      sceneClassId = sceneClassId2;
      goto LABEL_2;
    }

    v21 = [allValues objectAtIndexedSubscript:v20];
    v22 = [v21 objectAtIndexedSubscript:v16];
    sceneClassId3 = [v22 sceneClassId];

    ++v20;
  }

  while (sceneClassId2 == sceneClassId3);
  if ([AXMPhotoVisionSupport axmIsSceneClassId:sceneClassId childOfSceneClassId:idCopy2])
  {
    v25 = sceneClassId;
  }

  else
  {
    v25 = idCopy2;
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
  string = [MEMORY[0x1E696AD60] string];
  sharedTaxonomy = [getPFSceneTaxonomyClass() sharedTaxonomy];
  rootNode = [sharedTaxonomy rootNode];
  [self _addNode:rootNode toDescription:string atLevel:0];

  return string;
}

+ (void)_addNode:(id)node toDescription:(id)description atLevel:(int64_t)level
{
  v24 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  descriptionCopy = description;
  if (level >= 1)
  {
    levelCopy = level;
    do
    {
      [descriptionCopy appendString:@"   "];
      --levelCopy;
    }

    while (levelCopy);
  }

  name = [nodeCopy name];
  localizedLabel = [nodeCopy localizedLabel];
  [nodeCopy searchThreshold];
  [descriptionCopy appendFormat:@"%@ - localized:'%@' threshold:%.2f\n", name, localizedLabel, v13];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  children = [nodeCopy children];
  v15 = [children countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(children);
        }

        [self _addNode:*(*(&v19 + 1) + 8 * v18++) toDescription:descriptionCopy atLevel:level + 1];
      }

      while (v16 != v18);
      v16 = [children countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v16);
  }
}

+ (id)buildParentChainDescriptionForAllNodes
{
  string = [MEMORY[0x1E696AD60] string];
  sharedTaxonomy = [getPFSceneTaxonomyClass() sharedTaxonomy];
  rootNode = [sharedTaxonomy rootNode];
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__AXMPhotoVisionSupport_buildParentChainDescriptionForAllNodes__block_invoke;
  v7[3] = &unk_1E7A1D858;
  v5 = string;
  v8 = v5;
  v9 = v10;
  [rootNode traverse:1 visitor:v7];

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

+ (id)_collectLabelsIncludingLeafNodes:(BOOL)nodes nonLeafNodes:(BOOL)leafNodes
{
  nodesCopy = nodes;
  v6 = [MEMORY[0x1E695DFA8] set];
  sharedTaxonomy = [getPFSceneTaxonomyClass() sharedTaxonomy];
  rootNode = [sharedTaxonomy rootNode];
  v9 = [MEMORY[0x1E695DF70] arrayWithObject:rootNode];
  v10 = v9;
  while ([v9 count])
  {
    firstObject = [v10 firstObject];
    [v10 removeObjectAtIndex:0];
    children = [firstObject children];
    if ([children count])
    {
      allObjects = [children allObjects];
      [v10 addObjectsFromArray:allObjects];

      if (!leafNodes)
      {
        goto LABEL_6;
      }

LABEL_5:
      name = [firstObject name];
      [v6 addObject:name];

      goto LABEL_6;
    }

    if (nodesCopy)
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
  string = [MEMORY[0x1E696AD60] string];
  sharedTaxonomy = [getPFSceneTaxonomyClass() sharedTaxonomy];
  rootNode = [sharedTaxonomy rootNode];
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
  [rootNode traverse:1 visitor:v11];
  leafNodeLabels = [self leafNodeLabels];
  nonLeafNodeLabels = [self nonLeafNodeLabels];
  [string appendFormat:@"Total nodes in graph via PV traverse API: %ld\nTotal nodes in graph via PV traverse API (removing visit duplicates): %ld\nLeaf nodes in graph via AX API: %ld\nNon-leaf nodes in graph via AX API: %ld\nTotal nodes in graph via AX API: %ld", v15[3], objc_msgSend(v6, "count"), objc_msgSend(leafNodeLabels, "count"), objc_msgSend(nonLeafNodeLabels, "count"), objc_msgSend(nonLeafNodeLabels, "count") + objc_msgSend(leafNodeLabels, "count")];

  _Block_object_dispose(&v14, 8);

  return string;
}

uint64_t __56__AXMPhotoVisionSupport_buildGraphStatisticsDescription__block_invoke(uint64_t a1, uint64_t a2)
{
  ++*(*(*(a1 + 40) + 8) + 24);
  [*(a1 + 32) addObject:a2];
  return 0;
}

+ (id)axmTaxonomyNodeForSceneTaxonomyNode:(id)node
{
  nodeCopy = node;
  v4 = objc_alloc_init(AXMTaxonomyNode);
  [nodeCopy searchThreshold];
  [(AXMTaxonomyNode *)v4 setConfidence:?];
  name = [nodeCopy name];
  [(AXMTaxonomyNode *)v4 setLabel:name];

  localizedLabel = [nodeCopy localizedLabel];
  [(AXMTaxonomyNode *)v4 setLocalizedName:localizedLabel];

  -[AXMTaxonomyNode setSceneClassId:](v4, "setSceneClassId:", [nodeCopy sceneClassId]);
  v7 = [MEMORY[0x1E695DFA8] set];
  detectors = [nodeCopy detectors];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__AXMPhotoVisionSupport_axmTaxonomyNodeForSceneTaxonomyNode___block_invoke;
  v11[3] = &unk_1E7A1D768;
  v12 = v7;
  v9 = v7;
  [detectors enumerateObjectsUsingBlock:v11];

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