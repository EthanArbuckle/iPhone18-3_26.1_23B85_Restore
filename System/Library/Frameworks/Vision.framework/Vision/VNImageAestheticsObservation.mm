@interface VNImageAestheticsObservation
+ (id)allScorePropertyNames;
+ (id)observationForOriginatingRequestSpecifier:(id)specifier overallAestheticScore:(float)score wellFramedSubjectScore:(float)subjectScore wellChosenBackgroundScore:(float)backgroundScore tastefullyBlurredScore:(float)blurredScore sharplyFocusedSubjectScore:(float)focusedSubjectScore wellTimedShotScore:(float)shotScore pleasantLightingScore:(float)self0 pleasantReflectionsScore:(float)self1 harmoniousColorScore:(float)self2 livelyColorScore:(float)self3 pleasantSymmetryScore:(float)self4 pleasantPatternScore:(float)self5 immersivenessScore:(float)self6 pleasantPerspectiveScore:(float)self7 pleasantPostProcessingScore:(float)self8 noiseScore:(float)self9 failureScore:(float)failureScore pleasantCompositionScore:(float)compositionScore interestingSubjectScore:(float)interestingSubjectScore intrusiveObjectPresenceScore:(float)presenceScore pleasantCameraTiltScore:(float)tiltScore lowKeyLightingScore:(float)keyLightingScore error:(id *)error;
- (VNImageAestheticsObservation)initWithCoder:(id)coder;
- (id)_initWithOriginatingRequestSpecifier:(id)specifier overallAestheticScore:(float)score wellFramedSubjectScore:(float)subjectScore wellChosenBackgroundScore:(float)backgroundScore tastefullyBlurredScore:(float)blurredScore sharplyFocusedSubjectScore:(float)focusedSubjectScore wellTimedShotScore:(float)shotScore pleasantLightingScore:(float)self0 pleasantReflectionsScore:(float)self1 harmoniousColorScore:(float)self2 livelyColorScore:(float)self3 pleasantSymmetryScore:(float)self4 pleasantPatternScore:(float)self5 immersivenessScore:(float)self6 pleasantPerspectiveScore:(float)self7 pleasantPostProcessingScore:(float)self8 noiseScore:(float)self9 failureScore:(float)failureScore pleasantCompositionScore:(float)compositionScore interestingSubjectScore:(float)interestingSubjectScore intrusiveObjectPresenceScore:(float)presenceScore pleasantCameraTiltScore:(float)tiltScore lowKeyLightingScore:(float)keyLightingScore;
- (id)_scoresDictionary;
- (id)description;
- (id)vn_cloneObject;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNImageAestheticsObservation

- (id)description
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v20.receiver = self;
  v20.super_class = VNImageAestheticsObservation;
  v4 = [(VNObservation *)&v20 description];
  [v3 appendString:v4];

  v5 = objc_autoreleasePoolPush();
  _scoresDictionary = [(VNImageAestheticsObservation *)self _scoresDictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allKeys = [_scoresDictionary allKeys];
  v8 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = [_scoresDictionary objectForKeyedSubscript:v13];
        [v3 appendFormat:@"\n  %@=%@", v13, v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v10);
  }

  objc_autoreleasePoolPop(v5);

  return v3;
}

- (id)_scoresDictionary
{
  v19 = *MEMORY[0x1E69E9840];
  allScorePropertyNames = [objc_opt_class() allScorePropertyNames];
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(allScorePropertyNames, "count")}];
  v5 = objc_autoreleasePoolPush();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = allScorePropertyNames;
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

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(VNImageAestheticsObservation *)self valueForKey:v11, v14];
        [v4 setObject:v12 forKeyedSubscript:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  objc_autoreleasePoolPop(v5);

  return v4;
}

