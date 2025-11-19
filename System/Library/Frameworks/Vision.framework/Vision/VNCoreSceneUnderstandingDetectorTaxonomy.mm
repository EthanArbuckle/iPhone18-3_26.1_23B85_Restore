@interface VNCoreSceneUnderstandingDetectorTaxonomy
+ (id)taxonomyForCSUTaxonomy:(id)a3 vocabularyNames:(id)a4 error:(id *)a5;
- (id)_initWithLabels:(id)a3 classificationMetricsForLabelDictionary:(id)a4;
- (id)classificationMetricsForLabel:(id)a3;
- (id)labelsFilteredByDisallowedList:(id)a3;
@end

@implementation VNCoreSceneUnderstandingDetectorTaxonomy

- (id)classificationMetricsForLabel:(id)a3
{
  v3 = [(NSDictionary *)self->_classificationMetricsForLabelDictionary objectForKey:a3];

  return v3;
}

- (id)labelsFilteredByDisallowedList:(id)a3
{
  v4 = a3;
  v5 = [(VNCoreSceneUnderstandingDetectorTaxonomy *)self labels];
  if (v4)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __75__VNCoreSceneUnderstandingDetectorTaxonomy_labelsFilteredByDisallowedList___block_invoke;
    v10[3] = &unk_1E77B4DF0;
    v11 = v4;
    v6 = [v5 indexesOfObjectsPassingTest:v10];
    if ([v6 count])
    {
      v7 = [v5 mutableCopy];
      [v7 removeObjectsAtIndexes:v6];
      v8 = [v7 copy];

      v5 = v8;
    }
  }

  return v5;
}

- (id)_initWithLabels:(id)a3 classificationMetricsForLabelDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = VNCoreSceneUnderstandingDetectorTaxonomy;
  v8 = [(VNCoreSceneUnderstandingDetectorTaxonomy *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    labels = v8->_labels;
    v8->_labels = v9;

    v11 = [v7 copy];
    classificationMetricsForLabelDictionary = v8->_classificationMetricsForLabelDictionary;
    v8->_classificationMetricsForLabelDictionary = v11;
  }

  return v8;
}

+ (id)taxonomyForCSUTaxonomy:(id)a3 vocabularyNames:(id)a4 error:(id *)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v21 = a4;
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__39_26555;
  v40 = __Block_byref_object_dispose__40_26556;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__VNCoreSceneUnderstandingDetectorTaxonomy_taxonomyForCSUTaxonomy_vocabularyNames_error___block_invoke;
  aBlock[3] = &unk_1E77B4DC8;
  v9 = v19;
  v27 = v9;
  v10 = v20;
  v28 = v10;
  v30 = &v36;
  v31 = &v32;
  v11 = v8;
  v29 = v11;
  v12 = _Block_copy(aBlock);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v21;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v42 count:16];
  if (v14)
  {
    v15 = *v23;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v13);
        }

        [v10 enumerateLabelsInVocabularyNamed:*(*(&v22 + 1) + 8 * i) usingBlock:v12];
        if ((v33[3] & 1) == 0)
        {
          if (a5)
          {
            *a5 = v37[5];
          }

          v17 = 0;
          goto LABEL_13;
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v22 objects:v42 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  [v9 sortUsingSelector:sel_compare_];
  v17 = [[a1 alloc] _initWithLabels:v9 classificationMetricsForLabelDictionary:v11];
LABEL_13:

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  return v17;
}

void __89__VNCoreSceneUnderstandingDetectorTaxonomy_taxonomyForCSUTaxonomy_vocabularyNames_error___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  [*(a1 + 32) addObject:v5];
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 56) + 8);
  obj = *(v7 + 40);
  v11 = 0;
  v8 = [v6 VNGetClassificationMetrics:&v11 forLabel:v5 error:&obj];
  v9 = v11;
  objc_storeStrong((v7 + 40), obj);
  if (v8)
  {
    if (v9)
    {
      [*(a1 + 48) setObject:v9 forKey:v5];
    }
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    *a3 = 1;
  }
}

@end