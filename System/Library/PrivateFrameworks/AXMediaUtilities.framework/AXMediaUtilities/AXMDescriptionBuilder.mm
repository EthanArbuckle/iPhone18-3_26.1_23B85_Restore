@interface AXMDescriptionBuilder
+ (id)builderWithOptions:(int64_t)options;
- (BOOL)_shouldReplaceCaptionWithGenericTemplate;
- (id)_ignoredTagsForTags:(id)tags;
- (id)_initWithOptions:(int64_t)options;
- (id)_knownPersonNames;
- (id)_stringForPauseType:(int64_t)type;
- (id)_subsumedTagsForTags:(id)tags;
- (id)_templateRulesForTag:(id)tag;
- (id)buildSpeakableDescription;
- (void)_addBlurInformationToDescription:(id)description;
- (void)_addBrightnessInformationToDescription:(id)description;
- (void)_addCaptionInformationToDescription:(id)description didConsumeDetectedFaceInfo:(BOOL *)info;
- (void)_addClassificationInformationToDescription:(id)description;
- (void)_addDetailedFaceInformationToDescription:(id)description;
- (void)_addFaceInformationToDescription:(id)description;
- (void)_addGenericTemplateForCaptionInformationToDescription:(id)description;
- (void)_addIconClassInformationToDescription:(id)description;
- (void)_addPersonSummaryToDescription:(id)description;
- (void)_appendPauseType:(int64_t)type toDescriptionIfNeeded:(id)needed;
- (void)_appendToDescription:(id)description afterPauseType:(int64_t)type withContents:(id)contents;
- (void)addDetectedClassificationFeatures:(id)features;
- (void)addDetectedClassificationLocalizedValue:(id)value forLabel:(id)label;
- (void)addDetectedFaces:(id)faces;
- (void)addDetectedIconClasses:(id)classes;
- (void)addMediaAnalysisDetectedFaces:(id)faces;
@end

@implementation AXMDescriptionBuilder

+ (id)builderWithOptions:(int64_t)options
{
  v3 = [[AXMDescriptionBuilder alloc] _initWithOptions:options];

  return v3;
}

- (id)_initWithOptions:(int64_t)options
{
  v5.receiver = self;
  v5.super_class = AXMDescriptionBuilder;
  result = [(AXMDescriptionBuilder *)&v5 init];
  if (result)
  {
    *(result + 1) = options;
  }

  return result;
}

- (void)addDetectedFaces:(id)faces
{
  facesCopy = faces;
  if ([facesCopy count])
  {
    faceFeatures = self->_faceFeatures;
    if (!faceFeatures)
    {
      array = [MEMORY[0x1E695DF70] array];
      v6 = self->_faceFeatures;
      self->_faceFeatures = array;

      faceFeatures = self->_faceFeatures;
    }

    [(NSMutableArray *)faceFeatures addObjectsFromArray:facesCopy];
  }
}

- (void)addMediaAnalysisDetectedFaces:(id)faces
{
  facesCopy = faces;
  if ([facesCopy count])
  {
    mediaAnalysisFaceFeatures = self->_mediaAnalysisFaceFeatures;
    if (!mediaAnalysisFaceFeatures)
    {
      array = [MEMORY[0x1E695DF70] array];
      v6 = self->_mediaAnalysisFaceFeatures;
      self->_mediaAnalysisFaceFeatures = array;

      mediaAnalysisFaceFeatures = self->_mediaAnalysisFaceFeatures;
    }

    [(NSMutableArray *)mediaAnalysisFaceFeatures addObjectsFromArray:facesCopy];
  }
}

