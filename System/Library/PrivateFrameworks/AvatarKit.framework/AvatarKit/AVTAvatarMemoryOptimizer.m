@interface AVTAvatarMemoryOptimizer
+ (void)optimizeMemoji:(uint64_t)a1;
- (AVTAvatarMemoryOptimizer)initWithMemoji:(id)a3;
- (id)flattenTarget0:(id)a3 weight0:(float)a4 target1:(id)a5 weight1:(float)a6 inMorphTarget:(id)a7 originalMorphTarget:(id)a8;
- (void)applyMorphTarget:(id)a3 weight:(float)a4 toBaseGeometryBuffer:(void *)a5 vertexCount:(unint64_t)a6;
- (void)classifyTargetsOfMorpher:(id)a3 node:(id)a4;
- (void)flattenCorrectiveAtIndex:(unint64_t)a3 inBaseGeometryUsingWeight:(float)a4;
- (void)flattenCorrectiveAtIndex:(unint64_t)a3 inCorrectiveAtIndex:(unint64_t)a4 weight:(float)a5;
- (void)flattenCorrectiveAtIndex:(unint64_t)a3 inTargetAtIndex:(unint64_t)a4 weight:(float)a5;
- (void)flattenCorrectivesAtIndices:(id)a3 inCorrective:(id)a4 weight:(float)a5 morpher:(id)a6;
- (void)flattenCorrectivesAtIndices:(id)a3 inCorrectiveAtIndex:(unint64_t)a4 morpher:(id)a5;
- (void)flattenRelevantTargetsInOtherTargetsOfMorpher:(id)a3;
- (void)flattenRelevantTargetsOfMorpher:(id)a3 inBaseGeometryOfNode:(id)a4;
- (void)flattenTargetAtIndex:(unint64_t)a3 inBaseGeometryUsingWeight:(float)a4;
- (void)flattenTargetAtIndex:(unint64_t)a3 inTargetAtIndex:(unint64_t)a4 weight:(float)a5;
- (void)flattenTargetsAtIndices:(id)a3 correctivesAtIndices:(id)a4 inTarget:(id)a5 weight:(float)a6 morpher:(id)a7;
- (void)flattenTargetsAtIndices:(id)a3 correctivesAtIndices:(id)a4 inTargetAtIndex:(unint64_t)a5 morpher:(id)a6;
- (void)flattenTargetsOfMorpher:(id)a3 node:(id)a4;
- (void)keepCorrectiveAtIndex:(unint64_t)a3 morpher:(id)a4;
- (void)keepCorrectiveAtIndex:(unint64_t)a3 withDriverIndices:(id)a4 morpher:(id)a5;
- (void)keepTargetAtIndex:(unint64_t)a3 morpher:(id)a4;
- (void)optimizeMemoji;
- (void)optimizeNode:(id)a3;
- (void)optimizeNodeHierarchy:(id)a3;
- (void)preprocessMemoji;
- (void)registerRequiredVariant:(id)a3 weight:(float)a4 inHierarchy:(id)a5;
- (void)resolveInBetweensForTarget:(id)a3 weight:(float)a4 inBetweenWeights:(id)a5 inBetweenTargets:(id)a6 block:(id)a7;
@end

@implementation AVTAvatarMemoryOptimizer

+ (void)optimizeMemoji:(uint64_t)a1
{
  v3 = a2;
  objc_opt_self();
  if ([v3 usageIntent] == 2)
  {
    v2 = [[AVTAvatarMemoryOptimizer alloc] initWithMemoji:v3];
    [(AVTAvatarMemoryOptimizer *)v2 preprocessMemoji];
    [(AVTAvatarMemoryOptimizer *)v2 optimizeMemoji];
  }
}

- (AVTAvatarMemoryOptimizer)initWithMemoji:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AVTAvatarMemoryOptimizer;
  v6 = [(AVTAvatarMemoryOptimizer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_memoji, a3);
  }

  return v7;
}

- (void)registerRequiredVariant:(id)a3 weight:(float)a4 inHierarchy:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!v9)
  {
    [AVTAvatarMemoryOptimizer registerRequiredVariant:weight:inHierarchy:];
  }

  v10 = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__AVTAvatarMemoryOptimizer_registerRequiredVariant_weight_inHierarchy___block_invoke;
  v12[3] = &unk_1E7F47A98;
  v15 = a4;
  v13 = v8;
  v14 = self;
  v11 = v8;
  [v10 enumerateHierarchyUsingBlock:v12];
}

void __71__AVTAvatarMemoryOptimizer_registerRequiredVariant_weight_inHierarchy___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 morpher];
  if (v3)
  {
    v7 = v3;
    v4 = [v3 _weightIndexForTargetNamed:*(a1 + 32)];
    v3 = v7;
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      LODWORD(v5) = *(a1 + 48);
      [v7 setWeight:v5 forTargetAtIndex:?];
      v6 = [*(*(a1 + 40) + 16) objectForKey:v7];
      if (!v6)
      {
        v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        [*(*(a1 + 40) + 16) setObject:v6 forKey:v7];
      }

      [v6 addObject:*(a1 + 32)];

      v3 = v7;
    }
  }
}

- (void)preprocessMemoji
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:2 valueOptions:0 capacity:0];
  requiredVariantsPerMorpher = self->_requiredVariantsPerMorpher;
  self->_requiredVariantsPerMorpher = v3;

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  requiredMorphVariantComponents = self->_requiredMorphVariantComponents;
  self->_requiredMorphVariantComponents = v5;

  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  presetVariantPrefixes = self->_presetVariantPrefixes;
  self->_presetVariantPrefixes = v7;

  v34 = [(AVTMemoji *)self->_memoji allBuiltinAssetNodes];
  for (i = 0; i != 42; ++i)
  {
    if (i)
    {
      v36 = AVTComponentTypeToString(i);
      v35 = [@"variant_" stringByAppendingString:?];
      [(NSMutableSet *)self->_presetVariantPrefixes addObject:?];
      v37 = i;
      v38 = [(AVTMemoji *)self->_memoji componentWithType:i];
      v10 = [v38 morphVariant];
      v11 = v10;
      if (v10 && ([v10 isEqualToString:@"variant_none"] & 1) == 0)
      {
        [v38 morphVariantIntensity];
        v13 = v12;
        [(NSMutableArray *)self->_requiredMorphVariantComponents addObject:v38];
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v14 = v34;
        v15 = [v14 countByEnumeratingWithState:&v45 objects:v50 count:16];
        if (v15)
        {
          v17 = v15;
          v18 = *v46;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v46 != v18)
              {
                objc_enumerationMutation(v14);
              }

              LODWORD(v16) = v13;
              [(AVTAvatarMemoryOptimizer *)self registerRequiredVariant:v11 weight:*(*(&v45 + 1) + 8 * j) inHierarchy:v16];
            }

            v17 = [v14 countByEnumeratingWithState:&v45 objects:v50 count:16];
          }

          while (v17);
        }

        for (k = 0; k != 42; ++k)
        {
          if (k)
          {
            v21 = [(AVTMemoji *)self->_memoji componentWithType:k];
            v41 = 0u;
            v42 = 0u;
            v43 = 0u;
            v44 = 0u;
            v22 = [v21 assets];
            v23 = [v22 countByEnumeratingWithState:&v41 objects:v49 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v42;
              do
              {
                for (m = 0; m != v24; ++m)
                {
                  if (*v42 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v27 = *(*(&v41 + 1) + 8 * m);
                  if ([v27 is3DAsset])
                  {
                    v28 = [(AVTMemoji *)self->_memoji assetResourceCache];
                    v29 = [v28 resourceForAsset:v27];

                    LODWORD(v30) = v13;
                    [(AVTAvatarMemoryOptimizer *)self registerRequiredVariant:v11 weight:v29 inHierarchy:v30];
                  }
                }

                v24 = [v22 countByEnumeratingWithState:&v41 objects:v49 count:16];
              }

              while (v24);
            }
          }
        }
      }

      i = v37;
    }
  }

  for (n = 0; n != 40; ++n)
  {
    v32 = [(AVTMemoji *)self->_memoji resolvedPresetForCategory:n];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __44__AVTAvatarMemoryOptimizer_preprocessMemoji__block_invoke;
    v40[3] = &unk_1E7F47AC0;
    v40[4] = self;
    [v32 enumerateVariantDependenciesOfKind:0 block:v40];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __44__AVTAvatarMemoryOptimizer_preprocessMemoji__block_invoke_2;
    v39[3] = &unk_1E7F47AE8;
    v39[4] = self;
    [v32 enumerateAssetSpecificVariantDependenciesOfKind:0 block:v39];
  }

  v33 = *MEMORY[0x1E69E9840];
}

