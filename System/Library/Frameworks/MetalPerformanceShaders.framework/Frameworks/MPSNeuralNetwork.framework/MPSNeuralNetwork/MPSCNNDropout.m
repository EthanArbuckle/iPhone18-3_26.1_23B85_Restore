@interface MPSCNNDropout
- (MPSCNNDropout)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNDropout)initWithDevice:(id)a3 keepProbability:(float)a4 state:(id)a5 maskStrideInPixels:(id *)a6;
- (MPSCNNDropout)initWithDevice:(id)device keepProbability:(float)keepProbability seed:(NSUInteger)seed maskStrideInPixels:(MTLSize *)maskStrideInPixels;
- (MPSCNNDropoutGradientState)resultStateBatchForSourceImage:(MPSImageBatch *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage;
- (MPSCNNDropoutGradientStateBatch)temporaryResultStateBatchForCommandBuffer:(id)commandBuffer sourceImage:(MPSImageBatch *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (id)exportRandomState;
- (id)privateResultStateForSourceImage:(id)a3 sourceStates:(id)a4 destinationImage:(id)a5 commandBuffer:(id)a6 isTemporary:(BOOL)a7;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSCNNDropout

- (MPSCNNDropout)initWithDevice:(id)device keepProbability:(float)keepProbability seed:(NSUInteger)seed maskStrideInPixels:(MTLSize *)maskStrideInPixels
{
  v28.receiver = self;
  v28.super_class = MPSCNNDropout;
  result = [(MPSCNNKernel *)&v28 initWithDevice:?];
  if (result)
  {
    if (keepProbability <= 0.0 || keepProbability > 1.0)
    {
      v26 = result;
      if (MTLReportFailureTypeEnabled())
      {
        v27 = objc_opt_class();
        NSStringFromClass(v27);
        MTLReportFailure();
      }

      return 0;
    }

    else
    {
      result->_keepProbability = keepProbability;
      result->_seed = seed;
      v12 = *&maskStrideInPixels->width;
      result->_maskStrideInPixels.depth = maskStrideInPixels->depth;
      *&result->_maskStrideInPixels.width = v12;
      v13 = result;
      v14 = objc_alloc(MEMORY[0x277CD7288]);
      v19 = objc_msgSend_initWithDevice_destinationDataType_seed_(v14, v15, device, 8, v13->_seed, v16, v17, v18);
      v13->_parallelGenerator = v19;
      objc_msgSend_setDistributionType_(v19, v20, 127, v21, v22, v23, v24, v25);
      result = v13;
      *(v13->_parallelGenerator + *MEMORY[0x277CD7468]) = keepProbability;
      v13->super._checkFlags |= 2u;
      v13->super._encodeData = v13;
      v13->super._encode = sub_239BEB408;
      v13->super._batchEncode = sub_239BEB4CC;
    }
  }

  return result;
}

- (MPSCNNDropout)initWithDevice:(id)a3 keepProbability:(float)a4 state:(id)a5 maskStrideInPixels:(id *)a6
{
  v26 = *a6;
  var0_high = HIDWORD(v26.var0);
  result = objc_msgSend_initWithDevice_keepProbability_seed_maskStrideInPixels_(self, a2, a3, 0, &v26, v6, v7, v8, *&a4);
  if (result)
  {
    v14 = result;

    v15 = objc_alloc(MEMORY[0x277CD7280]);
    objc_msgSend_setDistributionType_(v15, v16, 127, v17, v18, v19, v20, v21);
    v22 = objc_alloc(MEMORY[0x277CD7288]);
    v14->_parallelGenerator = objc_msgSend_initWithDevice_destinationDataType_state_distributionDescriptor_(v22, v23, a3, 8, *(a5 + 1), v15, v24, v25);

    result = v14;
    *(v14->_parallelGenerator + *MEMORY[0x277CD7468]) = a4;
  }

  return result;
}

- (MPSCNNDropout)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v53.receiver = self;
  v53.super_class = MPSCNNDropout;
  v6 = [MPSCNNKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v13 = v6;
  if (v6)
  {
    if (*(&v6->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      objc_msgSend_decodeFloatForKey_(aDecoder, v7, @"MPSCNNDropoutKeepProbability", v8, v9, v10, v11, v12);
      v13->_keepProbability = v14;
      v13->_seed = objc_msgSend_decodeInt32ForKey_(aDecoder, v15, @"MPSCNNDropoutSeed", v16, v17, v18, v19, v20);
      v13->_maskStrideInPixels.width = objc_msgSend_decodeInt64ForKey_(aDecoder, v21, @"MPSCNNDropoutMaskStrideInPixelsWidth", v22, v23, v24, v25, v26);
      v13->_maskStrideInPixels.height = objc_msgSend_decodeInt64ForKey_(aDecoder, v27, @"MPSCNNDropoutMaskStrideInPixelsHeight", v28, v29, v30, v31, v32);
      v13->_maskStrideInPixels.depth = objc_msgSend_decodeInt64ForKey_(aDecoder, v33, @"MPSCNNDropoutMaskStrideInPixelsDepth", v34, v35, v36, v37, v38);
      v39 = objc_alloc(MEMORY[0x277CD7288]);
      v44 = objc_msgSend_initWithDevice_destinationDataType_seed_(v39, v40, device, 8, v13->_seed, v41, v42, v43);
      v13->_parallelGenerator = v44;
      objc_msgSend_setDistributionType_(v44, v45, 127, v46, v47, v48, v49, v50);
      *(v13->_parallelGenerator + *MEMORY[0x277CD7468]) = v13->_keepProbability;
      v13->super._checkFlags |= 2u;
      v13->super._encodeData = v13;
      v13->super._encode = sub_239BEB408;
      v13->super._batchEncode = sub_239BEB4CC;
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v51 = objc_opt_class();
        NSStringFromClass(v51);
        MTLReportFailure();
      }

      return 0;
    }
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v32.receiver = self;
  v32.super_class = MPSCNNDropout;
  [(MPSCNNKernel *)&v32 encodeWithCoder:?];
  *&v5 = v4->_keepProbability;
  objc_msgSend_encodeFloat_forKey_(a3, v6, @"MPSCNNDropoutKeepProbability", v7, v8, v9, v10, v11, v5);
  objc_msgSend_encodeInt32_forKey_(a3, v12, LODWORD(v4->_seed), @"MPSCNNDropoutSeed", v13, v14, v15, v16);
  v4 = (v4 + 344);
  objc_msgSend_encodeInt64_forKey_(a3, v17, v4->super.super.super.isa, @"MPSCNNDropoutMaskStrideInPixelsWidth", v18, v19, v20, v21);
  objc_msgSend_encodeInt64_forKey_(a3, v22, v4->super.super._options, @"MPSCNNDropoutMaskStrideInPixelsHeight", v23, v24, v25, v26);
  objc_msgSend_encodeInt64_forKey_(a3, v27, v4->super.super._verbosityLevel, @"MPSCNNDropoutMaskStrideInPixelsDepth", v28, v29, v30, v31);
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v20.receiver = self;
  v20.super_class = MPSCNNDropout;
  result = [(MPSCNNKernel *)&v20 copyWithZone:a3 device:a4];
  if (result)
  {
    *(result + 82) = LODWORD(self->_keepProbability);
    *(result + 42) = self->_seed;
    depth = self->_maskStrideInPixels.depth;
    *(result + 344) = *&self->_maskStrideInPixels.width;
    v13 = MEMORY[0x277CD7350];
    *(result + 45) = depth;
    v14 = *v13;
    v15 = result;
    v16 = *(*(result + v14) + 16);
    parallelGenerator = self->_parallelGenerator;
    if ((*(&self->super.super.super.isa + v14))[2] == v16)
    {
      v18 = parallelGenerator;
    }

    else
    {
      v18 = objc_msgSend_copyWithZone_device_(parallelGenerator, v7, a3, v16, v8, v9, v10, v11);
    }

    v19 = v18;
    result = v15;
    *(v15 + 46) = v19;
    *(v15 + 70) = self->super._checkFlags | 2;
    *(v15 + 38) = v15;
    *(v15 + 36) = sub_239BEB408;
    *(v15 + 37) = sub_239BEB4CC;
  }

  return result;
}

- (id)exportRandomState
{
  v3 = objc_alloc_init(MPSCNNDropoutRandomState);

  v4 = objc_autoreleasePoolPush();
  v12 = objc_msgSend_exportState(self->_parallelGenerator, v5, v6, v7, v8, v9, v10, v11);
  v3->_rngState = v12;
  v13 = v12;
  objc_autoreleasePoolPop(v4);

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNDropout;
  [(MPSCNNKernel *)&v3 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = MPSCNNDropout;
  v4 = [(MPSCNNKernel *)&v12 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tkeepProbability: %f\tseed: %lu", v6, v7, v8, v9, v10, v4, self->_keepProbability, self->_seed);
}

- (id)privateResultStateForSourceImage:(id)a3 sourceStates:(id)a4 destinationImage:(id)a5 commandBuffer:(id)a6 isTemporary:(BOOL)a7
{
  if (a4 && (*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    v70 = objc_opt_class();
    v71 = NSStringFromClass(v70);
    MTLReportFailure();
  }

  v14 = objc_msgSend_width(a3, a2, a3, a4, a5, a6, a7, v7, v71);
  v22 = objc_msgSend_height(a3, v15, v16, v17, v18, v19, v20, v21);
  v30 = objc_msgSend_featureChannels(a3, v23, v24, v25, v26, v27, v28, v29);
  if (!self->_maskStrideInPixels.width)
  {
    v14 = 1;
  }

  if (!self->_maskStrideInPixels.height)
  {
    v22 = 1;
  }

  if (self->_maskStrideInPixels.depth)
  {
    v37 = (v30 + 3) >> 2;
  }

  else
  {
    v37 = 1;
  }

  if (a7)
  {
    v38 = objc_msgSend_temporaryStateWithCommandBuffer_(MPSCNNDropoutGradientState, v31, a6, v32, v33, v34, v35, v36);
    if (objc_msgSend_featureChannels(a3, v39, v40, v41, v42, v43, v44, v45) != 1)
    {
      goto LABEL_12;
    }

LABEL_18:
    v53 = 10;
    if (!v38)
    {
      return v38;
    }

LABEL_19:
    v72.receiver = self;
    v72.super_class = MPSCNNDropout;
    [(MPSCNNKernel *)&v72 copyToGradientState:v38 sourceImage:a3 sourceStates:a4 destinationImage:a5];
    v68 = *&self->_maskStrideInPixels.width;
    *(v38 + 38) = self->_maskStrideInPixels.depth;
    *(v38 + 18) = v68;
    *(v38 + 78) = LODWORD(self->_keepProbability);
    *(v38 + 40) = v53;
    *(v38 + 41) = v14;
    *(v38 + 42) = v22;
    *(v38 + 43) = v37;
    return v38;
  }

  v54 = [MPSCNNDropoutGradientState alloc];
  v38 = objc_msgSend_initWithResource_(v54, v55, 0, v56, v57, v58, v59, v60);
  if (objc_msgSend_featureChannels(a3, v61, v62, v63, v64, v65, v66, v67) == 1)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (objc_msgSend_featureChannels(a3, v46, v47, v48, v49, v50, v51, v52) == 2)
  {
    v53 = 30;
  }

  else
  {
    v53 = 70;
  }

  if (v38)
  {
    goto LABEL_19;
  }

  return v38;
}

- (MPSCNNDropoutGradientState)resultStateBatchForSourceImage:(MPSImageBatch *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage
{
  v6.receiver = self;
  v6.super_class = MPSCNNDropout;
  return [(MPSCNNKernel *)&v6 resultStateBatchForSourceImage:sourceImage sourceStates:sourceStates destinationImage:destinationImage];
}

- (MPSCNNDropoutGradientStateBatch)temporaryResultStateBatchForCommandBuffer:(id)commandBuffer sourceImage:(MPSImageBatch *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage
{
  v7.receiver = self;
  v7.super_class = MPSCNNDropout;
  return [(MPSCNNKernel *)&v7 temporaryResultStateBatchForCommandBuffer:commandBuffer sourceImage:sourceImage sourceStates:sourceStates destinationImage:destinationImage];
}

@end