@interface MPSImagePyramid
- (MPSImagePyramid)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImagePyramid)initWithDevice:(id)device centerWeight:(float)centerWeight;
- (MPSImagePyramid)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight weights:(const float *)kernelWeights;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSImagePyramid

- (MPSImagePyramid)initWithDevice:(id)device centerWeight:(float)centerWeight
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = (centerWeight * -0.5) + 0.25;
  v7[0] = v4 * v4;
  v7[1] = v4 * 0.25;
  v7[2] = v4 * centerWeight;
  v7[3] = v4 * 0.25;
  v7[4] = v4 * v4;
  v7[5] = v4 * 0.25;
  v7[6] = 0.0625;
  v7[7] = centerWeight * 0.25;
  v7[8] = 0.0625;
  v7[9] = v4 * 0.25;
  v7[10] = v4 * centerWeight;
  v7[11] = centerWeight * 0.25;
  v7[12] = centerWeight * centerWeight;
  v7[13] = centerWeight * 0.25;
  v7[14] = v4 * centerWeight;
  v7[15] = v4 * 0.25;
  v7[16] = 0.0625;
  v7[17] = centerWeight * 0.25;
  v7[18] = 0.0625;
  v7[19] = v4 * 0.25;
  v7[20] = v4 * v4;
  v7[21] = v4 * 0.25;
  v7[22] = v4 * centerWeight;
  v7[23] = v4 * 0.25;
  v7[24] = v4 * v4;
  result = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_weights_(self, a2, device, 5, 5, v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (MPSImagePyramid)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight weights:(const float *)kernelWeights
{
  v22.receiver = self;
  v22.super_class = MPSImagePyramid;
  v9 = [(MPSUnaryImageKernel *)&v22 initWithDevice:device];
  v10 = v9;
  if (v9)
  {
    if (kernelWidth)
    {
      if (kernelHeight)
      {
        if (kernelWidth >= 0xA)
        {
          if (MTLReportFailureTypeEnabled())
          {
            goto LABEL_21;
          }
        }

        else if (kernelHeight >= 0xA)
        {
          if (MTLReportFailureTypeEnabled())
          {
            goto LABEL_21;
          }
        }

        else
        {
          v9->_fWidth = kernelWidth;
          v9->_fHeight = kernelHeight;
          v9->super._encode = 0;
          v9->super._encodeData = v9;
          v9->wtArray = 0;
          v9->wtBuffer = 0;
          v9->wtArrayh = 0;
          v9->wtBufferh = 0;
          v11 = *MEMORY[0x277CD7350];
          v12 = sub_23994B904(*(&v9->super.super.super.isa + v11), kernelWeights, kernelWidth, kernelHeight, 0, 0, 0);
          v10->separable = v12;
          if (!v12)
          {
            v17 = kernelHeight * kernelWidth;
            v18 = malloc_type_malloc(4 * v17, 0x100004052888210uLL);
            v10->wtArray = v18;
            memcpy(v18, kernelWeights, 4 * v17);
            v10->wtArrayh = malloc_type_malloc(2 * v17, 0x1000040BDFB0063uLL);
            wtArray = v10->wtArray;
            MPSConvertFloatToHalf();
            return v10;
          }

          v13 = malloc_type_malloc(4 * kernelWidth, 0x100004052888210uLL);
          v14 = malloc_type_malloc(4 * kernelHeight, 0x100004052888210uLL);
          sub_23994B904(*(&v10->super.super.super.isa + v11), kernelWeights, kernelWidth, kernelHeight, 0, v13, v14);
          v15 = malloc_type_malloc(4 * (kernelHeight + kernelWidth), 0x100004052888210uLL);
          v10->wtArray = v15;
          if (v15)
          {
            memcpy(v15, v13, 4 * kernelWidth);
            memcpy(&v10->wtArray[kernelWidth], v14, 4 * kernelHeight);
            v10->wtArrayh = malloc_type_malloc(2 * (kernelHeight + kernelWidth), 0x1000040BDFB0063uLL);
            v16 = v10->wtArray;
            MPSConvertFloatToHalf();
            free(v13);
            free(v14);
            return v10;
          }

          if (MTLReportFailureTypeEnabled())
          {
            v21 = objc_opt_class();
            NSStringFromClass(v21);
LABEL_21:
            MTLReportFailure();
          }
        }
      }

      else if (MTLReportFailureTypeEnabled())
      {
        goto LABEL_21;
      }
    }

    else if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_21;
    }

    return 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v49.receiver = self;
  v49.super_class = MPSImagePyramid;
  v5 = [(MPSUnaryImageKernel *)&v49 copyWithZone:zone device:device];
  v11 = v5;
  if (v5)
  {
    v5[30] = self->_fWidth;
    v5[31] = self->_fHeight;
    v5[28] = 0;
    v5[26] = 0;
    v5[29] = 0;
    v5[27] = 0;
    *(v5 + 256) = self->separable;
    wtBuffer = self->wtBuffer;
    if (wtBuffer)
    {
      v13 = *MEMORY[0x277CD7350];
      v14 = *(*(v11 + v13) + 16);
      if (v14 == (*(&self->super.super.super.isa + v13))[2])
      {
        v11[26] = wtBuffer;
        v38 = self->wtBuffer;
      }

      else
      {
        v15 = objc_msgSend_contents(wtBuffer, v6, v7, v8, v9, v10);
        v21 = objc_msgSend_length(self->wtBuffer, v16, v17, v18, v19, v20);
        v11[26] = objc_msgSend_newBufferWithBytes_length_options_(v14, v22, v15, v21, 0, v23);
        v29 = objc_msgSend_contents(self->wtBufferh, v24, v25, v26, v27, v28);
        v35 = objc_msgSend_length(self->wtBufferh, v30, v31, v32, v33, v34);
        v38 = objc_msgSend_newBufferWithBytes_length_options_(v14, v36, v29, v35, 0, v37);
      }

      v11[27] = v38;
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
      v11[28] = v46;
      memcpy(v46, self->wtArray, v44);
      v47 = malloc_type_malloc(v45, 0x1000040BDFB0063uLL);
      v11[29] = v47;
      memcpy(v47, self->wtArrayh, v45);
    }
  }

  return v11;
}

- (MPSImagePyramid)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v74.receiver = self;
  v74.super_class = MPSImagePyramid;
  v6 = [MPSUnaryImageKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v11 = v6;
  if (!v6)
  {
    return v11;
  }

  if (*(&v6->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 != 0x10000)
  {
    if (!MTLReportFailureTypeEnabled())
    {
LABEL_24:

      return 0;
    }

    goto LABEL_20;
  }

  v6->_fWidth = objc_msgSend_decodeInt64ForKey_(aDecoder, v7, @"MPSImagePyramid._fWidth", v8, v9, v10);
  v11->_fHeight = objc_msgSend_decodeInt64ForKey_(aDecoder, v12, @"MPSImagePyramid._fHeight", v13, v14, v15);
  v11->separable = objc_msgSend_decodeBoolForKey_(aDecoder, v16, @"MPSImagePyramid.separable", v17, v18, v19);
  v24 = objc_msgSend_decodeBoolForKey_(aDecoder, v20, @"MPSImagePyramid.UseBuffers", v21, v22, v23);
  v11->super._encode = 0;
  v11->super._encodeData = v11;
  v11->wtArray = 0;
  v11->wtBuffer = 0;
  v11->wtArrayh = 0;
  v11->wtBufferh = 0;
  fWidth = v11->_fWidth;
  fHeight = v11->_fHeight;
  v30 = fHeight + fWidth;
  v31 = fHeight * fWidth;
  if (v11->separable)
  {
    v32 = v30;
  }

  else
  {
    v32 = v31;
  }

  if (4 * v32 >= 0x10000)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (2 * v32 >= 0x10000)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_24;
    }

LABEL_20:
    v48 = objc_opt_class();
    NSStringFromClass(v48);
LABEL_21:
    MTLReportFailure();
    goto LABEL_24;
  }

  v71 = v24;
  v73 = 0;
  v33 = objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v25, @"MPSImagePyramid.wtArray", &v73, v26, v27);
  v72 = 0;
  v37 = objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v34, @"MPSImagePyramid.wtHalfArray", &v72, v35, v36);
  if (v73 != 4 * v32)
  {
    v49 = objc_opt_class();
    v50 = NSStringFromClass(v49);
    objc_msgSend_cStringUsingEncoding_(v50, v51, 1, v52, v53, v54);
    v55 = v11->_fWidth;
    v69 = v11->_fHeight;
    sub_239956830(v11, v56, "[%s initWithCoder:device:] failed. Weights %lux%lu array was the wrong size. (%lu bytes) Is the file truncated?");
    goto LABEL_24;
  }

  if (v72 != 2 * v32)
  {
    v57 = objc_opt_class();
    v58 = NSStringFromClass(v57);
    objc_msgSend_cStringUsingEncoding_(v58, v59, 1, v60, v61, v62);
    v63 = v11->_fWidth;
    v70 = v11->_fHeight;
    sub_239956830(v11, v64, "[%s initWithCoder:device:] failed. Half Weights %lux%lu array was the wrong size. (%lu bytes) Is the file truncated?");
    goto LABEL_24;
  }

  v38 = v37;
  v39 = malloc_type_malloc(4 * v32, 0x100004052888210uLL);
  MPSCopyToFromNetworkByteOrder32();
  v40 = malloc_type_malloc(2 * v32, 0x1000040BDFB0063uLL);
  MPSCopyToFromNetworkByteOrder16();
  if (v71)
  {
    v11->wtBuffer = objc_msgSend_newBufferWithBytes_length_options_(device, v41, v39, 4 * v32, 0, v42);
    v45 = objc_msgSend_newBufferWithBytes_length_options_(device, v43, v40, 2 * v32, 0, v44);
    v11->wtBufferh = v45;
    if (v11->wtBuffer)
    {
      v46 = v45 == 0;
    }

    else
    {
      v46 = 1;
    }

    v47 = !v46;
    if (v39 == v33)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v66 = malloc_type_malloc(4 * v32, 0x100004052888210uLL);
  v11->wtArray = v66;
  memcpy(v66, v39, 4 * v32);
  v67 = malloc_type_malloc(2 * v32, 0x1000040BDFB0063uLL);
  v11->wtArrayh = v67;
  memcpy(v67, v40, 2 * v32);
  if (v11->wtArray)
  {
    v47 = v11->wtArrayh != 0;
    if (v39 == v33)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v47 = 0;
  if (v39 != v33)
  {
LABEL_28:
    free(v39);
  }

LABEL_29:
  if (v40 != v38)
  {
    free(v40);
  }

  if (!v47)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_24;
    }

    v68 = objc_opt_class();
    NSStringFromClass(v68);
    goto LABEL_21;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v45.receiver = self;
  v45.super_class = MPSImagePyramid;
  [(MPSUnaryImageKernel *)&v45 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_fWidth, @"MPSImagePyramid._fWidth", v6, v7);
  objc_msgSend_encodeInt64_forKey_(coder, v8, self->_fHeight, @"MPSImagePyramid._fHeight", v9, v10);
  objc_msgSend_encodeBool_forKey_(coder, v11, self->separable, @"MPSImagePyramid.separable", v12, v13);
  wtBuffer = self->wtBuffer;
  objc_msgSend_encodeBool_forKey_(coder, v15, wtBuffer != 0, @"MPSImagePyramid.UseBuffers", v16, v17);
  fWidth = self->_fWidth;
  fHeight = self->_fHeight;
  v20 = fHeight + fWidth;
  v21 = fHeight * fWidth;
  if (self->separable)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  v23 = malloc_type_malloc(4 * v22, 0x100004052888210uLL);
  v24 = malloc_type_malloc(2 * v22, 0x1000040BDFB0063uLL);
  v30 = v24;
  if (v23)
  {
    v31 = v24 == 0;
  }

  else
  {
    v31 = 1;
  }

  if (v31 && MTLReportFailureTypeEnabled())
  {
    v44 = objc_opt_class();
    NSStringFromClass(v44);
    MTLReportFailure();
  }

  if (v23)
  {
    v32 = v30 == 0;
  }

  else
  {
    v32 = 1;
  }

  if (!v32)
  {
    if (wtBuffer)
    {
      objc_msgSend_contents(self->wtBuffer, v25, v26, v27, v28, v29);
      MPSCopyToFromNetworkByteOrder32();
      objc_msgSend_contents(self->wtBufferh, v33, v34, v35, v36, v37);
    }

    else
    {
      wtArray = self->wtArray;
      MPSCopyToFromNetworkByteOrder32();
      wtArrayh = self->wtArrayh;
    }

    MPSCopyToFromNetworkByteOrder16();
    objc_msgSend_encodeBytes_length_forKey_(coder, v40, v23, 4 * v22, @"MPSImagePyramid.wtArray", v41);
    objc_msgSend_encodeBytes_length_forKey_(coder, v42, v30, 2 * v22, @"MPSImagePyramid.wtHalfArray", v43);
    free(v23);
LABEL_21:
    free(v30);
    return;
  }

  if (v23)
  {
    free(v23);
  }

  if (v30)
  {
    goto LABEL_21;
  }
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

  v7.receiver = self;
  v7.super_class = MPSImagePyramid;
  [(MPSKernel *)&v7 dealloc];
}

@end