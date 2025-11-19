@interface AXMVisionResult
+ (AXMVisionResult)resultWithImage:(id)a3 features:(id)a4 orientation:(id)a5 metricSession:(id)a6 userContext:(id)a7;
- (AXMSemanticTextFactory)semanticTextFactory;
- (AXMVisionFeature)assetMetadataFeature;
- (AXMVisionFeature)colorInfoFeature;
- (AXMVisionResult)initWithCoder:(id)a3;
- (BOOL)captionMayContainSensitiveContent;
- (BOOL)includesFeaturesForImageExploration;
- (BOOL)includesNSFWFeatures;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAXMVisionResult:(id)a3;
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
- (id)_processFeatureChild:(id)a3;
- (id)_processFeatureTree:(id)a3;
- (id)captionTranslationLocale;
- (id)description;
- (id)detectedCaptionFeatureDescriptionWithOptions:(id)a3;
- (id)detectedFeatureDescriptionWithOptions:(id)a3;
- (id)detectedSceneClassificationFeatureDescriptionWithOptions:(id)a3;
- (id)sensitiveContentFeatures;
- (id)sortedFeatures;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXMVisionResult

+ (AXMVisionResult)resultWithImage:(id)a3 features:(id)a4 orientation:(id)a5 metricSession:(id)a6 userContext:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[AXMVisionResult alloc] _init];
  [v16 setFeatures:v14];

  [v16 setImage:v15];
  [v16 setAppliedImageOrientation:v13];

  [v16 setMetricSession:v12];
  [v16 setUserContext:v11];

  return v16;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AXMVisionResult *)self isEqualToAXMVisionResult:v4];
  }

  return v5;
}

- (BOOL)isEqualToAXMVisionResult:(id)a3
{
  v5 = a3;
  v6 = [(AXMVisionResult *)self features];
  v7 = [v5 features];
  if ([v6 isEqual:v7])
  {
    v8 = [(AXMVisionResult *)self captionTranslationLocale];
    if (v8 || ([v5 captionTranslationLocale], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = [(AXMVisionResult *)self captionTranslationLocale];
      v10 = [v5 captionTranslationLocale];
      v11 = [v9 isEqual:v10];

      if (v8)
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
  v2 = [(AXMVisionResult *)self features];
  v3 = [v2 hash];

  return v3;
}

- (id)sortedFeatures
{
  v2 = [(AXMVisionResult *)self features];
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_10];

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
  v2 = [(AXMVisionResult *)self features];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 featureType] == 4)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  v2 = [(AXMVisionResult *)self features];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 featureType] == 13)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
    v4 = [(AXMVisionResult *)self ocrFeatures];
    v5 = [v4 ax_filteredArrayUsingBlock:&__block_literal_global_65];
    v6 = [v5 firstObject];

    if ([v6 isValueSpeakable])
    {
      v7 = +[AXMVisionFeature nameForOCRType:](AXMVisionFeature, "nameForOCRType:", [v6 ocrFeatureType]);
      v8 = self->_detectedTextType;
      self->_detectedTextType = v7;
    }

    detectedTextType = self->_detectedTextType;
  }

  v9 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v10 = [(NSString *)detectedTextType stringByTrimmingCharactersInSet:v9];

  return v10;
}

