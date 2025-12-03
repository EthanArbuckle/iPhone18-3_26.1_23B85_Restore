@interface MPSImageDilate
- (BOOL)initKernelValues:(const float *)values;
- (MPSImageDilate)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageDilate)initWithDevice:(id)device;
- (MPSImageDilate)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight values:(const float *)values;
- (MPSRegion)sourceRegionForDestinationSize:(SEL)size;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSImageDilate

- (void)dealloc
{
  rleValues = self->_rleValues;
  if (rleValues)
  {
    free(rleValues);
    self->_rleValues = 0;
  }

  v4.receiver = self;
  v4.super_class = MPSImageDilate;
  [(MPSKernel *)&v4 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v22.receiver = self;
  v22.super_class = MPSImageDilate;
  v4 = [(MPSUnaryImageKernel *)&v22 debugDescription];
  v10 = objc_msgSend_kernelWidth(self, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_kernelHeight(self, v11, v12, v13, v14, v15);
  return objc_msgSend_stringWithFormat_(v3, v17, @"%@\n\tkernelWidth: %lu\n\tkernelHeight: %lu", v18, v19, v20, v4, v10, v16);
}

- (BOOL)initKernelValues:(const float *)values
{
  kernelHeight = self->_kernelHeight;
  v6 = 6 * kernelHeight + 3;
  v7 = 4 * kernelHeight * self->_kernelWidth;
  rleValues = malloc_type_calloc(1uLL, (v6 & 0xFFFFFFFFFFFFFFFCLL) + v7, 0x1000040274DC3F3uLL);
  self->valuesOffset = v6 & 0xFFFC;
  self->headerSize = (v6 & 0xFFFFFFFC) + v7;
  memcpy(rleValues + (v6 & 0xFFFFFFFFFFFFFFFCLL), values, v7);
  v12 = self->_kernelHeight;
  if (!v12)
  {
    if (rleValues->var2 <= 1u)
    {
      var2 = 1;
    }

    else
    {
      var2 = rleValues->var2;
    }

LABEL_45:
    v31 = 1;
    v33 = var2;
    goto LABEL_46;
  }

  kernelWidth = self->_kernelWidth;
  if (kernelWidth)
  {
    v14 = 0;
    LODWORD(v11) = 1.0;
    do
    {
      v16 = 0;
      while (values[v16] == 1.0)
      {
        if (kernelWidth == ++v16)
        {
          v15 = &rleValues[v14];
          v15->var1 = kernelWidth;
          v15->var0 = kernelWidth;
          goto LABEL_4;
        }
      }

      v17 = &rleValues[v14];
      v17->var0 = v16;
      if (v16 >= kernelWidth - 1)
      {
        v18 = kernelWidth - 1;
      }

      else
      {
        v18 = v16;
      }

      v19 = v18 + 1;
      v20 = kernelWidth - 1;
      while (v20 > v16)
      {
        v21 = values[v20--];
        if (v21 != 1.0)
        {
          v19 = v20 + 2;
          break;
        }
      }

      v22 = 0;
      v17->var1 = v19;
      v17->var2 = 1;
      v9 = &values[kernelWidth >> 1];
      v23 = kernelWidth >> 1;
      do
      {
        if (values[v23] != 0.0)
        {
          break;
        }

        if (*&v9[4 * v22] != 0.0)
        {
          break;
        }

        v17->var2 = (2 * v22++) | 1;
        --v23;
      }

      while (v23 != -1);
LABEL_4:
      ++v14;
      values += kernelWidth;
    }

    while (v14 != v12);
  }

  else
  {
    if (v12 == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = v12 & 0xFFFFFFFFFFFFFFFELL;
      v26 = rleValues + 1;
      v27 = v12 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        v26[-1].var1 = 0;
        v26->var1 = 0;
        v26[-1].var0 = 0;
        v26->var0 = 0;
        v26 += 2;
        v27 -= 2;
      }

      while (v27);
      if (v12 == v25)
      {
        goto LABEL_31;
      }
    }

    v28 = v12 - v25;
    p_var1 = &rleValues[v25].var1;
    do
    {
      *p_var1 = 0;
      *(p_var1 - 1) = 0;
      p_var1 += 3;
      --v28;
    }

    while (v28);
  }

LABEL_31:
  v30 = v12 >> 1;
  if (rleValues[v12 >> 1].var2 <= 1u)
  {
    var2 = 1;
  }

  else
  {
    var2 = rleValues[v12 >> 1].var2;
  }

  if (v12 < 3)
  {
    goto LABEL_45;
  }

  v31 = 1;
  v32 = 5;
  v33 = var2;
  v34 = var2;
  do
  {
    v35 = v32 - 2;
    v36 = (v32 - 2) >> 1;
    if (v34 >= rleValues[v30 - v36].var2)
    {
      v34 = rleValues[v30 - v36].var2;
    }

    v37 = rleValues[v30 + v36].var2;
    if (v34 >= v37)
    {
      v34 = v37;
    }

    if (v34 * v35 > var2)
    {
      var2 = v34 * v35;
      v31 = v32 - 2;
      v33 = v34;
    }

    if (v32 > v12)
    {
      break;
    }

    v32 += 2;
  }

  while (v34);
LABEL_46:
  self->centerWidth = v33;
  self->centerHeight = v31;
  self->_rleValues = rleValues;
  rleBuf = self->_rleBuf;
  if (rleBuf)
  {

    rleValues = self->_rleValues;
  }

  v39 = *MEMORY[0x277CD7350];
  self->_rleBuf = objc_msgSend_newBufferWithBytes_length_options_((*(&self->super.super.super.isa + v39))[2], v9, rleValues, self->headerSize, 0, v10, v11);
  outerMax = self->_outerMax;
  if (outerMax)
  {
  }

  v41 = objc_alloc(self->_maxClass);
  v44 = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_(v41, v42, (*(&self->super.super.super.isa + v39))[2], self->_kernelWidth, self->_kernelHeight, v43);
  self->_outerMax = v44;
  if (v44)
  {
    if (self->_rleBuf)
    {
      innerMax = self->_innerMax;
      if (innerMax)
      {

        self->_innerMax = 0;
      }

      if (var2 < 2)
      {
        self->centerWidth = 1;
        self->centerHeight = 1;
      }

      else
      {
        v46 = objc_alloc(self->_maxClass);
        v44 = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_(v46, v47, (*(&self->super.super.super.isa + v39))[2], self->centerWidth, self->centerHeight, v48);
        self->_innerMax = v44;
        if (!v44)
        {
          return v44;
        }
      }

      LOBYTE(v44) = 1;
    }

    else
    {
      LOBYTE(v44) = 0;
    }
  }

  return v44;
}

- (MPSImageDilate)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight values:(const float *)values
{
  v28.receiver = self;
  v28.super_class = MPSImageDilate;
  v9 = [(MPSUnaryImageKernel *)&v28 initWithDevice:device];
  v15 = v9;
  if (v9)
  {
    v9->_rleValues = 0;
    v9->_rleBuf = 0;
    v9->_kernelHeight = kernelHeight;
    v9->_kernelWidth = kernelWidth;
    v9->kernel = 0;
    v9->_maxClass = objc_msgSend_maxClass(v9, v10, v11, v12, v13, v14);
    v15->super._encode = sub_23994DF48;
    v15->super._encodeData = v15;
    if (!values)
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    v20 = v15->_kernelHeight;
    if (v20)
    {
      v21 = v15->_kernelWidth;
      if ((v21 & 1) == 0)
      {
        if (!MTLReportFailureTypeEnabled())
        {
          goto LABEL_25;
        }

LABEL_15:
        v24 = objc_opt_class();
        NSStringFromClass(v24);
        v27 = v15->_kernelWidth;
        goto LABEL_24;
      }

      if (v20 < 0x10000)
      {
        if (v21 < 0x10000)
        {
          if ((4 * v21 + 6) * v20 < 0xFFFD)
          {
            if (objc_msgSend_initKernelValues_(v15, v16, values, v17, v18, v19))
            {
              return v15;
            }

            if (MTLReportFailureTypeEnabled())
            {
              goto LABEL_23;
            }

LABEL_25:

            return 0;
          }

          if (!MTLReportFailureTypeEnabled())
          {
            goto LABEL_25;
          }

LABEL_23:
          v25 = objc_opt_class();
          NSStringFromClass(v25);
          goto LABEL_24;
        }

        if (!MTLReportFailureTypeEnabled())
        {
          goto LABEL_25;
        }

        goto LABEL_15;
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

    v23 = objc_opt_class();
    NSStringFromClass(v23);
    v26 = v15->_kernelHeight;
LABEL_24:
    MTLReportFailure();
    goto LABEL_25;
  }

  return v15;
}

- (MPSImageDilate)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return MEMORY[0x2821F9670](self, sel_initWithDevice_kernelWidth_kernelHeight_values_, device, 0, 0, self);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v21.receiver = self;
  v21.super_class = MPSImageDilate;
  v7 = [MPSUnaryImageKernel copyWithZone:sel_copyWithZone_device_ device:?];
  v8 = v7;
  if (v7)
  {
    v7[35] = self->_kernelHeight;
    v7[34] = self->_kernelWidth;
    *(v7 + 60) = self->kernel;
    v7[31] = self->_maxClass;
    *(v7 + 64) = self->headerSize;
    *(v7 + 65) = self->valuesOffset;
    *(v7 + 132) = self->centerWidth;
    *(v7 + 133) = self->centerHeight;
    v7[28] = 0;
    v7[29] = 0;
    v7[27] = 0;
    v7[26] = 0;
    v9 = malloc_type_malloc(self->headerSize, 0x1000040274DC3F3uLL);
    if (!v9)
    {
      goto LABEL_7;
    }

    v10 = v9;
    memcpy(v9, self->_rleValues, self->headerSize);
    v8[26] = v10;
    v8[27] = objc_msgSend_newBufferWithBytes_length_options_((*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[2], v11, v10, self->headerSize, 0, v12);
    outerMax = self->_outerMax;
    if (outerMax)
    {
      v17 = objc_msgSend_copyWithZone_device_(outerMax, v13, zone, device, v14, v15);
      v8[28] = v17;
      if (!v17)
      {
        goto LABEL_7;
      }
    }

    innerMax = self->_innerMax;
    if (innerMax)
    {
      v19 = objc_msgSend_copyWithZone_device_(innerMax, v13, zone, device, v14, v15);
      v8[29] = v19;
      if (!v19)
      {
LABEL_7:

        return 0;
      }
    }
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v20.receiver = self;
  v20.super_class = MPSImageDilate;
  [(MPSUnaryImageKernel *)&v20 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_kernelWidth, @"MPSDilateErode.kernelWidth", v6, v7);
  objc_msgSend_encodeInt64_forKey_(coder, v8, self->_kernelHeight, @"MPSDilateErode.kernelHeight", v9, v10);
  v11 = 4 * self->_kernelWidth * self->_kernelHeight;
  v12 = malloc_type_malloc(v11, 0x100004052888210uLL);
  if (v12)
  {
    kernelHeight = self->_kernelHeight;
    rleValues = self->_rleValues;
    kernelWidth = self->_kernelWidth;
    v16 = v12;
    MPSCopyToFromNetworkByteOrder32();
    objc_msgSend_encodeBytes_length_forKey_(coder, v17, v16, v11, @"MPSDilateErode.kernel", v18);
    free(v16);
  }

  else if (MTLReportFailureTypeEnabled())
  {
    v19 = objc_opt_class();
    NSStringFromClass(v19);
    MTLReportFailure();
  }
}

- (MPSImageDilate)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v42.receiver = self;
  v42.super_class = MPSImageDilate;
  v5 = [(MPSUnaryImageKernel *)&v42 initWithCoder:aDecoder device:device];
  v10 = v5;
  if (!v5)
  {
    return v10;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 != 0x10000)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_15;
    }

LABEL_11:
    v36 = objc_opt_class();
    NSStringFromClass(v36);
    goto LABEL_14;
  }

  v5->_kernelWidth = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSDilateErode.kernelWidth", v7, v8, v9);
  v10->_kernelHeight = objc_msgSend_decodeInt64ForKey_(aDecoder, v11, @"MPSDilateErode.kernelHeight", v12, v13, v14);
  v10->kernel = 0;
  v10->_maxClass = objc_msgSend_maxClass(v10, v15, v16, v17, v18, v19);
  v10->super._encode = sub_23994DF48;
  v10->super._encodeData = v10;
  v10->_rleValues = 0;
  v10->_rleBuf = 0;
  kernelHeight = v10->_kernelHeight;
  v24 = 4 * kernelHeight * v10->_kernelWidth;
  if (v24 + 6 * kernelHeight + 3 >= 0x10000)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v41 = 0;
  v25 = objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v20, @"MPSDilateErode.kernel", &v41, v21, v22);
  if (v41 != v24)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v37 = objc_opt_class();
      NSStringFromClass(v37);
      v40 = v10->_kernelHeight;
      kernelWidth = v10->_kernelWidth;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v26 = v25;
  v27 = malloc_type_malloc(v24, 0x100004052888210uLL);
  v28 = v10->_kernelWidth;
  v29 = v10->_kernelHeight;
  MPSCopyToFromNetworkByteOrder32();
  inited = objc_msgSend_initKernelValues_(v10, v30, v27, v31, v32, v33);
  if (v27 != v26)
  {
    free(v27);
  }

  if ((inited & 1) == 0)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v35 = objc_opt_class();
      NSStringFromClass(v35);
LABEL_14:
      MTLReportFailure();
    }

LABEL_15:

    return 0;
  }

  return v10;
}

- (MPSRegion)sourceRegionForDestinationSize:(SEL)size
{
  *&retstr->origin.z = 0u;
  *&retstr->size.height = 0u;
  *&retstr->origin.x = 0u;
  v10 = *a4;
  v9.receiver = self;
  v9.super_class = MPSImageDilate;
  result = [(MPSRegion *)&v9 sourceRegionForDestinationSize:&v10];
  v7 = *&self->_kernelWidth;
  *&retstr->origin.x = vsubq_f64(*&retstr->origin.x, vcvtq_f64_u64(vshrq_n_u64(v7, 1uLL)));
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  *&retstr->size.width = vaddq_f64(*&retstr->size.width, vcvtq_f64_u64(vaddq_s64(v7, v8)));
  return result;
}

@end