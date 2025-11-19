@interface VNCoreMLTransformer
+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4;
- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9;
- (VNCoreMLTransformer)initWithOptions:(id)a3 model:(id)a4 error:(id *)a5;
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
@end

@implementation VNCoreMLTransformer

- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9
{
  v185[16] = *MEMORY[0x1E69E9840];
  v171 = a5;
  v173 = a8;
  v170 = [VNValidationUtilities originatingRequestSpecifierInOptions:"originatingRequestSpecifierInOptions:error:" error:?];
  if (!v170)
  {
    v27 = 0;
    goto LABEL_117;
  }

  v12 = [(VNCoreMLTransformer *)self model];
  v13 = v171;
  v172 = v12;
  if (self)
  {
    v14 = [v12 scenePrintRequestSpecifier];

    if (v14)
    {
      v185[0] = 0;
      v15 = [VNValidationUtilities getArray:v185 forKey:@"VNDetectorProcessOption_ScenePrints" inOptions:v13 withElementsOfClass:objc_opt_class() requiredMinimumCount:1 allowedMaximumCount:1 error:v173];
      v16 = v185[0];
      v17 = v16;
      if (v15)
      {
        v18 = [v16 objectAtIndexedSubscript:0];
        v19 = v13;
        if (v12)
        {
          v20 = [VNSceneprintMLFeatureProvider alloc];
          v22 = v172[13];
          v21 = v172[14];
          v23 = [v172 featureProvider];
          v24 = [(VNSceneprintMLFeatureProvider *)v20 initWithSceneprint:v18 dataType:v21 forKey:v22 originalFeatureProvider:v23];

          v25 = [(VNCoreMLModel *)v172 _configuredMLPredictionOptionsForOptions:v19 error:v173];
          if (v25)
          {
            v26 = [v172 model];
            v169 = [v26 predictionFromFeatures:v24 options:v25 error:v173];
          }

          else
          {
            v169 = 0;
          }
        }

        else
        {
          v169 = 0;
        }
      }

      else
      {
        v169 = 0;
      }
    }

    else
    {
      v28 = [v12 detectionPrintRequestSpecifier];

      if (v28)
      {
        v29 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNCoreMLTransformerProcessOption_Detectionprint" inOptions:v13 error:v173];
        v30 = v29;
        if (v29)
        {
          v31 = v29;
          v32 = v13;
          if (v12)
          {
            v33 = [VNDetectionprintMLFeatureProvider alloc];
            v34 = [v172 detectionPrintInputDescriptions];
            v35 = [v172 featureProvider];
            v36 = [(VNDetectionprintMLFeatureProvider *)v33 initWithDetectionprint:v31 featureDescriptions:v34 originalFeatureProvider:v35];

            v37 = [(VNCoreMLModel *)v172 _configuredMLPredictionOptionsForOptions:v32 error:v173];
            if (v37)
            {
              v38 = [v172 model];
              v169 = [v38 predictionFromFeatures:v36 options:v37 error:v173];
            }

            else
            {
              v169 = 0;
            }
          }

          else
          {
            v169 = 0;
          }
        }

        else
        {
          v169 = 0;
        }
      }

      else
      {
        v169 = [v12 predictWithCVPixelBuffer:a4 options:v13 error:v173];
      }
    }
  }

  else
  {
    v169 = 0;
  }

  if (v169)
  {
    v39 = [v172 modelType];
    if (v39 > 3)
    {
      if (v39 != 4)
      {
        if (v39 != 5)
        {
          goto LABEL_29;
        }

LABEL_48:
        v53 = v172;
        v164 = v169;
        v147 = v13;
        v167 = v170;
        v158 = v53;
        if (self)
        {
          v54 = [v53 boundingBoxOutputDescription];
          v55 = [v54 coordinatesFeatureName];
          v155 = [v164 featureValueForName:v55];

          v56 = [v158 boundingBoxOutputDescription];
          v57 = [v56 confidenceFeatureName];
          v153 = [v164 featureValueForName:v57];

          if ([v155 type] == 5 && objc_msgSend(v153, "type") == 5)
          {
            v146 = [v155 multiArrayValue];
            v161 = [v153 multiArrayValue];
            v143 = [v146 shape];
            v142 = [v161 shape];
            v58 = [v146 strides];
            v59 = [v58 objectAtIndexedSubscript:0];
            v140 = [v59 unsignedIntegerValue];

            v144 = [v161 strides];

            v60 = [v144 objectAtIndexedSubscript:0];
            v139 = [v60 unsignedIntegerValue];

            v61 = [v143 objectAtIndexedSubscript:0];
            v141 = [v61 unsignedIntegerValue];

            v62 = [v158 boundingBoxOutputDescription];
            v145 = [v62 labelNames];

            v63 = [v145 count];
            v64 = [v142 objectAtIndexedSubscript:1];
            LOBYTE(v63) = v63 == [v64 unsignedIntegerValue];

            if (v63)
            {
              v65 = [v147 objectForKey:@"VNVNCoreMLTransformerProcessOption_NormalizedOriginOffsetX"];
              [v65 doubleValue];
              v137 = v66;

              v67 = [v147 objectForKey:@"VNVNCoreMLTransformerProcessOption_NormalizedOriginOffsetY"];
              [v67 doubleValue];
              v69 = v68;

              v70 = [v147 objectForKeyedSubscript:@"VNDetectorProcessOption_ImageCropAndScaleOption"];
              v136 = [v70 intValue];

              v149 = [v158 operationPoints];
              v138 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v141];
              if (v141)
              {
                v148 = 0;
                v71 = 0;
                v134 = v137 * -2.0 + 1.0;
                v72 = v69 * -2.0 + 1.0;
                do
                {
                  v135 = v71;
                  v73 = v71 * v140;
                  v74 = [v146 objectAtIndexedSubscript:v71 * v140 + 2];
                  [v74 doubleValue];
                  v76 = v75;

                  v77 = [v146 objectAtIndexedSubscript:v73 + 3];
                  [v77 doubleValue];
                  v79 = v78;

                  v80 = [v146 objectAtIndexedSubscript:v73];
                  [v80 doubleValue];
                  v82 = v81;

                  v83 = [v146 objectAtIndexedSubscript:v73 + 1];
                  [v83 doubleValue];
                  v85 = v84;

                  v86 = v82 + v76 * -0.5;
                  v87 = v85 + v79 * -0.5;
                  if (v136)
                  {
                    if (v136 == 1)
                    {
                      v86 = (v86 - v137) / v134;
                      v87 = (v87 - v69) / v72;
                      v76 = v76 / v134;
                      v79 = v79 / v72;
                    }
                  }

                  else
                  {
                    v76 = v134 * v76;
                    v79 = v72 * v79;
                    v86 = v137 + v134 * v86;
                    v87 = v69 + v72 * v87;
                  }

                  v151 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v145, "count")}];
                  v182 = 0u;
                  v183 = 0u;
                  v180 = 0u;
                  v181 = 0u;
                  v88 = v145;
                  v89 = [v88 countByEnumeratingWithState:&v180 objects:v185 count:16];
                  if (v89)
                  {
                    v90 = 0;
                    v91 = *v181;
                    v92 = 0.0;
                    while (2)
                    {
                      for (i = 0; i != v89; ++i)
                      {
                        if (*v181 != v91)
                        {
                          objc_enumerationMutation(v88);
                        }

                        v94 = *(*(&v180 + 1) + 8 * i);
                        v95 = [v161 objectAtIndexedSubscript:v148 + v90];
                        [v95 doubleValue];
                        v97 = v96;

                        v179 = 0;
                        v98 = [v149 getClassificationMetrics:&v179 forClassificationIdentifier:v94 error:v173];
                        v99 = v179;
                        v100 = v99;
                        if ((v98 & 1) == 0)
                        {

                          v27 = 0;
                          v108 = v138;
                          goto LABEL_102;
                        }

                        v101 = [VNClassificationObservation alloc];
                        *&v102 = v97;
                        v103 = [(VNClassificationObservation *)v101 initWithOriginatingRequestSpecifier:v167 identifier:v94 confidence:v100 classificationMetrics:v102];
                        [v151 addObject:v103];

                        v92 = v92 + v97;
                        ++v90;
                      }

                      v89 = [v88 countByEnumeratingWithState:&v180 objects:v185 count:16];
                      if (v89)
                      {
                        continue;
                      }

                      break;
                    }

                    if (v92 > 0.0)
                    {
                      v178[0] = MEMORY[0x1E69E9820];
                      v178[1] = 3221225472;
                      v178[2] = __119__VNCoreMLTransformer__recognizedObjectObservationsFromModel_outputFeatures_options_originatingRequestSpecifier_error___block_invoke;
                      v178[3] = &__block_descriptor_40_e15_v32__0_8Q16_B24l;
                      v178[4] = *&v92;
                      [v151 enumerateObjectsUsingBlock:v178];
                    }
                  }

                  else
                  {

                    v92 = 0.0;
                  }

                  v104 = &__block_literal_global_125;
                  [v151 sortWithOptions:16 usingComparator:&__block_literal_global_125];

                  v105 = [VNRecognizedObjectObservation alloc];
                  *&v106 = v92;
                  v107 = [(VNRecognizedObjectObservation *)v105 initWithOriginatingRequestSpecifier:v167 boundingBox:v151 confidence:0 labels:0 segmentationMask:v86 groupId:1.0 - v87 - v79, v76, v79, v106];
                  [v138 addObject:v107];

                  v71 = v135 + 1;
                  v148 += v139;
                }

                while (v135 + 1 != v141);
              }

              v108 = v138;
              v27 = v138;
LABEL_102:
            }

            else if (v173)
            {
              [VNError errorForInvalidModelWithLocalizedDescription:@"The confidence scores don't line up with the labels"];
              *v173 = v27 = 0;
            }

            else
            {
              v27 = 0;
            }
          }

          else if (v173)
          {
            [VNError errorForInvalidModelWithLocalizedDescription:@"The outputs of the model are of unexpected types"];
            *v173 = v27 = 0;
          }

          else
          {
            v27 = 0;
          }
        }

        else
        {
          v27 = 0;
        }