- (void)addDetectedClassificationFeatures:(id)features
{
  v17 = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [featuresCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(featuresCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        classificationLocalizedValue = [v9 classificationLocalizedValue];
        classificationLabel = [v9 classificationLabel];
        [(AXMDescriptionBuilder *)self addDetectedClassificationLocalizedValue:classificationLocalizedValue forLabel:classificationLabel];
      }

      v6 = [featuresCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)addDetectedClassificationLocalizedValue:(id)value forLabel:(id)label
{
  valueCopy = value;
  labelCopy = label;
  if ([valueCopy length] && objc_msgSend(labelCopy, "length"))
  {
    classificationLabelsToLocValuesMap = self->_classificationLabelsToLocValuesMap;
    if (!classificationLabelsToLocValuesMap)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v9 = self->_classificationLabelsToLocValuesMap;
      self->_classificationLabelsToLocValuesMap = dictionary;

      classificationLabelsToLocValuesMap = self->_classificationLabelsToLocValuesMap;
    }

    [(NSMutableDictionary *)classificationLabelsToLocValuesMap setObject:valueCopy forKeyedSubscript:labelCopy];
  }
}

- (void)addDetectedIconClasses:(id)classes
{
  classesCopy = classes;
  if ([classesCopy count])
  {
    iconClassFeatures = self->_iconClassFeatures;
    if (!iconClassFeatures)
    {
      array = [MEMORY[0x1E695DF70] array];
      v6 = self->_iconClassFeatures;
      self->_iconClassFeatures = array;

      iconClassFeatures = self->_iconClassFeatures;
    }

    [(NSMutableArray *)iconClassFeatures addObjectsFromArray:classesCopy];
  }
}

- (BOOL)_shouldReplaceCaptionWithGenericTemplate
{
  if ([(AXMDescriptionBuilder *)self _usesTemplateForLowConfidenceAndExplicitFeatures])
  {
    v3 = self->_captionFeature;
    if (AXRuntimeCheck_MediaAnalysisSupport())
    {
      v4 = self->_mediaAnalysisImageCaptionFeature;

      v3 = v4;
    }

    isLowConfidence = [(AXMVisionFeature *)v3 isLowConfidence];
    if (isLowConfidence)
    {
      v6 = @"caption-low-confidence";
    }

    else
    {
      isLowConfidence = [(AXMDescriptionBuilder *)self isNSFW];
      if (!isLowConfidence)
      {
        v7 = 0;
        goto LABEL_11;
      }

      v6 = @"caption-nsfw";
    }

    __65__AXMDescriptionBuilder__shouldReplaceCaptionWithGenericTemplate__block_invoke(isLowConfidence, v6);
    v7 = 1;
LABEL_11:

    return v7;
  }

  return 0;
}

void __65__AXMDescriptionBuilder__shouldReplaceCaptionWithGenericTemplate__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (CoreAnalyticsLibraryCore())
  {
    v3 = dispatch_get_global_queue(17, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__AXMDescriptionBuilder__shouldReplaceCaptionWithGenericTemplate__block_invoke_2;
    block[3] = &unk_1E7A1CCB8;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

void __65__AXMDescriptionBuilder__shouldReplaceCaptionWithGenericTemplate__block_invoke_2(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__AXMDescriptionBuilder__shouldReplaceCaptionWithGenericTemplate__block_invoke_3;
  v4[3] = &unk_1E7A1CC90;
  v5 = *(a1 + 32);
  v1 = v4;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getAnalyticsSendEventLazySymbolLoc_ptr;
  v10 = getAnalyticsSendEventLazySymbolLoc_ptr;
  if (!getAnalyticsSendEventLazySymbolLoc_ptr)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getAnalyticsSendEventLazySymbolLoc_block_invoke;
    v6[3] = &unk_1E7A1C700;
    v6[4] = &v7;
    __getAnalyticsSendEventLazySymbolLoc_block_invoke(v6);
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v3 = __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v3);
  }

  v2(@"com.apple.accessibility.vot.caption.fallbacktemplates", v1);
}

id __65__AXMDescriptionBuilder__shouldReplaceCaptionWithGenericTemplate__block_invoke_3(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4 = @"fallbacktemplate";
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)buildSpeakableDescription
{
  speakableDescription = self->_speakableDescription;
  if (speakableDescription)
  {
    v3 = speakableDescription;
  }

  else
  {
    string = [MEMORY[0x1E696AD60] string];
    v6 = self->_speakableDescription;
    self->_speakableDescription = string;

    v12 = 0;
    v7 = self->_captionFeature;
    if (AXRuntimeCheck_MediaAnalysisSupport())
    {
      v8 = self->_mediaAnalysisImageCaptionFeature;

      v7 = v8;
    }

    if (v7)
    {
      _shouldReplaceCaptionWithGenericTemplate = [(AXMDescriptionBuilder *)self _shouldReplaceCaptionWithGenericTemplate];
      v10 = self->_speakableDescription;
      if (_shouldReplaceCaptionWithGenericTemplate)
      {
        [(AXMDescriptionBuilder *)self _addGenericTemplateForCaptionInformationToDescription:v10];
      }

      else
      {
        [(AXMDescriptionBuilder *)self _addCaptionInformationToDescription:v10 didConsumeDetectedFaceInfo:&v12];
      }
    }

    [(AXMDescriptionBuilder *)self _addBrightnessInformationToDescription:self->_speakableDescription];
    [(AXMDescriptionBuilder *)self _addBlurInformationToDescription:self->_speakableDescription];
    if ((v12 & 1) == 0)
    {
      [(AXMDescriptionBuilder *)self _addFaceInformationToDescription:self->_speakableDescription];
      v12 = 1;
    }

    if (!v7)
    {
      [(AXMDescriptionBuilder *)self _addClassificationInformationToDescription:self->_speakableDescription];
    }

    [(AXMDescriptionBuilder *)self _addIconClassInformationToDescription:self->_speakableDescription];
    v3 = self->_speakableDescription;
  }

  return v3;
}

- (id)_stringForPauseType:(int64_t)type
{
  if (type)
  {
    return @".";
  }

  else
  {
    return @",";
  }
}

- (void)_appendPauseType:(int64_t)type toDescriptionIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([neededCopy length] && (objc_msgSend(neededCopy, "hasSuffix:", @",") & 1) == 0 && (objc_msgSend(neededCopy, "hasSuffix:", @".") & 1) == 0)
  {
    v6 = [(AXMDescriptionBuilder *)self _stringForPauseType:type];
    [neededCopy appendFormat:@"%@ ", v6];
  }
}