- (NSString)detectedTextSummary
{
  detectedTextSummary = self->_detectedTextSummary;
  if (!detectedTextSummary)
  {
    v4 = [(AXMVisionResult *)self ocrFeatures];
    v5 = [v4 ax_filteredArrayUsingBlock:&__block_literal_global_69];
    v6 = [v5 firstObject];

    if ([v6 isValueSpeakable])
    {
      v7 = [v6 value];
      v8 = self->_detectedTextSummary;
      self->_detectedTextSummary = v7;
    }

    v9 = [(AXMVisionResult *)self ocrFeatures];
    v10 = [v9 ax_filteredArrayUsingBlock:&__block_literal_global_71];
    v11 = [v10 firstObject];

    if ([v11 isValueSpeakable])
    {
      v12 = [v11 values];
      v13 = [v12 objectAtIndexedSubscript:0];
      v14 = [MEMORY[0x1E695DFB0] null];
      v15 = [v13 isEqual:v14];

      if ((v15 & 1) == 0)
      {
        v16 = [v11 values];
        v17 = [v16 objectAtIndexedSubscript:0];
        v18 = self->_detectedTextSummary;
        self->_detectedTextSummary = v17;
      }
    }

    v19 = [(AXMVisionResult *)self ocrFeatures];
    v20 = [v19 ax_filteredArrayUsingBlock:&__block_literal_global_74];
    v21 = [v20 firstObject];

    if ([v21 isValueSpeakable])
    {
      v22 = [v21 value];
      v23 = self->_detectedTextSummary;
      self->_detectedTextSummary = v22;
    }

    detectedTextSummary = self->_detectedTextSummary;
  }

  v24 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v25 = [(NSString *)detectedTextSummary stringByTrimmingCharactersInSet:v24];

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
    v4 = [(AXMVisionResult *)self ocrFeatures];
    v5 = [v4 ax_filteredArrayUsingBlock:&__block_literal_global_76];
    v6 = [v5 firstObject];

    if ([v6 isValueSpeakable])
    {
      v7 = [v6 value];
      v8 = self->_detectedTextDescription;
      self->_detectedTextDescription = v7;
    }

    v9 = [(AXMVisionResult *)self ocrFeatures];
    v10 = [v9 ax_filteredArrayUsingBlock:&__block_literal_global_78];
    v11 = [v10 firstObject];

    if ([v11 isValueSpeakable])
    {
      v12 = [v11 values];
      v13 = [v12 objectAtIndexedSubscript:1];
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

- (id)_processFeatureChild:(id)a3
{
  v80 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [v4 ocrFeatureType];
  v7 = [AXMVisionFeature nameForOCRType:v6];
  v8 = [(AXMVisionResult *)self parentOCRFeatureTypes];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
  v10 = [v8 containsObject:v9];

  if (v10)
  {
    [v5 setObject:v7 forKey:@"AXMType"];
    v11 = [v4 value];
    if (v11)
    {
      [v5 setObject:v11 forKey:@"AXMContent"];
    }

    v12 = [MEMORY[0x1E695DF70] array];
    v62 = v11;
    if (v6 == 2)
    {
      v42 = v5;
      v43 = [(AXMVisionResult *)self semanticTextFactory];
      v44 = [v4 value];
      [(AXMVisionResult *)self effectiveTextDetectionLocales];
      v46 = v45 = v4;
      v47 = [v46 firstObject];
      v21 = [v43 semanticTextForText:v44 withLocale:v47];

      if ([v21 isSemanticallyComplete])
      {
        v61 = v7;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v48 = [v45 subfeatures];
        v49 = [v48 countByEnumeratingWithState:&v73 objects:v79 count:16];
        v4 = v45;
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
                objc_enumerationMutation(v48);
              }

              v53 = [(AXMVisionResult *)self _processFeatureChild:*(*(&v73 + 1) + 8 * i)];
              [v12 addObject:v53];
            }

            v50 = [v48 countByEnumeratingWithState:&v73 objects:v79 count:16];
          }

          while (v50);
        }

        v5 = v42;
        [v42 setObject:v12 forKey:@"AXMChildren"];
        v54 = MEMORY[0x1E696B098];
        [v4 normalizedFrame];
        v55 = [v54 axmValueWithCGRect:?];
        [v42 setObject:v55 forKey:@"AXMBounds"];

        v7 = v61;
      }

      else
      {
        v5 = v42;
        v4 = v45;
      }
    }

    else
    {
      v13 = v7;
      if (v6 == 13 || v6 == 7)
      {
        [v5 setObject:MEMORY[0x1E695E118] forKey:@"AXMRowType"];
      }

      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v14 = [v4 subfeatures];
      v15 = [v14 countByEnumeratingWithState:&v69 objects:v78 count:16];
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
              objc_enumerationMutation(v14);
            }

            v19 = [(AXMVisionResult *)self _processFeatureChild:*(*(&v69 + 1) + 8 * j)];
            [v12 addObject:v19];
          }

          v16 = [v14 countByEnumeratingWithState:&v69 objects:v78 count:16];
        }

        while (v16);
      }

      [v5 setObject:v12 forKey:@"AXMChildren"];
      v20 = MEMORY[0x1E696B098];
      [v4 normalizedFrame];
      v21 = [v20 axmValueWithCGRect:?];
      [v5 setObject:v21 forKey:@"AXMBounds"];
      v7 = v13;
    }

    v22 = v62;
  }

  else
  {
    v23 = [(AXMVisionResult *)self smallestChildOCRFeatureTypes];
    v24 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
    v25 = [v23 containsObject:v24];

    if (!v25)
    {
      goto LABEL_44;
    }

    v22 = [v4 value];
    [v5 setObject:v7 forKey:@"AXMType"];
    if (v6 == 4)
    {
      v59 = v5;
      v60 = v7;
      v58 = v4;
      v26 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v63 = v22;
      v27 = [v22 componentsSeparatedByCharactersInSet:v26];
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
            v37 = [(AXMVisionResult *)self semanticTextFactory];
            v38 = [(AXMVisionResult *)self effectiveTextDetectionLocales];
            v39 = [v38 firstObject];
            v40 = [v37 _textExistsInLexicon:v36 withLocale:v39];

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

      v5 = v59;
      [v59 setObject:v33 forKey:@"AXMContent"];

      v4 = v58;
      v7 = v60;
      v22 = v63;
    }

    else
    {
      [v5 setObject:v22 forKey:@"AXMContent"];
    }

    v56 = MEMORY[0x1E696B098];
    [v4 normalizedFrame];
    v12 = [v56 axmValueWithCGRect:?];
    [v5 setObject:v12 forKey:@"AXMBounds"];
  }

