@interface VNSmartCam5GatingDetector
+ (id)_inferenceNetworkDescriptorForConfiguration:(id)configuration error:(id *)error;
+ (id)inputImageBlobNameForConfiguration:(id)configuration;
+ (id)modelPathForConfiguration:(id)configuration error:(id *)error;
+ (id)sceneLabelsFilePathForConfiguration:(id)configuration error:(id *)error;
+ (id)segmentationLabelsFilePathForConfiguration:(id)configuration error:(id *)error;
+ (unsigned)analysisPixelFormatTypeForConfiguration:(id)configuration;
- (BOOL)completeInitializationForSession:(id)session error:(id *)error;
- (BOOL)configureImageAnalyzerOptions:(void *)options error:(id *)error;
- (NSArray)supportedDocumentElementIdentifiers;
- (id)observationsForLastAnalysisOfImageAnalyzer:(void *)analyzer processOptions:(id)options originatingRequestSpecifier:(id)specifier qosClass:(unsigned int)class error:(id *)error;
- (id)supportedClassificationIdentifiersWithOptions:(id)options error:(id *)error;
- (uint64_t)_recordRecognizedObjectObservationsWithIdentifier:(void *)identifier inObservationsArray:(void *)array sceneLabelToConfidenceMap:(uint64x2_t *)map segmentationTensor:(uint64_t *)tensor segmentationChannelLabels:(void *)labels originatingRequestSpecifier:(unsigned int)specifier qosClass:(void *)class session:(void *)self0 error:;
- (unsigned)analysisTypesForProcessOptions:(id)options;
@end

@implementation VNSmartCam5GatingDetector

