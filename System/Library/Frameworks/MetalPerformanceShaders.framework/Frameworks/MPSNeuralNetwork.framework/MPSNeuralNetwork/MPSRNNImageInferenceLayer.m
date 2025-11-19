@interface MPSRNNImageInferenceLayer
- (MPSRNNImageInferenceLayer)copyWithZone:(NSZone *)zone device:(id)device;
- (MPSRNNImageInferenceLayer)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSRNNImageInferenceLayer)initWithDevice:(id)device rnnDescriptor:(const MPSRNNDescriptor *)rnnDescriptor;
- (MPSRNNImageInferenceLayer)initWithDevice:(id)device rnnDescriptors:(NSArray *)rnnDescriptors;
- (void)dealloc;
- (void)encodeBidirectionalSequenceToCommandBuffer:(id)commandBuffer sourceSequence:(NSArray *)sourceSequence destinationForwardImages:(NSArray *)destinationForwardImages destinationBackwardImages:(NSArray *)destinationBackwardImages;
- (void)encodeSequenceToCommandBuffer:(id)commandBuffer sourceImages:(NSArray *)sourceImages destinationImages:(NSArray *)destinationImages recurrentInputState:(MPSRNNRecurrentImageState *)recurrentInputState recurrentOutputStates:(NSMutableArray *)recurrentOutputStates;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSRNNImageInferenceLayer

- (MPSRNNImageInferenceLayer)initWithDevice:(id)device rnnDescriptor:(const MPSRNNDescriptor *)rnnDescriptor
{
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (rnnDescriptor)
    {
      if (device)
      {
        objc_msgSend_inputFeatureChannels(rnnDescriptor, a2, device, rnnDescriptor, v4, v5, v6, v7);
        if (objc_msgSend_inputFeatureChannels(rnnDescriptor, v11, v12, v13, v14, v15, v16, v17))
        {
          objc_msgSend_outputFeatureChannels(rnnDescriptor, v18, v19, v20, v21, v22, v23, v24);
          if (objc_msgSend_outputFeatureChannels(rnnDescriptor, v25, v26, v27, v28, v29, v30, v31))
          {
            goto LABEL_6;
          }

          if (MTLReportFailureTypeEnabled())
          {
            goto LABEL_36;
          }

LABEL_37:

          return 0;
        }

        if (!MTLReportFailureTypeEnabled())
        {
          goto LABEL_37;
        }
      }

      else if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_37;
      }
    }

    else if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_37;
    }

LABEL_36:
    v65 = objc_opt_class();
    NSStringFromClass(v65);
    MTLReportFailure();
    goto LABEL_37;
  }

LABEL_6:
  v66.receiver = self;
  v66.super_class = MPSRNNImageInferenceLayer;
  v32 = [(MPSCNNKernel *)&v66 initWithDevice:device];
  v33 = v32;
  if (v32)
  {
    v32->_numberOfLayers = 1;
    v32->layers = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
    v33->layerTypes = malloc_type_malloc(4uLL, 0x100004052888210uLL);
    v33->_inputFeatureChannels = objc_msgSend_inputFeatureChannels(rnnDescriptor, v34, v35, v36, v37, v38, v39, v40);
    v33->_outputFeatureChannels = objc_msgSend_outputFeatureChannels(rnnDescriptor, v41, v42, v43, v44, v45, v46, v47);
    v55 = objc_msgSend_layerSequenceDirection(rnnDescriptor, v48, v49, v50, v51, v52, v53, v54);
    v56 = 46;
    if (v55)
    {
      v57 = 46;
    }

    else
    {
      v57 = 45;
    }

    if (v55)
    {
      v56 = 45;
    }

    v58 = 49;
    if (v55)
    {
      v59 = 49;
    }

    else
    {
      v59 = 47;
    }

    if (v55)
    {
      v60 = 50;
    }

    else
    {
      v60 = 48;
    }

    if (v55)
    {
      v58 = 47;
      v61 = 48;
    }

    else
    {
      v61 = 50;
    }

    *(&v33->super.super.super.isa + OBJC_IVAR___MPSRNNRecurrentImageState_nLayers[v57]) = 1;
    *(&v33->super.super.super.isa + OBJC_IVAR___MPSRNNRecurrentImageState_nLayers[v56]) = 0;
    *(&v33->super.super.super.isa + OBJC_IVAR___MPSRNNRecurrentImageState_nLayers[v59]) = 0;
    *(&v33->super.super.super.isa + OBJC_IVAR___MPSRNNRecurrentImageState_nLayers[v60]) = 0;
    *(&v33->super.super.super.isa + OBJC_IVAR___MPSRNNRecurrentImageState_nLayers[v58]) = v33->layers;
    *(&v33->super.super.super.isa + OBJC_IVAR___MPSRNNRecurrentImageState_nLayers[v61]) = v33->layerTypes;
    *v33->layers = 0;
    *v33->layerTypes = 0;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *v33->layers = sub_239BBB70C(device, rnnDescriptor);
        layerTypes = v33->layerTypes;
        v63 = 2;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return v33;
        }

        *v33->layers = sub_239BBB8C4(device, rnnDescriptor);
        layerTypes = v33->layerTypes;
        v63 = 1;
      }

      *layerTypes = v63;
      return v33;
    }

    *v33->layers = sub_239BBB488(device, rnnDescriptor);
    *v33->layerTypes = 0;
  }

  return v33;
}

- (MPSRNNImageInferenceLayer)initWithDevice:(id)device rnnDescriptors:(NSArray *)rnnDescriptors
{
  v282 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.super.isa + v282) & 1) == 0)
  {
    if (rnnDescriptors)
    {
      if (device)
      {
        goto LABEL_4;
      }

      v13 = self;
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_62;
      }
    }

    else
    {
      v13 = self;
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_62;
      }
    }

    v280 = objc_opt_class();
    NSStringFromClass(v280);
LABEL_61:
    MTLReportFailure();
    goto LABEL_62;
  }

LABEL_4:
  v284.receiver = self;
  v284.super_class = MPSRNNImageInferenceLayer;
  v13 = [(MPSCNNKernel *)&v284 initWithDevice:device];
  if (!v13)
  {
    return v13;
  }

  v13->_numberOfLayers = objc_msgSend_count(rnnDescriptors, v6, v7, v8, v9, v10, v11, v12);
  p_nForwardLayers = &v13->nForwardLayers;
  v13->nForwardLayers = 0;
  p_nBackwardLayers = &v13->nBackwardLayers;
  v13->nBackwardLayers = 0;
  v13->backwardLayers = 0;
  v13->backwardLayerTypes = 0;
  v13->forwardLayers = 0;
  v13->forwardLayerTypes = 0;
  v13->layers = 0;
  v13->layerTypes = 0;
  numberOfLayers = v13->_numberOfLayers;
  if (!numberOfLayers)
  {
    return v13;
  }

  v13->layers = malloc_type_malloc(8 * numberOfLayers, 0x80040B8603338uLL);
  v13->layerTypes = malloc_type_malloc(4 * v13->_numberOfLayers, 0x100004052888210uLL);
  v22 = v13->_numberOfLayers;
  if (v22)
  {
    if (*(&v13->super.super.super.isa + v282))
    {
      goto LABEL_11;
    }

    objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v16, 0, v17, v18, v19, v20, v21);
    if (objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v23, 0, v24, v25, v26, v27, v28))
    {
      v35 = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v29, 0, v30, v31, v32, v33, v34);
      objc_msgSend_inputFeatureChannels(v35, v36, v37, v38, v39, v40, v41, v42);
      v49 = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v43, 0, v44, v45, v46, v47, v48);
      if (objc_msgSend_inputFeatureChannels(v49, v50, v51, v52, v53, v54, v55, v56))
      {
        v63 = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v57, 0, v58, v59, v60, v61, v62);
        objc_msgSend_outputFeatureChannels(v63, v64, v65, v66, v67, v68, v69, v70);
        v77 = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v71, 0, v72, v73, v74, v75, v76);
        if (objc_msgSend_outputFeatureChannels(v77, v78, v79, v80, v81, v82, v83, v84))
        {
LABEL_11:
          v85 = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v16, 0, v17, v18, v19, v20, v21);
          v13->_inputFeatureChannels = objc_msgSend_inputFeatureChannels(v85, v86, v87, v88, v89, v90, v91, v92);
          if (v13->_numberOfLayers == 1)
          {
            v99 = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v93, 0, v94, v95, v96, v97, v98);
            v13->_outputFeatureChannels = objc_msgSend_outputFeatureChannels(v99, v100, v101, v102, v103, v104, v105, v106);
          }

          *v13->layers = 0;
          *v13->layerTypes = 0;
          objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v93, 0, v94, v95, v96, v97, v98);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v114 = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v108, 0, v109, v110, v111, v112, v113);
          if (isKindOfClass)
          {
            v115 = sub_239BBB488(device, v114);
            v122 = 0;
          }

          else
          {
            objc_opt_class();
            v123 = objc_opt_isKindOfClass();
            v130 = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v124, 0, v125, v126, v127, v128, v129);
            if (v123)
            {
              v115 = sub_239BBB70C(device, v130);
              v122 = 2;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_20;
              }

              v131 = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v116, 0, v117, v118, v119, v120, v121);
              v115 = sub_239BBB8C4(device, v131);
              v122 = 1;
            }
          }

          *v13->layers = v115;
          *v13->layerTypes = v122;
LABEL_20:
          v132 = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v116, 0, v117, v118, v119, v120, v121);
          v140 = objc_msgSend_layerSequenceDirection(v132, v133, v134, v135, v136, v137, v138, v139);
          v147 = &v13->nForwardLayers;
          if (v140)
          {
            v147 = &v13->nBackwardLayers;
          }

          ++*v147;
          v22 = v13->_numberOfLayers;
          if (v22 >= 2)
          {
            v148 = 1;
            while (1)
            {
              if ((*(&v13->super.super.super.isa + v282) & 1) == 0)
              {
                objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v141, v148, v142, v143, v144, v145, v146);
                if (!objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v167, v148, v168, v169, v170, v171, v172))
                {
                  goto LABEL_55;
                }

                v179 = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v173, v148, v174, v175, v176, v177, v178);
                objc_msgSend_inputFeatureChannels(v179, v180, v181, v182, v183, v184, v185, v186);
                v193 = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v187, v148, v188, v189, v190, v191, v192);
                if (!objc_msgSend_inputFeatureChannels(v193, v194, v195, v196, v197, v198, v199, v200))
                {
                  goto LABEL_57;
                }

                v207 = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v201, v148, v202, v203, v204, v205, v206);
                objc_msgSend_outputFeatureChannels(v207, v208, v209, v210, v211, v212, v213, v214);
                v221 = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v215, v148, v216, v217, v218, v219, v220);
                if (!objc_msgSend_outputFeatureChannels(v221, v222, v223, v224, v225, v226, v227, v228))
                {
                  goto LABEL_59;
                }
              }

              if (v148 == v13->_numberOfLayers - 1)
              {
                v229 = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v141, v148, v142, v143, v144, v145, v146);
                v13->_outputFeatureChannels = objc_msgSend_outputFeatureChannels(v229, v230, v231, v232, v233, v234, v235, v236);
              }

              v13->layers[v148] = 0;
              v13->layerTypes[v148] = 0;
              objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v141, v148, v142, v143, v144, v145, v146);
              objc_opt_class();
              v237 = objc_opt_isKindOfClass();
              v244 = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v238, v148, v239, v240, v241, v242, v243);
              if (v237)
              {
                v149 = sub_239BBB488(device, v244);
                v156 = 0;
              }

              else
              {
                objc_opt_class();
                v245 = objc_opt_isKindOfClass();
                v252 = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v246, v148, v247, v248, v249, v250, v251);
                if (v245)
                {
                  v149 = sub_239BBB70C(device, v252);
                  v156 = 2;
                }

                else
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    goto LABEL_26;
                  }

                  v253 = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v150, v148, v151, v152, v153, v154, v155);
                  v149 = sub_239BBB8C4(device, v253);
                  v156 = 1;
                }
              }

              v13->layers[v148] = v149;
              v13->layerTypes[v148] = v156;
