@interface MDLPhotometricLight
- (CGColor)evaluatedColorFromSHVector:(MDLPhotometricLight *)self;
- (MDLPhotometricLight)initWithIESProfile:(NSURL *)URL;
- (MDLTexture)generateTexture:(NSUInteger)textureSize;
- (float)computeInnerAngle;
- (void)computeLumens;
- (void)generateCubemapFromLight:(NSUInteger)textureSize;
- (void)generateSphericalHarmonicsFromLight:(NSUInteger)sphericalHarmonicsLevel;
- (void)setSphericalHarmonicsCoefficients:(id)a3;
@end

@implementation MDLPhotometricLight

- (void)setSphericalHarmonicsCoefficients:(id)a3
{
  v7 = a3;
  v5 = objc_msgSend_dataWithData_(MEMORY[0x277CBEB28], v4, v7);
  sphericalHarmonicsCoefficients = self->_sphericalHarmonicsCoefficients;
  self->_sphericalHarmonicsCoefficients = v5;
}

- (MDLPhotometricLight)initWithIESProfile:(NSURL *)URL
{
  v4 = URL;
  v30.receiver = self;
  v30.super_class = MDLPhotometricLight;
  v5 = [(MDLPhysicallyPlausibleLight *)&v30 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
    sphericalHarmonicsCoefficients = v5->_sphericalHarmonicsCoefficients;
    v5->_sphericalHarmonicsCoefficients = v6;

    objc_msgSend_setLightType_(v5, v8, 9);
    v10 = objc_msgSend_dataWithContentsOfURL_(MEMORY[0x277CBEA90], v9, v4);
    v11 = v10;
    if (v10)
    {
      v12 = v10;
      v15 = objc_msgSend_bytes(v12, v13, v14);
      v18 = objc_msgSend_length(v11, v16, v17);
      v19 = 0;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      *v24 = 0u;
      memset(__dst, 0, sizeof(__dst));
      if (v18 != -1)
      {
        sub_239E7967C(__dst, v18 + 1);
        v19 = __dst[0];
      }

      memcpy(v19, v15, v18);
      *(__dst[0] + v18) = 0;
      sub_239EBB5EC(__dst[0], __dst[0] + v18, v24);
      light = v5->super.super._light;
      if (light)
      {
        (*(light->var0 + 1))(light);
      }

      operator new();
    }

    NSLog(&cfstr_UrlProvidedFor.isa);
    v21 = v5;
  }

  return v5;
}

- (void)generateCubemapFromLight:(NSUInteger)textureSize
{
  v5 = 6 * textureSize;
  v6 = objc_alloc(MEMORY[0x277CBEB28]);
  v35 = v5;
  v36 = objc_msgSend_initWithLength_(v6, v7, (4 * textureSize * v5));
  v10 = objc_msgSend_bytes(v36, v8, v9);
  if (self->_iesLight)
  {
    v12 = 5;
    v37 = vdupq_n_s32(0x437F0000u);
    v13 = xmmword_239F9C280;
    do
    {
      v14 = v12;
      if (textureSize >= 1)
      {
        v15 = 0;
        do
        {
          v16 = 0;
          v17 = v10;
          do
          {
            v11 = 1.0 / textureSize;
            v13.f32[0] = v11;
            *v18.i64 = sub_239EE9354(v16, v15, v14, v13);
            v38 = v18;
            iesLight = self->_iesLight;
            v20 = iesLight[2];
            objc_msgSend_translation(v20, v21, v22);
            v24 = (*(*iesLight + 2))(iesLight, vaddq_f32(v23, v38));

            Components = CGColorGetComponents(v24);
            v26 = *Components;
            *v26.f32 = vcvt_f32_f64(*Components);
            v27 = Components[1].f64[0];
            v26.f32[2] = v27;
            v28 = vmulq_f32(v26, v37);
            v28.i32[3] = 0;
            v29 = vmaxnmq_f32(v28, 0);
            v29.i32[3] = 0;
            v13 = vminnmq_f32(v29, xmmword_239F9C280);
            *v17 = v13.f32[0];
            v17[1] = v13.f32[1];
            v17[2] = v13.f32[2];
            v10 = (v17 + 4);
            v17[3] = -1;
            ++v16;
            v17 += 4;
          }

          while (textureSize != v16);
          ++v15;
        }

        while (v15 != textureSize);
      }

      v12 = v14 - 1;
    }

    while (v14);
  }

  v30 = [MDLTexture alloc];
  v34 = 1;
  isCube = objc_msgSend_initWithData_topLeftOrigin_name_dimensions_rowStride_channelCount_channelEncoding_isCube_(v30, v31, v36, 0, 0, 4 * textureSize, 4, 1, COERCE_DOUBLE(__PAIR64__(v35, textureSize)), v34);
  lightCubeMap = self->_lightCubeMap;
  self->_lightCubeMap = isCube;
}

