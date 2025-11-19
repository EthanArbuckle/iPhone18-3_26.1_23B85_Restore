@interface VNImageAestheticsObservation
+ (id)allScorePropertyNames;
+ (id)observationForOriginatingRequestSpecifier:(id)a3 overallAestheticScore:(float)a4 wellFramedSubjectScore:(float)a5 wellChosenBackgroundScore:(float)a6 tastefullyBlurredScore:(float)a7 sharplyFocusedSubjectScore:(float)a8 wellTimedShotScore:(float)a9 pleasantLightingScore:(float)a10 pleasantReflectionsScore:(float)a11 harmoniousColorScore:(float)a12 livelyColorScore:(float)a13 pleasantSymmetryScore:(float)a14 pleasantPatternScore:(float)a15 immersivenessScore:(float)a16 pleasantPerspectiveScore:(float)a17 pleasantPostProcessingScore:(float)a18 noiseScore:(float)a19 failureScore:(float)a20 pleasantCompositionScore:(float)a21 interestingSubjectScore:(float)a22 intrusiveObjectPresenceScore:(float)a23 pleasantCameraTiltScore:(float)a24 lowKeyLightingScore:(float)a25 error:(id *)a26;
- (VNImageAestheticsObservation)initWithCoder:(id)a3;
- (id)_initWithOriginatingRequestSpecifier:(id)a3 overallAestheticScore:(float)a4 wellFramedSubjectScore:(float)a5 wellChosenBackgroundScore:(float)a6 tastefullyBlurredScore:(float)a7 sharplyFocusedSubjectScore:(float)a8 wellTimedShotScore:(float)a9 pleasantLightingScore:(float)a10 pleasantReflectionsScore:(float)a11 harmoniousColorScore:(float)a12 livelyColorScore:(float)a13 pleasantSymmetryScore:(float)a14 pleasantPatternScore:(float)a15 immersivenessScore:(float)a16 pleasantPerspectiveScore:(float)a17 pleasantPostProcessingScore:(float)a18 noiseScore:(float)a19 failureScore:(float)a20 pleasantCompositionScore:(float)a21 interestingSubjectScore:(float)a22 intrusiveObjectPresenceScore:(float)a23 pleasantCameraTiltScore:(float)a24 lowKeyLightingScore:(float)a25;
- (id)_scoresDictionary;
- (id)description;
- (id)vn_cloneObject;
- (void)encodeWithCoder:(id)a3;
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
  v6 = [(VNImageAestheticsObservation *)self _scoresDictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 allKeys];
  v8 = [v7 sortedArrayUsingSelector:sel_compare_];

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
        v14 = [v6 objectForKeyedSubscript:v13];
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
  v3 = [objc_opt_class() allScorePropertyNames];
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = objc_autoreleasePoolPush();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v3;
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
  v3 = [(VNObservation *)&v5 vn_cloneObject];
  if (v3)
  {
    v3[24] = self->_aestheticScore;
    v3[25] = self->_wellFramedSubjectScore;
    v3[26] = self->_wellChosenBackgroundScore;
    v3[27] = self->_tastefullyBlurredScore;
    v3[28] = self->_sharplyFocusedSubjectScore;
    v3[29] = self->_wellTimedShotScore;
    v3[30] = self->_pleasantLightingScore;
    v3[31] = self->_pleasantReflectionsScore;
    v3[32] = self->_harmoniousColorScore;
    v3[33] = self->_livelyColorScore;
    v3[34] = self->_pleasantSymmetryScore;
    v3[35] = self->_pleasantPatternScore;
    v3[36] = self->_immersivenessScore;
    v3[37] = self->_pleasantPerspectiveScore;
    v3[38] = self->_pleasantPostProcessingScore;
    v3[39] = self->_noiseScore;
    v3[40] = self->_failureScore;
    v3[41] = self->_pleasantCompositionScore;
    v3[42] = self->_interestingSubjectScore;
    v3[43] = self->_intrusiveObjectPresenceScore;
    v3[44] = self->_pleasantCameraTiltScore;
    v3[45] = self->_lowKeyLightingScore;
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v27.receiver = self;
  v27.super_class = VNImageAestheticsObservation;
  v4 = a3;
  [(VNObservation *)&v27 encodeWithCoder:v4];
  [v4 encodeObject:&unk_1F19C14B0 forKey:{@"VNImageAestheticsObservation", v27.receiver, v27.super_class}];
  *&v5 = self->_aestheticScore;
  [v4 vn_encodeValidatedScore:@"OAES" forKey:v5];
  *&v6 = self->_wellFramedSubjectScore;
  [v4 vn_encodeValidatedScore:@"WFS" forKey:v6];
  *&v7 = self->_wellChosenBackgroundScore;
  [v4 vn_encodeValidatedScore:@"WCS" forKey:v7];
  *&v8 = self->_tastefullyBlurredScore;
  [v4 vn_encodeValidatedScore:@"TBC" forKey:v8];
  *&v9 = self->_sharplyFocusedSubjectScore;
  [v4 vn_encodeValidatedScore:@"SFS" forKey:v9];
  *&v10 = self->_pleasantLightingScore;
  [v4 vn_encodeValidatedScore:@"PLHT" forKey:v10];
  *&v11 = self->_pleasantReflectionsScore;
  [v4 vn_encodeValidatedScore:@"PREF" forKey:v11];
  *&v12 = self->_livelyColorScore;
  [v4 vn_encodeValidatedScore:@"LCOL" forKey:v12];
  *&v13 = self->_pleasantSymmetryScore;
  [v4 vn_encodeValidatedScore:@"PSYM" forKey:v13];
  *&v14 = self->_pleasantPatternScore;
  [v4 vn_encodeValidatedScore:@"PPAT" forKey:v14];
  *&v15 = self->_immersivenessScore;
  [v4 vn_encodeValidatedScore:@"IMM" forKey:v15];
  *&v16 = self->_pleasantPerspectiveScore;
  [v4 vn_encodeValidatedScore:@"PPERS" forKey:v16];
  *&v17 = self->_pleasantPostProcessingScore;
  [v4 vn_encodeValidatedScore:@"PPOST" forKey:v17];
  *&v18 = self->_noiseScore;
  [v4 vn_encodeValidatedScore:@"NOISE" forKey:v18];
  *&v19 = self->_failureScore;
  [v4 vn_encodeValidatedScore:@"FAIL" forKey:v19];
  *&v20 = self->_pleasantCompositionScore;
  [v4 vn_encodeValidatedScore:@"PCOMP" forKey:v20];
  *&v21 = self->_interestingSubjectScore;
  [v4 vn_encodeValidatedScore:@"INTREST" forKey:v21];
  *&v22 = self->_intrusiveObjectPresenceScore;
  [v4 vn_encodeValidatedScore:@"INTRUSIVE" forKey:v22];
  *&v23 = self->_pleasantCameraTiltScore;
  [v4 vn_encodeValidatedScore:@"CTILT" forKey:v23];
  *&v24 = self->_wellTimedShotScore;
  [v4 vn_encodeValidatedScore:@"WTS" forKey:v24];
  *&v25 = self->_harmoniousColorScore;
  [v4 vn_encodeValidatedScore:@"HCOL" forKey:v25];
  *&v26 = self->_lowKeyLightingScore;
  [v4 vn_encodeValidatedScore:@"LOWKEY" forKey:v26];
}

