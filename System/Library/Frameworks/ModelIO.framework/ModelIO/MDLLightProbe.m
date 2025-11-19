@interface MDLLightProbe
+ (CGColor)sampleSHAt:(id)a3 usingCoefficients:(unint64_t)a4 withLevel:;
+ (MDLLightProbe)lightProbeWithTextureSize:(NSInteger)textureSize forLocation:(MDLTransform *)transform lightsToConsider:(NSArray *)lightsToConsider objectsToConsider:(NSArray *)objectsToConsider reflectiveCubemap:(MDLTexture *)reflectiveCubemap irradianceCubemap:(MDLTexture *)irradianceCubemap;
+ (__n128)calculateIrradianceGradientUsingSamples:(double *)a3 ofSize:(uint64_t)a4 fromSH:(void *)a5 withLevel:(uint64_t)a6;
- (MDLLightProbe)initWithReflectiveTexture:(MDLTexture *)reflectiveTexture irradianceTexture:(MDLTexture *)irradianceTexture;
- (void)generateSphericalHarmonicsFromIrradiance:(NSUInteger)sphericalHarmonicsLevel;
- (void)setSphericalHarmonicsCoefficients:(id)a3;
@end

@implementation MDLLightProbe

- (void)setSphericalHarmonicsCoefficients:(id)a3
{
  v7 = a3;
  v5 = objc_msgSend_dataWithData_(MEMORY[0x277CBEB28], v4, v7);
  sphericalHarmonicsCoefficients = self->_sphericalHarmonicsCoefficients;
  self->_sphericalHarmonicsCoefficients = v5;
}

- (MDLLightProbe)initWithReflectiveTexture:(MDLTexture *)reflectiveTexture irradianceTexture:(MDLTexture *)irradianceTexture
{
  v7 = reflectiveTexture;
  v8 = irradianceTexture;
  v14.receiver = self;
  v14.super_class = MDLLightProbe;
  v9 = [(MDLLight *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_reflectiveTexture, reflectiveTexture);
    objc_storeStrong(&v10->_irradianceTexture, irradianceTexture);
    v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
    sphericalHarmonicsCoefficients = v10->_sphericalHarmonicsCoefficients;
    v10->_sphericalHarmonicsCoefficients = v11;
  }

  return v10;
}

- (void)generateSphericalHarmonicsFromIrradiance:(NSUInteger)sphericalHarmonicsLevel
{
  if (sphericalHarmonicsLevel >= 4)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = objc_opt_class();
    v51 = NSStringFromClass(v7);
    v8 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v6, v9, @"ModelIOException", @"[%@ %@]: Spherical harmonics levels beyond 3 are not supported", v51, v8);
  }

  objc_msgSend_dimensions(self->_irradianceTexture, a2, sphericalHarmonicsLevel);
  v53 = v10;
  v52 = objc_msgSend_texelDataWithBottomLeftOrigin(self->_irradianceTexture, v11, v12);
  v13 = (sphericalHarmonicsLevel + 1) * (sphericalHarmonicsLevel + 1);
  objc_msgSend_setLength_(self->_sphericalHarmonicsCoefficients, v14, 12 * v13);
  v17 = objc_msgSend_mutableBytes(self->_sphericalHarmonicsCoefficients, v15, v16);
  v20 = objc_msgSend_length(self->_sphericalHarmonicsCoefficients, v18, v19);
  v50 = v17;
  bzero(v17, v20);
  self->_sphericalHarmonicsLevel = sphericalHarmonicsLevel;
  v21 = malloc_type_calloc(v13, 4uLL, 0x100004052888210uLL);
  v22 = 0;
  v24.i64[1] = *(&v53 + 1);
  v23 = v53;
  *v24.i64 = 1.0 / v53;
  v25 = *v24.i64;
  v26 = 2 * v13;
  v27 = 0.0;
  do
  {
    if (v23 >= 1)
    {
      for (i = 0; i != v23; ++i)
      {
        for (j = 0; j != v23; ++j)
        {
          v24.f32[0] = v25;
          v30.n128_f64[0] = sub_239EE9354(i, j, v22, v24);
          v54 = v30;
          v31 = sub_239EE9458(i, j, v23);
          v32 = v52;
          v35 = objc_msgSend_bytes(v32, v33, v34);
          if (sphericalHarmonicsLevel > 1)
          {
            if (sphericalHarmonicsLevel == 2)
            {
              *v24.f32 = sub_239EE90DC(v21, v54);
            }

            else if (sphericalHarmonicsLevel == 3)
            {
              *v24.f32 = sub_239EE91A4(v21, v54);
            }
          }

          else if (sphericalHarmonicsLevel)
          {
            if (sphericalHarmonicsLevel == 1)
            {
              sub_239EE9094(v21, v54);
            }
          }

          else
          {
            sub_239EE9084(v21);
          }

          if (v13 >= 1)
          {
            v37 = v50;
            v38 = (v35 + 4 * v23 * v23 * (5 - v22) + (4 * (i + j * v23)));
            *v24.i64 = v31 * 0.00392156863;
            v39 = v13 & 0x7FFFFFFD;
            v40 = v21;
            do
            {
              LOBYTE(v36) = *v38;
              *&v41 = *&v36;
              v42 = *v37 + *v24.i64 * *v40 * *&v41;
              *v37 = v42;
              LOBYTE(v41) = v38[1];
              *&v43 = v41;
              v44 = v37[v13] + *v24.i64 * *v40 * *&v43;
              v37[v13] = v44;
              v45 = *v40++;
              LOBYTE(v43) = v38[2];
              v36 = v43;
              v46 = v37[v26] + *v24.i64 * v45 * v36;
              v37[v26] = v46;
              ++v37;
              --v39;
            }

            while (v39);
          }

          v27 = v31 + v27;
        }
      }
    }

    ++v22;
  }

  while (v22 != 6);
  v47 = v50;
  if (v13 >= 1)
  {
    LODWORD(v49) = 3 * v13;
    if (3 * v13 <= 1)
    {
      v49 = 1;
    }

    else
    {
      v49 = v49;
    }

    do
    {
      v48 = 12.5663706 / v27;
      *v47 = *v47 * v48;
      ++v47;
      --v49;
    }

    while (v49);
  }

  free(v21);
}