- (void)_appendToDescription:(id)description afterPauseType:(int64_t)type withContents:(id)contents
{
  descriptionCopy = description;
  contentsCopy = contents;
  if ([contentsCopy length])
  {
    [(AXMDescriptionBuilder *)self _appendPauseType:type toDescriptionIfNeeded:descriptionCopy];
    [descriptionCopy appendString:contentsCopy];
  }
}

- (void)_addBrightnessInformationToDescription:(id)description
{
  brightnessFeature = self->_brightnessFeature;
  if (brightnessFeature)
  {
    descriptionCopy = description;
    [(AXMVisionFeature *)brightnessFeature brightness];
    if (v6 <= 0.2)
    {
      v7 = @"photo.description.brightness.level.1";
    }

    else if (v6 <= 0.4)
    {
      v7 = @"photo.description.brightness.level.2";
    }

    else if (v6 <= 0.6)
    {
      v7 = @"photo.description.brightness.level.3";
    }

    else if (v6 <= 0.8)
    {
      v7 = @"photo.description.brightness.level.4";
    }

    else
    {
      v7 = @"photo.description.brightness.level.5";
    }

    v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v8 = [v9 localizedStringForKey:v7 value:&stru_1F23EA908 table:@"Accessibility"];
    [(AXMDescriptionBuilder *)self _appendToDescription:descriptionCopy afterPauseType:0 withContents:v8];
  }
}

- (void)_addBlurInformationToDescription:(id)description
{
  blurFeature = self->_blurFeature;
  if (blurFeature)
  {
    descriptionCopy = description;
    [(AXMVisionFeature *)blurFeature blur];
    if (v6 >= 0.166666667)
    {
      if (v6 >= 0.333333333)
      {
        if (v6 >= 0.5)
        {
          if (v6 >= 0.666666667)
          {
            if (v6 >= 0.833333333)
            {
              v7 = @"photo.description.blurriness.level.6";
            }

            else
            {
              v7 = @"photo.description.blurriness.level.5";
            }
          }

          else
          {
            v7 = @"photo.description.blurriness.level.4";
          }
        }

        else
        {
          v7 = @"photo.description.blurriness.level.3";
        }
      }

      else
      {
        v7 = @"photo.description.blurriness.level.2";
      }
    }

    else
    {
      v7 = @"photo.description.blurriness.level.1";
    }

    v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v8 = [v9 localizedStringForKey:v7 value:&stru_1F23EA908 table:@"Accessibility"];
    [(AXMDescriptionBuilder *)self _appendToDescription:descriptionCopy afterPauseType:0 withContents:v8];
  }
}

- (id)_knownPersonNames
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_faceFeatures count];
  v4 = self->_faceFeatures;
  if (AXRuntimeCheck_MediaAnalysisSupport())
  {
    v3 = [(NSMutableArray *)self->_mediaAnalysisFaceFeatures count];
    v5 = self->_mediaAnalysisFaceFeatures;

    v4 = v5;
  }

  if (v3)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v4;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          faceDetectionResult = [v12 faceDetectionResult];
          if (AXRuntimeCheck_MediaAnalysisSupport())
          {
            mediaAnalysisFaceDetectionResult = [v12 mediaAnalysisFaceDetectionResult];

            faceDetectionResult = mediaAnalysisFaceDetectionResult;
          }

          name = [faceDetectionResult name];
          if ([name length])
          {
            [v6 addObject:name];
          }
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    allObjects = [v6 allObjects];
  }

  else
  {
    allObjects = MEMORY[0x1E695E0F0];
  }

  return allObjects;
}