- (VNImageAestheticsObservation)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = VNImageAestheticsObservation;
  v5 = [(VNObservation *)&v31 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"VNImageAestheticsObservation"];
    if ([v6 intValue] != 1)
    {

      v29 = 0;
      goto LABEL_6;
    }

    [v4 vn_decodeValidatedScoreForKey:@"OAES"];
    v5->_aestheticScore = v7;
    [v4 vn_decodeValidatedScoreForKey:@"WFS"];
    v5->_wellFramedSubjectScore = v8;
    [v4 vn_decodeValidatedScoreForKey:@"WCS"];
    v5->_wellChosenBackgroundScore = v9;
    [v4 vn_decodeValidatedScoreForKey:@"TBC"];
    v5->_tastefullyBlurredScore = v10;
    [v4 vn_decodeValidatedScoreForKey:@"SFS"];
    v5->_sharplyFocusedSubjectScore = v11;
    [v4 vn_decodeValidatedScoreForKey:@"PLHT"];
    v5->_pleasantLightingScore = v12;
    [v4 vn_decodeValidatedScoreForKey:@"PREF"];
    v5->_pleasantReflectionsScore = v13;
    [v4 vn_decodeValidatedScoreForKey:@"LCOL"];
    v5->_livelyColorScore = v14;
    [v4 vn_decodeValidatedScoreForKey:@"PSYM"];
    v5->_pleasantSymmetryScore = v15;
    [v4 vn_decodeValidatedScoreForKey:@"PPAT"];
    v5->_pleasantPatternScore = v16;
    [v4 vn_decodeValidatedScoreForKey:@"IMM"];
    v5->_immersivenessScore = v17;
    [v4 vn_decodeValidatedScoreForKey:@"PPERS"];
    v5->_pleasantPerspectiveScore = v18;
    [v4 vn_decodeValidatedScoreForKey:@"PPOST"];
    v5->_pleasantPostProcessingScore = v19;
    [v4 vn_decodeValidatedScoreForKey:@"NOISE"];
    v5->_noiseScore = v20;
    [v4 vn_decodeValidatedScoreForKey:@"FAIL"];
    v5->_failureScore = v21;
    [v4 vn_decodeValidatedScoreForKey:@"PCOMP"];
    v5->_pleasantCompositionScore = v22;
    [v4 vn_decodeValidatedScoreForKey:@"INTREST"];
    v5->_interestingSubjectScore = v23;
    [v4 vn_decodeValidatedScoreForKey:@"INTRUSIVE"];
    v5->_intrusiveObjectPresenceScore = v24;
    [v4 vn_decodeValidatedScoreForKey:@"CTILT"];
    v5->_pleasantCameraTiltScore = v25;
    [v4 vn_decodeValidatedScoreForKey:@"WTS"];
    v5->_wellTimedShotScore = v26;
    [v4 vn_decodeValidatedScoreForKey:@"HCOL"];
    v5->_harmoniousColorScore = v27;
    [v4 vn_decodeValidatedScoreForKey:@"LOWKEY"];
    v5->_lowKeyLightingScore = v28;
  }

  v29 = v5;
