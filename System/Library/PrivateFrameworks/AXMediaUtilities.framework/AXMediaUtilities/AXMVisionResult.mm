@interface AXMVisionResult
+ (AXMVisionResult)resultWithImage:(id)image features:(id)features orientation:(id)orientation metricSession:(id)session userContext:(id)context;
- (AXMSemanticTextFactory)semanticTextFactory;
- (AXMVisionFeature)assetMetadataFeature;
- (AXMVisionFeature)colorInfoFeature;
- (AXMVisionResult)initWithCoder:(id)coder;
- (BOOL)captionMayContainSensitiveContent;
- (BOOL)includesFeaturesForImageExploration;
- (BOOL)includesNSFWFeatures;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAXMVisionResult:(id)result;
- (NSArray)blurFeatures;
- (NSArray)brightnessFeatures;
- (NSArray)captionFeatures;
- (NSArray)faceFeatures;
- (NSArray)iconClassFeatures;
- (NSArray)mediaAnalysisFaceFeatures;
- (NSArray)mediaAnalysisImageCaptionFeatures;
- (NSArray)mediaAnalysisNSFWClassificationFeatures;
- (NSArray)mediaAnalysisObjectClassificationFeatures;
- (NSArray)mediaAnalysisSceneClassificationFeatures;
- (NSArray)mediaAnalysisSignificantEventClassificationFeatures;
- (NSArray)modelClassificationFeatures;
- (NSArray)objectClassificationFeatures;
- (NSArray)ocrFeatures;
- (NSArray)sceneClassificationFeatures;
- (NSArray)sensitiveContentForCaptionFeatures;
- (NSDictionary)detectedFeatureDictionary;
- (NSDictionary)featureGates;
- (NSString)detectedTextDescription;
- (NSString)detectedTextSummary;
- (NSString)detectedTextType;
- (NSString)localizedDetectedIconHint;
- (NSString)localizedDetectedTextHint;
- (NSString)localizedDetectedTextSummaryHint;
- (NSString)localizedDetectedTextTypeHint;
- (id)_init;
- (id)_processFeatureChild:(id)child;
- (id)_processFeatureTree:(id)tree;
- (id)captionTranslationLocale;
- (id)description;
- (id)detectedCaptionFeatureDescriptionWithOptions:(id)options;
- (id)detectedFeatureDescriptionWithOptions:(id)options;
- (id)detectedSceneClassificationFeatureDescriptionWithOptions:(id)options;
- (id)sensitiveContentFeatures;
- (id)sortedFeatures;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXMVisionResult

+ (AXMVisionResult)resultWithImage:(id)image features:(id)features orientation:(id)orientation metricSession:(id)session userContext:(id)context
{
  contextCopy = context;
  sessionCopy = session;
  orientationCopy = orientation;
  featuresCopy = features;
  imageCopy = image;
  _init = [[AXMVisionResult alloc] _init];
  [_init setFeatures:featuresCopy];

  [_init setImage:imageCopy];
  [_init setAppliedImageOrientation:orientationCopy];

  [_init setMetricSession:sessionCopy];
  [_init setUserContext:contextCopy];

  return _init;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = AXMVisionResult;
  result = [(AXMVisionResult *)&v3 init];
  if (result)
  {
    *(result + 10) = 0;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AXMVisionResult *)self isEqualToAXMVisionResult:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToAXMVisionResult:(id)result
{
  resultCopy = result;
  features = [(AXMVisionResult *)self features];
  features2 = [resultCopy features];
  if ([features isEqual:features2])
  {
    captionTranslationLocale = [(AXMVisionResult *)self captionTranslationLocale];
    if (captionTranslationLocale || ([resultCopy captionTranslationLocale], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      captionTranslationLocale2 = [(AXMVisionResult *)self captionTranslationLocale];
      captionTranslationLocale3 = [resultCopy captionTranslationLocale];
      v11 = [captionTranslationLocale2 isEqual:captionTranslationLocale3];

      if (captionTranslationLocale)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      v11 = 1;
    }

    goto LABEL_9;
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (unint64_t)hash
{
  features = [(AXMVisionResult *)self features];
  v3 = [features hash];

  return v3;
}

- (id)sortedFeatures
{
  features = [(AXMVisionResult *)self features];
  v3 = [features sortedArrayUsingComparator:&__block_literal_global_10];

  return v3;
}

uint64_t __33__AXMVisionResult_sortedFeatures__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 featureType];
  if (v6 < [v5 featureType])
  {
    goto LABEL_2;
  }

  v8 = [v4 featureType];
  if (v8 > [v5 featureType])
  {
LABEL_4:
    v7 = 1;
    goto LABEL_5;
  }

  [v4 normalizedFrame];
  MinY = CGRectGetMinY(v16);
  [v5 normalizedFrame];
  if (MinY >= CGRectGetMinY(v17))
  {
    [v4 normalizedFrame];
    v11 = CGRectGetMinY(v18);
    [v5 normalizedFrame];
    if (v11 > CGRectGetMinY(v19))
    {
      goto LABEL_4;
    }

    [v4 normalizedFrame];
    MinX = CGRectGetMinX(v20);
    [v5 normalizedFrame];
    if (MinX >= CGRectGetMinX(v21))
    {
      [v4 normalizedFrame];
      v13 = CGRectGetMinX(v22);
      [v5 normalizedFrame];
      if (v13 <= CGRectGetMinX(v23))
      {
        v14 = [v4 value];
        v15 = [v5 value];
        v7 = [v14 compare:v15];

        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

LABEL_2:
  v7 = -1;
LABEL_5:

  return v7;
}

- (AXMVisionFeature)colorInfoFeature
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  features = [(AXMVisionResult *)self features];
  v3 = [features countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(features);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 featureType] == 4)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [features countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (AXMVisionFeature)assetMetadataFeature
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  features = [(AXMVisionResult *)self features];
  v3 = [features countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(features);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 featureType] == 13)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [features countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (AXMSemanticTextFactory)semanticTextFactory
{
  semanticTextFactory = self->_semanticTextFactory;
  if (!semanticTextFactory)
  {
    v4 = objc_alloc_init(AXMSemanticTextFactory);
    v5 = self->_semanticTextFactory;
    self->_semanticTextFactory = v4;

    semanticTextFactory = self->_semanticTextFactory;
  }

  return semanticTextFactory;
}

- (NSString)detectedTextType
{
  detectedTextType = self->_detectedTextType;
  if (!detectedTextType)
  {
    ocrFeatures = [(AXMVisionResult *)self ocrFeatures];
    v5 = [ocrFeatures ax_filteredArrayUsingBlock:&__block_literal_global_65];
    firstObject = [v5 firstObject];

    if ([firstObject isValueSpeakable])
    {
      v7 = +[AXMVisionFeature nameForOCRType:](AXMVisionFeature, "nameForOCRType:", [firstObject ocrFeatureType]);
      v8 = self->_detectedTextType;
      self->_detectedTextType = v7;
    }

    detectedTextType = self->_detectedTextType;
  }

  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v10 = [(NSString *)detectedTextType stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  return v10;
}

- (NSString)detectedTextSummary
{
  detectedTextSummary = self->_detectedTextSummary;
  if (!detectedTextSummary)
  {
    ocrFeatures = [(AXMVisionResult *)self ocrFeatures];
    v5 = [ocrFeatures ax_filteredArrayUsingBlock:&__block_literal_global_69];
    firstObject = [v5 firstObject];

    if ([firstObject isValueSpeakable])
    {
      value = [firstObject value];
      v8 = self->_detectedTextSummary;
      self->_detectedTextSummary = value;
    }

    ocrFeatures2 = [(AXMVisionResult *)self ocrFeatures];
    v10 = [ocrFeatures2 ax_filteredArrayUsingBlock:&__block_literal_global_71];
    firstObject2 = [v10 firstObject];

    if ([firstObject2 isValueSpeakable])
    {
      values = [firstObject2 values];
      v13 = [values objectAtIndexedSubscript:0];
      null = [MEMORY[0x1E695DFB0] null];
      v15 = [v13 isEqual:null];

      if ((v15 & 1) == 0)
      {
        values2 = [firstObject2 values];
        v17 = [values2 objectAtIndexedSubscript:0];
        v18 = self->_detectedTextSummary;
        self->_detectedTextSummary = v17;
      }
    }

    ocrFeatures3 = [(AXMVisionResult *)self ocrFeatures];
    v20 = [ocrFeatures3 ax_filteredArrayUsingBlock:&__block_literal_global_74];
    firstObject3 = [v20 firstObject];

    if ([firstObject3 isValueSpeakable])
    {
      value2 = [firstObject3 value];
      v23 = self->_detectedTextSummary;
      self->_detectedTextSummary = value2;
    }

    detectedTextSummary = self->_detectedTextSummary;
  }

  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v25 = [(NSString *)detectedTextSummary stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  return v25;
}

uint64_t __38__AXMVisionResult_detectedTextSummary__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isTable])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isNutritionLabel];
  }

  return v3;
}

- (NSString)detectedTextDescription
{
  detectedTextDescription = self->_detectedTextDescription;
  if (!detectedTextDescription)
  {
    ocrFeatures = [(AXMVisionResult *)self ocrFeatures];
    v5 = [ocrFeatures ax_filteredArrayUsingBlock:&__block_literal_global_76];
    firstObject = [v5 firstObject];

    if ([firstObject isValueSpeakable])
    {
      value = [firstObject value];
      v8 = self->_detectedTextDescription;
      self->_detectedTextDescription = value;
    }

    ocrFeatures2 = [(AXMVisionResult *)self ocrFeatures];
    v10 = [ocrFeatures2 ax_filteredArrayUsingBlock:&__block_literal_global_78];
    firstObject2 = [v10 firstObject];

    if ([firstObject2 isValueSpeakable])
    {
      values = [firstObject2 values];
      v13 = [values objectAtIndexedSubscript:1];
      v14 = self->_detectedTextDescription;
      self->_detectedTextDescription = v13;
    }

    detectedTextDescription = self->_detectedTextDescription;
  }

  return detectedTextDescription;
}

- (NSString)localizedDetectedTextTypeHint
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v3 = [v2 localizedStringForKey:@"detected.text.type.hint" value:&stru_1F23EA908 table:@"Accessibility"];

  return v3;
}

- (NSString)localizedDetectedTextSummaryHint
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v3 = [v2 localizedStringForKey:@"detected.text.summary.hint" value:&stru_1F23EA908 table:@"Accessibility"];

  return v3;
}