- (void)_addPersonSummaryToDescription:(id)description
{
  descriptionCopy = description;
  _knownPersonNames = [(AXMDescriptionBuilder *)self _knownPersonNames];
  if ([_knownPersonNames count])
  {
    if ([_knownPersonNames count] == 1)
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
      v7 = [v6 localizedStringForKey:@"people.summary.one.person" value:&stru_1F23EA908 table:@"Accessibility"];
      firstObject = [_knownPersonNames firstObject];
      v9 = [v5 localizedStringWithFormat:v7, firstObject];
      [(AXMDescriptionBuilder *)self _appendToDescription:descriptionCopy afterPauseType:0 withContents:v9];
    }

    else
    {
      v6 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:_knownPersonNames];
      v10 = [(NSMutableArray *)self->_faceFeatures count];
      if (AXRuntimeCheck_MediaAnalysisSupport())
      {
        v10 = [(NSMutableArray *)self->_mediaAnalysisFaceFeatures count];
      }

      v11 = MEMORY[0x1E696AEC0];
      v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
      firstObject = [v7 localizedStringForKey:@"people.summary.multiple.people" value:&stru_1F23EA908 table:@"Accessibility"];
      v12 = MEMORY[0x1E696ADA0];
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
      v13 = [v12 localizedStringFromNumber:v9 numberStyle:0];
      v14 = [v11 localizedStringWithFormat:firstObject, v13, v6];
      [(AXMDescriptionBuilder *)self _appendToDescription:descriptionCopy afterPauseType:0 withContents:v14];
    }
  }
}

- (void)_addDetailedFaceInformationToDescription:(id)description
{
  v64 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  v5 = self->_faceFeatures;
  if (AXRuntimeCheck_MediaAnalysisSupport())
  {
    v6 = self->_mediaAnalysisFaceFeatures;

    v5 = v6;
  }

  if ([(NSMutableArray *)v5 count])
  {
    [(NSMutableArray *)v5 sortUsingComparator:&__block_literal_global_109];
    v7 = MEMORY[0x1E696AEC0];
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v9 = [v8 localizedStringForKey:@"photo.description.faces" value:&stru_1F23EA908 table:@"Accessibility"];
    v10 = [v7 localizedStringWithFormat:v9, -[NSMutableArray count](v5, "count")];
    [(AXMDescriptionBuilder *)self _appendToDescription:descriptionCopy afterPauseType:0 withContents:v10];

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v48 = v5;
    v12 = v5;
    obj = [(NSMutableArray *)v12 countByEnumeratingWithState:&v58 objects:v63 count:16];
    v53 = v11;
    if (obj)
    {
      selfCopy = self;
      v50 = *v59;
      v13 = 1;
      v14 = 0x1E696A000uLL;
      do
      {
        for (i = 0; i != obj; i = i + 1)
        {
          if (*v59 != v50)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v58 + 1) + 8 * i);
          faceDetectionResult = [v16 faceDetectionResult];
          if (AXRuntimeCheck_MediaAnalysisSupport())
          {
            mediaAnalysisFaceDetectionResult = [v16 mediaAnalysisFaceDetectionResult];

            faceDetectionResult = mediaAnalysisFaceDetectionResult;
          }

          likelyExpression = [faceDetectionResult likelyExpression];
          if ((likelyExpression & 0xFFFFFFFFFFFFFFFDLL) != 0)
          {
            v20 = likelyExpression;
            v21 = descriptionCopy;
            v22 = v12;
            [*(v14 + 3480) numberWithInteger:likelyExpression];
            v24 = v23 = v14;
            v25 = [v11 objectForKey:v24];

            if (v25)
            {
              v26 = [*(v23 + 3480) numberWithInteger:{objc_msgSend(v25, "integerValue") + 1}];
              v27 = [*(v23 + 3480) numberWithInteger:v20];
              [v11 setObject:v26 forKey:v27];
            }

            else
            {
              v26 = [*(v23 + 3480) numberWithInteger:v20];
              [v11 setObject:&unk_1F240A750 forKey:v26];
            }

            v14 = 0x1E696A000;
            v12 = v22;
            descriptionCopy = v21;
            self = selfCopy;
          }

          attributes = [faceDetectionResult attributes];
          if ([(NSMutableArray *)v12 count]!= 1)
          {
            v29 = MEMORY[0x1E696AEC0];
            v30 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
            v31 = [v30 localizedStringForKey:@"face.number" value:&stru_1F23EA908 table:@"Accessibility"];
            v32 = [v29 localizedStringWithFormat:v31, v13];
            [(AXMDescriptionBuilder *)self _appendToDescription:descriptionCopy afterPauseType:0 withContents:v32];

            v11 = v53;
            v14 = 0x1E696A000;
          }

          name = [faceDetectionResult name];
          [(AXMDescriptionBuilder *)self _appendToDescription:descriptionCopy afterPauseType:0 withContents:name];

          accessibilityLabelForAttributes = [attributes accessibilityLabelForAttributes];
          [(AXMDescriptionBuilder *)self _appendToDescription:descriptionCopy afterPauseType:0 withContents:accessibilityLabelForAttributes];

          v13 = (v13 + 1);
        }

        obj = [(NSMutableArray *)v12 countByEnumeratingWithState:&v58 objects:v63 count:16];
      }

      while (obj);
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    obja = [v11 allKeys];
    v35 = [obja countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v55;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v55 != v37)
          {
            objc_enumerationMutation(obja);
          }

          v39 = *(*(&v54 + 1) + 8 * j);
          v40 = [v11 objectForKey:v39];
          integerValue = [v40 integerValue];

          v42 = [AXMVisionFeatureFaceDetectionResult localizedStringFormatterForExpression:v39];
          v43 = MEMORY[0x1E696AEC0];
          v44 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
          v45 = [v44 localizedStringForKey:v42 value:&stru_1F23EA908 table:@"Accessibility"];
          v46 = v43;
          v11 = v53;
          v47 = [v46 localizedStringWithFormat:v45, integerValue];
          [(AXMDescriptionBuilder *)self _appendToDescription:descriptionCopy afterPauseType:0 withContents:v47];
        }

        v36 = [obja countByEnumeratingWithState:&v54 objects:v62 count:16];
      }

      while (v36);
    }

    v5 = v48;
  }
}