- (id)vn_cloneObject
{
  v5.receiver = self;
  v5.super_class = VNImageAestheticsObservation;
  vn_cloneObject = [(VNObservation *)&v5 vn_cloneObject];
  if (vn_cloneObject)
  {
    vn_cloneObject[24] = self->_aestheticScore;
    vn_cloneObject[25] = self->_wellFramedSubjectScore;
    vn_cloneObject[26] = self->_wellChosenBackgroundScore;
    vn_cloneObject[27] = self->_tastefullyBlurredScore;
    vn_cloneObject[28] = self->_sharplyFocusedSubjectScore;
    vn_cloneObject[29] = self->_wellTimedShotScore;
    vn_cloneObject[30] = self->_pleasantLightingScore;
    vn_cloneObject[31] = self->_pleasantReflectionsScore;
    vn_cloneObject[32] = self->_harmoniousColorScore;
    vn_cloneObject[33] = self->_livelyColorScore;
    vn_cloneObject[34] = self->_pleasantSymmetryScore;
    vn_cloneObject[35] = self->_pleasantPatternScore;
    vn_cloneObject[36] = self->_immersivenessScore;
    vn_cloneObject[37] = self->_pleasantPerspectiveScore;
    vn_cloneObject[38] = self->_pleasantPostProcessingScore;
    vn_cloneObject[39] = self->_noiseScore;
    vn_cloneObject[40] = self->_failureScore;
    vn_cloneObject[41] = self->_pleasantCompositionScore;
    vn_cloneObject[42] = self->_interestingSubjectScore;
    vn_cloneObject[43] = self->_intrusiveObjectPresenceScore;
    vn_cloneObject[44] = self->_pleasantCameraTiltScore;
    vn_cloneObject[45] = self->_lowKeyLightingScore;
  }

  return vn_cloneObject;
}

- (void)encodeWithCoder:(id)coder
{
  v27.receiver = self;
  v27.super_class = VNImageAestheticsObservation;
  coderCopy = coder;
  [(VNObservation *)&v27 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:&unk_1F19C14B0 forKey:{@"VNImageAestheticsObservation", v27.receiver, v27.super_class}];
  *&v5 = self->_aestheticScore;
  [coderCopy vn_encodeValidatedScore:@"OAES" forKey:v5];
  *&v6 = self->_wellFramedSubjectScore;
  [coderCopy vn_encodeValidatedScore:@"WFS" forKey:v6];
  *&v7 = self->_wellChosenBackgroundScore;
  [coderCopy vn_encodeValidatedScore:@"WCS" forKey:v7];
  *&v8 = self->_tastefullyBlurredScore;
  [coderCopy vn_encodeValidatedScore:@"TBC" forKey:v8];
  *&v9 = self->_sharplyFocusedSubjectScore;
  [coderCopy vn_encodeValidatedScore:@"SFS" forKey:v9];
  *&v10 = self->_pleasantLightingScore;
  [coderCopy vn_encodeValidatedScore:@"PLHT" forKey:v10];
  *&v11 = self->_pleasantReflectionsScore;
  [coderCopy vn_encodeValidatedScore:@"PREF" forKey:v11];
  *&v12 = self->_livelyColorScore;
  [coderCopy vn_encodeValidatedScore:@"LCOL" forKey:v12];
  *&v13 = self->_pleasantSymmetryScore;
  [coderCopy vn_encodeValidatedScore:@"PSYM" forKey:v13];
  *&v14 = self->_pleasantPatternScore;
  [coderCopy vn_encodeValidatedScore:@"PPAT" forKey:v14];
  *&v15 = self->_immersivenessScore;
  [coderCopy vn_encodeValidatedScore:@"IMM" forKey:v15];
  *&v16 = self->_pleasantPerspectiveScore;
  [coderCopy vn_encodeValidatedScore:@"PPERS" forKey:v16];
  *&v17 = self->_pleasantPostProcessingScore;
  [coderCopy vn_encodeValidatedScore:@"PPOST" forKey:v17];
  *&v18 = self->_noiseScore;
  [coderCopy vn_encodeValidatedScore:@"NOISE" forKey:v18];
  *&v19 = self->_failureScore;
  [coderCopy vn_encodeValidatedScore:@"FAIL" forKey:v19];
  *&v20 = self->_pleasantCompositionScore;
  [coderCopy vn_encodeValidatedScore:@"PCOMP" forKey:v20];
  *&v21 = self->_interestingSubjectScore;
  [coderCopy vn_encodeValidatedScore:@"INTREST" forKey:v21];
  *&v22 = self->_intrusiveObjectPresenceScore;
  [coderCopy vn_encodeValidatedScore:@"INTRUSIVE" forKey:v22];
  *&v23 = self->_pleasantCameraTiltScore;
  [coderCopy vn_encodeValidatedScore:@"CTILT" forKey:v23];
  *&v24 = self->_wellTimedShotScore;
  [coderCopy vn_encodeValidatedScore:@"WTS" forKey:v24];
  *&v25 = self->_harmoniousColorScore;
  [coderCopy vn_encodeValidatedScore:@"HCOL" forKey:v25];
  *&v26 = self->_lowKeyLightingScore;
  [coderCopy vn_encodeValidatedScore:@"LOWKEY" forKey:v26];
}

