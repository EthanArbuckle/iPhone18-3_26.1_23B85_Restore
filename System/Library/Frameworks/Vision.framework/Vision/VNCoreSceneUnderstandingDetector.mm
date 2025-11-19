@interface VNCoreSceneUnderstandingDetector
+ (BOOL)_getEntityNetTaxonomy:(void *)a3 forCSUSceneNetV5Configuration:(void *)a4 session:(uint64_t)a5 error:;
+ (BOOL)_getSceneNetV5ConfigurationRevision:(void *)a3 forConfigurationOptions:(void *)a4 error:;
+ (id)_detectedObjectTaxonomyForCSUSceneNetV5Configuration:(void *)a3 session:(uint64_t)a4 error:;
+ (id)_globalOrProvidedSessionInOptions:(uint64_t)a3 error:;
+ (id)_identifiersSupportedByCustomClassifierConfiguration:(uint64_t)a3 error:;
+ (id)_newSaliencyHeatmapBoundingBoxGeneratorOptionsForOptions:(id)a3;
+ (id)_sceneNetTaxonomyForCSUSceneNetV5Configuration:(void *)a3 session:(uint64_t)a4 error:;
+ (id)_specialCaseRecognizedObjectsDuplicationsForOriginatingRequestSpecifier:(id)a3;
+ (id)allCityNatureIdentifiersWithConfigurationOptions:(id)a3 error:(id *)a4;
+ (id)allClassificationIdentifiersWithConfigurationOptions:(id)a3 error:(id *)a4;
+ (id)allRecognizedObjectIdentifiersWithConfigurationOptions:(id)a3 error:(id *)a4;
+ (id)allSignificantEventIdentifiersWithConfigurationOptions:(id)a3 error:(id *)a4;
+ (id)allVN5kJNH3eYuyaLxNpZr5Z7ziIdentifiersWithConfigurationOptions:(id)a3 error:(id *)a4;
+ (id)computeStagesToBindForConfigurationOptions:(id)a3;
+ (id)configurationOptionKeysForDetectorKey;
+ (id)keyForDetectorWithConfigurationOptions:(id)a3;
+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4;
+ (id)supportedImageSizeSetForOptions:(id)a3 error:(id *)a4;
+ (uint64_t)_getCSUSceneNetV5Configuration:(void *)a3 junkLeafConfiguration:(void *)a4 junkHierarchicalConfiguration:(void *)a5 VN5kJNH3eYuyaLxNpZr5Z7ziConfiguration:(void *)a6 significantEventConfiguration:(void *)a7 cityNatureConfiguration:(void *)a8 forConfigurationOptions:(void *)a9 error:;
+ (uint64_t)_sceneNetV5ConfigurationRevisionForRequestClass:(unint64_t)a3 revision:;
+ (uint64_t)_sceneNetV5ConfigurationRevisionForRequestSpecifier:(uint64_t)a1;
+ (void)recordDefaultConfigurationOptionsInDictionary:(id)a3;
- (BOOL)_processJunkConfigurations:(void *)a3 VN5kJNH3eYuyaLxNpZr5Z7ziConfigurations:(void *)a4 significantEventConfigurations:(void *)a5 cityNatureConfigurations:(void *)a6 forSceneNetOutput:(void *)a7 collectedObservations:(void *)a8 error:;
- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4;
- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9;
- (BOOL)warmUpSession:(id)a3 withOptions:(id)a4 error:(id *)a5;
- (id)_CSUSceneNetV5NetworkLabelLikelihoodEnumerationBlockForCollectingTopN:(uint64_t)a1 observations:(void *)a2 minimumConfidence:(void *)a3 disallowedList:(void *)a4 taxonomy:(void *)a5 originatingRequestSpecifier:(float)a6;
- (id)_entityNetTaxonomyForSession:(uint64_t)a3 error:;
- (id)_processSaliencyConfiguration:(uint64_t)a3 fromSaliencyMapProvidedBySelector:(void *)a4 ofSceneNetOutput:(void *)a5 regionOfInterest:(uint64_t)a6 options:(void *)a7 qosClass:(uint64_t)a8 saliencyGeneratorType:(double)a9 error:(double)a10;
- (id)_processSceneNetOutput:(void *)a3 regionOfInterest:(unsigned int)a4 options:(void *)a5 qosClass:(double)a6 error:(double)a7;
- (id)_sceneNetTaxonomyForSession:(uint64_t)a3 error:;
- (id)description;
- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)a3 options:(id)a4 regionOfInterest:(CGRect)a5 warningRecorder:(id)a6 error:(id *)a7 progressHandler:(id)a8;
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
- (int64_t)sceneNetConfigurationRevision;
- (uint64_t)_runSceneNetCustomClassifiers:(void *)a1 onSceneprintBuffer:(void *)a2 forConfigurations:(void *)a3 collectedObservations:(void *)a4 error:(void *)a5;
- (uint64_t)_warmUpTaxonomiesForOptions:(void *)a3 inSession:(uint64_t)a4 error:;
@end

@implementation VNCoreSceneUnderstandingDetector

- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17 = a5;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__39_26555;
  v43 = __Block_byref_object_dispose__40_26556;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__39_26555;
  v37 = __Block_byref_object_dispose__40_26556;
  v38 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __134__VNCoreSceneUnderstandingDetector_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke;
  aBlock[3] = &unk_1E77B5088;
  v26 = &v33;
  v27 = &v39;
  aBlock[4] = self;
  v28 = x;
  v29 = y;
  v30 = width;
  v31 = height;
  v18 = v17;
  v25 = v18;
  v32 = a6;
  v19 = _Block_copy(aBlock);
  v20 = objc_autoreleasePoolPush();
  [(CSUSceneNetV5 *)self->_sceneNet runOnInputImage:a4 completion:v19];
  objc_autoreleasePoolPop(v20);
  v21 = v40[5];
  if (v21)
  {
    v22 = v21;
  }

  else if (a8)
  {
    *a8 = v34[5];
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  return v21;
}

void __134__VNCoreSceneUnderstandingDetector_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v9 = *(a1 + 80);
    v10 = *(a1 + 88);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *(a1 + 96);
    v14 = *(*(a1 + 48) + 8);
    obj = *(v14 + 40);
    v15 = [(VNCoreSceneUnderstandingDetector *)v11 _processSceneNetOutput:v5 regionOfInterest:v12 options:v13 qosClass:&obj error:v7, v8, v9, v10];
    objc_storeStrong((v14 + 40), obj);
    v16 = *(*(a1 + 56) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }
}