- (NSString)localizedDetectedTextHint
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v3 = [v2 localizedStringForKey:@"detected.text.hint" value:&stru_1F23EA908 table:@"Accessibility"];

  return v3;
}

- (id)_processFeatureChild:(id)child
{
  v80 = *MEMORY[0x1E69E9840];
  childCopy = child;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  ocrFeatureType = [childCopy ocrFeatureType];
  v7 = [AXMVisionFeature nameForOCRType:ocrFeatureType];
  parentOCRFeatureTypes = [(AXMVisionResult *)self parentOCRFeatureTypes];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:ocrFeatureType];
  v10 = [parentOCRFeatureTypes containsObject:v9];

  if (v10)
  {
    [dictionary setObject:v7 forKey:@"AXMType"];
    value = [childCopy value];
    if (value)
    {
      [dictionary setObject:value forKey:@"AXMContent"];
    }

    array = [MEMORY[0x1E695DF70] array];
    v62 = value;
    if (ocrFeatureType == 2)
    {
      v42 = dictionary;
      semanticTextFactory = [(AXMVisionResult *)self semanticTextFactory];
      value2 = [childCopy value];
      [(AXMVisionResult *)self effectiveTextDetectionLocales];
      v46 = v45 = childCopy;
      firstObject = [v46 firstObject];
      v21 = [semanticTextFactory semanticTextForText:value2 withLocale:firstObject];

      if ([v21 isSemanticallyComplete])
      {
        v61 = v7;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        subfeatures = [v45 subfeatures];
        v49 = [subfeatures countByEnumeratingWithState:&v73 objects:v79 count:16];
        childCopy = v45;
        if (v49)
        {
          v50 = v49;
          v51 = *v74;
          do
          {
            for (i = 0; i != v50; ++i)
            {
              if (*v74 != v51)
              {
                objc_enumerationMutation(subfeatures);
              }

              v53 = [(AXMVisionResult *)self _processFeatureChild:*(*(&v73 + 1) + 8 * i)];
              [array addObject:v53];
            }

            v50 = [subfeatures countByEnumeratingWithState:&v73 objects:v79 count:16];
          }

          while (v50);
        }

        dictionary = v42;
        [v42 setObject:array forKey:@"AXMChildren"];
        v54 = MEMORY[0x1E696B098];
        [childCopy normalizedFrame];
        v55 = [v54 axmValueWithCGRect:?];
        [v42 setObject:v55 forKey:@"AXMBounds"];

        v7 = v61;
      }

      else
      {
        dictionary = v42;
        childCopy = v45;
      }
    }

    else
    {
      v13 = v7;
      if (ocrFeatureType == 13 || ocrFeatureType == 7)
      {
        [dictionary setObject:MEMORY[0x1E695E118] forKey:@"AXMRowType"];
      }

      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      subfeatures2 = [childCopy subfeatures];
      v15 = [subfeatures2 countByEnumeratingWithState:&v69 objects:v78 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v70;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v70 != v17)
            {
              objc_enumerationMutation(subfeatures2);
            }

            v19 = [(AXMVisionResult *)self _processFeatureChild:*(*(&v69 + 1) + 8 * j)];
            [array addObject:v19];
          }

          v16 = [subfeatures2 countByEnumeratingWithState:&v69 objects:v78 count:16];
        }

        while (v16);
      }

      [dictionary setObject:array forKey:@"AXMChildren"];
      v20 = MEMORY[0x1E696B098];
      [childCopy normalizedFrame];
      v21 = [v20 axmValueWithCGRect:?];
      [dictionary setObject:v21 forKey:@"AXMBounds"];
      v7 = v13;
    }

    value3 = v62;
  }

  else
  {
    smallestChildOCRFeatureTypes = [(AXMVisionResult *)self smallestChildOCRFeatureTypes];
    v24 = [MEMORY[0x1E696AD98] numberWithInteger:ocrFeatureType];
    v25 = [smallestChildOCRFeatureTypes containsObject:v24];

    if (!v25)
    {
      goto LABEL_44;
    }

    value3 = [childCopy value];
    [dictionary setObject:v7 forKey:@"AXMType"];
    if (ocrFeatureType == 4)
    {
      v59 = dictionary;
      v60 = v7;
      v58 = childCopy;
      whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v63 = value3;
      v27 = [value3 componentsSeparatedByCharactersInSet:whitespaceCharacterSet];
      v28 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF != ''"];
      v29 = [v27 filteredArrayUsingPredicate:v28];

      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      obj = v29;
      v30 = [obj countByEnumeratingWithState:&v65 objects:v77 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v66;
        v33 = &stru_1F23EA908;
        while (2)
        {
          v34 = 0;
          v35 = v33;
          do
          {
            if (*v66 != v32)
            {
              objc_enumerationMutation(obj);
            }

            v36 = *(*(&v65 + 1) + 8 * v34);
            semanticTextFactory2 = [(AXMVisionResult *)self semanticTextFactory];
            effectiveTextDetectionLocales = [(AXMVisionResult *)self effectiveTextDetectionLocales];
            firstObject2 = [effectiveTextDetectionLocales firstObject];
            v40 = [semanticTextFactory2 _textExistsInLexicon:v36 withLocale:firstObject2];

            if ((v40 & 1) == 0 && ![v36 intValue])
            {

              goto LABEL_40;
            }

            v41 = [(__CFString *)v35 stringByAppendingString:@" "];
            v33 = [v41 stringByAppendingString:v36];

            ++v34;
            v35 = v33;
          }

          while (v31 != v34);
          v31 = [obj countByEnumeratingWithState:&v65 objects:v77 count:16];
          if (v31)
          {
            continue;
          }

          break;
        }
      }

      else
      {
LABEL_40:
        v33 = &stru_1F23EA908;
      }

      dictionary = v59;
      [v59 setObject:v33 forKey:@"AXMContent"];

      childCopy = v58;
      v7 = v60;
      value3 = v63;
    }

    else
    {
      [dictionary setObject:value3 forKey:@"AXMContent"];
    }

    v56 = MEMORY[0x1E696B098];
    [childCopy normalizedFrame];
    array = [v56 axmValueWithCGRect:?];
    [dictionary setObject:array forKey:@"AXMBounds"];
  }