LABEL_107:
        if (v27)
        {
          v176 = 0u;
          v177 = 0u;
          v174 = 0u;
          v175 = 0u;
          v27 = v27;
          v130 = [v27 countByEnumeratingWithState:&v174 objects:v184 count:16];
          if (v130)
          {
            v131 = *v175;
            do
            {
              for (j = 0; j != v130; ++j)
              {
                if (*v175 != v131)
                {
                  objc_enumerationMutation(v27);
                }

                [(VNDetector *)self recordImageCropQuickLookInfoFromOptions:v13 toObservation:*(*(&v174 + 1) + 8 * j)];
              }

              v130 = [v27 countByEnumeratingWithState:&v174 objects:v184 count:16];
            }

            while (v130);
          }
        }

        goto LABEL_116;
      }
    }

    else if (v39)
    {
      if (v39 != 3)
      {
LABEL_29:
        v40 = v172;
        v166 = v169;
        v157 = v40;
        v160 = v170;
        if (self)
        {
          v163 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v41 = [v40 model];
          v42 = [v41 modelDescription];
          v43 = [v42 outputDescriptionsByName];

          v182 = 0u;
          v183 = 0u;
          v180 = 0u;
          v181 = 0u;
          v44 = v43;
          v45 = [v44 countByEnumeratingWithState:&v180 objects:v185 count:16];
          if (v45)
          {
            v46 = *v181;
LABEL_32:
            v47 = 0;
            while (1)
            {
              if (*v181 != v46)
              {
                objc_enumerationMutation(v44);
              }

              v48 = *(*(&v180 + 1) + 8 * v47);
              v49 = [v44 objectForKeyedSubscript:v48];
              v50 = [v166 featureValueForName:v48];
              if (!v50)
              {
                if (v173)
                {
                  v129 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"could not obtain a feature value for key %@", v48];
                  *v173 = [VNError errorForInvalidModelWithLocalizedDescription:v129];
                }

                v27 = 0;
                goto LABEL_93;
              }

              if ([v49 type] != 4 || objc_msgSend(v50, "type") != 4)
              {
                break;
              }

              v51 = [v50 imageBufferValue];
              if (v51)
              {
                v52 = [[VNPixelBufferObservation alloc] initWithOriginatingRequestSpecifier:v160 featureName:v48 CVPixelBuffer:v51];
                [v163 addObject:v52];
LABEL_41:
              }

              if (v45 == ++v47)
              {
                v45 = [v44 countByEnumeratingWithState:&v180 objects:v185 count:16];
                if (v45)
                {
                  goto LABEL_32;
                }

                goto LABEL_44;
              }
            }

            v52 = [[VNCoreMLFeatureValueObservation alloc] initWithOriginatingRequestSpecifier:v160 featureName:v48 featureValue:v50];
            [v163 addObject:v52];
            goto LABEL_41;
          }

LABEL_44:

          v27 = v163;
LABEL_93:
        }

        else
        {
          v27 = 0;
        }

        goto LABEL_107;
      }

      goto LABEL_48;
    }

    v109 = v172;
    v159 = v169;
    v165 = v170;
    v154 = v109;
    if (self)
    {
      v168 = [v109 operationPoints];
      v110 = [v109 predictedProbabilitiesKey];
      v156 = v110;
      if (v110)
      {
        v152 = [v159 featureValueForName:v110];
        v150 = [v152 dictionaryValue];
        v162 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v150, "count")}];
        v182 = 0u;
        v183 = 0u;
        v180 = 0u;
        v181 = 0u;
        v111 = v150;
        v112 = [v111 countByEnumeratingWithState:&v180 objects:v185 count:16];
        if (v112)
        {
          v113 = *v181;
          while (2)
          {
            for (k = 0; k != v112; ++k)
            {
              if (*v181 != v113)
              {
                objc_enumerationMutation(v111);
              }

              v115 = *(*(&v180 + 1) + 8 * k);
              v116 = [v111 objectForKeyedSubscript:v115];
              [v116 floatValue];
              v118 = v117;

              v119 = objc_opt_class();
              if (([v119 isSubclassOfClass:objc_opt_class()] & 1) == 0)
              {
                v120 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@", v115];

                v115 = v120;
              }

              v178[0] = 0;
              v121 = [v168 getClassificationMetrics:v178 forClassificationIdentifier:v115 error:v173];
              v122 = v178[0];
              v123 = v122;
              if ((v121 & 1) == 0)
              {

                v27 = 0;
                v128 = v162;
                goto LABEL_87;
              }

              v124 = [VNClassificationObservation alloc];
              LODWORD(v125) = v118;
              v126 = [(VNClassificationObservation *)v124 initWithOriginatingRequestSpecifier:v165 identifier:v115 confidence:v123 classificationMetrics:v125];
              [v162 addObject:v126];
            }

            v112 = [v111 countByEnumeratingWithState:&v180 objects:v185 count:16];
            if (v112)
            {
              continue;
            }

            break;
          }
        }

        v127 = &__block_literal_global_125;
        [v162 sortWithOptions:16 usingComparator:&__block_literal_global_125];

        v128 = v162;
        v27 = v162;
