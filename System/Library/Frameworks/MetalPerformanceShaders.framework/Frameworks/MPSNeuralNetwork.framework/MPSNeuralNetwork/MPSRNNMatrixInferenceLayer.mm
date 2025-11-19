@interface MPSRNNMatrixInferenceLayer
- (MPSRNNMatrixInferenceLayer)copyWithZone:(NSZone *)zone device:(id)device;
- (MPSRNNMatrixInferenceLayer)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSRNNMatrixInferenceLayer)initWithDevice:(id)device rnnDescriptor:(const MPSRNNDescriptor *)rnnDescriptor;
- (MPSRNNMatrixInferenceLayer)initWithDevice:(id)device rnnDescriptors:(NSArray *)rnnDescriptors;
- (id)recurrentStateForBatchSize:(unint64_t)a3;
- (id)temporaryRecurrentStateForCommandBuffer:(id)a3 batchSize:(unint64_t)a4;
- (void)dealloc;
- (void)encodeBidirectionalSequenceToCommandBuffer:(id)commandBuffer sourceSequence:(NSArray *)sourceSequence destinationForwardMatrices:(NSArray *)destinationForwardMatrices destinationBackwardMatrices:(NSArray *)destinationBackwardMatrices;
- (void)encodeSequenceToCommandBuffer:(id)commandBuffer sourceMatrices:(NSArray *)sourceMatrices sourceOffsets:(NSUInteger *)sourceOffsets destinationMatrices:(NSArray *)destinationMatrices destinationOffsets:(NSUInteger *)destinationOffsets recurrentInputState:(MPSRNNRecurrentMatrixState *)recurrentInputState recurrentOutputStates:(NSMutableArray *)recurrentOutputStates;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSRNNMatrixInferenceLayer

- (MPSRNNMatrixInferenceLayer)initWithDevice:(id)device rnnDescriptor:(const MPSRNNDescriptor *)rnnDescriptor
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
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
            goto LABEL_37;
          }

LABEL_38:

          return 0;
        }

        if (!MTLReportFailureTypeEnabled())
        {
          goto LABEL_38;
        }
      }

      else if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_38;
      }
    }

    else if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_38;
    }

LABEL_37:
    v69 = objc_opt_class();
    NSStringFromClass(v69);
    MTLReportFailure();
    goto LABEL_38;
  }

LABEL_6:
  v70.receiver = self;
  v70.super_class = MPSRNNMatrixInferenceLayer;
  v32 = [(MPSKernel *)&v70 initWithDevice:device];
  v33 = v32;
  if (v32)
  {
    v32->_numberOfLayers = 1;
    v32->layers = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
    v33->layerTypes = malloc_type_malloc(4uLL, 0x100004052888210uLL);
    v33->_inputFeatureChannels = objc_msgSend_inputFeatureChannels(rnnDescriptor, v34, v35, v36, v37, v38, v39, v40);
    v33->_outputFeatureChannels = objc_msgSend_outputFeatureChannels(rnnDescriptor, v41, v42, v43, v44, v45, v46, v47);
    v33->_storeAllIntermediateStates = 0;
    v33->_propagateFullRecurrentRows = 0;
    v55 = objc_msgSend_layerSequenceDirection(rnnDescriptor, v48, v49, v50, v51, v52, v53, v54);
    v56 = 62;
    if (v55)
    {
      v57 = 62;
    }

    else
    {
      v57 = 61;
    }

    if (v55)
    {
      v56 = 61;
    }

    v58 = 65;
    if (v55)
    {
      v59 = 65;
    }

    else
    {
      v59 = 63;
    }

    if (v55)
    {
      v60 = 66;
    }

    else
    {
      v60 = 64;
    }

    if (v55)
    {
      v58 = 63;
      v61 = 64;
    }

    else
    {
      v61 = 66;
    }

    *(&v33->super.super.isa + OBJC_IVAR___MPSRNNRecurrentImageState_nLayers[v57]) = 1;
    *(&v33->super.super.isa + OBJC_IVAR___MPSRNNRecurrentImageState_nLayers[v56]) = 0;
    *(&v33->super.super.isa + OBJC_IVAR___MPSRNNRecurrentImageState_nLayers[v59]) = 0;
    *(&v33->super.super.isa + OBJC_IVAR___MPSRNNRecurrentImageState_nLayers[v60]) = 0;
    *(&v33->super.super.isa + OBJC_IVAR___MPSRNNRecurrentImageState_nLayers[v58]) = v33->layers;
    *(&v33->super.super.isa + OBJC_IVAR___MPSRNNRecurrentImageState_nLayers[v61]) = v33->layerTypes;
    *v33->layers = 0;
    *v33->layerTypes = 0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v62 = sub_239BC268C(device, rnnDescriptor, 0, 0);
      v63 = 0;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v62 = sub_239BC2B08(device, rnnDescriptor, 0, 0);
        v63 = 2;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_28:
          v64 = objc_alloc(MEMORY[0x277CD75E0]);
          v33->gemmKernel = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v64, v65, device, 0, 1, 4, 4, 4, 1.0, 1.0);
          v66 = objc_alloc(MEMORY[0x277CD75E0]);
          v33->gemmKernelNonTranspose = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v66, v67, device, 0, 0, 4, 4, 4, 1.0, 1.0);
          return v33;
        }

        v62 = sub_239BC3D2C(device, rnnDescriptor, 0, 0);
        v63 = 1;
      }
    }

    *v33->layers = v62;
    *v33->layerTypes = v63;
    goto LABEL_28;
  }

  return v33;
}

- (MPSRNNMatrixInferenceLayer)initWithDevice:(id)device rnnDescriptors:(NSArray *)rnnDescriptors
{
  v6 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v6) & 1) == 0)
  {
    if (rnnDescriptors)
    {
      if (device)
      {
        goto LABEL_4;
      }

      v14 = self;
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_47;
      }
    }

    else
    {
      v14 = self;
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_47;
      }
    }

    v169 = objc_opt_class();
    NSStringFromClass(v169);
    goto LABEL_46;
  }

