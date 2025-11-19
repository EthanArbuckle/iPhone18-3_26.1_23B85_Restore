@interface MPSNNCropAndResizeBilinear
- (MPSNNCropAndResizeBilinear)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSNNCropAndResizeBilinear)initWithDevice:(id)device resizeWidth:(NSUInteger)resizeWidth resizeHeight:(NSUInteger)resizeHeight numberOfRegions:(NSUInteger)numberOfRegions regions:(const MPSRegion *)regions;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 paddingMethod:(unint64_t)a5 sourceOffset:(id *)a6;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNNCropAndResizeBilinear

- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 paddingMethod:(unint64_t)a5 sourceOffset:(id *)a6
{
  v47.receiver = self;
  v47.super_class = MPSNNCropAndResizeBilinear;
  v7 = [(MPSCNNKernel *)&v47 destinationImageDescriptorForSourceImages:a3 sourceStates:a4 paddingMethod:a5 sourceOffset:a6];
  objc_msgSend_setWidth_(v7, v8, self->_resizeWidth, v9, v10, v11, v12, v13);
  objc_msgSend_setHeight_(v7, v14, self->_resizeHeight, v15, v16, v17, v18, v19);
  v27 = objc_msgSend_featureChannels(v7, v20, v21, v22, v23, v24, v25, v26) + 3;
  v35 = objc_msgSend_featureChannels(v7, v28, v29, v30, v31, v32, v33, v34);
  numberOfRegions = self->_numberOfRegions;
  v43 = 2 * (v27 >> 2) * numberOfRegions;
  v44 = numberOfRegions * (v27 & 0xFFFFFFFFFFFFFFFCLL);
  v45 = numberOfRegions * (v27 >> 2);
  if (v35 != 1)
  {
    v45 = v44;
  }

  if (v35 == 2)
  {
    objc_msgSend_setFeatureChannels_(v7, v36, v43, v37, v38, v39, v40, v41);
  }

  else
  {
    objc_msgSend_setFeatureChannels_(v7, v36, v45, v37, v38, v39, v40, v41);
  }

  return v7;
}

- (MPSNNCropAndResizeBilinear)initWithDevice:(id)device resizeWidth:(NSUInteger)resizeWidth resizeHeight:(NSUInteger)resizeHeight numberOfRegions:(NSUInteger)numberOfRegions regions:(const MPSRegion *)regions
{
  v23.receiver = self;
  v23.super_class = MPSNNCropAndResizeBilinear;
  v11 = [(MPSCNNKernel *)&v23 initWithDevice:device];
  v12 = v11;
  if (v11)
  {
    if (!resizeWidth)
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (!resizeHeight)
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (!numberOfRegions)
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (!regions)
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v13 = v11->_numberOfRegions;
    if (v13)
    {
      p_depth = &regions->size.depth;
      while (1)
      {
        if (*(p_depth - 3) != 0.0)
        {
          if (!MTLReportFailureTypeEnabled())
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        if (*p_depth != 0.0)
        {
          break;
        }

        p_depth += 6;
        if (!--v13)
        {
          goto LABEL_11;
        }
      }

      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_20;
      }

LABEL_19:
      MTLReportFailure();
LABEL_20:

      return 0;
    }

LABEL_11:
    v11->_resizeWidth = resizeWidth;
    v11->_resizeHeight = resizeHeight;
    v11->_numberOfRegions = numberOfRegions;
    v11->_regions = malloc_type_malloc(48 * numberOfRegions, 0x1000040EED21634uLL);
    v12->_gpuRegions = malloc_type_malloc(16 * v12->_numberOfRegions, 0x1000040451B5BE8uLL);
    if (v12->_numberOfRegions)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      do
      {
        v18 = &v12->_regions[v15];
        v19 = *&regions[v15].origin.x;
        v18->origin.z = regions[v15].origin.z;
        *&v18->origin.x = v19;
        v20 = &v12->_regions[v15];
        v21 = *&regions[v15].size.width;
        v20->size.depth = regions[v15].size.depth;
        *&v20->size.width = v21;
        *(v12->_gpuRegions + v16) = vcvt_f32_f64(*&regions[v15].origin.x);
        *(v12->_gpuRegions + v16 + 8) = vcvt_f32_f64(*&regions[v15].size.width);
        ++v17;
        v16 += 16;
        ++v15;
      }

      while (v17 < v12->_numberOfRegions);
    }

    v12->super._checkFlags |= 2u;
    v12->super._encode = sub_239D03C0C;
    v12->super._encodeData = v12;
  }

  return v12;
}