LABEL_26:
              v157 = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v150, v148, v151, v152, v153, v154, v155);
              v165 = objc_msgSend_layerSequenceDirection(v157, v158, v159, v160, v161, v162, v163, v164);
              v166 = &v13->nForwardLayers;
              if (v165)
              {
                v166 = &v13->nBackwardLayers;
              }

              ++*v166;
              ++v148;
              v22 = v13->_numberOfLayers;
              if (v148 >= v22)
              {
                goto LABEL_40;
              }
            }
          }

          goto LABEL_40;
        }

LABEL_59:
        if (MTLReportFailureTypeEnabled())
        {
          goto LABEL_60;
        }

LABEL_62:

        return 0;
      }

LABEL_57:
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_62;
      }
    }

    else
    {
LABEL_55:
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_62;
      }
    }

LABEL_60:
    v281 = objc_opt_class();
    NSStringFromClass(v281);
    goto LABEL_61;
  }

LABEL_40:
  if (*p_nForwardLayers == v22)
  {
    v13->forwardLayerTypes = v13->layerTypes;
    v13->forwardLayers = v13->layers;
  }

  else if (*p_nBackwardLayers == v22)
  {
    v13->backwardLayerTypes = v13->layerTypes;
    v13->backwardLayers = v13->layers;
  }

  else
  {
    v13->backwardLayers = malloc_type_malloc(8 * *p_nBackwardLayers, 0x80040B8603338uLL);
    v13->backwardLayerTypes = malloc_type_malloc(4 * *p_nBackwardLayers, 0x100004052888210uLL);
    v13->forwardLayers = malloc_type_malloc(8 * *p_nForwardLayers, 0x80040B8603338uLL);
    v13->forwardLayerTypes = malloc_type_malloc(4 * *p_nForwardLayers, 0x100004052888210uLL);
    if (v13->_numberOfLayers)
    {
      v260 = 0;
      v261 = 0;
      v262 = 0;
      for (i = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v254, 0, v255, v256, v257, v258, v259); ; i = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v272, v260, v273, v274, v275, v276, v277))
      {
        v271 = objc_msgSend_layerSequenceDirection(i, v264, v265, v266, v267, v268, v269, v270);
        v278 = v13->layers[v260];
        if (v271)
        {
          v13->backwardLayers[v261] = v278;
          v13->backwardLayerTypes[v261++] = v13->layerTypes[v260];
          if (++v260 >= v13->_numberOfLayers)
          {
            return v13;
          }
        }

        else
        {
          v13->forwardLayers[v262] = v278;
          v13->forwardLayerTypes[v262++] = v13->layerTypes[v260];
          if (++v260 >= v13->_numberOfLayers)
          {
            return v13;
          }
        }
      }
    }
  }

  return v13;
}

- (void)dealloc
{
  numberOfLayers = self->_numberOfLayers;
  if (numberOfLayers >= 1)
  {
    for (i = 0; i < numberOfLayers; ++i)
    {
      v8 = self->layers[i];
      v9 = self->layerTypes[i];
      if (v9 == 2)
      {
        if (!v8)
        {
          continue;
        }

        v13 = v8[11];
        if (v13)
        {
          free(v13);
        }

        v5 = 41;
        v6 = 42;
        v7 = 48;
      }

      else if (v9 == 1)
      {
        if (!v8)
        {
          continue;
        }

        v12 = v8[11];
        if (v12)
        {
          free(v12);
        }

        v5 = 19;
        v6 = 20;
        v7 = 21;
      }

      else
      {
        if (v9)
        {
          v10 = 1;
        }

        else
        {
          v10 = v8 == 0;
        }

        if (v10)
        {
          continue;
        }

        v11 = v8[11];
        if (v11)
        {
          free(v11);
        }

        v5 = 17;
        v6 = 12;
        v7 = 13;
      }

      free(v8);
      numberOfLayers = self->_numberOfLayers;
    }
  }

  backwardLayerTypes = self->backwardLayerTypes;
  if (backwardLayerTypes && self->layerTypes != backwardLayerTypes)
  {
    free(backwardLayerTypes);
  }

  backwardLayers = self->backwardLayers;
  if (backwardLayers && backwardLayers != self->layers)
  {
    free(backwardLayers);
  }

  forwardLayerTypes = self->forwardLayerTypes;
  if (forwardLayerTypes && self->layerTypes != forwardLayerTypes)
  {
    free(forwardLayerTypes);
  }

  forwardLayers = self->forwardLayers;
  if (forwardLayers && forwardLayers != self->layers)
  {
    free(forwardLayers);
  }

  layerTypes = self->layerTypes;
  if (layerTypes)
  {
    free(layerTypes);
  }

  layers = self->layers;
  if (layers)
  {
    free(layers);
  }

  v20.receiver = self;
  v20.super_class = MPSRNNImageInferenceLayer;
  [(MPSCNNKernel *)&v20 dealloc];
}

- (MPSRNNImageInferenceLayer)copyWithZone:(NSZone *)zone device:(id)device
{
  v218.receiver = self;
  v218.super_class = MPSRNNImageInferenceLayer;
  v7 = [MPSCNNKernel copyWithZone:sel_copyWithZone_device_ device:?];
  v8 = v7;
  if (!v7)
  {
    return v8;
  }

  v7->_inputFeatureChannels = self->_inputFeatureChannels;
  v7->_outputFeatureChannels = self->_outputFeatureChannels;
  v7->_numberOfLayers = self->_numberOfLayers;
  v7->_recurrentOutputIsTemporary = self->_recurrentOutputIsTemporary;
  v7->_storeAllIntermediateStates = self->_storeAllIntermediateStates;
  v7->_bidirectionalCombineMode = self->_bidirectionalCombineMode;
  v7->layers = 0;
  v7->layerTypes = 0;
  p_forwardLayers = &v7->forwardLayers;
  v7->forwardLayers = 0;
  v7->forwardLayerTypes = 0;
  p_backwardLayers = &v7->backwardLayers;
  v7->backwardLayers = 0;
  v7->backwardLayerTypes = 0;
  p_nForwardLayers = &v7->nForwardLayers;
  v7->nForwardLayers = 0;
  p_nBackwardLayers = &v7->nBackwardLayers;
  v7->nBackwardLayers = 0;
  numberOfLayers = self->_numberOfLayers;
  if (!numberOfLayers || !self->layers || !self->layerTypes)
  {
    return v8;
  }

  v10 = malloc_type_malloc(4 * numberOfLayers, 0x100004052888210uLL);
  v8->layerTypes = v10;
  if (!v10)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_70;
    }

    goto LABEL_71;
  }

  memcpy(v10, self->layerTypes, 4 * self->_numberOfLayers);
  v11 = malloc_type_malloc(8 * self->_numberOfLayers, 0x80040B8603338uLL);
  v8->layers = v11;
  if (!v11)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_70;
    }

    goto LABEL_71;
  }

  nForwardLayers = self->nForwardLayers;
  if (nForwardLayers)
  {
    v13 = malloc_type_malloc(4 * nForwardLayers, 0x100004052888210uLL);
    v8->forwardLayerTypes = v13;
    if (!v13)
    {
      if (MTLReportFailureTypeEnabled())
      {
        goto LABEL_70;
      }

      goto LABEL_71;
    }

    v14 = malloc_type_malloc(8 * self->nForwardLayers, 0x80040B8603338uLL);
    *p_forwardLayers = v14;
    if (!v14)
    {
      if (MTLReportFailureTypeEnabled())
      {
        goto LABEL_70;
      }

      goto LABEL_71;
    }

    memcpy(v8->forwardLayerTypes, self->forwardLayerTypes, 4 * self->nForwardLayers);
  }

  nBackwardLayers = self->nBackwardLayers;
  if (!nBackwardLayers)
  {
    goto LABEL_15;
  }

  v16 = malloc_type_malloc(4 * nBackwardLayers, 0x100004052888210uLL);
  v8->backwardLayerTypes = v16;
  if (!v16)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_70;
    }

    goto LABEL_71;
  }

  v17 = malloc_type_malloc(8 * self->nBackwardLayers, 0x80040B8603338uLL);
  *p_backwardLayers = v17;
  if (!v17)
  {
    if (MTLReportFailureTypeEnabled())
    {
LABEL_70:
      v212 = objc_opt_class();
      NSStringFromClass(v212);
      MTLReportFailure();
    }

LABEL_71:

    return 0;
  }

  memcpy(v8->backwardLayerTypes, self->backwardLayerTypes, 4 * self->nBackwardLayers);