- (void)computeLumens
{
  if (self->_iesLight)
  {
    v5 = 5;
    v6 = 0.0;
    v7 = 0.0;
    do
    {
      v8 = 0;
      v9 = v5;
      do
      {
        for (i = 0; i != 128; ++i)
        {
          v3.i64[0] = 0x3C0000003C000000;
          *v11.i64 = sub_239EE9354(i, v8, v9, v3);
          v20 = v11;
          iesLight = self->_iesLight;
          v13 = iesLight[2];
          objc_msgSend_translation(v13, v14, v15);
          v19 = *(self->_iesLight + 34) * sub_239EEA45C(iesLight, v17, v18, vaddq_f32(v16, v20));

          v3.f32[0] = sub_239EE9458(i, v8, 128);
          v6 = v6 + (v19 * v3.f32[0]);
          v7 = v3.f32[0] + v7;
        }

        ++v8;
      }

      while (v8 != 128);
      v5 = v9 - 1;
    }

    while (v9);
    *v3.i64 = v6 * 12.5663706 / v7;
    v3.f32[0] = *v3.i64;
  }

  else
  {
    v3.i32[0] = 2143289344;
  }

  objc_msgSend_setLumens_(self, a2, v2, *v3.i64);
}

- (float)computeInnerAngle
{
  iesLight = self->_iesLight;
  v4 = *(iesLight + 11);
  v3 = *(iesLight + 12);
  v5 = v3 - v4;
  if (v3 == v4)
  {
    return -1.0;
  }

  v6 = 0;
  v7 = 0;
  v8 = v5 >> 2;
  v10 = *(iesLight + 8);
  v9 = *(iesLight + 9);
  v11 = (v9 - v10) >> 2;
  if (v11 <= 1)
  {
    v11 = 1;
  }

  if (v8 <= 1)
  {
    v8 = 1;
  }

  result = -1.0;
  do
  {
    if (v9 != v10)
    {
      v13 = (*(iesLight + 14) + v6);
      v14 = v11;
      v15 = *(iesLight + 8);
      do
      {
        v16 = *v15++;
        v17 = v16;
        v18 = *v13++;
        v19 = iesLight[35] * v18;
        if (result < v17 && v19 > 0.0)
        {
          result = v17;
        }

        --v14;
      }

      while (v14);
    }

    ++v7;
    v6 += v9 - v10;
  }

  while (v7 != v8);
  return result;
}