LABEL_44:

  return dictionary;
}

- (id)_processFeatureTree:(id)tree
{
  treeCopy = tree;
  featureType = [treeCopy featureType];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (featureType <= 7)
  {
    if (featureType == 5)
    {
      v16 = [AXMVisionFeature nameForFeatureType:5];
      [dictionary setObject:v16 forKey:@"AXMType"];

      faceDetectionResult = [treeCopy faceDetectionResult];
      likelyExpression = [faceDetectionResult likelyExpression];
      v18 = MEMORY[0x1E696AEC0];
      v19 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
      v20 = [v19 localizedStringForKey:@"description.face" value:&stru_1F23EA908 table:@"Accessibility"];
      v21 = [AXMVisionFeatureFaceDetectionResult nameForFaceExpression:likelyExpression];
      v22 = [v18 stringWithFormat:v20, v21];
      [dictionary setObject:v22 forKey:@"AXMContent"];

      v23 = MEMORY[0x1E696B098];
      [treeCopy normalizedFrame];
      v24 = [v23 axmValueWithCGRect:?];
      [dictionary setObject:v24 forKey:@"AXMBounds"];

      goto LABEL_14;
    }

    if (featureType != 7)
    {
      goto LABEL_15;
    }

    v8 = [AXMVisionFeature nameForFeatureType:7];
    [dictionary setObject:v8 forKey:@"AXMType"];

    v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    classificationLabel = v9;
    v11 = @"description.person";
  }

  else
  {
    if (featureType != 19)
    {
      if (featureType != 10)
      {
        if (featureType != 8)
        {
          goto LABEL_15;
        }

        [(AXMVisionResult *)self _processFeatureChild:treeCopy];
        dictionary = faceDetectionResult = dictionary;
        goto LABEL_14;
      }

      v14 = [AXMVisionFeature nameForFeatureType:10];
      [dictionary setObject:v14 forKey:@"AXMType"];

      classificationLabel = [treeCopy classificationLabel];
      [dictionary setObject:classificationLabel forKey:@"AXMContent"];
      goto LABEL_12;
    }

    v12 = [AXMVisionFeature nameForFeatureType:19];
    [dictionary setObject:v12 forKey:@"AXMType"];

    v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    classificationLabel = v9;
    v11 = @"description.prominent.object";
  }

  v13 = [v9 localizedStringForKey:v11 value:&stru_1F23EA908 table:@"Accessibility"];
  [dictionary setObject:v13 forKey:@"AXMContent"];

LABEL_12:
  v15 = MEMORY[0x1E696B098];
  [treeCopy normalizedFrame];
  faceDetectionResult = [v15 axmValueWithCGRect:?];
  [dictionary setObject:faceDetectionResult forKey:@"AXMBounds"];
LABEL_14:

LABEL_15:

  return dictionary;
}