LABEL_87:
      }

      else if (v173)
      {
        [VNError errorForInvalidModelWithLocalizedDescription:@"predicted probabilities key is not available"];
        *v173 = v27 = 0;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_107;
  }

  v27 = 0;
LABEL_116:

LABEL_117:

  return v27;
}

void __119__VNCoreMLTransformer__recognizedObjectObservationsFromModel_outputFeatures_options_originatingRequestSpecifier_error___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 confidence];
  v4 = v3 / *(a1 + 32);
  *&v4 = v4;
  [v5 setConfidence:v4];
}

- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16 = a4;
  v17 = [(VNCoreMLTransformer *)self model];
  v18 = [v17 scenePrintRequestSpecifier];

  if (!v18)
  {
    v20 = [(VNDetector *)self validatedImageBufferFromOptions:v16 error:a8];
    if (!v20)
    {
      v19 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v43 = v20;
    v21 = [v16 objectForKeyedSubscript:@"VNDetectorProcessOption_ImageCropAndScaleOption"];
    v22 = [v21 intValue];

    v47 = *MEMORY[0x1E695EFF8];
    v45 = 0x3FF0000000000000;
    v46 = 0x3FF0000000000000;
    v23 = [v20 width];
    v24 = [v20 height];
    v48.origin.x = x * v23;
    v48.size.width = width * v23;
    v48.origin.y = y * v24;
    v48.size.height = height * v24;
    v49 = CGRectIntegral(v48);
    v25 = v49.origin.x;
    v26 = v49.origin.y;
    v27 = v49.size.width;
    v28 = v49.size.height;
    if (v17 && v23 && v24 && *(v17 + 48))
    {
      [*(v17 + 40) modelDescription];
      v42 = v40 = v22;
      v41 = [v42 inputDescriptionsByName];
      v29 = [v41 objectForKeyedSubscript:*(v17 + 48)];
      v30 = [v29 imageConstraint];
      v31 = [v30 sizeConstraint];

      v22 = v40;
      if (v31)
      {
        v32 = [v31 allowedImageSizeClosestToPixelsWide:v23 pixelsHigh:v24 preferDownScaling:1 preferInputAspectRatio:1];
        *(v17 + 80) = [v32 pixelsWide];
        *(v17 + 88) = [v32 pixelsHigh];
      }
    }

    v33 = [v17 inputImageWidth];
    v34 = [v17 inputImageHeight];
    if (v33 && v34)
    {
      v44 = 0;
      v35 = [v43 cropAndScaleBufferWithWidth:v33 height:v34 cropRect:objc_msgSend(v17 format:"inputImageFormat") imageCropAndScaleOption:v22 options:v16 error:a8 calculatedNormalizedOriginOffset:v25 calculatedScaleX:v26 calculatedScaleY:v27 pixelBufferRepsCacheKey:{v28, &v47, &v46, &v45, &v44}];
      v36 = v44;
      *a7 = v35;
      if (v35)
      {
        v37 = [MEMORY[0x1E696AD98] numberWithDouble:*&v47];
        [v16 setObject:v37 forKey:@"VNVNCoreMLTransformerProcessOption_NormalizedOriginOffsetX"];

        v38 = [MEMORY[0x1E696AD98] numberWithDouble:*(&v47 + 1)];
        [v16 setObject:v38 forKey:@"VNVNCoreMLTransformerProcessOption_NormalizedOriginOffsetY"];

        [(VNDetector *)self recordImageCropQuickLookInfoToOptions:v16 cacheKey:v36 imageBuffer:v43];
        v19 = 1;
LABEL_20:

        v20 = v43;
        goto LABEL_21;
      }
    }

    else
    {
      if (a8)
      {
        [VNError errorForInvalidModelWithLocalizedDescription:@"The inputImageFeatureName does not point to a MLFeatureTypeImage input."];
        v36 = 0;
        *a8 = v19 = 0;
        goto LABEL_20;
      }

      v36 = 0;
    }

    v19 = 0;
    goto LABEL_20;
  }

  v19 = 1;
LABEL_22:

  return v19;
}

- (VNCoreMLTransformer)initWithOptions:(id)a3 model:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v9 && (v10 = objc_opt_class(), ([v10 isSubclassOfClass:objc_opt_class()] & 1) != 0))
  {
    v16.receiver = self;
    v16.super_class = VNCoreMLTransformer;
    v11 = [(VNDetector *)&v16 initWithConfigurationOptions:v8];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_model, a4);
      v13 = [VNValidationUtilities requiredSessionInOptions:v8 error:a5];
      if (!v13 || ![(VNDetector *)v12 completeInitializationForSession:v13 error:a5])
      {

        v14 = 0;
        goto LABEL_12;
      }
    }

    v12 = v12;
    v14 = v12;
  }

  else
  {
    if (a5)
    {
      [VNError errorWithCode:5 message:@"No valid VNCoreMLModel found in passed in options"];
      *a5 = v14 = 0;
    }

    else
    {
      v14 = 0;
    }

    v12 = self;
  }

LABEL_12:

  return v14;
}

+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allComputeDevices:a3];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

@end