LABEL_4:
  v176.receiver = self;
  v176.super_class = MPSRNNMatrixInferenceLayer;
  v14 = [(MPSKernel *)&v176 initWithDevice:device];
  if (!v14)
  {
    return v14;
  }

  v14->_numberOfLayers = objc_msgSend_count(rnnDescriptors, v7, v8, v9, v10, v11, v12, v13);
  p_nForwardLayers = &v14->nForwardLayers;
  v14->nForwardLayers = 0;
  p_nBackwardLayers = &v14->nBackwardLayers;
  v14->nBackwardLayers = 0;
  p_backwardLayers = &v14->backwardLayers;
  v14->backwardLayers = 0;
  p_backwardLayerTypes = &v14->backwardLayerTypes;
  v14->backwardLayerTypes = 0;
  p_forwardLayers = &v14->forwardLayers;
  v14->forwardLayers = 0;
  p_forwardLayerTypes = &v14->forwardLayerTypes;
  v14->forwardLayerTypes = 0;
  v14->layers = 0;
  v14->layerTypes = 0;
  v14->_storeAllIntermediateStates = 0;
  v14->_propagateFullRecurrentRows = 0;
  numberOfLayers = v14->_numberOfLayers;
  if (!numberOfLayers)
  {
    return v14;
  }

  v174 = device;
  v14->layers = malloc_type_malloc(8 * numberOfLayers, 0x80040B8603338uLL);
  v14->layerTypes = malloc_type_malloc(4 * v14->_numberOfLayers, 0x100004052888210uLL);
  v23 = v14->_numberOfLayers;
  if (!v23)
  {
LABEL_27:
    if (*p_nForwardLayers != v23)
    {
      if (*p_nBackwardLayers != v23)
      {
        *p_backwardLayers = malloc_type_malloc(8 * *p_nBackwardLayers, 0x80040B8603338uLL);
        *p_backwardLayerTypes = malloc_type_malloc(4 * *p_nBackwardLayers, 0x100004052888210uLL);
        *p_forwardLayers = malloc_type_malloc(8 * *p_nForwardLayers, 0x80040B8603338uLL);
        *p_forwardLayerTypes = malloc_type_malloc(4 * *p_nForwardLayers, 0x100004052888210uLL);
        if (v14->_numberOfLayers)
        {
          v149 = 0;
          v150 = 0;
          v151 = 0;
          for (i = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v143, 0, v144, v145, v146, v147, v148); ; i = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v161, v149, v162, v163, v164, v165, v166))
          {
            v160 = objc_msgSend_layerSequenceDirection(i, v153, v154, v155, v156, v157, v158, v159);
            v167 = v14->layers[v149];
            if (v160)
            {
              *(*p_backwardLayers + 8 * v150) = v167;
              *(*p_backwardLayerTypes + 4 * v150++) = v14->layerTypes[v149];
              if (++v149 >= v14->_numberOfLayers)
              {
                goto LABEL_31;
              }
            }

            else
            {
              *(*p_forwardLayers + 8 * v151) = v167;
              *(*p_forwardLayerTypes + 4 * v151++) = v14->layerTypes[v149];
              if (++v149 >= v14->_numberOfLayers)
              {
                goto LABEL_31;
              }
            }
          }
        }

        goto LABEL_31;
      }

      p_forwardLayerTypes = &v14->backwardLayerTypes;
      p_forwardLayers = &v14->backwardLayers;
    }

    *p_forwardLayerTypes = v14->layerTypes;
    *p_forwardLayers = v14->layers;
LABEL_31:
    v138 = objc_alloc(MEMORY[0x277CD75E0]);
    v14->gemmKernel = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v138, v139, v174, 0, 1, 4, 4, 4, 1.0, 1.0);
    v140 = objc_alloc(MEMORY[0x277CD75E0]);
    v14->gemmKernelNonTranspose = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v140, v141, v174, 0, 0, 4, 4, 4, 1.0, 1.0);
    return v14;
  }

  v24 = 0;
  while (1)
  {
    if ((*(&v14->super.super.isa + v6) & 1) == 0)
    {
      objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v17, v24, v18, v19, v20, v21, v22);
      if (!objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v43, v24, v44, v45, v46, v47, v48))
      {
        if (!MTLReportFailureTypeEnabled())
        {
          goto LABEL_47;
        }

        goto LABEL_45;
      }

      v55 = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v49, v24, v50, v51, v52, v53, v54);
      objc_msgSend_inputFeatureChannels(v55, v56, v57, v58, v59, v60, v61, v62);
      v69 = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v63, v24, v64, v65, v66, v67, v68);
      if (!objc_msgSend_inputFeatureChannels(v69, v70, v71, v72, v73, v74, v75, v76))
      {
        if (!MTLReportFailureTypeEnabled())
        {
          goto LABEL_47;
        }

        goto LABEL_45;
      }

      v83 = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v77, v24, v78, v79, v80, v81, v82);
      objc_msgSend_outputFeatureChannels(v83, v84, v85, v86, v87, v88, v89, v90);
      v97 = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v91, v24, v92, v93, v94, v95, v96);
      if (!objc_msgSend_outputFeatureChannels(v97, v98, v99, v100, v101, v102, v103, v104))
      {
        break;
      }
    }

    if (v24)
    {
      if (v24 != v14->_numberOfLayers - 1)
      {
        goto LABEL_20;
      }

LABEL_19:
      v105 = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v17, v24, v18, v19, v20, v21, v22);
      v14->_outputFeatureChannels = objc_msgSend_outputFeatureChannels(v105, v106, v107, v108, v109, v110, v111, v112);
      goto LABEL_20;
    }

    v129 = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v17, 0, v18, v19, v20, v21, v22);
    v14->_inputFeatureChannels = objc_msgSend_inputFeatureChannels(v129, v130, v131, v132, v133, v134, v135, v136);
    if (v14->_numberOfLayers == 1)
    {
      goto LABEL_19;
    }

