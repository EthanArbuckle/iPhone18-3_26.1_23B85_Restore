@interface PHAssetAestheticProperties
+ (id)propertiesToFetch;
- (PHAssetAestheticProperties)initWithDefaultValues;
- (PHAssetAestheticProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched;
@end

@implementation PHAssetAestheticProperties

- (PHAssetAestheticProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched
{
  prefetchedCopy = prefetched;
  dictionaryCopy = dictionary;
  assetCopy = asset;
  v91.receiver = self;
  v91.super_class = PHAssetAestheticProperties;
  v10 = [(PHAssetAestheticProperties *)&v91 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->super._asset, assetCopy);
    if (prefetchedCopy)
    {
      v12 = @"computedAttributes.wellFramedSubjectScore";
    }

    else
    {
      v12 = @"wellFramedSubjectScore";
    }

    v13 = [dictionaryCopy objectForKey:v12];

    if (v13)
    {
      v14 = [dictionaryCopy objectForKeyedSubscript:v12];
      [v14 floatValue];
      v11->_wellFramedSubjectScore = v15;

      v16 = !prefetchedCopy;
      if (prefetchedCopy)
      {
        v17 = @"computedAttributes.wellChosenSubjectScore";
      }

      else
      {
        v17 = @"wellChosenSubjectScore";
      }

      if (prefetchedCopy)
      {
        v18 = @"computedAttributes.tastefullyBlurredScore";
      }

      else
      {
        v18 = @"tastefullyBlurredScore";
      }

      if (prefetchedCopy)
      {
        v19 = @"computedAttributes.sharplyFocusedSubjectScore";
      }

      else
      {
        v19 = @"sharplyFocusedSubjectScore";
      }

      if (prefetchedCopy)
      {
        v20 = @"computedAttributes.wellTimedShotScore";
      }

      else
      {
        v20 = @"wellTimedShotScore";
      }

      if (prefetchedCopy)
      {
        v21 = @"computedAttributes.pleasantLightingScore";
      }

      else
      {
        v21 = @"pleasantLightingScore";
      }

      if (prefetchedCopy)
      {
        v22 = @"computedAttributes.pleasantReflectionsScore";
      }

      else
      {
        v22 = @"pleasantReflectionsScore";
      }

      if (v16)
      {
        v23 = @"harmoniousColorScore";
      }

      else
      {
        v23 = @"computedAttributes.harmoniousColorScore";
      }

      v24 = @"computedAttributes.livelyColorScore";
      if (v16)
      {
        v24 = @"livelyColorScore";
      }

      v78 = v24;
      v25 = @"pleasantSymmetryScore";
      if (!v16)
      {
        v25 = @"computedAttributes.pleasantSymmetryScore";
      }

      v79 = v25;
      if (v16)
      {
        v26 = @"pleasantPatternScore";
      }

      else
      {
        v26 = @"computedAttributes.pleasantPatternScore";
      }

      v80 = v26;
      if (v16)
      {
        v27 = @"immersivenessScore";
      }

      else
      {
        v27 = @"computedAttributes.immersivenessScore";
      }

      v28 = @"pleasantPerspectiveScore";
      if (!v16)
      {
        v28 = @"computedAttributes.pleasantPerspectiveScore";
      }

      v81 = v27;
      v82 = v28;
      if (v16)
      {
        v29 = @"pleasantPostProcessingScore";
      }

      else
      {
        v29 = @"computedAttributes.pleasantPostProcessingScore";
      }

      v30 = @"computedAttributes.noiseScore";
      if (v16)
      {
        v30 = @"noiseScore";
      }

      v83 = v29;
      v84 = v30;
      v31 = @"failureScore";
      if (!v16)
      {
        v31 = @"computedAttributes.failureScore";
      }

      v85 = v31;
      if (v16)
      {
        v32 = @"pleasantCompositionScore";
      }

      else
      {
        v32 = @"computedAttributes.pleasantCompositionScore";
      }

      v86 = v32;
      if (v16)
      {
        v33 = @"interestingSubjectScore";
      }

      else
      {
        v33 = @"computedAttributes.interestingSubjectScore";
      }

      v34 = @"intrusiveObjectPresenceScore";
      if (!v16)
      {
        v34 = @"computedAttributes.intrusiveObjectPresenceScore";
      }

      v87 = v33;
      v88 = v34;
      if (v16)
      {
        v35 = @"pleasantCameraTiltScore";
      }

      else
      {
        v35 = @"computedAttributes.pleasantCameraTiltScore";
      }

      v36 = @"computedAttributes.lowLight";
      if (v16)
      {
        v36 = @"lowLight";
      }

      v89 = v35;
      v90 = v36;
      v37 = [dictionaryCopy objectForKeyedSubscript:v17];
      [v37 floatValue];
      v11->_wellChosenSubjectScore = v38;

      v39 = [dictionaryCopy objectForKeyedSubscript:v18];
      [v39 floatValue];
      v11->_tastefullyBlurredScore = v40;

      v41 = [dictionaryCopy objectForKeyedSubscript:v19];
      [v41 floatValue];
      v11->_sharplyFocusedSubjectScore = v42;

      v43 = [dictionaryCopy objectForKeyedSubscript:v20];
      [v43 floatValue];
      v11->_wellTimedShotScore = v44;

      v45 = [dictionaryCopy objectForKeyedSubscript:v21];
      [v45 floatValue];
      v11->_pleasantLightingScore = v46;

      v47 = [dictionaryCopy objectForKeyedSubscript:v22];
      [v47 floatValue];
      v11->_pleasantReflectionsScore = v48;

      v49 = [dictionaryCopy objectForKeyedSubscript:v23];
      [v49 floatValue];
      v11->_harmoniousColorScore = v50;

      v51 = [dictionaryCopy objectForKeyedSubscript:v78];
      [v51 floatValue];
      v11->_livelyColorScore = v52;

      v53 = [dictionaryCopy objectForKeyedSubscript:v79];
      [v53 floatValue];
      v11->_pleasantSymmetryScore = v54;

      v55 = [dictionaryCopy objectForKeyedSubscript:v80];
      [v55 floatValue];
      v11->_pleasantPatternScore = v56;

      v57 = [dictionaryCopy objectForKeyedSubscript:v81];
      [v57 floatValue];
      v11->_immersivenessScore = v58;

      v59 = [dictionaryCopy objectForKeyedSubscript:v82];
      [v59 floatValue];
      v11->_pleasantPerspectiveScore = v60;

      v61 = [dictionaryCopy objectForKeyedSubscript:v83];
      [v61 floatValue];
      v11->_pleasantPostProcessingScore = v62;

      v63 = [dictionaryCopy objectForKeyedSubscript:v84];
      [v63 floatValue];
      v11->_noiseScore = v64;

      v65 = [dictionaryCopy objectForKeyedSubscript:v85];
      [v65 floatValue];
      v11->_failureScore = v66;

      v67 = [dictionaryCopy objectForKeyedSubscript:v86];
      [v67 floatValue];
      v11->_pleasantCompositionScore = v68;

      v69 = [dictionaryCopy objectForKeyedSubscript:v87];
      [v69 floatValue];
      v11->_interestingSubjectScore = v70;

      v71 = [dictionaryCopy objectForKeyedSubscript:v88];
      [v71 floatValue];
      v11->_intrusiveObjectPresenceScore = v72;

      v73 = [dictionaryCopy objectForKeyedSubscript:v89];
      [v73 floatValue];
      v11->_pleasantCameraTiltScore = v74;

      v75 = [dictionaryCopy objectForKeyedSubscript:v90];
      [v75 floatValue];
      v11->_lowLight = v76;
    }

    else
    {
      [(PHAssetAestheticProperties *)v11 initWithDefaultValues];
    }
  }

  return v11;
}

- (PHAssetAestheticProperties)initWithDefaultValues
{
  self->_wellFramedSubjectScore = 0.0;
  self->_wellChosenSubjectScore = 0.0;
  self->_tastefullyBlurredScore = 0.0;
  self->_sharplyFocusedSubjectScore = 0.0;
  self->_wellTimedShotScore = 0.0;
  self->_pleasantLightingScore = 0.0;
  self->_pleasantReflectionsScore = 0.0;
  self->_harmoniousColorScore = 0.0;
  self->_livelyColorScore = 0.0;
  self->_pleasantSymmetryScore = 0.0;
  self->_pleasantPatternScore = 0.0;
  self->_immersivenessScore = 0.0;
  self->_pleasantPerspectiveScore = 0.0;
  self->_pleasantPostProcessingScore = 0.0;
  self->_noiseScore = 0.0;
  self->_failureScore = 0.0;
  self->_pleasantCompositionScore = 0.0;
  self->_interestingSubjectScore = 0.0;
  self->_intrusiveObjectPresenceScore = 0.0;
  self->_pleasantCameraTiltScore = 0.0;
  self->_lowLight = 0.0;
  return self;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_58;

  return v2;
}

void __47__PHAssetAestheticProperties_propertiesToFetch__block_invoke()
{
  v3[21] = *MEMORY[0x1E69E9840];
  v3[0] = @"wellFramedSubjectScore";
  v3[1] = @"wellChosenSubjectScore";
  v3[2] = @"tastefullyBlurredScore";
  v3[3] = @"sharplyFocusedSubjectScore";
  v3[4] = @"wellTimedShotScore";
  v3[5] = @"pleasantLightingScore";
  v3[6] = @"pleasantReflectionsScore";
  v3[7] = @"harmoniousColorScore";
  v3[8] = @"livelyColorScore";
  v3[9] = @"pleasantSymmetryScore";
  v3[10] = @"pleasantPatternScore";
  v3[11] = @"immersivenessScore";
  v3[12] = @"pleasantPerspectiveScore";
  v3[13] = @"pleasantPostProcessingScore";
  v3[14] = @"noiseScore";
  v3[15] = @"failureScore";
  v3[16] = @"pleasantCompositionScore";
  v3[17] = @"interestingSubjectScore";
  v3[18] = @"intrusiveObjectPresenceScore";
  v3[19] = @"pleasantCameraTiltScore";
  v3[20] = @"lowLight";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:21];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_58;
  propertiesToFetch_pl_once_object_58 = v1;
}

@end