LABEL_15:
  if (self->_numberOfLayers)
  {
    v18 = 0;
    while (1)
    {
      v20 = self->layerTypes[v18];
      if (v20 == 2)
      {
        break;
      }

      if (v20 == 1)
      {
        v56 = self->layers[v18];
        v57 = (*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[2];
        v58 = malloc_type_malloc(0x108uLL, 0x10A0040E57BB8CDuLL);
        if (!v58)
        {
          if (MTLReportFailureTypeEnabled())
          {
            goto LABEL_56;
          }

          goto LABEL_57;
        }

        v64 = v58;
        v65 = *(v56 + 1);
        *v58 = *v56;
        v58[1] = v65;
        v66 = *(v56 + 2);
        v67 = *(v56 + 3);
        v68 = *(v56 + 5);
        v58[4] = *(v56 + 4);
        v58[5] = v68;
        v58[2] = v66;
        v58[3] = v67;
        *v58 = objc_msgSend_copyWithZone_device_(*v56, v59, zone, device, v60, v61, v62, v63);
        *(v64 + 1) = objc_msgSend_copyWithZone_device_(*(v56 + 1), v69, zone, device, v70, v71, v72, v73);
        *(v64 + 2) = objc_msgSend_copyWithZone_device_(*(v56 + 2), v74, zone, device, v75, v76, v77, v78);
        *(v64 + 12) = objc_msgSend_copyWithZone_device_(*(v56 + 12), v79, zone, device, v80, v81, v82, v83);
        *(v64 + 13) = objc_msgSend_copyWithZone_device_(*(v56 + 13), v84, zone, device, v85, v86, v87, v88);
        *(v64 + 14) = objc_msgSend_copyWithZone_device_(*(v56 + 14), v89, zone, device, v90, v91, v92, v93);
        *(v64 + 15) = objc_msgSend_copyWithZone_device_(*(v56 + 15), v94, zone, device, v95, v96, v97, v98);
        *(v64 + 16) = objc_msgSend_copyWithZone_device_(*(v56 + 16), v99, zone, device, v100, v101, v102, v103);
        *(v64 + 17) = objc_msgSend_copyWithZone_device_(*(v56 + 17), v104, zone, device, v105, v106, v107, v108);
        *(v64 + 18) = objc_msgSend_copyWithZone_device_(*(v56 + 18), v109, zone, device, v110, v111, v112, v113);
        *(v64 + 19) = sub_239BDA634(*(v56 + 19), device, v57);
        *(v64 + 20) = sub_239BDA634(*(v56 + 20), device, v57);
        *(v64 + 21) = sub_239BDA634(*(v56 + 21), device, v57);
        *(v64 + 248) = v56[248];
        *(v64 + 249) = *(v56 + 249);
        *(v64 + 63) = *(v56 + 63);
        *(v64 + 256) = v56[256];
        v114 = *(v56 + 11);
        *(v64 + 24) = *(v56 + 24);
        v64[11] = v114;
        v115 = *(v56 + 27);
        *(v64 + 200) = *(v56 + 200);
        *(v64 + 27) = v115;
        v116 = *(v56 + 30);
        v64[14] = *(v56 + 14);
        *(v64 + 30) = v116;
        v8->layers[v18] = v64;
        v55 = v8->layers[v18];
        if (!v55)
        {
          goto LABEL_18;
        }
      }

      else if (v20)
      {
        v8->layers[v18] = 0;
        v55 = v8->layers[v18];
        if (!v55)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v21 = self->layers[v18];
        v22 = (*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[2];
        v23 = malloc_type_malloc(0x98uLL, 0x10A0040D60EB3F0uLL);
        if (!v23)
        {
          if (MTLReportFailureTypeEnabled())
          {
            goto LABEL_56;
          }

          goto LABEL_57;
        }

        v29 = v23;
        v30 = *(v21 + 1);
        *v23 = *v21;
        v23[1] = v30;
        v31 = *(v21 + 2);
        v32 = *(v21 + 3);
        v33 = *(v21 + 5);
        v23[4] = *(v21 + 4);
        v23[5] = v33;
        v23[2] = v31;
        v23[3] = v32;
        *v23 = objc_msgSend_copyWithZone_device_(*v21, v24, zone, device, v25, v26, v27, v28);
        *(v29 + 1) = objc_msgSend_copyWithZone_device_(*(v21 + 1), v34, zone, device, v35, v36, v37, v38);
        *(v29 + 2) = objc_msgSend_copyWithZone_device_(*(v21 + 2), v39, zone, device, v40, v41, v42, v43);
        *(v29 + 12) = objc_msgSend_copyWithZone_device_(*(v21 + 12), v44, zone, device, v45, v46, v47, v48);
        *(v29 + 13) = objc_msgSend_copyWithZone_device_(*(v21 + 13), v49, zone, device, v50, v51, v52, v53);
        v54 = *(v21 + 7);
        *(v29 + 16) = *(v21 + 16);
        v29[7] = v54;
        *(v29 + 144) = *(v21 + 144);
        *(v29 + 17) = sub_239BDA634(*(v21 + 17), device, v22);
        v8->layers[v18] = v29;
        v55 = v8->layers[v18];
        if (!v55)
        {
          goto LABEL_18;
        }
      }

LABEL_46:
      if (*(self->layers[v18] + 8))
      {
        v209 = p_nBackwardLayers;
        v210 = *p_nBackwardLayers;
        v211 = p_backwardLayers;
        if (self->nBackwardLayers <= *p_nBackwardLayers)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v209 = p_nForwardLayers;
        v210 = *p_nForwardLayers;
        v211 = p_forwardLayers;
        if (self->nForwardLayers <= *p_nForwardLayers)
        {
          goto LABEL_18;
        }
      }

      v19 = *v211;
      *v209 = v210 + 1;
      v19[v210] = v55;
LABEL_18:
      if (++v18 >= self->_numberOfLayers)
      {
        return v8;
      }
    }

    v117 = self->layers[v18];
    v118 = (*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[2];
    v119 = malloc_type_malloc(0x1A8uLL, 0x10A0040C2E34A0CuLL);
    if (v119)
    {
      v125 = v119;
      v126 = *(v117 + 1);
      *v119 = *v117;
      v119[1] = v126;
      v127 = *(v117 + 2);
      v128 = *(v117 + 3);
      v129 = *(v117 + 5);
      v119[4] = *(v117 + 4);
      v119[5] = v129;
      v119[2] = v127;
      v119[3] = v128;
      *v119 = objc_msgSend_copyWithZone_device_(*v117, v120, zone, device, v121, v122, v123, v124);
      *(v125 + 1) = objc_msgSend_copyWithZone_device_(*(v117 + 1), v130, zone, device, v131, v132, v133, v134);
      *(v125 + 2) = objc_msgSend_copyWithZone_device_(*(v117 + 2), v135, zone, device, v136, v137, v138, v139);
      v140 = *(v117 + 136);
      *(v125 + 19) = *(v117 + 19);
      *(v125 + 136) = v140;
      *(v125 + 160) = v117[160];
      *(v125 + 12) = objc_msgSend_copyWithZone_device_(*(v117 + 12), v141, zone, device, v142, v143, v144, v145);
      *(v125 + 13) = objc_msgSend_copyWithZone_device_(*(v117 + 13), v146, zone, device, v147, v148, v149, v150);
      *(v125 + 14) = objc_msgSend_copyWithZone_device_(*(v117 + 14), v151, zone, device, v152, v153, v154, v155);
      *(v125 + 16) = sub_239BDA634(*(v117 + 16), device, v118);
      *(v125 + 15) = sub_239BDA634(*(v117 + 15), device, v118);
      if (v117[417] == 1)
      {
        v161 = *(v125 + 13);
      }

      else
      {
        v161 = 0;
      }

      v162 = *(v117 + 13);
      *(v125 + 28) = *(v117 + 28);
      v125[13] = v162;
      *(v125 + 232) = v117[232];
      *(v125 + 21) = objc_msgSend_copyWithZone_device_(*(v117 + 21), v156, zone, device, v157, v158, v159, v160);
      if (v161)
      {
        v168 = v161;
      }

      else
      {
        v168 = objc_msgSend_copyWithZone_device_(*(v117 + 22), v163, zone, device, v164, v165, v166, v167);
      }

      *(v125 + 22) = v168;
      *(v125 + 23) = objc_msgSend_copyWithZone_device_(*(v117 + 23), v169, zone, device, v170, v171, v172, v173);
      *(v125 + 25) = sub_239BDA634(*(v117 + 25), device, v118);
      *(v125 + 24) = sub_239BDA634(*(v117 + 24), device, v118);
      v174 = *(v117 + 280);
      *(v125 + 37) = *(v117 + 37);
      *(v125 + 280) = v174;
      *(v125 + 304) = v117[304];
      *(v125 + 30) = objc_msgSend_copyWithZone_device_(*(v117 + 30), v175, zone, device, v176, v177, v178, v179);
      if (v161)
      {
        v185 = v161;
      }

      else
      {
        v185 = objc_msgSend_copyWithZone_device_(*(v117 + 31), v180, zone, device, v181, v182, v183, v184);
      }

      *(v125 + 31) = v185;
      *(v125 + 32) = objc_msgSend_copyWithZone_device_(*(v117 + 32), v186, zone, device, v187, v188, v189, v190);
      *(v125 + 34) = sub_239BDA634(*(v117 + 34), device, v118);
      *(v125 + 33) = sub_239BDA634(*(v117 + 33), device, v118);
      v191 = *(v117 + 22);
      *(v125 + 46) = *(v117 + 46);
      v125[22] = v191;
      *(v125 + 376) = v117[376];
      *(v125 + 39) = objc_msgSend_copyWithZone_device_(*(v117 + 39), v192, zone, device, v193, v194, v195, v196);
      if (v161)
      {
        v202 = v161;
      }

      else
      {
        v202 = objc_msgSend_copyWithZone_device_(*(v117 + 40), v197, zone, device, v198, v199, v200, v201);
      }

      *(v125 + 40) = v202;
      *(v125 + 41) = objc_msgSend_copyWithZone_device_(*(v117 + 41), v203, zone, device, v204, v205, v206, v207);
      *(v125 + 43) = sub_239BDA634(*(v117 + 43), device, v118);
      *(v125 + 42) = sub_239BDA634(*(v117 + 42), device, v118);
      v208 = *(v117 + 392);
      *(v125 + 51) = *(v117 + 51);
      *(v125 + 392) = v208;
      *(v125 + 416) = v117[416];
      *(v125 + 417) = v117[417];
      *(v125 + 419) = v117[419];
      *(v125 + 105) = *(v117 + 105);
      *(v125 + 48) = 0;
      if (*(v117 + 48))
      {
        MPSDevice::GetMPSDevice();
        *(v125 + 48) = 0;
      }

      v8->layers[v18] = v125;
      v55 = v8->layers[v18];
      if (!v55)
      {
        goto LABEL_18;
      }

      goto LABEL_46;
    }

    if (MTLReportFailureTypeEnabled())
    {
LABEL_56:
      MTLReportFailure();
    }

LABEL_57:
    v8->layers[v18] = 0;
    v55 = v8->layers[v18];
    if (!v55)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

  return v8;
}

- (MPSRNNImageInferenceLayer)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v710.receiver = self;
  v710.super_class = MPSRNNImageInferenceLayer;
  v5 = [MPSCNNKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v12 = v5;
  if (!v5)
  {
    return v12;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 != 0x10000)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_152;
    }

LABEL_150:
    v668 = objc_opt_class();
    NSStringFromClass(v668);
LABEL_151:
    MTLReportFailure();
    goto LABEL_152;
  }

  v5->_inputFeatureChannels = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"kMPSRNNLayer._inputFeatureChannels", v7, v8, v9, v10, v11);
  v12->_outputFeatureChannels = objc_msgSend_decodeInt64ForKey_(aDecoder, v13, @"kMPSRNNLayer._outputFeatureChannels", v14, v15, v16, v17, v18);
  v12->_numberOfLayers = objc_msgSend_decodeInt64ForKey_(aDecoder, v19, @"kMPSRNNLayer._numberOfLayers", v20, v21, v22, v23, v24);
  v12->_recurrentOutputIsTemporary = objc_msgSend_decodeBoolForKey_(aDecoder, v25, @"kMPSRNNLayer._recurrentOutputIsTemporary", v26, v27, v28, v29, v30);
  v12->_storeAllIntermediateStates = objc_msgSend_decodeBoolForKey_(aDecoder, v31, @"kMPSRNNLayer._storeAllIntermediateStates", v32, v33, v34, v35, v36);
  v12->_bidirectionalCombineMode = objc_msgSend_decodeInt64ForKey_(aDecoder, v37, @"kMPSRNNLayer._bidirectionalCombineMode", v38, v39, v40, v41, v42);
  v12->layers = 0;
  v12->layerTypes = 0;
  v12->forwardLayers = 0;
  v12->forwardLayerTypes = 0;
  v12->backwardLayers = 0;
  v12->backwardLayerTypes = 0;
  v12->nForwardLayers = 0;
  p_nBackwardLayers = &v12->nBackwardLayers;
  v12->nBackwardLayers = 0;
  numberOfLayers = v12->_numberOfLayers;
  if (!numberOfLayers)
  {
    return v12;
  }

  p_nForwardLayers = &v12->nForwardLayers;
  v12->layerTypes = malloc_type_malloc(4 * numberOfLayers, 0x100004052888210uLL);
  v44 = malloc_type_malloc(8 * v12->_numberOfLayers, 0x80040B8603338uLL);
  v12->layers = v44;
  if (!v12->layerTypes || !v44)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_152;
    }

    goto LABEL_150;
  }

  v709 = 0;
  v708 = 0;
  v706 = sub_239BCD898(aDecoder, @"kMPSRNNLayer.layerTypes", &v709, &v708, v45, v46, v47, v48);
  if (v709 != v12->_numberOfLayers || !v708)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_152;
    }

    goto LABEL_187;
  }

  v49 = &v12->nForwardLayers;
  if (!v709)
  {
LABEL_154:
    v670 = v49;
    free(v706);
    if (!*v670)
    {
LABEL_157:
      if (!*p_nBackwardLayers)
      {
LABEL_160:
        *p_nForwardLayers = 0;
        *p_nBackwardLayers = 0;
        v675 = v12->_numberOfLayers;
        if (!v675)
        {
          return v12;
        }

        v676 = 0;
        while (1)
        {
          v678 = v12->layerTypes[v676];
          v679 = v12->layers[v676];
          if (v679 && v679[8])
          {
            backwardLayerTypes = v12->backwardLayerTypes;
            if (backwardLayerTypes)
            {
              backwardLayerTypes[*p_nBackwardLayers] = v678;
            }

            backwardLayers = v12->backwardLayers;
            v682 = &v12->nBackwardLayers;
            if (!backwardLayers)
            {
              goto LABEL_163;
            }
          }

          else
          {
            forwardLayerTypes = v12->forwardLayerTypes;
            if (forwardLayerTypes)
            {
              forwardLayerTypes[*p_nForwardLayers] = v678;
            }

            backwardLayers = v12->forwardLayers;
            v682 = &v12->nForwardLayers;
            if (!backwardLayers)
            {
              goto LABEL_163;
            }
          }

          v677 = (*v682)++;
          backwardLayers[v677] = v679;
          v675 = v12->_numberOfLayers;
LABEL_163:
          if (++v676 >= v675)
          {
            return v12;
          }
        }
      }

      v673 = malloc_type_malloc(4 * *p_nBackwardLayers, 0x100004052888210uLL);
      v12->backwardLayerTypes = v673;
      if (v673)
      {
        v674 = malloc_type_malloc(8 * *p_nBackwardLayers, 0x80040B8603338uLL);
        v12->backwardLayers = v674;
        if (!v674)
        {
          if (MTLReportFailureTypeEnabled())
          {
            goto LABEL_187;
          }

          goto LABEL_152;
        }

        goto LABEL_160;
      }

      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_152;
      }

      goto LABEL_187;
    }

    v671 = malloc_type_malloc(4 * *v670, 0x100004052888210uLL);
    v12->forwardLayerTypes = v671;
    if (v671)
    {
      v672 = malloc_type_malloc(8 * *p_nForwardLayers, 0x80040B8603338uLL);
      v12->forwardLayers = v672;
      if (v672)
      {
        goto LABEL_157;
      }

      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_152;
      }
    }

    else if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_152;
    }

