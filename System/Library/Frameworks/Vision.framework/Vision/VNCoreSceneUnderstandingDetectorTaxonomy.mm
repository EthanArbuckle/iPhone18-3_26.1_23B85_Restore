@interface VNCoreSceneUnderstandingDetectorTaxonomy
+ (id)taxonomyForCSUTaxonomy:(id)taxonomy vocabularyNames:(id)names error:(id *)error;
- (id)_initWithLabels:(id)labels classificationMetricsForLabelDictionary:(id)dictionary;
- (id)classificationMetricsForLabel:(id)label;
- (id)labelsFilteredByDisallowedList:(id)list;
@end

@implementation VNCoreSceneUnderstandingDetectorTaxonomy

- (id)classificationMetricsForLabel:(id)label
{
  v3 = [(NSDictionary *)self->_classificationMetricsForLabelDictionary objectForKey:label];

  return v3;
}

- (id)labelsFilteredByDisallowedList:(id)list
{
  listCopy = list;
  labels = [(VNCoreSceneUnderstandingDetectorTaxonomy *)self labels];
  if (listCopy)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __75__VNCoreSceneUnderstandingDetectorTaxonomy_labelsFilteredByDisallowedList___block_invoke;
    v10[3] = &unk_1E77B4DF0;
    v11 = listCopy;
    v6 = [labels indexesOfObjectsPassingTest:v10];
    if ([v6 count])
    {
      v7 = [labels mutableCopy];
      [v7 removeObjectsAtIndexes:v6];
      v8 = [v7 copy];

      labels = v8;
    }
  }

  return labels;
}

- (id)_initWithLabels:(id)labels classificationMetricsForLabelDictionary:(id)dictionary
{
  labelsCopy = labels;
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = VNCoreSceneUnderstandingDetectorTaxonomy;
  v8 = [(VNCoreSceneUnderstandingDetectorTaxonomy *)&v14 init];
  if (v8)
  {
    v9 = [labelsCopy copy];
    labels = v8->_labels;
    v8->_labels = v9;

    v11 = [dictionaryCopy copy];
    classificationMetricsForLabelDictionary = v8->_classificationMetricsForLabelDictionary;
    v8->_classificationMetricsForLabelDictionary = v11;
  }

  return v8;
}

+ (id)taxonomyForCSUTaxonomy:(id)taxonomy vocabularyNames:(id)names error:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  taxonomyCopy = taxonomy;
  namesCopy = names;
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
  v10 = taxonomyCopy;
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
  v13 = namesCopy;
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
          if (error)
          {
            *error = v37[5];
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
  v17 = [[self alloc] _initWithLabels:v9 classificationMetricsForLabelDictionary:v11];
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