LABEL_44:

  return v5;
}

- (id)_processFeatureTree:(id)a3
{
  v4 = a3;
  v5 = [v4 featureType];
  v6 = [MEMORY[0x1E695DF90] dictionary];
  if (v5 <= 7)
  {
    if (v5 == 5)
    {
      v16 = [AXMVisionFeature nameForFeatureType:5];
      [v6 setObject:v16 forKey:@"AXMType"];

      v7 = [v4 faceDetectionResult];
      v17 = [v7 likelyExpression];
      v18 = MEMORY[0x1E696AEC0];
      v19 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
      v20 = [v19 localizedStringForKey:@"description.face" value:&stru_1F23EA908 table:@"Accessibility"];
      v21 = [AXMVisionFeatureFaceDetectionResult nameForFaceExpression:v17];
      v22 = [v18 stringWithFormat:v20, v21];
      [v6 setObject:v22 forKey:@"AXMContent"];

      v23 = MEMORY[0x1E696B098];
      [v4 normalizedFrame];
      v24 = [v23 axmValueWithCGRect:?];
      [v6 setObject:v24 forKey:@"AXMBounds"];

      goto LABEL_14;
    }

    if (v5 != 7)
    {
      goto LABEL_15;
    }

    v8 = [AXMVisionFeature nameForFeatureType:7];
    [v6 setObject:v8 forKey:@"AXMType"];

    v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v10 = v9;
    v11 = @"description.person";
  }

  else
  {
    if (v5 != 19)
    {
      if (v5 != 10)
      {
        if (v5 != 8)
        {
          goto LABEL_15;
        }

        [(AXMVisionResult *)self _processFeatureChild:v4];
        v6 = v7 = v6;
        goto LABEL_14;
      }

      v14 = [AXMVisionFeature nameForFeatureType:10];
      [v6 setObject:v14 forKey:@"AXMType"];

      v10 = [v4 classificationLabel];
      [v6 setObject:v10 forKey:@"AXMContent"];
      goto LABEL_12;
    }

    v12 = [AXMVisionFeature nameForFeatureType:19];
    [v6 setObject:v12 forKey:@"AXMType"];

    v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v10 = v9;
    v11 = @"description.prominent.object";
  }

  v13 = [v9 localizedStringForKey:v11 value:&stru_1F23EA908 table:@"Accessibility"];
  [v6 setObject:v13 forKey:@"AXMContent"];

LABEL_12:
  v15 = MEMORY[0x1E696B098];
  [v4 normalizedFrame];
  v7 = [v15 axmValueWithCGRect:?];
  [v6 setObject:v7 forKey:@"AXMBounds"];
LABEL_14:

LABEL_15:

  return v6;
}