- (NSDictionary)detectedFeatureDictionary
{
  v37 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  evaluatedFeatureTypes = [(AXMVisionResult *)self evaluatedFeatureTypes];
  array = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = evaluatedFeatureTypes;
  v24 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v24)
  {
    v22 = *v32;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v31 + 1) + 8 * i);
        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __44__AXMVisionResult_detectedFeatureDictionary__block_invoke;
        v30[3] = &unk_1E7A1D540;
        v30[4] = v5;
        v7 = [MEMORY[0x1E696AE18] predicateWithBlock:v30];
        features = [(AXMVisionResult *)self features];
        v9 = [features filteredArrayUsingPredicate:v7];

        v10 = +[AXMVisionFeature nameForFeatureType:](AXMVisionFeature, "nameForFeatureType:", [v5 integerValue]);
        [dictionary2 setObject:v10 forKey:@"AXMTypeContainer"];

        if ([v5 integerValue] == 8 || objc_msgSend(v5, "integerValue") == 5 || objc_msgSend(v5, "integerValue") == 10 || objc_msgSend(v5, "integerValue") == 19 || objc_msgSend(v5, "integerValue") == 7)
        {
          v25 = v7;
          array2 = [MEMORY[0x1E695DF70] array];
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v12 = v9;
          v13 = v9;
          v14 = [v13 countByEnumeratingWithState:&v26 objects:v35 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v27;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v27 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = [(AXMVisionResult *)self _processFeatureTree:*(*(&v26 + 1) + 8 * j)];
                [array2 addObject:v18];
              }

              v15 = [v13 countByEnumeratingWithState:&v26 objects:v35 count:16];
            }

            while (v15);
          }

          [dictionary2 setObject:array2 forKey:@"AXMChildren"];
          v7 = v25;
          v9 = v12;
        }

        [array addObject:dictionary2];
      }

      v24 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v24);
  }

  [dictionary setObject:array forKey:@"AXMChildren"];

  return dictionary;
}

