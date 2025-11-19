@interface MPSCNNBatchNormalizationStatistics
- (MPSCNNBatchNormalizationStatistics)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNBatchNormalizationStatistics)initWithDevice:(id)device;
- (unint64_t)maxBatchSize;
- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImages batchNormalizationState:(MPSCNNBatchNormalizationState *)batchNormalizationState;
@end

@implementation MPSCNNBatchNormalizationStatistics

- (MPSCNNBatchNormalizationStatistics)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSCNNBatchNormalizationStatistics;
  result = [(MPSCNNKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->super._encode = 0;
    result->super._batchEncode = sub_239D557DC;
    result->super._encodeData = result;
    result->super._checkFlags |= 0x11000u;
  }

  return result;
}

- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImages batchNormalizationState:(MPSCNNBatchNormalizationState *)batchNormalizationState
{
  v12 = objc_msgSend_count(sourceImages, a2, commandBuffer, sourceImages, batchNormalizationState, v5, v6, v7);
  v16 = 0;
  if (batchNormalizationState)
  {
    v17 = v12;
    if (v12)
    {
      v18 = malloc_type_malloc(8 * v12, 0x80040B8603338uLL);
      if (!v18)
      {
        v16 = 0;
        goto LABEL_13;
      }

      v21 = v18;
      if (v17 > 3)
      {
        v22 = v17 & 0xFFFFFFFFFFFFFFFCLL;
        v23 = vdupq_n_s64(batchNormalizationState);
        v24 = v18 + 1;
        v25 = v17 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v24[-1] = v23;
          *v24 = v23;
          v24 += 2;
          v25 -= 4;
        }

        while (v25);
        if (v17 == v22)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v22 = 0;
      }

      v26 = v17 - v22;
      v27 = v18 + v22;
      do
      {
        *v27++ = batchNormalizationState;
        --v26;
      }

      while (v26);
LABEL_12:
      v28 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v18, v17, v19, v20, v14, v15);
      free(v21);
      v16 = v28;
    }
  }

LABEL_13:

  objc_msgSend_encodeBatchToCommandBuffer_sourceImages_inStates_destinationImages_(self, v13, commandBuffer, sourceImages, v16, 0, v14, v15);
}

- (MPSCNNBatchNormalizationStatistics)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSCNNBatchNormalizationStatistics;
  return [(MPSCNNKernel *)&v5 initWithCoder:aDecoder device:device];
}

- (unint64_t)maxBatchSize
{
  v2 = *(&self->super.super.super.isa + *MEMORY[0x277CD7350]);
  v3 = *(v2 + 1480);
  v4 = -2;
  if ((*(v2 + 1477) & 4) == 0)
  {
    return ((v3 >> 52) & 0x3FF) - 2;
  }

  v6 = *(v2 + 1472);
  v7 = v6 < 10;
  if (v6 < 10)
  {
    v4 = -4;
  }

  v8 = 1;
  if (v7)
  {
    v8 = 2;
  }

  return (v4 + ((v3 >> 52) & 0x3FF)) / v8;
}

@end