LABEL_20:
    v14->layers[v24] = 0;
    v14->layerTypes[v24] = 0;
    objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v17, v24, v18, v19, v20, v21, v22);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v120 = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v114, v24, v115, v116, v117, v118, v119);
    if (isKindOfClass)
    {
      v25 = sub_239BC268C(v174, v120, 0, 0);
      v32 = 0;
    }

    else
    {
      objc_opt_class();
      v121 = objc_opt_isKindOfClass();
      v128 = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v122, v24, v123, v124, v125, v126, v127);
      if (v121)
      {
        v25 = sub_239BC2B08(v174, v128, 0, 0);
        v32 = 2;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_10;
        }

        v137 = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v26, v24, v27, v28, v29, v30, v31);
        v25 = sub_239BC3D2C(v174, v137, 0, 0);
        v32 = 1;
      }
    }

    v14->layers[v24] = v25;
    v14->layerTypes[v24] = v32;
LABEL_10:
    v33 = objc_msgSend_objectAtIndexedSubscript_(rnnDescriptors, v26, v24, v27, v28, v29, v30, v31);
    v41 = objc_msgSend_layerSequenceDirection(v33, v34, v35, v36, v37, v38, v39, v40);
    v42 = &v14->nForwardLayers;
    if (v41)
    {
      v42 = &v14->nBackwardLayers;
    }

    ++*v42;
    ++v24;
    v23 = v14->_numberOfLayers;
    if (v24 >= v23)
    {
      goto LABEL_27;
    }
  }

  if (!MTLReportFailureTypeEnabled())
  {
    goto LABEL_47;
  }

LABEL_45:
  v168 = objc_opt_class();
  NSStringFromClass(v168);
LABEL_46:
  MTLReportFailure();
LABEL_47:

  return 0;
}

- (void)dealloc
{
  if (SLODWORD(self->_numberOfLayers) >= 1)
  {
    for (i = 0; i < SLODWORD(self->_numberOfLayers); ++i)
    {
      v4 = self->layers[i];
      v5 = self->layerTypes[i];
      if (v5 == 2)
      {
        if (v4)
        {

          v9 = v4[11];
          if (v9)
          {
            free(v9);
          }

          v8 = v4[48];
LABEL_18:

          free(v4);
        }
      }

      else
      {
        if (v5 != 1)
        {
          if (v5)
          {
            v6 = 1;
          }

          else
          {
            v6 = v4 == 0;
          }

          if (v6)
          {
            continue;
          }

          v7 = v4[11];
          if (v7)
          {
            free(v7);
          }

          v8 = v4[13];
          goto LABEL_18;
        }

        sub_239BC4B70(self->layers[i]);
      }
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

  v16.receiver = self;
  v16.super_class = MPSRNNMatrixInferenceLayer;
  [(MPSKernel *)&v16 dealloc];
}

- (MPSRNNMatrixInferenceLayer)copyWithZone:(NSZone *)zone device:(id)device
{
  v40.receiver = self;
  v40.super_class = MPSRNNMatrixInferenceLayer;
  v7 = [MPSKernel copyWithZone:sel_copyWithZone_device_ device:?];
  v13 = v7;
  if (v7)
  {
    v7->_inputFeatureChannels = self->_inputFeatureChannels;
    v7->_outputFeatureChannels = self->_outputFeatureChannels;
    v7->_numberOfLayers = self->_numberOfLayers;
    v7->_recurrentOutputIsTemporary = self->_recurrentOutputIsTemporary;
    v7->_storeAllIntermediateStates = self->_storeAllIntermediateStates;
    v7->_bidirectionalCombineMode = self->_bidirectionalCombineMode;
    v7->layers = 0;
    v7->layerTypes = 0;
    v7->forwardLayers = 0;
    v7->forwardLayerTypes = 0;
    v7->backwardLayers = 0;
    v7->backwardLayerTypes = 0;
    p_nForwardLayers = &v7->nForwardLayers;
    v7->nForwardLayers = 0;
    p_nBackwardLayers = &v7->nBackwardLayers;
    v7->nBackwardLayers = 0;
    numberOfLayers = self->_numberOfLayers;
    if (!numberOfLayers || !self->layers || !self->layerTypes)
    {
LABEL_34:
      v13->gemmKernel = objc_msgSend_copyWithZone_device_(self->gemmKernel, v8, zone, device, v9, v10, v11, v12);
      v13->gemmKernelNonTranspose = objc_msgSend_copyWithZone_device_(self->gemmKernelNonTranspose, v31, zone, device, v32, v33, v34, v35);
      return v13;
    }

    v15 = malloc_type_malloc(4 * numberOfLayers, 0x100004052888210uLL);
    v13->layerTypes = v15;
    if (v15)
    {
      memcpy(v15, self->layerTypes, 4 * self->_numberOfLayers);
      v16 = malloc_type_malloc(8 * self->_numberOfLayers, 0x80040B8603338uLL);
      v13->layers = v16;
      if (v16)
      {
        nForwardLayers = self->nForwardLayers;
        if (nForwardLayers)
        {
          v18 = malloc_type_malloc(4 * nForwardLayers, 0x100004052888210uLL);
          v13->forwardLayerTypes = v18;
          if (!v18)
          {
            if (!MTLReportFailureTypeEnabled())
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          }

          v19 = malloc_type_malloc(8 * self->nForwardLayers, 0x80040B8603338uLL);
          v13->forwardLayers = v19;
          if (!v19)
          {
            if (!MTLReportFailureTypeEnabled())
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          }

          memcpy(v13->forwardLayerTypes, self->forwardLayerTypes, 4 * self->nForwardLayers);
        }

        nBackwardLayers = self->nBackwardLayers;
        if (!nBackwardLayers)
        {
          goto LABEL_15;
        }

        v21 = malloc_type_malloc(4 * nBackwardLayers, 0x100004052888210uLL);
        v13->backwardLayerTypes = v21;
        if (v21)
        {
          v22 = malloc_type_malloc(8 * self->nBackwardLayers, 0x80040B8603338uLL);
          v13->backwardLayers = v22;
          if (v22)
          {
            memcpy(v13->backwardLayerTypes, self->backwardLayerTypes, 4 * self->nBackwardLayers);
LABEL_15:
            if (self->_numberOfLayers)
            {
              v23 = 0;
              v24 = MEMORY[0x277CD7350];
              while (1)
              {
                v28 = self->layerTypes[v23];
                if (v28 == 2)
                {
                  v13->layers[v23] = sub_239BC5264(device, self->layers[v23], (*(&self->super.super.isa + *v24))[2]);
                  v29 = v13->layers[v23];
                  if (!v29)
                  {
                    goto LABEL_19;
                  }
                }

                else if (v28 == 1)
                {
                  v13->layers[v23] = sub_239BC547C(device, self->layers[v23], (*(&self->super.super.isa + *v24))[2]);
                  v29 = v13->layers[v23];
                  if (!v29)
                  {
                    goto LABEL_19;
                  }
                }

                else if (v28)
                {
                  v13->layers[v23] = 0;
                  v29 = v13->layers[v23];
                  if (!v29)
                  {
                    goto LABEL_19;
                  }
                }

                else
                {
                  v13->layers[v23] = sub_239BC5130(device, self->layers[v23], (*(&self->super.super.isa + *v24))[2]);
                  v29 = v13->layers[v23];
                  if (!v29)
                  {
                    goto LABEL_19;
                  }
                }

                v30 = self->layers[v23];
                if (v30)
                {
                  if (v30[8])
                  {
                    break;
                  }
                }

                v25 = p_nForwardLayers;
                forwardLayers = v13->forwardLayers;
                if (forwardLayers)
                {
                  goto LABEL_18;
                }

LABEL_19:
                if (++v23 >= self->_numberOfLayers)
                {
                  goto LABEL_34;
                }
              }

              v25 = p_nBackwardLayers;
              forwardLayers = v13->backwardLayers;
              if (!forwardLayers)
              {
                goto LABEL_19;
              }

LABEL_18:
              v27 = (*v25)++;
              forwardLayers[v27] = v29;
              goto LABEL_19;
            }

            goto LABEL_34;
          }

          if (MTLReportFailureTypeEnabled())
          {
            goto LABEL_47;
          }

LABEL_48:

          return 0;
        }

        if (!MTLReportFailureTypeEnabled())
        {
          goto LABEL_48;
        }
      }

      else if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_48;
      }
    }

    else if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_48;
    }

LABEL_47:
    v37 = objc_opt_class();
    NSStringFromClass(v37);
    MTLReportFailure();
    goto LABEL_48;
  }

  return v13;
}

