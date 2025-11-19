@interface MPSImageTent
- (void)initFilterInfo;
@end

@implementation MPSImageTent

- (void)initFilterInfo
{
  v54 = *MEMORY[0x277D85DE8];
  self->super.filterInfoH = 2;
  self->super.filterInfoV = 3;
  self->super.hPass = 0;
  self->super.vPass = 0;
  kernelWidth = self->super._kernelWidth;
  v5 = MEMORY[0x277CD7350];
  if (kernelWidth <= 9)
  {
    if (!kernelWidth)
    {
      goto LABEL_33;
    }

    v8 = (kernelWidth + 1) >> 1;
    v9 = (v8 * v8);
    *v2.i32 = v8;
    v10 = vdupq_n_s64(kernelWidth - 1);
    v11 = kernelWidth + 1;
    v12 = vdup_lane_s32(v2, 0);
    v13 = vmovn_s64(vcgeq_u64(v10, xmmword_2399888A0));
    v14 = vabs_f32(vadd_f32(v12, 0xC0000000BF800000));
    if (v13.i8[0])
    {
      v45 = (*v2.i32 - v14.f32[0]) / v9;
      v15 = v11 & 0x1E;
      if ((v13.i8[4] & 1) == 0)
      {
LABEL_7:
        if (v15 == 2)
        {
          goto LABEL_33;
        }

LABEL_11:
        v16 = vmovn_s64(vcgtq_u64(v10, xmmword_2399888B0));
        v17 = vabs_f32(vadd_f32(v12, 0xC0800000C0400000));
        if (v16.i8[0])
        {
          v47 = (*v2.i32 - v17.f32[0]) / v9;
          if ((v16.i8[4] & 1) == 0)
          {
LABEL_13:
            if (v15 == 4)
            {
              goto LABEL_33;
            }

LABEL_17:
            v18 = vmovn_s64(vcgtq_u64(v10, xmmword_2399888C0));
            v19 = vabs_f32(vadd_f32(v12, 0xC0C00000C0A00000));
            if (v18.i8[0])
            {
              v49 = (*v2.i32 - v19.f32[0]) / v9;
              if ((v18.i8[4] & 1) == 0)
              {
LABEL_19:
                if (v15 == 6)
                {
                  goto LABEL_33;
                }

LABEL_23:
                v20 = vmovn_s64(vcgtq_u64(v10, xmmword_2399888D0));
                v21 = vabs_f32(vadd_f32(v12, 0xC1000000C0E00000));
                if (v20.i8[0])
                {
                  v51 = (*v2.i32 - v21.f32[0]) / v9;
                  if ((v20.i8[4] & 1) == 0)
                  {
LABEL_25:
                    if (v15 == 8)
                    {
                      goto LABEL_33;
                    }

                    goto LABEL_29;
                  }
                }

                else if ((v20.i8[4] & 1) == 0)
                {
                  goto LABEL_25;
                }

                v52 = (*v2.i32 - v21.f32[1]) / v9;
                if (v15 == 8)
                {
                  goto LABEL_33;
                }

LABEL_29:
                v22 = vmovn_s64(vcgtq_u64(v10, xmmword_2399888E0));
                v23 = vabs_f32(vadd_f32(v12, 0xC1200000C1100000));
                if (v22.i8[0])
                {
                  v53 = (*v2.i32 - v23.f32[0]) / v9;
                }

                if (v22.i8[4])
                {
                  *&v54 = (*v2.i32 - v23.f32[1]) / v9;
                }

LABEL_33:
                v24 = [MPSImageConvolution alloc];
                self->super.hPass = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_weights_(v24, v25, (*(&self->super.super.super.super.isa + *v5))[2], self->super._kernelWidth, 1, &v45);
                kernelHeight = self->super._kernelHeight;
                if (kernelHeight > 9)
                {
                  goto LABEL_3;
                }

                goto LABEL_34;
              }
            }

            else if ((v18.i8[4] & 1) == 0)
            {
              goto LABEL_19;
            }

            v50 = (*v2.i32 - v19.f32[1]) / v9;
            if (v15 == 6)
            {
              goto LABEL_33;
            }

            goto LABEL_23;
          }
        }

        else if ((v16.i8[4] & 1) == 0)
        {
          goto LABEL_13;
        }

        v48 = (*v2.i32 - v17.f32[1]) / v9;
        if (v15 == 4)
        {
          goto LABEL_33;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v15 = v11 & 0x1E;
      if ((v13.i8[4] & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v46 = (*v2.i32 - v14.f32[1]) / v9;
    if (v15 == 2)
    {
      goto LABEL_33;
    }

    goto LABEL_11;
  }

  kernelHeight = self->super._kernelHeight;
  if (kernelHeight > 9)
  {
LABEL_3:
    v7 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_34:
  if (!kernelHeight)
  {
    goto LABEL_63;
  }

  v26 = (kernelHeight + 1) >> 1;
  v27 = (v26 * v26);
  *v2.i32 = v26;
  v28 = vdupq_n_s64(kernelHeight - 1);
  v29 = kernelHeight + 1;
  v30 = vdup_lane_s32(v2, 0);
  v31 = vmovn_s64(vcgeq_u64(v28, xmmword_2399888A0));
  v32 = vabs_f32(vadd_f32(v30, 0xC0000000BF800000));
  if (v31.i8[0])
  {
    v45 = (*v2.i32 - v32.f32[0]) / v27;
    v33 = v29 & 0x1E;
    if ((v31.i8[4] & 1) == 0)
    {
LABEL_37:
      if (v33 == 2)
      {
        goto LABEL_63;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v33 = v29 & 0x1E;
    if ((v31.i8[4] & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v46 = (*v2.i32 - v32.f32[1]) / v27;
  if (v33 == 2)
  {
    goto LABEL_63;
  }

LABEL_41:
  v34 = vmovn_s64(vcgtq_u64(v28, xmmword_2399888B0));
  v35 = vabs_f32(vadd_f32(v30, 0xC0800000C0400000));
  if (v34.i8[0])
  {
    v47 = (*v2.i32 - v35.f32[0]) / v27;
    if ((v34.i8[4] & 1) == 0)
    {
LABEL_43:
      if (v33 == 4)
      {
        goto LABEL_63;
      }

      goto LABEL_47;
    }
  }

  else if ((v34.i8[4] & 1) == 0)
  {
    goto LABEL_43;
  }

  v48 = (*v2.i32 - v35.f32[1]) / v27;
  if (v33 == 4)
  {
    goto LABEL_63;
  }

LABEL_47:
  v36 = vmovn_s64(vcgtq_u64(v28, xmmword_2399888C0));
  v37 = vabs_f32(vadd_f32(v30, 0xC0C00000C0A00000));
  if ((v36.i8[0] & 1) == 0)
  {
    if ((v36.i8[4] & 1) == 0)
    {
      goto LABEL_49;
    }

LABEL_52:
    v50 = (*v2.i32 - v37.f32[1]) / v27;
    if (v33 == 6)
    {
      goto LABEL_63;
    }

    goto LABEL_53;
  }

  v49 = (*v2.i32 - v37.f32[0]) / v27;
  if (v36.i8[4])
  {
    goto LABEL_52;
  }

LABEL_49:
  if (v33 == 6)
  {
    goto LABEL_63;
  }

LABEL_53:
  v38 = vmovn_s64(vcgtq_u64(v28, xmmword_2399888D0));
  v39 = vabs_f32(vadd_f32(v30, 0xC1000000C0E00000));
  if (v38.i8[0])
  {
    v51 = (*v2.i32 - v39.f32[0]) / v27;
    if ((v38.i8[4] & 1) == 0)
    {
LABEL_55:
      if (v33 == 8)
      {
        goto LABEL_63;
      }

LABEL_59:
      v40 = vmovn_s64(vcgtq_u64(v28, xmmword_2399888E0));
      v41 = vabs_f32(vadd_f32(v30, 0xC1200000C1100000));
      if (v40.i8[0])
      {
        v53 = (*v2.i32 - v41.f32[0]) / v27;
      }

      if (v40.i8[4])
      {
        *&v54 = (*v2.i32 - v41.f32[1]) / v27;
      }

      goto LABEL_63;
    }
  }

  else if ((v38.i8[4] & 1) == 0)
  {
    goto LABEL_55;
  }

  v52 = (*v2.i32 - v39.f32[1]) / v27;
  if (v33 != 8)
  {
    goto LABEL_59;
  }

LABEL_63:
  v42 = [MPSImageConvolution alloc];
  self->super.vPass = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_weights_(v42, v43, (*(&self->super.super.super.super.isa + *v5))[2], 1, self->super._kernelHeight, &v45);
  v44 = *MEMORY[0x277D85DE8];
}

@end