- (MDLTexture)generateTexture:(NSUInteger)textureSize
{
  objc_msgSend_innerConeAngle(self, a2, textureSize);
  iesLight = self->_iesLight;
  if (iesLight)
  {
    v7 = v5;
    v8 = iesLight[2];
    objc_msgSend_translation(v8, v9, v10);
    v119 = v11;
    objc_msgSend_rotationMatrixAtTime_(v8, v12, v13, 0.0);
    v109 = v14;
    v111 = v15;
    v113 = v16;
    v116 = v17;
    objc_msgSend_rotationMatrixAtTime_(v8, v18, v19, 0.0);
    v120 = v24;
    if (*(self->_iesLight + 12) - *(self->_iesLight + 11) == 4 && v7 < 180.0)
    {
      v106 = v22;
      v107 = v23;
      v108 = v21;
      v72 = objc_alloc(MEMORY[0x277CBEB28]);
      v28 = objc_msgSend_initWithLength_(v72, v73, textureSize);
      v74 = v28;
      v77 = objc_msgSend_bytes(v74, v75, v76);
      if (textureSize >= 1)
      {
        v78 = v77;
        v79 = 0;
        __asm { FMOV            V1.4S, #-1.0 }

        v118 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v109, 0), 0, v111), _Q1, v113), 0, v116);
        v84 = vmulq_f32(v118, v118);
        *&v85 = vaddv_f32(*v84.f32) + v84.f32[2];
        *v84.f32 = vrsqrte_f32(v85);
        *v84.f32 = vmul_f32(vrsqrts_f32(v85, vmul_f32(*v84.f32, *v84.f32)), *v84.f32);
        v110 = vdupq_n_s32(0x437F0000u);
        v122 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v120, 0, v108), 0, v106), 0, v107);
        v86 = vmulq_f32(v122, v122);
        *&v87 = vaddv_f32(*v86.f32) + v86.f32[2];
        *v86.f32 = vmul_f32(*v84.f32, vrsqrts_f32(v85, vmul_f32(*v84.f32, *v84.f32)));
        v115 = v86;
        *v86.f32 = vrsqrte_f32(v87);
        *v86.f32 = vmul_f32(vrsqrts_f32(v87, vmul_f32(*v86.f32, *v86.f32)), *v86.f32);
        *v86.f32 = vmul_f32(*v86.f32, vrsqrts_f32(v87, vmul_f32(*v86.f32, *v86.f32)));
        v112 = v86;
        v88 = v7 * 0.017453;
        do
        {
          v89 = self->_iesLight;
          v92 = __sincosf_stret((v88 * v79) * (1.0 / (textureSize - 1)));
          v91.f32[0] = v92.__cosval;
          v90.f32[0] = v92.__sinval;
          v93 = vmlaq_n_f32(vmulq_n_f32(v122, vmulq_f32(v90, v112).f32[0]), v118, vmulq_f32(v91, v115).f32[0]);
          v94 = vmulq_f32(v93, v93);
          v91.f32[0] = vaddv_f32(*v94.f32) + v94.f32[2];
          *v94.f32 = vrsqrte_f32(v91.u32[0]);
          *v94.f32 = vmul_f32(vrsqrts_f32(v91.u32[0], vmul_f32(*v94.f32, *v94.f32)), *v94.f32);
          v95 = (*(*v89 + 16))(v89, vmlaq_n_f32(v119, v93, vmul_f32(*v94.f32, vrsqrts_f32(v91.u32[0], vmul_f32(*v94.f32, *v94.f32))).f32[0]));
          Components = CGColorGetComponents(v95);
          v97 = *Components;
          *v97.f32 = vcvt_f32_f64(*Components);
          v98 = Components[1].f64[0];
          v97.f32[2] = v98;
          v99 = vmulq_f32(v97, v110);
          v99.i32[3] = 0;
          v100 = vmaxnmq_f32(v99, 0);
          v100.i32[3] = 0;
          *(v78 + v79++) = vminnmq_f32(v100, xmmword_239F9C280).f32[0];
        }

        while (textureSize != v79);
      }

      v101 = [MDLTexture alloc];
      isCube = objc_msgSend_initWithData_topLeftOrigin_name_dimensions_rowStride_channelCount_channelEncoding_isCube_(v101, v102, v28, 0, 0, textureSize, 1, 1, COERCE_DOUBLE(textureSize | 0x100000000), 0);
      goto LABEL_26;
    }

    if (v7 < 89.0)
    {
      v26 = objc_alloc(MEMORY[0x277CBEB28]);
      v28 = objc_msgSend_initWithLength_(v26, v27, textureSize * textureSize);
      v29 = v28;
      v32 = objc_msgSend_bytes(v29, v30, v31);
      if (textureSize >= 1)
      {
        v35 = v32;
        v36 = 0;
        v114 = vdupq_n_s32(0x437F0000u);
        v117 = v7 * 0.017453;
        v37 = 1.0 / textureSize;
        do
        {
          v38 = 0;
          v39 = (2 * v36) * v37 + -1.0;
          v40 = v39 * v39;
          v41 = v39;
          v42 = textureSize;
          do
          {
            *v33.i64 = v38 * v37 + -1.0;
            *v33.i32 = *v33.i64;
            v121 = v33;
            v43 = sqrtf(v40 + (*v33.i32 * *v33.i32));
            *v33.i64 = v43;
            if (v43 < 0.01)
            {
              *v33.i64 = 0.01;
            }

            *v33.i64 = v41 / *v33.i64;
            *v33.i32 = *v33.i64;
            v44 = fabsf(*v33.i32);
            v34.i32[0] = 1.0;
            v45.i64[0] = 0x8000000080000000;
            v45.i64[1] = 0x8000000080000000;
            LODWORD(v46) = vbslq_s8(v45, v34, v33).u32[0];
            if (*v33.i32 == 0.0)
            {
              v46 = 0.0;
            }

            if (v44 > 1.0)
            {
              *v33.i32 = v46;
            }

            v47 = v117 * v43;
            v48 = acosf(*v33.i32);
            v49.i64[0] = 0x8000000080000000;
            v49.i64[1] = 0x8000000080000000;
            v50.i32[0] = 1.0;
            LODWORD(v51) = vbslq_s8(v49, v50, v121).u32[0];
            if (*v121.i32 == 0.0)
            {
              v51 = 0.0;
            }

            v52 = v48 * v51;
            v53 = __sincosf_stret(v47);
            v54 = __sincosf_stret(v52);
            v55.f32[0] = v54.__sinval * v53.__sinval;
            v55.f32[1] = v54.__cosval * v53.__sinval;
            v55.f32[2] = -v53.__cosval;
            v56 = vmulq_f32(v55, v55);
            *&v57 = vaddv_f32(*v56.f32) + v56.f32[2];
            *v56.f32 = vrsqrte_f32(v57);
            *v56.f32 = vmul_f32(vrsqrts_f32(v57, vmul_f32(*v56.f32, *v56.f32)), *v56.f32);
            v58 = (*(*self->_iesLight + 16))(self->_iesLight, vmlaq_n_f32(v119, v55, vmul_f32(*v56.f32, vrsqrts_f32(v57, vmul_f32(*v56.f32, *v56.f32))).f32[0]));
            v59 = CGColorGetComponents(v58);
            v60 = *v59;
            *v60.f32 = vcvt_f32_f64(*v59);
            v61 = v59[1].f64[0];
            v60.f32[2] = v61;
            v62 = vmulq_f32(v60, v114);
            v62.i32[3] = 0;
            v63 = vmaxnmq_f32(v62, 0);
            v63.i32[3] = 0;
            v33 = vminnmq_f32(v63, xmmword_239F9C280);
            *v35++ = *v33.i32;
            v38 += 2;
            --v42;
          }

          while (v42);
          ++v36;
        }

        while (v36 != textureSize);
      }

      v64 = [MDLTexture alloc];
      isCube = objc_msgSend_initWithData_topLeftOrigin_name_dimensions_rowStride_channelCount_channelEncoding_isCube_(v64, v65, v28, 0, 0, textureSize, 1, 1, COERCE_DOUBLE(vdup_n_s32(textureSize)), 0);
LABEL_26:
      v103 = isCube;

      goto LABEL_31;
    }

    lightCubeMap = self->_lightCubeMap;
    if (!lightCubeMap)
    {
      objc_msgSend_generateCubemapFromLight_(self, v20, textureSize);
      lightCubeMap = self->_lightCubeMap;
    }

    v71 = lightCubeMap;
  }

  else
  {
    NSLog(&cfstr_IeslightNotPro.isa);
    v123 = 0;
    v67 = [MDLTexture alloc];
    v68 = objc_alloc(MEMORY[0x277CBEA90]);
    v8 = objc_msgSend_initWithBytes_length_(v68, v69, &v123, 1);
    v71 = objc_msgSend_initWithData_topLeftOrigin_name_dimensions_rowStride_channelCount_channelEncoding_isCube_(v67, v70, v8, 0, 0, 1, 1, 1, COERCE_DOUBLE(0x100000001), 0);
  }

  v103 = v71;