- (MPSRNNMatrixInferenceLayer)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v80.receiver = self;
  v80.super_class = MPSRNNMatrixInferenceLayer;
  v6 = [MPSKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v13 = v6;
  if (!v6)
  {
    return v13;
  }

  if (*(&v6->super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 != 0x10000)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_25;
    }

LABEL_23:
    v58 = objc_opt_class();
    NSStringFromClass(v58);
LABEL_24:
    MTLReportFailure();
    goto LABEL_25;
  }

  v6->_inputFeatureChannels = objc_msgSend_decodeInt64ForKey_(aDecoder, v7, @"kMPSRNNLayer._inputFeatureChannels", v8, v9, v10, v11, v12);
  v13->_outputFeatureChannels = objc_msgSend_decodeInt64ForKey_(aDecoder, v14, @"kMPSRNNLayer._outputFeatureChannels", v15, v16, v17, v18, v19);
  v13->_numberOfLayers = objc_msgSend_decodeInt64ForKey_(aDecoder, v20, @"kMPSRNNLayer._numberOfLayers", v21, v22, v23, v24, v25);
  v13->_recurrentOutputIsTemporary = objc_msgSend_decodeBoolForKey_(aDecoder, v26, @"kMPSRNNLayer._recurrentOutputIsTemporary", v27, v28, v29, v30, v31);
  v13->_storeAllIntermediateStates = objc_msgSend_decodeBoolForKey_(aDecoder, v32, @"kMPSRNNLayer._storeAllIntermediateStates", v33, v34, v35, v36, v37);
  v13->_bidirectionalCombineMode = objc_msgSend_decodeInt64ForKey_(aDecoder, v38, @"kMPSRNNLayer._bidirectionalCombineMode", v39, v40, v41, v42, v43);
  v13->layers = 0;
  v13->layerTypes = 0;
  v13->forwardLayers = 0;
  v13->forwardLayerTypes = 0;
  v13->backwardLayers = 0;
  v13->backwardLayerTypes = 0;
  p_nForwardLayers = &v13->nForwardLayers;
  v13->nForwardLayers = 0;
  p_nBackwardLayers = &v13->nBackwardLayers;
  v13->nBackwardLayers = 0;
  numberOfLayers = v13->_numberOfLayers;
  if (!numberOfLayers)
  {
    goto LABEL_46;
  }

  v13->layerTypes = malloc_type_malloc(4 * numberOfLayers, 0x100004052888210uLL);
  v47 = malloc_type_malloc(8 * v13->_numberOfLayers, 0x80040B8603338uLL);
  v13->layers = v47;
  if (!v13->layerTypes || !v47)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v79 = 0;
  v78 = 0;
  v52 = sub_239BCD898(aDecoder, @"kMPSRNNLayer.layerTypes", &v79, &v78, v48, v49, v50, v51);
  if (v79 != v13->_numberOfLayers || !v78)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_25;
    }

    goto LABEL_61;
  }

  v53 = v52;
  if (!v79)
  {
LABEL_26:
    free(v53);
    if (!*p_nForwardLayers)
    {
LABEL_29:
      if (!*p_nBackwardLayers)
      {
        goto LABEL_32;
      }

      v61 = malloc_type_malloc(4 * *p_nBackwardLayers, 0x100004052888210uLL);
      v13->backwardLayerTypes = v61;
      if (v61)
      {
        v62 = malloc_type_malloc(8 * *p_nBackwardLayers, 0x80040B8603338uLL);
        v13->backwardLayers = v62;
        if (!v62)
        {
          if (MTLReportFailureTypeEnabled())
          {
            goto LABEL_61;
          }

          goto LABEL_25;
        }

LABEL_32:
        *p_nForwardLayers = 0;
        *p_nBackwardLayers = 0;
        v63 = v13->_numberOfLayers;
        if (v63)
        {
          for (i = 0; i < v63; ++i)
          {
            v66 = v13->layerTypes[i];
            v67 = v13->layers[i];
            if (v67 && v67[8])
            {
              backwardLayerTypes = v13->backwardLayerTypes;
              if (backwardLayerTypes)
              {
                backwardLayerTypes[*p_nBackwardLayers] = v66;
              }

              backwardLayers = v13->backwardLayers;
              v70 = &v13->nBackwardLayers;
              if (!backwardLayers)
              {
                continue;
              }
            }

            else
            {
              forwardLayerTypes = v13->forwardLayerTypes;
              if (forwardLayerTypes)
              {
                forwardLayerTypes[*p_nForwardLayers] = v66;
              }

              backwardLayers = v13->forwardLayers;
              v70 = &v13->nForwardLayers;
              if (!backwardLayers)
              {
                continue;
              }
            }

            v65 = (*v70)++;
            backwardLayers[v65] = v67;
            v63 = v13->_numberOfLayers;
          }
        }

LABEL_46:
        v72 = objc_alloc(MEMORY[0x277CD75E0]);
        v13->gemmKernel = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v72, v73, device, 0, 1, 4, 4, 4, 1.0, 1.0);
        v74 = objc_alloc(MEMORY[0x277CD75E0]);
        v13->gemmKernelNonTranspose = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v74, v75, device, 0, 0, 4, 4, 4, 1.0, 1.0);
        return v13;
      }

      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_25;
      }

      goto LABEL_61;
    }

    v59 = malloc_type_malloc(4 * *p_nForwardLayers, 0x100004052888210uLL);
    v13->forwardLayerTypes = v59;
    if (v59)
    {
      v60 = malloc_type_malloc(8 * *p_nForwardLayers, 0x80040B8603338uLL);
      v13->forwardLayers = v60;
      if (v60)
      {
        goto LABEL_29;
      }

      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_25;
      }
    }

    else if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_25;
    }