+ (__n128)calculateIrradianceGradientUsingSamples:(double *)a3 ofSize:(uint64_t)a4 fromSH:(void *)a5 withLevel:(uint64_t)a6
{
  v10 = a5;
  v11 = 0uLL;
  if (v10 && a4)
  {
    v19 = xmmword_239F9C590;
    do
    {
      v20 = v11;
      v12 = objc_msgSend_sampleSHAt_usingCoefficients_withLevel_(MDLLightProbe, v9, v10, a6, *a3, *&v19);
      Components = CGColorGetComponents(v12);
      v14 = *Components;
      v15 = vmulq_f64(vcvtq_f64_f32(vcvt_f32_f64(*(Components + 1))), v19);
      v16 = v15.f64[0] + v14 * 0.2126 + v15.f64[1];
      v17 = *a3;
      a3 += 2;
      v11 = vmlaq_n_f32(v20, v17, v16);
      --a4;
    }

    while (a4);
  }

  v21 = v11;

  return v21;
}

+ (CGColor)sampleSHAt:(id)a3 usingCoefficients:(unint64_t)a4 withLevel:
{
  v38 = v4;
  v43 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if (a4 >= 4)
  {
    v10 = MEMORY[0x277CBEAD8];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v10, v14, @"ModelIOException", @"[%@ %@]: Spherical harmonics levels beyond 3 are not supported", v12, v13, *&v38);
  }

  v15 = a4 + 1;
  v16 = (v15 * v15);
  if (objc_msgSend_length(v9, v7, v8) != 12 * v16)
  {
    v17 = MEMORY[0x277CBEAD8];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v17, v21, @"ModelIOException", @"[%@ %@]: Number of spherical harmonics coefficients inconsistent with spherical harmonics level", v19, v20);
  }

  v22 = malloc_type_calloc((v15 * v15), 4uLL, 0x100004052888210uLL);
  v23 = v9;
  v26 = objc_msgSend_bytes(v23, v24, v25);
  v27 = vmulq_f32(v38, v38);
  *&v28 = vaddv_f32(*v27.f32) + v27.f32[2];
  *v27.f32 = vrsqrte_f32(v28);
  *v27.f32 = vmul_f32(vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32)), *v27.f32);
  v29 = vmulq_n_f32(v38, vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32))).f32[0]);
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      sub_239EE90DC(v22, v29);
    }

    else if (a4 == 3)
    {
      sub_239EE91A4(v22, v29);
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {
      sub_239EE9094(v22, v29);
    }
  }

  else
  {
    sub_239EE9084(v22);
  }

  if (a4 == -1)
  {
    v31 = 0uLL;
  }

  else
  {
    if (v16 <= 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = v16;
    }

    v31 = 0uLL;
    v32 = v22;
    do
    {
      v29.n128_u32[0] = *v26;
      v33 = *v32++;
      v29.n128_u32[1] = v26[v16];
      v29.n128_u64[0] = vmul_n_f32(v29.n128_u64[0], v33);
      v29.n128_f32[2] = *&v26[(2 * v16)] * v33;
      v31 = vaddq_f32(v29, v31);
      ++v26;
      --v30;
    }

    while (v30);
  }

  v39 = v31;
  free(v22);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  *components = vcvtq_f64_f32(*v39.f32);
  v41 = v39.f32[2];
  v42 = 0x3FF0000000000000;
  v35 = CGColorCreate(DeviceRGB, components);
  CGColorSpaceRelease(DeviceRGB);

  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

+ (MDLLightProbe)lightProbeWithTextureSize:(NSInteger)textureSize forLocation:(MDLTransform *)transform lightsToConsider:(NSArray *)lightsToConsider objectsToConsider:(NSArray *)objectsToConsider reflectiveCubemap:(MDLTexture *)reflectiveCubemap irradianceCubemap:(MDLTexture *)irradianceCubemap
{
  v12 = textureSize;
  v41 = *MEMORY[0x277D85DE8];
  transform;
  v13 = lightsToConsider;
  v30 = objectsToConsider;
  reflectiveCubemap;
  irradianceCubemap;
  v14 = objc_alloc_init(MDLScene);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v15 = v13;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v35, v40, 16);
  if (v18)
  {
    v19 = *v36;
    do
    {
      v20 = 0;
      do
      {
        if (*v36 != v19)
        {
          objc_enumerationMutation(v15);
        }

        objc_msgSend_addObject_(v14, v17, *(*(&v35 + 1) + 8 * v20++));
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v35, v40, 16);
    }

    while (v18);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v21 = v30;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v31, v39, 16);
  if (v24)
  {
    v25 = *v32;
    do
    {
      v26 = 0;
      do
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(v21);
        }

        objc_msgSend_addObject_(v14, v23, *(*(&v31 + 1) + 8 * v26++));
      }

      while (v24 != v26);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v31, v39, 16);
    }

    while (v24);
  }

  v27 = objc_alloc(MEMORY[0x277CBEB28]);
  objc_msgSend_initWithLength_(v27, v28, 4 * v12 * 6 * v12);
  objc_alloc_init(MDLTransform);
  operator new();
}

@end