- (id)observationsForLastAnalysisOfImageAnalyzer:(void *)analyzer processOptions:(id)options originatingRequestSpecifier:(id)specifier qosClass:(unsigned int)class error:(id *)error
{
  v8 = *&class;
  optionsCopy = options;
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = [optionsCopy objectForKeyedSubscript:@"VNSmartCam5GatingDetectorProcessingOption_ClassificationEnabled"];
  bOOLValue = [v13 BOOLValue];

  if (bOOLValue)
  {
    v15 = optionsCopy;
    if (!self)
    {
LABEL_58:

      goto LABEL_59;
    }

    v16 = [VNValidationUtilities originatingRequestSpecifierForKey:@"VNSmartCam5GatingDetectorProcessingOption_ClassificationOriginatingRequestSpecifier" inOptions:v15 error:error];
    if (v16)
    {
      v17 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNSmartCam5GatingDetectorProcessingOption_ClassificationObservationsArray" inOptions:v15 error:error];
      if (v17)
      {
        v18 = [(VNImageAnalyzerBasedDetector *)self observationsForSceneLabelsFromLastAnalysisOfImageAnalyzer:analyzer identifierAcceptingBlock:0 operationPointsProvider:0 originatingRequestSpecifier:v16 qosClass:v8 error:error];
        if (v18)
        {
          [v17 addObjectsFromArray:v18];
          v19 = v18;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    if (!v18)
    {
      goto LABEL_59;
    }

    [v12 addObjectsFromArray:v18];
  }

  v20 = [optionsCopy objectForKeyedSubscript:@"VNSmartCam5GatingDetectorProcessingOption_DocumentRegionGatingEnabled"];
  bOOLValue2 = [v20 BOOLValue];

  v22 = [optionsCopy objectForKeyedSubscript:@"VNSmartCam5GatingDetectorProcessingOption_TextRegionGatingEnabled"];
  bOOLValue3 = [v22 BOOLValue];

  v24 = [optionsCopy objectForKeyedSubscript:@"VNSmartCam5GatingDetectorProcessingOption_MachineReadableCodesGatingEnabled"];
  bOOLValue4 = [v24 BOOLValue];

  if (((bOOLValue2 | bOOLValue3 | bOOLValue4) & 1) == 0)
  {
LABEL_57:
    v52 = v12;
    goto LABEL_60;
  }

  v63 = v8;
  v15 = optionsCopy;
  if (!self)
  {
    goto LABEL_58;
  }

  v26 = [VNValidationUtilities requiredSessionInOptions:v15 error:error];
  if (!v26)
  {
    v31 = 0;
    goto LABEL_55;
  }

  v64 = v26;
  v27 = [VNValidationUtilities originatingRequestSpecifierForKey:@"VNSmartCam5GatingDetectorProcessingOption_GatingOriginatingRequestSpecifier" inOptions:v15 error:error];
  if (v27)
  {
    v62 = v27;
    v61 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNSmartCam5GatingDetectorProcessingOption_GatingObservationsArray" inOptions:v15 error:error];
    if (!v61)
    {
      v31 = 0;
      v32 = 0;
LABEL_53:

      v27 = v62;
      goto LABEL_54;
    }

    vision::mod::ImageAnalyzer::getSceneLabelsConfidences(v80, v28, analyzer);
    memset(v79, 0, sizeof(v79));
    v77 = 0u;
    *v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v68 = 0u;
    memset(&v67, 0, sizeof(v67));
    if (bOOLValue2)
    {
      v29 = [v15 objectForKeyedSubscript:@"VNSmartCam5GatingDetectorProcessingOption_DocumentRegionGatingGenerateSegmentationMask"];
      bOOLValue5 = [v29 BOOLValue];

      if (!bOOLValue3)
      {
        goto LABEL_20;
      }
    }

    else
    {
      bOOLValue5 = 0;
      if (!bOOLValue3)
      {
LABEL_20:
        bOOLValue7 = 0;
        if (bOOLValue4)
        {
LABEL_21:
          v30 = [v15 objectForKeyedSubscript:@"VNSmartCam5GatingDetectorProcessingOption_MachineReadableCodesGatingGenerateSegmentationMask"];
          bOOLValue6 = [v30 BOOLValue];

          goto LABEL_28;
        }

LABEL_27:
        bOOLValue6 = 0;
LABEL_28:
        if (((bOOLValue5 | bOOLValue7) & 1) != 0 || bOOLValue6)
        {
          vision::mod::ImageAnalyzer::getSceneSegmentation(v65, analyzer);
          free(v78[1]);
          v78[1] = 0;
          free(v79[1]);
          memset(&v79[1], 0, 32);
          free(v79[5]);
          memset(&v79[5], 0, 32);
          v76 = v65[8];
          v77 = v65[9];
          v78[0] = v66;
          v72 = v65[4];
          v73 = v65[5];
          v74 = v65[6];
          v75 = v65[7];
          v68 = v65[0];
          v69 = v65[1];
          v70 = v65[2];
          v71 = v65[3];
          vision::mod::ImageAnalyzer_Tensor3D::~ImageAnalyzer_Tensor3D(v65);
          LabelsList = vision::mod::ImageAnalyzer::getLabelsList(analyzer, 0x20u);
          if (&v67 != LabelsList)
          {
            std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v67, LabelsList->__begin_, LabelsList->__end_, 0xAAAAAAAAAAAAAAABLL * ((LabelsList->__end_ - LabelsList->__begin_) >> 3));
          }
        }

        v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v60 = v35;
        if (!bOOLValue2)
        {
          goto LABEL_65;
        }

        v36 = &v68;
        if (!bOOLValue5)
        {
          v36 = 0;
        }

        v54 = v36;
        v37 = v35;
        v38 = v62;
        v39 = v64;
        v58 = v37;
        LOBYTE(v37) = [(VNSmartCam5GatingDetector *)self _recordRecognizedObjectObservationsWithIdentifier:v37 inObservationsArray:v80 sceneLabelToConfidenceMap:v54 segmentationTensor:&v67 segmentationChannelLabels:v38 originatingRequestSpecifier:v63 qosClass:v39 session:error error:?];

        v40 = v60;
        if (v37)
        {
LABEL_65:
          if (bOOLValue3)
          {
            v41 = bOOLValue7 ? &v68 : 0;
            v42 = v60;
            v43 = v62;
            v44 = v64;
            v45 = [(VNSmartCam5GatingDetector *)self _recordRecognizedObjectObservationsWithIdentifier:v42 inObservationsArray:v80 sceneLabelToConfidenceMap:v41 segmentationTensor:&v67 segmentationChannelLabels:v43 originatingRequestSpecifier:v63 qosClass:v44 session:error error:?];

            if (!v45)
            {
              v31 = 0;
              v40 = v60;
              v32 = v61;
              goto LABEL_51;
            }
          }

          v40 = v60;
          if (!bOOLValue4)
          {
LABEL_47:
            v32 = v61;
            [v61 addObjectsFromArray:v60];
            v31 = v60;
            goto LABEL_51;
          }

          if (bOOLValue6)
          {
            v46 = &v68;
          }

          else
          {
            v46 = 0;
          }

          v47 = v60;
          v48 = v62;
          v49 = v64;
          v59 = v47;
          if (([(VNSmartCam5GatingDetector *)self _recordRecognizedObjectObservationsWithIdentifier:v47 inObservationsArray:v80 sceneLabelToConfidenceMap:v46 segmentationTensor:&v67 segmentationChannelLabels:v48 originatingRequestSpecifier:v63 qosClass:v49 session:error error:?]& 1) != 0)
          {
            v50 = [(VNSmartCam5GatingDetector *)self _recordRecognizedObjectObservationsWithIdentifier:v47 inObservationsArray:v80 sceneLabelToConfidenceMap:v46 segmentationTensor:&v67 segmentationChannelLabels:v48 originatingRequestSpecifier:v63 qosClass:v49 session:error error:?];

            if (v50)
            {
              goto LABEL_47;
            }
          }

          else
          {
          }
        }

        v31 = 0;
        v32 = v61;
LABEL_51:

        *&v65[0] = &v67;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v65);
        vision::mod::ImageAnalyzer_Tensor3D::~ImageAnalyzer_Tensor3D(&v68);
        std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(v80[2]);
        v51 = v80[0];
        v80[0] = 0;
        if (v51)
        {
          operator delete(v51);
        }

        goto LABEL_53;
      }
    }

    v33 = [v15 objectForKeyedSubscript:@"VNSmartCam5GatingDetectorProcessingOption_TextRegionGatingGenerateSegmentationMask"];
    bOOLValue7 = [v33 BOOLValue];

    if (bOOLValue4)
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }

  v31 = 0;
LABEL_54:

  v26 = v64;
LABEL_55:

  if (v31)
  {
    [v12 addObjectsFromArray:v31];

    goto LABEL_57;
  }

LABEL_59:
  v52 = 0;
LABEL_60:

  return v52;
}

- (uint64_t)_recordRecognizedObjectObservationsWithIdentifier:(void *)identifier inObservationsArray:(void *)array sceneLabelToConfidenceMap:(uint64x2_t *)map segmentationTensor:(uint64_t *)tensor segmentationChannelLabels:(void *)labels originatingRequestSpecifier:(unsigned int)specifier qosClass:(void *)class session:(void *)self0 error:
{
  v127[1] = *MEMORY[0x1E69E9840];
  v13 = a2;
  identifierCopy = identifier;
  labelsCopy = labels;
  classCopy = class;
  selfCopy = self;
  v97 = v13;
  [*(self + 104) objectForKey:v13];
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  obj = v110 = 0u;
  v14 = [obj countByEnumeratingWithState:&v109 objects:v124 count:16];
  v90 = 1;
  if (!v14)
  {
    goto LABEL_102;
  }

  v95 = *v110;
LABEL_3:
  v103 = 0;
  v94 = v14;
  while (1)
  {
    if (*v110 != v95)
    {
      objc_enumerationMutation(obj);
    }

    uTF8String = [*(*(&v109 + 1) + 8 * v103) UTF8String];
    v16 = strlen(uTF8String);
    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v17 = v16;
    if (v16 >= 0x17)
    {
      operator new();
    }

    v108 = v16;
    if (v16)
    {
      memmove(&__dst, uTF8String, v16);
    }

    *(&__dst + v17) = 0;
    v102 = v97;
    v104 = identifierCopy;
    v105 = labelsCopy;
    v101 = classCopy;
    v18 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(array, &__dst);
    if (!v18)
    {
      goto LABEL_25;
    }

    v19 = v18;
    v20 = 0;
    v21 = (v108 & 0x80u) == 0 ? &__dst : __dst;
    v22 = (v108 & 0x80u) == 0 ? v108 : v107;
    while (1)
    {
      v23 = &(&[VNSmartCam5GatingDetector _gatingConfidenceThresholdForSceneLabel:]::identifierThresholds)[v20];
      if ((&[VNSmartCam5GatingDetector _gatingConfidenceThresholdForSceneLabel:]::identifierThresholds)[v20 + 1] == v22 && !memcmp(*v23, v21, v22))
      {
        break;
      }

      v20 += 3;
      if (v20 == 6)
      {
        v24 = 0.0;
        goto LABEL_24;
      }
    }

    v24 = *(v23 + 4);
LABEL_24:
    v25 = v19[10];
    if (v25 < v24)
    {
LABEL_25:
      v26 = 1;
      goto LABEL_81;
    }

    __p = 0;
    v117 = 0;
    v118 = 0;
    std::vector<CGRect>::push_back[abi:ne200100](&__p, &VNNormalizedIdentityRect);
    if (!map)
    {
      goto LABEL_70;
    }

    v27 = *tensor;
    v28 = tensor[1];
    if (*tensor == v28)
    {
      v31 = *tensor;
    }

    else
    {
      v29 = (v108 & 0x80u) == 0 ? v108 : v107;
      v30 = (v108 & 0x80u) == 0 ? &__dst : __dst;
      v31 = *tensor;
      while (1)
      {
        v32 = *(v31 + 23);
        v33 = v32;
        if ((v32 & 0x80u) != 0)
        {
          v32 = *(v31 + 8);
        }

        if (v32 == v29)
        {
          v34 = v33 >= 0 ? v31 : *v31;
          if (!memcmp(v34, v30, v29))
          {
            break;
          }
        }

        v31 += 24;
        if (v31 == v28)
        {
          v31 = v28;
          break;
        }
      }
    }

    if (v28 == v31)
    {
LABEL_70:
      v61 = 0;
LABEL_71:
      v62 = [VNClassificationObservation alloc];
      *&v63 = v25;
      v64 = [(VNClassificationObservation *)v62 initWithOriginatingRequestSpecifier:v105 identifier:v102 confidence:v63];
      v65 = __p;
      v66 = v117;
      while (v65 != v66)
      {
        v67 = *v65;
        v68 = v65[1];
        v69 = v65[2];
        v70 = v65[3];
        v129.origin.x = 0.0;
        v129.origin.y = 0.0;
        v129.size.width = 1.0;
        v129.size.height = 1.0;
        v128.origin.x = *v65;
        v128.origin.y = v68;
        v128.size.width = v69;
        v128.size.height = v70;
        v71 = CGRectEqualToRect(v128, v129);
        v72 = [VNRecognizedObjectObservation alloc];
        *&v125[0] = v64;
        v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:v125 count:1];
        if (v71)
        {
          v75 = 0;
        }

        else
        {
          v75 = v61;
        }

        *&v74 = v25;
        v76 = [(VNRecognizedObjectObservation *)v72 initWithOriginatingRequestSpecifier:v105 boundingBox:v73 confidence:v75 labels:0 segmentationMask:v67 groupId:v68, v69, v70, v74];

        [v104 addObject:v76];
        v65 += 4;
      }

      v119 = 1;

      goto LABEL_78;
    }

    v115 = vrev64_s32(vcvt_f32_f64(vcvtq_f64_u64(map[5])));
    v114 = 0;
    memset(v125, 0, sizeof(v125));
    vision::mod::ImageAnalyzer_Tensor3D::getVImageBufferFromTensorChannel(v125, map, 0xAAAAAAAAAAAAAAABLL * ((v31 - v27) >> 3), &v115, &v114);
    v113 = 0;
    DeepCopyCVPixelBufferFromVImageBuffer = ImageProcessing_createDeepCopyCVPixelBufferFromVImageBuffer(v125, v114, &v113);
    if (!DeepCopyCVPixelBufferFromVImageBuffer)
    {
      if (session)
      {
        v77 = v113;
        p_dst = &__dst;
        if ((v108 & 0x80u) != 0)
        {
          p_dst = __dst;
        }

        p_dst = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to create segmentation image for %s", p_dst];
        *session = [VNError errorForOSStatus:v77 localizedDescription:p_dst];
      }

      v61 = 0;
      v119 = 0;
      goto LABEL_78;
    }

    v36 = DeepCopyCVPixelBufferFromVImageBuffer;
    v37 = v105;
    v38 = v101;
    v39 = [VNImageBuffer alloc];
    v40 = [(VNImageBuffer *)v39 initWithCVPixelBuffer:v36 orientation:1 options:MEMORY[0x1E695E0F8] session:v38];
    v41 = objc_alloc(MEMORY[0x1E695DF90]);
    v127[0] = v40;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v127 count:1];
    v43 = [v41 initWithObjectsAndKeys:{v42, @"VNDetectorProcessOption_InputImageBuffers", v37, @"VNDetectorOption_OriginatingRequestSpecifier", 0}];

    v44 = [*(selfCopy + 112) internalProcessUsingQualityOfServiceClass:specifier options:v43 regionOfInterest:0 warningRecorder:session error:0 progressHandler:{0.0, 0.0, 1.0, 1.0}];
    if (v44)
    {
      v86 = v43;
      v87 = v44;
      v45 = __p;
      v117 = __p;
      if ([v44 count])
      {
        v83 = v40;
        v84 = v38;
        v85 = v37;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v46 = v87;
        v47 = [v46 countByEnumeratingWithState:&v120 objects:v126 count:16];
        if (v47)
        {
          v48 = *v121;
          v49 = v118;
          v50 = v45;
          do
          {
            for (i = 0; i != v47; ++i)
            {
              if (*v121 != v48)
              {
                objc_enumerationMutation(v46);
              }

              [*(*(&v120 + 1) + 8 * i) boundingBox];
              if (v50 >= v49)
              {
                v56 = v50 - v45;
                v57 = (v50 - v45) >> 5;
                v58 = v57 + 1;
                if ((v57 + 1) >> 59)
                {
                  v117 = v50;
                  v118 = v49;
                  __p = v45;
                  std::vector<float>::__throw_length_error[abi:ne200100]();
                }

                if ((v49 - v45) >> 4 > v58)
                {
                  v58 = (v49 - v45) >> 4;
                }

                if (v49 - v45 >= 0x7FFFFFFFFFFFFFE0)
                {
                  v59 = 0x7FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v59 = v58;
                }

                if (v59)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(v59);
                }

                v60 = (32 * v57);
                *v60 = v52;
                v60[1] = v53;
                v49 = 0;
                v60[2] = v54;
                v60[3] = v55;
                v50 = (32 * v57 + 32);
                memcpy(0, v45, v56);
                if (v45)
                {
                  operator delete(v45);
                }

                v45 = 0;
              }

              else
              {
                *v50 = v52;
                *(v50 + 1) = v53;
                *(v50 + 2) = v54;
                *(v50 + 3) = v55;
                v50 += 32;
              }
            }

            v117 = v50;
            v118 = v49;
            __p = v45;
            v47 = [v46 countByEnumeratingWithState:&v120 objects:v126 count:16];
          }

          while (v47);
        }

        v37 = v85;
        v40 = v83;
        v38 = v84;
      }

      else
      {
        std::vector<CGRect>::push_back[abi:ne200100](&__p, &VNNormalizedIdentityRect);
      }

      v61 = [[VNPixelBufferObservation alloc] initWithOriginatingRequestSpecifier:v37 featureName:0 CVPixelBuffer:v36];
      v80 = 1;
    }

    else
    {

      v61 = 0;
      v80 = 0;
      v119 = 0;
    }

    CVPixelBufferRelease(v36);
    if (v80)
    {
      goto LABEL_71;
    }