void __44__AVTAvatarMemoryOptimizer_preprocessMemoji__block_invoke(uint64_t a1, unint64_t a2, void *a3, float a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = AVTPresetCategoryToComponentType(a2);
  v9 = [*(*(a1 + 32) + 8) componentWithType:v8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = [v9 assets];
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        if ([v15 is3DAsset])
        {
          v16 = [*(*(a1 + 32) + 8) assetResourceCache];
          v17 = [v16 resourceForAsset:v15];

          *&v18 = a4;
          [*(a1 + 32) registerRequiredVariant:v7 weight:v17 inHierarchy:v18];
          [*(*(a1 + 32) + 32) addObject:v7];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v12);
  }

  v19 = [*(*(a1 + 32) + 8) builtinAssetNodesForComponentType:v8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v20)
  {
    v22 = v20;
    v23 = *v27;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(v19);
        }

        *&v21 = a4;
        [*(a1 + 32) registerRequiredVariant:v7 weight:*(*(&v26 + 1) + 8 * j) inHierarchy:v21];
        [*(*(a1 + 32) + 32) addObject:v7];
      }

      v22 = [v19 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v22);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __44__AVTAvatarMemoryOptimizer_preprocessMemoji__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v27 = a2;
  [*(*(a1 + 32) + 8) componentWithType:a2];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v28 = v36 = 0u;
  v9 = [v28 assets];
  v10 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v34;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v33 + 1) + 8 * i);
        if ([v14 is3DAsset])
        {
          v15 = [v14 identifier];
          v16 = [v15 isEqualToString:v7];

          if (v16)
          {
            v17 = [*(*(a1 + 32) + 8) assetResourceCache];
            v18 = [v17 resourceForAsset:v14];

            LODWORD(v19) = 1.0;
            [*(a1 + 32) registerRequiredVariant:v8 weight:v18 inHierarchy:v19];
            [*(*(a1 + 32) + 32) addObject:v8];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v11);
  }

  v20 = [*(*(a1 + 32) + 8) builtinAssetNodesForComponentType:v27];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v21 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v21)
  {
    v23 = v21;
    v24 = *v30;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(v20);
        }

        LODWORD(v22) = 1.0;
        [*(a1 + 32) registerRequiredVariant:v8 weight:*(*(&v29 + 1) + 8 * j) inHierarchy:v22];
        [*(*(a1 + 32) + 32) addObject:v8];
      }

      v23 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v23);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)optimizeMemoji
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [(AVTMemoji *)self->_memoji allBuiltinAssetNodes];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(AVTAvatarMemoryOptimizer *)self optimizeNodeHierarchy:*(*(&v23 + 1) + 8 * i)];
      }

      v5 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  for (j = 0; j != 42; ++j)
  {
    if (j)
    {
      v9 = [(AVTMemoji *)self->_memoji componentWithType:j];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = [v9 assets];
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v20;
        do
        {
          for (k = 0; k != v12; ++k)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v19 + 1) + 8 * k);
            if ([v15 is3DAsset])
            {
              v16 = [(AVTMemoji *)self->_memoji assetResourceCache];
              v17 = [v16 resourceForAsset:v15];

              [(AVTAvatarMemoryOptimizer *)self optimizeNodeHierarchy:v17];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
        }

        while (v12);
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)optimizeNodeHierarchy:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [AVTAvatarMemoryOptimizer optimizeNodeHierarchy:];
  }

  v5 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__AVTAvatarMemoryOptimizer_optimizeNodeHierarchy___block_invoke;
  v6[3] = &unk_1E7F47B10;
  v6[4] = self;
  [v4 enumerateHierarchyUsingBlock:v6];
}

- (void)optimizeNode:(id)a3
{
  v51 = a3;
  v4 = [v51 morpher];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 weights];
    oldWeights = self->_oldWeights;
    self->_oldWeights = v6;

    v8 = [v5 targets];
    oldMainTargets = self->_oldMainTargets;
    self->_oldMainTargets = v8;

    v10 = [v5 inBetweenCounts];
    self->_hasInBetweens = [v10 count] != 0;

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    newWeights = self->_newWeights;
    self->_newWeights = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    newTargetsAndInBetweens = self->_newTargetsAndInBetweens;
    self->_newTargetsAndInBetweens = v13;

    if (self->_hasInBetweens)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v15 = 0;
    }

    newInBetweenCounts = self->_newInBetweenCounts;
    self->_newInBetweenCounts = v15;

    if (self->_hasInBetweens)
    {
      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v17 = 0;
    }

    newInBetweenWeights = self->_newInBetweenWeights;
    self->_newInBetweenWeights = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    indicesOfTargetsToFlattenInBaseGeometry = self->_indicesOfTargetsToFlattenInBaseGeometry;
    self->_indicesOfTargetsToFlattenInBaseGeometry = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    indicesOfTargetsToFlattenInOtherTarget = self->_indicesOfTargetsToFlattenInOtherTarget;
    self->_indicesOfTargetsToFlattenInOtherTarget = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    nonOneWeightsOfTargetsToFlatten = self->_nonOneWeightsOfTargetsToFlatten;
    self->_nonOneWeightsOfTargetsToFlatten = v23;

    v25 = [v5 correctives];
    oldCorrectives = self->_oldCorrectives;
    self->_oldCorrectives = v25;

    v27 = [v5 correctiveDriverCounts];
    oldCorrectiveDriverCounts = self->_oldCorrectiveDriverCounts;
    self->_oldCorrectiveDriverCounts = v27;

    v29 = [v5 correctiveDriverIndices];
    oldCorrectiveDriverIndices = self->_oldCorrectiveDriverIndices;
    self->_oldCorrectiveDriverIndices = v29;

    v31 = [(NSArray *)self->_oldCorrectiveDriverCounts count];
    self->_hasCorrectives = v31 != 0;
    if (v31)
    {
      v32 = [v5 correctiveInBetweenCounts];
      self->_hasCorrectiveInBetweens = [v32 count] != 0;
    }

    else
    {
      self->_hasCorrectiveInBetweens = 0;
    }

    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    newCorrectivesAndInBetweens = self->_newCorrectivesAndInBetweens;
    self->_newCorrectivesAndInBetweens = v33;

    if (self->_hasCorrectives)
    {
      v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v35 = 0;
    }

    newCorrectiveDriverCounts = self->_newCorrectiveDriverCounts;
    self->_newCorrectiveDriverCounts = v35;

    if (self->_hasCorrectives)
    {
      v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v37 = 0;
    }

    newCorrectiveDriverIndices = self->_newCorrectiveDriverIndices;
    self->_newCorrectiveDriverIndices = v37;

    if (self->_hasCorrectiveInBetweens)
    {
      v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v39 = 0;
    }

    newCorrectiveInBetweenCounts = self->_newCorrectiveInBetweenCounts;
    self->_newCorrectiveInBetweenCounts = v39;

    if (self->_hasCorrectiveInBetweens)
    {
      v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v41 = 0;
    }

    newCorrectiveInBetweenWeights = self->_newCorrectiveInBetweenWeights;
    self->_newCorrectiveInBetweenWeights = v41;

    if (self->_hasCorrectives)
    {
      v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v43 = 0;
    }

    indicesOfCorrectivesToFlattenInBaseGeometry = self->_indicesOfCorrectivesToFlattenInBaseGeometry;
    self->_indicesOfCorrectivesToFlattenInBaseGeometry = v43;

    if (self->_hasCorrectives)
    {
      v45 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    else
    {
      v45 = 0;
    }

    indicesOfCorrectivesToFlattenInMainTarget = self->_indicesOfCorrectivesToFlattenInMainTarget;
    self->_indicesOfCorrectivesToFlattenInMainTarget = v45;

    if (self->_hasCorrectives)
    {
      v47 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    else
    {
      v47 = 0;
    }

    indicesOfCorrectivesToFlattenInOtherCorrective = self->_indicesOfCorrectivesToFlattenInOtherCorrective;
    self->_indicesOfCorrectivesToFlattenInOtherCorrective = v47;

    if (self->_hasCorrectives)
    {
      v49 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    else
    {
      v49 = 0;
    }

    nonOneWeightsOfCorrectivesToFlatten = self->_nonOneWeightsOfCorrectivesToFlatten;
    self->_nonOneWeightsOfCorrectivesToFlatten = v49;

    [(AVTAvatarMemoryOptimizer *)self classifyTargetsOfMorpher:v5 node:v51];
    [(AVTAvatarMemoryOptimizer *)self flattenTargetsOfMorpher:v5 node:v51];
  }
}

- (void)classifyTargetsOfMorpher:(id)a3 node:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v28 = a4;
  v7 = [(NSMapTable *)self->_requiredVariantsPerMorpher objectForKey:v6];
  oldMainTargets = self->_oldMainTargets;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke;
  v40[3] = &unk_1E7F47B60;
  v40[4] = self;
  v9 = v6;
  v41 = v9;
  v10 = v7;
  v42 = v10;
  [(NSArray *)oldMainTargets enumerateObjectsUsingBlock:v40];
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v39[3] = 0;
  oldCorrectives = self->_oldCorrectives;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_2;
  v35[3] = &unk_1E7F47BB0;
  v35[4] = self;
  v38 = v39;
  v27 = v10;
  v36 = v27;
  v26 = v9;
  v37 = v26;
  [(NSArray *)oldCorrectives enumerateObjectsUsingBlock:v35];
  for (i = 0; i < [(NSMutableArray *)self->_newCorrectiveDriverIndices count]; i = v30 + 1)
  {
    v13 = [(NSMutableArray *)self->_newCorrectiveDriverIndices objectAtIndexedSubscript:i];
    v14 = -[NSArray objectAtIndexedSubscript:](self->_oldMainTargets, "objectAtIndexedSubscript:", [v13 unsignedIntegerValue]);
    v30 = i;
    if ([(NSMutableArray *)self->_newInBetweenCounts count])
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v15 = self->_newInBetweenCounts;
      v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v31 objects:v45 count:16];
      if (v16)
      {
        v17 = 0;
        v18 = 0;
        v19 = *v32;
LABEL_6:
        v20 = 0;
        v29 = v18 + v16;
        while (1)
        {
          if (*v32 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v17 += [*(*(&v31 + 1) + 8 * v20) unsignedIntegerValue];
          v21 = [(NSMutableArray *)self->_newTargetsAndInBetweens objectAtIndexedSubscript:v17 - 1];
          v22 = v21 == v14;

          if (v22)
          {
            break;
          }

          ++v18;
          if (v16 == ++v20)
          {
            v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v31 objects:v45 count:16];
            v18 = v29;
            if (v16)
            {
              goto LABEL_6;
            }

            goto LABEL_12;
          }
        }
      }

      else
      {
LABEL_12:
        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v18 = [(NSMutableArray *)self->_newTargetsAndInBetweens indexOfObject:v14];
    }

    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = avt_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [(AVTAvatarMemoryOptimizer *)buf classifyTargetsOfMorpher:v23 node:?];
      }
    }

    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v18];
    [(NSMutableArray *)self->_newCorrectiveDriverIndices setObject:v24 atIndexedSubscript:v30];
  }

  _Block_object_dispose(v39, 8);
  v25 = *MEMORY[0x1E69E9840];
}

