@interface ANSTISPInferenceDescriptorV1
+ (BOOL)_getInputDescriptors:(id *)a3 outputDescriptors:(id *)a4 forConfiguration:(id)a5 withError:(id *)a6;
+ (id)_assetURLForConfiguration:(id)a3 withError:(id *)a4;
- (ANSTISPInferenceDescriptorV1)initWithCoder:(id)a3;
- (ANSTISPInferenceDescriptorV1)initWithConfiguration:(id)a3 error:(id *)a4;
- (ANSTISPInferenceDescriptorV1)initWithName:(id)a3 version:(unint64_t)a4 assetURL:(id)a5 assetType:(int64_t)a6 e5FunctionName:(id)a7 inputDescriptors:(id)a8 outputDescriptors:(id)a9 configuration:(id)a10 error:(id *)a11;
- (ANSTTensorDescriptor)outputBoxRegressionDescriptor;
- (ANSTTensorDescriptor)outputCenternessDescriptor;
- (ANSTTensorDescriptor)outputFaceAttributesDescriptor;
- (ANSTTensorDescriptor)outputFaceLandmarkDescriptor;
- (ANSTTensorDescriptor)outputFacePoseDescriptor;
- (ANSTTensorDescriptor)outputHairMapDescriptor;
- (ANSTTensorDescriptor)outputHandAssociationDescriptor;
- (ANSTTensorDescriptor)outputHandBoxRegressionDescriptor;
- (ANSTTensorDescriptor)outputHandCenternessDescriptor;
- (ANSTTensorDescriptor)outputHandLogitsDescriptor;
- (ANSTTensorDescriptor)outputHandPoseDescriptor;
- (ANSTTensorDescriptor)outputLogitsDescriptor;
- (ANSTTensorDescriptor)outputPersonMapDescriptor;
- (ANSTTensorDescriptor)outputPriorMaskMapDescriptor;
- (ANSTTensorDescriptor)outputSaliencyDescriptor;
- (ANSTTensorDescriptor)outputSalientFaceBoxRegressionDescriptor;
- (ANSTTensorDescriptor)outputSalientFaceCenternessDescriptor;
- (ANSTTensorDescriptor)outputSalientFaceLogitsDescriptor;
- (ANSTTensorDescriptor)outputSalientPersonMapDescriptor;
- (ANSTTensorDescriptor)outputSemanticMapDescriptor;
- (ANSTTensorDescriptor)outputSkinMapDescriptor;
- (ANSTTensorDescriptor)outputSkinToneDescriptor;
- (ANSTTensorDescriptor)outputSkyMapDescriptor;
- (ANSTTensorDescriptor)outputSmudgeConfidenceDescriptor;
- (ANSTTensorDescriptor)outputSubjectIDMapDescriptor;
- (id)newPostprocessorWithError:(id *)a3;
@end

@implementation ANSTISPInferenceDescriptorV1

- (ANSTISPInferenceDescriptorV1)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = ANSTISPInferenceDescriptorV1;
  return [(ANSTISPInferenceDescriptor *)&v4 initWithCoder:a3];
}

- (ANSTISPInferenceDescriptorV1)initWithName:(id)a3 version:(unint64_t)a4 assetURL:(id)a5 assetType:(int64_t)a6 e5FunctionName:(id)a7 inputDescriptors:(id)a8 outputDescriptors:(id)a9 configuration:(id)a10 error:(id *)a11
{
  v16 = a3;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  result = objc_msgSend_doesNotRecognizeSelector_(self, v22, a2);
  __break(1u);
  return result;
}

- (ANSTISPInferenceDescriptorV1)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (objc_msgSend_useE5(v6, v7, v8))
  {
    v11 = @"main";
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_msgSend_copy(v6, v9, v10);

  v13 = objc_opt_class();
  v15 = objc_msgSend__nameForConfiguration_withError_(v13, v14, v12, a4);
  if (!v15)
  {
    v27 = 0;
    v18 = 0;
LABEL_10:
    v22 = 0;
    v25 = 0;
    goto LABEL_12;
  }

  v16 = objc_opt_class();
  v18 = objc_msgSend__assetURLForConfiguration_withError_(v16, v17, v12, a4);
  if (!v18)
  {
    v27 = 0;
    goto LABEL_10;
  }

  v19 = objc_opt_class();
  v30 = 0;
  v31 = 0;
  InputDescriptors_outputDescriptors_forConfiguration_withError = objc_msgSend__getInputDescriptors_outputDescriptors_forConfiguration_withError_(v19, v20, &v31, &v30, v12, a4);
  v22 = v31;
  v25 = v30;
  if (InputDescriptors_outputDescriptors_forConfiguration_withError)
  {
    v26 = objc_msgSend_version(v12, v23, v24);
    v29.receiver = self;
    v29.super_class = ANSTISPInferenceDescriptorV1;
    self = [(ANSTISPInferenceDescriptor *)&v29 initWithName:v15 version:v26 assetURL:v18 assetType:2 e5FunctionName:v11 inputDescriptors:v22 outputDescriptors:v25 configuration:v12 error:a4];
    v27 = self;
  }

  else
  {
    v27 = 0;
  }

LABEL_12:

  return v27;
}