LABEL_187:
    v684 = objc_opt_class();
    NSStringFromClass(v684);
    goto LABEL_151;
  }

  v50 = 0;
  v51 = 1;
  v52 = 1;
  v53 = 1;
  while (1)
  {
    v54 = *(v706 + v50);
    v12->layerTypes[v50] = v54;
    if (v54 >= 3)
    {
      break;
    }

    if (v54 == 2)
    {
      if (!v52)
      {
        v56 = 0;
        v53 = 0;
        goto LABEL_132;
      }

      v227 = malloc_type_calloc(1uLL, 0x1A8uLL, 0x10A0040C2E34A0CuLL);
      if (v227)
      {
        v56 = v227;
        sub_239BDA7A4(aDecoder, v227, v50, &v708);
        v228 = objc_alloc(MEMORY[0x277CCACA8]);
        v697 = objc_msgSend_initWithFormat_(v228, v229, @"%@%d", v230, v231, v232, v233, v234, @"MPSRNNLayer.LSTM.inputGate", v50);
        v235 = objc_alloc(MEMORY[0x277CCACA8]);
        v703 = objc_msgSend_initWithFormat_(v235, v236, @"%@%d", v237, v238, v239, v240, v241, @"MPSRNNLayer.LSTM.forgetGate", v50);
        v242 = objc_alloc(MEMORY[0x277CCACA8]);
        v701 = objc_msgSend_initWithFormat_(v242, v243, @"%@%d", v244, v245, v246, v247, v248, @"MPSRNNLayer.LSTM.cellGate", v50);
        v249 = objc_alloc(MEMORY[0x277CCACA8]);
        v699 = objc_msgSend_initWithFormat_(v249, v250, @"%@%d", v251, v252, v253, v254, v255, @"MPSRNNLayer.LSTM.outputGate", v50);
        v256 = objc_alloc(MEMORY[0x277CCACA8]);
        v263 = objc_msgSend_initWithFormat_(v256, v257, @"%@%d", v258, v259, v260, v261, v262, @"MPSRNNLayer.LSTM.recursionXFormsCombined", v50);
        v264 = objc_alloc(MEMORY[0x277CCACA8]);
        v271 = objc_msgSend_initWithFormat_(v264, v265, @"%@%d", v266, v267, v268, v269, v270, @"MPSRNNLayer.LSTM.finalNeuron", v50);
        v272 = objc_alloc(MEMORY[0x277CCACA8]);
        v279 = objc_msgSend_initWithFormat_(v272, v273, @"%@%d", v274, v275, v276, v277, v278, @"MPSRNNLayer.LSTM.inputXFormsCombined", v50);
        v280 = objc_alloc(MEMORY[0x277CCACA8]);
        v287 = objc_msgSend_initWithFormat_(v280, v281, @"%@%d", v282, v283, v284, v285, v286, @"MPSRNNLayer.LSTM.coupleForgetGateToInputGate", v50);
        v288 = objc_alloc(MEMORY[0x277CCACA8]);
        v295 = objc_msgSend_initWithFormat_(v288, v289, @"%@%d", v290, v291, v292, v293, v294, @"MPSRNNLayer.LSTM.cellClipThreshold", v50);
        sub_239BDAD10(aDecoder, device, v697, (v56 + 96), 0, &v708);
        v56[417] = objc_msgSend_decodeBoolForKey_(aDecoder, v296, v263, v297, v298, v299, v300, v301);
        v308 = 0;
        v56[416] = objc_msgSend_decodeBoolForKey_(aDecoder, v302, v279, v303, v304, v305, v306, v307);
        if (v56[417] == 1)
        {
          v308 = *(v56 + 13);
        }

        sub_239BDAD10(aDecoder, device, v703, (v56 + 168), v308, &v708);
        sub_239BDAD10(aDecoder, device, v701, (v56 + 240), v308, &v708);
        sub_239BDAD10(aDecoder, device, v699, (v56 + 312), v308, &v708);
        sub_239BDABDC(aDecoder, v271, v56 + 98);
        v56[419] = objc_msgSend_decodeBoolForKey_(aDecoder, v309, v287, v310, v311, v312, v313, v314);
        objc_msgSend_decodeFloatForKey_(aDecoder, v315, v295, v316, v317, v318, v319, v320);
        *(v56 + 105) = v321;
        *(v56 + 48) = 0;
        if (v708)
        {
          v51 = 1;
          v52 = 1;
          v53 = 1;
        }

        else
        {
          free(v56);
          v56 = 0;
          v51 = 0;
          v52 = 0;
          v53 = 0;
        }
      }

      else
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        v56 = 0;
        v53 = v52;
      }

      goto LABEL_131;
    }

    if (v54 == 1)
    {
      if (!v53)
      {
        v56 = 0;
        goto LABEL_132;
      }

      v55 = malloc_type_malloc(0x108uLL, 0x10A0040E57BB8CDuLL);
      if (!v55)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        v56 = 0;
        goto LABEL_131;
      }

      v56 = v55;
      sub_239BDA7A4(aDecoder, v55, v50, &v708);
      v57 = objc_alloc(MEMORY[0x277CCACA8]);
      v64 = objc_msgSend_initWithFormat_(v57, v58, @"%@%d", v59, v60, v61, v62, v63, @"MPSRNNLayer.GRU.inputGateInputXform", v50);
      v65 = objc_alloc(MEMORY[0x277CCACA8]);
      v72 = objc_msgSend_initWithFormat_(v65, v66, @"%@%d", v67, v68, v69, v70, v71, @"MPSRNNLayer.GRU.inputGateRecXform", v50);
      v73 = objc_alloc(MEMORY[0x277CCACA8]);
      v80 = objc_msgSend_initWithFormat_(v73, v74, @"%@%d", v75, v76, v77, v78, v79, @"MPSRNNLayer.GRU.inputGateBias", v50);
      v81 = objc_alloc(MEMORY[0x277CCACA8]);
      v689 = objc_msgSend_initWithFormat_(v81, v82, @"%@%d", v83, v84, v85, v86, v87, @"MPSRNNLayer.GRU.inputGateHasBias", v50);
      v88 = objc_alloc(MEMORY[0x277CCACA8]);
      v686 = objc_msgSend_initWithFormat_(v88, v89, @"%@%d", v90, v91, v92, v93, v94, @"MPSRNNLayer.GRU.inputNeuron", v50);
      v95 = objc_alloc(MEMORY[0x277CCACA8]);
      v690 = objc_msgSend_initWithFormat_(v95, v96, @"%@%d", v97, v98, v99, v100, v101, @"MPSRNNLayer.GRU.recGateInputXform", v50);
      v102 = objc_alloc(MEMORY[0x277CCACA8]);
      v691 = objc_msgSend_initWithFormat_(v102, v103, @"%@%d", v104, v105, v106, v107, v108, @"MPSRNNLayer.GRU.recGateRecXform", v50);
      v109 = objc_alloc(MEMORY[0x277CCACA8]);
      v702 = objc_msgSend_initWithFormat_(v109, v110, @"%@%d", v111, v112, v113, v114, v115, @"MPSRNNLayer.GRU.recGateBias", v50);
      v116 = objc_alloc(MEMORY[0x277CCACA8]);
      v692 = objc_msgSend_initWithFormat_(v116, v117, @"%@%d", v118, v119, v120, v121, v122, @"MPSRNNLayer.GRU.recGateHasBias", v50);
      v123 = objc_alloc(MEMORY[0x277CCACA8]);
      v687 = objc_msgSend_initWithFormat_(v123, v124, @"%@%d", v125, v126, v127, v128, v129, @"MPSRNNLayer.GRU.recurrentNeuron", v50);
      v130 = objc_alloc(MEMORY[0x277CCACA8]);
      v693 = objc_msgSend_initWithFormat_(v130, v131, @"%@%d", v132, v133, v134, v135, v136, @"MPSRNNLayer.GRU.outputGateInputXform", v50);
      v137 = objc_alloc(MEMORY[0x277CCACA8]);
      v694 = objc_msgSend_initWithFormat_(v137, v138, @"%@%d", v139, v140, v141, v142, v143, @"MPSRNNLayer.GRU.outputGateRecXform", v50);
      v144 = objc_alloc(MEMORY[0x277CCACA8]);
      v695 = objc_msgSend_initWithFormat_(v144, v145, @"%@%d", v146, v147, v148, v149, v150, @"MPSRNNLayer.GRU.outputGateMemoryform", v50);
      v151 = objc_alloc(MEMORY[0x277CCACA8]);
      v685 = objc_msgSend_initWithFormat_(v151, v152, @"%@%d", v153, v154, v155, v156, v157, @"MPSRNNLayer.GRU.outputGateBias", v50);
      v158 = objc_alloc(MEMORY[0x277CCACA8]);
      v696 = objc_msgSend_initWithFormat_(v158, v159, @"%@%d", v160, v161, v162, v163, v164, @"MPSRNNLayer.GRU.outputGateHasBias", v50);
      v165 = objc_alloc(MEMORY[0x277CCACA8]);
      v688 = objc_msgSend_initWithFormat_(v165, v166, @"%@%d", v167, v168, v169, v170, v171, @"MPSRNNLayer.GRU.outputNeuron", v50);
      v172 = objc_alloc(MEMORY[0x277CCACA8]);
      v700 = objc_msgSend_initWithFormat_(v172, v173, @"%@%d", v174, v175, v176, v177, v178, @"MPSRNNLayer.GRU.pNormGateValue", v50);
      v179 = objc_alloc(MEMORY[0x277CCACA8]);
      v698 = objc_msgSend_initWithFormat_(v179, v180, @"%@%d", v181, v182, v183, v184, v185, @"MPSRNNLayer.GRU.flipOutputGates", v50);
      if (objc_msgSend_decodeBoolForKey_(aDecoder, v186, v64, v187, v188, v189, v190, v191))
      {
        v198 = v80;
        if (v708 == 1)
        {
          v199 = objc_alloc(MEMORY[0x277CCACA8]);
          v206 = objc_msgSend_initWithFormat_(v199, v200, @"%@%@", v201, v202, v203, v204, v205, v64, @".convolution");
          v213 = objc_msgSend_decodeObjectForKey_(aDecoder, v207, v206, v208, v209, v210, v211, v212);
          if (!v213)
          {
            v708 = 0;
          }

          v214 = v702;
          *(v56 + 12) = v213;
          if (objc_msgSend_decodeBoolForKey_(aDecoder, v215, v72, v216, v217, v218, v219, v220))
          {
LABEL_47:
            if (v708 == 1)
            {
              v403 = objc_alloc(MEMORY[0x277CCACA8]);
              v410 = objc_msgSend_initWithFormat_(v403, v404, @"%@%@", v405, v406, v407, v408, v409, v72, @".convolution");
              v417 = objc_msgSend_decodeObjectForKey_(aDecoder, v411, v410, v412, v413, v414, v415, v416);
              if (!v417)
              {
                v708 = 0;
              }

              v214 = v702;
LABEL_52:
              *(v56 + 13) = v417;
              v56[248] = objc_msgSend_decodeBoolForKey_(aDecoder, v221, v689, v222, v223, v224, v225, v226);
              v418 = *(v56 + 7);
              MPSDevice = MPSDevice::GetMPSDevice();
              if (MPSDevice)
              {
                v426 = MPSDevice;
                if (objc_msgSend_decodeBoolForKey_(aDecoder, v420, v198, v421, v422, v423, v424, v425))
                {
                  v711[0] = 0;
                  v431 = sub_239BCD898(aDecoder, v198, v711, &v708, v427, v428, v429, v430);
                  if (v431)
                  {
                    v432 = v431;
                    if (v711[0] == v418)
                    {
                      v433 = (*(*v426 + 24))(v426);
                      v438 = objc_msgSend_newBufferWithBytes_length_options_(device, v434, v432, 4 * v418, 16 * v433, v435, v436, v437);
                    }

                    else
                    {
                      v438 = 0;
                      v708 = 0;
                    }

                    free(v432);
                  }

                  else
                  {
                    v438 = 0;
                  }

                  v214 = v702;
                }

                else
                {
                  v438 = 0;
                  v708 = 1;
                }
              }

              else
              {
                v438 = 0;
                v708 = 0;
              }

              *(v56 + 19) = v438;
              sub_239BDABDC(aDecoder, v686, v56 + 44);
              if (objc_msgSend_decodeBoolForKey_(aDecoder, v466, v690, v467, v468, v469, v470, v471) && v708 == 1)
              {
                v478 = objc_alloc(MEMORY[0x277CCACA8]);
                v485 = objc_msgSend_initWithFormat_(v478, v479, @"%@%@", v480, v481, v482, v483, v484, v690, @".convolution");
                v492 = objc_msgSend_decodeObjectForKey_(aDecoder, v486, v485, v487, v488, v489, v490, v491);
                if (!v492)
                {
                  v708 = 0;
                }

                v214 = v702;
                *(v56 + 14) = v492;
                v493 = v691;
                if (!objc_msgSend_decodeBoolForKey_(aDecoder, v494, v691, v495, v496, v497, v498, v499))
                {
LABEL_85:
                  v520 = 0;
                  goto LABEL_86;
                }
              }

              else
              {
                *(v56 + 14) = 0;
                v493 = v691;
                if (!objc_msgSend_decodeBoolForKey_(aDecoder, v472, v691, v473, v474, v475, v476, v477))
                {
                  goto LABEL_85;
                }
              }

              if (v708 != 1)
              {
                goto LABEL_85;
              }

              v506 = objc_alloc(MEMORY[0x277CCACA8]);
              v513 = objc_msgSend_initWithFormat_(v506, v507, @"%@%@", v508, v509, v510, v511, v512, v493, @".convolution");
              v520 = objc_msgSend_decodeObjectForKey_(aDecoder, v514, v513, v515, v516, v517, v518, v519);
              if (!v520)
              {
                v708 = 0;
              }

              v214 = v702;
LABEL_86:
              *(v56 + 15) = v520;
              v56[249] = objc_msgSend_decodeBoolForKey_(aDecoder, v500, v692, v501, v502, v503, v504, v505);
              v521 = *(v56 + 7);
              v522 = MPSDevice::GetMPSDevice();
              if (v522)
              {
                v529 = v522;
                if (objc_msgSend_decodeBoolForKey_(aDecoder, v523, v214, v524, v525, v526, v527, v528))
                {
                  v711[0] = 0;
                  v534 = sub_239BCD898(aDecoder, v214, v711, &v708, v530, v531, v532, v533);
                  if (v534)
                  {
                    v535 = v534;
                    if (v711[0] == v521)
                    {
                      v536 = (*(*v529 + 24))(v529);
                      v541 = objc_msgSend_newBufferWithBytes_length_options_(device, v537, v535, 4 * v521, 16 * v536, v538, v539, v540);
                    }

                    else
                    {
                      v541 = 0;
                      v708 = 0;
                    }

                    free(v535);
                  }

                  else
                  {
                    v541 = 0;
                  }
                }

                else
                {
                  v541 = 0;
                  v708 = 1;
                }
              }

              else
              {
                v541 = 0;
                v708 = 0;
              }

              *(v56 + 20) = v541;
              sub_239BDABDC(aDecoder, v687, v56 + 50);
              if (objc_msgSend_decodeBoolForKey_(aDecoder, v542, v693, v543, v544, v545, v546, v547) && v708 == 1)
              {
                v554 = objc_alloc(MEMORY[0x277CCACA8]);
                v561 = objc_msgSend_initWithFormat_(v554, v555, @"%@%@", v556, v557, v558, v559, v560, v693, @".convolution");
                v568 = objc_msgSend_decodeObjectForKey_(aDecoder, v562, v561, v563, v564, v565, v566, v567);
                if (!v568)
                {
                  v708 = 0;
                }

                *(v56 + 16) = v568;
                v569 = v694;
                if (!objc_msgSend_decodeBoolForKey_(aDecoder, v570, v694, v571, v572, v573, v574, v575))
                {
LABEL_108:
                  *(v56 + 18) = 0;
                  v597 = v695;
                  if (objc_msgSend_decodeBoolForKey_(aDecoder, v576, v695, v577, v578, v579, v580, v581))
                  {
                    goto LABEL_109;
                  }

LABEL_113:
                  v624 = 0;
                  goto LABEL_114;
                }
              }

              else
              {
                *(v56 + 16) = 0;
                v569 = v694;
                if (!objc_msgSend_decodeBoolForKey_(aDecoder, v548, v694, v549, v550, v551, v552, v553))
                {
                  goto LABEL_108;
                }
              }

              if (v708 != 1)
              {
                goto LABEL_108;
              }

              v582 = objc_alloc(MEMORY[0x277CCACA8]);
              v589 = objc_msgSend_initWithFormat_(v582, v583, @"%@%@", v584, v585, v586, v587, v588, v569, @".convolution");
              v596 = objc_msgSend_decodeObjectForKey_(aDecoder, v590, v589, v591, v592, v593, v594, v595);
              if (!v596)
              {
                v708 = 0;
              }

              *(v56 + 18) = v596;
              v597 = v695;
              if (!objc_msgSend_decodeBoolForKey_(aDecoder, v598, v695, v599, v600, v601, v602, v603))
              {
                goto LABEL_113;
              }

LABEL_109:
              if (v708 != 1)
              {
                goto LABEL_113;
              }

              v610 = objc_alloc(MEMORY[0x277CCACA8]);
              v617 = objc_msgSend_initWithFormat_(v610, v611, @"%@%@", v612, v613, v614, v615, v616, v597, @".convolution");
              v624 = objc_msgSend_decodeObjectForKey_(aDecoder, v618, v617, v619, v620, v621, v622, v623);
              if (!v624)
              {
                v708 = 0;
              }

LABEL_114:
              *(v56 + 17) = v624;
              v56[250] = objc_msgSend_decodeBoolForKey_(aDecoder, v604, v696, v605, v606, v607, v608, v609);
              v625 = *(v56 + 7);
              v626 = MPSDevice::GetMPSDevice();
              if (v626)
              {
                v633 = v626;
                if (objc_msgSend_decodeBoolForKey_(aDecoder, v627, v685, v628, v629, v630, v631, v632))
                {
                  v711[0] = 0;
                  v638 = sub_239BCD898(aDecoder, v685, v711, &v708, v634, v635, v636, v637);
                  if (v638)
                  {
                    v639 = v638;
                    if (v711[0] == v625)
                    {
                      v640 = (*(*v633 + 24))(v633);
                      v645 = objc_msgSend_newBufferWithBytes_length_options_(device, v641, v639, 4 * v625, 16 * v640, v642, v643, v644);
                    }

                    else
                    {
                      v645 = 0;
                      v708 = 0;
                    }

                    free(v639);
                  }

                  else
                  {
                    v645 = 0;
                  }

                  v646 = v708 == 0;
                }

                else
                {
                  v646 = 0;
                  v645 = 0;
                  v708 = 1;
                }
              }

              else
              {
                v645 = 0;
                v708 = 0;
                v646 = 1;
              }

              *(v56 + 21) = v645;
              sub_239BDABDC(aDecoder, v688, v56 + 56);
              objc_msgSend_decodeFloatForKey_(aDecoder, v647, v700, v648, v649, v650, v651, v652);
              *(v56 + 63) = v653;
              v56[256] = objc_msgSend_decodeBoolForKey_(aDecoder, v654, v698, v655, v656, v657, v658, v659);
              if (!v646)
              {
                v51 = 1;
                v52 = 1;
                v53 = 1;
                goto LABEL_131;
              }

LABEL_126:
              free(v56);
              v56 = 0;
              v51 = 0;
LABEL_127:
              v52 = 0;
              v53 = 0;
              goto LABEL_131;
            }
          }
        }

        else
        {
          v214 = v702;
          *(v56 + 12) = 0;
          if (objc_msgSend_decodeBoolForKey_(aDecoder, v192, v72, v193, v194, v195, v196, v197))
          {
            goto LABEL_47;
          }
        }
      }

      else
      {
        v214 = v702;
        v198 = v80;
        *(v56 + 12) = 0;
        if (objc_msgSend_decodeBoolForKey_(aDecoder, v192, v72, v193, v194, v195, v196, v197))
        {
          goto LABEL_47;
        }
      }

      v417 = 0;
      goto LABEL_52;
    }

    if (!v51)
    {
      v56 = 0;
      goto LABEL_127;
    }

    v322 = malloc_type_malloc(0x98uLL, 0x10A0040D60EB3F0uLL);
    if (!v322)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v56 = 0;