- (MPSNNCropAndResizeBilinear)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v49.receiver = self;
  v49.super_class = MPSNNCropAndResizeBilinear;
  result = [(MPSCNNKernel *)&v49 initWithCoder:aDecoder device:device];
  if (!result)
  {
    return result;
  }

  v12 = result;
  if (*(&result->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 != 0x10000)
  {
    if (!MTLReportFailureTypeEnabled())
    {
LABEL_14:

      return 0;
    }

    v39 = objc_opt_class();
    NSStringFromClass(v39);
LABEL_13:
    MTLReportFailure();
    goto LABEL_14;
  }

  result->_resizeWidth = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSNNCropAndResizeBilinear.resizeWidth", v7, v8, v9, v10, v11);
  v12->_resizeHeight = objc_msgSend_decodeInt64ForKey_(aDecoder, v13, @"MPSNNCropAndResizeBilinear.resizeHeight", v14, v15, v16, v17, v18);
  v12->_numberOfRegions = objc_msgSend_decodeInt64ForKey_(aDecoder, v19, @"MPSNNCropAndResizeBilinear.numberOfRegions", v20, v21, v22, v23, v24);
  size = 0;
  v30 = objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v25, @"MPSNNCropAndResizeBilinear.regions", &size, v26, v27, v28, v29);
  if (size != 48 * v12->_numberOfRegions)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_14;
    }

    v40 = objc_opt_class();
    v41 = NSStringFromClass(v40);
    objc_msgSend_cStringUsingEncoding_(v41, v42, 1, v43, v44, v45, v46, v47);
    goto LABEL_13;
  }

  v12->_regions = malloc_type_malloc(size, 0x1000040EED21634uLL);
  v31 = malloc_type_malloc(16 * v12->_numberOfRegions, 0x1000040451B5BE8uLL);
  result = 0;
  v12->_gpuRegions = v31;
  if (v12->_regions && v31)
  {
    if (v12->_numberOfRegions)
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      do
      {
        v35 = &v12->_regions[v32 / 0x30];
        v36 = *(v30 + v32);
        v35->origin.z = *(v30 + v32 + 16);
        *&v35->origin.x = v36;
        v37 = &v12->_regions[v32 / 0x30];
        v38 = *(v30 + v32 + 24);
        v37->size.depth = *(v30 + v32 + 40);
        *&v37->size.width = v38;
        *(v12->_gpuRegions + v33) = vcvt_f32_f64(*(v30 + v32));
        *(v12->_gpuRegions + v33 + 8) = vcvt_f32_f64(*(v30 + v32 + 24));
        ++v34;
        v33 += 16;
        v32 += 48;
      }

      while (v34 < v12->_numberOfRegions);
    }

    v12->super._checkFlags |= 2u;
    v12->super._encode = sub_239D03C0C;
    v12->super._encodeData = v12;
    return v12;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v24.receiver = self;
  v24.super_class = MPSNNCropAndResizeBilinear;
  [(MPSCNNKernel *)&v24 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(a3, v5, self->_resizeWidth, @"MPSNNCropAndResizeBilinear.resizeWidth", v6, v7, v8, v9);
  objc_msgSend_encodeInt64_forKey_(a3, v10, self->_resizeHeight, @"MPSNNCropAndResizeBilinear.resizeHeight", v11, v12, v13, v14);
  objc_msgSend_encodeInt64_forKey_(a3, v15, self->_numberOfRegions, @"MPSNNCropAndResizeBilinear.numberOfRegions", v16, v17, v18, v19);
  objc_msgSend_encodeBytes_length_forKey_(a3, v20, self->_regions, 48 * self->_numberOfRegions, @"MPSNNCropAndResizeBilinear.regions", v21, v22, v23);
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v18.receiver = self;
  v18.super_class = MPSNNCropAndResizeBilinear;
  result = [(MPSCNNKernel *)&v18 copyWithZone:a3 device:a4];
  if (result)
  {
    *(result + 41) = self->_resizeWidth;
    *(result + 42) = self->_resizeHeight;
    numberOfRegions = self->_numberOfRegions;
    *(result + 43) = numberOfRegions;
    v7 = result;
    *(result + 44) = malloc_type_malloc(48 * numberOfRegions, 0x1000040EED21634uLL);
    v8 = malloc_type_malloc(16 * self->_numberOfRegions, 0x1000040451B5BE8uLL);
    result = v7;
    v7[45] = v8;
    if (self->_numberOfRegions)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = &self->_regions[v9];
        v13 = v7[44] + v9 * 48;
        v14 = *&v12->origin.x;
        *(v13 + 16) = v12->origin.z;
        *v13 = v14;
        v15 = &self->_regions[v9];
        v16 = v7[44] + v9 * 48;
        v17 = *&v15->size.width;
        *(v16 + 40) = v15->size.depth;
        *(v16 + 24) = v17;
        *(v7[45] + v10) = vcvt_f32_f64(*&self->_regions[v9].origin.x);
        *(v7[45] + v10 + 8) = vcvt_f32_f64(*&self->_regions[v9].size.width);
        ++v11;
        v10 += 16;
        ++v9;
      }

      while (v11 < self->_numberOfRegions);
    }
  }

  return result;
}

- (id)debugDescription
{
  v2 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = MPSNNCropAndResizeBilinear;
  v3 = [(MPSCNNKernel *)&v11 debugDescription];
  return objc_msgSend_stringWithFormat_(v2, v4, @"%@\n\tCropAndResizeBilinearOperation", v5, v6, v7, v8, v9, v3);
}

- (void)dealloc
{
  regions = self->_regions;
  if (regions)
  {
    free(regions);
  }

  gpuRegions = self->_gpuRegions;
  if (gpuRegions)
  {
    free(gpuRegions);
  }

  self->_regions = 0;
  self->_gpuRegions = 0;
  v5.receiver = self;
  v5.super_class = MPSNNCropAndResizeBilinear;
  [(MPSCNNKernel *)&v5 dealloc];
}

@end