LABEL_78:

    if (__p)
    {
      operator delete(__p);
    }

    v26 = v119;
LABEL_81:

    if ((v26 & 1) == 0)
    {
      break;
    }

    if (v108 < 0)
    {
      operator delete(__dst);
    }

    if (++v103 == v94)
    {
      v81 = [obj countByEnumeratingWithState:&v109 objects:v124 count:16];
      v14 = v81;
      if (!v81)
      {
        v90 = 1;
        goto LABEL_102;
      }

      goto LABEL_3;
    }
  }

  if (v108 < 0)
  {
    operator delete(__dst);
  }

  v90 = 0;
LABEL_102:

  return v90;
}

- (unsigned)analysisTypesForProcessOptions:(id)options
{
  optionsCopy = options;
  v4 = [optionsCopy objectForKeyedSubscript:@"VNSmartCam5GatingDetectorProcessingOption_ClassificationEnabled"];
  if ([v4 BOOLValue])
  {
    goto LABEL_6;
  }

  v5 = [optionsCopy objectForKeyedSubscript:@"VNSmartCam5GatingDetectorProcessingOption_DocumentRegionGatingEnabled"];
  if ([v5 BOOLValue])
  {
LABEL_5:

LABEL_6:
LABEL_7:
    v7 = 2;
    goto LABEL_8;
  }

  v6 = [optionsCopy objectForKeyedSubscript:@"VNSmartCam5GatingDetectorProcessingOption_TextRegionGatingEnabled"];
  if ([v6 BOOLValue])
  {

    goto LABEL_5;
  }

  v13 = [optionsCopy objectForKeyedSubscript:@"VNSmartCam5GatingDetectorProcessingOption_MachineReadableCodesGatingEnabled"];
  bOOLValue = [v13 BOOLValue];

  if (bOOLValue)
  {
    goto LABEL_7;
  }

  v7 = 0;
LABEL_8:
  v8 = [optionsCopy objectForKeyedSubscript:@"VNSmartCam5GatingDetectorProcessingOption_DocumentRegionGatingGenerateSegmentationMask"];
  if (([v8 BOOLValue] & 1) == 0)
  {
    v9 = [optionsCopy objectForKeyedSubscript:@"VNSmartCam5GatingDetectorProcessingOption_TextRegionGatingGenerateSegmentationMask"];
    if (![v9 BOOLValue])
    {
      v11 = [optionsCopy objectForKeyedSubscript:@"VNSmartCam5GatingDetectorProcessingOption_MachineReadableCodesGatingGenerateSegmentationMask"];
      bOOLValue2 = [v11 BOOLValue];

      if ((bOOLValue2 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

LABEL_12:
  v7 |= 0x20u;
LABEL_13:

  return v7;
}

- (BOOL)configureImageAnalyzerOptions:(void *)options error:(id *)error
{
  v10.receiver = self;
  v10.super_class = VNSmartCam5GatingDetector;
  v6 = [(VNImageAnalyzerBasedDetector *)&v10 configureImageAnalyzerOptions:options error:error];
  if (v6)
  {
    sceneLabelsOutputBlobName = [(VisionCoreSmartCam5InferenceNetworkDescriptor *)self->_inferenceNetworkDescriptor sceneLabelsOutputBlobName];
    std::string::__assign_external(options + 5, [sceneLabelsOutputBlobName UTF8String]);

    sceneSegmentationOutputBlobName = [(VisionCoreSmartCam5InferenceNetworkDescriptor *)self->_inferenceNetworkDescriptor sceneSegmentationOutputBlobName];
    std::string::__assign_external(options + 12, [sceneSegmentationOutputBlobName UTF8String]);
  }

  return v6;
}

- (BOOL)completeInitializationForSession:(id)session error:(id *)error
{
  v18[4] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  configurationOptions = [(VNDetector *)self configurationOptions];
  v8 = [objc_opt_class() _inferenceNetworkDescriptorForConfiguration:configurationOptions error:error];
  inferenceNetworkDescriptor = self->_inferenceNetworkDescriptor;
  self->_inferenceNetworkDescriptor = v8;

  if (self->_inferenceNetworkDescriptor && (v16.receiver = self, v16.super_class = VNSmartCam5GatingDetector, [(VNImageAnalyzerBasedDetector *)&v16 completeInitializationForSession:sessionCopy error:error]))
  {
    v17[0] = @"VNRecognizeDocumentElementIdentifierDocument";
    v17[1] = @"VNRecognizeDocumentElementIdentifierText";
    v18[0] = &unk_1F19C1FF0;
    v18[1] = &unk_1F19C2008;
    v17[2] = @"VNRecognizeDocumentElementIdentifierQRCode";
    v17[3] = @"VNRecognizeDocumentElementIdentifierAppCode";
    v18[2] = &unk_1F19C2020;
    v18[3] = &unk_1F19C2038;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
    documentIdentifierToSceneLabels = self->_documentIdentifierToSceneLabels;
    self->_documentIdentifierToSceneLabels = v10;

    v12 = [sessionCopy detectorOfType:@"VNObjectnessBasedSaliencyHeatmapBoundingBoxGeneratorType" configuredWithOptions:configurationOptions error:error];
    boundingBoxGenerator = self->_boundingBoxGenerator;
    self->_boundingBoxGenerator = v12;

    v14 = self->_boundingBoxGenerator != 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (NSArray)supportedDocumentElementIdentifiers
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = @"VNRecognizeDocumentElementIdentifierDocument";
  v4[1] = @"VNRecognizeDocumentElementIdentifierText";
  v4[2] = @"VNRecognizeDocumentElementIdentifierQRCode";
  v4[3] = @"VNRecognizeDocumentElementIdentifierAppCode";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];

  return v2;
}

- (id)supportedClassificationIdentifiersWithOptions:(id)options error:(id *)error
{
  v4 = [(VNImageAnalyzerBasedDetector *)self supportedClassificationIdentifiersAcceptedByBlock:0 error:error];

  return v4;
}

+ (id)segmentationLabelsFilePathForConfiguration:(id)configuration error:(id *)error
{
  v5 = [self _inferenceNetworkDescriptorForConfiguration:configuration error:?];
  v6 = v5;
  if (v5)
  {
    segmentationLabelsFileURL = [v5 segmentationLabelsFileURL];
    v8 = [segmentationLabelsFileURL VisionCoreFileSystemPathAndReturnError:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (unsigned)analysisPixelFormatTypeForConfiguration:(id)configuration
{
  v3 = [self _inferenceNetworkDescriptorForConfiguration:configuration error:0];
  onlyInputImage = [v3 onlyInputImage];
  pixelFormatType = [onlyInputImage pixelFormatType];

  return pixelFormatType;
}

+ (id)inputImageBlobNameForConfiguration:(id)configuration
{
  v3 = [self _inferenceNetworkDescriptorForConfiguration:configuration error:0];
  onlyInputImage = [v3 onlyInputImage];
  name = [onlyInputImage name];

  return name;
}

+ (id)sceneLabelsFilePathForConfiguration:(id)configuration error:(id *)error
{
  v5 = [self _inferenceNetworkDescriptorForConfiguration:configuration error:?];
  v6 = v5;
  if (v5)
  {
    sceneLabelConfidencesOutput = [v5 sceneLabelConfidencesOutput];
    labelsFileURL = [sceneLabelConfidencesOutput labelsFileURL];
    v9 = [labelsFileURL VisionCoreFileSystemPathAndReturnError:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)modelPathForConfiguration:(id)configuration error:(id *)error
{
  v5 = [self _inferenceNetworkDescriptorForConfiguration:configuration error:?];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 URL];
    v8 = [v7 VisionCoreFileSystemPathAndReturnError:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_inferenceNetworkDescriptorForConfiguration:(id)configuration error:(id *)error
{
  v5 = +[VNFrameworkManager manager];
  detectorDescriptorsCache = [v5 detectorDescriptorsCache];
  v7 = [detectorDescriptorsCache objectForIdentifier:@"VNSmartCam5GatingDetector" creationBlock:&__block_literal_global_13348 error:error];

  return v7;
}

@end