- (id)_processSceneNetOutput:(void *)a3 regionOfInterest:(unsigned int)a4 options:(void *)a5 qosClass:(double)a6 error:(double)a7
{
  v331 = *MEMORY[0x1E69E9840];
  v278 = a2;
  v12 = a3;
  v276 = a1;
  v257 = v12;
  if (!a1)
  {
    v157 = 0;
    goto LABEL_154;
  }

  v279 = a5;
  v264 = [VNValidationUtilities requiredSessionInOptions:v12 error:a5];
  if (!v264)
  {
    v157 = 0;
    goto LABEL_153;
  }

  v277 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = [v257 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorInternalProcessingOption_Tiling"];

  if (v13)
  {
    goto LABEL_4;
  }

  v310 = 0u;
  v311 = 0u;
  v308 = 0u;
  v309 = 0u;
  v237 = [v257 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageClassificationConfigurations"];
  v158 = [v237 countByEnumeratingWithState:&v308 objects:v319 count:16];
  if (v158)
  {
    objd = *v309;
    v159 = &off_1E77B8000;
    do
    {
      v255 = v158;
      v160 = 0;
      v268 = v159[258];
      do
      {
        if (*v309 != objd)
        {
          objc_enumerationMutation(v237);
        }

        v161 = *(*(&v308 + 1) + 8 * v160);
        v162 = v278;
        v163 = v264;
        v164 = [v162 VNRequiredBufferFromSelector:v268 error:v279];
        if (v164)
        {
          v165 = [(VNCoreSceneUnderstandingDetector *)v276 _sceneNetTaxonomyForSession:v163 error:v279];
          if (v165)
          {
            v245 = [v161 observationsRecipient];
            v250 = [v245 originatingRequestSpecifier];
            [v161 minimumConfidence];
            v167 = v166;
            v168 = [v161 disallowedList];
            v241 = v168;
            v274 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v169 = -[VNCoreSceneUnderstandingDetector _CSUSceneNetV5NetworkLabelLikelihoodEnumerationBlockForCollectingTopN:observations:minimumConfidence:disallowedList:taxonomy:originatingRequestSpecifier:]([v161 maximumHierarchicalClassifications], v274, v168, v165, v250, v167);
            if ([v276[7] enumerateHierarchicalSceneClassificationLikelihoods:v164 usingBlock:v169 error:v279])
            {
              v170 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v171 = -[VNCoreSceneUnderstandingDetector _CSUSceneNetV5NetworkLabelLikelihoodEnumerationBlockForCollectingTopN:observations:minimumConfidence:disallowedList:taxonomy:originatingRequestSpecifier:]([v161 maximumLeafClassifications], v170, v168, v165, v250, v167);

              if ([v276[7] enumerateLeafSceneClassificationLikelihoods:v164 usingBlock:v171 error:v279])
              {
                [v170 addObjectsFromArray:v274];
                v172 = &__block_literal_global_128;
                [v170 sortWithOptions:16 usingComparator:&__block_literal_global_128];

                [v245 receiveObservations:v170];
                v173 = v170;
              }

              else
              {
                v173 = 0;
              }

              v169 = v171;
            }

            else
            {
              v173 = 0;
            }
          }

          else
          {
            v173 = 0;
          }
        }

        else
        {
          v173 = 0;
        }

        if (!v173)
        {

          goto LABEL_151;
        }

        [v277 addObjectsFromArray:v173];

        ++v160;
      }

      while (v255 != v160);
      v158 = [v237 countByEnumeratingWithState:&v308 objects:v319 count:16];
      v159 = &off_1E77B8000;
    }

    while (v158);
  }

  v306 = 0u;
  v307 = 0u;
  v304 = 0u;
  v305 = 0u;
  v174 = [v257 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_EntityNetClassificationConfigurations"];
  v246 = v174;
  v175 = [v174 countByEnumeratingWithState:&v304 objects:v318 count:16];
  if (!v175)
  {
    goto LABEL_143;
  }

  obje = *v305;
  while (2)
  {
    v256 = v175;
    for (i = 0; i != v256; ++i)
    {
      if (*v305 != obje)
      {
        objc_enumerationMutation(v174);
      }

      v177 = *(*(&v304 + 1) + 8 * i);
      v275 = v278;
      v269 = v264;
      v178 = [v177 observationsRecipient];
      v179 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v180 = [v275 entityNetClassificationLikelihoods];
      if (!v180)
      {
        goto LABEL_137;
      }

      v181 = [(VNCoreSceneUnderstandingDetector *)v276 _entityNetTaxonomyForSession:v269 error:v279];
      if (v181)
      {
        v251 = [v178 originatingRequestSpecifier];
        v182 = [v177 maximumClassifications];
        [v177 minimumConfidence];
        v184 = v183;
        v185 = [v177 disallowedList];
        v186 = [VNCoreSceneUnderstandingDetector _CSUSceneNetV5NetworkLabelLikelihoodEnumerationBlockForCollectingTopN:v182 observations:v179 minimumConfidence:v185 disallowedList:v181 taxonomy:v251 originatingRequestSpecifier:v184];

        v174 = v246;
        if ([v276[7] enumerateEntityNetClassificationLikelihoods:v180 usingBlock:v186 error:v279])
        {
          v187 = &__block_literal_global_128;
          [v179 sortWithOptions:16 usingComparator:&__block_literal_global_128];

LABEL_137:
          [v178 receiveObservations:v179];
          v188 = v179;
          goto LABEL_140;
        }
      }

      v188 = 0;
LABEL_140:

      if (!v188)
      {

        goto LABEL_151;
      }

      [v277 addObjectsFromArray:v188];
    }

    v175 = [v174 countByEnumeratingWithState:&v304 objects:v318 count:16];
    if (v175)
    {
      continue;
    }

    break;
  }

LABEL_143:

LABEL_4:
  v302 = 0u;
  v303 = 0u;
  v300 = 0u;
  v301 = 0u;
  obj = [v257 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_SceneprintConfigurations"];
  v14 = [obj countByEnumeratingWithState:&v300 objects:v317 count:16];
  if (v14)
  {
    v265 = *v301;
    v15 = &selRef_path;
    while (2)
    {
      v16 = 0;
      v270 = v15[372];
      do
      {
        if (*v301 != v265)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v300 + 1) + 8 * v16);
        v18 = v278;
        v19 = [v18 VNRequiredBufferFromSelector:v270 error:v279];
        if (v19)
        {
          v20 = [v17 observationsRecipient];
          v21 = [v20 originatingRequestSpecifier];
          v22 = [(VNEspressoModelImageprint *)VNSceneprint printFromCSUBuffer:v19 originatingRequestSpecifier:v21 error:v279];
          if (v22)
          {
            v23 = [VNSceneObservation alloc];
            v326[0] = v22;
            v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v326 count:1];
            v25 = [(VNSceneObservation *)v23 initWithOriginatingRequestSpecifier:v21 sceneprints:v24];

            *&v327 = v25;
            v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v327 count:1];
            [v20 receiveObservations:v26];
          }

          else
          {
            v26 = 0;
          }
        }

        else
        {
          v26 = 0;
        }

        if (!v26)
        {

          goto LABEL_151;
        }

        [v277 addObjectsFromArray:v26];

        ++v16;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v300 objects:v317 count:16];
      v15 = &selRef_path;
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v298 = 0u;
  v299 = 0u;
  v296 = 0u;
  v297 = 0u;
  v191 = [v257 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageAestheticsConfigurations"];
  v27 = [v191 countByEnumeratingWithState:&v296 objects:v316 count:16];
  if (v27)
  {
    v28 = &off_1E77B8000;
    v29 = &off_1E77B8000;
    v235 = *v297;
    while (2)
    {
      v233 = v27;
      v30 = 0;
      v238 = v28[259];
      v192 = v29[260];
      do
      {
        if (*v297 != v235)
        {
          objc_enumerationMutation(v191);
        }

        v266 = *(*(&v296 + 1) + 8 * v30);
        v271 = v278;
        v31 = [v271 VNRequiredBufferFromSelector:v238 error:v279];
        obja = v31;
        if (v31)
        {
          v32 = [v276[7] allAestheticsAttributeScores:v31];
          v33 = [v271 VNRequiredBufferFromSelector:v192 error:v279];
          v252 = v33;
          if (v33)
          {
            v247 = [v276[7] allAestheticsGlobalScores:v33];
            v231 = [v266 observationsRecipient];
            v242 = [v231 originatingRequestSpecifier];
            v211 = [v247 objectForKeyedSubscript:@"aesthetic_score"];
            [v211 floatValue];
            v220 = v34;
            v209 = [v32 objectForKeyedSubscript:@"subject_framing"];
            [v209 floatValue];
            v219 = v35;
            v208 = [v32 objectForKeyedSubscript:@"background"];
            [v208 floatValue];
            v218 = v36;
            v206 = [v32 objectForKeyedSubscript:@"blur"];
            [v206 floatValue];
            v217 = v37;
            v205 = [v32 objectForKeyedSubscript:@"subject_sharpness"];
            [v205 floatValue];
            v216 = v38;
            v203 = [v32 objectForKeyedSubscript:@"timing"];
            [v203 floatValue];
            v215 = v39;
            v201 = [v32 objectForKeyedSubscript:@"lightning"];
            [v201 floatValue];
            v214 = v40;
            v200 = [v32 objectForKeyedSubscript:@"reflections"];
            [v200 floatValue];
            v213 = v41;
            v199 = [v32 objectForKeyedSubscript:@"color_harmony"];
            [v199 floatValue];
            v212 = v42;
            v198 = [v32 objectForKeyedSubscript:@"color_brightness"];
            [v198 floatValue];
            v210 = v43;
            v197 = [v32 objectForKeyedSubscript:@"symmetry"];
            [v197 floatValue];
            v207 = v44;
            v196 = [v32 objectForKeyedSubscript:@"repetition"];
            [v196 floatValue];
            v204 = v45;
            v195 = [v32 objectForKeyedSubscript:@"immersive_feeling"];
            [v195 floatValue];
            v202 = v46;
            v194 = [v32 objectForKeyedSubscript:@"perspective"];
            [v194 floatValue];
            v48 = v47;
            v193 = [v32 objectForKeyedSubscript:@"post_processing"];
            [v193 floatValue];
            v50 = v49;
            v51 = [v32 objectForKeyedSubscript:@"noise"];
            [v51 floatValue];
            v53 = v52;
            v54 = [v32 objectForKeyedSubscript:@"failure"];
            [v54 floatValue];
            v56 = v55;
            v57 = [v32 objectForKeyedSubscript:@"composition"];
            [v57 floatValue];
            v59 = v58;
            v60 = [v32 objectForKeyedSubscript:@"interestingness"];
            [v60 floatValue];
            v62 = v61;
            v63 = [v32 objectForKeyedSubscript:@"object_intrusion"];
            [v63 floatValue];
            v65 = v64;
            v66 = [v32 objectForKeyedSubscript:@"tilt"];
            [v66 floatValue];
            v68 = v67;
            v69 = [v32 objectForKeyedSubscript:@"low_light"];
            [v69 floatValue];
            v190 = __PAIR64__(v70, v68);
            LODWORD(v71) = v213;
            LODWORD(v73) = v219;
            LODWORD(v72) = v220;
            LODWORD(v75) = v217;
            LODWORD(v74) = v218;
            LODWORD(v77) = v215;
            LODWORD(v76) = v216;
            LODWORD(v78) = v214;
            v79 = [VNImageAestheticsObservation observationForOriginatingRequestSpecifier:v242 overallAestheticScore:v279 wellFramedSubjectScore:v72 wellChosenBackgroundScore:v73 tastefullyBlurredScore:v74 sharplyFocusedSubjectScore:v75 wellTimedShotScore:v76 pleasantLightingScore:v77 pleasantReflectionsScore:v78 harmoniousColorScore:v71 livelyColorScore:__PAIR64__(v210 pleasantSymmetryScore:v212) pleasantPatternScore:__PAIR64__(v204 immersivenessScore:v207) pleasantPerspectiveScore:__PAIR64__(v48 pleasantPostProcessingScore:v202) noiseScore:__PAIR64__(v53 failureScore:v50) pleasantCompositionScore:__PAIR64__(v59 interestingSubjectScore:v56) intrusiveObjectPresenceScore:__PAIR64__(v65 pleasantCameraTiltScore:v62) lowKeyLightingScore:v190 error:?];

            if (v79)
            {
              v326[0] = v79;
              v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v326 count:1];
              [v231 receiveObservations:v80];
            }

            else
            {
              v80 = 0;
            }
          }

          else
          {
            v80 = 0;
          }
        }

        else
        {
          v80 = 0;
        }

        if (!v80)
        {

          goto LABEL_151;
        }

        [v277 addObjectsFromArray:v80];

        ++v30;
      }

      while (v233 != v30);
      v27 = [v191 countByEnumeratingWithState:&v296 objects:v316 count:16];
      v28 = &off_1E77B8000;
      v29 = &off_1E77B8000;
      if (v27)
      {
        continue;
      }

      break;
    }
  }

  v294 = 0u;
  v295 = 0u;
  v292 = 0u;
  v293 = 0u;
  v81 = [v257 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageSaliencyAConfigurations"];
  v82 = [v81 countByEnumeratingWithState:&v292 objects:v315 count:16];
  if (v82)
  {
    v83 = *v293;
    v84 = &off_1E77B8000;
    while (2)
    {
      v85 = 0;
      v86 = v84[261];
      do
      {
        if (*v293 != v83)
        {
          objc_enumerationMutation(v81);
        }

        v87 = *(*(&v292 + 1) + 8 * v85);
        v88 = v278;
        v89 = v257;
        v90 = [(VNCoreSceneUnderstandingDetector *)v276 _processSaliencyConfiguration:v87 fromSaliencyMapProvidedBySelector:v86 ofSceneNetOutput:v88 regionOfInterest:v89 options:a4 qosClass:@"VNAttentionBasedSaliencyHeatmapBoundingBoxGeneratorType" saliencyGeneratorType:v279 error:a6, a7, a8, a9];

        if (!v90)
        {

          goto LABEL_151;
        }

        [v277 addObjectsFromArray:v90];

        ++v85;
      }

      while (v82 != v85);
      v82 = [v81 countByEnumeratingWithState:&v292 objects:v315 count:16];
      v84 = &off_1E77B8000;
      if (v82)
      {
        continue;
      }

      break;
    }
  }

  v290 = 0u;
  v291 = 0u;
  v288 = 0u;
  v289 = 0u;
  v91 = [v257 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageSaliencyOConfigurations"];
  v92 = [v91 countByEnumeratingWithState:&v288 objects:v314 count:16];
  if (v92)
  {
    v93 = *v289;
    v94 = &off_1E77B8000;
    while (2)
    {
      v95 = 0;
      v96 = v94[262];
      do
      {
        if (*v289 != v93)
        {
          objc_enumerationMutation(v91);
        }

        v97 = *(*(&v288 + 1) + 8 * v95);
        v98 = v278;
        v99 = v257;
        v100 = [(VNCoreSceneUnderstandingDetector *)v276 _processSaliencyConfiguration:v97 fromSaliencyMapProvidedBySelector:v96 ofSceneNetOutput:v98 regionOfInterest:v99 options:a4 qosClass:@"VNObjectnessBasedSaliencyHeatmapBoundingBoxGeneratorType" saliencyGeneratorType:v279 error:a6, a7, a8, a9];

        if (!v100)
        {

          goto LABEL_151;
        }

        [v277 addObjectsFromArray:v100];

        ++v95;
      }

      while (v92 != v95);
      v92 = [v91 countByEnumeratingWithState:&v288 objects:v314 count:16];
      v94 = &off_1E77B8000;
      if (v92)
      {
        continue;
      }

      break;
    }
  }

  v286 = 0u;
  v287 = 0u;
  v284 = 0u;
  v285 = 0u;
  v222 = [v257 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_RecognizeObjectsConfigurations"];
  v236 = [v222 countByEnumeratingWithState:&v284 objects:v313 count:16];
  if (v236)
  {
    v234 = *v285;
    v101 = &off_1E77B8000;
    v102 = &off_1E77B8000;
    while (2)
    {
      v272 = 0;
      v239 = v101[263];
      v224 = v102[264];
      do
      {
        if (*v285 != v234)
        {
          objc_enumerationMutation(v222);
        }

        v103 = *(*(&v284 + 1) + 8 * v272);
        v104 = v278;
        v253 = v104;
        objb = [v104 VNRequiredBufferFromSelector:v239 error:v279];
        if (objb)
        {
          v105 = [v104 VNRequiredBufferFromSelector:v224 error:v279];
          if (v105)
          {
            v243 = v105;
            v248 = objc_alloc_init(MEMORY[0x1E6999120]);
            [v103 minimumDetectionConfidence];
            [v248 setDetectionForegroundThreshold:?];
            [v103 nonMaximumSuppressionThreshold];
            [v248 setNmsThresholdDetection:?];
            v106 = [v103 targetedIdentifiers];
            [v248 setRelevantClassNames:v106];

            v107 = [v276[7] detectionResultFromScoreHeatMap:objb coordinateOffsetMap:v243 options:v248 error:v279];
            if (v107)
            {
              v232 = v107;
              v226 = [v103 observationsRecipient];
              v108 = [v226 originatingRequestSpecifier];
              v109 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v107, "count")}];
              aBlock = MEMORY[0x1E69E9820];
              v321 = 3221225472;
              v322 = __96__VNCoreSceneUnderstandingDetector__processRecognizedObjectsConfiguration_sceneNetOutput_error___block_invoke;
              v323 = &unk_1E77B4F08;
              v230 = v108;
              v324 = v230;
              v228 = v109;
              v325 = v228;
              v110 = _Block_copy(&aBlock);
              v111 = [v103 disallowedList];
              [v103 minimumDetectionConfidence];
              v113 = v112;
              v114 = [objc_opt_class() _specialCaseRecognizedObjectsDuplicationsForOriginatingRequestSpecifier:v230];
              v329 = 0u;
              v330 = 0u;
              v327 = 0u;
              v328 = 0u;
              v115 = v107;
              v116 = [v115 countByEnumeratingWithState:&v327 objects:v326 count:16];
              if (v116)
              {
                v117 = *v328;
                do
                {
                  for (j = 0; j != v116; ++j)
                  {
                    if (*v328 != v117)
                    {
                      objc_enumerationMutation(v115);
                    }

                    v119 = *(*(&v327 + 1) + 8 * j);
                    [v119 score];
                    v121 = v120;
                    if (v120 >= v113)
                    {
                      v122 = [v119 label];
                      if (([v111 containsIdentifier:v122] & 1) == 0)
                      {
                        [v119 box];
                        v333.origin.y = 1.0 - v123 - v333.size.height;
                        v335.origin.x = 0.0;
                        v335.origin.y = 0.0;
                        v335.size.width = 1.0;
                        v335.size.height = 1.0;
                        v334 = CGRectIntersection(v333, v335);
                        x = v334.origin.x;
                        y = v334.origin.y;
                        width = v334.size.width;
                        height = v334.size.height;
                        v110[2](v110, v122);
                        v128 = [v114 objectForKeyedSubscript:v122];
                        if (v128)
                        {
                          (v110[2])(v110, v128, x, y, width, height, v121);
                        }
                      }
                    }
                  }

                  v116 = [v115 countByEnumeratingWithState:&v327 objects:v326 count:16];
                }

                while (v116);
              }

              v129 = &__block_literal_global_133;
              [v228 sortWithOptions:16 usingComparator:&__block_literal_global_133];

              [v226 receiveObservations:v228];
              v130 = v228;

              v107 = v232;
            }

            else
            {
              v130 = 0;
            }

            v105 = v243;
          }

          else
          {
            v130 = 0;
          }
        }

        else
        {
          v130 = 0;
        }

        if (!v130)
        {

          goto LABEL_151;
        }

        [v277 addObjectsFromArray:v130];

        v272 = v272 + 1;
      }

      while (v272 != v236);
      v236 = [v222 countByEnumeratingWithState:&v284 objects:v313 count:16];
      v101 = &off_1E77B8000;
      v102 = &off_1E77B8000;
      if (v236)
      {
        continue;
      }

      break;
    }
  }

  v282 = 0u;
  v283 = 0u;
  v280 = 0u;
  v281 = 0u;
  v131 = [v257 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageFingerprintsConfigurations"];
  v132 = v131;
  v244 = [v131 countByEnumeratingWithState:&v280 objects:v312 count:16];
  if (v244)
  {
    v240 = *v281;
    v133 = &off_1E77B8000;
    while (2)
    {
      v273 = 0;
      v249 = v133[265];
      do
      {
        if (*v281 != v240)
        {
          objc_enumerationMutation(v131);
        }

        v267 = *(*(&v280 + 1) + 8 * v273);
        objc = v278;
        v134 = [objc VNRequiredBufferFromSelector:v249 error:v279];
        if (v134)
        {
          v254 = v134;
          v135 = [v276[7] hashesFromFingerprintEmbedding:v134];
          v136 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v329 = 0u;
          v330 = 0u;
          v327 = 0u;
          v328 = 0u;
          v137 = v135;
          v138 = [v137 countByEnumeratingWithState:&v327 objects:v326 count:16];
          if (v138)
          {
            v139 = *v328;
            do
            {
              for (k = 0; k != v138; ++k)
              {
                if (*v328 != v139)
                {
                  objc_enumerationMutation(v137);
                }

                v141 = *(*(&v327 + 1) + 8 * k);
                v142 = v141;
                v143 = [v141 bytes];
                v144 = [v141 length];
                v321 = 0;
                aBlock = 0;
                v322 = 0;
                std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&aBlock, v143, v143 + (v144 & 0xFFFFFFFFFFFFFFFCLL), v144 >> 2);
                v145 = aBlock;
                if (v321 != aBlock)
                {
                  if ((((v321 - aBlock) >> 2) & 0x8000000000000000) == 0)
                  {
                    operator new();
                  }

                  std::vector<float>::__throw_length_error[abi:ne200100]();
                }

                v131 = v132;
                v146 = [[VNFingerprintHash alloc] initWithBooleanBytes:0 length:0];
                [v136 addObject:v146];

                if (v145)
                {
                  operator delete(v145);
                }
              }

              v138 = [v137 countByEnumeratingWithState:&v327 objects:v326 count:16];
            }

            while (v138);
          }

          v147 = [v267 observationsRecipient];
          v148 = [v147 originatingRequestSpecifier];
          v149 = [[VNImageFingerprintsObservation alloc] initWithOriginatingRequestSpecifier:v148 fingerprintHashes:v136];
          aBlock = v149;
          v150 = [MEMORY[0x1E695DEC8] arrayWithObjects:&aBlock count:1];
          [v147 receiveObservations:v150];

          v134 = v254;
        }

        else
        {
          v150 = 0;
        }

        if (!v150)
        {

          goto LABEL_151;
        }

        [v277 addObjectsFromArray:v150];

        v273 = v273 + 1;
      }

      while (v273 != v244);
      v151 = [v131 countByEnumeratingWithState:&v280 objects:v312 count:16];
      v133 = &off_1E77B8000;
      v244 = v151;
      if (v151)
      {
        continue;
      }

      break;
    }
  }

  v152 = [v257 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_JunkConfigurations"];
  v153 = [v257 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_5kJNH3eYuyaLxNpZr5Z7ziConfigurations"];
  v154 = [v257 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_SignificantEventConfigurations"];
  v155 = [v257 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_CityNatureGatingConfigurations"];
  v156 = [(VNCoreSceneUnderstandingDetector *)v276 _processJunkConfigurations:v152 VN5kJNH3eYuyaLxNpZr5Z7ziConfigurations:v153 significantEventConfigurations:v154 cityNatureConfigurations:v155 forSceneNetOutput:v278 collectedObservations:v277 error:v279];

  if (v156)
  {
    v157 = v277;
    goto LABEL_152;
  }

LABEL_151:
  v157 = 0;
LABEL_152:

LABEL_153:
LABEL_154:

  return v157;
}

- (BOOL)_processJunkConfigurations:(void *)a3 VN5kJNH3eYuyaLxNpZr5Z7ziConfigurations:(void *)a4 significantEventConfigurations:(void *)a5 cityNatureConfigurations:(void *)a6 forSceneNetOutput:(void *)a7 collectedObservations:(void *)a8 error:
{
  v36[2] = *MEMORY[0x1E69E9840];
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v32 = a5;
  v18 = a6;
  v19 = a7;
  v20 = [v18 scenePrint];
  v30 = 0;
  if (![v15 count] || (v21 = a1[17], v36[0] = a1[16], v36[1] = v21, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v36, 2), v22 = objc_claimAutoreleasedReturnValue(), v23 = -[VNCoreSceneUnderstandingDetector _runSceneNetCustomClassifiers:onSceneprintBuffer:forConfigurations:collectedObservations:error:](v22, v20, v15, v19, a8), v22, (v23 & 1) != 0))
  {
    if (![v16 count] || (v35 = a1[18], objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v35, 1), v24 = objc_claimAutoreleasedReturnValue(), v25 = -[VNCoreSceneUnderstandingDetector _runSceneNetCustomClassifiers:onSceneprintBuffer:forConfigurations:collectedObservations:error:](v24, v20, v16, v19, a8), v24, (v25 & 1) != 0))
    {
      if (![v17 count] || (v34 = a1[19], objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v34, 1), v26 = objc_claimAutoreleasedReturnValue(), v27 = -[VNCoreSceneUnderstandingDetector _runSceneNetCustomClassifiers:onSceneprintBuffer:forConfigurations:collectedObservations:error:](v26, v20, v17, v19, a8), v26, (v27 & 1) != 0))
      {
        if (![v32 count] || (v33 = a1[20], objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v33, 1), v28 = objc_claimAutoreleasedReturnValue(), v29 = -[VNCoreSceneUnderstandingDetector _runSceneNetCustomClassifiers:onSceneprintBuffer:forConfigurations:collectedObservations:error:](v28, v20, v32, v19, a8), v28, (v29 & 1) != 0))
        {
          v30 = 1;
        }
      }
    }
  }

  return v30;
}

- (uint64_t)_runSceneNetCustomClassifiers:(void *)a1 onSceneprintBuffer:(void *)a2 forConfigurations:(void *)a3 collectedObservations:(void *)a4 error:(void *)a5
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v30 = a2;
  v31 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v48 objects:v53 count:16];
  obj = v11;
  if (v12)
  {
    v29 = *v49;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v49 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v48 + 1) + 8 * i);
        v42 = 0;
        v43 = &v42;
        v44 = 0x3032000000;
        v45 = __Block_byref_object_copy__39_26555;
        v46 = __Block_byref_object_dispose__40_26556;
        v47 = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __131__VNCoreSceneUnderstandingDetector__runSceneNetCustomClassifiers_onSceneprintBuffer_forConfigurations_collectedObservations_error___block_invoke;
        aBlock[3] = &unk_1E77B4F58;
        v41 = &v42;
        v38 = v31;
        v39 = v14;
        v40 = v10;
        v15 = _Block_copy(aBlock);
        [v14 runOnInputScenePrint:v30 completion:v15];
        v16 = v43[5];
        if (v16 && a5)
        {
          v16 = v16;
          *a5 = v16;
        }

        v17 = v16 == 0;

        _Block_object_dispose(&v42, 8);
        if (!v17)
        {
          v26 = 0;
          v18 = obj;
          goto LABEL_21;
        }
      }

      v11 = obj;
      v12 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = v31;
  v19 = [v18 countByEnumeratingWithState:&v33 objects:v52 count:16];
  if (v19)
  {
    v20 = *v34;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v33 + 1) + 8 * j);
        v23 = [v10 objectForKey:v22];
        v24 = &__block_literal_global_128;
        [v23 sortWithOptions:16 usingComparator:&__block_literal_global_128];

        v25 = [v22 observationsRecipient];
        [v25 receiveObservations:v23];
        [v9 addObjectsFromArray:v23];
      }

      v19 = [v18 countByEnumeratingWithState:&v33 objects:v52 count:16];
    }

    while (v19);
  }

  v26 = 1;