void __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke(id *a1, void *a2, uint64_t a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 name];
  if (AVTMorphTargetNameIsUsedForFaceAnimation(v6) || AVTMorphTargetNameIsUsedForDynamics(v6, v7))
  {
LABEL_3:
    [a1[4] keepTargetAtIndex:a3 morpher:a1[5]];
    goto LABEL_4;
  }

  if ([v6 isEqualToString:@"Emoji"])
  {
    goto LABEL_4;
  }

  if ([v6 containsString:@"__"])
  {
    v9 = [v6 componentsSeparatedByString:@"__"];
    v10 = [v9 count];
    if (v10 < 6)
    {
      v12 = v10;
      v58 = 0;
      v57 = 0;
      if (v10)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 1.0;
        v49 = v10;
        v48 = v9;
        do
        {
          v17 = [v9 objectAtIndexedSubscript:v15];
          if (AVTMorphTargetNameIsUsedForFaceAnimation(v17))
          {
            ++v14;
          }

          else
          {
            v50 = v13;
            v18 = *(a1[4] + 3);
            v55[0] = MEMORY[0x1E69E9820];
            v55[1] = 3221225472;
            v55[2] = __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_40;
            v55[3] = &unk_1E7F47B38;
            v19 = v17;
            v56 = v19;
            v20 = [v18 indexOfObjectPassingTest:v55];
            v21 = 0.0;
            if (v20 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v22 = [*(a1[4] + 3) objectAtIndexedSubscript:v20];
              [v22 morphVariantIntensity];
              v21 = v23;
            }

            v24 = [a1[6] containsObject:v19];
            v25 = v24;
            if (v20 == 0x7FFFFFFFFFFFFFFFLL && v24 != 0)
            {
              v27 = [a1[5] _weightIndexForTargetNamed:v19];
              if (v27 == 0x7FFFFFFFFFFFFFFFLL)
              {
                __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_cold_2();
              }

              [a1[5] weightForTargetAtIndex:v27];
              v21 = v28;
            }

            if (!((v20 != 0x7FFFFFFFFFFFFFFFLL) | v25 & 1))
            {

              v9 = v48;
              goto LABEL_71;
            }

            v16 = fminf(v16, v21);
            *(&v57 + v15) = 1;
            v13 = v50 + 1;

            v9 = v48;
            v12 = v49;
          }

          ++v15;
        }

        while (v12 != v15);
        if (v14 == v12)
        {
          goto LABEL_30;
        }

        if (v13 == v12)
        {
          *&v29 = v16;
          [a1[4] flattenTargetAtIndex:a3 inBaseGeometryUsingWeight:v29];
        }

        else
        {
          if (v13 + v14 != v12)
          {
            __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_cold_3();
          }

          if (v14 == 1)
          {
            v35 = 0;
            while ((*(&v57 + v35) & 1) != 0)
            {
              if (v12 == ++v35)
              {
                v36 = 0;
                goto LABEL_63;
              }
            }

            v36 = [v9 objectAtIndexedSubscript:?];
LABEL_63:
            v45 = [a1[5] _weightIndexForTargetNamed:v36];
            if (v45 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v47 = avt_default_log();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_cold_4();
              }

              [v5 setName:v36];
              [a1[4] keepTargetAtIndex:a3 morpher:a1[5]];
            }

            else
            {
              *&v46 = v16;
              [a1[4] flattenTargetAtIndex:a3 inTargetAtIndex:v45 weight:v46];
            }
          }

          else
          {
            v37 = 0;
            v38 = 0;
            do
            {
              if ((*(&v57 + v37) & 1) == 0)
              {
                v39 = [v9 objectAtIndexedSubscript:v37];
                v40 = v39;
                if (v38)
                {
                  [v38 stringByAppendingFormat:@"__%@", v39];
                  v42 = v41 = v9;

                  v38 = v42;
                  v9 = v41;
                  v12 = v49;
                }

                else
                {
                  v38 = v39;
                }
              }

              ++v37;
            }

            while (v12 != v37);
            v43 = [a1[5] _weightIndexForTargetNamed:v38];
            if (v43 == 0x7FFFFFFFFFFFFFFFLL)
            {
              [v5 setName:v38];
              [a1[4] keepTargetAtIndex:a3 morpher:a1[5]];
            }

            else
            {
              *&v44 = v16;
              [a1[4] flattenTargetAtIndex:a3 inTargetAtIndex:v43 weight:v44];
            }
          }
        }
      }

      else
      {
LABEL_30:
        [a1[4] keepTargetAtIndex:a3 morpher:a1[5]];
      }
    }

    else
    {
      v11 = avt_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_cold_5();
      }
    }

LABEL_71:
  }

  else
  {
    if ([v6 hasPrefix:@"variant_sticker"])
    {
      if ([*(a1[4] + 1) usageIntent] != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_3;
    }

    if ([a1[6] containsObject:v6])
    {
      [a1[5] weightForTargetAtIndex:a3];
      [a1[4] flattenTargetAtIndex:a3 inBaseGeometryUsingWeight:?];
    }

    else
    {
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v30 = *(a1[4] + 4);
      v31 = [v30 countByEnumeratingWithState:&v51 objects:v59 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v52;
        while (2)
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v52 != v33)
            {
              objc_enumerationMutation(v30);
            }

            if ([v6 hasPrefix:*(*(&v51 + 1) + 8 * i)])
            {

              goto LABEL_4;
            }
          }

          v32 = [v30 countByEnumeratingWithState:&v51 objects:v59 count:16];
          if (v32)
          {
            continue;
          }

          break;
        }
      }

      if (([v6 hasPrefix:@"variant_"] & 1) == 0)
      {
        __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_cold_1();
      }
    }
  }

