@interface MPSCNNConvolution
- (BOOL)PrepareAndLoadData:(id)data dataType:(unsigned int)type weightsLayout:(unsigned int)layout weights:(const void *)weights biases:(const float *)biases quantizationType:(int)quantizationType ranges:lookUpTable:convertFloat32Weights:;
- (BOOL)initialize:(id)initialize convolutionDescriptor:(id)descriptor kernelWeights:(const void *)weights dataType:(unsigned int)type weightsLayout:(unsigned int)layout range:lookUpTable:qType:biasTerms:flags:fullyConnected:convolutionTranspose:preferredWeightsDataType:;
- (MPSCNNConvolution)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNConvolution)initWithDevice:(id)device;
- (MPSCNNConvolution)initWithDevice:(id)device convolutionDescriptor:(const MPSCNNConvolutionDescriptor *)convolutionDescriptor kernelWeights:(const float *)kernelWeights biasTerms:(const float *)biasTerms flags:(MPSCNNConvolutionFlags)flags;
- (MPSCNNConvolution)initWithDevice:(id)device convolutionDescriptor:(id)descriptor kernelWeights:(const float *)weights biasTerms:(const float *)terms flags:(unint64_t)flags fullyConnected:(BOOL)connected;
- (MPSCNNConvolution)initWithDevice:(id)device convolutionDescriptor:(id)descriptor kernelWeights:(const float *)weights biasTerms:(const float *)terms flags:(unint64_t)flags fullyConnected:(BOOL)connected convolutionTranspose:(BOOL)transpose;
- (MPSCNNConvolution)initWithDevice:(id)device weights:(id)weights;
- (MPSCNNConvolution)initWithDevice:(id)device weights:(id)weights fullyConnected:(BOOL)connected;
- (MPSCNNConvolution)initWithDevice:(id)device weights:(id)weights fullyConnected:(BOOL)connected convolutionTranspose:(BOOL)transpose;
- (MPSCNNConvolutionGradientState)resultStateForSourceImage:(MPSImage *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage;
- (MPSCNNConvolutionGradientState)temporaryResultStateForCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage;
- (MPSCNNConvolutionGradientStateBatch)resultStateBatchForSourceImage:(MPSImageBatch *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage;
- (MPSCNNConvolutionGradientStateBatch)temporaryResultStateBatchForCommandBuffer:(id)commandBuffer sourceImage:(MPSImageBatch *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage;
- (MPSCNNConvolutionWeightsAndBiasesState)exportWeightsAndBiasesWithCommandBuffer:(id)commandBuffer resultStateCanBeTemporary:(BOOL)resultStateCanBeTemporary;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method sourceOffset:(id *)offset kernelOffset:(id *)kernelOffset;
- (id)initializeWithDevice:(id)device weights:(id)weights fullyConnected:(BOOL)connected convolutionTranspose:(BOOL)transpose;
- (id)resourceListForSourceImages:(id)images destinationImages:(id)destinationImages;
- (void)copyToGradientState:(id)state sourceImage:(id)image sourceStates:(id)states destinationImage:(id)destinationImage;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)buffer sourceImage:(id)image destinationImage:(id)destinationImage state:(id *)state;
- (void)encodeWithCoder:(id)coder;
- (void)reloadWeightsAndBiasesFromDataSource;
- (void)reloadWeightsAndBiasesWithCommandBuffer:(id)commandBuffer state:(MPSCNNConvolutionWeightsAndBiasesState *)state;
- (void)reloadWeightsAndBiasesWithDataSource:(id)dataSource;
- (void)setFusedNeuronDescriptor:(id)descriptor;
@end

@implementation MPSCNNConvolution

- (void)setFusedNeuronDescriptor:(id)descriptor
{
  if (self->_fusedNeuronDescriptor != descriptor)
  {
    if (!descriptor)
    {
      selfCopy = self;
      v6 = MTLReportFailureTypeEnabled();
      self = selfCopy;
      if (v6)
      {
        MTLReportFailure();
        self = selfCopy;
      }
    }

    selfCopy2 = self;

    selfCopy2->_fusedNeuronDescriptor = descriptor;
  }
}

- (MPSCNNConvolution)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    v3 = objc_opt_class();
    NSStringFromClass(v3);
    MTLReportFailure();
  }

  return 0;
}