LABEL_21:

  return v26;
}

void __131__VNCoreSceneUnderstandingDetector__runSceneNetCustomClassifiers_onSceneprintBuffer_forConfigurations_collectedObservations_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v20 = a3;
  v21 = v5;
  if (v20)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  else
  {
    v24 = [v5 classificationLikelihoods];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = *(a1 + 32);
    v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v6)
    {
      v23 = *v30;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v30 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v29 + 1) + 8 * i);
          v9 = [v8 observationsRecipient];
          v10 = [v9 originatingRequestSpecifier];
          v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __131__VNCoreSceneUnderstandingDetector__runSceneNetCustomClassifiers_onSceneprintBuffer_forConfigurations_collectedObservations_error___block_invoke_2;
          aBlock[3] = &unk_1E77B4F30;
          v12 = v10;
          v27 = v12;
          v13 = v11;
          v28 = v13;
          v14 = _Block_copy(aBlock);
          v15 = *(a1 + 40);
          v16 = *(*(a1 + 56) + 8);
          v25 = *(v16 + 40);
          v17 = [v15 enumerateClassificationLikelihoods:v24 usingBlock:v14 error:&v25];
          objc_storeStrong((v16 + 40), v25);
          if ((v17 & 1) == 0)
          {

            goto LABEL_16;
          }

          v18 = [*(a1 + 48) objectForKey:v8];
          v19 = v18;
          if (v18)
          {
            [v18 addObjectsFromArray:v13];
          }

          else
          {
            v19 = v13;
            [*(a1 + 48) setObject:v19 forKey:v8];
          }
        }

        v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }
}

void __131__VNCoreSceneUnderstandingDetector__runSceneNetCustomClassifiers_onSceneprintBuffer_forConfigurations_collectedObservations_error___block_invoke_2(uint64_t a1, void *a2, float a3)
{
  v8 = a2;
  v5 = [VNClassificationObservation alloc];
  *&v6 = a3;
  v7 = [(VNClassificationObservation *)v5 initWithOriginatingRequestSpecifier:*(a1 + 32) identifier:v8 confidence:0 classificationMetrics:v6];
  [*(a1 + 40) addObject:v7];
}

void __96__VNCoreSceneUnderstandingDetector__processRecognizedObjectsConfiguration_sceneNetOutput_error___block_invoke(uint64_t a1, void *a2, double a3, double a4, double a5, double a6, float a7)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = [VNClassificationObservation alloc];
  *&v15 = a7;
  v16 = [(VNClassificationObservation *)v14 initWithOriginatingRequestSpecifier:*(a1 + 32) identifier:v13 confidence:0 classificationMetrics:v15];
  v17 = [VNRecognizedObjectObservation alloc];
  v18 = *(a1 + 32);
  v22[0] = v16;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  *&v20 = a7;
  v21 = [(VNRecognizedObjectObservation *)v17 initWithOriginatingRequestSpecifier:v18 boundingBox:v19 confidence:0 labels:0 segmentationMask:a3 groupId:a4, a5, a6, v20];

  [*(a1 + 40) addObject:v21];
}