- (VNImageAestheticsObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = VNImageAestheticsObservation;
  v5 = [(VNObservation *)&v31 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VNImageAestheticsObservation"];
    if ([v6 intValue] != 1)
    {

      v29 = 0;
      goto LABEL_6;
    }

    [coderCopy vn_decodeValidatedScoreForKey:@"OAES"];
    v5->_aestheticScore = v7;
    [coderCopy vn_decodeValidatedScoreForKey:@"WFS"];
    v5->_wellFramedSubjectScore = v8;
    [coderCopy vn_decodeValidatedScoreForKey:@"WCS"];
    v5->_wellChosenBackgroundScore = v9;
    [coderCopy vn_decodeValidatedScoreForKey:@"TBC"];
    v5->_tastefullyBlurredScore = v10;
    [coderCopy vn_decodeValidatedScoreForKey:@"SFS"];
    v5->_sharplyFocusedSubjectScore = v11;
    [coderCopy vn_decodeValidatedScoreForKey:@"PLHT"];
    v5->_pleasantLightingScore = v12;
    [coderCopy vn_decodeValidatedScoreForKey:@"PREF"];
    v5->_pleasantReflectionsScore = v13;
    [coderCopy vn_decodeValidatedScoreForKey:@"LCOL"];
    v5->_livelyColorScore = v14;
    [coderCopy vn_decodeValidatedScoreForKey:@"PSYM"];
    v5->_pleasantSymmetryScore = v15;
    [coderCopy vn_decodeValidatedScoreForKey:@"PPAT"];
    v5->_pleasantPatternScore = v16;
    [coderCopy vn_decodeValidatedScoreForKey:@"IMM"];
    v5->_immersivenessScore = v17;
    [coderCopy vn_decodeValidatedScoreForKey:@"PPERS"];
    v5->_pleasantPerspectiveScore = v18;
    [coderCopy vn_decodeValidatedScoreForKey:@"PPOST"];
    v5->_pleasantPostProcessingScore = v19;
    [coderCopy vn_decodeValidatedScoreForKey:@"NOISE"];
    v5->_noiseScore = v20;
    [coderCopy vn_decodeValidatedScoreForKey:@"FAIL"];
    v5->_failureScore = v21;
    [coderCopy vn_decodeValidatedScoreForKey:@"PCOMP"];
    v5->_pleasantCompositionScore = v22;
    [coderCopy vn_decodeValidatedScoreForKey:@"INTREST"];
    v5->_interestingSubjectScore = v23;
    [coderCopy vn_decodeValidatedScoreForKey:@"INTRUSIVE"];
    v5->_intrusiveObjectPresenceScore = v24;
    [coderCopy vn_decodeValidatedScoreForKey:@"CTILT"];
    v5->_pleasantCameraTiltScore = v25;
    [coderCopy vn_decodeValidatedScoreForKey:@"WTS"];
    v5->_wellTimedShotScore = v26;
    [coderCopy vn_decodeValidatedScoreForKey:@"HCOL"];
    v5->_harmoniousColorScore = v27;
    [coderCopy vn_decodeValidatedScoreForKey:@"LOWKEY"];
    v5->_lowKeyLightingScore = v28;
  }

  v29 = v5;
LABEL_6:

  return v29;
}