uint64_t __66__AXMDescriptionBuilder__addDetailedFaceInformationToDescription___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 faceDetectionResult];
  v7 = [v6 name];

  if (AXRuntimeCheck_MediaAnalysisSupport())
  {
    v8 = [v4 mediaAnalysisFaceDetectionResult];
    v9 = [v8 name];

    v7 = v9;
  }

  v10 = [v5 faceDetectionResult];
  v11 = [v10 name];

  if (AXRuntimeCheck_MediaAnalysisSupport())
  {
    v12 = [v5 mediaAnalysisFaceDetectionResult];
    v13 = [v12 name];

    v11 = v13;
  }

  v14 = 0;
  if (v7 && v11)
  {
    v14 = [v7 compare:v11];
  }

  return v14;
}

- (void)_addFaceInformationToDescription:(id)description
{
  descriptionCopy = description;
  if ([(AXMDescriptionBuilder *)self _shouldSummarizeDetectedPeople])
  {
    [(AXMDescriptionBuilder *)self _addPersonSummaryToDescription:descriptionCopy];
  }

  else
  {
    [(AXMDescriptionBuilder *)self _addDetailedFaceInformationToDescription:descriptionCopy];
  }
}

- (void)_addCaptionInformationToDescription:(id)description didConsumeDetectedFaceInfo:(BOOL *)info
{
  v52 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  v7 = self->_captionFeature;
  translatedCaption = [(AXMVisionFeature *)v7 translatedCaption];
  if (AXRuntimeCheck_MediaAnalysisSupport())
  {
    v9 = self->_mediaAnalysisImageCaptionFeature;

    mediaAnalysisTranslatedImageCaption = [(AXMVisionFeature *)v9 mediaAnalysisTranslatedImageCaption];

    translatedCaption = mediaAnalysisTranslatedImageCaption;
    v7 = v9;
  }

  if (translatedCaption)
  {
    v11 = +[AXMLocSupport sharedInstance];
    targetLocale = [translatedCaption targetLocale];
    v13 = [v11 localeBaseLanguageIsEnglish:targetLocale];

    text = [translatedCaption text];
    v15 = text;
    if ((v13 & 1) == 0)
    {
LABEL_72:
      [(AXMDescriptionBuilder *)self _appendToDescription:descriptionCopy afterPauseType:0 withContents:v15];
      goto LABEL_73;
    }

    if (![text length])
    {
LABEL_73:

      goto LABEL_74;
    }

    if (![(AXMDescriptionBuilder *)self _shouldPersonalizeCaptionWithKnownPeople])
    {
LABEL_38:
      if (![(AXMDescriptionBuilder *)self shouldModifyCaptionForSensitiveContent])
      {
        goto LABEL_72;
      }

      primarySensitiveContentFeature = [(AXMDescriptionBuilder *)self primarySensitiveContentFeature];

      if (!primarySensitiveContentFeature)
      {
        goto LABEL_72;
      }

      primarySensitiveContentFeature2 = [(AXMDescriptionBuilder *)self primarySensitiveContentFeature];
      classificationLabel = [primarySensitiveContentFeature2 classificationLabel];

      if ([classificationLabel isEqualToString:@"Blood"] && (-[NSObject containsString:](v15, "containsString:", @"blood") & 1) == 0)
      {
        v35 = @" that might contain blood";
      }

      else if ([classificationLabel isEqualToString:@"Demonstration"] && (-[NSObject containsString:](v15, "containsString:", @"demonstration") & 1) == 0)
      {
        v35 = @" that might be a demonstration";
      }

      else
      {
        if (![classificationLabel isEqualToString:@"Destruction"])
        {
          if ([classificationLabel isEqualToString:@"Fire Devastation"] && (-[NSObject containsString:](v15, "containsString:", @"fire") & 1) == 0)
          {
            v35 = @" that might include fire";
            goto LABEL_70;
          }

          if ([classificationLabel isEqualToString:@"Flood Devastation"] && (-[NSObject containsString:](v15, "containsString:", @"flood") & 1) == 0)
          {
            v35 = @" that might be a flood";
            goto LABEL_70;
          }

          if ([classificationLabel isEqualToString:@"Funeral"] && (-[NSObject containsString:](v15, "containsString:", @"funeral") & 1) == 0)
          {
            v35 = @" that might be a funeral";
            goto LABEL_70;
          }

          if ([classificationLabel isEqualToString:@"Hospital"] && (-[NSObject containsString:](v15, "containsString:", @"hospital") & 1) == 0)
          {
            v35 = @" that might be a hospital";
            goto LABEL_70;
          }

          if ([classificationLabel isEqualToString:@"Religious Setting"] && (-[NSObject containsString:](v15, "containsString:", @"religious") & 1) == 0)
          {
            v35 = @" that might be a religious setting";
            goto LABEL_70;
          }

          if ([classificationLabel isEqualToString:@"Vehicle Crash"] && (-[NSObject containsString:](v15, "containsString:", @"crash") & 1) == 0)
          {
            v35 = @" that might be a vehicle crash";
            goto LABEL_70;
          }

          if (![classificationLabel isEqualToString:@"War"] || (-[NSObject containsString:](v15, "containsString:", @"war") & 1) != 0)
          {
            v36 = AXMediaLogCommon();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              [AXMDescriptionBuilder _addCaptionInformationToDescription:v36 didConsumeDetectedFaceInfo:?];
            }

            goto LABEL_71;
          }
        }

        v35 = @" that might be a scene of destruction";
      }

LABEL_70:
      [v15 stringByAppendingString:v35];
      v15 = v36 = v15;
LABEL_71:

      goto LABEL_72;
    }

    _knownPersonNames = [(AXMDescriptionBuilder *)self _knownPersonNames];
    if ([_knownPersonNames count] != 1)
    {
LABEL_37:

      goto LABEL_38;
    }

    firstObject = [_knownPersonNames firstObject];
    v50 = 0;
    v18 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"^(?!.*?\\b(person|people|child|children|baby|babies)\\b.*?\\ba\\s+person\\b)(?!.*?\\ba\\s+person\\b.*?\\b(person|people|child|children|baby|babies)\\b)(?<prefix>.*?)\\ba\\s+person(\\s+that\\s+is\\b)?\\b(?<suffix>.*)$" options:3 error:&v50];
    v40 = v50;
    if (v40)
    {
      v19 = AXMediaLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = v40;
        [AXMDescriptionBuilder _addCaptionInformationToDescription:v40 didConsumeDetectedFaceInfo:v19];
LABEL_36:

        goto LABEL_37;
      }
    }

    else
    {
      v39 = v18;
      [v18 matchesInString:v15 options:0 range:{0, -[NSObject length](v15, "length")}];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v19 = v49 = 0u;
      v43 = [v19 countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v43)
      {
        v37 = firstObject;
        v38 = _knownPersonNames;
        v41 = *v47;
        while (2)
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v47 != v41)
            {
              objc_enumerationMutation(v19);
            }

            v22 = v19;
            v23 = *(*(&v46 + 1) + 8 * i);
            v24 = [v23 rangeWithName:@"prefix"];
            if (v24 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v26 = 0;
            }

            else
            {
              v26 = [v15 substringWithRange:v24, v25];
            }

            v27 = [v23 rangeWithName:@"suffix"];
            if (v27 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v29 = 0;
            }

            else
            {
              v29 = [v15 substringWithRange:v27, v28];
            }

            if ([(__CFString *)v26 length]|| [(__CFString *)v29 length])
            {
              v44 = MEMORY[0x1E696AEC0];
              if ([(__CFString *)v26 length])
              {
                v30 = v26;
              }

              else
              {
                v30 = &stru_1F23EA908;
              }

              v42 = v30;
              if ([(__CFString *)v29 length])
              {
                v31 = v29;
              }

              else
              {
                v31 = &stru_1F23EA908;
              }

              firstObject = v37;
              v45 = [v44 stringWithFormat:@"%@%@%@", v42, v37, v31];

              *info = 1;
              v15 = v45;
              _knownPersonNames = v38;
              v19 = v22;
              goto LABEL_34;
            }

            v19 = v22;
          }

          v43 = [v22 countByEnumeratingWithState:&v46 objects:v51 count:16];
          if (v43)
          {
            continue;
          }

          break;
        }

        firstObject = v37;
        _knownPersonNames = v38;
      }