+ (id)_assetURLForConfiguration:(id)a3 withError:(id *)a4
{
  v40[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v8 = objc_msgSend_bundleForClass_(MEMORY[0x277CCA8D8], v7, a1);
  v10 = objc_msgSend_URLForResource_withExtension_subdirectory_(v8, v9, @"anst", @"mlmodelc", @"Models");

  if (v10)
  {
    if (objc_msgSend_useE5(v6, v11, v12))
    {
      objc_msgSend_URLByAppendingPathComponent_(v10, v13, @"v2_4.espresso.net");
    }

    else
    {
      objc_msgSend_URLByAppendingPathComponent_(v10, v13, @"model.espresso.net");
    }
    v14 = ;
    v16 = v14;
    if (v14)
    {
      v16 = v14;
      a4 = v16;
    }

    else
    {
      if (a4)
      {
        v26 = MEMORY[0x277CCA9B8];
        v27 = *MEMORY[0x277CCA050];
        v28 = *MEMORY[0x277CCA760];
        v37[0] = *MEMORY[0x277CCA068];
        v37[1] = v28;
        v38[0] = @"Unable to retrieve the asset URL.";
        v38[1] = v10;
        v37[2] = *MEMORY[0x277CCA170];
        v29 = objc_msgSend_stringByAppendingPathExtension_(@"anst", v15, @"mlmodelc");
        v31 = objc_msgSend_stringByAppendingPathComponent_(@"Models", v30, v29);
        v38[2] = v31;
        v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v32, v38, v37, 3);
        *a4 = objc_msgSend_errorWithDomain_code_userInfo_(v26, v34, v27, 4, v33);
      }

      a4 = 0;
    }
  }

  else
  {
    if (!a4)
    {
      goto LABEL_13;
    }

    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA050];
    v19 = *MEMORY[0x277CCA068];
    v40[0] = @"Unable to retrieve the base URL for the asset.";
    v20 = *MEMORY[0x277CCA170];
    v39[0] = v19;
    v39[1] = v20;
    v16 = objc_msgSend_stringByAppendingPathExtension_(@"anst", v11, @"mlmodelc");
    v22 = objc_msgSend_stringByAppendingPathComponent_(@"Models", v21, v16);
    v40[1] = v22;
    v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, v40, v39, 2);
    *a4 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v25, v18, 4, v24);

    a4 = 0;
  }

LABEL_13:
  v35 = *MEMORY[0x277D85DE8];

  return a4;
}

