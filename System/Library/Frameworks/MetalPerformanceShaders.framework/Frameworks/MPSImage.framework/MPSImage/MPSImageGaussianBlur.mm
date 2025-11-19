@interface MPSImageGaussianBlur
- (MPSImageGaussianBlur)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageGaussianBlur)initWithDevice:(id)device;
- (MPSImageGaussianBlur)initWithDevice:(id)device sigma:(float)sigma;
- (MPSRegion)sourceRegionForDestinationSize:(SEL)a3;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)initFilterInfo;
@end

@implementation MPSImageGaussianBlur

- (void)initFilterInfo
{
  v107[1] = *MEMORY[0x277D85DE8];
  self->_cheesyBlur = 0;
  self->_scale = 1.0;
  self->smallConv = 0;
  self->_plan = 0;
  self->super._encode = sub_23993C2D8;
  self->super._encodeData = self;
  planSteps = self->_planSteps;
  *self->_planSteps = 0u;
  *&self->_planSteps[4] = 0u;
  self->_numSteps = 0;
  sigma = self->_sigma;
  if (sigma > 0.14)
  {
    v5 = 1.0;
    if (sigma < 1.0)
    {
      if (sigma <= 0.7)
      {
        v6 = 2;
      }

      else
      {
        v6 = 3;
      }

      if (sigma <= 0.4)
      {
        v7 = 1;
      }

      else
      {
        v7 = v6;
      }

      v8 = 2 * v7;
      v9 = 1;
      v10 = (2 * (v7 & 3)) | 1;
      v11 = (MEMORY[0x28223BE20])();
      v13 = (v107 - v12);
      v15 = *(&self->super.super.super.isa + v14);
      v16 = v11 / (v15 * 2.5066);
      v17 = (v107 + 4 * v7 - v12);
      *v17 = v16;
      v18 = v11 / v15;
      v19 = -1;
      do
      {
        v20 = v16 * expf(((v18 * v9) * (v18 * v9)) * -0.5);
        v17[v9] = v20;
        v13[(v7 + v19)] = v20;
        ++v9;
        --v19;
      }

      while (v7 + v19 != -1);
      MEMORY[0x28223BE20]();
      v22 = (v107 - v21);
      v23 = *v13;
      v24 = *v13 * v13[1];
      *v22 = *v13 * *v13;
      v22[1] = v24;
      v22[2] = v23 * v13[2];
      if (sigma > 0.4)
      {
        v25 = v23 * v13[4];
        v22[3] = v23 * v13[3];
        v22[4] = v25;
        if (v7 != 2)
        {
          v26 = v23 * v13[5];
          v27 = v23 * v13[6];
          v22[5] = v26;
          v22[6] = v27;
        }
      }

      v28 = &v22[v10];
      v29 = v13[1];
      *v28 = v29 * *v13;
      v28[1] = v29 * v29;
      v28[2] = v29 * v13[2];
      if (sigma > 0.4)
      {
        v30 = v29 * v13[4];
        v28[3] = v29 * v13[3];
        v28[4] = v30;
        if (v7 != 2)
        {
          v31 = v29 * v13[5];
          v32 = v29 * v13[6];
          v28[5] = v31;
          v28[6] = v32;
        }
      }

      v33 = v13[2];
      v34 = &v22[2 * v10];
      v35 = v33 * v13[1];
      *v34 = v33 * *v13;
      v34[1] = v35;
      v34[2] = v33 * v33;
      if (sigma <= 0.4)
      {
        goto LABEL_31;
      }

      v36 = v33 * v13[4];
      v34[3] = v33 * v13[3];
      v34[4] = v36;
      if (v7 != 2)
      {
        v37 = v33 * v13[5];
        v38 = v33 * v13[6];
        v34[5] = v37;
        v34[6] = v38;
      }

      if (sigma <= 0.4)
      {
        goto LABEL_31;
      }

      v39 = &v22[3 * v10];
      v41 = v13[2];
      v40 = v13[3];
      v42 = v40 * v13[1];
      *v39 = v40 * *v13;
      v39[1] = v42;
      v39[2] = v40 * v41;
      v39[3] = v40 * v40;
      v39[4] = v40 * v13[4];
      if (v7 != 2)
      {
        v43 = v40 * v13[5];
        v44 = v40 * v13[6];
        v39[5] = v43;
        v39[6] = v44;
      }

      v45 = v13[4];
      v46 = &v22[4 * v10];
      v47 = v45 * v13[1];
      *v46 = v45 * *v13;
      v46[1] = v47;
      v46[2] = v45 * v13[2];
      if (sigma > 0.4)
      {
        v48 = v45 * v13[4];
        v46[3] = v45 * v13[3];
        v46[4] = v48;
        if (v7 == 2)
        {
LABEL_31:
          v63 = (v8 | 1) * (v8 | 1u);
          if (v63 > 7)
          {
            v64 = ((v8 | 1) * (v8 | 1)) & 0x38;
            v74 = v22 + 4;
            v65 = 0;
            v75 = v64;
            do
            {
              *v65.i32 = (((((((*v65.i32 + COERCE_FLOAT(*(v74 - 1))) + COERCE_FLOAT(HIDWORD(*(v74 - 2)))) + COERCE_FLOAT(*(v74 - 1))) + COERCE_FLOAT(HIDWORD(*(v74 - 1)))) + COERCE_FLOAT(*v74)) + COERCE_FLOAT(HIDWORD(*v74))) + COERCE_FLOAT(*(v74 + 1))) + COERCE_FLOAT(HIDWORD(*v74));
              v74 += 8;
              v75 -= 8;
            }

            while (v75);
          }

          else
          {
            v64 = 0;
            v65 = 0;
          }

          do
          {
            *v65.i32 = *v65.i32 + v22[v64++];
          }

          while (v63 != v64);
          v76 = (v8 | 1) * (v8 | 1u);
          if (v76 > 7)
          {
            v77 = ((v8 | 1) * (v8 | 1)) & 0x38;
            v81 = vdupq_lane_s32(v65, 0);
            v82 = (v22 + 4);
            v83 = v77;
            do
            {
              v84 = vdivq_f32(*v82, v81);
              v82[-1] = vdivq_f32(v82[-1], v81);
              *v82 = v84;
              v82 += 2;
              v83 -= 8;
            }

            while (v83);
          }

          else
          {
            v77 = 0;
          }

          do
          {
            v22[v77] = v22[v77] / *v65.i32;
            ++v77;
          }

          while (v76 != v77);
          v85 = [MPSImageConvolution alloc];
          self->smallConv = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_weights_(v85, v86, (*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[2], (2 * (v7 & 3)) | 1, (2 * (v7 & 3)) | 1, v22);
          goto LABEL_84;
        }

        v49 = v45 * v13[5];
        v50 = v45 * v13[6];
        v46[5] = v49;
        v46[6] = v50;
      }

      if (v7 != 2)
      {
        v51 = v13[5];
        v52 = &v22[5 * v10];
        v53 = v51 * v13[1];
        *v52 = v51 * *v13;
        v52[1] = v53;
        v52[2] = v51 * v13[2];
        if (sigma > 0.4)
        {
          v54 = v51 * v13[4];
          v52[3] = v51 * v13[3];
          v52[4] = v54;
          v55 = v51 * v13[5];
          v56 = v51 * v13[6];
          v52[5] = v55;
          v52[6] = v56;
        }

        v57 = v13[6];
        v58 = &v22[6 * v10];
        v59 = v57 * v13[1];
        *v58 = v57 * *v13;
        v58[1] = v59;
        v58[2] = v57 * v13[2];
        if (sigma > 0.4)
        {
          v60 = v57 * v13[4];
          v58[3] = v57 * v13[3];
          v58[4] = v60;
          v61 = v57 * v13[5];
          v62 = v57 * v13[6];
          v58[5] = v61;
          v58[6] = v62;
        }
      }

      goto LABEL_31;
    }

    v68 = 0;
    self->_scale = 1.0;
    v69 = self->_sigma;
    v70 = v69 >= 25.0 && self->_cheesyBlur;
    if (v70)
    {
      v5 = 0.25;
    }

    self->_scale = v5;
    v71 = (v69 * v5);
    for (i = 256; i > 0; i = i >> 1)
    {
      while (v68 + i <= 820 && dbl_239989B20[dword_2399AE898[v68 + i]] <= v71)
      {
        v68 += i;
      }
    }

    if (v68 >= 820)
    {
      v73 = v68;
    }

    else
    {
      v73 = v68;
      if (vabdd_f64(dbl_239989B20[dword_2399AE898[v68 + 1]], v71) < vabdd_f64(dbl_239989B20[dword_2399AE898[v68]], v71))
      {
        v73 = v68 + 1;
      }
    }

    v78 = &dbl_239989B20[dword_2399AE898[v73]];
    self->_plan = v78;
    if (v78[1] <= 1)
    {
      v79 = 1;
    }

    else
    {
      v79 = v78[1];
    }

    if (v70)
    {
      *planSteps = 24;
      v80 = 1;
    }

    else
    {
      v80 = 0;
    }

    v87 = 0;
    v88 = (v78 + 2);
    v89 = v80 + 1;
    v90 = &self->_planSteps[v80];
    do
    {
      v92 = *&v88[8 * v87];
      if (v92 <= 0x19)
      {
        v91 = dword_2399899E8[v92];
      }

      else
      {
        v91 = -1;
      }

      self->_numSteps = v89;
      *v90++ = v92;
      v87 += v91;
      ++v89;
    }

    while (v87 < v79);
    if (v70)
    {
      if (v92 >= 21)
      {
        self->_numSteps = v89;
        *v90 = 25;
        if (!v89)
        {
          goto LABEL_84;
        }

        goto LABEL_73;
      }

      *(v90 - 1) = v92 + 2;
    }

    if (v89 == 1)
    {
LABEL_84:
      v106 = *MEMORY[0x277D85DE8];
      return;
    }

LABEL_73:
    v93 = 0;
    v94 = (*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[369];
    v95 = MEMORY[0x277CD7370];
    do
    {
      v96 = planSteps[v93];
      if (v96 <= 25)
      {
        v97 = &unk_284C6CA20 + 56 * v96;
      }

      else
      {
        v97 = 0;
      }

      if (*(v97 + 2) != -1)
      {
        v98 = *v95;
        v99 = *(&self->super.super.super.isa + v98);
        MPSLibrary::PrefetchComputeState();
        if ((v94 & 0x80) == 0)
        {
          v100 = *(&self->super.super.super.isa + v98);
          v101 = *(v97 + 2);
          MPSLibrary::PrefetchComputeState();
        }
      }

      if (*(v97 + 8) != -1)
      {
        v102 = *v95;
        v103 = *(&self->super.super.super.isa + v102);
        MPSLibrary::PrefetchComputeState();
        if ((v94 & 0x80) == 0)
        {
          v104 = *(&self->super.super.super.isa + v102);
          v105 = *(v97 + 8);
          MPSLibrary::PrefetchComputeState();
        }
      }

      ++v93;
    }

    while (v93 < self->_numSteps);
    goto LABEL_84;
  }

  v66 = *(&self->super.super.super.isa + *MEMORY[0x277CD7370]);
  v67 = *MEMORY[0x277D85DE8];

  MPSLibrary::PrefetchComputeState();
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSImageGaussianBlur;
  [(MPSKernel *)&v3 dealloc];
}

- (MPSImageGaussianBlur)initWithDevice:(id)device
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  NSLog(&cfstr_PleaseInitiali_1.isa, v4);
  __break(1u);
  return result;
}

- (MPSImageGaussianBlur)initWithDevice:(id)device sigma:(float)sigma
{
  v12.receiver = self;
  v12.super_class = MPSImageGaussianBlur;
  result = [(MPSUnaryImageKernel *)&v12 initWithDevice:device];
  if (result)
  {
    result->_sigma = sigma;
    v11 = result;
    objc_msgSend_initFilterInfo(result, v6, v7, v8, v9, v10);
    return v11;
  }

  return result;
}

- (MPSRegion)sourceRegionForDestinationSize:(SEL)a3
{
  sigma = self->_sigma;
  if (sigma <= 0.14)
  {
    v65[0] = *a4;
    v70.receiver = self;
    v70.super_class = MPSImageGaussianBlur;
    return [(MPSRegion *)&v70 sourceRegionForDestinationSize:v65];
  }

  if (sigma >= 1.0)
  {
    memset(v65, 0, sizeof(v65));
    v64 = *a4;
    objc_msgSend_clipRect(self, a3, a4, v4, v5, v6);
    MPSGetEffectiveClipRegion(v65, &v64, &v63);
    objc_msgSend_offset(self, v31, v32, v33, v34, v35);
    x = v63.origin.x;
    result = objc_msgSend_offset(self, v36, v37, v38, v39, v40);
    v41.f32[0] = x;
    v41.f32[1] = v64.height;
    v42 = v41;
    v43 = vcvt_f32_f64(vcvtq_f64_u64(*&v65[1].var0));
    if (self->_numSteps < 1)
    {
LABEL_21:
      *&retstr->origin.x = vcvtq_f64_f32(v42);
      retstr->origin.z = 0.0;
      *&retstr->size.width = vcvtq_f64_f32(v43);
      retstr->size.depth = 1.0;
      return result;
    }

    v44 = self->_numSteps & 0x7FFFFFFF;
    v45 = v44 + 1;
    v46 = &self->_planSteps[v44 - 1];
    while (1)
    {
      v52 = *v46--;
      v51 = v52;
      if (v52 > 25)
      {
        break;
      }

      if (v51 > 0x19)
      {
        v53 = 0;
      }

      else
      {
        v53 = qword_239989A50[v51];
      }

      v54 = (&unk_284C6CA20 + 56 * v51);
      if (v51 < 23)
      {
        v56 = *(&v53 + 1);
        v57 = v53;
        if (v51 < 16)
        {
          *v47.i64 = v54[2](1);
          v49 = vaddq_f32(v48, v47);
          v47.i32[3] = 0;
          v50 = vrndmq_f32(v47);
          v49.i32[3] = 0;
          result = (v54[5])(1, v50, vsubq_f32(vrndpq_f32(v49), v50), v57, v56);
        }

        else
        {
          *v58.i64 = v54[5](0);
          v60 = vaddq_f32(v59, v58);
          v58.i32[3] = 0;
          v61 = vrndmq_f32(v58);
          v60.i32[3] = 0;
          result = (v54[2])(0, v61, vsubq_f32(vrndpq_f32(v60), v61), v57, v56);
        }

        if (--v45 < 2)
        {
          goto LABEL_21;
        }
      }

      else
      {
        scale = self->_scale;
        if (v51 == 24)
        {
          result = (v54[2])(1);
        }

        else
        {
          result = (v54[5])(1);
        }

        if (--v45 < 2)
        {
          goto LABEL_21;
        }
      }
    }
  }

  else
  {
    objc_msgSend_offset(self, a3, a4, v4, v5, v6);
    smallConv = self->smallConv;
    v65[0] = v69;
    objc_msgSend_setOffset_(smallConv, v12, v65, v13, v14, v15);
    objc_msgSend_clipRect(self, v16, v17, v18, v19, v20);
    v21 = self->smallConv;
    *&v65[0].var0 = v66;
    *&v65[0].var2 = v67;
    *&v65[1].var1 = v68;
    objc_msgSend_setClipRect_(v21, v22, v65, v23, v24, v25);
    result = self->smallConv;
    v65[0] = *a4;
    if (result)
    {
      return objc_msgSend_sourceRegionForDestinationSize_(result, v26, v65, v27, v28, v29);
    }
  }

  *&retstr->origin.z = 0u;
  *&retstr->size.height = 0u;
  *&retstr->origin.x = 0u;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v14.receiver = self;
  v14.super_class = MPSImageGaussianBlur;
  result = [MPSUnaryImageKernel copyWithZone:sel_copyWithZone_device_ device:?];
  if (result)
  {
    *(result + 52) = LODWORD(self->_sigma);
    *(result + 272) = self->_cheesyBlur;
    *(result + 69) = LODWORD(self->_scale);
    smallConv = self->smallConv;
    if (smallConv)
    {
      v12 = result;
      smallConv = objc_msgSend_copyWithZone_device_(self->smallConv, v8, a3, a4, v9, v10);
      result = v12;
    }

    *(result + 27) = smallConv;
    v13 = *&self->_planSteps[4];
    *(result + 14) = *self->_planSteps;
    *(result + 15) = v13;
    *(result + 32) = self->_numSteps;
    *(result + 33) = self->_plan;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = MPSImageGaussianBlur;
  v4 = [(MPSUnaryImageKernel *)&v10 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tsigma: %f\n", v6, v7, v8, v4, self->_sigma);
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v10.receiver = self;
  v10.super_class = MPSImageGaussianBlur;
  [(MPSUnaryImageKernel *)&v10 encodeWithCoder:?];
  *&v5 = self->_sigma;
  objc_msgSend_encodeFloat_forKey_(a3, v6, @"MPSGaussianBlur.sigma", v7, v8, v9, v5);
}

- (MPSImageGaussianBlur)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v19.receiver = self;
  v19.super_class = MPSImageGaussianBlur;
  v5 = [(MPSUnaryImageKernel *)&v19 initWithCoder:aDecoder device:device];
  v10 = v5;
  if (!v5)
  {
    return v10;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    objc_msgSend_decodeFloatForKey_(aDecoder, v6, @"MPSGaussianBlur.sigma", v7, v8, v9);
    v10->_sigma = v11;
    objc_msgSend_initFilterInfo(v10, v12, v13, v14, v15, v16);
    return v10;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v18 = objc_opt_class();
    NSStringFromClass(v18);
    MTLReportFailure();
  }

  return 0;
}

@end