LABEL_31:

  return v103;
}

- (void)generateSphericalHarmonicsFromLight:(NSUInteger)sphericalHarmonicsLevel
{
  if (sphericalHarmonicsLevel >= 4)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = objc_opt_class();
    v52 = NSStringFromClass(v7);
    v8 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v6, v9, @"ModelIOException", @"[%@ %@]: Spherical harmonics levels beyond 3 are not supported", v52, v8);
  }

  objc_msgSend_dimensions(self->_lightCubeMap, a2, sphericalHarmonicsLevel);
  v54 = v10;
  v13 = objc_msgSend_texelDataWithBottomLeftOrigin(self->_lightCubeMap, v11, v12);
  if (!self->_iesLight)
  {
    v53 = v13;
    v15 = (sphericalHarmonicsLevel + 1) * (sphericalHarmonicsLevel + 1);
    objc_msgSend_setLength_(self->_sphericalHarmonicsCoefficients, v14, 12 * v15);
    v18 = objc_msgSend_mutableBytes(self->_sphericalHarmonicsCoefficients, v16, v17);
    v21 = objc_msgSend_length(self->_sphericalHarmonicsCoefficients, v19, v20);
    v51 = v18;
    bzero(v18, v21);
    self->_sphericalHarmonicsLevel = sphericalHarmonicsLevel;
    v22 = malloc_type_calloc(v15, 4uLL, 0x100004052888210uLL);
    v23 = 0;
    v25.i64[1] = *(&v54 + 1);
    v24 = v54;
    *v25.i64 = 1.0 / v54;
    v26 = *v25.i64;
    v27 = 2 * v15;
    v28 = 0.0;
    do
    {
      if (v24 >= 1)
      {
        for (i = 0; i != v24; ++i)
        {
          for (j = 0; j != v24; ++j)
          {
            v25.f32[0] = v26;
            v31.n128_f64[0] = sub_239EE9354(i, j, v23, v25);
            v55 = v31;
            v32 = sub_239EE9458(i, j, v24);
            v33 = v53;
            v36 = objc_msgSend_bytes(v33, v34, v35);
            if (sphericalHarmonicsLevel > 1)
            {
              if (sphericalHarmonicsLevel == 2)
              {
                *v25.f32 = sub_239EE90DC(v22, v55);
              }

              else if (sphericalHarmonicsLevel == 3)
              {
                *v25.f32 = sub_239EE91A4(v22, v55);
              }
            }

            else if (sphericalHarmonicsLevel)
            {
              if (sphericalHarmonicsLevel == 1)
              {
                sub_239EE9094(v22, v55);
              }
            }

            else
            {
              sub_239EE9084(v22);
            }

            if (v15 >= 1)
            {
              v38 = v51;
              v39 = (v36 + 4 * v24 * v24 * (5 - v23) + (4 * (i + j * v24)));
              *v25.i64 = v32 * 0.00392156863;
              v40 = v15 & 0x7FFFFFFD;
              v41 = v22;
              do
              {
                LOBYTE(v37) = *v39;
                *&v42 = *&v37;
                v43 = *v38 + *v25.i64 * *v41 * *&v42;
                *v38 = v43;
                LOBYTE(v42) = v39[1];
                *&v44 = v42;
                v45 = v38[v15] + *v25.i64 * *v41 * *&v44;
                v38[v15] = v45;
                v46 = *v41++;
                LOBYTE(v44) = v39[2];
                v37 = v44;
                v47 = v38[v27] + *v25.i64 * v46 * v37;
                v38[v27] = v47;
                ++v38;
                --v40;
              }

              while (v40);
            }

            v28 = v32 + v28;
          }
        }
      }

      ++v23;
    }

    while (v23 != 6);
    v48 = v51;
    if (v15 >= 1)
    {
      LODWORD(v50) = 3 * v15;
      if (3 * v15 <= 1)
      {
        v50 = 1;
      }

      else
      {
        v50 = v50;
      }

      do
      {
        v49 = 12.5663706 / v28;
        *v48 = *v48 * v49;
        ++v48;
        --v50;
      }

      while (v50);
    }

    free(v22);
    v13 = v53;
  }
}