+ (BOOL)_getInputDescriptors:(id *)a3 outputDescriptors:(id *)a4 forConfiguration:(id)a5 withError:(id *)a6
{
  v333 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v12 = v9;
  if (!(a3 | a4))
  {
    LOBYTE(a6) = 1;
    goto LABEL_12;
  }

  objc_msgSend_useE5(v9, v10, v11);
  v297 = 0;
  bzero(v295, 0xE88uLL);
  bzero(v332, 0x32EA0uLL);
  v294 = 0;
  memset(v293, 0, sizeof(v293));
  v13 = AcANSTCreate(&v297, &v294);
  if (!v13)
  {
    v13 = AcANSTGetParams(v297, v332, v293, v295);
    if (!v13)
    {
      v24 = objc_alloc(MEMORY[0x277CBEB18]);
      v25 = 25;
      v18 = objc_msgSend_initWithCapacity_(v24, v26, 25);
      v28 = &v296;
      do
      {
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28);
        objc_msgSend_addObject_(v18, v30, v29);

        v28 += 8;
        --v25;
      }

      while (v25);
      if (v297)
      {
        AcANSTDestroy(v297);
      }

      if (a3)
      {
        v31 = [ANSTPixelBufferDescriptor alloc];
        v328 = *MEMORY[0x277CC4DE8];
        v329 = MEMORY[0x277CBEC10];
        v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v32, &v329, &v328, 1);
        v20 = objc_msgSend_initWithName_width_height_pixelFormatType_pixelBufferAttributes_error_(v31, v34, @"input_image", 512, 384, 1111970369, v33, a6);

        if (!v20)
        {
          goto LABEL_10;
        }

        v35 = [ANSTTensorDescriptor alloc];
        if (objc_msgSend_useE5(v12, v36, v37))
        {
          v40 = 104;
        }

        else
        {
          v40 = 102;
        }

        v327[0] = xmmword_22E661C58;
        v327[1] = unk_22E661C68;
        if (objc_msgSend_useE5(v12, v38, v39))
        {
          v42 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v35, v41, @"last_mask", v40, 4, v327, 64, a6);
        }

        else
        {
          v42 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v35, v41, @"last_mask", v40, 4, v327, 1, a6);
        }

        if (!v42)
        {
LABEL_9:

LABEL_10:
          LOBYTE(a6) = 0;
LABEL_11:

          goto LABEL_12;
        }

        v43 = v42;
        v44 = [ANSTTensorDescriptor alloc];
        if (objc_msgSend_useE5(v12, v45, v46))
        {
          v49 = 104;
        }

        else
        {
          v49 = 102;
        }

        v326[0] = xmmword_22E661C58;
        v326[1] = unk_22E661C68;
        if (objc_msgSend_useE5(v12, v47, v48))
        {
          v51 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v44, v50, @"last_salient_mask", v49, 4, v326, 64, a6);
        }

        else
        {
          v51 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v44, v50, @"last_salient_mask", v49, 4, v326, 1, a6);
        }

        if (!v51)
        {

          goto LABEL_9;
        }

        v53 = v51;
        v325[0] = v20;
        v325[1] = v43;
        v325[2] = v51;
        *a3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v52, v325, 3);
      }

      if (a4)
      {
        v54 = [ANSTTensorDescriptor alloc];
        if (objc_msgSend_useE5(v12, v55, v56))
        {
          v59 = 104;
        }

        else
        {
          v59 = 102;
        }

        v324[0] = xmmword_22E661AD8;
        v324[1] = unk_22E661AE8;
        if (objc_msgSend_useE5(v12, v57, v58))
        {
          v61 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v54, v60, @"logits@output", v59, 4, v324, 64, a6);
        }

        else
        {
          v61 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v54, v60, @"logits@output", v59, 4, v324, 1, a6);
        }

        if (!v61)
        {
          goto LABEL_10;
        }

        v62 = v61;
        v63 = [ANSTTensorDescriptor alloc];
        if (objc_msgSend_useE5(v12, v64, v65))
        {
          v68 = 104;
        }

        else
        {
          v68 = 102;
        }

        v323[0] = xmmword_22E661C38;
        v323[1] = unk_22E661C48;
        if (objc_msgSend_useE5(v12, v66, v67))
        {
          v70 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v63, v69, @"centerness@output", v68, 4, v323, 64, a6);
        }

        else
        {
          v70 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v63, v69, @"centerness@output", v68, 4, v323, 1, a6);
        }

        if (v70)
        {
          v71 = v70;
          v72 = [ANSTTensorDescriptor alloc];
          if (objc_msgSend_useE5(v12, v73, v74))
          {
            v77 = 104;
          }

          else
          {
            v77 = 102;
          }

          v322[0] = xmmword_22E661BB8;
          v322[1] = unk_22E661BC8;
          if (objc_msgSend_useE5(v12, v75, v76))
          {
            v79 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v72, v78, @"bbox_reg@output", v77, 4, v322, 64, a6);
          }

          else
          {
            v79 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v72, v78, @"bbox_reg@output", v77, 4, v322, 1, a6);
          }

          if (v79)
          {
            v80 = v79;
            v81 = [ANSTTensorDescriptor alloc];
            if (objc_msgSend_useE5(v12, v82, v83))
            {
              v86 = 104;
            }

            else
            {
              v86 = 102;
            }

            v321[0] = xmmword_22E661B18;
            v321[1] = unk_22E661B28;
            if (objc_msgSend_useE5(v12, v84, v85))
            {
              v88 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v81, v87, @"face_pose@output", v86, 4, v321, 64, a6);
            }

            else
            {
              v88 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v81, v87, @"face_pose@output", v86, 4, v321, 1, a6);
            }

            if (v88)
            {
              v89 = v88;
              v90 = [ANSTTensorDescriptor alloc];
              if (objc_msgSend_useE5(v12, v91, v92))
              {
                v95 = 104;
              }

              else
              {
                v95 = 102;
              }

              v320[0] = xmmword_22E661AF8;
              v320[1] = unk_22E661B08;
              if (objc_msgSend_useE5(v12, v93, v94))
              {
                v97 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v90, v96, @"face_attributes@output", v95, 4, v320, 64, a6);
              }

              else
              {
                v97 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v90, v96, @"face_attributes@output", v95, 4, v320, 1, a6);
              }

              if (v97)
              {
                v287 = v97;
                v98 = [ANSTTensorDescriptor alloc];
                if (objc_msgSend_useE5(v12, v99, v100))
                {
                  v103 = 104;
                }

                else
                {
                  v103 = 102;
                }

                v319[0] = xmmword_22E661B18;
                v319[1] = unk_22E661B28;
                if (objc_msgSend_useE5(v12, v101, v102))
                {
                  v105 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v98, v104, @"face_skintone@output", v103, 4, v319, 64, a6);
                }

                else
                {
                  v105 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v98, v104, @"face_skintone@output", v103, 4, v319, 1, a6);
                }

                if (v105)
                {
                  v289 = v105;
                  v106 = [ANSTTensorDescriptor alloc];
                  if (objc_msgSend_useE5(v12, v107, v108))
                  {
                    v111 = 104;
                  }

                  else
                  {
                    v111 = 102;
                  }

                  v318[0] = xmmword_22E661B38;
                  v318[1] = unk_22E661B48;
                  if (objc_msgSend_useE5(v12, v109, v110))
                  {
                    v113 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v106, v112, @"id_map@output", v111, 4, v318, 64, a6);
                  }

                  else
                  {
                    v113 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v106, v112, @"id_map@output", v111, 4, v318, 1, a6);
                  }

                  if (v113)
                  {
                    v288 = v113;
                    v114 = [ANSTTensorDescriptor alloc];
                    if (objc_msgSend_useE5(v12, v115, v116))
                    {
                      v119 = 104;
                    }

                    else
                    {
                      v119 = 102;
                    }

                    v317[0] = xmmword_22E661C38;
                    v317[1] = unk_22E661C48;
                    if (objc_msgSend_useE5(v12, v117, v118))
                    {
                      v121 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v114, v120, @"hand_logits@output", v119, 4, v317, 64, a6);
                    }

                    else
                    {
                      v121 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v114, v120, @"hand_logits@output", v119, 4, v317, 1, a6);
                    }

                    if (v121)
                    {
                      v286 = v121;
                      v122 = [ANSTTensorDescriptor alloc];
                      if (objc_msgSend_useE5(v12, v123, v124))
                      {
                        v127 = 104;
                      }

                      else
                      {
                        v127 = 102;
                      }

                      v316[0] = xmmword_22E661C38;
                      v316[1] = unk_22E661C48;
                      if (objc_msgSend_useE5(v12, v125, v126))
                      {
                        v129 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v122, v128, @"hand_ctrness@output", v127, 4, v316, 64, a6);
                      }

                      else
                      {
                        v129 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v122, v128, @"hand_ctrness@output", v127, 4, v316, 1, a6);
                      }

                      if (v129)
                      {
                        v285 = v129;
                        v130 = [ANSTTensorDescriptor alloc];
                        if (objc_msgSend_useE5(v12, v131, v132))
                        {
                          v135 = 104;
                        }

                        else
                        {
                          v135 = 102;
                        }

                        v315[0] = xmmword_22E661BB8;
                        v315[1] = unk_22E661BC8;
                        if (objc_msgSend_useE5(v12, v133, v134))
                        {
                          v137 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v130, v136, @"hand_bbox_reg@output", v135, 4, v315, 64, a6);
                        }

                        else
                        {
                          v137 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v130, v136, @"hand_bbox_reg@output", v135, 4, v315, 1, a6);
                        }

                        if (v137)
                        {
                          v284 = v137;
                          v138 = [ANSTTensorDescriptor alloc];
                          if (objc_msgSend_useE5(v12, v139, v140))
                          {
                            v143 = 104;
                          }

                          else
                          {
                            v143 = 102;
                          }

                          v314[0] = xmmword_22E661C38;
                          v314[1] = unk_22E661C48;
                          if (objc_msgSend_useE5(v12, v141, v142))
                          {
                            v145 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v138, v144, @"hand_pose@output", v143, 4, v314, 64, a6);
                          }

                          else
                          {
                            v145 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v138, v144, @"hand_pose@output", v143, 4, v314, 1, a6);
                          }

                          if (v145)
                          {
                            v283 = v145;
                            v146 = [ANSTTensorDescriptor alloc];
                            if (objc_msgSend_useE5(v12, v147, v148))
                            {
                              v151 = 104;
                            }

                            else
                            {
                              v151 = 102;
                            }

                            v313[0] = xmmword_22E661B58;
                            v313[1] = unk_22E661B68;
                            if (objc_msgSend_useE5(v12, v149, v150))
                            {
                              v153 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v146, v152, @"sf_cls_logits@output", v151, 4, v313, 64, a6);
                            }

                            else
                            {
                              v153 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v146, v152, @"sf_cls_logits@output", v151, 4, v313, 1, a6);
                            }

                            v282 = v153;
                            if (v153)
                            {
                              v154 = [ANSTTensorDescriptor alloc];
                              if (objc_msgSend_useE5(v12, v155, v156))
                              {
                                v159 = 104;
                              }

                              else
                              {
                                v159 = 102;
                              }

                              v312[0] = xmmword_22E661B58;
                              v312[1] = unk_22E661B68;
                              if (objc_msgSend_useE5(v12, v157, v158))
                              {
                                v161 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v154, v160, @"sf_ctrness@output", v159, 4, v312, 64, a6);
                              }

                              else
                              {
                                v161 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v154, v160, @"sf_ctrness@output", v159, 4, v312, 1, a6);
                              }

                              v281 = v161;
                              if (v161)
                              {
                                v162 = [ANSTTensorDescriptor alloc];
                                if (objc_msgSend_useE5(v12, v163, v164))
                                {
                                  v167 = 104;
                                }

                                else
                                {
                                  v167 = 102;
                                }

                                v311[0] = xmmword_22E661B78;
                                v311[1] = unk_22E661B88;
                                if (objc_msgSend_useE5(v12, v165, v166))
                                {
                                  v169 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v162, v168, @"sf_bbox_reg@output", v167, 4, v311, 64, a6);
                                }

                                else
                                {
                                  v169 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v162, v168, @"sf_bbox_reg@output", v167, 4, v311, 1, a6);
                                }

                                v280 = v169;
                                if (v169)
                                {
                                  v170 = [ANSTTensorDescriptor alloc];
                                  if (objc_msgSend_useE5(v12, v171, v172))
                                  {
                                    v175 = 104;
                                  }

                                  else
                                  {
                                    v175 = 102;
                                  }

                                  v310[0] = xmmword_22E661B98;
                                  v310[1] = unk_22E661BA8;
                                  if (objc_msgSend_useE5(v12, v173, v174))
                                  {
                                    v177 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v170, v176, @"face_landmark@output", v175, 4, v310, 64, a6);
                                  }

                                  else
                                  {
                                    v177 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v170, v176, @"face_landmark@output", v175, 4, v310, 1, a6);
                                  }

                                  v279 = v177;
                                  if (v177)
                                  {
                                    v178 = [ANSTTensorDescriptor alloc];
                                    if (objc_msgSend_useE5(v12, v179, v180))
                                    {
                                      v183 = 104;
                                    }

                                    else
                                    {
                                      v183 = 102;
                                    }

                                    v309[0] = xmmword_22E661BB8;
                                    v309[1] = unk_22E661BC8;
                                    if (objc_msgSend_useE5(v12, v181, v182))
                                    {
                                      v185 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v178, v184, @"hand_associations@output", v183, 4, v309, 64, a6);
                                    }

                                    else
                                    {
                                      v185 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v178, v184, @"hand_associations@output", v183, 4, v309, 1, a6);
                                    }

                                    v291 = v185;
                                    if (v185)
                                    {
                                      v186 = [ANSTTensorDescriptor alloc];
                                      if (objc_msgSend_useE5(v12, v187, v188))
                                      {
                                        v191 = 104;
                                      }

                                      else
                                      {
                                        v191 = 102;
                                      }

                                      v308[0] = xmmword_22E661BD8;
                                      v308[1] = unk_22E661BE8;
                                      if (objc_msgSend_useE5(v12, v189, v190))
                                      {
                                        v193 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v186, v192, @"smudge_predict@output", v191, 4, v308, 64, a6);
                                      }

                                      else
                                      {
                                        v193 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v186, v192, @"smudge_predict@output", v191, 4, v308, 1, a6);
                                      }

                                      v290 = v193;
                                      if (v193)
                                      {
                                        v194 = [ANSTTensorDescriptor alloc];
                                        if (objc_msgSend_useE5(v12, v195, v196))
                                        {
                                          v199 = 104;
                                        }

                                        else
                                        {
                                          v199 = 102;
                                        }

                                        v307[0] = xmmword_22E661C58;
                                        v307[1] = unk_22E661C68;
                                        if (objc_msgSend_useE5(v12, v197, v198))
                                        {
                                          v201 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v194, v200, @"prior_mask@output", v199, 4, v307, 64, a6);
                                        }

                                        else
                                        {
                                          v201 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v194, v200, @"prior_mask@output", v199, 4, v307, 1, a6);
                                        }

                                        v278 = v201;
                                        if (v201)
                                        {
                                          v202 = [ANSTTensorDescriptor alloc];
                                          if (objc_msgSend_useE5(v12, v203, v204))
                                          {
                                            v207 = 104;
                                          }

                                          else
                                          {
                                            v207 = 102;
                                          }

                                          v306[0] = xmmword_22E661BF8;
                                          v306[1] = unk_22E661C08;
                                          if (objc_msgSend_useE5(v12, v205, v206))
                                          {
                                            v209 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v202, v208, @"person@output", v207, 4, v306, 64, a6);
                                          }

                                          else
                                          {
                                            v209 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v202, v208, @"person@output", v207, 4, v306, 1, a6);
                                          }

                                          v275 = v209;
                                          if (v209)
                                          {
                                            v210 = [ANSTTensorDescriptor alloc];
                                            if (objc_msgSend_useE5(v12, v211, v212))
                                            {
                                              v215 = 104;
                                            }

                                            else
                                            {
                                              v215 = 102;
                                            }

                                            v305[0] = xmmword_22E661BF8;
                                            v305[1] = unk_22E661C08;
                                            if (objc_msgSend_useE5(v12, v213, v214))
                                            {
                                              v217 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v210, v216, @"salient_person@output", v215, 4, v305, 64, a6);
                                            }

                                            else
                                            {
                                              v217 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v210, v216, @"salient_person@output", v215, 4, v305, 1, a6);
                                            }

                                            v274 = v217;
                                            if (v217)
                                            {
                                              v218 = [ANSTTensorDescriptor alloc];
                                              if (objc_msgSend_useE5(v12, v219, v220))
                                              {
                                                v223 = 104;
                                              }

                                              else
                                              {
                                                v223 = 102;
                                              }

                                              v304[0] = xmmword_22E661BF8;
                                              v304[1] = unk_22E661C08;
                                              if (objc_msgSend_useE5(v12, v221, v222))
                                              {
                                                v225 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v218, v224, @"skin@output", v223, 4, v304, 64, a6);
                                              }

                                              else
                                              {
                                                v225 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v218, v224, @"skin@output", v223, 4, v304, 1, a6);
                                              }

                                              v273 = v225;
                                              if (v225)
                                              {
                                                v226 = [ANSTTensorDescriptor alloc];
                                                if (objc_msgSend_useE5(v12, v227, v228))
                                                {
                                                  v231 = 104;
                                                }

                                                else
                                                {
                                                  v231 = 102;
                                                }

                                                v303[0] = xmmword_22E661BF8;
                                                v303[1] = unk_22E661C08;
                                                if (objc_msgSend_useE5(v12, v229, v230))
                                                {
                                                  v233 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v226, v232, @"hair@output", v231, 4, v303, 64, a6);
                                                }

                                                else
                                                {
                                                  v233 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v226, v232, @"hair@output", v231, 4, v303, 1, a6);
                                                }

                                                v272 = v233;
                                                if (v233)
                                                {
                                                  v234 = [ANSTTensorDescriptor alloc];
                                                  if (objc_msgSend_useE5(v12, v235, v236))
                                                  {
                                                    v239 = 104;
                                                  }

                                                  else
                                                  {
                                                    v239 = 102;
                                                  }

                                                  v302[0] = xmmword_22E661BF8;
                                                  v302[1] = unk_22E661C08;
                                                  if (objc_msgSend_useE5(v12, v237, v238))
                                                  {
                                                    v241 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v234, v240, @"sky@output", v239, 4, v302, 64, a6);
                                                  }

                                                  else
                                                  {
                                                    v241 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v234, v240, @"sky@output", v239, 4, v302, 1, a6);
                                                  }

                                                  v277 = v241;
                                                  if (v241)
                                                  {
                                                    v242 = [ANSTTensorDescriptor alloc];
                                                    if (objc_msgSend_useE5(v12, v243, v244))
                                                    {
                                                      v247 = 104;
                                                    }

                                                    else
                                                    {
                                                      v247 = 102;
                                                    }

                                                    v301[0] = xmmword_22E661C18;
                                                    v301[1] = unk_22E661C28;
                                                    if (objc_msgSend_useE5(v12, v245, v246))
                                                    {
                                                      v249 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v242, v248, @"viseg@output", v247, 4, v301, 64, a6);
                                                    }

                                                    else
                                                    {
                                                      v249 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v242, v248, @"viseg@output", v247, 4, v301, 1, a6);
                                                    }

                                                    v276 = v249;
                                                    if (v249)
                                                    {
                                                      v250 = [ANSTTensorDescriptor alloc];
                                                      if (objc_msgSend_useE5(v12, v251, v252))
                                                      {
                                                        v255 = 104;
                                                      }

                                                      else
                                                      {
                                                        v255 = 102;
                                                      }

                                                      v300[0] = xmmword_22E661C38;
                                                      v300[1] = unk_22E661C48;
                                                      if (objc_msgSend_useE5(v12, v253, v254))
                                                      {
                                                        v257 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v250, v256, @"saliency@output", v255, 4, v300, 64, a6);
                                                      }

                                                      else
                                                      {
                                                        v257 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v250, v256, @"saliency@output", v255, 4, v300, 1, a6);
                                                      }

                                                      v292 = v257;
                                                      if (v257)
                                                      {
                                                        v258 = [ANSTTensorDescriptor alloc];
                                                        if (objc_msgSend_useE5(v12, v259, v260))
                                                        {
                                                          v263 = 104;
                                                        }

                                                        else
                                                        {
                                                          v263 = 102;
                                                        }

                                                        v299[0] = xmmword_22E661C58;
                                                        v299[1] = unk_22E661C68;
                                                        if (objc_msgSend_useE5(v12, v261, v262))
                                                        {
                                                          v265 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v258, v264, @"salient_person_prior_mask@output", v263, 4, v299, 64, a6);
                                                        }

                                                        else
                                                        {
                                                          v265 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v258, v264, @"salient_person_prior_mask@output", v263, 4, v299, 1, a6);
                                                        }

                                                        v267 = v265;
                                                        v268 = v265 != 0;
                                                        if (v265)
                                                        {
                                                          v298[0] = v62;
                                                          v298[1] = v71;
                                                          v298[2] = v80;
                                                          v298[3] = v89;
                                                          v298[4] = v287;
                                                          v298[5] = v289;
                                                          v298[6] = v288;
                                                          v298[7] = v286;
                                                          v298[8] = v285;
                                                          v298[9] = v284;
                                                          v298[10] = v283;
                                                          v298[11] = v282;
                                                          v298[12] = v281;
                                                          v298[13] = v280;
                                                          v298[14] = v279;
                                                          v298[15] = v291;
                                                          v298[16] = v290;
                                                          v298[17] = v278;
                                                          v298[18] = v275;
                                                          v298[19] = v274;
                                                          v298[20] = v273;
                                                          v298[21] = v272;
                                                          v298[22] = v277;
                                                          v298[23] = v276;
                                                          v298[24] = v292;
                                                          v298[25] = v265;
                                                          *a4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v266, v298, 26);
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v268 = 0;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v268 = 0;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v268 = 0;
                                                  }
                                                }

                                                else
                                                {
                                                  v268 = 0;
                                                }
                                              }

                                              else
                                              {
                                                v268 = 0;
                                              }
                                            }

                                            else
                                            {
                                              v268 = 0;
                                            }
                                          }

                                          else
                                          {
                                            v268 = 0;
                                          }
                                        }

                                        else
                                        {
                                          v268 = 0;
                                        }
                                      }

                                      else
                                      {
                                        v268 = 0;
                                      }
                                    }

                                    else
                                    {
                                      v268 = 0;
                                    }
                                  }

                                  else
                                  {
                                    v268 = 0;
                                  }
                                }

                                else
                                {
                                  v268 = 0;
                                }
                              }

                              else
                              {
                                v268 = 0;
                              }
                            }

                            else
                            {
                              v268 = 0;
                            }

                            v269 = v287;
                            v270 = v288;
                            v271 = v289;

                            v145 = v283;
                          }

                          else
                          {
                            v268 = 0;
                            v269 = v287;
                            v270 = v288;
                            v271 = v289;
                          }

                          if (!v268)
                          {
                            goto LABEL_10;
                          }

                          goto LABEL_259;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_10;
      }