LABEL_61:
    v77 = objc_opt_class();
    NSStringFromClass(v77);
    goto LABEL_24;
  }

  v54 = 0;
  while (1)
  {
    v55 = *(v53 + v54);
    v13->layerTypes[v54] = v55;
    if (v55 >= 3)
    {
      break;
    }

    if (v55 == 2)
    {
      v13->layers[v54] = sub_239BC5F54(aDecoder, device, v54, &v78);
      v56 = v13->layers[v54];
      v57 = &v13->nForwardLayers;
      if (v56)
      {
        goto LABEL_19;
      }
    }

    else if (v55 == 1)
    {
      v13->layers[v54] = sub_239BC6254(aDecoder, device, v54, &v78);
      v56 = v13->layers[v54];
      v57 = &v13->nForwardLayers;
      if (v56)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v13->layers[v54] = sub_239BC5CBC(aDecoder, device, v54, &v78);
      v56 = v13->layers[v54];
      v57 = &v13->nForwardLayers;
      if (v56)
      {
LABEL_19:
        if (v56[8])
        {
          v57 = &v13->nBackwardLayers;
        }

        else
        {
          v57 = &v13->nForwardLayers;
        }
      }
    }

    ++*v57;
    if (++v54 >= v13->_numberOfLayers)
    {
      goto LABEL_26;
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
    goto LABEL_61;
  }

LABEL_25:

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v51.receiver = self;
  v51.super_class = MPSRNNMatrixInferenceLayer;
  [(MPSKernel *)&v51 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(a3, v5, self->_inputFeatureChannels, @"kMPSRNNLayer._inputFeatureChannels", v6, v7, v8, v9);
  objc_msgSend_encodeInt64_forKey_(a3, v10, self->_outputFeatureChannels, @"kMPSRNNLayer._outputFeatureChannels", v11, v12, v13, v14);
  objc_msgSend_encodeInt64_forKey_(a3, v15, self->_numberOfLayers, @"kMPSRNNLayer._numberOfLayers", v16, v17, v18, v19);
  objc_msgSend_encodeBool_forKey_(a3, v20, self->_recurrentOutputIsTemporary, @"kMPSRNNLayer._recurrentOutputIsTemporary", v21, v22, v23, v24);
  objc_msgSend_encodeInt64_forKey_(a3, v25, self->_bidirectionalCombineMode, @"kMPSRNNLayer._bidirectionalCombineMode", v26, v27, v28, v29);
  numberOfLayers = self->_numberOfLayers;
  if (!numberOfLayers)
  {
    return;
  }

  v35 = malloc_type_malloc(4 * numberOfLayers, 0x100004052888210uLL);
  if (!v35 && MTLReportFailureTypeEnabled())
  {
    v50 = objc_opt_class();
    NSStringFromClass(v50);
    MTLReportFailure();
  }

  v36 = self->_numberOfLayers;
  if (v36)
  {
    layerTypes = self->layerTypes;
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
  if (self->_numberOfLayers)
  {
    v48 = 0;
    do
    {
      v49 = self->layerTypes[v48];
      switch(v49)
      {
        case 2:
          sub_239BC6D40(a3, self->layers[v48], v48);
          break;
        case 1:
          sub_239BC6FA4(a3, self->layers[v48], v48);
          break;
        case 0:
          sub_239BC6BE0(a3, self->layers[v48], v48);
          break;
      }

      ++v48;
    }

    while (v48 < self->_numberOfLayers);
  }
}

- (void)encodeSequenceToCommandBuffer:(id)commandBuffer sourceMatrices:(NSArray *)sourceMatrices sourceOffsets:(NSUInteger *)sourceOffsets destinationMatrices:(NSArray *)destinationMatrices destinationOffsets:(NSUInteger *)destinationOffsets recurrentInputState:(MPSRNNRecurrentMatrixState *)recurrentInputState recurrentOutputStates:(NSMutableArray *)recurrentOutputStates
{
  v13 = objc_msgSend_count(sourceMatrices, a2, commandBuffer, sourceMatrices, sourceOffsets, destinationMatrices, destinationOffsets, recurrentInputState);
  v14 = objc_alloc(MEMORY[0x277CD7210]);
  v145 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v14, v15, commandBuffer, 0, v16, v17, v18, v19);
  v26 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v26) & 0x18) != 0)
  {
    v27 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (v27 || (v28 = objc_opt_class(), v29 = NSStringFromClass(v28), objc_msgSend_setLabel_(self, v30, v29, v31, v32, v33, v34, v35), (v27 = v29) != 0))
    {
      objc_msgSend_setLabel_(v145, v20, v27, v21, v22, v23, v24, v25);
    }
  }

  v42 = malloc_type_malloc(16 * v13, 0x80040B8603338uLL);
  v141 = commandBuffer;
  v43 = &v42[v13];
  if (v13)
  {
    v44 = 0;
    for (i = objc_msgSend_objectAtIndexedSubscript_(sourceMatrices, v36, 0, v37, v38, v39, v40, v41); ; i = objc_msgSend_objectAtIndexedSubscript_(sourceMatrices, v52, v44, v54, v55, v56, v57, v58, v132, v134, v136, outputFeatureChannels))
    {
      v42[v44] = i;
      *(v43 + 8 * v44) = objc_msgSend_objectAtIndexedSubscript_(destinationMatrices, v46, v44, v47, v48, v49, v50, v51);
      if ((*(&self->super.super.isa + v26) & 1) == 0)
      {
        objc_msgSend_rows(v42[v44], v52, v53, v54, v55, v56, v57, v58);
        objc_msgSend_rows(*(v43 + 8 * v44), v59, v60, v61, v62, v63, v64, v65);
        v73 = objc_msgSend_rows(v42[v44], v66, v67, v68, v69, v70, v71, v72);
        if (v73 != objc_msgSend_rows(*(v43 + 8 * v44), v74, v75, v76, v77, v78, v79, v80) && MTLReportFailureTypeEnabled())
        {
          v117 = objc_msgSend_rows(v42[v44], v81, v82, v83, v84, v85, v86, v87);
          outputFeatureChannels = v44;
          v140 = objc_msgSend_rows(*(v43 + 8 * v44), v118, v119, v120, v121, v122, v123, v124);
          v134 = v44;
          v136 = v117;
          v132 = self;
          MTLReportFailure();
        }

        objc_msgSend_columns(v42[v44], v81, v82, v83, v84, v85, v86, v87, v132, v134, v136, outputFeatureChannels, v140, v141);
        if (objc_msgSend_columns(v42[v44], v88, v89, v90, v91, v92, v93, v94) != self->_inputFeatureChannels && MTLReportFailureTypeEnabled())
        {
          v137 = objc_msgSend_columns(v42[v44], v95, v96, v97, v98, v99, v100, v101);
          inputFeatureChannels = self->_inputFeatureChannels;
          v133 = self;
          v135 = v44;
          MTLReportFailure();
        }

        objc_msgSend_columns(*(v43 + 8 * v44), v95, v96, v97, v98, v99, v100, v101, v133, v135, v137, inputFeatureChannels);
        if (objc_msgSend_columns(*(v43 + 8 * v44), v102, v103, v104, v105, v106, v107, v108) != self->_outputFeatureChannels && MTLReportFailureTypeEnabled())
        {
          v109 = objc_msgSend_objectAtIndexedSubscript_(destinationMatrices, v52, v44, v54, v55, v56, v57, v58);
          v136 = objc_msgSend_columns(v109, v110, v111, v112, v113, v114, v115, v116);
          outputFeatureChannels = self->_outputFeatureChannels;
          v132 = self;
          v134 = v44;
          MTLReportFailure();
        }
      }

      if (v13 == ++v44)
      {
        break;
      }
    }
  }

  sub_239BC7754(self, v145, v141, v42, v43, v13, recurrentInputState, recurrentOutputStates, 0, 0, 0, sourceOffsets, destinationOffsets);
  free(v42);
  objc_msgSend_endEncoding(v145, v125, v126, v127, v128, v129, v130, v131);
}

