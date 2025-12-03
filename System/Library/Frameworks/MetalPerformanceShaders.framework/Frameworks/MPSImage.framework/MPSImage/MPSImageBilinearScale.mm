@interface MPSImageBilinearScale
- (MPSImageBilinearScale)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageBilinearScale)initWithDevice:(id)device;
- (MPSRegion)sourceRegionForDestinationSize:(SEL)size;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSImageBilinearScale

- (MPSImageBilinearScale)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSImageBilinearScale;
  result = [(MPSImageScale *)&v4 initWithDevice:device];
  if (result)
  {
    result->super.super._encode = sub_239956C20;
    result->super.super._encodeData = result;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSImageBilinearScale;
  return [(MPSImageScale *)&v5 copyWithZone:zone device:device];
}

- (MPSImageBilinearScale)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v7.receiver = self;
  v7.super_class = MPSImageBilinearScale;
  result = [(MPSImageScale *)&v7 initWithCoder:aDecoder device:device];
  if (result)
  {
    if (*(&result->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      result->super.super._encode = sub_239956C20;
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
  v3.super_class = MPSImageBilinearScale;
  [(MPSImageScale *)&v3 encodeWithCoder:coder];
}

- (MPSRegion)sourceRegionForDestinationSize:(SEL)size
{
  v22.receiver = self;
  v22.super_class = MPSImageBilinearScale;
  result = [(MPSRegion *)&v22 scaleTransform];
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
    memset(v21, 0, sizeof(v21));
    v20 = *a4;
    objc_msgSend_clipRect(self, v8, v9, v10, v11, v12);
    result = MPSGetEffectiveClipRegion(v21[0].i64, &v20, &v19);
    v15 = vcvt_f32_f64(*v13);
    v16 = vcvt_f32_f64(v13[1]);
    v17 = vdiv_f32(vsub_f32(vadd_f32(vcvt_f32_f64(vcvtq_f64_u64(*(&v21[1] + 8))), 0xBF000000BF000000), v16), v15);
    v18 = vrndm_f32(vdiv_f32(vsub_f32(0x3F0000003F000000, v16), v15));
    *&retstr->origin.x = vcvtq_f64_f32(v18);
    retstr->origin.z = 0.0;
    *&retstr->size.width = vcvtq_f64_f32(vsub_f32(vrndp_f32(v17), v18));
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