- (id)_processSaliencyConfiguration:(uint64_t)a3 fromSaliencyMapProvidedBySelector:(void *)a4 ofSceneNetOutput:(void *)a5 regionOfInterest:(uint64_t)a6 options:(void *)a7 qosClass:(uint64_t)a8 saliencyGeneratorType:(double)a9 error:(double)a10
{
  v44[1] = *MEMORY[0x1E69E9840];
  v22 = a2;
  v23 = a4;
  v24 = a5;
  v25 = a7;
  v26 = [VNValidationUtilities requiredSessionInOptions:v24 error:a8];
  if (v26)
  {
    v27 = [v23 VNRequiredBufferFromSelector:a3 error:a8];
    if (v27)
    {
      v39 = [v22 observationsRecipient];
      v42 = [v39 originatingRequestSpecifier];
      texture = [a1[7] pixelBufferForSaliencyMap:v27 error:a8];
      if (texture)
      {
        v38 = [[VNImageBuffer alloc] initWithCVPixelBuffer:texture orientation:1 options:v24 session:v26];
        v41 = [objc_opt_class() _newSaliencyHeatmapBoundingBoxGeneratorOptionsForOptions:v24];
        v37 = [v26 detectorOfType:v25 configuredWithOptions:? error:?];
        if (v37)
        {
          v44[0] = v38;
          v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
          [v41 setObject:v28 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

          [v41 setObject:v42 forKeyedSubscript:@"VNDetectorOption_OriginatingRequestSpecifier"];
          if ([v42 observationProvidesBoundsNormalizedToROI])
          {
            v30 = 0.0;
          }

          else
          {
            v30 = a9;
          }

          v31 = [v37 processUsingQualityOfServiceClass:a6 options:v41 regionOfInterest:0 warningRecorder:a8 error:0 progressHandler:v30];
          if (v31)
          {
            v32 = [a1 validatedImageBufferFromOptions:v24 error:a8];
            v33 = v32;
            if (v32)
            {
              v34 = -[VNSaliencyImageObservation initWithOriginatingRequestSpecifier:rawSaliencyImage:originalImageSize:salientObjectBoundingBoxes:]([VNSaliencyImageObservation alloc], "initWithOriginatingRequestSpecifier:rawSaliencyImage:originalImageSize:salientObjectBoundingBoxes:", v42, texture, v31, a11 * [v32 width], a12 * objc_msgSend(v32, "height"));
              v43 = v34;
              v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
              [v39 receiveObservations:v35];
            }

            else
            {
              v35 = 0;
            }
          }

          else
          {
            v35 = 0;
          }
        }

        else
        {
          v35 = 0;
        }

        CVPixelBufferRelease(texture);
      }

      else
      {
        v35 = 0;
      }
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (id)_entityNetTaxonomyForSession:(uint64_t)a3 error:
{
  v5 = a2;
  v6 = *(a1 + 72);
  if (v6)
  {
    goto LABEL_4;
  }

  v13 = 0;
  v7 = [*(a1 + 56) configuration];
  v8 = [VNCoreSceneUnderstandingDetector _getEntityNetTaxonomy:v7 forCSUSceneNetV5Configuration:v5 session:a3 error:?];
  v9 = v13;

  if (v8)
  {
    v10 = *(a1 + 72);
    *(a1 + 72) = v9;

    v6 = *(a1 + 72);
LABEL_4:
    v11 = v6;
    goto LABEL_5;
  }

  v11 = 0;
LABEL_5:

  return v11;
}

- (id)_CSUSceneNetV5NetworkLabelLikelihoodEnumerationBlockForCollectingTopN:(uint64_t)a1 observations:(void *)a2 minimumConfidence:(void *)a3 disallowedList:(void *)a4 taxonomy:(void *)a5 originatingRequestSpecifier:(float)a6
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __189__VNCoreSceneUnderstandingDetector__CSUSceneNetV5NetworkLabelLikelihoodEnumerationBlockForCollectingTopN_observations_minimumConfidence_disallowedList_taxonomy_originatingRequestSpecifier___block_invoke;
  v22[3] = &unk_1E77B4EE0;
  v28 = a6;
  v15 = v12;
  v23 = v15;
  v16 = v13;
  v24 = v16;
  v17 = v14;
  v25 = v17;
  v18 = v11;
  v26 = v18;
  v27 = a1;
  v19 = _Block_copy(v22);
  v20 = _Block_copy(v19);

  return v20;
}

void __189__VNCoreSceneUnderstandingDetector__CSUSceneNetV5NetworkLabelLikelihoodEnumerationBlockForCollectingTopN_observations_minimumConfidence_disallowedList_taxonomy_originatingRequestSpecifier___block_invoke(uint64_t a1, void *a2, float a3)
{
  v5 = a2;
  if (*(a1 + 72) <= a3 && ([*(a1 + 32) containsIdentifier:v5] & 1) == 0)
  {
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __189__VNCoreSceneUnderstandingDetector__CSUSceneNetV5NetworkLabelLikelihoodEnumerationBlockForCollectingTopN_observations_minimumConfidence_disallowedList_taxonomy_originatingRequestSpecifier___block_invoke_2;
    v11 = &unk_1E77B4EB8;
    v12 = *(a1 + 40);
    v13 = v5;
    v14 = *(a1 + 48);
    v15 = a3;
    v6 = _Block_copy(&v8);
    *&v7 = a3;
    [*(a1 + 56) VNInsertObservationWithConfidence:*(a1 + 64) limitedToN:v6 providedByBlock:{v7, v8, v9, v10, v11}];
  }
}

VNClassificationObservation *__189__VNCoreSceneUnderstandingDetector__CSUSceneNetV5NetworkLabelLikelihoodEnumerationBlockForCollectingTopN_observations_minimumConfidence_disallowedList_taxonomy_originatingRequestSpecifier___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) classificationMetricsForLabel:*(a1 + 40)];
  v3 = [VNClassificationObservation alloc];
  LODWORD(v4) = *(a1 + 56);
  v5 = [(VNClassificationObservation *)v3 initWithOriginatingRequestSpecifier:*(a1 + 48) identifier:*(a1 + 40) confidence:v2 classificationMetrics:v4];

  return v5;
}

+ (BOOL)_getEntityNetTaxonomy:(void *)a3 forCSUSceneNetV5Configuration:(void *)a4 session:(uint64_t)a5 error:
{
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_self();
  v11 = [v8 entityNetVocabularyName];
  if (v11)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __102__VNCoreSceneUnderstandingDetector__getEntityNetTaxonomy_forCSUSceneNetV5Configuration_session_error___block_invoke;
    aBlock[3] = &unk_1E77B4E68;
    v12 = v8;
    v22 = v12;
    v23 = v11;
    v13 = _Block_copy(aBlock);
    v14 = objc_alloc(MEMORY[0x1E696AEC0]);
    v15 = NSStringFromClass(v10);
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "revision")}];
    v17 = [v14 initWithFormat:@"%@.SceneNetV5.%@.entityNetTaxonomy", v15, v16];

    v18 = [v9 resourceObjectForIdentifier:v17 creationBlock:v13 error:a5];
    v19 = v18 != 0;
    if (v18)
    {
      v18 = v18;
      *a2 = v18;
    }
  }

  else
  {
    *a2 = 0;
    v19 = 1;
  }

  return v19;
}

id __102__VNCoreSceneUnderstandingDetector__getEntityNetTaxonomy_forCSUSceneNetV5Configuration_session_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) sceneTaxonomyWithError:a2];
  if (v4)
  {
    v8[0] = *(a1 + 40);
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    v6 = [VNCoreSceneUnderstandingDetectorTaxonomy taxonomyForCSUTaxonomy:v4 vocabularyNames:v5 error:a2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_sceneNetTaxonomyForSession:(uint64_t)a3 error:
{
  v5 = a2;
  v6 = *(a1 + 64);
  if (v6 || ([*(a1 + 56) configuration], v7 = objc_claimAutoreleasedReturnValue(), +[VNCoreSceneUnderstandingDetector _sceneNetTaxonomyForCSUSceneNetV5Configuration:session:error:](VNCoreSceneUnderstandingDetector, v7, v5, a3), v8 = objc_claimAutoreleasedReturnValue(), v9 = *(a1 + 64), *(a1 + 64) = v8, v9, v7, (v6 = *(a1 + 64)) != 0))
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_sceneNetTaxonomyForCSUSceneNetV5Configuration:(void *)a3 session:(uint64_t)a4 error:
{
  v6 = a2;
  v7 = a3;
  v8 = objc_opt_self();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__VNCoreSceneUnderstandingDetector__sceneNetTaxonomyForCSUSceneNetV5Configuration_session_error___block_invoke;
  aBlock[3] = &unk_1E77B5530;
  v9 = v6;
  v18 = v9;
  v10 = _Block_copy(aBlock);
  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = NSStringFromClass(v8);
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "revision")}];
  v14 = [v11 initWithFormat:@"%@.SceneNetV5.%@.sceneTaxonomy", v12, v13];

  v15 = [v7 resourceObjectForIdentifier:v14 creationBlock:v10 error:a4];

  return v15;
}