- (NSDictionary)detectedFeatureDictionary
{
  v37 = *MEMORY[0x1E69E9840];
  v20 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [(AXMVisionResult *)self evaluatedFeatureTypes];
  v23 = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v3;
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
        v6 = [MEMORY[0x1E695DF90] dictionary];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __44__AXMVisionResult_detectedFeatureDictionary__block_invoke;
        v30[3] = &unk_1E7A1D540;
        v30[4] = v5;
        v7 = [MEMORY[0x1E696AE18] predicateWithBlock:v30];
        v8 = [(AXMVisionResult *)self features];
        v9 = [v8 filteredArrayUsingPredicate:v7];

        v10 = +[AXMVisionFeature nameForFeatureType:](AXMVisionFeature, "nameForFeatureType:", [v5 integerValue]);
        [v6 setObject:v10 forKey:@"AXMTypeContainer"];

        if ([v5 integerValue] == 8 || objc_msgSend(v5, "integerValue") == 5 || objc_msgSend(v5, "integerValue") == 10 || objc_msgSend(v5, "integerValue") == 19 || objc_msgSend(v5, "integerValue") == 7)
        {
          v25 = v7;
          v11 = [MEMORY[0x1E695DF70] array];
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
                [v11 addObject:v18];
              }

              v15 = [v13 countByEnumeratingWithState:&v26 objects:v35 count:16];
            }

            while (v15);
          }

          [v6 setObject:v11 forKey:@"AXMChildren"];
          v7 = v25;
          v9 = v12;
        }

        [v23 addObject:v6];
      }

      v24 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v24);
  }

  [v20 setObject:v23 forKey:@"AXMChildren"];

  return v20;
}