LABEL_130:
      v52 = v51;
      v53 = v51;
      goto LABEL_131;
    }

    v56 = v322;
    sub_239BDA7A4(aDecoder, v322, v50, &v708);
    v323 = objc_alloc(MEMORY[0x277CCACA8]);
    v330 = objc_msgSend_initWithFormat_(v323, v324, @"%@%d", v325, v326, v327, v328, v329, @"MPSRNNLayer.SingleGate.inputXForm", v50);
    v331 = objc_alloc(MEMORY[0x277CCACA8]);
    v338 = objc_msgSend_initWithFormat_(v331, v332, @"%@%d", v333, v334, v335, v336, v337, @"MPSRNNLayer.SingleGate.recurrentXForm", v50);
    v339 = objc_alloc(MEMORY[0x277CCACA8]);
    v346 = objc_msgSend_initWithFormat_(v339, v340, @"%@%d", v341, v342, v343, v344, v345, @"MPSRNNLayer.SingleGate.hasBias", v50);
    v347 = objc_alloc(MEMORY[0x277CCACA8]);
    v354 = objc_msgSend_initWithFormat_(v347, v348, @"%@%d", v349, v350, v351, v352, v353, @"MPSRNNLayer.SingleGate.biasData", v50);
    if (objc_msgSend_decodeBoolForKey_(aDecoder, v355, v330, v356, v357, v358, v359, v360) && v708 == 1)
    {
      v367 = objc_alloc(MEMORY[0x277CCACA8]);
      v374 = objc_msgSend_initWithFormat_(v367, v368, @"%@%@", v369, v370, v371, v372, v373, v330, @".convolution");
      v381 = objc_msgSend_decodeObjectForKey_(aDecoder, v375, v374, v376, v377, v378, v379, v380);
      if (v381)
      {

        *(v56 + 12) = v381;
        if (objc_msgSend_decodeBoolForKey_(aDecoder, v382, v338, v383, v384, v385, v386, v387))
        {
          goto LABEL_36;
        }
      }

      else
      {
        v708 = 0;

        *(v56 + 12) = 0;
        if (objc_msgSend_decodeBoolForKey_(aDecoder, v662, v338, v663, v664, v665, v666, v667))
        {
LABEL_36:
          if (v708 == 1)
          {
            v389 = objc_alloc(MEMORY[0x277CCACA8]);
            v396 = objc_msgSend_initWithFormat_(v389, v390, @"%@%@", v391, v392, v393, v394, v395, v338, @".convolution");
            v388 = objc_msgSend_decodeObjectForKey_(aDecoder, v397, v396, v398, v399, v400, v401, v402);
            if (!v388)
            {
              v708 = 0;
            }
          }

          else
          {
            v388 = 0;
          }

          goto LABEL_60;
        }
      }
    }

    else
    {
      *(v56 + 12) = 0;
      if (objc_msgSend_decodeBoolForKey_(aDecoder, v361, v338, v362, v363, v364, v365, v366))
      {
        goto LABEL_36;
      }
    }

    v388 = 0;