LABEL_34:

      v18 = v39;
    }

    v20 = v40;
    goto LABEL_36;
  }

LABEL_74:
}

- (id)_templateRulesForTag:(id)tag
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__AXMDescriptionBuilder__templateRulesForTag___block_invoke;
  block[3] = &unk_1E7A1CCB8;
  block[4] = self;
  v3 = _templateRulesForTag__onceToken;
  tagCopy = tag;
  if (v3 != -1)
  {
    dispatch_once(&_templateRulesForTag__onceToken, block);
  }

  v5 = [_templateRulesForTag___TemplateRules objectForKey:tagCopy];

  return v5;
}

void __46__AXMDescriptionBuilder__templateRulesForTag___block_invoke()
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v0 = [v3 pathForResource:@"AXCaptionTemplateRules" ofType:@"plist"];
  v1 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v0];
  v2 = _templateRulesForTag___TemplateRules;
  _templateRulesForTag___TemplateRules = v1;
}

- (id)_subsumedTagsForTags:(id)tags
{
  v19 = *MEMORY[0x1E69E9840];
  tagsCopy = tags;
  v5 = [MEMORY[0x1E695DFA8] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = tagsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(AXMDescriptionBuilder *)self _templateRulesForTag:*(*(&v14 + 1) + 8 * i), v14];
        v12 = [v11 objectForKeyedSubscript:@"subsume"];
        if ([v12 count])
        {
          [v5 addObjectsFromArray:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_ignoredTagsForTags:(id)tags
{
  v21 = *MEMORY[0x1E69E9840];
  tagsCopy = tags;
  v5 = [MEMORY[0x1E695DFA8] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = tagsCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if (-[AXMDescriptionBuilder isNSFW](self, "isNSFW", v16) && [v11 isEqualToString:@"baby"])
        {
          [v5 addObject:v11];
        }

        else
        {
          v12 = [(AXMDescriptionBuilder *)self _templateRulesForTag:v11];
          v13 = [v12 objectForKeyedSubscript:@"ignored"];
          bOOLValue = [v13 BOOLValue];

          if (bOOLValue)
          {
            [v5 addObject:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)_addGenericTemplateForCaptionInformationToDescription:(id)description
{
  descriptionCopy = description;
  if ([(AXMDescriptionBuilder *)self shouldModifyCaptionForSensitiveContent]&& [(AXMDescriptionBuilder *)self isNSFW])
  {
    [(AXMDescriptionBuilder *)self _appendToDescription:descriptionCopy afterPauseType:0 withContents:@"Possible adult content"];
  }

  allKeys = [(NSMutableDictionary *)self->_classificationLabelsToLocValuesMap allKeys];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __79__AXMDescriptionBuilder__addGenericTemplateForCaptionInformationToDescription___block_invoke;
  v36[3] = &unk_1E7A1CD00;
  v36[4] = self;
  v6 = [allKeys sortedArrayUsingComparator:v36];

  v7 = [(AXMDescriptionBuilder *)self _subsumedTagsForTags:v6];
  v8 = [(AXMDescriptionBuilder *)self _ignoredTagsForTags:v6];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __79__AXMDescriptionBuilder__addGenericTemplateForCaptionInformationToDescription___block_invoke_2;
  v33[3] = &unk_1E7A1CD28;
  v9 = v8;
  v34 = v9;
  v10 = v7;
  v35 = v10;
  v11 = [v6 ax_filteredArrayUsingBlock:v33];

  v12 = [v11 count];
  if (v12)
  {
    v13 = v12;
    v29 = v10;
    v30 = v9;
    v31 = descriptionCopy;
    v32 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"aeiouAEIOU"];
    string = [MEMORY[0x1E696AD60] string];
    v15 = 0;
    do
    {
      v16 = [v11 objectAtIndex:v15];
      v17 = [(AXMDescriptionBuilder *)self _templateRulesForTag:v16];
      lowercaseString = [v17 objectForKeyedSubscript:@"speech"];
      if (!lowercaseString)
      {
        v19 = [(NSMutableDictionary *)self->_classificationLabelsToLocValuesMap objectForKeyedSubscript:v16];
        lowercaseString = [v19 lowercaseString];
      }

      v20 = [v17 objectForKeyedSubscript:@"nonCountNounOrPlural"];
      bOOLValue = [v20 BOOLValue];

      if (v15)
      {
        if (v13 == 1)
        {
          v22 = @" and ";
        }

        else
        {
          v22 = @", ";
        }

        [string appendString:v22];
        if (bOOLValue)
        {
          [string appendString:lowercaseString];
        }

        else
        {
          v23 = [lowercaseString rangeOfCharacterFromSet:v32];
          v24 = @"a";
          if (!v23)
          {
            v24 = @"an";
          }

          [string appendFormat:@"%@ %@", v24, lowercaseString];
        }
      }

      else if (bOOLValue)
      {
        [string appendFormat:@"A photo of %@", lowercaseString, v28];
      }

      else
      {
        v25 = [lowercaseString rangeOfCharacterFromSet:v32];
        v26 = @"a";
        if (!v25)
        {
          v26 = @"an";
        }

        [string appendFormat:@"A photo containing %@ %@", v26, lowercaseString];
      }

      ++v15;
      --v13;
    }

    while (v13);
    descriptionCopy = v31;
    [(AXMDescriptionBuilder *)self _appendToDescription:v31 afterPauseType:0 withContents:string];
    v10 = v29;
    v9 = v30;
    v27 = v32;
  }

  else
  {
    v27 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    string = [v27 localizedStringForKey:@"No_Description" value:&stru_1F23EA908 table:@"Accessibility"];
    [(AXMDescriptionBuilder *)self _appendToDescription:descriptionCopy afterPauseType:0 withContents:string];
  }
}

uint64_t __79__AXMDescriptionBuilder__addGenericTemplateForCaptionInformationToDescription___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 _templateRulesForTag:a2];
  v8 = [*(a1 + 32) _templateRulesForTag:v6];

  v9 = [v7 objectForKeyedSubscript:@"priority"];
  [v9 doubleValue];
  v11 = v10;

  v12 = [v8 objectForKeyedSubscript:@"priority"];
  [v12 doubleValue];
  v14 = v13;

  if (v11 > v14)
  {
    v15 = -1;
  }

  else
  {
    v15 = v11 < v14;
  }

  return v15;
}

uint64_t __79__AXMDescriptionBuilder__addGenericTemplateForCaptionInformationToDescription___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 40) containsObject:v3] ^ 1;
  }

  return v4;
}

