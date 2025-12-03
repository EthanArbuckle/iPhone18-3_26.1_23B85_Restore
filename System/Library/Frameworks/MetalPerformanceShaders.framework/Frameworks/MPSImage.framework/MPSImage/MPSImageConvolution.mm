@interface MPSImageConvolution
- (MPSImageConvolution)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageConvolution)initWithDevice:(id)device;
- (MPSImageConvolution)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight weights:(const float *)kernelWeights;
- (MPSImageConvolution)initWithDevice_private:(id)device_private;
- (MPSRegion)sourceRegionForDestinationSize:(SEL)size;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)initFilterWithKernelWidth:(unint64_t)width kernelHeight:(unint64_t)height weights:(const float *)weights;
@end

@implementation MPSImageConvolution

- (MPSImageConvolution)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return objc_msgSend_initWithDevice_kernelWidth_kernelHeight_weights_(self, v5, device, 1, 1, self);
}

- (MPSImageConvolution)initWithDevice_private:(id)device_private
{
  v4.receiver = self;
  v4.super_class = MPSImageConvolution;
  return [(MPSUnaryImageKernel *)&v4 initWithDevice:device_private];
}

- (void)initFilterWithKernelWidth:(unint64_t)width kernelHeight:(unint64_t)height weights:(const float *)weights
{
  self->_fWidth = width;
  self->_fHeight = height;
  self->_fBias = 0.0;
  self->super._encode = sub_239947F3C;
  self->super._encodeData = self;
  self->wtArray = 0;
  self->wtBuffer = 0;
  self->wtArrayh = 0;
  self->wtBufferh = 0;
  self->separable = 0;
  self->_laplacian = 0;
  v9 = 4 * width;
  v10 = 4 * width * height;
  v11 = malloc_type_malloc(v10, 0x100004052888210uLL);
  self->kOrigWeights = v11;
  memcpy(v11, weights, v10);
  if (width == 3 && height == 3 && *weights == 0.0 && weights[2] == 0.0 && weights[6] == 0.0 && weights[8] == 0.0)
  {
    self->specialFilterType = 1;
    v12 = [MPSImageLaplacian alloc];
    v13 = *MEMORY[0x277CD7350];
    v14 = *MEMORY[0x277CD7350];
    self->_laplacian = objc_msgSend_initWithDevice_(v12, v15, (*(&self->super.super.super.isa + v14))[2], v16, v17, v18);
    if (self->specialFilterType)
    {
      if (!self->separable)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }
  }

  else
  {
    self->specialFilterType = 0;
    v13 = *MEMORY[0x277CD7350];
    v14 = *MEMORY[0x277CD7350];
  }

  v21 = sub_23994B904(*(&self->super.super.super.isa + v14), weights, width, height, 0, 0, 0);
  self->separable = v21;
  if (!v21)
  {
LABEL_17:
    if (height * width < 0x401)
    {
      v62 = malloc_type_malloc(v10, 0x100004052888210uLL);
      self->wtArray = v62;
      memcpy(v62, weights, v10);
      self->wtArrayh = malloc_type_malloc(2 * width * height, 0x1000040BDFB0063uLL);
      wtArray = self->wtArray;
    }

    else
    {
      self->wtBuffer = objc_msgSend_newBufferWithBytes_length_options_((*(&self->super.super.super.isa + v13))[2], v19, weights, v10, 0, v20);
      v34 = objc_msgSend_newBufferWithLength_options_((*(&self->super.super.super.isa + v13))[2], v31, 2 * width * height, 0, v32, v33);
      self->wtBufferh = v34;
      objc_msgSend_contents(v34, v35, v36, v37, v38, v39);
      objc_msgSend_contents(self->wtBuffer, v40, v41, v42, v43, v44);
    }

    MPSConvertFloatToHalf();
    return;
  }

  v14 = v13;
LABEL_13:
  v22 = malloc_type_malloc(v9, 0x100004052888210uLL);
  v23 = 4 * height;
  v24 = malloc_type_malloc(4 * height, 0x100004052888210uLL);
  sub_23994B904(*(&self->super.super.super.isa + v14), weights, width, height, 0, v22, v24);
  if (width > 0x400 || height >= 0x401)
  {
    v45 = height + width;
    v46 = objc_msgSend_newBufferWithLength_options_((*(&self->super.super.super.isa + v14))[2], v25, 4 * v45, 0, v26, v27);
    self->wtBuffer = v46;
    v52 = objc_msgSend_contents(v46, v47, v48, v49, v50, v51);
    memcpy(v52, v22, v9);
    memcpy(&v52[4 * width], v24, v23);
    v56 = objc_msgSend_newBufferWithLength_options_((*(&self->super.super.super.isa + v14))[2], v53, 2 * v45, 0, v54, v55);
    self->wtBufferh = v56;
    objc_msgSend_contents(v56, v57, v58, v59, v60, v61);
  }

  else
  {
    v28 = height + width;
    v29 = malloc_type_malloc(4 * v28, 0x100004052888210uLL);
    self->wtArray = v29;
    if (!v29 && MTLReportFailureTypeEnabled())
    {
      v64 = objc_opt_class();
      NSStringFromClass(v64);
      MTLReportFailure();
    }

    memcpy(self->wtArray, v22, v9);
    memcpy(&self->wtArray[width], v24, v23);
    self->wtArrayh = malloc_type_malloc(2 * v28, 0x1000040BDFB0063uLL);
    v30 = self->wtArray;
  }

  MPSConvertFloatToHalf();
  free(v22);

  free(v24);
}

