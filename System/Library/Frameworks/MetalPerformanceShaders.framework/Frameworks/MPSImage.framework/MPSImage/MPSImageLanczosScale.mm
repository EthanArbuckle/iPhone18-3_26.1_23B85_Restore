@interface MPSImageLanczosScale
- (MPSImageLanczosScale)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageLanczosScale)initWithDevice:(id)device;
- (MPSRegion)sourceRegionForDestinationSize:(SEL)size;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSImageLanczosScale

- (MPSImageLanczosScale)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSImageLanczosScale;
  result = [(MPSImageScale *)&v4 initWithDevice:device];
  if (result)
  {
    *&result->weights[0].weights = 0u;
    *&result->weights[0].offset = 0u;
    *&result->weights[0].phaseStride = 0u;
    *&result->weights[1].weights = 0u;
    *&result->weights[1].offset = 0u;
    *&result->weights[1].phaseStride = 0u;
    result->super.super._encode = sub_239971798;
    result->super.super._encodeData = result;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSImageLanczosScale;
  return [(MPSImageScale *)&v5 copyWithZone:zone device:device];
}

- (MPSImageLanczosScale)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v7.receiver = self;
  v7.super_class = MPSImageLanczosScale;
  result = [(MPSImageScale *)&v7 initWithCoder:aDecoder device:device];
  if (result)
  {
    if (*(&result->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      *&result->weights[0].weights = 0u;
      *&result->weights[0].offset = 0u;
      *&result->weights[0].phaseStride = 0u;
      *&result->weights[1].weights = 0u;
      *&result->weights[1].offset = 0u;
      *&result->weights[1].phaseStride = 0u;
      result->super.super._encode = sub_239971798;
      result->super.super._encodeData = result;
    }

    else
    {
      v5 = result;
      if (MTLReportFailureTypeEnabled())
      {
        v6 = objc_opt_class();
        NSStringFromClass(v6);
        MTLReportFailure();
      }

      return 0;
    }
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v3.receiver = self;
  v3.super_class = MPSImageLanczosScale;
  [(MPSImageScale *)&v3 encodeWithCoder:coder];
}

- (void)dealloc
{
  weights = self->weights;

  weights->weights = 0;
  weights[1].weights = 0;
  v4.receiver = self;
  v4.super_class = MPSImageLanczosScale;
  [(MPSKernel *)&v4 dealloc];
}

- (MPSRegion)sourceRegionForDestinationSize:(SEL)size
{
  v36.receiver = self;
  v36.super_class = MPSImageLanczosScale;
  result = [(MPSRegion *)&v36 scaleTransform];
  v13 = result;
  if ((*(&self->super.super.super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!result)
    {
      result = MTLReportFailureTypeEnabled();
      if (result)
      {
        v14 = objc_opt_class();
        NSStringFromClass(v14);
        result = MTLReportFailure();
      }

      goto LABEL_7;
    }

LABEL_6:
    memset(v35, 0, sizeof(v35));
    v34 = *a4;
    objc_msgSend_clipRect(self, v8, v9, v10, v11, v12);
    result = MPSGetEffectiveClipRegion(v35[0].i64, &v34, &v33);
    __asm { FMOV            V1.2D, #1.0 }

    v20 = *&v13->origin.z;
    v21 = vminnmq_f64(*&v13->origin.x, _Q1);
    __asm { FMOV            V6.2D, #6.0 }

    v23 = vrndpq_f64(vsubq_f64(vdivq_f64(_Q6, v21), vdivq_f64(_Q1, vandq_s8(vmaxnmq_f64(vmulq_f64(v21, vdupq_n_s64(0x4050000000000000uLL)), _Q1), vdupq_n_s64(0xFFF0000000000000)))));
    __asm { FMOV            V5.2D, #0.5 }

    v25 = vdivq_f64(vsubq_f64(_Q5, v20), *&v13->origin.x);
    __asm { FMOV            V6.2D, #-0.5 }

    v27 = vdivq_f64(vsubq_f64(vaddq_f64(vcvtq_f64_u64(*(&v35[1] + 8)), _Q6), v20), *&v13->origin.x);
    __asm { FMOV            V2.2D, #3.0 }

    v29 = vrndpq_f64(vdivq_f64(_Q2, v21));
    __asm { FMOV            V3.2D, #-1.0 }

    v31 = vaddq_f64(vsubq_f64(v23, v29), _Q3);
    v32 = vrndmq_f64(vsubq_f64(v25, v29));
    *&retstr->origin.x = v32;
    retstr->origin.z = 0.0;
    *&retstr->size.width = vsubq_f64(vrndpq_f64(vaddq_f64(v27, v31)), v32);
    retstr->size.depth = 1.0;
    return result;
  }

  if (result)
  {
    goto LABEL_6;
  }

LABEL_7:
  *&retstr->origin.z = 0u;
  *&retstr->size.height = 0u;
  *&retstr->origin.x = 0u;
  return result;
}

@end