- (CGColor)evaluatedColorFromSHVector:(MDLPhotometricLight *)self
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = vmulq_f32(v2, v2);
  *&v5 = vaddv_f32(*v4.f32) + v4.f32[2];
  *v4.f32 = vrsqrte_f32(v5);
  *v4.f32 = vmul_f32(vrsqrts_f32(v5, vmul_f32(*v4.f32, *v4.f32)), *v4.f32);
  v22 = vmulq_n_f32(v2, vmul_f32(*v4.f32, vrsqrts_f32(v5, vmul_f32(*v4.f32, *v4.f32))).f32[0]);
  v6 = LODWORD(self->_sphericalHarmonicsLevel) + 1;
  v7 = (v6 * v6);
  v8 = malloc_type_calloc(v7, 4uLL, 0x100004052888210uLL);
  v11 = objc_msgSend_mutableBytes(self->_sphericalHarmonicsCoefficients, v9, v10);
  sphericalHarmonicsLevel = self->_sphericalHarmonicsLevel;
  if (sphericalHarmonicsLevel > 1)
  {
    if (sphericalHarmonicsLevel != 2)
    {
      if (sphericalHarmonicsLevel == 3)
      {
        sub_239EE91A4(v8, v22);
        if (!v6)
        {
          goto LABEL_20;
        }

        goto LABEL_13;
      }

LABEL_10:
      NSLog(&cfstr_ComputationOfS.isa, self->_sphericalHarmonicsLevel);
      if (!v6)
      {
        goto LABEL_20;
      }

      goto LABEL_13;
    }

    sub_239EE90DC(v8, v22);
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_20:
    v15 = 0uLL;
    goto LABEL_21;
  }

  if (!sphericalHarmonicsLevel)
  {
    sub_239EE9084(v8);
    if (v6)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

  if (sphericalHarmonicsLevel != 1)
  {
    goto LABEL_10;
  }

  sub_239EE9094(v8, v22);
  if (!v6)
  {
    goto LABEL_20;
  }

LABEL_13:
  if (v7 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v7;
  }

  v15 = 0uLL;
  v16 = v8;
  do
  {
    v13.i32[0] = *v11;
    v17 = *v16++;
    v13.i32[1] = v11[v7];
    *v13.f32 = vmul_n_f32(*v13.f32, v17);
    v13.f32[2] = *&v11[(2 * v7)] * v17;
    v15 = vaddq_f32(v13, v15);
    ++v11;
    --v14;
  }

  while (v14);
LABEL_21:
  v23 = v15;
  free(v8);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  *components = vcvtq_f64_f32(*v23.f32);
  v25 = v23.f32[2];
  v26 = 0x3FF0000000000000;
  v19 = CGColorCreate(DeviceRGB, components);
  CGColorSpaceRelease(DeviceRGB);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

@end