- (id)_initWithOriginatingRequestSpecifier:(id)specifier overallAestheticScore:(float)score wellFramedSubjectScore:(float)subjectScore wellChosenBackgroundScore:(float)backgroundScore tastefullyBlurredScore:(float)blurredScore sharplyFocusedSubjectScore:(float)focusedSubjectScore wellTimedShotScore:(float)shotScore pleasantLightingScore:(float)self0 pleasantReflectionsScore:(float)self1 harmoniousColorScore:(float)self2 livelyColorScore:(float)self3 pleasantSymmetryScore:(float)self4 pleasantPatternScore:(float)self5 immersivenessScore:(float)self6 pleasantPerspectiveScore:(float)self7 pleasantPostProcessingScore:(float)self8 noiseScore:(float)self9 failureScore:(float)failureScore pleasantCompositionScore:(float)compositionScore interestingSubjectScore:(float)interestingSubjectScore intrusiveObjectPresenceScore:(float)presenceScore pleasantCameraTiltScore:(float)tiltScore lowKeyLightingScore:(float)keyLightingScore
{
  v34.receiver = self;
  v34.super_class = VNImageAestheticsObservation;
  result = [(VNObservation *)&v34 initWithOriginatingRequestSpecifier:specifier];
  if (result)
  {
    *(result + 24) = score;
    *(result + 25) = subjectScore;
    *(result + 26) = backgroundScore;
    *(result + 27) = blurredScore;
    *(result + 28) = focusedSubjectScore;
    *(result + 29) = shotScore;
    *(result + 30) = lightingScore;
    *(result + 31) = reflectionsScore;
    *(result + 32) = colorScore;
    *(result + 33) = livelyColorScore;
    *(result + 34) = symmetryScore;
    *(result + 35) = patternScore;
    *(result + 36) = immersivenessScore;
    *(result + 37) = perspectiveScore;
    *(result + 38) = processingScore;
    *(result + 39) = noiseScore;
    *(result + 40) = failureScore;
    *(result + 41) = compositionScore;
    *(result + 42) = interestingSubjectScore;
    *(result + 43) = presenceScore;
    *(result + 44) = tiltScore;
    *(result + 45) = keyLightingScore;
  }

  return result;
}

+ (id)observationForOriginatingRequestSpecifier:(id)specifier overallAestheticScore:(float)score wellFramedSubjectScore:(float)subjectScore wellChosenBackgroundScore:(float)backgroundScore tastefullyBlurredScore:(float)blurredScore sharplyFocusedSubjectScore:(float)focusedSubjectScore wellTimedShotScore:(float)shotScore pleasantLightingScore:(float)self0 pleasantReflectionsScore:(float)self1 harmoniousColorScore:(float)self2 livelyColorScore:(float)self3 pleasantSymmetryScore:(float)self4 pleasantPatternScore:(float)self5 immersivenessScore:(float)self6 pleasantPerspectiveScore:(float)self7 pleasantPostProcessingScore:(float)self8 noiseScore:(float)self9 failureScore:(float)failureScore pleasantCompositionScore:(float)compositionScore interestingSubjectScore:(float)interestingSubjectScore intrusiveObjectPresenceScore:(float)presenceScore pleasantCameraTiltScore:(float)tiltScore lowKeyLightingScore:(float)keyLightingScore error:(id *)error
{
  specifierCopy = specifier;
  *&v33 = score;
  if ([VNValidationUtilities validateScoreRange:@"overall aesthetics" named:error error:v33]
    && (*&v34 = subjectScore, [VNValidationUtilities validateScoreRange:@"well-framed subject" named:error error:v34])
    && (*&v35 = backgroundScore, [VNValidationUtilities validateScoreRange:@"well-chosen background" named:error error:v35])
    && (*&v36 = blurredScore, [VNValidationUtilities validateScoreRange:@"tastefully blurred" named:error error:v36])
    && (*&v37 = focusedSubjectScore, [VNValidationUtilities validateScoreRange:@"sharply focused" named:error error:v37])
    && (*&v38 = shotScore, [VNValidationUtilities validateScoreRange:@"well-timed shot" named:error error:v38])
    && (*&v39 = lightingScore, [VNValidationUtilities validateScoreRange:@"pleasant lighting" named:error error:v39])
    && (*&v40 = reflectionsScore, [VNValidationUtilities validateScoreRange:@"pleasant reflections" named:error error:v40])
    && (*&v41 = colorScore, [VNValidationUtilities validateScoreRange:@"harmonious color" named:error error:v41])
    && (*&v42 = livelyColorScore, [VNValidationUtilities validateScoreRange:@"lively color" named:error error:v42])
    && (*&v43 = symmetryScore, [VNValidationUtilities validateScoreRange:@"pleasant symmetry" named:error error:v43])
    && (*&v44 = patternScore, [VNValidationUtilities validateScoreRange:@"pleasant pattern" named:error error:v44])
    && (*&v45 = immersivenessScore, [VNValidationUtilities validateScoreRange:@"immersiveness" named:error error:v45])
    && (*&v46 = perspectiveScore, [VNValidationUtilities validateScoreRange:@"pleasant perspective" named:error error:v46])
    && (*&v47 = processingScore, [VNValidationUtilities validateScoreRange:@"pleasant post-processing" named:error error:v47])
    && (*&v48 = noiseScore, [VNValidationUtilities validateScoreRange:@"noise" named:error error:v48])
    && (*&v49 = failureScore, [VNValidationUtilities validateScoreRange:@"failure" named:error error:v49])
    && (*&v50 = compositionScore, [VNValidationUtilities validateScoreRange:@"pleasant composition" named:error error:v50])
    && (*&v51 = interestingSubjectScore, [VNValidationUtilities validateScoreRange:@"interesting subject" named:error error:v51])
    && (*&v52 = presenceScore, [VNValidationUtilities validateScoreRange:@"intrusive object" named:error error:v52])
    && (*&v53 = tiltScore, [VNValidationUtilities validateScoreRange:@"pleasant camera tilt" named:error error:v53])
    && (*&v54 = keyLightingScore, [VNValidationUtilities validateScoreRange:@"low key lighting" named:error error:v54]))
  {
    v55 = [self alloc];
    *&v56 = score;
    *&v57 = subjectScore;
    *&v58 = backgroundScore;
    *&v59 = blurredScore;
    *&v61 = shotScore;
    *&v60 = focusedSubjectScore;
    *&v63 = reflectionsScore;
    *&v62 = lightingScore;
    v64 = [v55 _initWithOriginatingRequestSpecifier:specifierCopy overallAestheticScore:v56 wellFramedSubjectScore:v57 wellChosenBackgroundScore:v58 tastefullyBlurredScore:v59 sharplyFocusedSubjectScore:v60 wellTimedShotScore:v61 pleasantLightingScore:v62 pleasantReflectionsScore:v63 harmoniousColorScore:__PAIR64__(LODWORD(livelyColorScore) livelyColorScore:LODWORD(colorScore)) pleasantSymmetryScore:__PAIR64__(LODWORD(patternScore) pleasantPatternScore:LODWORD(symmetryScore)) immersivenessScore:__PAIR64__(LODWORD(perspectiveScore) pleasantPerspectiveScore:LODWORD(immersivenessScore)) pleasantPostProcessingScore:__PAIR64__(LODWORD(noiseScore) noiseScore:LODWORD(processingScore)) failureScore:__PAIR64__(LODWORD(compositionScore) pleasantCompositionScore:LODWORD(failureScore)) interestingSubjectScore:__PAIR64__(LODWORD(presenceScore) intrusiveObjectPresenceScore:LODWORD(interestingSubjectScore)) pleasantCameraTiltScore:__PAIR64__(LODWORD(keyLightingScore) lowKeyLightingScore:LODWORD(tiltScore))];
  }

  else
  {
    v64 = 0;
  }

  return v64;
}