BOOL __44__AXMVisionResult_detectedFeatureDictionary__block_invoke(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a2, "featureType")}];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (id)detectedFeatureDescriptionWithOptions:(id)a3
{
  v4 = a3;
  v5 = [AXMDescriptionBuilder builderWithOptions:7];
  if (AXRuntimeCheck_MediaAnalysisSupport())
  {
    v6 = [(AXMVisionResult *)self mediaAnalysisFaceFeatures];
    [v5 addMediaAnalysisDetectedFaces:v6];
  }

  else
  {
    v6 = [(AXMVisionResult *)self faceFeatures];
    [v5 addDetectedFaces:v6];
  }

  v7 = [(AXMVisionResult *)self captionFeatures];
  if (AXRuntimeCheck_MediaAnalysisSupport())
  {
    v8 = [(AXMVisionResult *)self mediaAnalysisImageCaptionFeatures];

    v7 = v8;
  }

  if (![v7 count] || -[AXMVisionResult includesNSFWFeatures](self, "includesNSFWFeatures") || objc_msgSend(v7, "count") && (objc_msgSend(v7, "firstObject"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isLowConfidence"), v9, v10))
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
    v12 = [(AXMVisionResult *)self mediaAnalysisImageCaptionFeatures];
    v13 = [v12 firstObject];
    [v5 setMediaAnalysisDetectedImageCaption:v13];
  }

  else
  {
    v12 = [(AXMVisionResult *)self captionFeatures];
    v13 = [v12 firstObject];
    [v5 setDetectedCaption:v13];
  }

  [v5 setIsNSFW:{-[AXMVisionResult includesNSFWFeatures](self, "includesNSFWFeatures")}];
  v14 = [v4 objectForKeyedSubscript:@"ModifyForSensitiveContent"];

  [v5 setShouldModifyCaptionForSensitiveContent:{objc_msgSend(v14, "BOOLValue")}];
  v15 = [(AXMVisionResult *)self sensitiveContentForCaptionFeatures];
  v16 = [v15 firstObject];
  [v5 setPrimarySensitiveContentFeature:v16];

  v17 = [(AXMVisionResult *)self blurFeatures];
  v18 = [v17 firstObject];
  [v5 setBlurFeature:v18];

  v19 = [(AXMVisionResult *)self brightnessFeatures];
  v20 = [v19 firstObject];
  [v5 setBrightnessFeature:v20];

  v21 = [(AXMVisionResult *)self iconClassFeatures];
  [v5 addDetectedIconClasses:v21];

  v22 = [v5 buildSpeakableDescription];

  return v22;
}

- (id)detectedCaptionFeatureDescriptionWithOptions:(id)a3
{
  v4 = a3;
  v5 = [AXMDescriptionBuilder builderWithOptions:3];
  v6 = [(AXMVisionResult *)self captionFeatures];
  if (AXRuntimeCheck_MediaAnalysisSupport())
  {
    v7 = [(AXMVisionResult *)self mediaAnalysisImageCaptionFeatures];

    v6 = v7;
  }

  if (![v6 count] || -[AXMVisionResult includesNSFWFeatures](self, "includesNSFWFeatures") || objc_msgSend(v6, "count") && (objc_msgSend(v6, "firstObject"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isLowConfidence"), v8, v9))
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
    v11 = [(AXMVisionResult *)self mediaAnalysisImageCaptionFeatures];
    v12 = [v11 firstObject];
    [v5 setMediaAnalysisDetectedImageCaption:v12];
  }

  else
  {
    v11 = [(AXMVisionResult *)self captionFeatures];
    v12 = [v11 firstObject];
    [v5 setDetectedCaption:v12];
  }

  [v5 setIsNSFW:{-[AXMVisionResult includesNSFWFeatures](self, "includesNSFWFeatures")}];
  v13 = [v4 objectForKeyedSubscript:@"ModifyForSensitiveContent"];

  [v5 setShouldModifyCaptionForSensitiveContent:{objc_msgSend(v13, "BOOLValue")}];
  v14 = [(AXMVisionResult *)self sensitiveContentForCaptionFeatures];
  v15 = [v14 firstObject];
  [v5 setPrimarySensitiveContentFeature:v15];

  v16 = [v5 buildSpeakableDescription];

  return v16;
}

- (id)detectedSceneClassificationFeatureDescriptionWithOptions:(id)a3
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

  v6 = [v4 buildSpeakableDescription];

  return v6;
}

- (id)captionTranslationLocale
{
  if (AXRuntimeCheck_MediaAnalysisSupport())
  {
    v3 = [(AXMVisionResult *)self mediaAnalysisImageCaptionFeatures];
    v4 = [v3 firstObject];
    [v4 mediaAnalysisTranslatedImageCaption];
  }

  else
  {
    v3 = [(AXMVisionResult *)self captionFeatures];
    v4 = [v3 firstObject];
    [v4 translatedCaption];
  }
  v5 = ;
  v6 = [v5 targetLocale];

  return v6;
}

- (NSString)localizedDetectedIconHint
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v3 = [v2 localizedStringForKey:@"detected.icon.hint" value:&stru_1F23EA908 table:@"Accessibility"];

  return v3;
}

- (AXMVisionResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AXMVisionResult *)self _init];
  if (v5)
  {
    v6 = AXMSecureCodingClasses();
    v7 = [v4 decodeObjectOfClasses:v6 forKey:AXMVisionResultCodingKeyImage];
    [(AXMVisionResult *)v5 setImage:v7];

    v8 = AXMSecureCodingClasses();
    v9 = [v4 decodeObjectOfClasses:v8 forKey:AXMVisionResultCodingKeyFeatures];
    [(AXMVisionResult *)v5 setFeatures:v9];

    v10 = AXMSecureCodingClasses();
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"detectedTextDescription"];
    [(AXMVisionResult *)v5 setDetectedTextDescription:v11];

    v12 = AXMSecureCodingClasses();
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"detectedTextType"];
    [(AXMVisionResult *)v5 setDetectedTextType:v13];

    v14 = AXMSecureCodingClasses();
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"detectedTextSummary"];
    [(AXMVisionResult *)v5 setDetectedTextSummary:v15];

    v16 = AXMSecureCodingClasses();
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"appliedImageOrientation"];
    [(AXMVisionResult *)v5 setAppliedImageOrientation:v17];

    -[AXMVisionResult setImageRegistrationState:](v5, "setImageRegistrationState:", [v4 decodeIntegerForKey:@"imageRegistrationState"]);
    v18 = AXMSecureCodingClasses();
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"userContext"];
    [(AXMVisionResult *)v5 setUserContext:v19];

    v20 = AXMSecureCodingClasses();
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"equivalenceToken"];
    [(AXMVisionResult *)v5 setEquivalenceToken:v21];

    v22 = AXMSecureCodingClasses();
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"brailleEdges"];
    [(AXMVisionResult *)v5 setBrailleEdges:v23];

    v24 = AXMSecureCodingClasses();
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"effectiveTextDetectionLocales"];
    [(AXMVisionResult *)v5 setEffectiveTextDetectionLocales:v25];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AXMVisionResult *)self image];
  [v4 encodeObject:v5 forKey:AXMVisionResultCodingKeyImage];

  v6 = [(AXMVisionResult *)self features];
  [v4 encodeObject:v6 forKey:AXMVisionResultCodingKeyFeatures];

  v7 = [(AXMVisionResult *)self detectedTextDescription];
  [v4 encodeObject:v7 forKey:@"detectedTextDescription"];

  v8 = [(AXMVisionResult *)self detectedTextType];
  [v4 encodeObject:v8 forKey:@"detectedTextType"];

  v9 = [(AXMVisionResult *)self detectedTextSummary];
  [v4 encodeObject:v9 forKey:@"detectedTextSummary"];

  v10 = [(AXMVisionResult *)self effectiveTextDetectionLocales];
  [v4 encodeObject:v10 forKey:@"effectiveTextDetectionLocales"];

  v11 = [(AXMVisionResult *)self appliedImageOrientation];
  [v4 encodeObject:v11 forKey:@"appliedImageOrientation"];

  [v4 encodeInteger:-[AXMVisionResult imageRegistrationState](self forKey:{"imageRegistrationState"), @"imageRegistrationState"}];
  v12 = [(AXMVisionResult *)self userContext];
  [v4 encodeObject:v12 forKey:@"userContext"];

  v13 = [(AXMVisionResult *)self equivalenceToken];
  [v4 encodeObject:v13 forKey:@"equivalenceToken"];

  v14 = [(AXMVisionResult *)self brailleEdges];
  [v4 encodeObject:v14 forKey:@"brailleEdges"];

  v15 = [(AXMVisionResult *)self metricSession];
  [v4 encodeObject:v15 forKey:@"metrics"];
}