LABEL_60:
    *(v56 + 13) = v388;
    sub_239BDABDC(aDecoder, v330, v56 + 28);
    v56[144] = objc_msgSend_decodeBoolForKey_(aDecoder, v439, v346, v440, v441, v442, v443, v444);
    v445 = *(v56 + 7);
    v446 = MPSDevice::GetMPSDevice();
    if (!v446)
    {
      v708 = 0;
      goto LABEL_126;
    }

    v453 = v446;
    if (objc_msgSend_decodeBoolForKey_(aDecoder, v447, v354, v448, v449, v450, v451, v452))
    {
      v711[0] = 0;
      v458 = sub_239BCD898(aDecoder, v354, v711, &v708, v454, v455, v456, v457);
      if (v458)
      {
        v459 = v458;
        if (v711[0] == v445)
        {
          v460 = (*(*v453 + 24))(v453);
          v465 = objc_msgSend_newBufferWithBytes_length_options_(device, v461, v459, 4 * v445, 16 * v460, v462, v463, v464);
          free(v459);
          v51 = v708;
          *(v56 + 17) = v465;
          if (v51)
          {
            goto LABEL_130;
          }
        }

        else
        {
          v708 = 0;
          free(v458);
          v51 = v708;
          *(v56 + 17) = 0;
          if (v51)
          {
            goto LABEL_130;
          }
        }
      }

      else
      {
        v51 = v708;
        *(v56 + 17) = 0;
        if (v51)
        {
          goto LABEL_130;
        }
      }

      goto LABEL_126;
    }

    v51 = 1;
    v708 = 1;
    *(v56 + 17) = 0;
    v52 = 1;
    v53 = 1;
LABEL_131:
    v49 = &v12->nForwardLayers;
LABEL_132:
    v12->layers[v50] = v56;
    v660 = v12->layers[v50];
    v661 = v49;
    if (v660)
    {
      v661 = &v12->nBackwardLayers;
      if (!v660[8])
      {
        v661 = v49;
      }
    }

    ++*v661;
    if (++v50 >= v12->_numberOfLayers)
    {
      goto LABEL_154;
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
    goto LABEL_187;
  }

LABEL_152:

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v570.receiver = self;
  v570.super_class = MPSRNNImageInferenceLayer;
  [(MPSCNNKernel *)&v570 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(a3, v5, v4->_inputFeatureChannels, @"kMPSRNNLayer._inputFeatureChannels", v6, v7, v8, v9);
  objc_msgSend_encodeInt64_forKey_(a3, v10, v4->_outputFeatureChannels, @"kMPSRNNLayer._outputFeatureChannels", v11, v12, v13, v14);
  objc_msgSend_encodeInt64_forKey_(a3, v15, v4->_numberOfLayers, @"kMPSRNNLayer._numberOfLayers", v16, v17, v18, v19);
  objc_msgSend_encodeBool_forKey_(a3, v20, v4->_recurrentOutputIsTemporary, @"kMPSRNNLayer._recurrentOutputIsTemporary", v21, v22, v23, v24);
  objc_msgSend_encodeInt64_forKey_(a3, v25, v4->_bidirectionalCombineMode, @"kMPSRNNLayer._bidirectionalCombineMode", v26, v27, v28, v29);
  numberOfLayers = v4->_numberOfLayers;
  if (!numberOfLayers)
  {
    return;
  }

  v35 = malloc_type_malloc(4 * numberOfLayers, 0x100004052888210uLL);
  if (!v35 && MTLReportFailureTypeEnabled())
  {
    v551 = objc_opt_class();
    NSStringFromClass(v551);
    MTLReportFailure();
  }

  v36 = v4->_numberOfLayers;
  if (v36)
  {
    layerTypes = v4->layerTypes;
    if (v36 <= 7)
    {
      v38 = 0;
LABEL_9:
      v43 = v36 - v38;
      v44 = v38;
      v45 = &v35[4 * v38];
      v46 = &layerTypes[v44];
      do
      {
        v47 = *v46++;
        *v45 = v47;
        v45 += 4;
        --v43;
      }

      while (v43);
      goto LABEL_11;
    }

    v38 = v36 & 0xFFFFFFFFFFFFFFF8;
    v39 = (layerTypes + 4);
    v40 = v35 + 16;
    v41 = v36 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v42 = *v39;
      *(v40 - 1) = *(v39 - 1);
      *v40 = v42;
      v39 += 2;
      v40 += 2;
      v41 -= 8;
    }

    while (v41);
    if (v36 != v38)
    {
      goto LABEL_9;
    }
  }