+ (id)allScorePropertyNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__VNImageAestheticsObservation_allScorePropertyNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (allScorePropertyNames_onceToken != -1)
  {
    dispatch_once(&allScorePropertyNames_onceToken, block);
  }

  v2 = allScorePropertyNames_allScorePropertyNames;

  return v2;
}

void __53__VNImageAestheticsObservation_allScorePropertyNames__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [*(a1 + 32) superclass];
  v5 = objc_opt_class();
  if (v5)
  {
    v6 = v5 == v4;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = v5;
    do
    {
      outCount = 0;
      v8 = class_copyPropertyList(v7, &outCount);
      if (v8)
      {
        v9 = v8;
        if (outCount)
        {
          for (i = 0; i < outCount; ++i)
          {
            v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:property_getName(v9[i])];
            if ([v11 hasSuffix:@"Score"])
            {
              [v3 addObject:v11];
            }
          }
        }

        free(v9);
      }

      v12 = [(objc_class *)v7 superclass];
      if (!v12)
      {
        break;
      }

      v7 = v12;
    }

    while (v12 != v4);
  }

  v13 = objc_alloc(MEMORY[0x1E695DF70]);
  v14 = [v3 allObjects];
  v15 = [v13 initWithArray:v14];

  v16 = [v15 indexOfObject:@"aestheticScore"];
  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v15 sortUsingSelector:sel_compare_];
  }

  else
  {
    [v15 removeObjectAtIndex:v16];
    [v15 sortUsingSelector:sel_compare_];
    [v15 insertObject:@"aestheticScore" atIndex:0];
  }

  v17 = [v15 copy];
  v18 = allScorePropertyNames_allScorePropertyNames;
  allScorePropertyNames_allScorePropertyNames = v17;

  objc_autoreleasePoolPop(v2);
}

@end