BOOL __44__AXMVisionResult_detectedFeatureDictionary__block_invoke(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a2, "featureType")}];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (id)detectedFeatureDescriptionWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [AXMDescriptionBuilder builderWithOptions:7];
  if (AXRuntimeCheck_MediaAnalysisSupport())
  {
    mediaAnalysisFaceFeatures = [(AXMVisionResult *)self mediaAnalysisFaceFeatures];
    [v5 addMediaAnalysisDetectedFaces:mediaAnalysisFaceFeatures];
  }

  else
  {
    mediaAnalysisFaceFeatures = [(AXMVisionResult *)self faceFeatures];
    [v5 addDetectedFaces:mediaAnalysisFaceFeatures];
  }

  captionFeatures = [(AXMVisionResult *)self captionFeatures];
  if (AXRuntimeCheck_MediaAnalysisSupport())
  {
    mediaAnalysisImageCaptionFeatures = [(AXMVisionResult *)self mediaAnalysisImageCaptionFeatures];

    captionFeatures = mediaAnalysisImageCaptionFeatures;
  }

  if (![captionFeatures count] || -[AXMVisionResult includesNSFWFeatures](self, "includesNSFWFeatures") || objc_msgSend(captionFeatures, "count") && (objc_msgSend(captionFeatures, "firstObject"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isLowConfidence"), v9, v10))
  {
    if (AXRuntimeCheck_MediaAnalysisSupport())
    {
      [(AXMVisionResult *)self mediaAnalysisSceneClassificationFeatures];
    }

    else
    {
      [(AXMVisionResult *)self sceneClassificationFeatures];
    }
    v11 = ;
    [v5 addDetectedClassificationFeatures:v11];
  }

  if (AXRuntimeCheck_MediaAnalysisSupport())
  {
    mediaAnalysisImageCaptionFeatures2 = [(AXMVisionResult *)self mediaAnalysisImageCaptionFeatures];
    firstObject = [mediaAnalysisImageCaptionFeatures2 firstObject];
    [v5 setMediaAnalysisDetectedImageCaption:firstObject];
  }

  else
  {
    mediaAnalysisImageCaptionFeatures2 = [(AXMVisionResult *)self captionFeatures];
    firstObject = [mediaAnalysisImageCaptionFeatures2 firstObject];
    [v5 setDetectedCaption:firstObject];
  }

  [v5 setIsNSFW:{-[AXMVisionResult includesNSFWFeatures](self, "includesNSFWFeatures")}];
  v14 = [optionsCopy objectForKeyedSubscript:@"ModifyForSensitiveContent"];

  [v5 setShouldModifyCaptionForSensitiveContent:{objc_msgSend(v14, "BOOLValue")}];
  sensitiveContentForCaptionFeatures = [(AXMVisionResult *)self sensitiveContentForCaptionFeatures];
  firstObject2 = [sensitiveContentForCaptionFeatures firstObject];
  [v5 setPrimarySensitiveContentFeature:firstObject2];

  blurFeatures = [(AXMVisionResult *)self blurFeatures];
  firstObject3 = [blurFeatures firstObject];
  [v5 setBlurFeature:firstObject3];

  brightnessFeatures = [(AXMVisionResult *)self brightnessFeatures];
  firstObject4 = [brightnessFeatures firstObject];
  [v5 setBrightnessFeature:firstObject4];

  iconClassFeatures = [(AXMVisionResult *)self iconClassFeatures];
  [v5 addDetectedIconClasses:iconClassFeatures];

  buildSpeakableDescription = [v5 buildSpeakableDescription];

  return buildSpeakableDescription;
}

- (id)detectedCaptionFeatureDescriptionWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [AXMDescriptionBuilder builderWithOptions:3];
  captionFeatures = [(AXMVisionResult *)self captionFeatures];
  if (AXRuntimeCheck_MediaAnalysisSupport())
  {
    mediaAnalysisImageCaptionFeatures = [(AXMVisionResult *)self mediaAnalysisImageCaptionFeatures];

    captionFeatures = mediaAnalysisImageCaptionFeatures;
  }

  if (![captionFeatures count] || -[AXMVisionResult includesNSFWFeatures](self, "includesNSFWFeatures") || objc_msgSend(captionFeatures, "count") && (objc_msgSend(captionFeatures, "firstObject"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isLowConfidence"), v8, v9))
  {
    if (AXRuntimeCheck_MediaAnalysisSupport())
    {
      [(AXMVisionResult *)self mediaAnalysisSceneClassificationFeatures];
    }

    else
    {
      [(AXMVisionResult *)self sceneClassificationFeatures];
    }
    v10 = ;
    [v5 addDetectedClassificationFeatures:v10];
  }

  if (AXRuntimeCheck_MediaAnalysisSupport())
  {
    mediaAnalysisImageCaptionFeatures2 = [(AXMVisionResult *)self mediaAnalysisImageCaptionFeatures];
    firstObject = [mediaAnalysisImageCaptionFeatures2 firstObject];
    [v5 setMediaAnalysisDetectedImageCaption:firstObject];
  }

  else
  {
    mediaAnalysisImageCaptionFeatures2 = [(AXMVisionResult *)self captionFeatures];
    firstObject = [mediaAnalysisImageCaptionFeatures2 firstObject];
    [v5 setDetectedCaption:firstObject];
  }

  [v5 setIsNSFW:{-[AXMVisionResult includesNSFWFeatures](self, "includesNSFWFeatures")}];
  v13 = [optionsCopy objectForKeyedSubscript:@"ModifyForSensitiveContent"];

  [v5 setShouldModifyCaptionForSensitiveContent:{objc_msgSend(v13, "BOOLValue")}];
  sensitiveContentForCaptionFeatures = [(AXMVisionResult *)self sensitiveContentForCaptionFeatures];
  firstObject2 = [sensitiveContentForCaptionFeatures firstObject];
  [v5 setPrimarySensitiveContentFeature:firstObject2];

  buildSpeakableDescription = [v5 buildSpeakableDescription];

  return buildSpeakableDescription;
}

- (id)detectedSceneClassificationFeatureDescriptionWithOptions:(id)options
{
  v4 = [AXMDescriptionBuilder builderWithOptions:3];
  if (AXRuntimeCheck_MediaAnalysisSupport())
  {
    [(AXMVisionResult *)self mediaAnalysisSceneClassificationFeatures];
  }

  else
  {
    [(AXMVisionResult *)self sceneClassificationFeatures];
  }
  v5 = ;
  [v4 addDetectedClassificationFeatures:v5];

  buildSpeakableDescription = [v4 buildSpeakableDescription];

  return buildSpeakableDescription;
}

- (id)captionTranslationLocale
{
  if (AXRuntimeCheck_MediaAnalysisSupport())
  {
    mediaAnalysisImageCaptionFeatures = [(AXMVisionResult *)self mediaAnalysisImageCaptionFeatures];
    firstObject = [mediaAnalysisImageCaptionFeatures firstObject];
    [firstObject mediaAnalysisTranslatedImageCaption];
  }

  else
  {
    mediaAnalysisImageCaptionFeatures = [(AXMVisionResult *)self captionFeatures];
    firstObject = [mediaAnalysisImageCaptionFeatures firstObject];
    [firstObject translatedCaption];
  }
  v5 = ;
  targetLocale = [v5 targetLocale];

  return targetLocale;
}

- (NSString)localizedDetectedIconHint
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v3 = [v2 localizedStringForKey:@"detected.icon.hint" value:&stru_1F23EA908 table:@"Accessibility"];

  return v3;
}

- (AXMVisionResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  _init = [(AXMVisionResult *)self _init];
  if (_init)
  {
    v6 = AXMSecureCodingClasses();
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:AXMVisionResultCodingKeyImage];
    [(AXMVisionResult *)_init setImage:v7];

    v8 = AXMSecureCodingClasses();
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:AXMVisionResultCodingKeyFeatures];
    [(AXMVisionResult *)_init setFeatures:v9];

    v10 = AXMSecureCodingClasses();
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"detectedTextDescription"];
    [(AXMVisionResult *)_init setDetectedTextDescription:v11];

    v12 = AXMSecureCodingClasses();
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"detectedTextType"];
    [(AXMVisionResult *)_init setDetectedTextType:v13];

    v14 = AXMSecureCodingClasses();
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"detectedTextSummary"];
    [(AXMVisionResult *)_init setDetectedTextSummary:v15];

    v16 = AXMSecureCodingClasses();
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"appliedImageOrientation"];
    [(AXMVisionResult *)_init setAppliedImageOrientation:v17];

    -[AXMVisionResult setImageRegistrationState:](_init, "setImageRegistrationState:", [coderCopy decodeIntegerForKey:@"imageRegistrationState"]);
    v18 = AXMSecureCodingClasses();
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"userContext"];
    [(AXMVisionResult *)_init setUserContext:v19];

    v20 = AXMSecureCodingClasses();
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"equivalenceToken"];
    [(AXMVisionResult *)_init setEquivalenceToken:v21];

    v22 = AXMSecureCodingClasses();
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"brailleEdges"];
    [(AXMVisionResult *)_init setBrailleEdges:v23];

    v24 = AXMSecureCodingClasses();
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"effectiveTextDetectionLocales"];
    [(AXMVisionResult *)_init setEffectiveTextDetectionLocales:v25];
  }

  return _init;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  image = [(AXMVisionResult *)self image];
  [coderCopy encodeObject:image forKey:AXMVisionResultCodingKeyImage];

  features = [(AXMVisionResult *)self features];
  [coderCopy encodeObject:features forKey:AXMVisionResultCodingKeyFeatures];

  detectedTextDescription = [(AXMVisionResult *)self detectedTextDescription];
  [coderCopy encodeObject:detectedTextDescription forKey:@"detectedTextDescription"];

  detectedTextType = [(AXMVisionResult *)self detectedTextType];
  [coderCopy encodeObject:detectedTextType forKey:@"detectedTextType"];

  detectedTextSummary = [(AXMVisionResult *)self detectedTextSummary];
  [coderCopy encodeObject:detectedTextSummary forKey:@"detectedTextSummary"];

  effectiveTextDetectionLocales = [(AXMVisionResult *)self effectiveTextDetectionLocales];
  [coderCopy encodeObject:effectiveTextDetectionLocales forKey:@"effectiveTextDetectionLocales"];

  appliedImageOrientation = [(AXMVisionResult *)self appliedImageOrientation];
  [coderCopy encodeObject:appliedImageOrientation forKey:@"appliedImageOrientation"];

  [coderCopy encodeInteger:-[AXMVisionResult imageRegistrationState](self forKey:{"imageRegistrationState"), @"imageRegistrationState"}];
  userContext = [(AXMVisionResult *)self userContext];
  [coderCopy encodeObject:userContext forKey:@"userContext"];

  equivalenceToken = [(AXMVisionResult *)self equivalenceToken];
  [coderCopy encodeObject:equivalenceToken forKey:@"equivalenceToken"];

  brailleEdges = [(AXMVisionResult *)self brailleEdges];
  [coderCopy encodeObject:brailleEdges forKey:@"brailleEdges"];

  metricSession = [(AXMVisionResult *)self metricSession];
  [coderCopy encodeObject:metricSession forKey:@"metrics"];
}