- (void)encodeBidirectionalSequenceToCommandBuffer:(id)commandBuffer sourceSequence:(NSArray *)sourceSequence destinationForwardMatrices:(NSArray *)destinationForwardMatrices destinationBackwardMatrices:(NSArray *)destinationBackwardMatrices
{
  v432 = *MEMORY[0x277D85DE8];
  v13 = objc_msgSend_count(sourceSequence, a2, commandBuffer, sourceSequence, destinationForwardMatrices, destinationBackwardMatrices, v6, v7);
  if (v13)
  {
    v14 = v13;
    v15 = objc_alloc(MEMORY[0x277CD7210]);
    v409 = commandBuffer;
    v410 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v15, v16, commandBuffer, 0, v17, v18, v19, v20);
    v414 = v410;
    v415 = self;
    v411 = self;
    if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
    {
      v27 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
      if (v27 || (v28 = objc_opt_class(), v29 = NSStringFromClass(v28), objc_msgSend_setLabel_(v411, v30, v29, v31, v32, v33, v34, v35), (v27 = v29) != 0))
      {
        objc_msgSend_setLabel_(v410, v21, v27, v22, v23, v24, v25, v26);
      }
    }

    v36 = malloc_type_malloc(16 * v14, 0x80040B8603338uLL);
    v37 = 0;
    v38 = &v36[v14];
    for (i = objc_msgSend_objectAtIndexedSubscript_(sourceSequence, v39, 0, v40, v41, v42, v43, v44); ; i = objc_msgSend_objectAtIndexedSubscript_(sourceSequence, v47, v37, v49, v50, v51, v52, v53))
    {
      v46 = i;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        Count = objc_msgSend_readCount(v46, v47, v48, v49, v50, v51, v52, v53);
        objc_msgSend_setReadCount_(v46, v55, Count + 1, v56, v57, v58, v59, v60);
      }

      if (v14 == ++v37)
      {
        break;
      }
    }

    v412 = v36;
    bidirectionalCombineMode = v411->_bidirectionalCombineMode;
    if (bidirectionalCombineMode)
    {
      v62 = bidirectionalCombineMode == 2;
    }

    else
    {
      v62 = 1;
    }

    if (v62)
    {
      for (j = 0; j != v14; ++j)
      {
        v36[j] = objc_msgSend_objectAtIndexedSubscript_(sourceSequence, v47, j, v49, v50, v51, v52, v53);
        v38[j] = objc_msgSend_objectAtIndexedSubscript_(destinationForwardMatrices, v64, j, v65, v66, v67, v68, v69);
      }

      sub_239BC7754(v411, v410, commandBuffer, v36, v38, v14, 0, 0, 0, 1, 0, 0, 0);
      if (v411->_bidirectionalCombineMode == 2)
      {
        v77 = objc_msgSend_columns(*v38, v70, v71, v72, v73, v74, v75, v76) >> 1;
      }

      else
      {
        v77 = 0;
      }

      v393 = v14 - 1;
      v394 = v36;
      do
      {
        *v394 = objc_msgSend_objectAtIndexedSubscript_(sourceSequence, v70, v393, v72, v73, v74, v75, v76);
        if (v411->_bidirectionalCombineMode == 2)
        {
          v401 = objc_msgSend_objectAtIndexedSubscript_(destinationForwardMatrices, v395, v393, v396, v397, v398, v399, v400);
        }

        else
        {
          v401 = objc_msgSend_objectAtIndexedSubscript_(destinationBackwardMatrices, v395, v393, v396, v397, v398, v399, v400);
        }

        v394[v14] = v401;
        --v393;
        ++v394;
      }

      while (v393 != -1);
      sub_239BC7754(v411, v410, v409, v36, v38, v14, 0, 0, 1, 0, v77, 0, 0);
    }

    else if (bidirectionalCombineMode == 1)
    {
      for (k = 0; k != v14; ++k)
      {
        v36[k] = objc_msgSend_objectAtIndexedSubscript_(sourceSequence, v47, k, v49, v50, v51, v52, v53);
        v38[k] = objc_msgSend_objectAtIndexedSubscript_(destinationForwardMatrices, v79, k, v80, v81, v82, v83, v84);
      }

      sub_239BC7754(v411, v410, commandBuffer, v36, v38, v14, 0, 0, 0, 1, 0, 0, 0);
      MEMORY[0x23EE7D040](v413, commandBuffer, 0);
      v85 = MEMORY[0x277CD7258];
      v92 = objc_msgSend_objectAtIndexedSubscript_(destinationForwardMatrices, v86, 0, v87, v88, v89, v90, v91);
      v100 = objc_msgSend_rows(v92, v93, v94, v95, v96, v97, v98, v99);
      v107 = objc_msgSend_objectAtIndexedSubscript_(destinationForwardMatrices, v101, 0, v102, v103, v104, v105, v106);
      v115 = objc_msgSend_columns(v107, v108, v109, v110, v111, v112, v113, v114);
      v122 = objc_msgSend_objectAtIndexedSubscript_(destinationForwardMatrices, v116, 0, v117, v118, v119, v120, v121);
      v130 = objc_msgSend_rowBytes(v122, v123, v124, v125, v126, v127, v128, v129);
      v137 = objc_msgSend_objectAtIndexedSubscript_(destinationForwardMatrices, v131, 0, v132, v133, v134, v135, v136);
      v145 = objc_msgSend_dataType(v137, v138, v139, v140, v141, v142, v143, v144);
      v149 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(v85, v146, v100, v115, v130, v145, v147, v148);
      v157 = objc_msgSend_rows(v149, v150, v151, v152, v153, v154, v155, v156);
      v165 = objc_msgSend_rowBytes(v149, v158, v159, v160, v161, v162, v163, v164);
      v172 = malloc_type_malloc(8 * v14, 0x80040B8603338uLL);
      v173 = 0;
      v174 = v165 * v157;
      v175 = v14 - 1;
      v176 = v14 - 1;
      do
      {
        v412[v173] = objc_msgSend_objectAtIndexedSubscript_(sourceSequence, v166, v176, v167, v168, v169, v170, v171);
        v177 = objc_alloc(MEMORY[0x277CD7250]);
        TempBuffer = MPSAutoCache::GetTempBuffer(v413, v174, 0);
        v172[v173] = objc_msgSend_initWithBuffer_descriptor_(v177, v179, TempBuffer, v149, v180, v181, v182, v183);
        --v176;
        ++v173;
      }

      while (v176 != -1);
      sub_239BC7754(v411, v410, v409, v412, v172, v14, 0, 0, 1, 0, 0, 0, 0);
      v190 = v412;
      do
      {
        *v190++ = objc_msgSend_objectAtIndexedSubscript_(destinationForwardMatrices, v184, v175--, v185, v186, v187, v188, v189);
      }

      while (v175 != -1);
      ComputeState = MPSLibrary::GetComputeState();
      if (ComputeState)
      {
        objc_msgSend_setComputePipelineState_(v410, v191, ComputeState, v192, v193, v194, v195, v196);
        v205 = objc_msgSend_threadExecutionWidth(ComputeState, v198, v199, v200, v201, v202, v203, v204);
        MPSLibrary::ReleaseComputeState();
        memset(v422, 0, sizeof(v422));
        if (v205 <= 1)
        {
          v205 = 1;
        }

        v421 = 0;
        v213 = objc_msgSend_rowBytes(*v412, v206, v207, v208, v209, v210, v211, v212);
        v420 = v213 / (objc_msgSend_dataType(*v412, v214, v215, v216, v217, v218, v219, v220) >> 3);
        v228 = objc_msgSend_columns(*v412, v221, v222, v223, v224, v225, v226, v227);
        v419 = __PAIR64__(objc_msgSend_rows(*v412, v229, v230, v231, v232, v233, v234, v235), v228);
        objc_msgSend_setBytes_length_atIndex_(v410, v236, &v419, 16, 0, v237, v238, v239);
        v247 = objc_msgSend_columns(*v412, v240, v241, v242, v243, v244, v245, v246);
        v262 = objc_msgSend_rows(*v412, v248, v249, v250, v251, v252, v253, v254);
        v263 = 0;
        v264 = 0;
        v265 = v205 + v247 - 1;
        v266 = v14;
        v267 = v265 / v205;
        do
        {
          v424 = objc_msgSend_data(v412[v263], v255, v256, v257, v258, v259, v260, v261);
          v423[0] = objc_msgSend_data(v172[v264], v268, v269, v270, v271, v272, v273, v274);
          if (v264 + 1 >= v14)
          {
            v425 = objc_msgSend_data(*v412, v275, v276, v277, v278, v279, v280, v281);
            v289 = v172;
          }

          else
          {
            v425 = objc_msgSend_data(v412[v263 + 1], v275, v276, v277, v278, v279, v280, v281);
            v289 = &v172[v263 + 1];
          }

          v423[1] = objc_msgSend_data(*v289, v282, v283, v284, v285, v286, v287, v288);
          if (v264 + 2 >= v14)
          {
            v426 = objc_msgSend_data(*v412, v290, v291, v292, v293, v294, v295, v296);
            v304 = v172;
          }

          else
          {
            v426 = objc_msgSend_data(v412[v263 + 2], v290, v291, v292, v293, v294, v295, v296);
            v304 = &v172[v263 + 2];
          }

          v423[2] = objc_msgSend_data(*v304, v297, v298, v299, v300, v301, v302, v303);
          if (v264 + 3 >= v14)
          {
            v427 = objc_msgSend_data(*v412, v305, v306, v307, v308, v309, v310, v311);
            v319 = v172;
          }

          else
          {
            v427 = objc_msgSend_data(v412[v263 + 3], v305, v306, v307, v308, v309, v310, v311);
            v319 = &v172[v263 + 3];
          }

          v423[3] = objc_msgSend_data(*v319, v312, v313, v314, v315, v316, v317, v318);
          if (v264 + 4 >= v14)
          {
            v428 = objc_msgSend_data(*v412, v320, v321, v322, v323, v324, v325, v326);
            v334 = v172;
          }

          else
          {
            v428 = objc_msgSend_data(v412[v263 + 4], v320, v321, v322, v323, v324, v325, v326);
            v334 = &v172[v263 + 4];
          }

          v423[4] = objc_msgSend_data(*v334, v327, v328, v329, v330, v331, v332, v333);
          if (v264 + 5 >= v14)
          {
            v429 = objc_msgSend_data(*v412, v335, v336, v337, v338, v339, v340, v341);
            v349 = v172;
          }

          else
          {
            v429 = objc_msgSend_data(v412[v263 + 5], v335, v336, v337, v338, v339, v340, v341);
            v349 = &v172[v263 + 5];
          }

          v423[5] = objc_msgSend_data(*v349, v342, v343, v344, v345, v346, v347, v348);
          if (v264 + 6 >= v14)
          {
            v430 = objc_msgSend_data(*v412, v350, v351, v352, v353, v354, v355, v356);
            v364 = v172;
          }

          else
          {
            v430 = objc_msgSend_data(v412[v263 + 6], v350, v351, v352, v353, v354, v355, v356);
            v364 = &v172[v263 + 6];
          }

          v423[6] = objc_msgSend_data(*v364, v357, v358, v359, v360, v361, v362, v363);
          if (v264 + 7 >= v14)
          {
            v431 = objc_msgSend_data(*v412, v365, v366, v367, v368, v369, v370, v371);
            v379 = v172;
          }

          else
          {
            v431 = objc_msgSend_data(v412[v263 + 7], v365, v366, v367, v368, v369, v370, v371);
            v379 = &v172[v263 + 7];
          }

          v423[7] = objc_msgSend_data(*v379, v372, v373, v374, v375, v376, v377, v378);
          v383 = v266 - 8;
          if (v266 >= 8)
          {
            v266 = 8;
          }

          objc_msgSend_setBuffers_offsets_withRange_(v410, v380, &v424, v422, 1, 8, v381, v382);
          objc_msgSend_setBuffers_offsets_withRange_(v410, v384, v423, v422, 9, 8, v385, v386);
          v418[0] = v267;
          v418[1] = v262;
          v418[2] = v266;
          v416 = v205;
          v417 = vdupq_n_s64(1uLL);
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v410, v387, v418, &v416, v388, v389, v390, v391);
          v264 += 8;
          v263 += 8;
          v266 = v383;
        }

        while (v264 < v14);
      }

      for (m = 0; m != v14; ++m)
      {
      }

      free(v172);
      MPSAutoCache::~MPSAutoCache(v413);
    }

    free(v412);
    objc_msgSend_endEncoding(v410, v402, v403, v404, v405, v406, v407, v408);
  }
}

- (id)recurrentStateForBatchSize:(unint64_t)a3
{
  v3 = sub_239BC82A0(self->_numberOfLayers, a3, self->layers, self->layerTypes, 0, (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[2], 0, 0);

  return v3;
}

- (id)temporaryRecurrentStateForCommandBuffer:(id)a3 batchSize:(unint64_t)a4
{
  v4 = sub_239BC82A0(self->_numberOfLayers, a4, self->layers, self->layerTypes, 1u, (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[2], a3, 0);

  return v4;
}

@end