LABEL_259:
      LOBYTE(a6) = 1;
      goto LABEL_11;
    }
  }

  v15 = v13;
  if (v297)
  {
    AcANSTDestroy(v297);
  }

  if (a6)
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA068];
    v331[0] = @"Unable to get underlying network metadata.";
    v330[0] = v17;
    v330[1] = @"AcReturn";
    v18 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v14, v15);
    v331[1] = v18;
    v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v331, v330, 2);
    *a6 = objc_msgSend_errorWithDomain_code_userInfo_(v16, v21, @"ANSTErrorDomain", 3, v20);
    goto LABEL_9;
  }

LABEL_12:

  v22 = *MEMORY[0x277D85DE8];
  return a6;
}

- (id)newPostprocessorWithError:(id *)a3
{
  v5 = [_ANSTISPInferencePostprocessorV1 alloc];

  return objc_msgSend_initWithInferenceDescriptor_error_(v5, v6, self, a3);
}

- (ANSTTensorDescriptor)outputLogitsDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 0);

  return v5;
}

- (ANSTTensorDescriptor)outputCenternessDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 1);

  return v5;
}

- (ANSTTensorDescriptor)outputBoxRegressionDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 2);

  return v5;
}

- (ANSTTensorDescriptor)outputFacePoseDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 3);

  return v5;
}