LABEL_4:

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_40(uint64_t a1, void *a2)
{
  v3 = [a2 morphVariant];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 name];
  v69 = a1;
  v7 = [*(*(a1 + 32) + 128) objectAtIndexedSubscript:a3];
  v8 = [v7 unsignedIntegerValue];

  v70 = (a1 + 32);
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 24);
  *(v9 + 24) = v10 + v8;
  if (v8 < 6)
  {
    v76 = 0;
    v75 = 0;
    if (v8)
    {
      v66 = a3;
      v67 = v6;
      v12 = 0;
      v13 = 0;
      v68 = v5;
      v14 = 1.0;
      v15 = &v75;
      v64 = v8;
      v65 = v10;
      v16 = v10;
      v17 = v8;
      v18 = v70;
      do
      {
        v19 = [*(*v18 + 17) objectAtIndexedSubscript:v16];
        v20 = [v19 unsignedIntegerValue];

        v21 = [*(*v18 + 6) objectAtIndexedSubscript:v20];
        v22 = [v21 name];

        if (AVTMorphTargetNameIsUsedForFaceAnimation(v22))
        {
          ++v13;
        }

        else
        {
          v23 = v12;
          v24 = *(*v18 + 3);
          v73[0] = MEMORY[0x1E69E9820];
          v73[1] = 3221225472;
          v73[2] = __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_53;
          v73[3] = &unk_1E7F47B38;
          v25 = v22;
          v74 = v25;
          v26 = [v24 indexOfObjectPassingTest:v73];
          v27 = 0.0;
          if (v26 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v28 = [*(*v70 + 3) objectAtIndexedSubscript:v26];
            [v28 morphVariantIntensity];
            v27 = v29;
          }

          v30 = [v69[5] containsObject:v25];
          v31 = v30;
          if (v26 == 0x7FFFFFFFFFFFFFFFLL && v30 != 0)
          {
            [v69[6] weightForTargetAtIndex:v20];
            v27 = v33;
          }

          if (!((v26 != 0x7FFFFFFFFFFFFFFFLL) | v31 & 1))
          {

            v6 = v67;
            v5 = v68;
            goto LABEL_47;
          }

          v14 = fminf(v14, v27);
          *v15 = 1;
          v12 = v23 + 1;

          v18 = v70;
        }

        v15 = (v15 + 1);
        ++v16;
        --v17;
      }

      while (v17);
      v36 = v64;
      v35 = v65;
      v6 = v67;
      v5 = v68;
      a3 = v66;
      if (v13 == v64)
      {
        goto LABEL_20;
      }

      if (v12 == v64)
      {
        *&v34 = v14;
        [*v70 flattenCorrectiveAtIndex:v66 inBaseGeometryUsingWeight:v34];
      }

      else
      {
        v37 = v70;
        if (v12 + v13 != v64)
        {
          __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_2_cold_1();
        }

        if (v13 == 1)
        {
          v38 = &v75;
          while (*v38++)
          {
            ++v35;
            if (!--v36)
            {
              v40 = 0;
              goto LABEL_40;
            }
          }

          v59 = [*(*v70 + 17) objectAtIndexedSubscript:v35];
          v60 = [v59 unsignedIntegerValue];

          v61 = [*(*v70 + 6) objectAtIndexedSubscript:v60];
          v40 = [v61 name];

          if (v60 != 0x7FFFFFFFFFFFFFFFLL)
          {
            *&v62 = v14;
            [*v70 flattenCorrectiveAtIndex:v66 inTargetAtIndex:v60 weight:v62];
            goto LABEL_46;
          }

LABEL_40:
          v63 = avt_default_log();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_cold_4();
          }

LABEL_46:
        }

        else
        {
          v41 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v64];
          v42 = v65;
          v43 = v41;
          v44 = 0;
          v45 = &v75;
          do
          {
            v46 = *v45++;
            if ((v46 & 1) == 0)
            {
              v47 = v42;
              v48 = [*(*v37 + 17) objectAtIndexedSubscript:?];
              v49 = v37;
              v50 = v48;
              v51 = [*(*v49 + 6) objectAtIndexedSubscript:{objc_msgSend(v48, "unsignedIntegerValue")}];
              v52 = [v51 name];

              [v43 addObject:v50];
              if (v44)
              {
                v53 = [v44 stringByAppendingFormat:@"__%@", v52];

                v44 = v53;
              }

              else
              {
                v44 = v52;
              }

              v42 = v47;
              v37 = v70;
            }

            ++v42;
            --v36;
          }

          while (v36);
          v54 = *(*v37 + 15);
          v71[0] = MEMORY[0x1E69E9820];
          v71[1] = 3221225472;
          v71[2] = __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_54;
          v71[3] = &unk_1E7F47B88;
          v72 = v44;
          v55 = v37;
          v56 = v44;
          v57 = [v54 indexOfObjectPassingTest:v71];
          if (v57 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v68 setName:v56];
            [v69[4] keepCorrectiveAtIndex:v66 withDriverIndices:v43 morpher:v69[6]];
          }

          else
          {
            *&v58 = v14;
            [*v55 flattenCorrectiveAtIndex:v66 inCorrectiveAtIndex:v57 weight:v58];
          }
        }
      }
    }

    else
    {
LABEL_20:
      [v69[4] keepCorrectiveAtIndex:a3 morpher:v69[6]];
    }
  }

  else
  {
    v11 = avt_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_2_cold_3(v70, a3, v11);
    }
  }

LABEL_47:
}

uint64_t __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_53(uint64_t a1, void *a2)
{
  v3 = [a2 morphVariant];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_54(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)flattenTargetsOfMorpher:(id)a3 node:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(AVTAvatarMemoryOptimizer *)self flattenRelevantTargetsOfMorpher:v7 inBaseGeometryOfNode:v6];
  [(AVTAvatarMemoryOptimizer *)self flattenRelevantTargetsInOtherTargetsOfMorpher:v7];

  if ([(NSMutableArray *)self->_newTargetsAndInBetweens count])
  {
    v10 = [v6 morpher];

    if ([(AVTAvatarMemoryOptimizer *)self shouldClearCPUDataAfterUpload])
    {
      [v10 setShouldClearCPUDataAfterUpload:1];
    }

    if ([(NSMutableArray *)self->_newInBetweenCounts count]&& [(NSMutableArray *)self->_newInBetweenWeights count])
    {
      newCorrectiveInBetweenCounts = self->_newCorrectiveInBetweenCounts;
      [v10 setTargetsAndInBetweens:self->_newTargetsAndInBetweens inBetweenCounts:self->_newInBetweenCounts inBetweenWeights:self->_newInBetweenWeights correctives:self->_newCorrectivesAndInBetweens driverCounts:self->_newCorrectiveDriverCounts driverIndices:self->_newCorrectiveDriverIndices inBetweenCounts:newCorrectiveInBetweenCounts inBetweenWeights:self->_newCorrectiveInBetweenWeights];
    }

    else
    {
      [v10 setTargets:self->_newTargetsAndInBetweens];
    }

    [v10 setWeights:self->_newWeights];
    v9 = v10;
  }

  else
  {
    [v6 setMorpher:0];
    v9 = v6;
  }
}

- (void)keepTargetAtIndex:(unint64_t)a3 morpher:(id)a4
{
  v6 = a4;
  v14 = v6;
  if (self->_hasInBetweens)
  {
    v7 = [v6 inBetweenTargetsForTargetAtIndex:a3];
    v8 = [v14 inBetweenWeightsForTargetAtIndex:a3];
    newInBetweenCounts = self->_newInBetweenCounts;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "count") + 1}];
    [(NSMutableArray *)newInBetweenCounts addObject:v10];

    [(NSMutableArray *)self->_newInBetweenWeights addObjectsFromArray:v8];
    v11 = [(NSArray *)self->_oldMainTargets objectAtIndexedSubscript:a3];
    [(NSMutableArray *)self->_newTargetsAndInBetweens addObjectsFromArray:v7];
    [(NSMutableArray *)self->_newTargetsAndInBetweens addObject:v11];
  }

  else
  {
    v7 = [(NSArray *)self->_oldMainTargets objectAtIndexedSubscript:a3];
    [(NSMutableArray *)self->_newTargetsAndInBetweens addObject:v7];
  }

  newWeights = self->_newWeights;
  v13 = [(NSArray *)self->_oldWeights objectAtIndexedSubscript:a3];
  [(NSMutableArray *)newWeights addObject:v13];
}

- (void)keepCorrectiveAtIndex:(unint64_t)a3 morpher:(id)a4
{
  v13 = a4;
  v6 = [(NSArray *)self->_oldCorrectiveDriverCounts objectAtIndexedSubscript:a3];
  v7 = [v13 correctiveDriverIndicesForCorrectiveAtIndex:a3];
  [(NSMutableArray *)self->_newCorrectiveDriverCounts addObject:v6];
  [(NSMutableArray *)self->_newCorrectiveDriverIndices addObjectsFromArray:v7];
  if (self->_hasInBetweens)
  {
    v8 = [v13 inBetweenTargetsForCorrectiveAtIndex:a3];
    v9 = [v13 inBetweenWeightsForCorrectiveAtIndex:a3];
    newCorrectiveInBetweenCounts = self->_newCorrectiveInBetweenCounts;
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "count") + 1}];
    [(NSMutableArray *)newCorrectiveInBetweenCounts addObject:v11];

    [(NSMutableArray *)self->_newCorrectiveInBetweenWeights addObjectsFromArray:v9];
    v12 = [(NSArray *)self->_oldCorrectives objectAtIndexedSubscript:a3];
    [(NSMutableArray *)self->_newCorrectivesAndInBetweens addObjectsFromArray:v8];
    [(NSMutableArray *)self->_newCorrectivesAndInBetweens addObject:v12];
  }

  else
  {
    v8 = [(NSArray *)self->_oldCorrectives objectAtIndexedSubscript:a3];
    [(NSMutableArray *)self->_newCorrectivesAndInBetweens addObject:v8];
  }
}

