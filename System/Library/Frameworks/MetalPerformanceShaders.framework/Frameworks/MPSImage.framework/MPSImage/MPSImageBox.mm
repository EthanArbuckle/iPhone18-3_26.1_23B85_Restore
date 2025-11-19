@interface MPSImageBox
- (MPSImageBox)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageBox)initWithDevice:(id)device;
- (MPSImageBox)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight;
- (MPSRegion)sourceRegionForDestinationSize:(SEL)a3;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)initFilterInfo;
@end

@implementation MPSImageBox

- (void)initFilterInfo
{
  v35 = *MEMORY[0x277D85DE8];
  self->filterInfoH = 0;
  self->filterInfoV = 1;
  self->hPass = 0;
  self->vPass = 0;
  kernelWidth = self->_kernelWidth;
  v5 = MEMORY[0x277CD7350];
  if (kernelWidth <= 9)
  {
    if (!kernelWidth)
    {
      goto LABEL_33;
    }

    v8 = 1.0 / kernelWidth;
    v9 = vdupq_n_s64(kernelWidth - 1);
    v10 = kernelWidth + 1;
    v11 = vmovn_s64(vcgeq_u64(v9, xmmword_2399888A0));
    if (v11.i8[0])
    {
      v26 = v8;
      v12 = v10 & 0x1E;
      if ((v11.i8[4] & 1) == 0)
      {
LABEL_7:
        if (v12 == 2)
        {
          goto LABEL_33;
        }

LABEL_11:
        v13 = vmovn_s64(vcgtq_u64(v9, xmmword_2399888B0));
        if (v13.i8[0])
        {
          v28 = v8;
          if ((v13.i8[4] & 1) == 0)
          {
LABEL_13:
            if (v12 == 4)
            {
              goto LABEL_33;
            }

LABEL_17:
            v14 = vmovn_s64(vcgtq_u64(v9, xmmword_2399888C0));
            if (v14.i8[0])
            {
              v30 = v8;
              if ((v14.i8[4] & 1) == 0)
              {
LABEL_19:
                if (v12 == 6)
                {
                  goto LABEL_33;
                }

LABEL_23:
                v15 = vmovn_s64(vcgtq_u64(v9, xmmword_2399888D0));
                if (v15.i8[0])
                {
                  v32 = v8;
                  if ((v15.i8[4] & 1) == 0)
                  {
LABEL_25:
                    if (v12 == 8)
                    {
                      goto LABEL_33;
                    }

                    goto LABEL_29;
                  }
                }

                else if ((v15.i8[4] & 1) == 0)
                {
                  goto LABEL_25;
                }

                v33 = v8;
                if (v12 == 8)
                {
                  goto LABEL_33;
                }

LABEL_29:
                v16 = vmovn_s64(vcgtq_u64(v9, xmmword_2399888E0));
                if (v16.i8[0])
                {
                  v34 = v8;
                }

                if (v16.i8[4])
                {
                  *&v35 = v8;
                }

LABEL_33:
                v17 = [MPSImageConvolution alloc];
                self->hPass = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_weights_(v17, v18, (*(&self->super.super.super.isa + *v5))[2], self->_kernelWidth, 1, &v26);
                kernelHeight = self->_kernelHeight;
                if (kernelHeight > 7)
                {
                  goto LABEL_3;
                }

                goto LABEL_34;
              }
            }

            else if ((v14.i8[4] & 1) == 0)
            {
              goto LABEL_19;
            }

            v31 = v8;
            if (v12 == 6)
            {
              goto LABEL_33;
            }

            goto LABEL_23;
          }
        }

        else if ((v13.i8[4] & 1) == 0)
        {
          goto LABEL_13;
        }

        v29 = v8;
        if (v12 == 4)
        {
          goto LABEL_33;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v12 = v10 & 0x1E;
      if ((v11.i8[4] & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v27 = v8;
    if (v12 == 2)
    {
      goto LABEL_33;
    }

    goto LABEL_11;
  }

  kernelHeight = self->_kernelHeight;
  if (kernelHeight > 7)
  {
LABEL_3:
    v7 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_34:
  if (kernelHeight)
  {
    *v2.i32 = 1.0 / kernelHeight;
    v19 = vdupq_n_s64(kernelHeight - 1);
    v20 = vmovn_s64(vcgeq_u64(v19, xmmword_2399888A0));
    if (vuzp1_s16(v20, v2).u8[0])
    {
      v26 = 1.0 / kernelHeight;
    }

    v21 = kernelHeight + 3;
    if (vuzp1_s16(v20, v2).i8[2])
    {
      v27 = *v2.i32;
    }

    if ((vuzp1_s16(v2, vmovn_s64(vcgeq_u64(v19, xmmword_2399888F0))).i32[1] & 1) == 0)
    {
      if ((v21 & 0xC) == 4)
      {
        goto LABEL_49;
      }

LABEL_43:
      v22 = vmovn_s64(vcgtq_u64(v19, xmmword_2399888C0));
      if (vuzp1_s16(v22, v2).u8[0])
      {
        v30 = *v2.i32;
      }

      if (vuzp1_s16(v22, v2).i8[2])
      {
        v31 = *v2.i32;
      }

      if (vuzp1_s16(v2, vmovn_s64(vcgtq_u64(v19, xmmword_2399888D0))).i32[1])
      {
        v32 = *v2.i32;
        v33 = *v2.i32;
      }

      goto LABEL_49;
    }

    v28 = *v2.i32;
    v29 = *v2.i32;
    if ((v21 & 0xC) != 4)
    {
      goto LABEL_43;
    }
  }

LABEL_49:
  v23 = [MPSImageConvolution alloc];
  self->vPass = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_weights_(v23, v24, (*(&self->super.super.super.isa + *v5))[2], 1, self->_kernelHeight, &v26);
  v25 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  objc_msgSend_dealloc(self->vPass, a2, v2, v3, v4, v5);
  objc_msgSend_dealloc(self->hPass, v7, v8, v9, v10, v11);
  v12.receiver = self;
  v12.super_class = MPSImageBox;
  [(MPSKernel *)&v12 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = MPSImageBox;
  v4 = [(MPSUnaryImageKernel *)&v11 debugDescription];
  kernelWidth = self->_kernelWidth;
  return objc_msgSend_stringWithFormat_(v3, v6, @"%@\n\tkernel width:  %lu\n\tkernel height: %lu", v7, v8, v9, v4, kernelWidth, self->_kernelHeight);
}

- (MPSImageBox)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    v7 = objc_opt_class();
    NSStringFromClass(v7);
    MTLReportFailure();
  }

  return objc_msgSend_initWithDevice_kernelWidth_kernelHeight_(self, v5, device, 1, 1, v6);
}

- (MPSImageBox)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight
{
  v19.receiver = self;
  v19.super_class = MPSImageBox;
  result = [(MPSUnaryImageKernel *)&v19 initWithDevice:device];
  if (result)
  {
    if (kernelWidth & kernelHeight)
    {
      result->_kernelHeight = kernelHeight;
      result->_kernelWidth = kernelWidth;
      result->super._encode = sub_239950048;
      result->super._encodeData = result;
      v13 = *MEMORY[0x277CD7350];
      if (((*(&result->super.super.super.isa + v13))[1477] & 4) != 0)
      {
        result->super._getPreferredTileSize = sub_239950F68;
        v15 = *(&result->super.super.super.isa + v13);
        v16 = *(v15 + 1472);
        if (v16 < 12)
        {
          if (v16 < 7)
          {
LABEL_11:
            v17 = result;
            objc_msgSend_initFilterInfo(result, v8, v9, v10, v11, v12);
            return v17;
          }
        }

        else
        {
          v14 = sub_239951064;
          if (*(v15 + 1480) > 6uLL)
          {
            goto LABEL_10;
          }
        }

        v14 = sub_2399511EC;
      }

      else
      {
        v14 = 0;
      }

LABEL_10:
      result->super._getPreferredTileSize = v14;
      goto LABEL_11;
    }

    v18 = result;
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    return 0;
  }

  return result;
}

- (MPSImageBox)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v25.receiver = self;
  v25.super_class = MPSImageBox;
  v5 = [(MPSUnaryImageKernel *)&v25 initWithCoder:aDecoder device:device];
  v10 = v5;
  if (!v5)
  {
    return v10;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 != 0x10000)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v22 = objc_opt_class();
      NSStringFromClass(v22);
      MTLReportFailure();
    }

    return 0;
  }

  v5->_kernelWidth = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSBoxTent.kernelWidth", v7, v8, v9);
  v10->_kernelHeight = objc_msgSend_decodeInt64ForKey_(aDecoder, v11, @"MPSBoxTent.kernelHeight", v12, v13, v14);
  v10->super._encode = sub_239950048;
  v10->super._encodeData = v10;
  v20 = *(&v10->super.super.super.isa + *MEMORY[0x277CD7350]);
  if ((*(v20 + 1477) & 4) != 0)
  {
    v24 = *(v20 + 1472) <= 6;
    v21 = sub_239950F68;
    if (!v24)
    {
      v21 = sub_2399511EC;
    }
  }

  else
  {
    v21 = 0;
  }

  v10->super._getPreferredTileSize = v21;
  objc_msgSend_initFilterInfo(v10, v15, v16, v17, v18, v19);
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v11.receiver = self;
  v11.super_class = MPSImageBox;
  [(MPSUnaryImageKernel *)&v11 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(a3, v5, self->_kernelWidth, @"MPSBoxTent.kernelWidth", v6, v7);
  objc_msgSend_encodeInt64_forKey_(a3, v8, self->_kernelHeight, @"MPSBoxTent.kernelHeight", v9, v10);
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v15.receiver = self;
  v15.super_class = MPSImageBox;
  v7 = [MPSUnaryImageKernel copyWithZone:sel_copyWithZone_device_ device:?];
  v11 = v7;
  if (v7)
  {
    v7[26] = self->_kernelWidth;
    v7[27] = self->_kernelHeight;
    *(v7 + 56) = self->filterInfoH;
    *(v7 + 57) = self->filterInfoV;
    hPass = self->hPass;
    if (hPass)
    {
      v11[29] = objc_msgSend_copyWithZone_device_(hPass, v8, a3, a4, v9, v10);
    }

    vPass = self->vPass;
    if (vPass)
    {
      v11[30] = objc_msgSend_copyWithZone_device_(vPass, v8, a3, a4, v9, v10);
    }
  }

  return v11;
}

- (MPSRegion)sourceRegionForDestinationSize:(SEL)a3
{
  *&retstr->origin.z = 0u;
  *&retstr->size.height = 0u;
  *&retstr->origin.x = 0u;
  v10 = *a4;
  v9.receiver = self;
  v9.super_class = MPSImageBox;
  result = [(MPSRegion *)&v9 sourceRegionForDestinationSize:&v10];
  v7 = *&self->_kernelWidth;
  *&retstr->origin.x = vsubq_f64(*&retstr->origin.x, vcvtq_f64_u64(vshrq_n_u64(v7, 1uLL)));
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  *&retstr->size.width = vaddq_f64(*&retstr->size.width, vcvtq_f64_u64(vaddq_s64(v7, v8)));
  return result;
}

@end