- (MPSImageConvolution)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight weights:(const float *)kernelWeights
{
  v14.receiver = self;
  v14.super_class = MPSImageConvolution;
  result = [(MPSUnaryImageKernel *)&v14 initWithDevice:device];
  if (result)
  {
    if (kernelWidth)
    {
      if (kernelHeight)
      {
        v12 = result;
        objc_msgSend_initFilterWithKernelWidth_kernelHeight_weights_(result, v10, kernelWidth, kernelHeight, kernelWeights, v11);
        return v12;
      }

      v13 = result;
      if (MTLReportFailureTypeEnabled())
      {
        goto LABEL_9;
      }
    }

    else
    {
      v13 = result;
      if (MTLReportFailureTypeEnabled())
      {
LABEL_9:
        MTLReportFailure();
      }
    }

    return 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v50.receiver = self;
  v50.super_class = MPSImageConvolution;
  v5 = [(MPSUnaryImageKernel *)&v50 copyWithZone:zone device:device];
  v6 = v5;
  if (v5)
  {
    *(v5 + 66) = LODWORD(self->_fBias);
    v5[31] = self->_fWidth;
    v5[32] = self->_fHeight;
    v5[29] = 0;
    v5[26] = 0;
    v5[30] = 0;
    v5[27] = 0;
    *(v5 + 268) = self->separable;
    v5[34] = self->specialFilterType;
    v5[35] = self->_laplacian;
    wtBuffer = self->wtBuffer;
    if (wtBuffer)
    {
      v13 = *MEMORY[0x277CD7350];
      v14 = *(*(v6 + v13) + 16);
      if (v14 == (*(&self->super.super.super.isa + v13))[2])
      {
        v6[26] = wtBuffer;
        v38 = self->wtBuffer;
      }

      else
      {
        v15 = objc_msgSend_contents(wtBuffer, v7, v8, v9, v10, v11);
        v21 = objc_msgSend_length(self->wtBuffer, v16, v17, v18, v19, v20);
        v6[26] = objc_msgSend_newBufferWithBytes_length_options_(v14, v22, v15, v21, 0, v23);
        v29 = objc_msgSend_contents(self->wtBufferh, v24, v25, v26, v27, v28);
        v35 = objc_msgSend_length(self->wtBufferh, v30, v31, v32, v33, v34);
        v38 = objc_msgSend_newBufferWithBytes_length_options_(v14, v36, v29, v35, 0, v37);
      }

      v6[27] = v38;
    }

    if (self->wtArray)
    {
      fWidth = self->_fWidth;
      fHeight = self->_fHeight;
      v41 = fHeight + fWidth;
      v42 = fHeight * fWidth;
      if (self->separable)
      {
        v43 = v41;
      }

      else
      {
        v43 = v42;
      }

      v44 = 4 * v43;
      v45 = 2 * v43;
      v46 = malloc_type_malloc(4 * v43, 0x100004052888210uLL);
      v6[29] = v46;
      memcpy(v46, self->wtArray, v44);
      v47 = malloc_type_malloc(v45, 0x1000040BDFB0063uLL);
      v6[30] = v47;
      memcpy(v47, self->wtArrayh, v45);
    }

    if (self->kOrigWeights)
    {
      v48 = malloc_type_malloc(4 * self->_fWidth * self->_fHeight, 0x100004052888210uLL);
      v6[28] = v48;
      memcpy(v48, self->kOrigWeights, 4 * self->_fWidth * self->_fHeight);
    }
  }

  return v6;
}

- (void)dealloc
{
  wtArray = self->wtArray;
  if (wtArray)
  {
    free(wtArray);
  }

  wtBuffer = self->wtBuffer;
  if (wtBuffer)
  {
  }

  wtArrayh = self->wtArrayh;
  if (wtArrayh)
  {
    free(wtArrayh);
  }

  wtBufferh = self->wtBufferh;
  if (wtBufferh)
  {
  }

  kOrigWeights = self->kOrigWeights;
  if (kOrigWeights)
  {
    free(kOrigWeights);
  }

  laplacian = self->_laplacian;
  if (laplacian)
  {
  }

  v9.receiver = self;
  v9.super_class = MPSImageConvolution;
  [(MPSKernel *)&v9 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = MPSImageConvolution;
  v4 = [(MPSUnaryImageKernel *)&v13 debugDescription];
  fWidth = self->_fWidth;
  fHeight = self->_fHeight;
  fBias = self->_fBias;
  if (self->separable)
  {
    return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tkernel width:  %lu\n\tkernel height: %lu\n\tbias:          %f\n\tIs separable:  %s", v6, v7, v8, v4, fWidth, fHeight, *&fBias, "YES");
  }

  else
  {
    return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tkernel width:  %lu\n\tkernel height: %lu\n\tbias:          %f\n\tIs separable:  %s", v6, v7, v8, v4, fWidth, fHeight, *&fBias, "NO");
  }
}

- (MPSRegion)sourceRegionForDestinationSize:(SEL)size
{
  *&retstr->origin.z = 0u;
  *&retstr->size.height = 0u;
  *&retstr->origin.x = 0u;
  v10 = *a4;
  v9.receiver = self;
  v9.super_class = MPSImageConvolution;
  result = [(MPSRegion *)&v9 sourceRegionForDestinationSize:&v10];
  v7 = *&self->_fWidth;
  *&retstr->origin.x = vsubq_f64(*&retstr->origin.x, vcvtq_f64_u64(vshrq_n_u64(v7, 1uLL)));
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  *&retstr->size.width = vaddq_f64(*&retstr->size.width, vcvtq_f64_u64(vaddq_s64(v7, v8)));
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v18.receiver = self;
  v18.super_class = MPSImageConvolution;
  [(MPSUnaryImageKernel *)&v18 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_fWidth, @"MPSConvolution.kernelWidth", v6, v7);
  objc_msgSend_encodeInt64_forKey_(coder, v8, self->_fHeight, @"MPSConvolution.kernelHeight", v9, v10);
  objc_msgSend_encodeBytes_length_forKey_(coder, v11, self->kOrigWeights, 4 * self->_fWidth * self->_fHeight, @"MPSConvolution.kernelWeights", v12);
  *&v13 = self->_fBias;
  objc_msgSend_encodeFloat_forKey_(coder, v14, @"MPSConvolution.bias", v15, v16, v17, v13);
}

- (MPSImageConvolution)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v31.receiver = self;
  v31.super_class = MPSImageConvolution;
  v5 = [(MPSUnaryImageKernel *)&v31 initWithCoder:aDecoder device:device];
  v10 = v5;
  if (v5)
  {
    if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      v11 = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSConvolution.kernelWidth", v7, v8, v9);
      v16 = objc_msgSend_decodeInt64ForKey_(aDecoder, v12, @"MPSConvolution.kernelHeight", v13, v14, v15);
      v30 = 0;
      v22 = objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v17, @"MPSConvolution.kernelWeights", &v30, v18, v19);
      if (v30 != 4 * v11 * v16 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      objc_msgSend_initFilterWithKernelWidth_kernelHeight_weights_(v10, v20, v11, v16, v22, v21);
      objc_msgSend_decodeFloatForKey_(aDecoder, v23, @"MPSConvolution.bias", v24, v25, v26);
      v10->_fBias = v27;
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v28 = objc_opt_class();
        NSStringFromClass(v28);
        MTLReportFailure();
      }

      return 0;
    }
  }

  return v10;
}

@end