- (BOOL)PrepareAndLoadData:(id)data dataType:(unsigned int)type weightsLayout:(unsigned int)layout weights:(const void *)weights biases:(const float *)biases quantizationType:(int)quantizationType ranges:lookUpTable:convertFloat32Weights:
{
  biasesCopy = biases;
  quantizationTypeCopy = quantizationType;
  v12 = *(data + 1);
  if (*(data + 112))
  {
    v128 = *(data + 2);
    v13 = *(data + 4);
    v14 = *(data + 9);
    v136 = v14;
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_8:
    v16 = 0;
    v18 = 0;
    biasesCopy2 = biases;
    goto LABEL_16;
  }

  v14 = *(data + 9);
  v13 = *(data + 4);
  v12 *= *(data + 3) / *(data + 8);
  v128 = *(data + 2);
  v136 = v14;
  if (!v14)
  {
    goto LABEL_8;
  }

LABEL_3:
  v15 = objc_msgSend_bytes(v14, a2, data, *&type, *&layout, weights, biases, *&quantizationType);
  v16 = v15;
  outputFeatureChannels = self->_outputFeatureChannels;
  v18 = v15 + 4 * outputFeatureChannels;
  if (!biasesCopy)
  {
    biasesCopy2 = (v15 + 4 * outputFeatureChannels);
    goto LABEL_16;
  }

  v19 = malloc_type_malloc(4 * v13, 0x100004052888210uLL);
  biasesCopy2 = v19;
  if (v13 >= 4)
  {
    v23 = v13 >> 2;
    v24 = biasesCopy;
    v25 = v16;
    v26 = v19;
    do
    {
      v27 = *v24++;
      v28 = v27;
      v29 = *(v25 + 4 * outputFeatureChannels);
      v30 = *v25++;
      *v26++ = vmlaq_f32(v29, v30, v28);
      --v23;
    }

    while (v23);
    v21 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = v13 - (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13 <= (v13 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v21 = 0;
    v22 = v13;
    if (!v13)
    {
      goto LABEL_16;
    }
  }

  if (v22 >= 8)
  {
    if (v19 - v16 - 4 * outputFeatureChannels < 0x20)
    {
      v31 = v21;
    }

    else if ((v19 - v16) < 0x20)
    {
      v31 = v21;
    }

    else if ((v19 - biasesCopy) < 0x20)
    {
      v31 = v21;
    }

    else
    {
      v31 = v21 + (v22 & 0xFFFFFFFFFFFFFFF8);
      v67 = 4 * v21;
      v68 = &v16->i8[4 * outputFeatureChannels];
      v69 = v22 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v70 = vmlaq_f32(*&v68[v67 + 16], *(v16 + v67 + 16), *&biasesCopy[v67 / 4 + 4]);
        v71 = (v19 + v67);
        *v71 = vmlaq_f32(*&v68[v67], *(v16 + v67), *&biasesCopy[v67 / 4]);
        v71[1] = v70;
        v67 += 32;
        v69 -= 8;
      }

      while (v69);
      if (v22 == (v22 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v31 = v21;
  }

  do
  {
    v19->f32[v31] = *(v18 + 4 * v31) + (v16->f32[v31] * biasesCopy[v31]);
    ++v31;
  }

  while (v13 != v31);
LABEL_16:
  if (objc_msgSend_data(*(data + 15), a2, data, *&type, *&layout, weights, biases, *&quantizationType))
  {
    v39 = objc_msgSend_data(*(data + 15), v32, v33, v34, v35, v36, v37, v38);
    v47 = objc_msgSend_bytes(v39, v40, v41, v42, v43, v44, v45, v46);
  }

  else
  {
    v47 = 0;
  }

  v134 = biasesCopy;
  v48 = (*(&self->super.super.super.isa + *MEMORY[0x277CD7370]))[4];
  if (quantizationType != -1)
  {
    v49 = *MEMORY[0x277CD7350];
    HIDWORD(v121) = 8;
    LOBYTE(v121) = self->_fullyConnected;
    v50 = (*(*v48 + 56))(v48, (*(&self->super.super.super.isa + v49))[2], &self->_weights, &self->_bias, &self->_neuronABuffer, weights, biasesCopy2, v47, v121, layout, self->_layout, self);
    self->_qWts = (*(*v48 + 80))(v48, (*(&self->super.super.super.isa + v49))[2], &quantizationTypeCopy, self->_outputFeatureChannels, v138, v139, v16, v18);
    self->_qType = quantizationTypeCopy;
    if (self->_qWts)
    {
      v51 = v50;
    }

    else
    {
      v51 = 1;
    }

    biasesCopy = v134;
    goto LABEL_124;
  }

  if (v140)
  {
    typeCopy = 268435472;
  }

  else
  {
    typeCopy = type;
  }

  weightsCopy8 = weights;
  v127 = typeCopy;
  if (typeCopy == type)
  {
    weightsCopy2 = weights;
    if (!v136)
    {
      if (typeCopy == type)
      {
        goto LABEL_67;
      }

LABEL_58:
      v72 = weightsCopy2;
      MPSConvertFloatToHalf();
      layoutCopy5 = layout;
      goto LABEL_122;
    }
  }

  weightsCopy2 = malloc_type_malloc(v13 * v128 * v12 * ((typeCopy >> 3) & 0xFDFFFFFF), 0xA923B2B7uLL);
  if (v136)
  {
    v54 = v12 * v128;
    if (type == 268435472)
    {
      v122 = v48;
      if (v127 == 268435488)
      {
        if (!v13)
        {
          layoutCopy5 = layout;
          v72 = weightsCopy2;
          goto LABEL_122;
        }

        v123 = v47;
        v55 = 0;
        weightsCopy3 = weights;
        v129 = v54 & 0xFFFFFFFFFFFFFFFCLL;
        v57 = weightsCopy2;
        while (1)
        {
          MPSConvertHalfToFloat();
          v58 = v16->f32[v55];
          if (v54 >= 4)
          {
            v61 = 0;
            do
            {
              v57[v61] = vmulq_n_f32(v57[v61], v58);
              ++v61;
            }

            while (v54 >> 2 != v61);
            v59 = v54 & 0xFFFFFFFFFFFFFFFCLL;
            v60 = v54 - v129;
            if (v54 <= v129)
            {
              goto LABEL_36;
            }
          }

          else
          {
            v59 = 0;
            v60 = v54;
            if (!v54)
            {
              goto LABEL_36;
            }
          }

          if (v60 >= 8)
          {
            v62 = v59 + (v60 & 0xFFFFFFFFFFFFFFF8);
            v63 = 4 * v59;
            v64 = v60 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v65 = (v57 + v63);
              v66 = vmulq_n_f32(*(v57 + v63 + 16), v58);
              *v65 = vmulq_n_f32(*(v57 + v63), v58);
              v65[1] = v66;
              v63 += 32;
              v64 -= 8;
            }

            while (v64);
            if (v60 == (v60 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_36;
            }
          }

          else
          {
            v62 = v59;
          }

          do
          {
            v57->f32[v62] = v58 * v57->f32[v62];
            ++v62;
          }

          while (v54 != v62);
LABEL_36:
          ++v55;
          weightsCopy3 += 2 * v54;
          v57 = (v57 + 4 * v54);
          if (v55 == v13)
          {
            weightsCopy8 = weights;
            layoutCopy5 = layout;
            v48 = v122;
            v47 = v123;
            v72 = weightsCopy2;
            goto LABEL_122;
          }
        }
      }

      v124 = v47;
      v80 = malloc_type_malloc(4 * v54, 0x100004052888210uLL);
      v81 = v80;
      if (v13)
      {
        v82 = 0;
        v130 = v54 & 0xFFFFFFFFFFFFFFFCLL;
        v125 = v80 + 1;
        v83 = 2 * v54;
        v84 = weightsCopy2;
        while (1)
        {
          MPSConvertHalfToFloat();
          v85 = v16->f32[v82];
          if (v54 >= 4)
          {
            v88 = v81;
            v89 = v54 >> 2;
            do
            {
              *v88 = vmulq_n_f32(*v88, v85);
              ++v88;
              --v89;
            }

            while (v89);
            v86 = v54 & 0xFFFFFFFFFFFFFFFCLL;
            v87 = v54 - v130;
            if (v54 <= v130)
            {
              goto LABEL_70;
            }
          }

          else
          {
            v86 = 0;
            v87 = v54;
            if (!v54)
            {
              goto LABEL_70;
            }
          }

          if (v87 >= 8)
          {
            v90 = v86 + (v87 & 0xFFFFFFFFFFFFFFF8);
            v91 = (v125 + 4 * v86);
            v92 = v87 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v93 = vmulq_n_f32(*v91, v85);
              v91[-1] = vmulq_n_f32(v91[-1], v85);
              *v91 = v93;
              v91 += 2;
              v92 -= 8;
            }

            while (v92);
            if (v87 == (v87 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_70;
            }
          }

          else
          {
            v90 = v86;
          }

          v94 = v54 - v90;
          v95 = &v81->f32[v90];
          do
          {
            *v95 = v85 * *v95;
            ++v95;
            --v94;
          }

          while (v94);
LABEL_70:
          MPSConvertFloatToHalf();
          ++v82;
          weightsCopy8 = (weightsCopy8 + v83);
          v84 = (v84 + v83);
          if (v82 == v13)
          {
            goto LABEL_118;
          }
        }
      }
    }

    else
    {
      if (v127 == 268435488)
      {
        if (v13)
        {
          if (v54 > 3)
          {
            v101 = 0;
            v102 = 4 * v54;
            weightsCopy5 = weights;
            v104 = weightsCopy2;
            do
            {
              v105 = 0;
              v106 = v16->f32[v101];
              do
              {
                v104[v105] = vmulq_n_f32(weightsCopy5[v105], v106);
                ++v105;
              }

              while (v54 >> 2 != v105);
              if ((v54 & 0xFFFFFFFFFFFFFFFCLL) != v54)
              {
                v107 = v54 & 0xFFFFFFFFFFFFFFFCLL;
                do
                {
                  v104->f32[v107] = v106 * weightsCopy5->f32[v107];
                  ++v107;
                }

                while (v54 != v107);
              }

              ++v101;
              v104 = (v104 + v102);
              weightsCopy5 = (weightsCopy5 + v102);
            }

            while (v101 != v13);
          }

          else if (v54)
          {
            v74 = 0;
            v75 = 4 * v54;
            weightsCopy6 = weights;
            v77 = weightsCopy2;
            do
            {
              v78 = 0;
              v79 = v16->f32[v74];
              do
              {
                v77[v78] = v79 * weightsCopy6[v78];
                ++v78;
              }

              while (v54 != v78);
              ++v74;
              v77 = (v77 + v75);
              weightsCopy6 = (weightsCopy6 + v75);
            }

            while (v74 != v13);
          }
        }

        goto LABEL_67;
      }

      v124 = v47;
      v132 = 4 * v54;
      v81 = malloc_type_malloc(4 * v54, 0x100004052888210uLL);
      if (!v13)
      {
        goto LABEL_120;
      }

      if (v54 > 3)
      {
        v122 = v48;
        v108 = v54 >> 2;
        if ((v54 & 0xFFFFFFFFFFFFFFFCLL) == v54)
        {
          v109 = 0;
          v110 = weightsCopy2;
          do
          {
            v111 = 0;
            v112 = &v16->f32[v109];
            v113 = vld1q_dup_f32(v112);
            do
            {
              v81[v111] = vmulq_f32(v113, weightsCopy8[v111]);
              ++v111;
            }

            while (v108 != v111);
            MPSConvertFloatToHalf();
            ++v109;
            v110 = (v110 + 2 * v54);
            weightsCopy8 = (weightsCopy8 + v132);
          }

          while (v109 != v13);
        }

        else
        {
          weightsCopy7 = weights;
          v115 = 0;
          v116 = weightsCopy2;
          do
          {
            v117 = 0;
            v118 = v16->f32[v115];
            do
            {
              v81[v117] = vmulq_n_f32(weightsCopy7[v117], v118);
              ++v117;
            }

            while (v108 != v117);
            v119 = v54 & 0xFFFFFFFFFFFFFFFCLL;
            do
            {
              v81->f32[v119] = v118 * weightsCopy7->f32[v119];
              ++v119;
            }

            while (v54 != v119);
            MPSConvertFloatToHalf();
            ++v115;
            v116 = (v116 + 2 * v54);
            weightsCopy7 = (weightsCopy7 + v132);
          }

          while (v115 != v13);
        }

LABEL_118:
        biasesCopy = v134;
        weightsCopy8 = weights;
      }

      else
      {
        if (!v54)
        {
          v72 = weightsCopy2;
          do
          {
            MPSConvertFloatToHalf();
            --v13;
          }

          while (v13);
          goto LABEL_121;
        }

        v122 = v48;
        v96 = 0;
        weightsCopy9 = weights;
        v98 = weightsCopy2;
        do
        {
          v99 = 0;
          v100 = v16->f32[v96];
          do
          {
            v81->f32[v99] = v100 * weightsCopy9[v99];
            ++v99;
          }

          while (v54 != v99);
          MPSConvertFloatToHalf();
          ++v96;
          v98 = (v98 + 2 * v54);
          weightsCopy9 = (weightsCopy9 + v132);
        }

        while (v96 != v13);
        biasesCopy = v134;
      }
    }

    v48 = v122;
LABEL_120:
    v72 = weightsCopy2;
LABEL_121:
    free(v81);
    layoutCopy5 = layout;
    v47 = v124;
    goto LABEL_122;
  }

  if (v127 != type)
  {
    goto LABEL_58;
  }

LABEL_67:
  layoutCopy5 = layout;
  v72 = weightsCopy2;
LABEL_122:
  self->_weightsDataType = v127;
  HIDWORD(v121) = v127;
  LOBYTE(v121) = self->_fullyConnected;
  v51 = (*(*v48 + 56))(v48, (*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[2], &self->_weights, &self->_bias, &self->_neuronABuffer, v72, biasesCopy2, v47, v121, layoutCopy5, self->_layout, self);
  if (v72 != weightsCopy8)
  {
    free(v72);
  }

LABEL_124:
  if (biasesCopy && v136)
  {
    free(biasesCopy2);
  }

  return v51;
}

- (BOOL)initialize:(id)initialize convolutionDescriptor:(id)descriptor kernelWeights:(const void *)weights dataType:(unsigned int)type weightsLayout:(unsigned int)layout range:lookUpTable:qType:biasTerms:flags:fullyConnected:convolutionTranspose:preferredWeightsDataType:
{
  v9 = *(descriptor + 1);
  if (!v9)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v11 = *(descriptor + 2);
  if (!v11)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v12 = *(descriptor + 3);
  if (!v12)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v13 = *(descriptor + 4);
  if (!v13)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (!*(descriptor + 6))
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (!*(descriptor + 7))
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v14 = *(descriptor + 8);
  if (!v14)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v15 = *&type;
  if (v97 == 268435488)
  {
    if (type != 268435488)
    {
      if (MTLReportFailureTypeEnabled())
      {
        goto LABEL_22;
      }

      goto LABEL_23;
    }
  }

  else if (v97 != 268435472)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v92 != -1 && *(descriptor + 5) != 1)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (*(descriptor + 112) == 1)
  {
    if (v13 % v12)
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    if (v13 / v12 != 1)
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    if (v14 != 1)
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v16 = 1;
    if (type != 268435472 && type != 268435488)
    {
      if (MTLReportFailureTypeEnabled())
      {
LABEL_22:
        MTLReportFailure();
      }

LABEL_23:

      return 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v88 = v16;
  if (*(descriptor + 10))
  {
    objc_msgSend_a(*(descriptor + 15), a2, initialize, descriptor, weights, *&type, *&layout, v7);
    objc_msgSend_a(*(descriptor + 15), v18, v19, v20, v21, v22, v23, v24);
    if (v32 != *(*(descriptor + 10) + 332))
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    objc_msgSend_b(*(descriptor + 15), v25, v26, v27, v28, v29, v30, v31);
    objc_msgSend_b(*(descriptor + 15), v33, v34, v35, v36, v37, v38, v39);
    if (v47 != *(*(descriptor + 10) + 336))
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    objc_msgSend_neuronType(*(descriptor + 15), v40, v41, v42, v43, v44, v45, v46);
    if (objc_msgSend_neuronType(*(descriptor + 15), v48, v49, v50, v51, v52, v53, v54) != *(*(descriptor + 10) + 328))
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v9 = *(descriptor + 1);
    v11 = *(descriptor + 2);
  }

  v55 = (*(&self->super.super.super.isa + *MEMORY[0x277CD7370]))[4];
  self->_dataSource = 0;
  self->super._kernelWidth = v9;
  self->super._kernelHeight = v11;
  self->_inputFeatureChannels = *(descriptor + 3);
  v56 = *(descriptor + 5);
  self->_outputFeatureChannels = *(descriptor + 4);
  self->_layout = v56;
  self->super._strideInPixelsX = *(descriptor + 6);
  self->super._strideInPixelsY = *(descriptor + 7);
  self->_groups = *(descriptor + 8);
  self->_neuron_deprecated = *(descriptor + 10);
  self->_scaleFactor = *(descriptor + 11);
  self->super._dilationRateX = *(descriptor + 12);
  self->super._dilationRateY = *(descriptor + 13);
  self->super._checkFlags |= 2u;
  if (((*(**(&self->super.super.super.isa + *MEMORY[0x277CD7350]) + 56))(*(&self->super.super.super.isa + *MEMORY[0x277CD7350])) & 1) == 0)
  {
    self->super._checkFlags |= 0x8000u;
  }

  self->_flags = v94;
  self->_fullyConnected = v95;
  self->_convolutionTranspose = v96;
  self->_weights = 0;
  self->_bias = 0;
  self->_qWts = 0;
  self->super._encodeData = self;
  self->super._encode = sub_239D5FB2C;
  self->super._batchEncode = (*(*v55 + 128))(v55);
  self->_qType = v92;
  self->_weightsDataType = v15;
  self->_weightsLayout = layout;
  self->_biasOriginal = 0;
  self->_channelMultiplier = v88;
  self->_neuronABuffer = 0;
  self->_accumulatorPrecisionOption = 1;
  self->super._pluginOptions = 2;
  self->_batchNormalizationData = *(descriptor + 9);
  self->_fusedNeuronDescriptor = *(descriptor + 15);
  v65 = v15 == 268435488 && v97 == 268435472;
  self->_convertFloat32Weights = v65;
  v66 = *(descriptor + 9);
  if (v66)
  {
    objc_msgSend_bytes(*(descriptor + 9), v57, v58, v59, v60, v61, v62, v63);
  }

  if (objc_msgSend_data(*(descriptor + 15), v57, v58, v59, v60, v61, v62, v63))
  {
    v74 = objc_msgSend_data(*(descriptor + 15), v67, v68, v69, v70, v71, v72, v73);
    objc_msgSend_bytes(v74, v75, v76, v77, v78, v79, v80, v81);
  }

  if (v66 && v93 && self->_qType >= 2)
  {
    v82 = objc_alloc(MEMORY[0x277CBEA90]);
    self->_biasOriginal = objc_msgSend_initWithBytes_length_(v82, v83, v93, 4 * self->_outputFeatureChannels, v84, v85, v86, v87);
  }

  return objc_msgSend_PrepareAndLoadData_dataType_weightsLayout_weights_biases_quantizationType_ranges_lookUpTable_convertFloat32Weights_(self, v67, descriptor, v15, layout, weights, v93, v92);
}

- (MPSCNNConvolution)initWithDevice:(id)device convolutionDescriptor:(id)descriptor kernelWeights:(const float *)weights biasTerms:(const float *)terms flags:(unint64_t)flags fullyConnected:(BOOL)connected convolutionTranspose:(BOOL)transpose
{
  v22.receiver = self;
  v22.super_class = MPSCNNConvolution;
  result = [(MPSCNNKernel *)&v22 initWithDevice:?];
  if (result)
  {
    v21 = 268435472;
    HIBYTE(v20) = transpose;
    LOBYTE(v20) = connected;
    termsCopy = terms;
    v18 = -1;
    v17 = result;
    if (objc_msgSend_initialize_convolutionDescriptor_kernelWeights_dataType_weightsLayout_range_lookUpTable_qType_biasTerms_flags_fullyConnected_convolutionTranspose_preferredWeightsDataType_(result, v16, device, descriptor, weights, 268435488, 0, 0, 0, v18, termsCopy, flags, v20))
    {

      return 0;
    }

    else
    {
      return v17;
    }
  }

  return result;
}

- (MPSCNNConvolution)initWithDevice:(id)device convolutionDescriptor:(id)descriptor kernelWeights:(const float *)weights biasTerms:(const float *)terms flags:(unint64_t)flags fullyConnected:(BOOL)connected
{
  v18.receiver = self;
  v18.super_class = MPSCNNConvolution;
  result = [(MPSCNNKernel *)&v18 initWithDevice:?];
  if (result)
  {
    termsCopy = terms;
    v16 = result;
    if (objc_msgSend_initialize_convolutionDescriptor_kernelWeights_dataType_weightsLayout_range_lookUpTable_qType_biasTerms_flags_fullyConnected_convolutionTranspose_preferredWeightsDataType_(result, v15, device, descriptor, weights, 268435488, 0, 0, 0, -1, termsCopy, flags, connected))
    {

      return 0;
    }

    else
    {
      return v16;
    }
  }

  return result;
}

- (MPSCNNConvolution)initWithDevice:(id)device convolutionDescriptor:(const MPSCNNConvolutionDescriptor *)convolutionDescriptor kernelWeights:(const float *)kernelWeights biasTerms:(const float *)biasTerms flags:(MPSCNNConvolutionFlags)flags
{
  v19.receiver = self;
  v19.super_class = MPSCNNConvolution;
  result = [(MPSCNNKernel *)&v19 initWithDevice:?];
  if (result)
  {
    v18 = 268435472;
    v17 = 0;
    v16 = biasTerms;
    v15 = -1;
    v14 = result;
    if (objc_msgSend_initialize_convolutionDescriptor_kernelWeights_dataType_weightsLayout_range_lookUpTable_qType_biasTerms_flags_fullyConnected_convolutionTranspose_preferredWeightsDataType_(result, v13, device, convolutionDescriptor, kernelWeights, 268435488, 0, 0, 0, v15, v16, flags, v17))
    {

      return 0;
    }

    else
    {
      return v14;
    }
  }

  return result;
}

- (id)initializeWithDevice:(id)device weights:(id)weights fullyConnected:(BOOL)connected convolutionTranspose:(BOOL)transpose
{
  selfCopy = self;
  v13 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.super.isa + v13) & 1) == 0)
  {
    if (!weights && MTLReportFailureTypeEnabled())
    {
      v184 = objc_opt_class();
      v187 = NSStringFromClass(v184);
      MTLReportFailure();
    }

    if (!device && MTLReportFailureTypeEnabled())
    {
      v185 = objc_opt_class();
      v187 = NSStringFromClass(v185);
      MTLReportFailure();
    }
  }

  if ((objc_msgSend_load(weights, a2, device, weights, connected, transpose, v6, v7, v187) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    v183 = objc_opt_class();
    v188 = NSStringFromClass(v183);
    MTLReportFailure();
  }

  v21 = objc_msgSend_descriptor(weights, v14, v15, v16, v17, v18, v19, v20, v188);
  v29 = objc_msgSend_dataType(weights, v22, v23, v24, v25, v26, v27, v28);
  if ((*(&selfCopy->super.super.super.isa + v13) & 1) == 0)
  {
    if (!v21 && MTLReportFailureTypeEnabled())
    {
      v186 = objc_opt_class();
      v189 = NSStringFromClass(v186);
      MTLReportFailure();
    }

    if (v29 != 8 && v29 != 268435472 && v29 != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v37 = objc_msgSend_weightsLayout(weights, v30, v31, v32, v33, v34, v35, v36);
  }

  else
  {
    v37 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_kernelWeightsDataType(weights, v38, v39, v40, v41, v42, v43, v44);
  }

  switch(v29)
  {
    case 8u:
      if (objc_opt_respondsToSelector())
      {
        v75 = objc_msgSend_weightsQuantizationType(weights, v68, v69, v70, v71, v72, v73, v74);
        if (v75 != 2)
        {
          if (v75 != 1)
          {
            if (MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }

            v97 = 0;
            goto LABEL_44;
          }

          objc_opt_respondsToSelector();
          if ((objc_opt_respondsToSelector() & 1) == 0 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          objc_msgSend_rangesForUInt8Kernel(weights, v76, v77, v78, v79, v80, v81, v82, v189);
          if (!objc_msgSend_rangesForUInt8Kernel(weights, v83, v84, v85, v86, v87, v88, v89) && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          goto LABEL_35;
        }

        objc_opt_respondsToSelector();
        if ((objc_opt_respondsToSelector() & 1) == 0 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        objc_msgSend_lookupTableForUInt8Kernel(weights, v138, v139, v140, v141, v142, v143, v144, v189);
        if (!objc_msgSend_lookupTableForUInt8Kernel(weights, v145, v146, v147, v148, v149, v150, v151) && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }

      else if ((objc_opt_respondsToSelector() & 1) == 0 || !objc_msgSend_lookupTableForUInt8Kernel(weights, v99, v100, v101, v102, v103, v104, v105))
      {
        if ((objc_opt_respondsToSelector() & 1) == 0 || !objc_msgSend_rangesForUInt8Kernel(weights, v113, v114, v115, v116, v117, v118, v119))
        {
          if (MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v97 = 1;
          goto LABEL_44;
        }

LABEL_35:
        v120 = objc_msgSend_weights(weights, v90, v91, v92, v93, v94, v95, v96, v189);
        v128 = objc_msgSend_rangesForUInt8Kernel(weights, v121, v122, v123, v124, v125, v126, v127);
        HIBYTE(v196) = transpose;
        LOBYTE(v196) = connected;
        v194 = objc_msgSend_biasTerms(weights, v129, v130, v131, v132, v133, v134, v135);
        v137 = objc_msgSend_initialize_convolutionDescriptor_kernelWeights_dataType_weightsLayout_range_lookUpTable_qType_biasTerms_flags_fullyConnected_convolutionTranspose_preferredWeightsDataType_(selfCopy, v136, device, v21, v120, 8, v37, v128, 0, 0, v194, 0, v196);
LABEL_43:
        v97 = v137;
        goto LABEL_44;
      }

      v152 = objc_msgSend_weights(weights, v106, v107, v108, v109, v110, v111, v112, v189);
      v160 = objc_msgSend_lookupTableForUInt8Kernel(weights, v153, v154, v155, v156, v157, v158, v159);
      HIBYTE(v195) = transpose;
      LOBYTE(v195) = connected;
      v193 = objc_msgSend_biasTerms(weights, v161, v162, v163, v164, v165, v166, v167);
      v192 = 2;
      v190 = v160;
      v56 = selfCopy;
      deviceCopy3 = device;
      v58 = v21;
      v59 = v152;
      v55 = 8;
      goto LABEL_42;
    case 0x10000010u:
      v60 = objc_msgSend_weights(weights, v38, v39, v40, v41, v42, v43, v44);
      HIBYTE(v195) = transpose;
      LOBYTE(v195) = connected;
      v193 = objc_msgSend_biasTerms(weights, v61, v62, v63, v64, v65, v66, v67);
      v192 = -1;
      v190 = 0;
      v56 = selfCopy;
      deviceCopy3 = device;
      v58 = v21;
      v59 = v60;
      v55 = 268435472;
      goto LABEL_42;
    case 0x10000020u:
      v45 = objc_msgSend_weights(weights, v38, v39, v40, v41, v42, v43, v44);
      v53 = objc_msgSend_biasTerms(weights, v46, v47, v48, v49, v50, v51, v52);
      HIBYTE(v195) = transpose;
      LOBYTE(v195) = connected;
      v55 = 268435488;
      v193 = v53;
      v192 = -1;
      v190 = 0;
      v56 = selfCopy;
      deviceCopy3 = device;
      v58 = v21;
      v59 = v45;
LABEL_42:
      v137 = objc_msgSend_initialize_convolutionDescriptor_kernelWeights_dataType_weightsLayout_range_lookUpTable_qType_biasTerms_flags_fullyConnected_convolutionTranspose_preferredWeightsDataType_(v56, v54, deviceCopy3, v58, v59, v55, v37, 0, v190, v192, v193, 0, v195);
      goto LABEL_43;
  }

  v97 = 1;
  if (MTLReportFailureTypeEnabled())
  {
    v98 = objc_opt_class();
    v189 = NSStringFromClass(v98);
    v191 = v29;
    v97 = 1;
    MTLReportFailure();
  }

LABEL_44:
  if (objc_opt_respondsToSelector())
  {
    v175 = objc_msgSend_performSelector_(weights, v168, sel_label, v170, v171, v172, v173, v174);
    objc_msgSend_setLabel_(selfCopy, v176, v175, v177, v178, v179, v180, v181);
  }

  objc_msgSend_purge(weights, v168, v169, v170, v171, v172, v173, v174, v189, v191);
  selfCopy->_dataSource = weights;
  if (v97)
  {

    return 0;
  }

  return selfCopy;
}

- (MPSCNNConvolution)initWithDevice:(id)device weights:(id)weights fullyConnected:(BOOL)connected convolutionTranspose:(BOOL)transpose
{
  transposeCopy = transpose;
  connectedCopy = connected;
  v14.receiver = self;
  v14.super_class = MPSCNNConvolution;
  result = [(MPSCNNKernel *)&v14 initWithDevice:?];
  if (result)
  {
    return objc_msgSend_initializeWithDevice_weights_fullyConnected_convolutionTranspose_(result, v11, device, weights, connectedCopy, transposeCopy, v12, v13);
  }

  return result;
}

- (MPSCNNConvolution)initWithDevice:(id)device weights:(id)weights fullyConnected:(BOOL)connected
{
  connectedCopy = connected;
  v12.receiver = self;
  v12.super_class = MPSCNNConvolution;
  result = [(MPSCNNKernel *)&v12 initWithDevice:?];
  if (result)
  {
    return objc_msgSend_initializeWithDevice_weights_fullyConnected_convolutionTranspose_(result, v9, device, weights, connectedCopy, 0, v10, v11);
  }

  return result;
}

- (MPSCNNConvolution)initWithDevice:(id)device weights:(id)weights
{
  v10.receiver = self;
  v10.super_class = MPSCNNConvolution;
  result = [(MPSCNNKernel *)&v10 initWithDevice:?];
  if (result)
  {
    return objc_msgSend_initializeWithDevice_weights_fullyConnected_convolutionTranspose_(result, v7, device, weights, 0, 0, v8, v9);
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v34.receiver = self;
  v34.super_class = MPSCNNConvolution;
  v7 = [MPSCNNKernel copyWithZone:sel_copyWithZone_device_ device:?];
  v13 = v7;
  if (v7)
  {
    v7[25] = self->super._kernelWidth;
    v7[26] = self->super._kernelHeight;
    v7[41] = self->_inputFeatureChannels;
    v7[42] = self->_outputFeatureChannels;
    v7[43] = self->_layout;
    v7[27] = self->super._strideInPixelsX;
    v7[28] = self->super._strideInPixelsY;
    v7[44] = self->_groups;
    v7[52] = self->_scaleFactor;
    v7[53] = self->_channelMultiplier;
    v7[29] = self->super._dilationRateX;
    v7[30] = self->super._dilationRateY;
    v7[45] = objc_msgSend_copyWithZone_device_(self->_neuron_deprecated, v8, zone, device, v9, v10, v11, v12);
    *(v13 + 70) = self->super._checkFlags | 2;
    if (((*(**(&self->super.super.super.isa + *MEMORY[0x277CD7350]) + 56))(*(&self->super.super.super.isa + *MEMORY[0x277CD7350])) & 1) == 0)
    {
      *(v13 + 70) |= 0x8000u;
    }

    v13[48] = self->_flags;
    v13[36] = self->super._encode;
    v13[37] = self->super._batchEncode;
    *(v13 + 392) = self->_fullyConnected;
    *(v13 + 102) = self->_qType;
    *(v13 + 108) = self->_weightsDataType;
    *(v13 + 394) = self->_convertFloat32Weights;
    *(v13 + 109) = self->_weightsLayout;
    v13[57] = self->_accumulatorPrecisionOption;
    v13[39] = self->super._pluginOptions;
    v13[59] = self->_batchNormalizationData;
    v13[60] = self->_fusedNeuronDescriptor;
    weights = self->_weights;
    if (weights)
    {
      v13[46] = weights;
    }

    bias = self->_bias;
    if (bias)
    {
      v13[47] = bias;
    }

    qWts = self->_qWts;
    if (qWts)
    {
      v13[50] = qWts;
    }

    biasOriginal = self->_biasOriginal;
    if (biasOriginal)
    {
      v13[55] = biasOriginal;
    }

    neuronABuffer = self->_neuronABuffer;
    if (neuronABuffer)
    {
      v13[56] = neuronABuffer;
    }

    if (objc_opt_respondsToSelector())
    {
      v24 = objc_msgSend_copyWithZone_device_(self->_dataSource, v19, zone, device, v20, v21, v22, v23);
    }

    else
    {
      v31 = objc_opt_respondsToSelector();
      dataSource = self->_dataSource;
      if (v31)
      {
        v24 = objc_msgSend_copyWithZone_(dataSource, v25, zone, v26, v27, v28, v29, v30);
      }

      else
      {
        v24 = dataSource;
      }
    }

    v13[58] = v24;
  }

  return v13;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNConvolution;
  [(MPSCNNKernel *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v5 = 1;
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v242.receiver = self;
  v242.super_class = MPSCNNConvolution;
  [(MPSCNNKernel *)&v242 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v6, self->_layout, @"MPSCNNConvolutionFeatureChannelsLayout", v7, v8, v9, v10);
  objc_msgSend_encodeBool_forKey_(coder, v11, self->_fullyConnected, @"MPSCNNConvolutionIsFullyConnected", v12, v13, v14, v15);
  objc_msgSend_encodeBool_forKey_(coder, v16, self->_convolutionTranspose, @"MPSCNNConvolutionIsConvolutionTranspose", v17, v18, v19, v20);
  objc_msgSend_encodeBool_forKey_(coder, v21, self->_convertFloat32Weights, @"MPSCNNConvolutionConvertFloat32Weights", v22, v23, v24, v25);
  objc_msgSend_encodeInt64_forKey_(coder, v26, self->_flags, @"MPSCNNConvolutionFlags", v27, v28, v29, v30);
  v239 = 0;
  v240 = 0;
  v241 = 0;
  fusedNeuronDescriptor = self->_fusedNeuronDescriptor;
  if (fusedNeuronDescriptor)
  {
    objc_msgSend_neuronInfo(fusedNeuronDescriptor, v31, v32, v33, v34, v35, v36, v37);
    v5 = v241 == 0;
  }

  objc_msgSend_encodeBool_forKey_(coder, v31, v5, @"MPSCNNConvolutionNeuronBufferA.isNull", v34, v35, v36, v37);
  objc_msgSend_encodeBool_forKey_(coder, v39, self->_batchNormalizationData == 0, @"MPSCNNConvolutionBatchNormalizationData.isNull", v40, v41, v42, v43);
  batchNormalizationData = self->_batchNormalizationData;
  if (batchNormalizationData)
  {
    objc_msgSend_bytes(batchNormalizationData, v44, v45, v46, v47, v48, v49, v50);
    outputFeatureChannels = self->_outputFeatureChannels;
    v53 = malloc_type_malloc(8 * outputFeatureChannels, 0x100004052888210uLL);
    if (v53)
    {
      v54 = v53;
      MPSCopyToFromNetworkByteOrder32();
      objc_msgSend_encodeBytes_length_forKey_(coder, v55, v54, 8 * outputFeatureChannels, @"MPSCNNConvolutionBatchNormalizationData.data", v56, v57, v58);
      free(v54);
    }
  }

  if (self->_dataSource)
  {
    if (objc_msgSend_conformsToProtocol_(self->_dataSource, v44, &unk_284D09FA0, v46, v47, v48, v49, v50))
    {
      v59 = objc_opt_class();
      if (objc_msgSend_supportsSecureCoding(v59, v60, v61, v62, v63, v64, v65, v66))
      {
        dataSource = self->_dataSource;
        v68 = objc_autoreleasePoolPush();
        v69 = objc_opt_class();
        if (v69)
        {
          v70 = NSStringFromClass(v69);
          v77 = objc_msgSend_cStringUsingEncoding_(v70, v71, 1, v72, v73, v74, v75, v76);
          if (v77)
          {
            v78 = v77;
            v79 = strlen(v77);
            if (v79)
            {
              objc_msgSend_encodeBytes_length_forKey_(coder, v80, v78, v79 + 1, @"MPSCNNConvolutionDataSourceClass", v81, v82, v83);
              objc_msgSend_encodeObject_forKey_(coder, v84, dataSource, @"MPSCNNConvolutionDataSource", v85, v86, v87, v88);
            }
          }
        }

        objc_autoreleasePoolPop(v68);
        return;
      }
    }
  }

  objc_msgSend_encodeInt64_forKey_(coder, v44, self->_inputFeatureChannels, @"MPSCNNConvolutionInputFeatureChannels", v47, v48, v49, v50);
  objc_msgSend_encodeInt64_forKey_(coder, v89, self->_outputFeatureChannels, @"MPSCNNConvolutionOutputFeatureChannels", v90, v91, v92, v93);
  objc_msgSend_encodeInt64_forKey_(coder, v94, self->_groups, @"MPSCNNConvolutionGroups", v95, v96, v97, v98);
  objc_msgSend_encodeInt32_forKey_(coder, v99, v239, @"MPSCNNConvolutionNeuronInfo.type", v100, v101, v102, v103);
  LODWORD(v104) = HIDWORD(v239);
  objc_msgSend_encodeFloat_forKey_(coder, v105, @"MPSCNNConvolutionNeuronInfo.a", v106, v107, v108, v109, v110, v104);
  LODWORD(v111) = v240;
  objc_msgSend_encodeFloat_forKey_(coder, v112, @"MPSCNNConvolutionNeuronInfo.b", v113, v114, v115, v116, v117, v111);
  LODWORD(v118) = HIDWORD(v240);
  objc_msgSend_encodeFloat_forKey_(coder, v119, @"MPSCNNConvolutionNeuronInfo.c", v120, v121, v122, v123, v124, v118);
  objc_msgSend_encodeInt64_forKey_(coder, v125, self->_scaleFactor, @"MPSCNNConvolutionScaleFactor", v126, v127, v128, v129);
  objc_msgSend_encodeInt64_forKey_(coder, v130, self->_qType, @"MPSCNNConvolutionQuantizationType", v131, v132, v133, v134);
  objc_msgSend_encodeInt64_forKey_(coder, v135, self->_channelMultiplier, @"MPSCNNConvolutionChannelMultipler", v136, v137, v138, v139);
  v147 = self->_dataSource;
  if (v147)
  {
    if ((objc_msgSend_load(v147, v140, v141, v142, v143, v144, v145, v146) & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    qType = self->_qType;
    if (qType == -1)
    {
      v226 = 0;
      v227 = 0;
    }

    else if (qType < 2)
    {
      objc_opt_respondsToSelector();
      if ((objc_opt_respondsToSelector() & 1) == 0 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v226 = objc_msgSend_rangesForUInt8Kernel(self->_dataSource, v178, v179, v180, v181, v182, v183, v184);
      v227 = 0;
    }

    else
    {
      objc_opt_respondsToSelector();
      if ((objc_opt_respondsToSelector() & 1) == 0 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v226 = 0;
      v227 = objc_msgSend_lookupTableForUInt8Kernel(self->_dataSource, v156, v157, v158, v159, v160, v161, v162);
    }

    v185 = 268435472;
    v186 = objc_msgSend_dataType(self->_dataSource, v148, v149, v150, v151, v152, v153, v154);
    v194 = objc_msgSend_weights(self->_dataSource, v187, v188, v189, v190, v191, v192, v193);
    if (objc_opt_respondsToSelector())
    {
      v202 = objc_msgSend_kernelWeightsDataType(self->_dataSource, v195, v196, v197, v198, v199, v200, v201) == 268435472;
      if (v186 != 268435488)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v202 = 1;
      if (v186 != 268435488)
      {
        goto LABEL_39;
      }
    }

    if (v202)
    {
      v203 = self->super._kernelWidth * self->_outputFeatureChannels * self->super._kernelHeight;
      if (!self->_channelMultiplier)
      {
        v203 *= self->_inputFeatureChannels / self->_groups;
      }

      v204 = malloc_type_malloc(2 * v203, 0x1000040BDFB0063uLL);
      MPSConvertFloatToHalf();
      v194 = v204;
      if (objc_opt_respondsToSelector())
      {
LABEL_40:
        v212 = objc_msgSend_weightsLayout(self->_dataSource, v205, v206, v207, v208, v209, v210, v211);
        v237 = 0uLL;
        v238 = 0;
        v213 = self->_fusedNeuronDescriptor;
        if (!v213)
        {
LABEL_36:
          v228[0] = v185;
          v228[1] = v212;
          v236 = 0;
          v229 = v194;
          v230 = objc_msgSend_biasTerms(self->_dataSource, v205, v206, v207, v208, v209, v210, v211);
          v231 = v227;
          v232 = v226;
          v233 = 0;
          v234 = v237;
          v235 = 0;
          sub_239D5E500(coder, v228, self, v214, v215, v216, v217, v218);
          objc_msgSend_purge(self->_dataSource, v219, v220, v221, v222, v223, v224, v225);
          if (v186 == 268435488)
          {
            free(v194);
          }

          return;
        }

LABEL_35:
        objc_msgSend_neuronInfo(v213, v205, v206, v207, v208, v209, v210, v211);
        goto LABEL_36;
      }

LABEL_34:
      v212 = 0;
      v237 = 0uLL;
      v238 = 0;
      v213 = self->_fusedNeuronDescriptor;
      if (!v213)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

LABEL_39:
    v185 = v186;
    if (objc_opt_respondsToSelector())
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  objc_msgSend_plugin(self, v140, v141, v142, v143, v144, v145, v146);
  if (objc_msgSend_plugin(self, v163, v164, v165, v166, v167, v168, v169) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (!objc_msgSend_plugin(self, v170, v171, v172, v173, v174, v175, v176))
  {
    v177 = (*(&self->super.super.super.isa + *MEMORY[0x277CD7370]))[4];
    (*(*v177 + 88))(v177, coder, self, self->_weights, self->_bias, self->_neuronABuffer, self->_biasOriginal, self->_qWts, self->_qType);
  }
}

- (MPSCNNConvolution)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v423.receiver = self;
  v423.super_class = MPSCNNConvolution;
  v6 = [MPSCNNKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v12 = v6;
  if (!v6)
  {
    return v12;
  }

  if (*(&v6->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 != 0x10000)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v53 = objc_opt_class();
      NSStringFromClass(v53);
      MTLReportFailure();
    }

    goto LABEL_64;
  }

  v424[0] = 0;
  v13 = objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v7, @"MPSCNNConvolutionDataSourceClass", v424, v8, v9, v10, v11);
  v420 = device;
  if (v424[0])
  {
    v20 = v13;
    if (v13)
    {
      v21 = objc_alloc(MEMORY[0x277CCACA8]);
      v26 = objc_msgSend_initWithBytes_length_encoding_(v21, v22, v20, v424[0] - 1, 1, v23, v24, v25);
      v27 = v26;
      if (v26)
      {
        v28 = NSClassFromString(v26);
        if (v28)
        {
          v30 = v28;
          if (!&unk_284D0FAF8 || (objc_msgSend_conformsToProtocol_(v28, v14, &unk_284D0FAF8, v29, v16, v17, v18, v19) & 1) != 0)
          {
            v31 = objc_msgSend_decodeObjectOfClass_forKey_(aDecoder, v14, v30, @"MPSCNNConvolutionDataSource", v16, v17, v18, v19);
            if (v31)
            {
              v33 = v31;
              v34 = objc_msgSend_descriptor(v31, v14, v32, v15, v16, v17, v18, v19);
              v35 = *(v34 + 32);
              v421 = *(v34 + 24);
              v36 = *(v34 + 64);
              v44 = objc_msgSend_dataType(v33, v37, v38, v39, v40, v41, v42, v43);
              if (objc_opt_respondsToSelector())
              {
                v52 = objc_msgSend_weightsQuantizationType(v33, v45, v46, v47, v48, v49, v50, v51);
                if (v52 != 2)
                {
                  if (v52 != 1)
                  {
                    goto LABEL_71;
                  }

LABEL_70:
                  v412 = 0;
                  v413 = objc_msgSend_rangesForUInt8Kernel(v33, v45, v46, v47, v48, v49, v50, v51);
                  v422 = 0;
LABEL_73:
                  v416 = objc_msgSend_neuronType(*(v34 + 120), v45, v46, v47, v48, v49, v50, v51);
                  objc_msgSend_a(*(v34 + 120), v349, v350, v351, v352, v353, v354, v355);
                  v88 = v356;
                  objc_msgSend_b(*(v34 + 120), v357, v358, v359, v360, v361, v362, v363);
                  v96 = v364;
                  objc_msgSend_c(*(v34 + 120), v365, v366, v367, v368, v369, v370, v371);
                  v104 = v372;
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v406 = v35 / v421;
                  }

                  else
                  {
                    v406 = 0;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v411 = objc_msgSend_subPixelScaleFactor(v34, v373, v374, v375, v376, v377, v378, v379);
                  }

                  else
                  {
                    v411 = 1;
                  }

                  if ((objc_msgSend_load(v33, v373, v374, v375, v376, v377, v378, v379) & 1) == 0 && MTLReportFailureTypeEnabled())
                  {
                    MTLReportFailure();
                  }

                  v415 = objc_msgSend_weights(v33, v380, v381, v382, v383, v384, v385, v386);
                  v394 = objc_msgSend_biasTerms(v33, v387, v388, v389, v390, v391, v392, v393);
                  if (objc_opt_respondsToSelector())
                  {
                    v414 = objc_msgSend_weightsLayout(v33, v395, v396, v397, v398, v399, v400, v401);
                  }

                  else
                  {
                    v414 = 0;
                  }

                  v419 = v44;
                  v417 = v33;
                  v418 = v36;
                  if (objc_opt_respondsToSelector())
                  {
                    objc_msgSend_kernelWeightsDataType(v12->_dataSource, v158, v402, v159, v160, v161, v162, v163);
                  }

                  v410 = 0;
                  v405 = 0;
                  v164 = v394;
                  goto LABEL_42;
                }

LABEL_68:
                v412 = objc_msgSend_lookupTableForUInt8Kernel(v33, v45, v46, v47, v48, v49, v50, v51);
                v413 = 0;
                v348 = 2;
LABEL_72:
                v422 = v348;
                goto LABEL_73;
              }

              if (v44 == 8)
              {
                if (objc_opt_respondsToSelector())
                {
                  goto LABEL_68;
                }

                if (objc_opt_respondsToSelector())
                {
                  goto LABEL_70;
                }
              }

LABEL_71:
              v412 = 0;
              v413 = 0;
              v348 = -1;
              goto LABEL_72;
            }
          }
        }

        else if (MTLReportFailureTypeEnabled())
        {
          v403 = v26;
          MTLReportFailure();
        }
      }
    }
  }

  v54 = objc_msgSend_decodeInt64ForKey_(aDecoder, v14, @"MPSCNNConvolutionInputFeatureChannels", v15, v16, v17, v18, v19, v403);
  v61 = objc_msgSend_decodeInt64ForKey_(aDecoder, v55, @"MPSCNNConvolutionOutputFeatureChannels", v56, v57, v58, v59, v60);
  v68 = objc_msgSend_decodeInt64ForKey_(aDecoder, v62, @"MPSCNNConvolutionGroups", v63, v64, v65, v66, v67);
  v422 = objc_msgSend_decodeInt64ForKey_(aDecoder, v69, @"MPSCNNConvolutionQuantizationType", v70, v71, v72, v73, v74);
  v416 = objc_msgSend_decodeInt32ForKey_(aDecoder, v75, @"MPSCNNConvolutionNeuronInfo.type", v76, v77, v78, v79, v80);
  objc_msgSend_decodeFloatForKey_(aDecoder, v81, @"MPSCNNConvolutionNeuronInfo.a", v82, v83, v84, v85, v86);
  v88 = v87;
  objc_msgSend_decodeFloatForKey_(aDecoder, v89, @"MPSCNNConvolutionNeuronInfo.b", v90, v91, v92, v93, v94);
  v96 = v95;
  objc_msgSend_decodeFloatForKey_(aDecoder, v97, @"MPSCNNConvolutionNeuronInfo.c", v98, v99, v100, v101, v102);
  v104 = v103;
  v411 = objc_msgSend_decodeInt64ForKey_(aDecoder, v105, @"MPSCNNConvolutionScaleFactor", v106, v107, v108, v109, v110);
  v117 = objc_msgSend_decodeInt64ForKey_(aDecoder, v111, @"MPSCNNConvolutionChannelMultipler", v112, v113, v114, v115, v116);
  v124 = objc_msgSend_decodeInt64ForKey_(aDecoder, v118, @"MPSCNNConvolutionWeight.dataType", v119, v120, v121, v122, v123);
  v414 = objc_msgSend_decodeInt64ForKey_(aDecoder, v125, @"MPSCNNConvolutionWeight.dataLayout", v126, v127, v128, v129, v130);
  objc_msgSend_decodeBoolForKey_(aDecoder, v131, @"MPSCNNConvolutionConvertFloat32Weights", v132, v133, v134, v135, v136);
  v35 = v61;
  v137 = v12->super._kernelWidth * v61 * v12->super._kernelHeight;
  v421 = v54;
  v406 = v117;
  if (!v117)
  {
    v137 *= v54 / v68;
  }

  v138 = (v124 >> 3) & 0x1DFFFFFF;
  v139 = malloc_type_malloc(v137 * v138, 0x13380AA3uLL);
  v424[0] = 0;
  v145 = objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v140, @"MPSCNNConvolutionWeight.data", v424, v141, v142, v143, v144);
  if (!v145)
  {
LABEL_27:
    if ((objc_msgSend_decodeBoolForKey_(aDecoder, v146, @"MPSCNNConvolutionBias.isNull", v147, v148, v149, v150, v151) & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v146 = v145;
  if (v138 == 4)
  {
    MPSCopyToFromNetworkByteOrder32();
    if ((objc_msgSend_decodeBoolForKey_(aDecoder, v165, @"MPSCNNConvolutionBias.isNull", v166, v167, v168, v169, v170) & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (v138 == 2)
  {
    MPSCopyToFromNetworkByteOrder16();
    goto LABEL_27;
  }

  if (v138 != 1)
  {
    goto LABEL_27;
  }

  memcpy(v139, v145, v424[0]);
  if ((objc_msgSend_decodeBoolForKey_(aDecoder, v152, @"MPSCNNConvolutionBias.isNull", v153, v154, v155, v156, v157) & 1) == 0)
  {
LABEL_30:
    v164 = malloc_type_malloc(4 * v35, 0x100004052888210uLL);
    v424[0] = 0;
    if (objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v171, @"MPSCNNConvolutionBias.data", v424, v172, v173, v174, v175))
    {
      MPSCopyToFromNetworkByteOrder32();
    }

    goto LABEL_32;
  }

LABEL_28:
  v164 = 0;
LABEL_32:
  v418 = v68;
  v419 = v124;
  v415 = v139;
  if (v422 == -1)
  {
    v417 = 0;
    v412 = 0;
    v413 = 0;
    v405 = 0;
    v410 = 1;
  }

  else
  {
    if (v422 == 2)
    {
      v176 = malloc_type_malloc(0x400uLL, 0x100004052888210uLL);
      v424[0] = 0;
      if (objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v177, @"MPSCNNConvolutionQuantizationData.data", v424, v178, v179, v180, v181))
      {
        MPSCopyToFromNetworkByteOrder32();
      }

      v417 = 0;
      v413 = 0;
      v422 = 2;
      v410 = 1;
      v412 = v176;
    }

    else
    {
      v176 = malloc_type_malloc(8 * v35, 0x100004052888210uLL);
      v424[0] = 0;
      if (objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v182, @"MPSCNNConvolutionQuantizationData.data", v424, v183, v184, v185, v186))
      {
        MPSCopyToFromNetworkByteOrder32();
      }

      v417 = 0;
      v412 = 0;
      v413 = v176;
      v410 = 1;
    }

    v405 = v176;
  }

LABEL_42:
  v187 = objc_msgSend_decodeInt64ForKey_(aDecoder, v158, @"MPSCNNConvolutionFeatureChannelsLayout", v159, v160, v161, v162, v163);
  v409 = objc_msgSend_decodeBoolForKey_(aDecoder, v188, @"MPSCNNConvolutionIsFullyConnected", v189, v190, v191, v192, v193);
  v408 = objc_msgSend_decodeBoolForKey_(aDecoder, v194, @"MPSCNNConvolutionIsConvolutionTranspose", v195, v196, v197, v198, v199);
  v407 = objc_msgSend_decodeInt64ForKey_(aDecoder, v200, @"MPSCNNConvolutionFlags", v201, v202, v203, v204, v205);
  v218 = 4 * v35;
  if ((objc_msgSend_decodeBoolForKey_(aDecoder, v206, @"MPSCNNConvolutionNeuronBufferA.isNull", v207, v208, v209, v210, v211) & 1) == 0)
  {
    v220 = malloc_type_malloc(4 * v35, 0x100004052888210uLL);
    v424[0] = 0;
    if (objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v228, @"MPSCNNConvolutionNeuronBufferA.data", v424, v229, v230, v231, v232))
    {
      MPSCopyToFromNetworkByteOrder32();
    }

    v219 = v164;
    v221 = 8 * v35;
    if ((objc_msgSend_decodeBoolForKey_(aDecoder, v233, @"MPSCNNConvolutionBatchNormalizationData.isNull", v234, v235, v236, v237, v238) & 1) == 0)
    {
      goto LABEL_44;
    }

LABEL_49:
    v222 = 0;
    goto LABEL_50;
  }

  v219 = v164;
  v220 = 0;
  v221 = 8 * v35;
  if (objc_msgSend_decodeBoolForKey_(aDecoder, v212, @"MPSCNNConvolutionBatchNormalizationData.isNull", v213, v214, v215, v216, v217))
  {
    goto LABEL_49;
  }

LABEL_44:
  v222 = malloc_type_malloc(v221, 0x100004052888210uLL);
  v424[0] = 0;
  if (objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v223, @"MPSCNNConvolutionBatchNormalizationData.data", v424, v224, v225, v226, v227))
  {
    MPSCopyToFromNetworkByteOrder32();
  }

LABEL_50:
  v242 = objc_autoreleasePoolPush();
  kernelWidth = v12->super._kernelWidth;
  kernelHeight = v12->super._kernelHeight;
  if (v411 < 2)
  {
    if (v406)
    {
      v258 = objc_msgSend_cnnConvolutionDescriptorWithKernelWidth_kernelHeight_inputFeatureChannels_outputFeatureChannels_(MPSCNNDepthWiseConvolutionDescriptor, v239, kernelWidth, kernelHeight, v421, v35, v240, v241);
    }

    else
    {
      v258 = objc_msgSend_cnnConvolutionDescriptorWithKernelWidth_kernelHeight_inputFeatureChannels_outputFeatureChannels_(MPSCNNConvolutionDescriptor, v239, kernelWidth, kernelHeight, v421, v35, v240, v241);
    }

    v245 = v258;
  }

  else
  {
    v245 = objc_msgSend_cnnConvolutionDescriptorWithKernelWidth_kernelHeight_inputFeatureChannels_outputFeatureChannels_(MPSCNNSubPixelConvolutionDescriptor, v239, kernelWidth, kernelHeight, v421, v35, v240, v241);
    objc_msgSend_setSubPixelScaleFactor_(v245, v246, v411, v247, v248, v249, v250, v251);
  }

  objc_msgSend_setNeuronType_(*(v245 + 120), v252, v416, v253, v254, v255, v256, v257);
  LODWORD(v259) = v88;
  objc_msgSend_setA_(*(v245 + 120), v260, v261, v262, v263, v264, v265, v266, v259);
  LODWORD(v267) = v96;
  objc_msgSend_setB_(*(v245 + 120), v268, v269, v270, v271, v272, v273, v274, v267);
  LODWORD(v275) = v104;
  objc_msgSend_setC_(*(v245 + 120), v276, v277, v278, v279, v280, v281, v282, v275);
  objc_msgSend_setFeatureChannelsLayout_(v245, v283, v187, v284, v285, v286, v287, v288);
  objc_msgSend_setGroups_(v245, v289, v418, v290, v291, v292, v293, v294);
  objc_msgSend_setStrideInPixelsX_(v245, v295, v12->super._strideInPixelsX, v296, v297, v298, v299, v300);
  objc_msgSend_setStrideInPixelsY_(v245, v301, v12->super._strideInPixelsY, v302, v303, v304, v305, v306);
  objc_msgSend_setDilationRateX_(v245, v307, v12->super._dilationRateX, v308, v309, v310, v311, v312);
  objc_msgSend_setDilationRateY_(v245, v313, v12->super._dilationRateY, v314, v315, v316, v317, v318);
  if (v222)
  {
    v320 = objc_alloc(MEMORY[0x277CBEA90]);
    *(v245 + 72) = objc_msgSend_initWithBytes_length_(v320, v321, v222, v221, v322, v323, v324, v325);
  }

  if (v220)
  {
    v326 = objc_alloc(MEMORY[0x277CBEA90]);
    v332 = objc_msgSend_initWithBytes_length_(v326, v327, v220, v218, v328, v329, v330, v331);
    objc_msgSend_setData_(*(v245 + 120), v333, v332, v334, v335, v336, v337, v338);
  }

  HIBYTE(v404) = v408;
  LOBYTE(v404) = v409;
  v339 = objc_msgSend_initialize_convolutionDescriptor_kernelWeights_dataType_weightsLayout_range_lookUpTable_qType_biasTerms_flags_fullyConnected_convolutionTranspose_preferredWeightsDataType_(v12, v319, v420, v245, v415, v419, v414, v413, v412, v422, v219, v407, v404);
  v12->_dataSource = v417;
  objc_autoreleasePoolPop(v242);
  if (v410)
  {
    free(v415);
    free(v219);
    free(v405);
    free(v220);
    free(v222);
    if (!v339)
    {
      return v12;
    }

    goto LABEL_64;
  }

  objc_msgSend_purge(v417, v340, v341, v342, v343, v344, v345, v346);
  free(v220);
  free(v222);
  if (v339)
  {
LABEL_64:

    return 0;
  }

  return v12;
}

- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method sourceOffset:(id *)offset kernelOffset:(id *)kernelOffset
{
  v44.receiver = self;
  v44.super_class = MPSCNNConvolution;
  v8 = [(MPSCNNKernel *)&v44 destinationImageDescriptorForSourceImages:images sourceStates:states paddingMethod:method sourceOffset:offset kernelOffset:kernelOffset];
  v16 = objc_msgSend_width(v8, v9, v10, v11, v12, v13, v14, v15);
  objc_msgSend_setWidth_(v8, v17, self->_scaleFactor * v16, v18, v19, v20, v21, v22);
  v30 = objc_msgSend_height(v8, v23, v24, v25, v26, v27, v28, v29);
  objc_msgSend_setHeight_(v8, v31, self->_scaleFactor * v30, v32, v33, v34, v35, v36);
  objc_msgSend_setFeatureChannels_(v8, v37, self->_outputFeatureChannels / (self->_scaleFactor * self->_scaleFactor), v38, v39, v40, v41, v42);
  return v8;
}

- (void)copyToGradientState:(id)state sourceImage:(id)image sourceStates:(id)states destinationImage:(id)destinationImage
{
  v8.receiver = self;
  v8.super_class = MPSCNNConvolution;
  [(MPSCNNKernel *)&v8 copyToGradientState:state sourceImage:image sourceStates:states destinationImage:destinationImage];
  *(state + 18) = self->_outputFeatureChannels / (self->_scaleFactor * self->_scaleFactor);
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v21.receiver = self;
  v21.super_class = MPSCNNConvolution;
  v4 = [(MPSCNNKernel *)&v21 debugDescription];
  result = objc_msgSend_stringWithFormat_(v3, v5, @"%@\tinputFeatureChannels: %lu\n\toutputFeatureChannels:   %lu\n\tFeature channel layout:  %lu\n\tGroups:                  %lu\n\tscaleFactor:             %lu\n\tAccumulator precision:   %s\n", v6, v7, v8, v9, v10, v4, self->_inputFeatureChannels, self->_outputFeatureChannels, self->_featureChannelsLayout, self->_groups, self->_scaleFactor, off_278B36DC8[self->_accumulatorPrecisionOption != 0]);
  fusedNeuronDescriptor = self->_fusedNeuronDescriptor;
  if (fusedNeuronDescriptor)
  {
    v20 = result;
    objc_msgSend_neuronInfo(fusedNeuronDescriptor, v12, v13, v14, v15, v16, v17, v18);
    return v20;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)buffer sourceImage:(id)image destinationImage:(id)destinationImage state:(id *)state
{
  objc_msgSend_encodeToCommandBuffer_sourceImage_destinationImage_(self, a2, buffer, image, destinationImage, state, v6, v7);
  v11 = [MPSCNNConvolutionState alloc];
  v19 = objc_msgSend_width(image, v12, v13, v14, v15, v16, v17, v18);
  v27 = objc_msgSend_height(image, v20, v21, v22, v23, v24, v25, v26);
  kernelWidth = self->super._kernelWidth;
  kernelHeight = self->super._kernelHeight;
  objc_msgSend_offset(self, v30, v31, v32, v33, v34, v35, v36);
  *state = objc_msgSend_initWithSourceWidth_sourceHeight_kernelWidth_kernelHeight_sourceOffset_(v11, v37, v19, v27, kernelWidth, kernelHeight, v39, v38);
}

- (id)resourceListForSourceImages:(id)images destinationImages:(id)destinationImages
{
  outputFeatureChannels = self->_outputFeatureChannels;
  v9 = outputFeatureChannels;
  if (!self->_channelMultiplier)
  {
    v9 = LODWORD(self->_inputFeatureChannels) / self->_groups * outputFeatureChannels;
  }

  v10 = 4 * LODWORD(self->super._kernelHeight) * LODWORD(self->super._kernelWidth) * v9 + 12;
  v11 = ((outputFeatureChannels / self->_groups + 3) & 0x1FFFFFFFCLL) * 4 * self->_groups;
  if (v11)
  {
    return objc_msgSend_resourceListWithBufferSizes_(MEMORY[0x277CD72A0], a2, v10 & 0x7FFFFFFF0, destinationImages, v4, v5, v6, v7, v11, 0);
  }

  else
  {
    return objc_msgSend_resourceListWithBufferSizes_(MEMORY[0x277CD72A0], a2, v10 & 0x7FFFFFFF0, destinationImages, v4, v5, v6, v7, 0);
  }
}

- (MPSCNNConvolutionGradientState)resultStateForSourceImage:(MPSImage *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage
{
  v54[1] = *MEMORY[0x277D85DE8];
  v9 = objc_autoreleasePoolPush();
  v54[0] = sourceImage;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, v54, 1, v11, v12, v13, v14);
  v53 = destinationImage;
  v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, &v53, 1, v17, v18, v19, v20);
  v27 = objc_msgSend_resourceListForSourceImages_destinationImages_(self, v22, v15, v21, v23, v24, v25, v26);
  v28 = [MPSCNNConvolutionGradientState alloc];
  v32 = objc_msgSend_initWithDevice_resourceList_convolution_weightsLayout_(v28, v29, (*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[2], v27, self, self->_weightsLayout, v30, v31);
  objc_autoreleasePoolPop(v9);
  if (!v32)
  {
    return 0;
  }

  objc_msgSend_copyToGradientState_sourceImage_sourceStates_destinationImage_(self, v33, v32, sourceImage, sourceStates, destinationImage, v34, v35);
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
  {
    v36 = MEMORY[0x277CCACA8];
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v45 = objc_msgSend_stringWithFormat_(v36, v39, @"created by %@", v40, v41, v42, v43, v44, v38);
    objc_msgSend_setLabel_(v32, v46, v45, v47, v48, v49, v50, v51);
  }

  return v32;
}

- (MPSCNNConvolutionGradientStateBatch)resultStateBatchForSourceImage:(MPSImageBatch *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage
{
  v12 = objc_msgSend_count(destinationImage, a2, sourceImage, sourceStates, destinationImage, v5, v6, v7);
  v13 = objc_autoreleasePoolPush();
  v19 = objc_msgSend_resourceListForSourceImages_destinationImages_(self, v14, sourceImage, destinationImage, v15, v16, v17, v18);
  v20 = [MPSCNNConvolutionGradientState alloc];
  v24 = objc_msgSend_initWithDevice_resourceList_convolution_weightsLayout_(v20, v21, (*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[2], v19, self, self->_weightsLayout, v22, v23);
  if (!v24)
  {
    objc_autoreleasePoolPop(v13);
    return 0;
  }

  v31 = v24;
  v32 = objc_msgSend_objectAtIndexedSubscript_(sourceImage, v25, 0, v26, v27, v28, v29, v30);
  v39 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v33, 0, v34, v35, v36, v37, v38);
  v46 = objc_msgSend_objectAtIndexedSubscript_(destinationImage, v40, 0, v41, v42, v43, v44, v45);
  objc_msgSend_copyToGradientState_sourceImage_sourceStates_destinationImage_(self, v47, v31, v32, v39, v46, v48, v49);
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
  {
    v50 = MEMORY[0x277CCACA8];
    v51 = objc_opt_class();
    v52 = NSStringFromClass(v51);
    v59 = objc_msgSend_stringWithFormat_(v50, v53, @"created by %@", v54, v55, v56, v57, v58, v52);
    objc_msgSend_setLabel_(v31, v60, v59, v61, v62, v63, v64, v65);
  }

  v66 = malloc_type_malloc(8 * v12, 0x80040B8603338uLL);
  v67 = v66;
  if (v12)
  {
    if (v12 < 4)
    {
      v68 = 0;
LABEL_11:
      v73 = v12 - v68;
      v74 = &v66->i64[v68];
      do
      {
        *v74++ = v31;
        --v73;
      }

      while (v73);
      goto LABEL_13;
    }

    v68 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v70 = vdupq_n_s64(v31);
    v71 = v66 + 1;
    v72 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v71[-1] = v70;
      *v71 = v70;
      v71 += 2;
      v72 -= 4;
    }

    while (v72);
    if (v12 != v68)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  v75 = objc_alloc(MEMORY[0x277CBEA60]);
  v81 = objc_msgSend_initWithObjects_count_(v75, v76, v67, v12, v77, v78, v79, v80);
  free(v67);
  objc_autoreleasePoolPop(v13);

  return v81;
}

- (MPSCNNConvolutionGradientState)temporaryResultStateForCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage
{
  v55[1] = *MEMORY[0x277D85DE8];
  v11 = objc_autoreleasePoolPush();
  v55[0] = sourceImage;
  v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, v55, 1, v13, v14, v15, v16);
  v54 = destinationImage;
  v23 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v18, &v54, 1, v19, v20, v21, v22);
  v29 = objc_msgSend_resourceListForSourceImages_destinationImages_(self, v24, v17, v23, v25, v26, v27, v28);
  objc_autoreleasePoolPop(v11);
  v33 = objc_msgSend_temporaryStateWithCommandBuffer_resourceList_convolution_weightsLayout_(MPSCNNConvolutionGradientState, v30, commandBuffer, v29, self, self->_weightsLayout, v31, v32);

  objc_msgSend_copyToGradientState_sourceImage_sourceStates_destinationImage_(self, v34, v33, sourceImage, sourceStates, destinationImage, v35, v36);
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
  {
    v37 = MEMORY[0x277CCACA8];
    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    v46 = objc_msgSend_stringWithFormat_(v37, v40, @"created by %@", v41, v42, v43, v44, v45, v39);
    objc_msgSend_setLabel_(v33, v47, v46, v48, v49, v50, v51, v52);
  }

  return v33;
}

- (MPSCNNConvolutionGradientStateBatch)temporaryResultStateBatchForCommandBuffer:(id)commandBuffer sourceImage:(MPSImageBatch *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage
{
  v13 = objc_msgSend_count(destinationImage, a2, commandBuffer, sourceImage, sourceStates, destinationImage, v6, v7);
  v14 = objc_autoreleasePoolPush();
  v20 = objc_msgSend_resourceListForSourceImages_destinationImages_(self, v15, sourceImage, destinationImage, v16, v17, v18, v19);
  v24 = objc_msgSend_temporaryStateWithCommandBuffer_resourceList_convolution_weightsLayout_(MPSCNNConvolutionGradientState, v21, commandBuffer, v20, self, self->_weightsLayout, v22, v23);
  if (!v24)
  {
    objc_autoreleasePoolPop(v14);
    return 0;
  }

  v31 = v24;
  v32 = objc_msgSend_objectAtIndexedSubscript_(sourceImage, v25, 0, v26, v27, v28, v29, v30);
  v39 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v33, 0, v34, v35, v36, v37, v38);
  v46 = objc_msgSend_objectAtIndexedSubscript_(destinationImage, v40, 0, v41, v42, v43, v44, v45);
  objc_msgSend_copyToGradientState_sourceImage_sourceStates_destinationImage_(self, v47, v31, v32, v39, v46, v48, v49);
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
  {
    v50 = MEMORY[0x277CCACA8];
    v51 = objc_opt_class();
    v52 = NSStringFromClass(v51);
    v59 = objc_msgSend_stringWithFormat_(v50, v53, @"created by %@", v54, v55, v56, v57, v58, v52);
    objc_msgSend_setLabel_(v31, v60, v59, v61, v62, v63, v64, v65);
  }

  v66 = malloc_type_malloc(8 * v13, 0x80040B8603338uLL);
  v67 = v66;
  if (v13)
  {
    if (v13 < 4)
    {
      v68 = 0;
LABEL_11:
      v73 = v13 - v68;
      v74 = &v66->i64[v68];
      do
      {
        *v74++ = v31;
        --v73;
      }

      while (v73);
      goto LABEL_13;
    }

    v68 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v70 = vdupq_n_s64(v31);
    v71 = v66 + 1;
    v72 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v71[-1] = v70;
      *v71 = v70;
      v71 += 2;
      v72 -= 4;
    }

    while (v72);
    if (v13 != v68)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  v75 = objc_alloc(MEMORY[0x277CBEA60]);
  v81 = objc_msgSend_initWithObjects_count_(v75, v76, v67, v13, v77, v78, v79, v80);
  free(v67);
  objc_autoreleasePoolPop(v14);

  return v81;
}

- (void)reloadWeightsAndBiasesWithDataSource:(id)dataSource
{
  if (self->_dataSource == dataSource)
  {
  }

  else
  {
    selfCopy = self;
    v10 = MTLReportFailureTypeEnabled();
    self = selfCopy;
    if (v10)
    {
      MTLReportFailure();
      self = selfCopy;
    }
  }

  objc_msgSend_reloadWeightsAndBiasesFromDataSource(self, a2, dataSource, v3, v4, v5, v6, v7);
}

- (void)reloadWeightsAndBiasesFromDataSource
{
  dataSource = self->_dataSource;
  if ((objc_msgSend_load(dataSource, a2, v2, v3, v4, v5, v6, v7) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    v71 = objc_opt_class();
    v72 = NSStringFromClass(v71);
    MTLReportFailure();
  }

  v17 = objc_msgSend_dataType(dataSource, v10, v11, v12, v13, v14, v15, v16, v72);
  if (v17 != 8)
  {
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    v25 = objc_msgSend_lookupTableForUInt8Kernel(dataSource, v18, v19, v20, v21, v22, v23, v24);
    v26 = 0;
    v27 = 2;
    goto LABEL_8;
  }

  if (objc_opt_respondsToSelector())
  {
    v26 = objc_msgSend_rangesForUInt8Kernel(dataSource, v28, v29, v30, v31, v32, v33, v34);
    v25 = 0;
    v27 = 0;
  }

  else
  {
LABEL_7:
    v25 = 0;
    v26 = 0;
    v27 = 0xFFFFFFFFLL;
  }

LABEL_8:
  v42 = 268435472;
  if (objc_opt_respondsToSelector())
  {
    v42 = objc_msgSend_kernelWeightsDataType(dataSource, v35, v36, v37, v38, v39, v40, v41);
  }

  self->_weightsDataType = v42;
  v43 = objc_msgSend_descriptor(dataSource, v35, v36, v37, v38, v39, v40, v41);
  if (objc_opt_respondsToSelector())
  {
    v51 = objc_msgSend_weightsLayout(dataSource, v44, v45, v46, v47, v48, v49, v50);
  }

  else
  {
    v51 = 0;
  }

  v53 = v17 == 268435488 && v42 == 268435472;
  v54 = objc_msgSend_weights(dataSource, v44, v45, v46, v47, v48, v49, v50);
  v62 = objc_msgSend_biasTerms(dataSource, v55, v56, v57, v58, v59, v60, v61);
  objc_msgSend_PrepareAndLoadData_dataType_weightsLayout_weights_biases_quantizationType_ranges_lookUpTable_convertFloat32Weights_(self, v63, v43, v17, v51, v54, v62, v27, v26, v25, v53);

  objc_msgSend_purge(dataSource, v64, v65, v66, v67, v68, v69, v70);
}

- (void)reloadWeightsAndBiasesWithCommandBuffer:(id)commandBuffer state:(MPSCNNConvolutionWeightsAndBiasesState *)state
{
  v10 = objc_msgSend_weights(state, a2, commandBuffer, state, v4, v5, v6, v7);
  v18 = objc_msgSend_biases(state, v11, v12, v13, v14, v15, v16, v17);
  v26 = objc_msgSend_weightsDataType(state, v19, v20, v21, v22, v23, v24, v25);
  v34 = objc_msgSend_weightsLayout(state, v27, v28, v29, v30, v31, v32, v33);
  v87 = objc_msgSend_weightsOffset(state, v35, v36, v37, v38, v39, v40, v41);
  v86 = objc_msgSend_biasesOffset(state, v42, v43, v44, v45, v46, v47, v48);
  outputFeatureChannels = self->_outputFeatureChannels;
  v57 = 1;
  if (v26 == 268435472)
  {
    v58 = 1;
  }

  else
  {
    v58 = 2;
  }

  if (!self->_channelMultiplier)
  {
    v57 = self->_inputFeatureChannels / self->_groups;
  }

  v59 = (self->super._kernelWidth * outputFeatureChannels * self->super._kernelHeight) << v58;
  if (v34 != self->_weightsLayout && MTLReportFailureTypeEnabled())
  {
    v83 = off_278B36DD8[self->_weightsLayout];
    v84 = off_278B36DD8[v34];
    MTLReportFailure();
  }

  v60 = v57 * v59;
  if (!v10 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_length(v10, v49, v50, v51, v52, v53, v54, v55, v83, v84);
  if (objc_msgSend_length(v10, v61, v62, v63, v64, v65, v66, v67) < v60 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v18)
  {
    objc_msgSend_length(v18, v68, v69, v70, v71, v72, v73, v74);
    if (objc_msgSend_length(v18, v75, v76, v77, v78, v79, v80, v81) < 4 * outputFeatureChannels)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  v82 = (*(&self->super.super.super.isa + *MEMORY[0x277CD7370]))[4];
  LOBYTE(v85) = 0;
  (*(*v82 + 160))(v82, commandBuffer, self, v10, v26, v87, v34, v18, v86, v85);

  MPSDecrementReadCount(&state->super);
}

- (MPSCNNConvolutionWeightsAndBiasesState)exportWeightsAndBiasesWithCommandBuffer:(id)commandBuffer resultStateCanBeTemporary:(BOOL)resultStateCanBeTemporary
{
  weightsLayout = self->_weightsLayout;
  v11 = objc_autoreleasePoolPush();
  if (self->_channelMultiplier)
  {
    v12 = off_278B10ED0;
  }

  else
  {
    v12 = off_278B10E40;
  }

  v16 = objc_msgSend_cnnConvolutionDescriptorWithKernelWidth_kernelHeight_inputFeatureChannels_outputFeatureChannels_(*v12, v8, self->super._kernelWidth, self->super._kernelHeight, self->_inputFeatureChannels, self->_outputFeatureChannels, v9, v10);
  *(v16 + 64) = self->_groups;
  if (resultStateCanBeTemporary)
  {
    v17 = objc_msgSend_temporaryCNNConvolutionWeightsAndBiasesStateWithCommandBuffer_cnnConvolutionDescriptor_weightsDataType_weightsLayout_(MPSCNNConvolutionWeightsAndBiasesState, v13, commandBuffer, v16, 268435488, weightsLayout, v14, v15);
    v18 = v17;
  }

  else
  {
    v19 = [MPSCNNConvolutionWeightsAndBiasesState alloc];
    v17 = objc_msgSend_initWithDevice_cnnConvolutionDescriptor_weightsDataType_weightsLayout_(v19, v20, (*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[2], v16, 268435488, weightsLayout, v21, v22);
  }

  objc_autoreleasePoolPop(v11);
  v23 = (*(&self->super.super.super.isa + *MEMORY[0x277CD7370]))[4];
  v31 = objc_msgSend_weights(v17, v24, v25, v26, v27, v28, v29, v30);
  v39 = objc_msgSend_weightsOffset(v17, v32, v33, v34, v35, v36, v37, v38);
  v47 = objc_msgSend_biases(v17, v40, v41, v42, v43, v44, v45, v46);
  v55 = objc_msgSend_biasesOffset(v17, v48, v49, v50, v51, v52, v53, v54);
  (*(*v23 + 160))(v23, commandBuffer, self, v31, 268435488, v39, weightsLayout, v47, v55, 1);

  return v17;
}

@end