id __97__VNCoreSceneUnderstandingDetector__sceneNetTaxonomyForCSUSceneNetV5Configuration_session_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) sceneTaxonomyWithError:a2];
  if (v4)
  {
    v5 = [*(a1 + 32) leafSceneClassificationVocabularyName];
    v10[0] = v5;
    v6 = [*(a1 + 32) hierarchicalSceneClassificationVocabularyName];
    v10[1] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v8 = [VNCoreSceneUnderstandingDetectorTaxonomy taxonomyForCSUTaxonomy:v4 vocabularyNames:v7 error:a2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17 = a4;
  v18 = a6;
  v19 = v17;
  if (self && (v39 = 0, [VNValidationUtilities getNSUIntegerValue:&v39 forKey:@"VNDetectorProcessOption_ImageCropAndScaleOption" inOptions:v19 withDefaultValue:2 error:a8]))
  {
    v20 = v39;

    v21 = [(VNDetector *)self validatedImageBufferFromOptions:v19 error:a8];
    v22 = v21;
    if (v21)
    {
      v23 = [v21 width];
      v24 = [v22 height];
      v25 = width * v23;
      v26 = v24;
      v27 = height * v24;
      if (v25 >= v27)
      {
        v28 = height * v24;
      }

      else
      {
        v28 = width * v23;
      }

      inputImageMinimumDimension = self->_inputImageMinimumDimension;
      if (v28 < inputImageMinimumDimension)
      {
        if (width >= height)
        {
          v30 = height;
        }

        else
        {
          v30 = width;
        }

        if (v30 <= 0.0)
        {
          v30 = 1.0;
        }

        VNRecordImageTooSmallWarningWithImageMinimumShortDimension(v18, (inputImageMinimumDimension / v30));
      }

      [v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNImageBufferOption_CreateFromPixelBufferPool"];
      inputImagePixelWidth = self->_inputImagePixelWidth;
      inputImagePixelHeight = self->_inputImagePixelHeight;
      inputImagePixelFormat = self->_inputImagePixelFormat;
      v38 = 0;
      v34 = [v22 cropAndScaleBufferWithWidth:inputImagePixelWidth height:inputImagePixelHeight cropRect:inputImagePixelFormat format:v20 imageCropAndScaleOption:v19 options:a8 error:x * v23 calculatedNormalizedOriginOffset:y * v26 calculatedScaleX:v25 calculatedScaleY:v27 pixelBufferRepsCacheKey:{0, 0, 0, &v38}];
      v35 = v38;
      *a7 = v34;
      v36 = v34 != 0;
      if (v34)
      {
        [(VNDetector *)self recordImageCropQuickLookInfoToOptionsSafe:v19 cacheKey:v35 imageBuffer:v22];
      }
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {

    v36 = 0;
  }

  return v36;
}

- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)a3 options:(id)a4 regionOfInterest:(CGRect)a5 warningRecorder:(id)a6 error:(id *)a7 progressHandler:(id)a8
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v15 = *&a3;
  v67 = *MEMORY[0x1E69E9840];
  v17 = a4;
  v18 = a6;
  v49 = a8;
  v19 = [(VNDetector *)self validatedImageBufferFromOptions:v17 error:a7];
  v20 = v19;
  if (!v19)
  {
    v24 = 0;
    goto LABEL_51;
  }

  v48 = +[VNRegionOfInterestTiling tilingForRegionOfInterest:inPixelWidth:height:tileAspectRatio:options:](VNRegionOfInterestTiling, "tilingForRegionOfInterest:inPixelWidth:height:tileAspectRatio:options:", [v19 width], objc_msgSend(v19, "height"), self->_inputImageTilingOptions, x, y, width, height, self->_inputImagePixelWidth / self->_inputImagePixelHeight);
  v21 = [v48 tileCount];
  if (v21 >= 2)
  {
    [v17 setObject:v48 forKeyedSubscript:@"VNCoreSceneUnderstandingDetectorInternalProcessingOption_Tiling"];
  }

  v22 = [v17 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageClassificationConfigurations"];
  if ([v22 count])
  {
    v23 = 0;
  }

  else
  {
    v25 = [v17 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_EntityNetClassificationConfigurations"];
    v23 = [v25 count] == 0;
  }

  if (v21 > 1 || v23)
  {
    v27 = [v17 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_SceneprintConfigurations"];
    if ([v27 count])
    {
LABEL_29:

      goto LABEL_30;
    }

    v28 = [v17 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageAestheticsConfigurations"];
    if ([v28 count])
    {
LABEL_28:

      goto LABEL_29;
    }

    v47 = [v17 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageSaliencyAConfigurations"];
    if ([v47 count])
    {
LABEL_27:

      goto LABEL_28;
    }

    v46 = [v17 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageSaliencyOConfigurations"];
    if ([v46 count])
    {
LABEL_26:

      goto LABEL_27;
    }

    v45 = [v17 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_RecognizeObjectsConfigurations"];
    if ([v45 count])
    {
LABEL_25:

      goto LABEL_26;
    }

    v44 = [v17 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageFingerprintsConfigurations"];
    if ([v44 count])
    {
LABEL_24:

      goto LABEL_25;
    }

    v43 = [v17 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_JunkConfigurations"];
    if ([v43 count])
    {
LABEL_23:

      goto LABEL_24;
    }

    v42 = [v17 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_5kJNH3eYuyaLxNpZr5Z7ziConfigurations"];
    if ([v42 count])
    {
LABEL_22:

      goto LABEL_23;
    }

    v41 = [v17 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_SignificantEventConfigurations"];
    if ([v41 count])
    {

      goto LABEL_22;
    }

    v40 = [v17 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_CityNatureGatingConfigurations"];
    v39 = [v40 count];

    if (!v39)
    {
      v29 = 0;
      goto LABEL_31;
    }
  }

LABEL_30:
  v65.receiver = self;
  v65.super_class = VNCoreSceneUnderstandingDetector;
  v29 = [(VNDetector *)&v65 internalProcessUsingQualityOfServiceClass:v15 options:v17 regionOfInterest:v18 warningRecorder:a7 error:v49 progressHandler:x, y, width, height];
  if (!v29)
  {
LABEL_49:
    v24 = 0;
    goto LABEL_50;
  }

LABEL_31:
  if (v21 >= 2 && !v23)
  {
    v59 = 0;
    v60 = &v59;
    v61 = 0x3032000000;
    v62 = __Block_byref_object_copy__39_26555;
    v63 = __Block_byref_object_dispose__40_26556;
    v64 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __141__VNCoreSceneUnderstandingDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke;
    aBlock[3] = &unk_1E77B5060;
    v58 = &v59;
    aBlock[4] = self;
    v55 = v48;
    v56 = v17;
    v57 = v18;
    v30 = _Block_copy(aBlock);
    v31 = [objc_opt_class() runSuccessReportingBlockSynchronously:v30 detector:self qosClass:v15 error:a7];
    if (v31)
    {
      v32 = v60[5];
      if (v29)
      {
        v33 = [v29 arrayByAddingObjectsFromArray:v32];

        v29 = v33;
      }

      else
      {
        v29 = v32;
      }
    }

    _Block_object_dispose(&v59, 8);
    if (!v31)
    {
      goto LABEL_49;
    }
  }

  if (v29)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v34 = v29;
    v35 = [v34 countByEnumeratingWithState:&v50 objects:v66 count:16];
    if (v35)
    {
      v36 = *v51;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v51 != v36)
          {
            objc_enumerationMutation(v34);
          }

          [(VNDetector *)self recordImageCropQuickLookInfoFromOptions:v17 toObservation:*(*(&v50 + 1) + 8 * i)];
        }

        v35 = [v34 countByEnumeratingWithState:&v50 objects:v66 count:16];
      }

      while (v35);
    }

    v29 = v34;
    v24 = v29;
    goto LABEL_50;
  }

  if (!a7)
  {
    v29 = 0;
    goto LABEL_49;
  }

  [VNError errorForUnimplementedFunctionWithLocalizedDescription:@"no CSU processing took place"];
  v29 = 0;
  *a7 = v24 = 0;
LABEL_50:

LABEL_51:

  return v24;
}

BOOL __141__VNCoreSceneUnderstandingDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke(uint64_t a1, void *a2)
{
  v112 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 40);
  v65 = v3;
  v66 = v4;
  v81 = v2;
  v67 = v5;
  if (v2)
  {
    VNRecordImageTilingWarning(v66, [v5 tileColumnsCount], objc_msgSend(v5, "tileRowsCount"));
    v6 = v5;
    v69 = v65;
    v7 = [v2 validatedImageBufferFromOptions:? error:?];
    if (v7)
    {
      v8 = [v69 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageClassificationConfigurations"];
      v9 = [v8 count];
      v10 = v9 != 0;

      if (v9)
      {
        v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      else
      {
        v11 = 0;
      }

      v16 = [v69 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_EntityNetClassificationConfigurations"];
      v17 = [v16 count];

      if (v17)
      {
        v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      else
      {
        v18 = 0;
      }

      *&v90 = 0;
      *(&v90 + 1) = &v90;
      *&v91 = 0x3032000000;
      *(&v91 + 1) = __Block_byref_object_copy__39_26555;
      *&v92 = __Block_byref_object_dispose__40_26556;
      *(&v92 + 1) = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __137__VNCoreSceneUnderstandingDetector__getBestLeafConfidences_bestHierarchicalConfidences_bestEntityNetConfidences_forTiling_options_error___block_invoke;
      aBlock[3] = &unk_1E77B4FC8;
      v110 = v10;
      v109 = &v90;
      aBlock[4] = v81;
      v19 = v11;
      v106 = v19;
      v20 = v9;
      v107 = v20;
      v111 = v17 != 0;
      v21 = v18;
      v108 = v21;
      v22 = _Block_copy(aBlock);
      v96 = MEMORY[0x1E69E9820];
      v97 = 3221225472;
      v98 = __137__VNCoreSceneUnderstandingDetector__getBestLeafConfidences_bestHierarchicalConfidences_bestEntityNetConfidences_forTiling_options_error___block_invoke_6;
      v99 = &unk_1E77B4FF0;
      v100 = v7;
      v101 = v81;
      v102 = v69;
      v104 = &v90;
      v23 = v22;
      v103 = v23;
      [v6 enumerateTilesUsingBlock:&v96];
      v24 = *(*(&v90 + 1) + 40);
      v15 = v24 == 0;
      if (v24)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        if (a2)
        {
          *a2 = v24;
        }
      }

      else
      {
        v25 = v19;
        v26 = v20;
        v27 = v21;
        v12 = v19;
        v13 = v20;
        v14 = v21;
      }

      _Block_object_dispose(&v90, 8);
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
    }

    v74 = v12;
    v75 = v13;
    v68 = v14;
    if (v15)
    {
      v77 = [VNValidationUtilities requiredSessionInOptions:v69 error:a2];
      if (v77)
      {
        v76 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v28 = [v69 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageClassificationConfigurations"];
        v73 = v28;
        v29 = [v28 countByEnumeratingWithState:&v90 objects:aBlock count:16];
        if (v29)
        {
          obj = *v91;
          while (2)
          {
            v30 = 0;
            v70 = v29;
            do
            {
              if (*v91 != obj)
              {
                objc_enumerationMutation(v28);
              }

              v31 = *(*(&v90 + 1) + 8 * v30);
              v32 = v74;
              v84 = v75;
              v33 = v77;
              v82 = v32;
              v34 = [(VNCoreSceneUnderstandingDetector *)v81 _sceneNetTaxonomyForSession:v33 error:a2];
              if (v34)
              {
                v78 = [v31 observationsRecipient];
                v35 = [v78 originatingRequestSpecifier];
                v36 = [v31 disallowedList];
                [v31 minimumConfidence];
                v38 = v37;
                v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
                v40 = -[VNCoreSceneUnderstandingDetector _CSUSceneNetV5NetworkLabelLikelihoodEnumerationBlockForCollectingTopN:observations:minimumConfidence:disallowedList:taxonomy:originatingRequestSpecifier:]([v31 maximumLeafClassifications], v39, v36, v34, v35, v38);
                v96 = MEMORY[0x1E69E9820];
                v97 = 3221225472;
                v98 = __143__VNCoreSceneUnderstandingDetector__processImageClassificationConfiguration_forTiledBestLeafConfidences_hierarchicalConfidences_session_error___block_invoke;
                v99 = &unk_1E77B5018;
                v41 = v40;
                v100 = v41;
                [v32 enumerateKeysAndObjectsUsingBlock:&v96];
                v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
                v43 = -[VNCoreSceneUnderstandingDetector _CSUSceneNetV5NetworkLabelLikelihoodEnumerationBlockForCollectingTopN:observations:minimumConfidence:disallowedList:taxonomy:originatingRequestSpecifier:]([v31 maximumHierarchicalClassifications], v42, v36, v34, v35, v38);

                *&v86 = MEMORY[0x1E69E9820];
                *(&v86 + 1) = 3221225472;
                *&v87 = __143__VNCoreSceneUnderstandingDetector__processImageClassificationConfiguration_forTiledBestLeafConfidences_hierarchicalConfidences_session_error___block_invoke_2;
                *(&v87 + 1) = &unk_1E77B5018;
                v44 = v43;
                *&v88 = v44;
                [v84 enumerateKeysAndObjectsUsingBlock:&v86];
                [v39 addObjectsFromArray:v42];
                v45 = &__block_literal_global_128;
                [v39 sortWithOptions:16 usingComparator:&__block_literal_global_128];

                [v78 receiveObservations:v39];
              }

              else
              {
                v39 = 0;
              }

              if (!v39)
              {

LABEL_44:
                v60 = 0;
                goto LABEL_45;
              }

              [v76 addObjectsFromArray:v39];

              ++v30;
              v28 = v73;
            }

            while (v70 != v30);
            v29 = [v73 countByEnumeratingWithState:&v90 objects:aBlock count:16];
            if (v29)
            {
              continue;
            }

            break;
          }
        }

        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        obja = [v69 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_EntityNetClassificationConfigurations"];
        v46 = [obja countByEnumeratingWithState:&v86 objects:&v96 count:16];
        if (v46)
        {
          v83 = *v87;
          while (2)
          {
            v79 = v46;
            for (i = 0; i != v79; ++i)
            {
              if (*v87 != v83)
              {
                objc_enumerationMutation(obja);
              }

              v48 = *(*(&v86 + 1) + 8 * i);
              v85 = v68;
              v49 = v77;
              v50 = [(VNCoreSceneUnderstandingDetector *)v81 _entityNetTaxonomyForSession:v49 error:a2];
              if (v50)
              {
                v51 = [v48 observationsRecipient];
                v52 = [v51 originatingRequestSpecifier];
                v53 = [v48 disallowedList];
                [v48 minimumConfidence];
                v55 = v54;
                v56 = objc_alloc_init(MEMORY[0x1E695DF70]);
                v57 = -[VNCoreSceneUnderstandingDetector _CSUSceneNetV5NetworkLabelLikelihoodEnumerationBlockForCollectingTopN:observations:minimumConfidence:disallowedList:taxonomy:originatingRequestSpecifier:]([v48 maximumClassifications], v56, v53, v50, v52, v55);
                v94[0] = MEMORY[0x1E69E9820];
                v94[1] = 3221225472;
                v94[2] = __128__VNCoreSceneUnderstandingDetector__processEntityNetClassificationConfiguration_forTiledBestEntityNetConfidences_session_error___block_invoke;
                v94[3] = &unk_1E77B5018;
                v58 = v57;
                v95 = v58;
                [v85 enumerateKeysAndObjectsUsingBlock:v94];
                v59 = &__block_literal_global_128;
                [v56 sortWithOptions:16 usingComparator:&__block_literal_global_128];

                [v51 receiveObservations:v56];
              }

              else
              {
                v56 = 0;
              }

              if (!v56)
              {

                goto LABEL_44;
              }

              [v76 addObjectsFromArray:v56];
            }

            v46 = [obja countByEnumeratingWithState:&v86 objects:&v96 count:16];
            if (v46)
            {
              continue;
            }

            break;
          }
        }

        v60 = v76;
LABEL_45:
      }

      else
      {
        v60 = 0;
      }
    }

    else
    {
      v60 = 0;
    }
  }

  else
  {
    v60 = 0;
  }

  v61 = *(*(a1 + 64) + 8);
  v62 = *(v61 + 40);
  *(v61 + 40) = v60;

  return *(*(*(a1 + 64) + 8) + 40) != 0;
}

void __128__VNCoreSceneUnderstandingDetector__processEntityNetClassificationConfiguration_forTiledBestEntityNetConfidences_session_error___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v9 = a2;
  v7 = a3;
  v8 = *(a1 + 32);
  [v7 floatValue];
  (*(v8 + 16))(v8, v9, a4);
}

void __143__VNCoreSceneUnderstandingDetector__processImageClassificationConfiguration_forTiledBestLeafConfidences_hierarchicalConfidences_session_error___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v9 = a2;
  v7 = a3;
  v8 = *(a1 + 32);
  [v7 floatValue];
  (*(v8 + 16))(v8, v9, a4);
}

void __143__VNCoreSceneUnderstandingDetector__processImageClassificationConfiguration_forTiledBestLeafConfidences_hierarchicalConfidences_session_error___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v9 = a2;
  v7 = a3;
  v8 = *(a1 + 32);
  [v7 floatValue];
  (*(v8 + 16))(v8, v9, a4);
}

void __137__VNCoreSceneUnderstandingDetector__getBestLeafConfidences_bestHierarchicalConfidences_bestEntityNetConfidences_forTiling_options_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
    goto LABEL_11;
  }

  if (*(a1 + 72) == 1)
  {
    v7 = *(*(a1 + 64) + 8);
    v29[0] = *(v7 + 40);
    v8 = [v5 VNRequiredBufferFromSelector:sel_sceneClassificationLikelihoods error:v29];
    objc_storeStrong((v7 + 40), v29[0]);
    if (!v8)
    {
      goto LABEL_10;
    }

    v9 = *(*(a1 + 32) + 56);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __137__VNCoreSceneUnderstandingDetector__getBestLeafConfidences_bestHierarchicalConfidences_bestEntityNetConfidences_forTiling_options_error___block_invoke_3;
    v26[3] = &unk_1E77B4FA0;
    v28 = &__block_literal_global_421;
    v27 = *(a1 + 40);
    v10 = *(*(a1 + 64) + 8);
    obj = *(v10 + 40);
    LOBYTE(v9) = [v9 enumerateLeafSceneClassificationLikelihoods:v8 usingBlock:v26 error:&obj];
    objc_storeStrong((v10 + 40), obj);

    if ((v9 & 1) == 0)
    {
      goto LABEL_10;
    }

    v11 = *(*(a1 + 32) + 56);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __137__VNCoreSceneUnderstandingDetector__getBestLeafConfidences_bestHierarchicalConfidences_bestEntityNetConfidences_forTiling_options_error___block_invoke_4;
    v22[3] = &unk_1E77B4FA0;
    v24 = &__block_literal_global_421;
    v23 = *(a1 + 48);
    v12 = *(*(a1 + 64) + 8);
    v21 = *(v12 + 40);
    LOBYTE(v11) = [v11 enumerateHierarchicalSceneClassificationLikelihoods:v8 usingBlock:v22 error:&v21];
    objc_storeStrong((v12 + 40), v21);

    if ((v11 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (*(a1 + 73) == 1)
  {
    v13 = *(*(a1 + 64) + 8);
    v20 = *(v13 + 40);
    v8 = [v5 VNRequiredBufferFromSelector:sel_entityNetClassificationLikelihoods error:&v20];
    objc_storeStrong((v13 + 40), v20);
    if (v8)
    {
      v14 = *(*(a1 + 32) + 56);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __137__VNCoreSceneUnderstandingDetector__getBestLeafConfidences_bestHierarchicalConfidences_bestEntityNetConfidences_forTiling_options_error___block_invoke_5;
      v17[3] = &unk_1E77B4FA0;
      v19 = &__block_literal_global_421;
      v18 = *(a1 + 56);
      v15 = *(*(a1 + 64) + 8);
      v16 = *(v15 + 40);
      [v14 enumerateEntityNetClassificationLikelihoods:v8 usingBlock:v17 error:&v16];
      objc_storeStrong((v15 + 40), v16);

LABEL_10:
    }
  }

LABEL_11:
}

void __137__VNCoreSceneUnderstandingDetector__getBestLeafConfidences_bestHierarchicalConfidences_bestEntityNetConfidences_forTiling_options_error___block_invoke_6(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v8 = a1[4];
  v7 = a1[5];
  v9 = *(v7 + 96);
  v10 = *(v7 + 104);
  v11 = *(v7 + 88);
  [v6 pixelCropRect];
  v12 = a1[6];
  v13 = *(a1[8] + 8);
  obj = *(v13 + 40);
  v14 = [v8 croppedBufferWithWidth:v9 height:v10 format:v11 cropRect:v12 options:&obj error:0 pixelBufferRepsCacheKey:?];
  objc_storeStrong((v13 + 40), obj);
  if (!v14 || ([*(a1[5] + 56) runOnInputImage:v14 completion:a1[7]], CVPixelBufferRelease(v14), *(*(a1[8] + 8) + 40)))
  {
    *a4 = 1;
  }
}

void __137__VNCoreSceneUnderstandingDetector__getBestLeafConfidences_bestHierarchicalConfidences_bestEntityNetConfidences_forTiling_options_error___block_invoke_2(float a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a3;
  v6 = a4;
  v7 = [v6 objectForKeyedSubscript:v11];
  v9 = v7;
  if (!v7 || ([v7 floatValue], *&v8 < a1))
  {
    *&v8 = a1;
    v10 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
    [v6 setObject:v10 forKeyedSubscript:v11];
  }
}

- (BOOL)warmUpSession:(id)a3 withOptions:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v30.receiver = self;
  v30.super_class = VNCoreSceneUnderstandingDetector;
  if (-[VNDetector warmUpSession:withOptions:error:](&v30, sel_warmUpSession_withOptions_error_, v8, v9, a5) && -[CSUSceneNetV5 loadResources:](self->_sceneNet, "loadResources:", a5) && (([v9 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_JunkConfigurations"], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, !v11) || (-[CSUSceneNetV5CustomClassifier loadResourcesAndReturnError:](self->_junkLeafClassifier, "loadResourcesAndReturnError:", a5) & 1) != 0 && -[CSUSceneNetV5CustomClassifier loadResourcesAndReturnError:](self->_junkHierarchicalClassifier, "loadResourcesAndReturnError:", a5)) && ((objc_msgSend(v9, "objectForKeyedSubscript:", @"VNCoreSceneUnderstandingDetectorProcessingOption_5kJNH3eYuyaLxNpZr5Z7ziConfigurations"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, !v13) || (-[CSUSceneNetV5CustomClassifier loadResourcesAndReturnError:](self->_VN5kJNH3eYuyaLxNpZr5Z7ziCLassifier, "loadResourcesAndReturnError:", a5) & 1) != 0) && ((objc_msgSend(v9, "objectForKeyedSubscript:", @"VNCoreSceneUnderstandingDetectorProcessingOption_SignificantEventConfigurations"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, !v15) || (-[CSUSceneNetV5CustomClassifier loadResourcesAndReturnError:](self->_significantEventClassifier, "loadResourcesAndReturnError:", a5) & 1) != 0) && ((objc_msgSend(v9, "objectForKeyedSubscript:", @"VNCoreSceneUnderstandingDetectorProcessingOption_CityNatureGatingConfigurations"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "count"), v16, !v17) || (-[CSUSceneNetV5CustomClassifier loadResourcesAndReturnError:](self->_cityNatureClassifier, "loadResourcesAndReturnError:", a5) & 1) != 0))
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__VNCoreSceneUnderstandingDetector_warmUpSession_withOptions_error___block_invoke;
    aBlock[3] = &unk_1E77B51A8;
    aBlock[4] = self;
    v18 = v9;
    v28 = v18;
    v19 = v8;
    v29 = v19;
    v20 = _Block_copy(aBlock);
    v21 = [v18 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageSaliencyAConfigurations"];
    v22 = [v21 count];

    if (v22 && (v20[2](v20, @"VNAttentionBasedSaliencyHeatmapBoundingBoxGeneratorType", a5) & 1) == 0 || ([v18 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageSaliencyOConfigurations"], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "count"), v23, v24) && (v20[2](v20, @"VNObjectnessBasedSaliencyHeatmapBoundingBoxGeneratorType", a5) & 1) == 0)
    {
      v25 = 0;
    }

    else
    {
      v25 = [(VNCoreSceneUnderstandingDetector *)self _warmUpTaxonomiesForOptions:v18 inSession:v19 error:a5];
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

uint64_t __68__VNCoreSceneUnderstandingDetector_warmUpSession_withOptions_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [objc_opt_class() _newSaliencyHeatmapBoundingBoxGeneratorOptionsForOptions:*(a1 + 40)];
  v7 = [*(a1 + 48) detectorOfType:v5 configuredWithOptions:v6 error:a3];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 warmUpSession:*(a1 + 48) withOptions:*(a1 + 40) error:a3];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (uint64_t)_warmUpTaxonomiesForOptions:(void *)a3 inSession:(uint64_t)a4 error:
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v9 = [v7 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageClassificationConfigurations"];
    v10 = [v9 count];

    if (v10 && (-[VNCoreSceneUnderstandingDetector _sceneNetTaxonomyForSession:error:](a1, v8, a4), v11 = objc_claimAutoreleasedReturnValue(), v11, !v11) || ([v7 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_EntityNetClassificationConfigurations"], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, v13) && (-[VNCoreSceneUnderstandingDetector _entityNetTaxonomyForSession:error:](a1, v8, a4), v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
    {
      a1 = 0;
    }

    else
    {
      v15 = [v7 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_RecognizeObjectsConfigurations"];
      v16 = [v15 count];

      if (!v16 || ((v17 = v8, (v18 = *(a1 + 80)) == 0) && ([*(a1 + 56) configuration], v19 = objc_claimAutoreleasedReturnValue(), +[VNCoreSceneUnderstandingDetector _detectedObjectTaxonomyForCSUSceneNetV5Configuration:session:error:](VNCoreSceneUnderstandingDetector, v19, v17, a4), v20 = objc_claimAutoreleasedReturnValue(), v21 = *(a1 + 80), *(a1 + 80) = v20, v21, v19, (v18 = *(a1 + 80)) == 0) ? (a1 = 0) : (a1 = v18), v17, a1, a1))
      {
        a1 = 1;
      }
    }
  }

  return a1;
}

+ (id)_detectedObjectTaxonomyForCSUSceneNetV5Configuration:(void *)a3 session:(uint64_t)a4 error:
{
  v6 = a2;
  v7 = a3;
  v8 = objc_opt_self();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__VNCoreSceneUnderstandingDetector__detectedObjectTaxonomyForCSUSceneNetV5Configuration_session_error___block_invoke;
  aBlock[3] = &unk_1E77B5530;
  v9 = v6;
  v18 = v9;
  v10 = _Block_copy(aBlock);
  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = NSStringFromClass(v8);
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "revision")}];
  v14 = [v11 initWithFormat:@"%@.SceneNetV5.%@.detectedObjectTaxonomy", v12, v13];

  v15 = [v7 resourceObjectForIdentifier:v14 creationBlock:v10 error:a4];

  return v15;
}

id __103__VNCoreSceneUnderstandingDetector__detectedObjectTaxonomyForCSUSceneNetV5Configuration_session_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) sceneTaxonomyWithError:a2];
  if (v4)
  {
    v5 = [*(a1 + 32) detectionVocabularyName];
    v9[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v7 = [VNCoreSceneUnderstandingDetectorTaxonomy taxonomyForCSUTaxonomy:v4 vocabularyNames:v6 error:a2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4
{
  v6 = a3;
  v40.receiver = self;
  v40.super_class = VNCoreSceneUnderstandingDetector;
  if ([(VNDetector *)&v40 completeInitializationForSession:v6 error:a4])
  {
    [(VNDetector *)self configurationOptions];
    v38 = 0;
    v39 = 0;
    v36 = 0;
    v37 = 0;
    v34 = 0;
    v33 = v35 = 0;
    v7 = [VNCoreSceneUnderstandingDetector _getCSUSceneNetV5Configuration:&v38 junkLeafConfiguration:&v37 junkHierarchicalConfiguration:&v36 VN5kJNH3eYuyaLxNpZr5Z7ziConfiguration:&v35 significantEventConfiguration:&v34 cityNatureConfiguration:v33 forConfigurationOptions:a4 error:?];
    v8 = v39;
    v9 = v38;
    v10 = v37;
    v11 = v36;
    v12 = v35;
    v13 = v34;
    if (v7)
    {
      v14 = [objc_alloc(MEMORY[0x1E6999128]) initWithConfiguration:v8];
      sceneNet = self->_sceneNet;
      self->_sceneNet = v14;

      v16 = [v8 inputPixelBufferDescriptor];
      self->_inputImagePixelFormat = [v16 pixelFormat];
      self->_inputImagePixelWidth = [v16 width];
      v17 = [v16 height];
      self->_inputImagePixelHeight = v17;
      inputImagePixelWidth = self->_inputImagePixelWidth;
      if (inputImagePixelWidth >= v17)
      {
        inputImagePixelWidth = v17;
      }

      self->_inputImageMinimumDimension = inputImagePixelWidth;
      v19 = objc_alloc_init(VNRegionOfInterestTilingOptions);
      inputImageTilingOptions = self->_inputImageTilingOptions;
      self->_inputImageTilingOptions = v19;

      v21 = [objc_alloc(MEMORY[0x1E6999138]) initWithConfiguration:v9];
      junkLeafClassifier = self->_junkLeafClassifier;
      self->_junkLeafClassifier = v21;

      v23 = [objc_alloc(MEMORY[0x1E6999138]) initWithConfiguration:v10];
      junkHierarchicalClassifier = self->_junkHierarchicalClassifier;
      self->_junkHierarchicalClassifier = v23;

      v25 = [objc_alloc(MEMORY[0x1E6999138]) initWithConfiguration:v11];
      VN5kJNH3eYuyaLxNpZr5Z7ziCLassifier = self->_VN5kJNH3eYuyaLxNpZr5Z7ziCLassifier;
      self->_VN5kJNH3eYuyaLxNpZr5Z7ziCLassifier = v25;

      v27 = [objc_alloc(MEMORY[0x1E6999138]) initWithConfiguration:v12];
      significantEventClassifier = self->_significantEventClassifier;
      self->_significantEventClassifier = v27;

      v29 = [objc_alloc(MEMORY[0x1E6999138]) initWithConfiguration:v13];
      cityNatureClassifier = self->_cityNatureClassifier;
      self->_cityNatureClassifier = v29;

      v31 = [(VNCoreSceneUnderstandingDetector *)self _warmUpTaxonomiesForOptions:v33 inSession:v6 error:a4];
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

+ (uint64_t)_getCSUSceneNetV5Configuration:(void *)a3 junkLeafConfiguration:(void *)a4 junkHierarchicalConfiguration:(void *)a5 VN5kJNH3eYuyaLxNpZr5Z7ziConfiguration:(void *)a6 significantEventConfiguration:(void *)a7 cityNatureConfiguration:(void *)a8 forConfigurationOptions:(void *)a9 error:
{
  v14 = a8;
  v15 = objc_opt_self();
  v16 = [v15 computeDeviceForComputeStage:@"VNComputeStageMain" configurationOptions:v14 error:a9];
  if (v16)
  {
    v39 = 0;
    if ([(VNCoreSceneUnderstandingDetector *)v15 _getSceneNetV5ConfigurationRevision:v14 forConfigurationOptions:a9 error:?])
    {
      v17 = v39;
      v18 = [MEMORY[0x1E6999130] sceneNetV5ConfigurationForRevision:v39 error:a9];
      v19 = v18;
      if (!v18)
      {
        v32 = 0;
        goto LABEL_28;
      }

      [v18 setComputeDevice:v16];
      if ((v17 | 2) == 3)
      {
        [v19 setValue:&unk_1F19C25E8 forKey:@"detectionNMSThreshold"];
      }

      if (a2)
      {
        v20 = v19;
        *a2 = v19;
      }

      v21 = +[VNComputeDeviceUtilities mostPerformantCPUComputeDevice];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __241__VNCoreSceneUnderstandingDetector__getCSUSceneNetV5Configuration_junkLeafConfiguration_junkHierarchicalConfiguration_VN5kJNH3eYuyaLxNpZr5Z7ziConfiguration_significantEventConfiguration_cityNatureConfiguration_forConfigurationOptions_error___block_invoke;
      aBlock[3] = &unk_1E77B4E40;
      v34 = v21;
      v38 = v34;
      v35 = _Block_copy(aBlock);
      if (a3)
      {
        v22 = [v19 newJunkLeafConfigurationAndReturnError:a9];
        if (!v22)
        {
          goto LABEL_25;
        }

        v35[2](v35, v22);
        v23 = v22;
        *a3 = v22;
      }

      if (a4)
      {
        v24 = [v19 newJunkHierarchicalConfigurationAndReturnError:a9];
        if (!v24)
        {
          goto LABEL_25;
        }

        v35[2](v35, v24);
        v25 = v24;
        *a4 = v24;
      }

      if (a5)
      {
        v26 = [v19 newClassifierBetaConfigurationAndReturnError:a9];
        if (!v26)
        {
          goto LABEL_25;
        }

        v35[2](v35, v26);
        v27 = v26;
        *a5 = v26;
      }

      if (a6)
      {
        v28 = [v19 newClassifierAlphaConfigurationAndReturnError:a9];
        if (!v28)
        {
          goto LABEL_25;
        }

        v35[2](v35, v28);
        v29 = v28;
        *a6 = v28;
      }

      if (!a7)
      {
LABEL_23:
        v32 = 1;
LABEL_26:

LABEL_28:
        goto LABEL_29;
      }

      v30 = [v19 newCityNatureConfigurationAndReturnError:a9];
      if (v30)
      {
        v35[2](v35, v30);
        v31 = v30;
        *a7 = v30;

        goto LABEL_23;
      }

LABEL_25:
      v32 = 0;
      goto LABEL_26;
    }
  }

  v32 = 0;
LABEL_29:

  return v32;
}

+ (BOOL)_getSceneNetV5ConfigurationRevision:(void *)a3 forConfigurationOptions:(void *)a4 error:
{
  v6 = a3;
  v7 = objc_opt_self();
  v8 = objc_alloc_init(MEMORY[0x1E696AD50]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __102__VNCoreSceneUnderstandingDetector__getSceneNetV5ConfigurationRevision_forConfigurationOptions_error___block_invoke;
  aBlock[3] = &unk_1E77B4E18;
  v9 = v6;
  v17 = v9;
  v19 = v7;
  v10 = v8;
  v18 = v10;
  v11 = _Block_copy(aBlock);
  v11[2](v11, @"VNCoreSceneUnderstandingDetectorProcessingOption_SceneprintConfigurations");
  v11[2](v11, @"VNCoreSceneUnderstandingDetectorProcessingOption_ImageClassificationConfigurations");
  v11[2](v11, @"VNCoreSceneUnderstandingDetectorProcessingOption_EntityNetClassificationConfigurations");
  v11[2](v11, @"VNCoreSceneUnderstandingDetectorProcessingOption_ImageAestheticsConfigurations");
  v11[2](v11, @"VNCoreSceneUnderstandingDetectorProcessingOption_ImageSaliencyAConfigurations");
  v11[2](v11, @"VNCoreSceneUnderstandingDetectorProcessingOption_ImageSaliencyOConfigurations");
  v11[2](v11, @"VNCoreSceneUnderstandingDetectorProcessingOption_RecognizeObjectsConfigurations");
  v11[2](v11, @"VNCoreSceneUnderstandingDetectorProcessingOption_ImageFingerprintsConfigurations");
  v11[2](v11, @"VNCoreSceneUnderstandingDetectorProcessingOption_JunkConfigurations");
  v11[2](v11, @"VNCoreSceneUnderstandingDetectorProcessingOption_5kJNH3eYuyaLxNpZr5Z7ziConfigurations");
  v11[2](v11, @"VNCoreSceneUnderstandingDetectorProcessingOption_SignificantEventConfigurations");
  v11[2](v11, @"VNCoreSceneUnderstandingDetectorProcessingOption_CityNatureGatingConfigurations");
  v12 = [v10 count];
  if (v12)
  {
    if (v12 == 1)
    {
      *a2 = [v10 firstIndex];
      v13 = 1;
    }

    else if (a4)
    {
      [VNError errorForInvalidOperationWithLocalizedDescription:@"The configuration options require multiple model revisions"];
      *a4 = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v14 = [VNValidationUtilities originatingRequestSpecifierInOptions:v9 error:a4];
    v13 = v14 != 0;
    if (v14)
    {
      *a2 = [(VNCoreSceneUnderstandingDetector *)v7 _sceneNetV5ConfigurationRevisionForRequestSpecifier:v14];
    }
  }

  return v13;
}

void __102__VNCoreSceneUnderstandingDetector__getSceneNetV5ConfigurationRevision_forConfigurationOptions_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) objectForKeyedSubscript:a2];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v3 = v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = objc_opt_self();
        v9 = [v7 observationsRecipient];
        v10 = [v9 originatingRequestSpecifier];

        if (v10)
        {
          v11 = [(VNCoreSceneUnderstandingDetector *)v8 _sceneNetV5ConfigurationRevisionForRequestSpecifier:v10];
        }

        else
        {
          v11 = 0;
        }

        [*(a1 + 40) addIndex:v11];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

+ (uint64_t)_sceneNetV5ConfigurationRevisionForRequestSpecifier:(uint64_t)a1
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = [v2 requestClassAndReturnError:0];
  if (v4)
  {
    v5 = +[VNCoreSceneUnderstandingDetector _sceneNetV5ConfigurationRevisionForRequestClass:revision:](v3, v4, [v2 requestRevision]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (uint64_t)_sceneNetV5ConfigurationRevisionForRequestClass:(unint64_t)a3 revision:
{
  objc_opt_self();
  v5 = VisionCoreCurrentANEGeneration();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__VNCoreSceneUnderstandingDetector__sceneNetV5ConfigurationRevisionForRequestClass_revision___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v5;
  if (+[VNCoreSceneUnderstandingDetector _sceneNetV5ConfigurationRevisionForRequestClass:revision:]::onceToken != -1)
  {
    dispatch_once(&+[VNCoreSceneUnderstandingDetector _sceneNetV5ConfigurationRevisionForRequestClass:revision:]::onceToken, block);
  }

  v6 = +[VNCoreSceneUnderstandingDetector _sceneNetV5ConfigurationRevisionForRequestClass:revision:]::ourModelMap;
  v7 = VNRequestClassFromClientSubclass(a2);
  v10 = *(v6 + 8);
  v9 = (v6 + 8);
  v8 = v10;
  if (!v10)
  {
    goto LABEL_20;
  }

  v11 = v9;
  do
  {
    v12 = v8[4];
    if (v7 == v12)
    {
      v13 = v8[5] < a3;
    }

    else
    {
      v13 = v12 < v7;
    }

    v14 = !v13;
    v15 = v13;
    if (v14)
    {
      v11 = v8;
    }

    v8 = v8[v15];
  }

  while (v8);
  if (v11 == v9 || ((v16 = v11[4], v16 != v7) ? (v17 = v7 < v16) : (v17 = v11[5] > a3), v17))
  {
LABEL_20:
    v11 = v9;
  }

  if ((+[VNCoreSceneUnderstandingDetector _sceneNetV5ConfigurationRevisionForRequestClass:revision:]::ourModelMap + 8) == v11)
  {
    return 0;
  }

  else
  {
    return v11[6];
  }
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = VNCoreSceneUnderstandingDetector;
  v3 = [(VNDetector *)&v9 description];
  v4 = [(CSUSceneNetV5 *)self->_sceneNet configuration];
  v5 = [v4 revision];
  if ((v5 - 1) >= 3)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CSUSceneNetV5ConfigurationRevision(%ld)", v5];
  }

  else
  {
    v6 = off_1E77B50A8[v5 - 1];
  }

  v7 = [v3 stringByAppendingFormat:@" %@", v6];

  return v7;
}

- (int64_t)sceneNetConfigurationRevision
{
  v2 = [(CSUSceneNetV5 *)self->_sceneNet configuration];
  v3 = [v2 revision];

  return v3;
}

+ (id)supportedImageSizeSetForOptions:(id)a3 error:(id *)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = 0;
  v4 = [VNCoreSceneUnderstandingDetector _getCSUSceneNetV5Configuration:0 junkLeafConfiguration:0 junkHierarchicalConfiguration:0 VN5kJNH3eYuyaLxNpZr5Z7ziConfiguration:0 significantEventConfiguration:0 cityNatureConfiguration:a3 forConfigurationOptions:a4 error:?];
  v5 = v11;
  v6 = v5;
  if (v4)
  {
    v7 = [v5 inputPixelBufferDescriptor];
    v8 = -[VNSupportedImageSize initWithIdealFormat:width:height:orientation:aspectRatioHandling:orientationAgnostic:]([VNSupportedImageSize alloc], "initWithIdealFormat:width:height:orientation:aspectRatioHandling:orientationAgnostic:", [v7 pixelFormat], objc_msgSend(v7, "width"), objc_msgSend(v7, "height"), 1, 0, 0);
    v12[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)recordDefaultConfigurationOptionsInDictionary:(id)a3
{
  v4 = a3;
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___VNCoreSceneUnderstandingDetector;
  objc_msgSendSuper2(&v5, sel_recordDefaultConfigurationOptionsInDictionary_, v4);
  [v4 setObject:&unk_1F19C1960 forKeyedSubscript:@"VNDetectorProcessOption_ImageCropAndScaleOption"];
}

+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v27 = 0;
  if (![(VNCoreSceneUnderstandingDetector *)a1 _getSceneNetV5ConfigurationRevision:v6 forConfigurationOptions:a4 error:?])
  {
    v18 = 0;
    goto LABEL_24;
  }

  if (+[VNCoreSceneUnderstandingDetector supportedComputeStageDevicesForOptions:error:]::onceToken != -1)
  {
    dispatch_once(&+[VNCoreSceneUnderstandingDetector supportedComputeStageDevicesForOptions:error:]::onceToken, &__block_literal_global_445);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__VNCoreSceneUnderstandingDetector_supportedComputeStageDevicesForOptions_error___block_invoke_2;
  aBlock[3] = &__block_descriptor_40_e9__16__0__8l;
  v7 = v27;
  aBlock[4] = v27;
  v8 = _Block_copy(aBlock);
  v9 = +[VNCoreSceneUnderstandingDetector supportedComputeStageDevicesForOptions:error:]::sceneNetConfigurationCache;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
  v11 = [v9 objectForIdentifier:v10 creationBlock:v8 error:a4];

  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13 = [v11 supportedComputeDevices];
    [v12 setObject:v13 forKeyedSubscript:@"VNComputeStageMain"];

    v14 = [VNValidationUtilities originatingRequestSpecifierInOptions:v6 error:a4];
    v15 = v14;
    if (!v14)
    {
      v18 = 0;
LABEL_22:

      goto LABEL_23;
    }

    v16 = v14;
    objc_opt_self();
    if ([v16 specifiesRequestClass:objc_opt_class()])
    {
      v17 = VNAttentionBasedSaliencyHeatmapBoundingBoxGeneratorType;
    }

    else
    {
      if (![v16 specifiesRequestClass:objc_opt_class()])
      {
        v19 = 0;
        goto LABEL_19;
      }

      v17 = VNObjectnessBasedSaliencyHeatmapBoundingBoxGeneratorType;
    }

    v19 = *v17;

    if (!v19)
    {
LABEL_20:
      v18 = v12;
      goto LABEL_21;
    }

    v20 = [a1 _newSaliencyHeatmapBoundingBoxGeneratorOptionsForOptions:v6];
    v21 = [VNDetector detectorClassForDetectorType:v19 configuredWithOptions:v20 error:a4];
    if (!v21 || ([(objc_class *)v21 supportedComputeStageDevicesForOptions:v6 error:a4], v22 = objc_claimAutoreleasedReturnValue(), (v23 = v22) == 0))
    {

      v18 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v24 = [v22 objectForKeyedSubscript:@"VNComputeStageMain"];
    [v12 setObject:v24 forKeyedSubscript:@"VNComputeStagePostProcessing"];

    v16 = v20;
LABEL_19:

    goto LABEL_20;
  }

  v18 = 0;
LABEL_23:

LABEL_24:

  return v18;
}

uint64_t __81__VNCoreSceneUnderstandingDetector_supportedComputeStageDevicesForOptions_error___block_invoke()
{
  +[VNCoreSceneUnderstandingDetector supportedComputeStageDevicesForOptions:error:]::sceneNetConfigurationCache = objc_alloc_init(MEMORY[0x1E69DF950]);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)computeStagesToBindForConfigurationOptions:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"VNComputeStageMain";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)keyForDetectorWithConfigurationOptions:(id)a3
{
  v4 = a3;
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___VNCoreSceneUnderstandingDetector;
  v5 = objc_msgSendSuper2(&v10, sel_keyForDetectorWithConfigurationOptions_, v4);
  v9 = 0;
  if ([(VNCoreSceneUnderstandingDetector *)a1 _getSceneNetV5ConfigurationRevision:v4 forConfigurationOptions:0 error:?])
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = [v6 initWithFormat:@"%@:%lu", v5, v9];

    v5 = v7;
  }

  return v5;
}

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__VNCoreSceneUnderstandingDetector_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[VNCoreSceneUnderstandingDetector configurationOptionKeysForDetectorKey]::onceToken != -1)
  {
    dispatch_once(&+[VNCoreSceneUnderstandingDetector configurationOptionKeysForDetectorKey]::onceToken, block);
  }

  v2 = +[VNCoreSceneUnderstandingDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;

  return v2;
}

void __73__VNCoreSceneUnderstandingDetector_configurationOptionKeysForDetectorKey__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___VNCoreSceneUnderstandingDetector;
  v1 = objc_msgSendSuper2(&v5, sel_configurationOptionKeysForDetectorKey);
  v2 = [v1 mutableCopy];

  [v2 removeObject:@"VNDetectorInitOption_ModelBackingStore"];
  [v2 removeObject:@"VNDetectorOption_OriginatingRequestSpecifier"];
  [v2 removeObject:@"VNDetectorOption_EspressoPlanPriority"];
  v3 = [v2 copy];
  v4 = +[VNCoreSceneUnderstandingDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;
  +[VNCoreSceneUnderstandingDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys = v3;
}

+ (id)allCityNatureIdentifiersWithConfigurationOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11 = 0;
  v7 = [(VNCoreSceneUnderstandingDetector *)a1 _getCSUSceneNetV5Configuration:0 junkLeafConfiguration:0 junkHierarchicalConfiguration:0 VN5kJNH3eYuyaLxNpZr5Z7ziConfiguration:0 significantEventConfiguration:&v11 cityNatureConfiguration:v6 forConfigurationOptions:a4 error:?];
  v8 = v11;
  if (v7)
  {
    v9 = [(VNCoreSceneUnderstandingDetector *)a1 _identifiersSupportedByCustomClassifierConfiguration:v8 error:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_identifiersSupportedByCustomClassifierConfiguration:(uint64_t)a3 error:
{
  v4 = a2;
  objc_opt_self();
  v5 = [v4 taxonomyWithError:a3];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = [v4 vocabularyName];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __95__VNCoreSceneUnderstandingDetector__identifiersSupportedByCustomClassifierConfiguration_error___block_invoke;
    v10[3] = &unk_1E77B4E90;
    v8 = v6;
    v11 = v8;
    [v5 enumerateLabelsInVocabularyNamed:v7 usingBlock:v10];

    [v8 sortUsingSelector:sel_compare_];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)allSignificantEventIdentifiersWithConfigurationOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11 = 0;
  v7 = [(VNCoreSceneUnderstandingDetector *)a1 _getCSUSceneNetV5Configuration:0 junkLeafConfiguration:0 junkHierarchicalConfiguration:0 VN5kJNH3eYuyaLxNpZr5Z7ziConfiguration:&v11 significantEventConfiguration:0 cityNatureConfiguration:v6 forConfigurationOptions:a4 error:?];
  v8 = v11;
  if (v7)
  {
    v9 = [(VNCoreSceneUnderstandingDetector *)a1 _identifiersSupportedByCustomClassifierConfiguration:v8 error:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)allVN5kJNH3eYuyaLxNpZr5Z7ziIdentifiersWithConfigurationOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11 = 0;
  v7 = [(VNCoreSceneUnderstandingDetector *)a1 _getCSUSceneNetV5Configuration:0 junkLeafConfiguration:0 junkHierarchicalConfiguration:&v11 VN5kJNH3eYuyaLxNpZr5Z7ziConfiguration:0 significantEventConfiguration:0 cityNatureConfiguration:v6 forConfigurationOptions:a4 error:?];
  v8 = v11;
  if (v7)
  {
    v9 = [(VNCoreSceneUnderstandingDetector *)a1 _identifiersSupportedByCustomClassifierConfiguration:v8 error:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)allRecognizedObjectIdentifiersWithConfigurationOptions:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(VNCoreSceneUnderstandingDetector *)a1 _globalOrProvidedSessionInOptions:v6 error:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_RecognizeObjectsConfigurations"];
    if ([v8 count] == 1)
    {
      v28 = [v8 firstObject];
      v33 = 0;
      v9 = [(VNCoreSceneUnderstandingDetector *)a1 _getCSUSceneNetV5Configuration:0 junkLeafConfiguration:0 junkHierarchicalConfiguration:0 VN5kJNH3eYuyaLxNpZr5Z7ziConfiguration:0 significantEventConfiguration:0 cityNatureConfiguration:v6 forConfigurationOptions:a4 error:?];
      v10 = v33;
      v27 = v10;
      if (v9)
      {
        v11 = [(VNCoreSceneUnderstandingDetector *)a1 _detectedObjectTaxonomyForCSUSceneNetV5Configuration:v10 session:v7 error:a4];
        v26 = v11;
        if (v11)
        {
          v12 = [v11 labels];
          v13 = [v12 mutableCopy];

          v14 = [v28 observationsRecipient];
          v25 = [v14 originatingRequestSpecifier];

          v15 = [a1 _specialCaseRecognizedObjectsDuplicationsForOriginatingRequestSpecifier:v25];
          v16 = v15;
          if (v15)
          {
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v17 = v15;
            v18 = [v17 countByEnumeratingWithState:&v29 objects:v34 count:16];
            if (v18)
            {
              v19 = *v30;
              do
              {
                for (i = 0; i != v18; ++i)
                {
                  if (*v30 != v19)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v21 = *(*(&v29 + 1) + 8 * i);
                  if ([v13 containsObject:v21])
                  {
                    v22 = [v17 objectForKeyedSubscript:v21];
                    v23 = [v13 arrayByAddingObject:v22];
                  }
                }

                v18 = [v17 countByEnumeratingWithState:&v29 objects:v34 count:16];
              }

              while (v18);
            }
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else if (a4)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"incorrect recognized objects configurations"];
      *a4 = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)_globalOrProvidedSessionInOptions:(uint64_t)a3 error:
{
  v4 = a2;
  objc_opt_self();
  v8 = 0;
  LOBYTE(a3) = [VNValidationUtilities getOptionalObject:&v8 ofClass:objc_opt_class() forKey:@"VNDetectorProcessOption_Session" inOptions:v4 error:a3];
  v5 = v8;
  if (a3)
  {
    if (!v5)
    {
      v5 = +[VNSession globalSession];
    }

    v5 = v5;
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)allClassificationIdentifiersWithConfigurationOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(VNCoreSceneUnderstandingDetector *)a1 _globalOrProvidedSessionInOptions:v6 error:a4];
  if (!v7)
  {
    v14 = 0;
    goto LABEL_21;
  }

  v21 = 0;
  v8 = [(VNCoreSceneUnderstandingDetector *)a1 _getCSUSceneNetV5Configuration:0 junkLeafConfiguration:0 junkHierarchicalConfiguration:0 VN5kJNH3eYuyaLxNpZr5Z7ziConfiguration:0 significantEventConfiguration:0 cityNatureConfiguration:v6 forConfigurationOptions:a4 error:?];
  v9 = v21;
  if (v8)
  {
    v10 = [v6 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageClassificationConfigurations"];
    if ([v10 count] == 1)
    {
      v11 = [(VNCoreSceneUnderstandingDetector *)a1 _sceneNetTaxonomyForCSUSceneNetV5Configuration:v9 session:v7 error:a4];
      if (v11)
      {
        v12 = [v10 firstObject];
        v13 = [v12 disallowedList];

        v14 = [v11 labelsFilteredByDisallowedList:v13];
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
      v11 = [v6 objectForKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_EntityNetClassificationConfigurations"];
      if ([v11 count] == 1)
      {
        v20 = 0;
        v15 = [(VNCoreSceneUnderstandingDetector *)a1 _getEntityNetTaxonomy:v9 forCSUSceneNetV5Configuration:v7 session:a4 error:?];
        v16 = v20;
        v13 = v16;
        if (v15)
        {
          if (v16)
          {
            v17 = [v11 firstObject];
            v18 = [v17 disallowedList];

            v14 = [v13 labelsFilteredByDisallowedList:v18];

            goto LABEL_18;
          }

          if (a4)
          {
            [VNError errorForInvalidModelWithLocalizedDescription:@"classification is not supported"];
            *a4 = v14 = 0;
            goto LABEL_18;
          }
        }

        v14 = 0;
        goto LABEL_18;
      }

      if (a4)
      {
        [VNError errorForInternalErrorWithLocalizedDescription:@"incorrect classification configurations"];
        *a4 = v14 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    v14 = 0;
    goto LABEL_19;
  }

  v14 = 0;
LABEL_20:

LABEL_21:

  return v14;
}

+ (id)_newSaliencyHeatmapBoundingBoxGeneratorOptionsForOptions:(id)a3
{
  v3 = a3;
  v4 = [v3 mutableCopy];
  v5 = [v3 objectForKeyedSubscript:@"VNDetectorOption_ComputeStageDeviceAssignments"];
  if ([v5 count])
  {
    v6 = objc_alloc(MEMORY[0x1E695DF20]);
    v7 = [v5 objectForKeyedSubscript:@"VNComputeStagePostProcessing"];
    v8 = [v6 initWithObjectsAndKeys:{v7, @"VNComputeStageMain", 0}];

    [v4 setObject:v8 forKeyedSubscript:@"VNDetectorOption_ComputeStageDeviceAssignments"];
  }

  return v4;
}

+ (id)_specialCaseRecognizedObjectsDuplicationsForOriginatingRequestSpecifier:(id)a3
{
  v3 = a3;
  if ([v3 specifiesRequestClass:objc_opt_class() revision:3737841667])
  {
    if (+[VNCoreSceneUnderstandingDetector _specialCaseRecognizedObjectsDuplicationsForOriginatingRequestSpecifier:]::onceToken != -1)
    {
      dispatch_once(&+[VNCoreSceneUnderstandingDetector _specialCaseRecognizedObjectsDuplicationsForOriginatingRequestSpecifier:]::onceToken, &__block_literal_global_26777);
    }

    v4 = +[VNCoreSceneUnderstandingDetector _specialCaseRecognizedObjectsDuplicationsForOriginatingRequestSpecifier:]::specialCase1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __108__VNCoreSceneUnderstandingDetector__specialCaseRecognizedObjectsDuplicationsForOriginatingRequestSpecifier___block_invoke()
{
  v0 = +[VNCoreSceneUnderstandingDetector _specialCaseRecognizedObjectsDuplicationsForOriginatingRequestSpecifier:]::specialCase1;
  +[VNCoreSceneUnderstandingDetector _specialCaseRecognizedObjectsDuplicationsForOriginatingRequestSpecifier:]::specialCase1 = &unk_1F19C25F8;
}

@end