- (NSDictionary)featureGates
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  features = [(AXMVisionResult *)self features];
  v5 = [features countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(features);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        featureGates = [v9 featureGates];
        if (featureGates)
        {
          featureGates2 = [v9 featureGates];
          [dictionary addEntriesFromDictionary:featureGates2];
        }
      }

      v6 = [features countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return dictionary;
}

- (id)description
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"Locale";
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];
  v12[1] = @"ModifyForSensitiveContent";
  v13[0] = v3;
  v13[1] = MEMORY[0x1E695E118];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v5 = [(AXMVisionResult *)self detectedFeatureDescriptionWithOptions:v4];

  v6 = MEMORY[0x1E696AEC0];
  image = [(AXMVisionResult *)self image];
  features = [(AXMVisionResult *)self features];
  detectedTextDescription = [(AXMVisionResult *)self detectedTextDescription];
  v10 = [v6 stringWithFormat:@"AXMVisionResult<%p>: Image:%@ Results:%@ Feature Description: '%@'. Text Description: '%@'.", self, image, features, v5, detectedTextDescription];

  return v10;
}

- (NSArray)faceFeatures
{
  features = [(AXMVisionResult *)self features];
  v3 = [features ax_filteredArrayUsingBlock:&__block_literal_global_306];

  return v3;
}

- (NSArray)sceneClassificationFeatures
{
  features = [(AXMVisionResult *)self features];
  v3 = [features ax_filteredArrayUsingBlock:&__block_literal_global_308];

  return v3;
}

- (NSArray)objectClassificationFeatures
{
  features = [(AXMVisionResult *)self features];
  v3 = [features ax_filteredArrayUsingBlock:&__block_literal_global_310];

  return v3;
}

- (NSArray)captionFeatures
{
  features = [(AXMVisionResult *)self features];
  v3 = [features ax_filteredArrayUsingBlock:&__block_literal_global_312];

  return v3;
}

- (NSArray)mediaAnalysisImageCaptionFeatures
{
  features = [(AXMVisionResult *)self features];
  v3 = [features ax_filteredArrayUsingBlock:&__block_literal_global_314];

  return v3;
}