- (void)keepCorrectiveAtIndex:(unint64_t)a3 withDriverIndices:(id)a4 morpher:(id)a5
{
  v17 = a5;
  newCorrectiveDriverCounts = self->_newCorrectiveDriverCounts;
  v9 = MEMORY[0x1E696AD98];
  v10 = a4;
  v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
  [(NSMutableArray *)newCorrectiveDriverCounts addObject:v11];

  [(NSMutableArray *)self->_newCorrectiveDriverIndices addObjectsFromArray:v10];
  if (self->_hasInBetweens)
  {
    v12 = [v17 inBetweenTargetsForCorrectiveAtIndex:a3];
    v13 = [v17 inBetweenWeightsForCorrectiveAtIndex:a3];
    newCorrectiveInBetweenCounts = self->_newCorrectiveInBetweenCounts;
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v13, "count") + 1}];
    [(NSMutableArray *)newCorrectiveInBetweenCounts addObject:v15];

    [(NSMutableArray *)self->_newCorrectiveInBetweenWeights addObjectsFromArray:v13];
    v16 = [(NSArray *)self->_oldCorrectives objectAtIndexedSubscript:a3];
    [(NSMutableArray *)self->_newCorrectivesAndInBetweens addObjectsFromArray:v12];
    [(NSMutableArray *)self->_newCorrectivesAndInBetweens addObject:v16];
  }

  else
  {
    v12 = [(NSArray *)self->_oldCorrectives objectAtIndexedSubscript:a3];
    [(NSMutableArray *)self->_newCorrectivesAndInBetweens addObject:v12];
  }
}

- (void)flattenTargetAtIndex:(unint64_t)a3 inBaseGeometryUsingWeight:(float)a4
{
  if (a4 != 0.0)
  {
    if (a4 < 1.0)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      nonOneWeightsOfTargetsToFlatten = self->_nonOneWeightsOfTargetsToFlatten;
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      [(NSMutableDictionary *)nonOneWeightsOfTargetsToFlatten setObject:v7 forKeyedSubscript:v9];
    }

    indicesOfTargetsToFlattenInBaseGeometry = self->_indicesOfTargetsToFlattenInBaseGeometry;
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(NSMutableArray *)indicesOfTargetsToFlattenInBaseGeometry addObject:v11];
  }
}

- (void)flattenTargetAtIndex:(unint64_t)a3 inTargetAtIndex:(unint64_t)a4 weight:(float)a5
{
  if (a5 != 0.0)
  {
    if (a5 < 1.0)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      nonOneWeightsOfTargetsToFlatten = self->_nonOneWeightsOfTargetsToFlatten;
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      [(NSMutableDictionary *)nonOneWeightsOfTargetsToFlatten setObject:v9 forKeyedSubscript:v11];
    }

    indicesOfTargetsToFlattenInOtherTarget = self->_indicesOfTargetsToFlattenInOtherTarget;
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    v17 = [(NSMutableDictionary *)indicesOfTargetsToFlattenInOtherTarget objectForKeyedSubscript:v13];

    if (!v17)
    {
      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v14 = self->_indicesOfTargetsToFlattenInOtherTarget;
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
      [(NSMutableDictionary *)v14 setObject:v17 forKeyedSubscript:v15];
    }

    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v17 addObject:v16];
  }
}

- (void)flattenCorrectiveAtIndex:(unint64_t)a3 inBaseGeometryUsingWeight:(float)a4
{
  if (a4 != 0.0)
  {
    if (a4 < 1.0)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      nonOneWeightsOfCorrectivesToFlatten = self->_nonOneWeightsOfCorrectivesToFlatten;
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      [(NSMutableDictionary *)nonOneWeightsOfCorrectivesToFlatten setObject:v7 forKeyedSubscript:v9];
    }

    indicesOfCorrectivesToFlattenInBaseGeometry = self->_indicesOfCorrectivesToFlattenInBaseGeometry;
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(NSMutableArray *)indicesOfCorrectivesToFlattenInBaseGeometry addObject:v11];
  }
}

- (void)flattenCorrectiveAtIndex:(unint64_t)a3 inTargetAtIndex:(unint64_t)a4 weight:(float)a5
{
  if (a5 != 0.0)
  {
    if (a5 < 1.0)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      nonOneWeightsOfCorrectivesToFlatten = self->_nonOneWeightsOfCorrectivesToFlatten;
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      [(NSMutableDictionary *)nonOneWeightsOfCorrectivesToFlatten setObject:v9 forKeyedSubscript:v11];
    }

    indicesOfCorrectivesToFlattenInMainTarget = self->_indicesOfCorrectivesToFlattenInMainTarget;
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    v17 = [(NSMutableDictionary *)indicesOfCorrectivesToFlattenInMainTarget objectForKeyedSubscript:v13];

    if (!v17)
    {
      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v14 = self->_indicesOfCorrectivesToFlattenInMainTarget;
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
      [(NSMutableDictionary *)v14 setObject:v17 forKeyedSubscript:v15];
    }

    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v17 addObject:v16];
  }
}

- (void)flattenCorrectiveAtIndex:(unint64_t)a3 inCorrectiveAtIndex:(unint64_t)a4 weight:(float)a5
{
  if (a5 != 0.0)
  {
    if (a5 < 1.0)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      nonOneWeightsOfCorrectivesToFlatten = self->_nonOneWeightsOfCorrectivesToFlatten;
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      [(NSMutableDictionary *)nonOneWeightsOfCorrectivesToFlatten setObject:v9 forKeyedSubscript:v11];
    }

    indicesOfCorrectivesToFlattenInOtherCorrective = self->_indicesOfCorrectivesToFlattenInOtherCorrective;
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    v17 = [(NSMutableDictionary *)indicesOfCorrectivesToFlattenInOtherCorrective objectForKeyedSubscript:v13];

    if (!v17)
    {
      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v14 = self->_indicesOfCorrectivesToFlattenInOtherCorrective;
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
      [(NSMutableDictionary *)v14 setObject:v17 forKeyedSubscript:v15];
    }

    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v17 addObject:v16];
  }
}

- (void)flattenRelevantTargetsOfMorpher:(id)a3 inBaseGeometryOfNode:(id)a4
{
  v83 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(NSMutableArray *)self->_indicesOfTargetsToFlattenInBaseGeometry count]|| [(NSMutableArray *)self->_indicesOfCorrectivesToFlattenInBaseGeometry count])
  {
    v8 = [v7 model];
    v9 = [v8 mesh];

    v59 = v9;
    v10 = [v9 meshSources];
    v63 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v76 objects:v82 count:16];
    if (v11)
    {
      v12 = v11;
      v64 = 0;
      v65 = 0;
      v13 = *v77;
      v14 = *MEMORY[0x1E69DF3A8];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v77 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v76 + 1) + 8 * i);
          v17 = [v16 semantic];
          v18 = [v17 isEqualToString:v14];

          if (v18)
          {
            v19 = [v16 vectorCount];
            v20 = [v16 data];
            v21 = [v20 mutableCopy];

            v64 = [v21 mutableBytes];
            v65 = v19;
            v22 = [MEMORY[0x1E69DF310] meshSourceWithData:v21 semantic:v14 vectorCount:v19 floatComponents:1 componentsPerVector:3 bytesPerComponent:2 dataOffset:0 dataStride:8];
            [v63 addObject:v22];
          }

          else
          {
            [v63 addObject:v16];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v76 objects:v82 count:16];
      }

      while (v12);
    }

    else
    {
      v64 = 0;
      v65 = 0;
    }

    v23 = MEMORY[0x1E69DF308];
    v24 = [v59 meshElements];
    v25 = [v59 meshSourceChannels];
    v26 = [v23 meshWithSources:v63 elements:v24 sourceChannels:v25];

    v58 = v7;
    v27 = [v7 model];
    v57 = v26;
    [v27 setMesh:v26];

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v60 = self->_indicesOfTargetsToFlattenInBaseGeometry;
    v28 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v72 objects:v81 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v73;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v73 != v30)
          {
            objc_enumerationMutation(v60);
          }

          v32 = *(*(&v72 + 1) + 8 * j);
          v33 = [v32 unsignedIntegerValue];
          v34 = [(NSArray *)self->_oldMainTargets objectAtIndexedSubscript:v33];
          v35 = [(NSMutableDictionary *)self->_nonOneWeightsOfTargetsToFlatten objectForKeyedSubscript:v32];
          v36 = v35;
          if (v35)
          {
            [v35 floatValue];
            v38 = v37;
          }

          else
          {
            v38 = 1.0;
          }

          v39 = [v6 inBetweenWeightsForTargetAtIndex:v33];
          v40 = [v6 inBetweenTargetsForTargetAtIndex:v33];
          v71[0] = MEMORY[0x1E69E9820];
          v71[1] = 3221225472;
          v71[2] = __81__AVTAvatarMemoryOptimizer_flattenRelevantTargetsOfMorpher_inBaseGeometryOfNode___block_invoke;
          v71[3] = &unk_1E7F47BD8;
          v71[4] = self;
          v71[5] = v64;
          v71[6] = v65;
          *&v41 = v38;
          [(AVTAvatarMemoryOptimizer *)self resolveInBetweensForTarget:v34 weight:v39 inBetweenWeights:v40 inBetweenTargets:v71 block:v41];
        }

        v29 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v72 objects:v81 count:16];
      }

      while (v29);
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v61 = self->_indicesOfCorrectivesToFlattenInBaseGeometry;
    v42 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v67 objects:v80 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v68;
      do
      {
        for (k = 0; k != v43; ++k)
        {
          if (*v68 != v44)
          {
            objc_enumerationMutation(v61);
          }

          v46 = *(*(&v67 + 1) + 8 * k);
          v47 = [v46 unsignedIntegerValue];
          v48 = [(NSArray *)self->_oldCorrectives objectAtIndexedSubscript:v47];
          v49 = [(NSMutableDictionary *)self->_nonOneWeightsOfCorrectivesToFlatten objectForKeyedSubscript:v46];
          v50 = v49;
          if (v49)
          {
            [v49 floatValue];
            v52 = v51;
          }

          else
          {
            v52 = 1.0;
          }

          v53 = [v6 inBetweenWeightsForCorrectiveAtIndex:v47];
          v54 = [v6 inBetweenTargetsForCorrectiveAtIndex:v47];
          v66[0] = MEMORY[0x1E69E9820];
          v66[1] = 3221225472;
          v66[2] = __81__AVTAvatarMemoryOptimizer_flattenRelevantTargetsOfMorpher_inBaseGeometryOfNode___block_invoke_2;
          v66[3] = &unk_1E7F47BD8;
          v66[4] = self;
          v66[5] = v64;
          v66[6] = v65;
          *&v55 = v52;
          [(AVTAvatarMemoryOptimizer *)self resolveInBetweensForTarget:v48 weight:v53 inBetweenWeights:v54 inBetweenTargets:v66 block:v55];
        }

        v43 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v67 objects:v80 count:16];
      }

      while (v43);
    }

    v7 = v58;
  }

  v56 = *MEMORY[0x1E69E9840];
}