LABEL_11:
  sub_239BCD9D8(a3, v35, @"kMPSRNNLayer.layerTypes", v36, v31, v32, v33, v34);
  free(v35);
  if (v4->_numberOfLayers)
  {
    v48 = 0;
    v569 = v4;
    do
    {
      v142 = v4->layerTypes[v48];
      switch(v142)
      {
        case 2:
          v49 = v4->layers[v48];
          sub_239BDB264(a3, v49, v48);
          v50 = objc_alloc(MEMORY[0x277CCACA8]);
          v565 = objc_msgSend_initWithFormat_(v50, v51, @"%@%d", v52, v53, v54, v55, v56, @"MPSRNNLayer.LSTM.inputGate", v48);
          v57 = objc_alloc(MEMORY[0x277CCACA8]);
          v567 = objc_msgSend_initWithFormat_(v57, v58, @"%@%d", v59, v60, v61, v62, v63, @"MPSRNNLayer.LSTM.forgetGate", v48);
          v64 = objc_alloc(MEMORY[0x277CCACA8]);
          v563 = objc_msgSend_initWithFormat_(v64, v65, @"%@%d", v66, v67, v68, v69, v70, @"MPSRNNLayer.LSTM.cellGate", v48);
          v71 = objc_alloc(MEMORY[0x277CCACA8]);
          v561 = objc_msgSend_initWithFormat_(v71, v72, @"%@%d", v73, v74, v75, v76, v77, @"MPSRNNLayer.LSTM.outputGate", v48);
          v78 = objc_alloc(MEMORY[0x277CCACA8]);
          v85 = objc_msgSend_initWithFormat_(v78, v79, @"%@%d", v80, v81, v82, v83, v84, @"MPSRNNLayer.LSTM.recursionXFormsCombined", v48);
          v86 = objc_alloc(MEMORY[0x277CCACA8]);
          v93 = objc_msgSend_initWithFormat_(v86, v87, @"%@%d", v88, v89, v90, v91, v92, @"MPSRNNLayer.LSTM.finalNeuron", v48);
          v94 = objc_alloc(MEMORY[0x277CCACA8]);
          v101 = objc_msgSend_initWithFormat_(v94, v95, @"%@%d", v96, v97, v98, v99, v100, @"MPSRNNLayer.LSTM.inputXFormsCombined", v48);
          v102 = objc_alloc(MEMORY[0x277CCACA8]);
          v109 = objc_msgSend_initWithFormat_(v102, v103, @"%@%d", v104, v105, v106, v107, v108, @"MPSRNNLayer.LSTM.coupleForgetGateToInputGate", v48);
          v110 = objc_alloc(MEMORY[0x277CCACA8]);
          v117 = objc_msgSend_initWithFormat_(v110, v111, @"%@%d", v112, v113, v114, v115, v116, @"MPSRNNLayer.LSTM.cellClipThreshold", v48);
          v118 = *(v49 + 56);
          sub_239BDB72C(a3, v49 + 96, v565, v118, 0);
          objc_msgSend_encodeBool_forKey_(a3, v119, *(v49 + 417), v85, v120, v121, v122, v123);
          objc_msgSend_encodeBool_forKey_(a3, v124, *(v49 + 416), v101, v125, v126, v127, v128);
          sub_239BDB72C(a3, v49 + 168, v567, v118, *(v49 + 417));
          sub_239BDB72C(a3, v49 + 240, v563, v118, *(v49 + 417));
          sub_239BDB72C(a3, v49 + 312, v561, v118, *(v49 + 417));
          v129 = v93;
          v4 = v569;
          sub_239BDB5F8(a3, v129, (v49 + 392));
          objc_msgSend_encodeBool_forKey_(a3, v130, *(v49 + 419), v109, v131, v132, v133, v134);
          LODWORD(v135) = *(v49 + 420);
          objc_msgSend_encodeFloat_forKey_(a3, v136, v117, v137, v138, v139, v140, v141, v135);
          break;
        case 1:
          v229 = v4->layers[v48];
          sub_239BDB264(a3, v229, v48);
          v230 = objc_alloc(MEMORY[0x277CCACA8]);
          v237 = objc_msgSend_initWithFormat_(v230, v231, @"%@%d", v232, v233, v234, v235, v236, @"MPSRNNLayer.GRU.inputGateInputXform", v48);
          v238 = objc_alloc(MEMORY[0x277CCACA8]);
          v245 = objc_msgSend_initWithFormat_(v238, v239, @"%@%d", v240, v241, v242, v243, v244, @"MPSRNNLayer.GRU.inputGateRecXform", v48);
          v246 = objc_alloc(MEMORY[0x277CCACA8]);
          v556 = objc_msgSend_initWithFormat_(v246, v247, @"%@%d", v248, v249, v250, v251, v252, @"MPSRNNLayer.GRU.inputGateBias", v48);
          v253 = objc_alloc(MEMORY[0x277CCACA8]);
          v552 = objc_msgSend_initWithFormat_(v253, v254, @"%@%d", v255, v256, v257, v258, v259, @"MPSRNNLayer.GRU.inputGateHasBias", v48);
          v260 = objc_alloc(MEMORY[0x277CCACA8]);
          v553 = objc_msgSend_initWithFormat_(v260, v261, @"%@%d", v262, v263, v264, v265, v266, @"MPSRNNLayer.GRU.inputNeuron", v48);
          v267 = objc_alloc(MEMORY[0x277CCACA8]);
          v274 = objc_msgSend_initWithFormat_(v267, v268, @"%@%d", v269, v270, v271, v272, v273, @"MPSRNNLayer.GRU.recGateInputXform", v48);
          v275 = objc_alloc(MEMORY[0x277CCACA8]);
          v282 = objc_msgSend_initWithFormat_(v275, v276, @"%@%d", v277, v278, v279, v280, v281, @"MPSRNNLayer.GRU.recGateRecXform", v48);
          v283 = objc_alloc(MEMORY[0x277CCACA8]);
          v560 = objc_msgSend_initWithFormat_(v283, v284, @"%@%d", v285, v286, v287, v288, v289, @"MPSRNNLayer.GRU.recGateBias", v48);
          v290 = objc_alloc(MEMORY[0x277CCACA8]);
          v554 = objc_msgSend_initWithFormat_(v290, v291, @"%@%d", v292, v293, v294, v295, v296, @"MPSRNNLayer.GRU.recGateHasBias", v48);
          v297 = objc_alloc(MEMORY[0x277CCACA8]);
          v555 = objc_msgSend_initWithFormat_(v297, v298, @"%@%d", v299, v300, v301, v302, v303, @"MPSRNNLayer.GRU.recurrentNeuron", v48);
          v304 = objc_alloc(MEMORY[0x277CCACA8]);
          v311 = objc_msgSend_initWithFormat_(v304, v305, @"%@%d", v306, v307, v308, v309, v310, @"MPSRNNLayer.GRU.outputGateInputXform", v48);
          v312 = objc_alloc(MEMORY[0x277CCACA8]);
          v558 = objc_msgSend_initWithFormat_(v312, v313, @"%@%d", v314, v315, v316, v317, v318, @"MPSRNNLayer.GRU.outputGateRecXform", v48);
          v319 = objc_alloc(MEMORY[0x277CCACA8]);
          v564 = objc_msgSend_initWithFormat_(v319, v320, @"%@%d", v321, v322, v323, v324, v325, @"MPSRNNLayer.GRU.outputGateMemoryform", v48);
          v326 = objc_alloc(MEMORY[0x277CCACA8]);
          v568 = objc_msgSend_initWithFormat_(v326, v327, @"%@%d", v328, v329, v330, v331, v332, @"MPSRNNLayer.GRU.outputGateBias", v48);
          v333 = objc_alloc(MEMORY[0x277CCACA8]);
          v559 = objc_msgSend_initWithFormat_(v333, v334, @"%@%d", v335, v336, v337, v338, v339, @"MPSRNNLayer.GRU.outputGateHasBias", v48);
          v340 = objc_alloc(MEMORY[0x277CCACA8]);
          v566 = objc_msgSend_initWithFormat_(v340, v341, @"%@%d", v342, v343, v344, v345, v346, @"MPSRNNLayer.GRU.outputNeuron", v48);
          v347 = objc_alloc(MEMORY[0x277CCACA8]);
          v562 = objc_msgSend_initWithFormat_(v347, v348, @"%@%d", v349, v350, v351, v352, v353, @"MPSRNNLayer.GRU.pNormGateValue", v48);
          v354 = objc_alloc(MEMORY[0x277CCACA8]);
          v557 = objc_msgSend_initWithFormat_(v354, v355, @"%@%d", v356, v357, v358, v359, v360, @"MPSRNNLayer.GRU.flipOutputGates", v48);
          v361 = *(v229 + 96);
          objc_msgSend_encodeBool_forKey_(a3, v362, v361 != 0, v237, v363, v364, v365, v366);
          if (v361)
          {
            v372 = objc_alloc(MEMORY[0x277CCACA8]);
            v379 = objc_msgSend_initWithFormat_(v372, v373, @"%@%@", v374, v375, v376, v377, v378, v237, @".convolution");
            objc_msgSend_encodeObject_forKey_(a3, v380, v361, v379, v381, v382, v383, v384);
          }

          v385 = *(v229 + 104);
          objc_msgSend_encodeBool_forKey_(a3, v367, v385 != 0, v245, v368, v369, v370, v371);
          if (v385)
          {
            v391 = objc_alloc(MEMORY[0x277CCACA8]);
            v398 = objc_msgSend_initWithFormat_(v391, v392, @"%@%@", v393, v394, v395, v396, v397, v245, @".convolution");
            objc_msgSend_encodeObject_forKey_(a3, v399, v385, v398, v400, v401, v402, v403);
          }

          objc_msgSend_encodeBool_forKey_(a3, v386, *(v229 + 248), v552, v387, v388, v389, v390);
          v411 = *(v229 + 152);
          v412 = *(v229 + 56);
          if (v411)
          {
            v413 = objc_msgSend_contents(v411, v404, v405, v406, v407, v408, v409, v410);
          }

          else
          {
            v413 = 0;
          }

          sub_239BCD9D8(a3, v413, v556, v412, v407, v408, v409, v410);
          sub_239BDB5F8(a3, v553, (v229 + 176));
          v414 = *(v229 + 112);
          objc_msgSend_encodeBool_forKey_(a3, v415, v414 != 0, v274, v416, v417, v418, v419);
          if (v414)
          {
            v425 = objc_alloc(MEMORY[0x277CCACA8]);
            v432 = objc_msgSend_initWithFormat_(v425, v426, @"%@%@", v427, v428, v429, v430, v431, v274, @".convolution");
            objc_msgSend_encodeObject_forKey_(a3, v433, v414, v432, v434, v435, v436, v437);
          }

          v438 = *(v229 + 120);
          objc_msgSend_encodeBool_forKey_(a3, v420, v438 != 0, v282, v421, v422, v423, v424);
          if (v438)
          {
            v444 = objc_alloc(MEMORY[0x277CCACA8]);
            v451 = objc_msgSend_initWithFormat_(v444, v445, @"%@%@", v446, v447, v448, v449, v450, v282, @".convolution");
            objc_msgSend_encodeObject_forKey_(a3, v452, v438, v451, v453, v454, v455, v456);
          }

          objc_msgSend_encodeBool_forKey_(a3, v439, *(v229 + 249), v554, v440, v441, v442, v443);
          v464 = *(v229 + 160);
          v465 = *(v229 + 56);
          if (v464)
          {
            v466 = objc_msgSend_contents(v464, v457, v458, v459, v460, v461, v462, v463);
          }

          else
          {
            v466 = 0;
          }

          v4 = v569;
          sub_239BCD9D8(a3, v466, v560, v465, v460, v461, v462, v463);
          sub_239BDB5F8(a3, v555, (v229 + 200));
          v467 = *(v229 + 128);
          objc_msgSend_encodeBool_forKey_(a3, v468, v467 != 0, v311, v469, v470, v471, v472);
          if (v467)
          {
            v478 = objc_alloc(MEMORY[0x277CCACA8]);
            v485 = objc_msgSend_initWithFormat_(v478, v479, @"%@%@", v480, v481, v482, v483, v484, v311, @".convolution");
            objc_msgSend_encodeObject_forKey_(a3, v486, v467, v485, v487, v488, v489, v490);
          }

          v491 = *(v229 + 144);
          objc_msgSend_encodeBool_forKey_(a3, v473, v491 != 0, v558, v474, v475, v476, v477);
          if (v491)
          {
            v497 = objc_alloc(MEMORY[0x277CCACA8]);
            v504 = objc_msgSend_initWithFormat_(v497, v498, @"%@%@", v499, v500, v501, v502, v503, v558, @".convolution");
            objc_msgSend_encodeObject_forKey_(a3, v505, v491, v504, v506, v507, v508, v509);
          }

          v510 = *(v229 + 136);
          objc_msgSend_encodeBool_forKey_(a3, v492, v510 != 0, v564, v493, v494, v495, v496);
          if (v510)
          {
            v516 = objc_alloc(MEMORY[0x277CCACA8]);
            v523 = objc_msgSend_initWithFormat_(v516, v517, @"%@%@", v518, v519, v520, v521, v522, v564, @".convolution");
            objc_msgSend_encodeObject_forKey_(a3, v524, v510, v523, v525, v526, v527, v528);
          }

          objc_msgSend_encodeBool_forKey_(a3, v511, *(v229 + 250), v559, v512, v513, v514, v515);
          v536 = *(v229 + 168);
          v537 = *(v229 + 56);
          if (v536)
          {
            v538 = objc_msgSend_contents(v536, v529, v530, v531, v532, v533, v534, v535);
          }

          else
          {
            v538 = 0;
          }

          sub_239BCD9D8(a3, v538, v568, v537, v532, v533, v534, v535);
          sub_239BDB5F8(a3, v566, (v229 + 224));
          LODWORD(v539) = *(v229 + 252);
          objc_msgSend_encodeFloat_forKey_(a3, v540, v562, v541, v542, v543, v544, v545, v539);
          objc_msgSend_encodeBool_forKey_(a3, v546, *(v229 + 256), v557, v547, v548, v549, v550);
          break;
        case 0:
          v143 = v4->layers[v48];
          sub_239BDB264(a3, v143, v48);
          v144 = objc_alloc(MEMORY[0x277CCACA8]);
          v151 = objc_msgSend_initWithFormat_(v144, v145, @"%@%d", v146, v147, v148, v149, v150, @"MPSRNNLayer.SingleGate.inputXForm", v48);
          v152 = objc_alloc(MEMORY[0x277CCACA8]);
          v159 = objc_msgSend_initWithFormat_(v152, v153, @"%@%d", v154, v155, v156, v157, v158, @"MPSRNNLayer.SingleGate.recurrentXForm", v48);
          v160 = objc_alloc(MEMORY[0x277CCACA8]);
          v167 = objc_msgSend_initWithFormat_(v160, v161, @"%@%d", v162, v163, v164, v165, v166, @"MPSRNNLayer.SingleGate.hasBias", v48);
          v168 = objc_alloc(MEMORY[0x277CCACA8]);
          v175 = objc_msgSend_initWithFormat_(v168, v169, @"%@%d", v170, v171, v172, v173, v174, @"MPSRNNLayer.SingleGate.biasData", v48);
          v176 = *(v143 + 96);
          objc_msgSend_encodeBool_forKey_(a3, v177, v176 != 0, v151, v178, v179, v180, v181);
          if (v176)
          {
            v187 = objc_alloc(MEMORY[0x277CCACA8]);
            v194 = objc_msgSend_initWithFormat_(v187, v188, @"%@%@", v189, v190, v191, v192, v193, v151, @".convolution");
            objc_msgSend_encodeObject_forKey_(a3, v195, v176, v194, v196, v197, v198, v199);

            v4 = v569;
          }

          v200 = *(v143 + 104);
          objc_msgSend_encodeBool_forKey_(a3, v182, v200 != 0, v159, v183, v184, v185, v186);
          if (v200)
          {
            v201 = objc_alloc(MEMORY[0x277CCACA8]);
            v208 = objc_msgSend_initWithFormat_(v201, v202, @"%@%@", v203, v204, v205, v206, v207, v159, @".convolution");
            objc_msgSend_encodeObject_forKey_(a3, v209, v200, v208, v210, v211, v212, v213);
          }

          sub_239BDB5F8(a3, v151, (v143 + 112));
          objc_msgSend_encodeBool_forKey_(a3, v214, *(v143 + 144), v167, v215, v216, v217, v218);
          v226 = *(v143 + 136);
          v227 = *(v143 + 56);
          if (v226)
          {
            v228 = objc_msgSend_contents(v226, v219, v220, v221, v222, v223, v224, v225);
          }

          else
          {
            v228 = 0;
          }

          sub_239BCD9D8(a3, v228, v175, v227, v222, v223, v224, v225);
          break;
      }

      ++v48;
    }

    while (v48 < v4->_numberOfLayers);
  }
}