LABEL_6:

  return v29;
}

- (id)_initWithOriginatingRequestSpecifier:(id)a3 overallAestheticScore:(float)a4 wellFramedSubjectScore:(float)a5 wellChosenBackgroundScore:(float)a6 tastefullyBlurredScore:(float)a7 sharplyFocusedSubjectScore:(float)a8 wellTimedShotScore:(float)a9 pleasantLightingScore:(float)a10 pleasantReflectionsScore:(float)a11 harmoniousColorScore:(float)a12 livelyColorScore:(float)a13 pleasantSymmetryScore:(float)a14 pleasantPatternScore:(float)a15 immersivenessScore:(float)a16 pleasantPerspectiveScore:(float)a17 pleasantPostProcessingScore:(float)a18 noiseScore:(float)a19 failureScore:(float)a20 pleasantCompositionScore:(float)a21 interestingSubjectScore:(float)a22 intrusiveObjectPresenceScore:(float)a23 pleasantCameraTiltScore:(float)a24 lowKeyLightingScore:(float)a25
{
  v34.receiver = self;
  v34.super_class = VNImageAestheticsObservation;
  result = [(VNObservation *)&v34 initWithOriginatingRequestSpecifier:a3];
  if (result)
  {
    *(result + 24) = a4;
    *(result + 25) = a5;
    *(result + 26) = a6;
    *(result + 27) = a7;
    *(result + 28) = a8;
    *(result + 29) = a9;
    *(result + 30) = a10;
    *(result + 31) = a11;
    *(result + 32) = a12;
    *(result + 33) = a13;
    *(result + 34) = a14;
    *(result + 35) = a15;
    *(result + 36) = a16;
    *(result + 37) = a17;
    *(result + 38) = a18;
    *(result + 39) = a19;
    *(result + 40) = a20;
    *(result + 41) = a21;
    *(result + 42) = a22;
    *(result + 43) = a23;
    *(result + 44) = a24;
    *(result + 45) = a25;
  }

  return result;
}