- (NSArray)mediaAnalysisSceneClassificationFeatures
{
  features = [(AXMVisionResult *)self features];
  v3 = [features ax_filteredArrayUsingBlock:&__block_literal_global_316];

  return v3;
}

- (NSArray)mediaAnalysisObjectClassificationFeatures
{
  features = [(AXMVisionResult *)self features];
  v3 = [features ax_filteredArrayUsingBlock:&__block_literal_global_318];

  return v3;
}

- (NSArray)mediaAnalysisNSFWClassificationFeatures
{
  features = [(AXMVisionResult *)self features];
  v3 = [features ax_filteredArrayUsingBlock:&__block_literal_global_320];

  return v3;
}

- (NSArray)mediaAnalysisSignificantEventClassificationFeatures
{
  features = [(AXMVisionResult *)self features];
  v3 = [features ax_filteredArrayUsingBlock:&__block_literal_global_322];

  return v3;
}

- (NSArray)mediaAnalysisFaceFeatures
{
  features = [(AXMVisionResult *)self features];
  v3 = [features ax_filteredArrayUsingBlock:&__block_literal_global_324];

  return v3;
}

- (BOOL)includesNSFWFeatures
{
  features = [(AXMVisionResult *)self features];
  v3 = [features ax_filteredArrayUsingBlock:&__block_literal_global_326];
  v4 = [v3 count] != 0;

  return v4;
}

uint64_t __73__AXMVisionResult_AXMVisionEngineLookupConvenience__includesNSFWFeatures__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (AXRuntimeCheck_MediaAnalysisSupport())
  {
    v3 = [v2 isMediaAnalysisNSFWClassification];
  }

  else
  {
    v3 = [v2 isNSFWClassification];
  }

  v4 = v3;

  return v4;
}

- (NSArray)modelClassificationFeatures
{
  features = [(AXMVisionResult *)self features];
  v3 = [features ax_filteredArrayUsingBlock:&__block_literal_global_328_0];

  return v3;
}

- (NSArray)ocrFeatures
{
  features = [(AXMVisionResult *)self features];
  v3 = [features ax_filteredArrayUsingBlock:&__block_literal_global_330];

  return v3;
}

- (NSArray)blurFeatures
{
  features = [(AXMVisionResult *)self features];
  v3 = [features ax_filteredArrayUsingBlock:&__block_literal_global_332];

  return v3;
}

- (NSArray)brightnessFeatures
{
  features = [(AXMVisionResult *)self features];
  v3 = [features ax_filteredArrayUsingBlock:&__block_literal_global_334_0];

  return v3;
}

- (NSArray)iconClassFeatures
{
  features = [(AXMVisionResult *)self features];
  v3 = [features ax_filteredArrayUsingBlock:&__block_literal_global_336];

  return v3;
}

- (id)sensitiveContentFeatures
{
  features = [(AXMVisionResult *)self features];
  v3 = [features ax_filteredArrayUsingBlock:&__block_literal_global_338];

  return v3;
}

- (NSArray)sensitiveContentForCaptionFeatures
{
  features = [(AXMVisionResult *)self features];
  v3 = [features ax_filteredArrayUsingBlock:&__block_literal_global_340];

  return v3;
}

uint64_t __87__AXMVisionResult_AXMVisionEngineLookupConvenience__sensitiveContentForCaptionFeatures__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isMediaAnalysisImageCaption])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 captionMayContainSensitiveContent];
  }

  return v3;
}

- (BOOL)captionMayContainSensitiveContent
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  captionFeatures = [(AXMVisionResult *)self captionFeatures];
  v3 = [captionFeatures countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(captionFeatures);
        }

        if ([*(*(&v7 + 1) + 8 * i) captionMayContainSensitiveContent])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [captionFeatures countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)includesFeaturesForImageExploration
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  features = [(AXMVisionResult *)self features];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __88__AXMVisionResult_AXMVisionEngineLookupConvenience__includesFeaturesForImageExploration__block_invoke;
  v4[3] = &unk_1E7A1D578;
  v4[4] = &v5;
  [features enumerateObjectsUsingBlock:v4];

  LOBYTE(features) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return features;
}

void __88__AXMVisionResult_AXMVisionEngineLookupConvenience__includesFeaturesForImageExploration__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 featureType];
  if (v3 <= 12)
  {
    if ((v3 - 5) >= 2 && v3 != 8)
    {
      if (v3 != 10)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

LABEL_7:
    *(*(*(a1 + 32) + 8) + 24) = 1;
    goto LABEL_16;
  }

  if (v3 == 13)
  {
    v8 = [v10 assetMetadata];
    v9 = [v8 localIdentifier];

    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_7;
  }

  if (v3 != 27)
  {
    if (v3 != 31)
    {
      goto LABEL_16;
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

LABEL_13:
  v5 = +[AXMPhotoVisionSupport _deniedVoiceOverObjectClassificationLabels];
  v6 = [v10 classificationLabel];
  v7 = [v5 containsObject:v6];

  if ((v7 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

LABEL_16:
}

@end