void __81__AVTAvatarMemoryOptimizer_flattenRelevantTargetsOfMorpher_inBaseGeometryOfNode___block_invoke(uint64_t a1, uint64_t a2, void *a3, float a4, float a5)
{
  v12 = a3;
  *&v9 = a4;
  [*(a1 + 32) applyMorphTarget:a2 weight:*(a1 + 40) toBaseGeometryBuffer:*(a1 + 48) vertexCount:v9];
  v11 = v12;
  if (v12)
  {
    *&v10 = a5;
    [*(a1 + 32) applyMorphTarget:v12 weight:*(a1 + 40) toBaseGeometryBuffer:*(a1 + 48) vertexCount:v10];
    v11 = v12;
  }
}

void __81__AVTAvatarMemoryOptimizer_flattenRelevantTargetsOfMorpher_inBaseGeometryOfNode___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, float a4, float a5)
{
  v12 = a3;
  *&v9 = a4;
  [*(a1 + 32) applyMorphTarget:a2 weight:*(a1 + 40) toBaseGeometryBuffer:*(a1 + 48) vertexCount:v9];
  v11 = v12;
  if (v12)
  {
    *&v10 = a5;
    [*(a1 + 32) applyMorphTarget:v12 weight:*(a1 + 40) toBaseGeometryBuffer:*(a1 + 48) vertexCount:v10];
    v11 = v12;
  }
}

- (void)flattenRelevantTargetsInOtherTargetsOfMorpher:(id)a3
{
  v4 = a3;
  if ([(NSMutableDictionary *)self->_indicesOfTargetsToFlattenInOtherTarget count]&& self->_indicesOfCorrectivesToFlattenInMainTarget)
  {
    if ([(NSArray *)self->_oldMainTargets count])
    {
      v5 = 0;
      do
      {
        v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
        v7 = [(NSMutableDictionary *)self->_indicesOfTargetsToFlattenInOtherTarget objectForKeyedSubscript:v6];
        v8 = [(NSMutableDictionary *)self->_indicesOfCorrectivesToFlattenInMainTarget objectForKeyedSubscript:v6];
        if (v7 | v8)
        {
          [(AVTAvatarMemoryOptimizer *)self flattenTargetsAtIndices:v7 correctivesAtIndices:v8 inTargetAtIndex:v5 morpher:v4];
        }

        ++v5;
      }

      while (v5 < [(NSArray *)self->_oldMainTargets count]);
    }
  }

  else
  {
    indicesOfTargetsToFlattenInOtherTarget = self->_indicesOfTargetsToFlattenInOtherTarget;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __74__AVTAvatarMemoryOptimizer_flattenRelevantTargetsInOtherTargetsOfMorpher___block_invoke;
    v18[3] = &unk_1E7F47C00;
    v18[4] = self;
    v10 = v4;
    v19 = v10;
    [(NSMutableDictionary *)indicesOfTargetsToFlattenInOtherTarget enumerateKeysAndObjectsUsingBlock:v18];
    indicesOfCorrectivesToFlattenInMainTarget = self->_indicesOfCorrectivesToFlattenInMainTarget;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __74__AVTAvatarMemoryOptimizer_flattenRelevantTargetsInOtherTargetsOfMorpher___block_invoke_2;
    v16[3] = &unk_1E7F47C00;
    v16[4] = self;
    v17 = v10;
    [(NSMutableDictionary *)indicesOfCorrectivesToFlattenInMainTarget enumerateKeysAndObjectsUsingBlock:v16];
  }

  indicesOfCorrectivesToFlattenInOtherCorrective = self->_indicesOfCorrectivesToFlattenInOtherCorrective;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__AVTAvatarMemoryOptimizer_flattenRelevantTargetsInOtherTargetsOfMorpher___block_invoke_3;
  v14[3] = &unk_1E7F47C00;
  v14[4] = self;
  v15 = v4;
  v13 = v4;
  [(NSMutableDictionary *)indicesOfCorrectivesToFlattenInOtherCorrective enumerateKeysAndObjectsUsingBlock:v14];
}

void __74__AVTAvatarMemoryOptimizer_flattenRelevantTargetsInOtherTargetsOfMorpher___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) flattenTargetsAtIndices:v5 correctivesAtIndices:0 inTargetAtIndex:objc_msgSend(a2 morpher:{"unsignedIntegerValue"), *(a1 + 40)}];
}

void __74__AVTAvatarMemoryOptimizer_flattenRelevantTargetsInOtherTargetsOfMorpher___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) flattenTargetsAtIndices:0 correctivesAtIndices:v5 inTargetAtIndex:objc_msgSend(a2 morpher:{"unsignedIntegerValue"), *(a1 + 40)}];
}

void __74__AVTAvatarMemoryOptimizer_flattenRelevantTargetsInOtherTargetsOfMorpher___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) flattenCorrectivesAtIndices:v5 inCorrectiveAtIndex:objc_msgSend(a2 morpher:{"unsignedIntegerValue"), *(a1 + 40)}];
}

- (void)flattenTargetsAtIndices:(id)a3 correctivesAtIndices:(id)a4 inTargetAtIndex:(unint64_t)a5 morpher:(id)a6
{
  v24 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(NSArray *)self->_oldMainTargets objectAtIndexedSubscript:a5];
  LODWORD(v13) = 1.0;
  [(AVTAvatarMemoryOptimizer *)self flattenTargetsAtIndices:v24 correctivesAtIndices:v10 inTarget:v12 weight:v11 morpher:v13];
  v14 = [v11 inBetweenWeightsForTargetAtIndex:a5];
  v15 = [v11 inBetweenTargetsForTargetAtIndex:a5];
  v16 = [v15 count];
  if (v16)
  {
    v17 = v16;
    for (i = 0; i != v17; ++i)
    {
      v19 = [v15 objectAtIndexedSubscript:i];
      v20 = [v14 objectAtIndexedSubscript:i];
      [v20 floatValue];
      v22 = v21;

      LODWORD(v23) = v22;
      [(AVTAvatarMemoryOptimizer *)self flattenTargetsAtIndices:v24 correctivesAtIndices:v10 inTarget:v19 weight:v11 morpher:v23];
    }
  }
}