- (void)_addClassificationInformationToDescription:(id)description
{
  descriptionCopy = description;
  v5 = [MEMORY[0x1E696AB50] set];
  classificationLabelsToLocValuesMap = self->_classificationLabelsToLocValuesMap;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__AXMDescriptionBuilder__addClassificationInformationToDescription___block_invoke;
  v13[3] = &unk_1E7A1CD50;
  v14 = v5;
  v7 = v5;
  [(NSMutableDictionary *)classificationLabelsToLocValuesMap enumerateKeysAndObjectsUsingBlock:v13];
  allObjects = [v7 allObjects];
  v9 = [allObjects sortedArrayUsingComparator:&__block_literal_global_246];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__AXMDescriptionBuilder__addClassificationInformationToDescription___block_invoke_3;
  v11[3] = &unk_1E7A1CD98;
  v11[4] = self;
  v12 = descriptionCopy;
  v10 = descriptionCopy;
  [v9 enumerateObjectsUsingBlock:v11];
}

- (void)_addIconClassInformationToDescription:(id)description
{
  iconClassFeatures = self->_iconClassFeatures;
  descriptionCopy = description;
  axm_featureWithHighestConfidence = [(NSMutableArray *)iconClassFeatures axm_featureWithHighestConfidence];
  value = [axm_featureWithHighestConfidence value];
  [(AXMDescriptionBuilder *)self _appendToDescription:descriptionCopy afterPauseType:0 withContents:value];
}

- (void)_addCaptionInformationToDescription:(uint64_t)a1 didConsumeDetectedFaceInfo:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_ERROR, "Failed to create caption personalization regex: %@", &v2, 0xCu);
}

- (void)_addCaptionInformationToDescription:(void *)a1 didConsumeDetectedFaceInfo:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 primarySensitiveContentFeature];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_ERROR, "Cannot modify caption for sensitive content. unexpected category: %@", &v4, 0xCu);
}

@end