+ (id)observationForOriginatingRequestSpecifier:(id)a3 overallAestheticScore:(float)a4 wellFramedSubjectScore:(float)a5 wellChosenBackgroundScore:(float)a6 tastefullyBlurredScore:(float)a7 sharplyFocusedSubjectScore:(float)a8 wellTimedShotScore:(float)a9 pleasantLightingScore:(float)a10 pleasantReflectionsScore:(float)a11 harmoniousColorScore:(float)a12 livelyColorScore:(float)a13 pleasantSymmetryScore:(float)a14 pleasantPatternScore:(float)a15 immersivenessScore:(float)a16 pleasantPerspectiveScore:(float)a17 pleasantPostProcessingScore:(float)a18 noiseScore:(float)a19 failureScore:(float)a20 pleasantCompositionScore:(float)a21 interestingSubjectScore:(float)a22 intrusiveObjectPresenceScore:(float)a23 pleasantCameraTiltScore:(float)a24 lowKeyLightingScore:(float)a25 error:(id *)a26
{
  v32 = a3;
  *&v33 = a4;
  if ([VNValidationUtilities validateScoreRange:@"overall aesthetics" named:a26 error:v33]
    && (*&v34 = a5, [VNValidationUtilities validateScoreRange:@"well-framed subject" named:a26 error:v34])
    && (*&v35 = a6, [VNValidationUtilities validateScoreRange:@"well-chosen background" named:a26 error:v35])
    && (*&v36 = a7, [VNValidationUtilities validateScoreRange:@"tastefully blurred" named:a26 error:v36])
    && (*&v37 = a8, [VNValidationUtilities validateScoreRange:@"sharply focused" named:a26 error:v37])
    && (*&v38 = a9, [VNValidationUtilities validateScoreRange:@"well-timed shot" named:a26 error:v38])
    && (*&v39 = a10, [VNValidationUtilities validateScoreRange:@"pleasant lighting" named:a26 error:v39])
    && (*&v40 = a11, [VNValidationUtilities validateScoreRange:@"pleasant reflections" named:a26 error:v40])
    && (*&v41 = a12, [VNValidationUtilities validateScoreRange:@"harmonious color" named:a26 error:v41])
    && (*&v42 = a13, [VNValidationUtilities validateScoreRange:@"lively color" named:a26 error:v42])
    && (*&v43 = a14, [VNValidationUtilities validateScoreRange:@"pleasant symmetry" named:a26 error:v43])
    && (*&v44 = a15, [VNValidationUtilities validateScoreRange:@"pleasant pattern" named:a26 error:v44])
    && (*&v45 = a16, [VNValidationUtilities validateScoreRange:@"immersiveness" named:a26 error:v45])
    && (*&v46 = a17, [VNValidationUtilities validateScoreRange:@"pleasant perspective" named:a26 error:v46])
    && (*&v47 = a18, [VNValidationUtilities validateScoreRange:@"pleasant post-processing" named:a26 error:v47])
    && (*&v48 = a19, [VNValidationUtilities validateScoreRange:@"noise" named:a26 error:v48])
    && (*&v49 = a20, [VNValidationUtilities validateScoreRange:@"failure" named:a26 error:v49])
    && (*&v50 = a21, [VNValidationUtilities validateScoreRange:@"pleasant composition" named:a26 error:v50])
    && (*&v51 = a22, [VNValidationUtilities validateScoreRange:@"interesting subject" named:a26 error:v51])
    && (*&v52 = a23, [VNValidationUtilities validateScoreRange:@"intrusive object" named:a26 error:v52])
    && (*&v53 = a24, [VNValidationUtilities validateScoreRange:@"pleasant camera tilt" named:a26 error:v53])
    && (*&v54 = a25, [VNValidationUtilities validateScoreRange:@"low key lighting" named:a26 error:v54]))
  {
    v55 = [a1 alloc];
    *&v56 = a4;
    *&v57 = a5;
    *&v58 = a6;
    *&v59 = a7;
    *&v61 = a9;
    *&v60 = a8;
    *&v63 = a11;
    *&v62 = a10;
    v64 = [v55 _initWithOriginatingRequestSpecifier:v32 overallAestheticScore:v56 wellFramedSubjectScore:v57 wellChosenBackgroundScore:v58 tastefullyBlurredScore:v59 sharplyFocusedSubjectScore:v60 wellTimedShotScore:v61 pleasantLightingScore:v62 pleasantReflectionsScore:v63 harmoniousColorScore:__PAIR64__(LODWORD(a13) livelyColorScore:LODWORD(a12)) pleasantSymmetryScore:__PAIR64__(LODWORD(a15) pleasantPatternScore:LODWORD(a14)) immersivenessScore:__PAIR64__(LODWORD(a17) pleasantPerspectiveScore:LODWORD(a16)) pleasantPostProcessingScore:__PAIR64__(LODWORD(a19) noiseScore:LODWORD(a18)) failureScore:__PAIR64__(LODWORD(a21) pleasantCompositionScore:LODWORD(a20)) interestingSubjectScore:__PAIR64__(LODWORD(a23) intrusiveObjectPresenceScore:LODWORD(a22)) pleasantCameraTiltScore:__PAIR64__(LODWORD(a25) lowKeyLightingScore:LODWORD(a24))];
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
  block[4] = a1;
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