- (void)flattenTargetsAtIndices:(id)a3 correctivesAtIndices:(id)a4 inTarget:(id)a5 weight:(float)a6 morpher:(id)a7
{
  v72 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v44 = a4;
  v13 = a5;
  v14 = a7;
  v47 = v13;
  v15 = [(NSMutableArray *)self->_newTargetsAndInBetweens indexOfObjectIdenticalTo:v13];
  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [AVTAvatarMemoryOptimizer flattenTargetsAtIndices:correctivesAtIndices:inTarget:weight:morpher:];
  }

  v43 = v15;
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy_;
  v68 = __Block_byref_object_dispose_;
  v69 = 0;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v12;
  v16 = [obj countByEnumeratingWithState:&v60 objects:v71 count:16];
  if (v16)
  {
    v17 = *v61;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v61 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v60 + 1) + 8 * i);
        v20 = [v19 unsignedIntegerValue];
        v21 = [(NSArray *)self->_oldMainTargets objectAtIndexedSubscript:v20];
        v22 = [(NSMutableDictionary *)self->_nonOneWeightsOfTargetsToFlatten objectForKeyedSubscript:v19];
        v23 = v22;
        if (v22)
        {
          [v22 floatValue];
          v25 = v24;
        }

        else
        {
          v25 = 1.0;
        }

        v26 = [v14 inBetweenWeightsForTargetAtIndex:v20];
        v27 = [v14 inBetweenTargetsForTargetAtIndex:v20];
        v56[0] = MEMORY[0x1E69E9820];
        v56[1] = 3221225472;
        v56[2] = __97__AVTAvatarMemoryOptimizer_flattenTargetsAtIndices_correctivesAtIndices_inTarget_weight_morpher___block_invoke;
        v56[3] = &unk_1E7F47C28;
        v58 = &v64;
        v56[4] = self;
        v59 = a6;
        v57 = v47;
        *&v28 = v25;
        [(AVTAvatarMemoryOptimizer *)self resolveInBetweensForTarget:v21 weight:v26 inBetweenWeights:v27 inBetweenTargets:v56 block:v28];
      }

      v16 = [obj countByEnumeratingWithState:&v60 objects:v71 count:16];
    }

    while (v16);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v45 = v44;
  v29 = [v45 countByEnumeratingWithState:&v52 objects:v70 count:16];
  if (v29)
  {
    v30 = *v53;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v53 != v30)
        {
          objc_enumerationMutation(v45);
        }

        v32 = *(*(&v52 + 1) + 8 * j);
        v33 = [v32 unsignedIntegerValue];
        v34 = [(NSArray *)self->_oldCorrectives objectAtIndexedSubscript:v33];
        v35 = [(NSMutableDictionary *)self->_nonOneWeightsOfCorrectivesToFlatten objectForKeyedSubscript:v32];
        v36 = v35;
        if (v35)
        {
          [v35 floatValue];
          v38 = v37;
        }

        else
        {
          v38 = 1.0;
        }

        v39 = [v14 inBetweenWeightsForCorrectiveAtIndex:v33];
        v40 = [v14 inBetweenTargetsForCorrectiveAtIndex:v33];
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __97__AVTAvatarMemoryOptimizer_flattenTargetsAtIndices_correctivesAtIndices_inTarget_weight_morpher___block_invoke_2;
        v48[3] = &unk_1E7F47C28;
        v50 = &v64;
        v48[4] = self;
        v51 = a6;
        v49 = v47;
        *&v41 = v38;
        [(AVTAvatarMemoryOptimizer *)self resolveInBetweensForTarget:v34 weight:v39 inBetweenWeights:v40 inBetweenTargets:v48 block:v41];
      }

      v29 = [v45 countByEnumeratingWithState:&v52 objects:v70 count:16];
    }

    while (v29);
  }

  if (!v65[5])
  {
    __assert_rtn("[AVTAvatarMemoryOptimizer flattenTargetsAtIndices:correctivesAtIndices:inTarget:weight:morpher:]", "AVTAvatarMemoryOptimizer.m", 1213, "newTargetWithFlattenedTargets != nil");
  }

  [(NSMutableArray *)self->_newTargetsAndInBetweens replaceObjectAtIndex:v43 withObject:?];
  _Block_object_dispose(&v64, 8);

  v42 = *MEMORY[0x1E69E9840];
}

uint64_t __97__AVTAvatarMemoryOptimizer_flattenTargetsAtIndices_correctivesAtIndices_inTarget_weight_morpher___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = *(a1 + 56);
  *&a4 = v6 * *&a4;
  *&a5 = v6 * *&a5;
  v7 = [*(a1 + 32) flattenTarget0:a2 weight0:a3 target1:*(*(*(a1 + 48) + 8) + 40) weight1:*(a1 + 40) inMorphTarget:a4 originalMorphTarget:a5];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __97__AVTAvatarMemoryOptimizer_flattenTargetsAtIndices_correctivesAtIndices_inTarget_weight_morpher___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = *(a1 + 56);
  *&a4 = v6 * *&a4;
  *&a5 = v6 * *&a5;
  v7 = [*(a1 + 32) flattenTarget0:a2 weight0:a3 target1:*(*(*(a1 + 48) + 8) + 40) weight1:*(a1 + 40) inMorphTarget:a4 originalMorphTarget:a5];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return MEMORY[0x1EEE66BB8]();
}

- (void)flattenCorrectivesAtIndices:(id)a3 inCorrectiveAtIndex:(unint64_t)a4 morpher:(id)a5
{
  v21 = a3;
  v8 = a5;
  v9 = [(NSArray *)self->_oldCorrectives objectAtIndexedSubscript:a4];
  LODWORD(v10) = 1.0;
  [(AVTAvatarMemoryOptimizer *)self flattenCorrectivesAtIndices:v21 inCorrective:v9 weight:v8 morpher:v10];
  v11 = [v8 inBetweenWeightsForCorrectiveAtIndex:a4];
  v12 = [v8 inBetweenTargetsForCorrectiveAtIndex:a4];
  v13 = [v12 count];
  if (v13)
  {
    v14 = v13;
    for (i = 0; i != v14; ++i)
    {
      v16 = [v12 objectAtIndexedSubscript:i];
      v17 = [v11 objectAtIndexedSubscript:i];
      [v17 floatValue];
      v19 = v18;

      LODWORD(v20) = v19;
      [(AVTAvatarMemoryOptimizer *)self flattenCorrectivesAtIndices:v21 inCorrective:v16 weight:v8 morpher:v20];
    }
  }
}

- (void)flattenCorrectivesAtIndices:(id)a3 inCorrective:(id)a4 weight:(float)a5 morpher:(id)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v30 = v11;
  v13 = [(NSMutableArray *)self->_newCorrectivesAndInBetweens indexOfObjectIdenticalTo:v11];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [AVTAvatarMemoryOptimizer flattenCorrectivesAtIndices:inCorrective:weight:morpher:];
  }

  v28 = v13;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy_;
  v43 = __Block_byref_object_dispose_;
  v44 = 0;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v10;
  v14 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v14)
  {
    v15 = *v36;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v35 + 1) + 8 * i);
        v18 = [v17 unsignedIntegerValue];
        v19 = [(NSArray *)self->_oldCorrectives objectAtIndexedSubscript:v18];
        v20 = [(NSMutableDictionary *)self->_nonOneWeightsOfCorrectivesToFlatten objectForKeyedSubscript:v17];
        v21 = v20;
        if (v20)
        {
          [v20 floatValue];
          v23 = v22;
        }

        else
        {
          v23 = 1.0;
        }

        v24 = [v12 inBetweenWeightsForCorrectiveAtIndex:v18];
        v25 = [v12 inBetweenTargetsForCorrectiveAtIndex:v18];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __84__AVTAvatarMemoryOptimizer_flattenCorrectivesAtIndices_inCorrective_weight_morpher___block_invoke;
        v31[3] = &unk_1E7F47C28;
        v33 = &v39;
        v31[4] = self;
        v34 = a5;
        v32 = v30;
        *&v26 = v23;
        [(AVTAvatarMemoryOptimizer *)self resolveInBetweensForTarget:v19 weight:v24 inBetweenWeights:v25 inBetweenTargets:v31 block:v26];
      }

      v14 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v14);
  }

  if (!v40[5])
  {
    __assert_rtn("[AVTAvatarMemoryOptimizer flattenCorrectivesAtIndices:inCorrective:weight:morpher:]", "AVTAvatarMemoryOptimizer.m", 1275, "newCorrectiveWithFlattenedCorrectives != nil");
  }

  [(NSMutableArray *)self->_newCorrectivesAndInBetweens replaceObjectAtIndex:v28 withObject:?];
  _Block_object_dispose(&v39, 8);

  v27 = *MEMORY[0x1E69E9840];
}

uint64_t __84__AVTAvatarMemoryOptimizer_flattenCorrectivesAtIndices_inCorrective_weight_morpher___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = *(a1 + 56);
  *&a4 = v6 * *&a4;
  *&a5 = v6 * *&a5;
  v7 = [*(a1 + 32) flattenTarget0:a2 weight0:a3 target1:*(*(*(a1 + 48) + 8) + 40) weight1:*(a1 + 40) inMorphTarget:a4 originalMorphTarget:a5];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return MEMORY[0x1EEE66BB8]();
}

- (void)resolveInBetweensForTarget:(id)a3 weight:(float)a4 inBetweenWeights:(id)a5 inBetweenTargets:(id)a6 block:(id)a7
{
  v28 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = [v12 count];
  if (!v14)
  {
    v13[2](v13, v28, 0, a4, 0.0);
    goto LABEL_18;
  }

  v15 = v14;
  v16 = 0;
  while (v15 != v16)
  {
    v17 = [v12 objectAtIndexedSubscript:v16];
    if (a4 < 1.0)
    {
      v21 = [v11 objectAtIndexedSubscript:v16];
      [v21 floatValue];
      v20 = v22;

      goto LABEL_8;
    }

LABEL_9:

    if (++v16 > v15)
    {
      goto LABEL_18;
    }
  }

  v17 = v28;
  v20 = 1.0;
  if (a4 >= 1.0)
  {
    goto LABEL_15;
  }

LABEL_8:
  if (v20 < a4)
  {
    goto LABEL_9;
  }

  if (v16)
  {
    v23 = v16 - 1;
    v24 = [v11 objectAtIndexedSubscript:v23];
    [v24 floatValue];
    v26 = v25;

    a4 = (a4 - v26) / (v20 - v26);
    if (a4 < 1.0)
    {
      v27 = [v12 objectAtIndexedSubscript:v23];
      (v13)[2](v13, v27, v17, 1.0 - a4, a4);

      goto LABEL_17;
    }

LABEL_15:
    v19.n128_u64[0] = 0;
    v18.n128_f32[0] = a4;
    (v13[2])(v13, v17, 0, v18, v19);
    goto LABEL_17;
  }

  v18.n128_f32[0] = a4 / v20;
  v19.n128_u64[0] = 0;
  (v13[2])(v13, v17, 0, v18, v19);
LABEL_17:

LABEL_18:
}