- (void)encodeSequenceToCommandBuffer:(id)commandBuffer sourceImages:(NSArray *)sourceImages destinationImages:(NSArray *)destinationImages recurrentInputState:(MPSRNNRecurrentImageState *)recurrentInputState recurrentOutputStates:(NSMutableArray *)recurrentOutputStates
{
  v143 = 0;
  v12 = objc_alloc(MEMORY[0x277CD7210]);
  v25 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v12, v13, commandBuffer, 0, v14, v15, v16, v17);
  v141 = v25;
  v142 = self;
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v19 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v19 || (v26 = objc_opt_class(), v27 = NSStringFromClass(v26), objc_msgSend_setLabel_(self, v28, v27, v29, v30, v31, v32, v33), (v19 = v27) != 0))
    {
      objc_msgSend_setLabel_(v25, v18, v19, v20, v21, v22, v23, v24);
    }
  }

  if (objc_msgSend_count(sourceImages, v18, v19, v20, v21, v22, v23, v24))
  {
    v41 = objc_msgSend_objectAtIndexedSubscript_(sourceImages, v34, 0, v36, v37, v38, v39, v40);
    v48 = objc_msgSend_objectAtIndexedSubscript_(destinationImages, v42, 0, v43, v44, v45, v46, v47);
    objc_msgSend_offset(self, v49, v50, v51, v52, v53, v54, v55);
    objc_msgSend_clipRect(self, v56, v57, v58, v59, v60, v61, v62);
    recurrentOutputIsTemporary = self->_recurrentOutputIsTemporary;
    v71 = objc_msgSend_destinationFeatureChannelOffset(self, v64, v65, v66, v67, v68, v69, v70);
    sub_239BBF664(self, commandBuffer, v25, v41, v48, recurrentInputState, &v143, &v140, v139, recurrentOutputIsTemporary, v71, 1, 1u, 1u);
    v86 = objc_msgSend_storeAllIntermediateStates(self, v72, v73, v74, v75, v76, v77, v78) ^ 1;
    recurrentInputState = v143;
    if (!recurrentOutputStates)
    {
      LOBYTE(v86) = 1;
    }

    if ((v86 & 1) == 0)
    {
      if (v143)
      {
        objc_msgSend_addObject_(recurrentOutputStates, v79, v143, v81, v82, v83, v84, v85);

        recurrentInputState = v143;
      }

      v143 = 0;
    }

    for (i = 1; i < objc_msgSend_count(sourceImages, v79, v80, v81, v82, v83, v84, v85); ++i)
    {
      v88 = objc_msgSend_objectAtIndexedSubscript_(sourceImages, v34, i, v36, v37, v38, v39, v40);
      v95 = objc_msgSend_objectAtIndexedSubscript_(destinationImages, v89, i, v90, v91, v92, v93, v94);
      v96 = v141;
      objc_msgSend_offset(self, v97, v98, v99, v100, v101, v102, v103);
      objc_msgSend_clipRect(self, v104, v105, v106, v107, v108, v109, v110);
      v111 = self->_recurrentOutputIsTemporary;
      v119 = objc_msgSend_destinationFeatureChannelOffset(self, v112, v113, v114, v115, v116, v117, v118);
      sub_239BBF664(self, commandBuffer, v96, v88, v95, recurrentInputState, &v143, &v140, v139, v111, v119, 1, 1u, 1u);
      v127 = objc_msgSend_storeAllIntermediateStates(self, v120, v121, v122, v123, v124, v125, v126) ^ 1;
      v80 = v143;
      if (!recurrentOutputStates)
      {
        LOBYTE(v127) = 1;
      }

      if (v127)
      {
        if (recurrentInputState != v143)
        {

          v80 = v143;
        }
      }

      else
      {
        if (v143)
        {
          objc_msgSend_addObject_(recurrentOutputStates, v79, v143, v81, v82, v83, v84, v85);

          v80 = v143;
        }

        v143 = 0;
      }

      recurrentInputState = v80;
    }
  }

  v128 = objc_msgSend_storeAllIntermediateStates(self, v34, v35, v36, v37, v38, v39, v40);
  if (recurrentOutputStates)
  {
    v136 = v128;
  }

  else
  {
    v136 = 1;
  }

  if (v136)
  {
    if (!recurrentOutputStates)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v130 = v143;
    if (v143)
    {
      objc_msgSend_addObject_(recurrentOutputStates, v129, v143, v131, v132, v133, v134, v135);
      recurrentInputState = v143;
LABEL_31:
    }
  }

  v137 = v141;
  objc_msgSend_endEncoding(v141, v129, v130, v131, v132, v133, v134, v135);
}

- (void)encodeBidirectionalSequenceToCommandBuffer:(id)commandBuffer sourceSequence:(NSArray *)sourceSequence destinationForwardImages:(NSArray *)destinationForwardImages destinationBackwardImages:(NSArray *)destinationBackwardImages
{
  v10 = objc_msgSend_count(sourceSequence, a2, commandBuffer, sourceSequence, destinationForwardImages, destinationBackwardImages, v6, v7);
  if (v10)
  {
    v18 = v10;
    if (v10 <= objc_msgSend_count(destinationForwardImages, v11, v12, v13, v14, v15, v16, v17) && (destinationBackwardImages || self->_bidirectionalCombineMode))
    {
      bidirectionalCombineMode = self->_bidirectionalCombineMode;
      v321[0] = 0;
      v19 = objc_alloc(MEMORY[0x277CD7210]);
      v31 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v19, v20, commandBuffer, 0, v21, v22, v23, v24);
      v319 = v31;
      v320 = self;
      if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
      {
        v32 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
        if (v32 || (v33 = objc_opt_class(), v34 = NSStringFromClass(v33), objc_msgSend_setLabel_(self, v35, v34, v36, v37, v38, v39, v40), (v32 = v34) != 0))
        {
          objc_msgSend_setLabel_(v31, v25, v32, v26, v27, v28, v29, v30);
        }
      }

      v313 = v31;
      v41 = 0;
      for (i = 0; i != v18; ++i)
      {
        v43 = objc_msgSend_objectAtIndexedSubscript_(sourceSequence, v25, i, v26, v27, v28, v29, v30);
        v50 = objc_msgSend_objectAtIndexedSubscript_(destinationForwardImages, v44, i, v45, v46, v47, v48, v49);
        objc_msgSend_offset(self, v51, v52, v53, v54, v55, v56, v57);
        objc_msgSend_clipRect(self, v58, v59, v60, v61, v62, v63, v64);
        v72 = objc_msgSend_destinationFeatureChannelOffset(self, v65, v66, v67, v68, v69, v70, v71);
        sub_239BBF664(self, commandBuffer, v313, v43, v50, v41, v321, &v316, &v318, 0, v72, 0, 1u, 0);
        v41 = v321[0];
      }

      v321[0] = 0;
      v79 = objc_msgSend_objectAtIndexedSubscript_(sourceSequence, v73, 0, v74, v75, v76, v77, v78);
      v87 = objc_msgSend_texture(v79, v80, v81, v82, v83, v84, v85, v86);
      MEMORY[0x23EE7D040](v317, commandBuffer, v87);
      if (v18 >= 1)
      {
        v94 = 0;
        v95 = (v18 & 0x7FFFFFFF) + 1;
        while (1)
        {
          v102 = objc_msgSend_objectAtIndexedSubscript_(sourceSequence, v88, v95 - 2, v89, v90, v91, v92, v93);
          if (!bidirectionalCombineMode)
          {
            break;
          }

          v103 = objc_msgSend_objectAtIndexedSubscript_(destinationForwardImages, v96, v95 - 2, v97, v98, v99, v100, v101);
          v111 = v103;
          if (bidirectionalCombineMode != 1)
          {
            goto LABEL_18;
          }

          v112 = *(&self->super.super.super.isa + *MEMORY[0x277CD7350]);
          v113 = objc_msgSend_numberOfImages(v103, v104, v105, v106, v107, v108, v109, v110);
          v114 = objc_alloc_init(MEMORY[0x277CD7058]);
          v122 = objc_msgSend_textureType(v111, v115, v116, v117, v118, v119, v120, v121);
          objc_msgSend_setTextureType_(v114, v123, v122, v124, v125, v126, v127, v128);
          objc_msgSend_setTextureType_(v114, v129, 3, v130, v131, v132, v133, v134);
          v142 = objc_msgSend_pixelFormat(v111, v135, v136, v137, v138, v139, v140, v141);
          objc_msgSend_setPixelFormat_(v114, v143, v142, v144, v145, v146, v147, v148);
          v156 = objc_msgSend_width(v111, v149, v150, v151, v152, v153, v154, v155);
          objc_msgSend_setWidth_(v114, v157, v156, v158, v159, v160, v161, v162);
          v170 = objc_msgSend_height(v111, v163, v164, v165, v166, v167, v168, v169);
          objc_msgSend_setHeight_(v114, v171, v170, v172, v173, v174, v175, v176);
          v184 = objc_msgSend_featureChannels(v111, v177, v178, v179, v180, v181, v182, v183);
          objc_msgSend_setArrayLength_(v114, v185, ((v184 + 3) >> 2) * v113, v186, v187, v188, v189, v190);
          objc_msgSend_setUsage_(v114, v191, 3, v192, v193, v194, v195, v196);
          objc_msgSend_setStorageMode_(v114, v197, 2, v198, v199, v200, v201, v202);
          v210 = objc_msgSend_width(v111, v203, v204, v205, v206, v207, v208, v209);
          v218 = objc_msgSend_height(v111, v211, v212, v213, v214, v215, v216, v217);
          v226 = objc_msgSend_arrayLength(v114, v219, v220, v221, v222, v223, v224, v225);
          v318.origin.x = v210;
          v318.origin.y = v218;
          v318.origin.z = v226;
          v234 = objc_msgSend_pixelFormat(v111, v227, v228, v229, v230, v231, v232, v233);
          v316.origin.x = MPSDevice::GetPixelInfo(v112, v234, *&v111[*MEMORY[0x277CD72F0]]);
          TempTexture = MPSAutoCache::GetTempTexture();
          v236 = objc_alloc(MEMORY[0x277CD7218]);
          v244 = objc_msgSend_featureChannels(v111, v237, v238, v239, v240, v241, v242, v243);
          v250 = objc_msgSend_initWithTexture_featureChannels_(v236, v245, TempTexture, v244, v246, v247, v248, v249);

          v251 = 1;
LABEL_19:
          v259 = objc_msgSend_destinationFeatureChannelOffset(self, v104, v105, v106, v107, v108, v109, v110);
          if (bidirectionalCombineMode == 2)
          {
            v259 += objc_msgSend_featureChannels(v111, v252, v253, v254, v255, v256, v257, v258) >> 1;
          }

          objc_msgSend_offset(self, v252, v253, v254, v255, v256, v257, v258);
          objc_msgSend_clipRect(self, v260, v261, v262, v263, v264, v265, v266);
          sub_239BBF664(self, commandBuffer, v313, v102, v250, v94, v321, &v316, &v318, 0, v259, 1, 0, 1u);
          if (v251)
          {
            objc_msgSend_clipRect(self, v88, v267, v89, v90, v91, v92, v93);
            x = v318.origin.x;
            objc_msgSend_clipRect(self, v269, v270, v271, v272, v273, v274, v275);
            y = v318.origin.y;
            objc_msgSend_clipRect(self, v277, v278, v279, v280, v281, v282, v283);
            z = v318.origin.z;
            memset(&v318, 0, sizeof(v318));
            objc_msgSend_clipRect(self, v285, v286, v287, v288, v289, v290, v291);
            memset(&v316, 0, sizeof(v316));
            v292 = *&v250[*MEMORY[0x277CD7308]];
            v293 = *&v250[*MEMORY[0x277CD7310]];
            v315.width = *&v250[*MEMORY[0x277CD7330]];
            v315.height = v292;
            v315.depth = v293;
            v314 = v318;
            MPSGetEffectiveClipRegion(&v316, &v315, &v314);
            v315.width = x;
            v315.height = y;
            v315.depth = z;
            v314 = v316;
            v301 = objc_msgSend_destinationFeatureChannelOffset(self, v294, v295, v296, v297, v298, v299, v300);
            sub_239BC1CF8(v111, 0, commandBuffer, v313, v111, v250, 0, 0, &v315, &v314, v301, 0);
          }

          v94 = v321[0];
          if (--v95 <= 1)
          {
            goto LABEL_24;
          }
        }

        v111 = objc_msgSend_objectAtIndexedSubscript_(destinationBackwardImages, v96, v95 - 2, v97, v98, v99, v100, v101);
LABEL_18:
        v251 = 0;
        v250 = v111;
        goto LABEL_19;
      }

      v94 = 0;
LABEL_24:

      MPSAutoCache::~MPSAutoCache(v317);
      objc_msgSend_endEncoding(v313, v302, v303, v304, v305, v306, v307, v308);
    }
  }
}

@end