- (ANSTTensorDescriptor)outputFaceAttributesDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 4);

  return v5;
}

- (ANSTTensorDescriptor)outputSkinToneDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 5);

  return v5;
}

- (ANSTTensorDescriptor)outputSubjectIDMapDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 6);

  return v5;
}

- (ANSTTensorDescriptor)outputHandLogitsDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 7);

  return v5;
}

- (ANSTTensorDescriptor)outputHandCenternessDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 8);

  return v5;
}

- (ANSTTensorDescriptor)outputHandBoxRegressionDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 9);

  return v5;
}

- (ANSTTensorDescriptor)outputHandPoseDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 10);

  return v5;
}

- (ANSTTensorDescriptor)outputSalientFaceLogitsDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 11);

  return v5;
}

- (ANSTTensorDescriptor)outputSalientFaceCenternessDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 12);

  return v5;
}

- (ANSTTensorDescriptor)outputSalientFaceBoxRegressionDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 13);

  return v5;
}

- (ANSTTensorDescriptor)outputFaceLandmarkDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 14);

  return v5;
}

- (ANSTTensorDescriptor)outputHandAssociationDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 15);

  return v5;
}

- (ANSTTensorDescriptor)outputSmudgeConfidenceDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 16);

  return v5;
}

- (ANSTTensorDescriptor)outputPriorMaskMapDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 17);

  return v5;
}

- (ANSTTensorDescriptor)outputPersonMapDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 18);

  return v5;
}

- (ANSTTensorDescriptor)outputSalientPersonMapDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 19);

  return v5;
}

- (ANSTTensorDescriptor)outputSkinMapDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 20);

  return v5;
}

- (ANSTTensorDescriptor)outputHairMapDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 21);

  return v5;
}

- (ANSTTensorDescriptor)outputSkyMapDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 22);

  return v5;
}

- (ANSTTensorDescriptor)outputSemanticMapDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 23);

  return v5;
}

- (ANSTTensorDescriptor)outputSaliencyDescriptor
{
  v3 = objc_msgSend_outputDescriptors(self, a2, v2);
  v5 = objc_msgSend_objectAtIndex_(v3, v4, 24);

  return v5;
}

@end