- (id)flattenTarget0:(id)a3 weight0:(float)a4 target1:(id)a5 weight1:(float)a6 inMorphTarget:(id)a7 originalMorphTarget:(id)a8
{
  v36[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = v17;
  if (v16)
  {
    v19 = [v16 meshSources];
    v20 = [v19 firstObject];

    v21 = [v20 vectorCount];
    v22 = [v20 data];
    v23 = [v22 mutableBytes];
  }

  else
  {
    v24 = [v17 meshSources];
    v20 = [v24 firstObject];

    v21 = [v20 vectorCount];
    v25 = [v20 data];
    v35 = self;
    v26 = [v25 mutableCopy];

    v23 = [v26 mutableBytes];
    v27 = [MEMORY[0x1E69DF310] meshSourceWithData:v26 semantic:*MEMORY[0x1E69DF3A8] vectorCount:v21 floatComponents:1 componentsPerVector:3 bytesPerComponent:4 dataOffset:0 dataStride:12];
    v28 = MEMORY[0x1E69DF308];
    v36[0] = v27;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
    v16 = [v28 meshWithSources:v29 elements:0];

    v30 = [v18 name];
    [v16 setName:v30];

    self = v35;
  }

  *&v31 = a4;
  [(AVTAvatarMemoryOptimizer *)self applyMorphTarget:v14 weight:v23 toMorphTargetBuffer:v21 vertexCount:v31];
  if (v15)
  {
    *&v32 = a6;
    [(AVTAvatarMemoryOptimizer *)self applyMorphTarget:v15 weight:v23 toMorphTargetBuffer:v21 vertexCount:v32];
  }

  v33 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)applyMorphTarget:(id)a3 weight:(float)a4 toBaseGeometryBuffer:(void *)a5 vertexCount:(unint64_t)a6
{
  v9 = a3;
  if (a4 <= 0.0)
  {
    [AVTAvatarMemoryOptimizer applyMorphTarget:weight:toBaseGeometryBuffer:vertexCount:];
  }

  v56 = v9;
  v10 = [v9 meshSources];
  v11 = [v10 firstObject];

  v12 = [v11 data];
  v13 = [v12 bytes];

  if (a6)
  {
    v14 = (v13 + 8);
    v15 = a5 + 4;
    do
    {
      v16 = *(v15 - 2);
      v17 = (v16 >> 10) & 0x1F;
      if (v17 == 31)
      {
        v18 = 2139095040;
      }

      else
      {
        v18 = (v16 >> 10) & 0x1F;
      }

      if (v17)
      {
        v19 = v17 == 31;
      }

      else
      {
        v19 = 1;
      }

      if (v19)
      {
        v20 = v18;
      }

      else
      {
        v20 = (v17 << 23) + 939524096;
      }

      v21 = COERCE_FLOAT(v20 | (v16 << 16) & 0x80000000 | (v16 >> 7) & 7 | (8 * (v16 & 0x3FF)) & 0x1FFF | ((v16 & 0x3FF) << 13)) + (a4 * *(v14 - 2));
      v22 = HIWORD(LODWORD(v21)) & 0x8000;
      v23 = (LODWORD(v21) >> 23);
      v24 = v23 - 112;
      v25 = v23 - 113;
      v26 = v22 | 0x7BFF;
      if ((LODWORD(v21) & 0x7FFFFF) != 0)
      {
        LOWORD(v27) = v22 + 1;
      }

      else
      {
        v27 = HIWORD(LODWORD(v21)) & 0x8000;
      }

      v28 = v27 | 0x7C00;
      if (v23 == 255)
      {
        v26 = v28;
      }

      if (v23 >= 0x71)
      {
        v29 = v26;
      }

      else
      {
        v29 = HIWORD(v21) & 0x8000;
      }

      v30 = HIWORD(LODWORD(v21)) & 0x8000 | (LODWORD(v21) >> 13) & 0x3FF | (v24 << 10);
      if (v25 > 0x1D)
      {
        LOWORD(v30) = v29;
      }

      *(v15 - 2) = v30;
      v31 = *(v15 - 1);
      v32 = (v31 >> 10) & 0x1F;
      if (v32 && v32 != 31)
      {
        v32 = (v32 << 23) + 939524096;
      }

      else if (v32 == 31)
      {
        v32 = 2139095040;
      }

      v33 = COERCE_FLOAT(v32 | (v31 << 16) & 0x80000000 | (v31 >> 7) & 7 | (8 * (v31 & 0x3FF)) & 0x1FFF | ((v31 & 0x3FF) << 13)) + (a4 * *(v14 - 1));
      v34 = HIWORD(LODWORD(v33)) & 0x8000;
      v35 = (LODWORD(v33) >> 23);
      v36 = v35 - 112;
      v37 = v35 - 113;
      v38 = v34 | 0x7BFF;
      if ((LODWORD(v33) & 0x7FFFFF) != 0)
      {
        LOWORD(v39) = v34 + 1;
      }

      else
      {
        v39 = HIWORD(LODWORD(v33)) & 0x8000;
      }

      v40 = v39 | 0x7C00;
      if (v35 == 255)
      {
        v38 = v40;
      }

      if (v35 >= 0x71)
      {
        v41 = v38;
      }

      else
      {
        v41 = HIWORD(v33) & 0x8000;
      }

      v42 = HIWORD(LODWORD(v33)) & 0x8000 | (LODWORD(v33) >> 13) & 0x3FF | (v36 << 10);
      if (v37 > 0x1D)
      {
        LOWORD(v42) = v41;
      }

      *(v15 - 1) = v42;
      v43 = *v15;
      v44 = (v43 >> 10) & 0x1F;
      if (v44 && v44 != 31)
      {
        v44 = (v44 << 23) + 939524096;
      }

      else if (v44 == 31)
      {
        v44 = 2139095040;
      }

      v45 = *v14;
      v14 += 3;
      v46 = COERCE_FLOAT(v44 | (v43 << 16) & 0x80000000 | (v43 >> 7) & 7 | (8 * (v43 & 0x3FF)) & 0x1FFF | ((v43 & 0x3FF) << 13)) + (a4 * v45);
      v47 = HIWORD(LODWORD(v46)) & 0x8000;
      v48 = (LODWORD(v46) >> 23);
      v49 = v48 - 112;
      v50 = v48 - 113;
      v51 = v47 | 0x7BFF;
      if ((LODWORD(v46) & 0x7FFFFF) != 0)
      {
        LOWORD(v52) = v47 + 1;
      }

      else
      {
        v52 = HIWORD(LODWORD(v46)) & 0x8000;
      }

      v53 = v52 | 0x7C00;
      if (v48 == 255)
      {
        v51 = v53;
      }

      if (v48 >= 0x71)
      {
        v54 = v51;
      }

      else
      {
        v54 = HIWORD(v46) & 0x8000;
      }

      v55 = HIWORD(LODWORD(v46)) & 0x8000 | (LODWORD(v46) >> 13) & 0x3FF | (v49 << 10);
      if (v50 > 0x1D)
      {
        LOWORD(v55) = v54;
      }

      *v15 = v55;
      v15 += 4;
      --a6;
    }

    while (a6);
  }
}

- (void)classifyTargetsOfMorpher:(os_log_t)log node:.cold.1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "newDriverIndex != NSNotFound";
  _os_log_error_impl(&dword_1BB472000, log, OS_LOG_TYPE_ERROR, "Error: Condition '%s' failed. Failed to find driver in new updated main targets", buf, 0xCu);
}

void __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_cold_4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_1BB472000, v0, v1, "Error: Unreachable code: Flattening the corrective %@ should lead to single animation target %@ that is always supposed to exist");
  v2 = *MEMORY[0x1E69E9840];
}

void __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_cold_5()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_1BB472000, v0, OS_LOG_TYPE_ERROR, "Error: Failed to optimize corrective with more than %d targets: %@", v2, 0x12u);
  v1 = *MEMORY[0x1E69E9840];
}

void __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_2_cold_3(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [*(*a1 + 136) objectAtIndexedSubscript:a2];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_1BB472000, a3, OS_LOG_TYPE_ERROR, "Error: Failed to optimize corrective with more than %d targets: %@", v6, 0x12u);

  v5 = *MEMORY[0x1E69E9840];
}

@end