- (NSDictionary)featureGates
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(AXMVisionResult *)self features];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 featureGates];
        if (v10)
        {
          v11 = [v9 featureGates];
          [v3 addEntriesFromDictionary:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
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
  v7 = [(AXMVisionResult *)self image];
  v8 = [(AXMVisionResult *)self features];
  v9 = [(AXMVisionResult *)self detectedTextDescription];
  v10 = [v6 stringWithFormat:@"AXMVisionResult<%p>: Image:%@ Results:%@ Feature Description: '%@'. Text Description: '%@'.", self, v7, v8, v5, v9];

  return v10;
}

- (NSArray)faceFeatures
{
  v2 = [(AXMVisionResult *)self features];
  v3 = [v2 ax_filteredArrayUsingBlock:&__block_literal_global_306];

  return v3;
}

- (NSArray)sceneClassificationFeatures
{
  v2 = [(AXMVisionResult *)self features];
  v3 = [v2 ax_filteredArrayUsingBlock:&__block_literal_global_308];

  return v3;
}

- (NSArray)objectClassificationFeatures
{
  v2 = [(AXMVisionResult *)self features];
  v3 = [v2 ax_filteredArrayUsingBlock:&__block_literal_global_310];

  return v3;
}

- (NSArray)captionFeatures
{
  v2 = [(AXMVisionResult *)self features];
  v3 = [v2 ax_filteredArrayUsingBlock:&__block_literal_global_312];

  return v3;
}

- (NSArray)mediaAnalysisImageCaptionFeatures
{
  v2 = [(AXMVisionResult *)self features];
  v3 = [v2 ax_filteredArrayUsingBlock:&__block_literal_global_314];

  return v3;
}

- (NSArray)mediaAnalysisSceneClassificationFeatures
{
  v2 = [(AXMVisionResult *)self features];
  v3 = [v2 ax_filteredArrayUsingBlock:&__block_literal_global_316];

  return v3;
}

- (NSArray)mediaAnalysisObjectClassificationFeatures
{
  v2 = [(AXMVisionResult *)self features];
  v3 = [v2 ax_filteredArrayUsingBlock:&__block_literal_global_318];

  return v3;
}

- (NSArray)mediaAnalysisNSFWClassificationFeatures
{
  v2 = [(AXMVisionResult *)self features];
  v3 = [v2 ax_filteredArrayUsingBlock:&__block_literal_global_320];

  return v3;
}

- (NSArray)mediaAnalysisSignificantEventClassificationFeatures
{
  v2 = [(AXMVisionResult *)self features];
  v3 = [v2 ax_filteredArrayUsingBlock:&__block_literal_global_322];

  return v3;
}

- (NSArray)mediaAnalysisFaceFeatures
{
  v2 = [(AXMVisionResult *)self features];
  v3 = [v2 ax_filteredArrayUsingBlock:&__block_literal_global_324];

  return v3;
}

- (BOOL)includesNSFWFeatures
{
  v2 = [(AXMVisionResult *)self features];
  v3 = [v2 ax_filteredArrayUsingBlock:&__block_literal_global_326];
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
  v2 = [(AXMVisionResult *)self features];
  v3 = [v2 ax_filteredArrayUsingBlock:&__block_literal_global_328_0];

  return v3;
}

- (NSArray)ocrFeatures
{
  v2 = [(AXMVisionResult *)self features];
  v3 = [v2 ax_filteredArrayUsingBlock:&__block_literal_global_330];

  return v3;
}

- (NSArray)blurFeatures
{
  v2 = [(AXMVisionResult *)self features];
  v3 = [v2 ax_filteredArrayUsingBlock:&__block_literal_global_332];

  return v3;
}

- (NSArray)brightnessFeatures
{
  v2 = [(AXMVisionResult *)self features];
  v3 = [v2 ax_filteredArrayUsingBlock:&__block_literal_global_334_0];

  return v3;
}

- (NSArray)iconClassFeatures
{
  v2 = [(AXMVisionResult *)self features];
  v3 = [v2 ax_filteredArrayUsingBlock:&__block_literal_global_336];

  return v3;
}

- (id)sensitiveContentFeatures
{
  v2 = [(AXMVisionResult *)self features];
  v3 = [v2 ax_filteredArrayUsingBlock:&__block_literal_global_338];

  return v3;
}

- (NSArray)sensitiveContentForCaptionFeatures
{
  v2 = [(AXMVisionResult *)self features];
  v3 = [v2 ax_filteredArrayUsingBlock:&__block_literal_global_340];

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
  v2 = [(AXMVisionResult *)self captionFeatures];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) captionMayContainSensitiveContent])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  v2 = [(AXMVisionResult *)self features];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __88__AXMVisionResult_AXMVisionEngineLookupConvenience__includesFeaturesForImageExploration__block_invoke;
  v4[3] = &unk_1E7A1D578;
  v4[4] = &v5;
  [v2 enumerateObjectsUsingBlock:v4];

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
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